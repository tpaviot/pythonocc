# -*- coding: iso-8859-1 -*-
#! /usr/bin/python

##Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

import os, os.path
import sys
sys.path.append("../..")
import glob
import datetime
try:
    from pygccxml import declarations
    from pyplusplus import module_builder
    HAVE_PYGCCXML = True
except ImportError:
    HAVE_PYGCCXML = False

import environment

def CaseSensitiveGlob(wildcard):
    """
    Case sensitive glob for Windows.
    Designed for handling of GEOM and Geom modules
    This function makes the difference between GEOM_* and Geom_* under Windows
    """
    flist = glob.glob(wildcard)
    pattern = wildcard.split('*')[0]
    f = []
    for file in flist:
        if pattern in file:
            f.append(file)
    return f

def WriteLicenseHeader(fp):
    header = """/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
"""
    fp.write(header)

nb_exported_classes = 0

class ModularBuilder(object):
    """
    This class generates a set of .i files integrated in one OCC.i script. The result is
    a simple _OCC.pyd and OCC.py script that enable better handliing of different OCC classes.
    """
    #def __init__( self , module, generate_doc = False, INC_PATH = environment.OCC_INC):
    def __init__( self , module, INC_PATH = environment.OCC_INC):
        self.MODULES = module
        self.MODULE_NAME = module[0]
        self.INC_PATH = INC_PATH #the path where are the headers to parse can be OCC_INC or SALOME_GEOM_INC
        #self = generate_doc
        #if self._generate_doc:
        #    self.WriteLicenseHeader = WriteDisclaimerHeader
        #else:
        #    self.WriteLicenseHeader = WriteLicenseHeader
        self._mb = None
        self.fp = None
        self.occ_fp = None
        self.dependencies_fp = None
        self.module_dependencies = []
        self.dependencies_headers_to_write = []
        self._available_occ_packages = []
        # The name of the header file to be parsed by gccxml/pygccxml
        self._wrapper_filename = os.path.join(os.getcwd(),'%s'%environment.SWIG_FILES_PATH_MODULAR,'%s_Wrapper.hxx'%self.MODULE_NAME)
        # A dict contains all parent classes of a given class
        self.DERIVED = {}
        # Two lists containing typedefs and enums
        self._typedef_list = []
        self._enum_list = []
        # A list containing all necessary headers to achieve compilation        
        self.ADDITIONAL_HEADERS = module[1]
        self.ADDITIONAL_HXX = []
        self.NEEDED_HXX = []
        self.IMPORTED_MODULES = []
        self.MEMBER_FUNCTIONS_TO_EXCLUDE = {}
        self.ClassDocstring = ""
        self.MemberfunctionDocStrings = {}
        self.ALREADY_EXPOSED = []
        self.CLASSES_TO_EXCLUDE = []
        self.InitBaseSwigFile()
        self.FindClasseToExclude()
        self.FindMemberFunctionsToExclude()     
        self.Init()     
        self.GenerateSWIGSourceFile()
        self.WriteDepencyFile()
        self.WriteHeaderFile()
        
    def BuildClassHierarchy(self):
        """
        Directory of class hierarchy
        Ex: DERIVED = {"104":[Voiture],"106":[Voiture]}
        """
        try:
            all_classes = self._mb.classes()
        except: #no class defined in the set of headers
            print "No class defined in the set of headers"
            return True
        classes_declarations = all_classes.declarations
        for class_declaration in classes_declarations:
            class_name = class_declaration.name
            derived = class_declaration.derived
            if len(derived)>0:
                for der in derived:
                    self.DERIVED[der.related_class.name]=class_name

    def BuildTypedefList(self):
        """
        Fill in the typedef_list with all typedef defined in this module
        """
        try:
            typedefs = self._mb.global_ns.typedefs()
        except:
            return False #no typedefs defined in this package
        for typedef in typedefs:
            typedef_name = typedef.name
            self._typedef_list.append(typedef_name)
    
    def BuildEnumList(self):
        """
        Fill in the enum_list with all enums defined in this module
        """
        try:#eeror with BRepBndLib on Linux
            for enum in self._mb.enumerations():
                enum_name = enum.name
                self._enum_list.append(enum_name)
        except:
            pass
        
    def GenerateSWIGSourceFile(self):
        """
        .i file creation
        """
        self.GenerateWrapper()
        self.BuildModule()
        self.BuildTypedefList()
        self.BuildEnumList()
        self.BuildClassHierarchy()
        # File creation
        self.fp = self.occ_fp
        self.WriteModuleTypedefs()
        self.WriteModuleEnums()
        # Classes processing (if any class defined in the module)
        try:
            handle_classes_to_expose = self._mb.classes(lambda decl: (decl.name.lower().startswith(("Handle_%s_"%self.MODULE_NAME).lower())))
            for class_declaration in handle_classes_to_expose:
                if not class_declaration.name in self.CLASSES_TO_EXCLUDE:
                    self.process_class(class_declaration)
        except RuntimeError:
            print "No handles defined."
        try:
            classes_to_expose = self._mb.classes(lambda decl: (decl.name.lower().startswith(("%s_"%self.MODULE_NAME).lower())) or decl.name==self.MODULE_NAME)
            for class_declaration in classes_to_expose:
                if not class_declaration.name in self.CLASSES_TO_EXCLUDE:
                    self.process_class(class_declaration)
        except RuntimeError:
            print "No class defined."
        self.fp.close()

    def AddDependency(self, module_name):
        """
        Add a dependency with other module.
        """
        # Exclude a number of extra dependencies for the SMESH module:
        if module_name in ['TSideVector','TError','Z','TParam2ColumnMap',\
                           'basic','exception','MeshDimension','TSetOfInt',\
                           'NLinkNodeMap','pair<SMDS','NLink','TIDSortedElemSet',\
                           'TElemOfElemListMap','TNodeNodeMap','EventListener',\
                           'EventListenerData','TLinkNodeMap','MapShapeNbElems']:
            return True
        if module_name=='GEOM':
            module_name='SGEOM'
        if 'XW' in module_name: #TODO: better handling of XW.i dependency with Xw module under Linux
            return True
        if module_name == 'Selector': #SalomeGEOM
            return True
        if module_name=='TVariablesList': #SGEOM module
            return True
        if sys.platform=='win32' and module_name=='WNT':
            return True
        if sys.platform=='win32' and module_name=='Xw':
            return True
        if not module_name in self.module_dependencies:
            self.module_dependencies.append(module_name)
            if module_name=='TCollection':
                self.dependencies_headers_to_write += CaseSensitiveGlob(os.path.join(self.INC_PATH,'Handle_%s_*.hxx'%module_name))
                if self.INC_PATH == environment.SALOME_GEOM_INC:
                    self.dependencies_headers_to_write += CaseSensitiveGlob(os.path.join(environment.OCC_INC,'Handle_%s_*.hxx'%module_name))
            else:
                self.dependencies_headers_to_write += CaseSensitiveGlob(os.path.join(self.INC_PATH,'%s_*.hxx'%module_name))+\
                CaseSensitiveGlob(os.path.join(self.INC_PATH,'Handle_%s_*.hxx'%module_name))
                if self.INC_PATH == environment.SALOME_GEOM_INC:
                    self.dependencies_headers_to_write += CaseSensitiveGlob(os.path.join(environment.OCC_INC,'%s_*.hxx'%module_name))+\
                CaseSensitiveGlob(os.path.join(environment.OCC_INC,'Handle_%s_*.hxx'%module_name))                    
            self.dependencies_headers_to_write = self.OSFilterHeaders(self.dependencies_headers_to_write)
    
    def WriteDepencyFile(self):
        """
        Generate the file for dependencies.
        """
        if self.MODULE_NAME=='GeomPlate' and sys.platform=='win32': #keep the file on the disk
            return True
        if self.MODULE_NAME=='GEOM':
            self.MODULE_NAME='SGEOM'#back to the good name
        dependencies_fp = open(os.path.join(os.getcwd(),'%s'%environment.SWIG_FILES_PATH_MODULAR,'%s_dependencies.i'%self.MODULE_NAME),"w")
        WriteLicenseHeader(dependencies_fp)
        self.dependencies_headers_to_write.sort()
        if len(self.module_dependencies)==0:
            return True
        dependencies_fp.write("%{\n")
        for header_to_write in self.dependencies_headers_to_write:
            dependencies_fp.write("#include <%s>\n"%os.path.basename(header_to_write))
        dependencies_fp.write("%};\n\n")
        # Adding imports
        for module_name in self.module_dependencies:
            dependencies_fp.write("%%import %s.i\n"%module_name)
        dependencies_fp.close()
    
    def WriteHeaderFile(self): 
        """
        Write the SWIG file that contains all required headers for compilation.
        """
        print self.MODULE_NAME
        if self.MODULE_NAME=='GEOM':
            self.MODULE_NAME='SGEOM'#back to the good name
        already_written = []
        headers_fp = open(os.path.join(os.getcwd(),'%s'%environment.SWIG_FILES_PATH_MODULAR,'%s_headers.i'%self.MODULE_NAME),"w")
        WriteLicenseHeader(headers_fp)
         # Write includes
        headers_fp.write("%{\n")
        headers_fp.write("\n// Headers necessary to define wrapped classes.\n\n")
        for hxx_file in self.HXX_FILES:
            if not hxx_file in already_written:
                headers_fp.write("#include<%s>\n"%os.path.basename(hxx_file))
                already_written.append(hxx_file)
        headers_fp.write("\n// Additional headers necessary for compilation.\n\n")
        self.ADDITIONAL_HXX = self.OSFilterHeaders(self.ADDITIONAL_HXX)
        for hxx_file in self.ADDITIONAL_HXX:
            if not hxx_file in already_written:
                headers_fp.write("#include<%s>\n"%os.path.basename(hxx_file))
                already_written.append(hxx_file)
        # NEEDED_HXX:
        headers_fp.write("\n// Needed headers necessary for compilation.\n\n")
        self.NEEDED_HXX = self.OSFilterHeaders(self.NEEDED_HXX)
        for hxx_file in self.NEEDED_HXX:
            if os.path.isfile(os.path.join(self.INC_PATH,hxx_file)):
                if not hxx_file in already_written:
                    headers_fp.write("#include<%s>\n"%os.path.basename(hxx_file))
                    already_written.append(hxx_file)
        headers_fp.write("%}\n")
        headers_fp.close()

    def CheckDepedency(self,return_type):
        #
        # Check what headers to add for the return type
        #
        t = self.CheckParameterIsTypedef(return_type)
        if t:
            if (t!=self.MODULE_NAME):# and (t!='Standard'):
                if t.startswith('Handle'):
                    t = t.split('_')[1]
                self.AddDependency(t)#print "Dependency with module %s"%t
        else:#it's not a type def
            if (not return_type.startswith('%s_'%self.MODULE_NAME)) and \
            (not return_type.startswith('Handle_%s_'%self.MODULE_NAME)) and \
            (not return_type in ['void','int']) and (not '::' in return_type):#external dependency. Add header
                header_to_add = '%s.hxx'%return_type
                if not (header_to_add in self.NEEDED_HXX):
                    self.NEEDED_HXX.append('%s.hxx'%return_type)
    
    def write_function_arguments(self,mem_fun):
        """
        Write the function arguments, comma separated
        """
        to_write = ''
        return_list = []
        param_list = []
        param_names = [] # a list with all the names of parameters
        default_value = {}
        FUNCTION_MODIFIED = False #is the function modified by any byref stuff?
        arguments = mem_fun.arguments
        is_first = True
        for i in range(len(arguments)):
            argument = arguments[i]
            if i<len(arguments)-1:
                next_argument = arguments[i+1]
                next_argument_default_value = "%s"%next_argument.default_value
            else:
                next_argument_default_value = "PP"
            if not is_first:
                to_write += ", "
            argument_name = "%s"%argument.name
            param_names.append(argument_name)
            argument_type = "%s"%argument.type
            argument_types=argument_type.split(" ")
            #
            # Check if the parameter is a typedef defined in another OCC package
            #
            argument_type_name = argument_types[0]
            #
            # The argument type_name may be Standard_Real, gp_Pnt etc.
            # The associated header must be added to the swig .if file in order to 
            # properly compile. This is then the strategy:
            # Example: V3d package is parsed
            #    - if the argument_type_name startswith V3d_, it's defined in this module. Pass.
            #    - if the argument_type_name does'nt start with V3d, (for ex gp_), then add the header
            #    to the list of additionnal headers.
            # 
            #
            t = self.CheckParameterIsTypedef(argument_type_name)
            if t:
                if (t!=self.MODULE_NAME):# and (t!='Standard'):
                    self.AddDependency(t)#print "Dependency with module %s"%t
            else:#it's not a type def
                if (not argument_type_name.startswith('%s_'%self.MODULE_NAME)) and \
                (not argument_type_name.startswith('Handle_%s_'%self.MODULE_NAME)) and\
                (not '::' in argument_type_name) and \
                (not argument_type in ['int']):#external dependency. Add header
                    header_to_add = '%s.hxx'%argument_type_name
                    if not (header_to_add in self.NEEDED_HXX):
                        self.NEEDED_HXX.append('%s.hxx'%argument_type_name)
            #
            # Find argument default value
            #
            argument_default_value = "%s"%argument.default_value

            if len(argument_types)==1:
                to_write += "%s "%argument_types[0]
            elif argument_types[0].startswith('std::list'):
                #We have something like:
                #
                #print argument_types
                tmp = argument_types[0]
                tmp = tmp.split('<')[1]
                tmp = tmp.split(',')[0]
                if tmp=='std::basic_string':
                    tmp='std::string'
                #if tmp=='std::basic_string':
                #    tmp='std::basic_string<char>'
                argument_types[0] = 'std::list'
                argument_types[1] = tmp               
                to_write += "%s<%s>"%(argument_types[0],argument_types[1])
                param_list.append(["String","aString"])
            elif argument_types[0].startswith('std::vector<int') and len(argument_types)==4:
                to_write += 'std::vector<int> %s'%argument_name
            elif argument_types[0].startswith('std::vector<double') and len(argument_types)==4:
                to_write += 'std::vector<double> %s'%argument_name
            elif argument_types[1]=='*' and len(argument_types)==2:
                #Case: GEOM_Engine* theEngine
                to_write += "%s%s %s"%(argument_types[0],argument_types[1],argument_name)
                param_list.append([argument_types[0],argument_name])
            elif len(argument_types)==3: #ex: Handle_WNT_GraphicDevice const &
                to_write += "%s %s %s%s"%(argument_types[1],argument_types[0],argument_types[2],argument_name)
                param_list.append([argument_types[1],argument_name])
            elif (len(argument_types)==2 and argument_types[1]!="&"):#ex: Aspect_Handle const
                to_write += "%s %s %s"%(argument_types[1],argument_types[0],argument_name)
                param_list.append([argument_types[0],argument_name])
                #print 'On y est'
                #print argument_types
            elif len(argument_types)==4:
                to_write += "%s %s%s"%(argument_types[0],argument_types[1],argument_name)
                param_list.append([argument_types[1],argument_name])
            else:
                if ('Standard_Real &' in argument_type) or\
                 ('Quantity_Parameter &' in argument_type) or\
                 ('Quantity_Length &' in argument_type) or\
                 ('V3d_Coordinate &' in argument_type): # byref Standard_Float parameter
                    to_write += 'Standard_Real &OutValue'
                    return_list.append(['Standard_Real',argument_name])
                    FUNCTION_MODIFIED = True
                elif 'Standard_Integer &' in argument_type:# byref Standard_Integer parameter
                    to_write += 'Standard_Integer &OutValue'
                    return_list.append(['Standard_Integer',argument_name])
                    FUNCTION_MODIFIED = True
                elif 'FairCurve_AnalysisCode &' in argument_type:
                    to_write += 'FairCurve_AnalysisCode &OutValue'
                    return_list.append(['FairCurve_AnalysisCode',argument_name])
                    FUNCTION_MODIFIED = True
                else:
                    to_write += "%s %s"%(argument_type,argument_name)
            #if 'Standard_CString' in to_write:
            #    to_write = to_write.replace('Standard_CString','char *')
            if argument_default_value!="None" and next_argument_default_value!="None":
                # default value may be "1u"or "::AspectCentered" etc.
                if argument_default_value=="1u":
                    argument_default_value = "1"
                elif argument_default_value=="0u":
                    argument_default_value = "0"
                elif argument_default_value.startswith('::'):
                    argument_default_value = argument_default_value[2:]
                to_write += "=%s"%argument_default_value
                default_value[argument_name]=argument_default_value
            is_first = False
        if mem_fun.decl_string.endswith(" const"):
            END_WITH_CONST = True
        else:
            END_WITH_CONST = False
        print 'avant:%s'%param_list
        return to_write, return_list, param_list, arguments, default_value, END_WITH_CONST, param_names,FUNCTION_MODIFIED
    
    def write_function( self , mem_fun , parent_is_abstract):
        """
        Write member functions declarations
        """
        # Test if method already exposed
        is_exportable = mem_fun.exportable
        function_name = mem_fun.name
        class_parent_name = mem_fun.parent.name
        #FUNCTION_MODIFIED = False #is the function modified by any byref stuff?
        param_list = [] # a dict that contain param names and their types (used for python docstring construction).
        return_list = []
        default_value={}
        if (not is_exportable) and not(class_parent_name in function_name):#for constructors and destructor
            print "\t\t %s method not exportable"%function_name
            return True
        if ("operator ::" in function_name): #Pb with SWIG
            return True
        if hasattr(mem_fun,"return_type"):
            return_type = "%s"%mem_fun.return_type
        else:
            print "No return type found for this method!!!"
            return False
        #
        # Check what headers to add for the return type
        #
        if return_type!='None' and not (' ' in return_type):
            t = self.CheckParameterIsTypedef(return_type)
            if t:
                if (t!=self.MODULE_NAME):# and (t!='Standard'):
                    if t.startswith('Handle'):
                        t = t.split('_')[1]
                    self.AddDependency(t)#print "Dependency with module %s"%t
            else:#it's not a type def
                if (not return_type.startswith('%s_'%self.MODULE_NAME)) and \
                (not return_type.startswith('Handle_%s_'%self.MODULE_NAME)) and \
                (not return_type in ['void','int']) and (not '::' in return_type):#external dependency. Add header
                    header_to_add = '%s.hxx'%return_type
                    if not (header_to_add in self.NEEDED_HXX):
                        self.NEEDED_HXX.append('%s.hxx'%return_type)
#        #
#        # Replace return type Standard_CString with char *
#        #
        print "\t\t %s added."%function_name
        to_write = ''#
        # Handle 'Standard_Integer &' and 'Standard_Real &' return types
        #
        if (return_type in ['Standard_Integer &','Standard_Real &','Standard_Boolean &']) and not ('operator' in function_name):
            # First get the string for arguments declaration
            str_args,return_list,param_list,arguments, default_value,END_WITH_CONST,param_names,FUNCTION_MODIFIED = self.write_function_arguments(mem_fun)
            # build param enum from params:
            # ['a','b','c']->'a,b,c'
            po = ''
            k = len(param_names)
            for i in range(k):
                po+=param_names[i]
                if i<k-1:
                    po+=','           
            typ = return_type.split(" ")[0] # -> Standard_Integer or Standard_Real            
            # Create Get function_name
            to_write += '\t\t%feature("autodoc","1");\n'
            to_write += '\t\t%extend {\n'
            to_write += '\t\t\t\t%s Get%s(%s) {\n'%(typ,function_name,str_args)
            to_write += '\t\t\t\treturn (%s) $self->%s(%s);\n'%(typ,function_name,po)
            to_write += '\t\t\t\t}\n\t\t};\n'
            # Create Set function_name
            to_write += '\t\t%feature("autodoc","1");\n'
            to_write += '\t\t%extend {\n'
            if len(param_list)>0:
                str_args2=","+str_args
            else:
                str_args2=str_args            
            to_write += '\t\t\t\tvoid Set%s(%s value %s) {\n'%(function_name,typ,str_args2)
            to_write += '\t\t\t\t$self->%s(%s)=value;\n'%(function_name,po)
            to_write += '\t\t\t\t}\n\t\t};\n'  
            self.fp.write(to_write)
            return True      
        # FEATURE DOCSTRING
        # First try to find the key (necessary for overloaded functions
        # the key can be Coord, Coord_1 or Coord_2
        if self.MemberfunctionDocStrings.has_key(function_name):
            key = function_name
        else:
            key = None
        # Detect virtuality
        if (mem_fun.virtuality==declarations.VIRTUALITY_TYPES.PURE_VIRTUAL) or (mem_fun.virtuality==declarations.VIRTUALITY_TYPES.VIRTUAL):
            to_write+="\t\tvirtual"
        # Detect static method
        if mem_fun.has_static:
            to_write+="\t\tstatic"
        # on teste le cas suivant pour return_type:gp_Pnt const &, qu'il faut transformer en const gp_Pnt &
        parts = return_type.split(" ")
        if len(parts)==3:
            return_type="%s %s %s"%(parts[1],parts[0],parts[2])
        if return_type=="None":
            to_write += "\t\t%s("%(function_name)
        else:
            to_write +="\t\t%s %s("%(return_type,function_name)
        #
        # Write arguments of the method
        #
        str,return_list,param_list,arguments, default_value,END_WITH_CONST, param_names,FUNCTION_MODIFIED = self.write_function_arguments(mem_fun)
        print param_list
        to_write += str
        if END_WITH_CONST:
            to_write += ") const;\n"
        else:
            to_write += ");\n"
        if 'Standard_CString' in to_write:
            to_write = to_write.replace('Standard_CString','char *')
        if to_write in self._CURRENT_CLASS_EXPOSED_METHODS: #to avoid writing twice constructors
            return True
        if "&arg0);" in to_write: #constructor
            return False
        # dont't write constructors for abstract classes
        if parent_is_abstract and ("%s();"%class_parent_name in to_write):
            return False
        #
        # Finally, process Standard_OStream and Standard_ISteam selected methods
        #
        if len(arguments)==1: #Methods with only one Standard_Ostream/Standard_IStream & parameter
        #if len(arguments)>0:
            if 'Standard_OStream &' in '%s'%arguments[0].type:#argument_type:
                to_write ='\t\t%feature("autodoc", "1");\n'
                to_write+='\t\t%extend{\n\t\t\tstd::string '
                to_write+='%sToString() {\n\t\t\tstd::stringstream s;\n'%function_name
                to_write+='\t\t\tself->%s(s);\n'%function_name
                to_write+='\t\t\treturn s.str();}\n\t\t};\n'
            if 'std::istream &' in '%s'%arguments[0].type:#argument_type:
                to_write = '\t\t%feature("autodoc", "1");\n'
                to_write+='\t\t%extend{\n\t\t\tvoid '
                to_write+='%sFromString(std::string src) {\n\t\t\tstd::stringstream s(src);\n'%function_name
                to_write+='\t\t\tself->%s(s);}\n'%function_name
                to_write+='\t\t};\n'
        # Log
        if FUNCTION_MODIFIED:
            self.AddFunctionTransformation("%s::%s\n"%(class_parent_name,function_name))
        # Write docstring to file
        if FUNCTION_MODIFIED: # The docstring has to be changed
            meth_doc = "%s("%function_name
            index=1
            for param in param_list:
                #print param
                meth_doc+=param[0]
                meth_doc+=" "
                meth_doc+=param[1]
                if default_value.has_key(param[1]):
                    meth_doc+="=%s"%default_value[param[1]][:8]#eight digits maxi
                if index<len(param_list):
                    meth_doc+=", "
                index+=1
            docstring = '\t\t%feature("autodoc",'
            docstring+='"%s)'%meth_doc
            # Add return
            if len(return_list)<=1:#just one value
                docstring+=' -> %s'%return_list[0][0]
            else:
                docstring+=' -> ['
                index_2=1
                for rt in return_list:
                    docstring+='%s'%rt[0]
                    if index_2<len(return_list):
                        docstring+=", "
                    index_2+=1
                docstring+=']'
            docstring+='");\n\n'
            if function_name=='Edge':
                print param_list
                print docstring
                # TODO : a problem with this docstring
        else:
            # automatically generated docstring by SWUG is perfect
            docstring = '\t\t%feature("autodoc", "1");\n'
        self.fp.write(docstring)
        # Write method
        self.fp.write(to_write)
        self._CURRENT_CLASS_EXPOSED_METHODS.append(to_write)     
            
    def process_class(self,class_declaration):
        """
        Process class
        """
        # list with exposed member functions decl_strings
        CURRENT_CLASS_IS_ABSTRACT = False
        self._CURRENT_CLASS_EXPOSED_METHODS = []
        class_name = class_declaration.name
        if class_name in self.ALREADY_EXPOSED:
            return True#raise "Already imported"
        # Check whether the class to process is outside this package
        if class_name.startswith('Handle'):
            from_package = class_name.split('_')[1]
        else:
            from_package = class_name.split('_')[0]
        if from_package!=self.MODULE_NAME:
            self.AddDependency(from_package)
            return True
        if class_declaration.is_abstract: #cannot instanciate abstract class
            CURRENT_CLASS_IS_ABSTRACT = True
        # That's ok, let's go for this class
        print "####### class %s ##########"%class_name
        # getting docstrings
        #if self._generate_doc and not ('Handle' in class_name):
        #    self.ClassDocstring, self.MemberfunctionDocStrings = BuildDocstring.GetClassDocstrings(class_name)
        # on traite d'abord la classe qui est derivee
        if self.DERIVED.has_key(class_name):
            inherits_from = self.DERIVED[class_name]
            print "\t\tInherits from %s"%inherits_from
            class_to_perform = self._mb.classes(inherits_from).declarations[0]
            if not class_to_perform.name in self.CLASSES_TO_EXCLUDE:
                self.process_class(class_to_perform)
        #
        # Affichage du nom de la classe
        #
        self.fp.write("\n\n%nodefaultctor ")
        self.fp.write("%s;\n"%class_name)
        if class_name.startswith('GEOMAlgo'):
            self.fp.write("\n\n%nodefaultdtor ")
            self.fp.write("%s;\n"%class_name)
        # Adding %docstring SWIG directive
        #if self._generate_doc and not ('Handle' in class_name):
        #    self.fp.write('%feature("docstring") ')
        #    self.fp.write('%s '%class_name)
        #    self.fp.write('"%s";\n'%self.ClassDocstring)        
        # Check if this class inherits from antoher one
        if not self.DERIVED.has_key(class_name):
            self.fp.write("class %s {\n"%class_name)
        else:
            self.fp.write("class %s : public %s {\n"%(class_name,self.DERIVED[class_name]))
        self.fp.write("\tpublic:\n")
        if len(class_declaration.derived)>0:
            for other_classes in class_declaration.derived:
                print "\t\t%s"%other_classes.related_class.name
        # Processing class internal enums, or enums that are defined inside a C++ class
        #
        # For instance, in the file SMESH_Hypothesis.hxx:
        #
        #class SMESH_EXPORT SMESH_Hypothesis: public SMESHDS_Hypothesis
        #{
        #public:
        #  enum Hypothesis_Status // in the order of severity
        #  {
        #    HYP_OK = 0,
        #    HYP_MISSING,      // algo misses a hypothesis
        #    HYP_CONCURENT,    // several applicable hypotheses
        #    HYP_BAD_PARAMETER,// hy
        # Aim of the following lines is to handle the Hypothesis_Status enum defined
        # in the SMESH_Hypothesis class and add the corresponding code to the SWIG file.
        
        # protected_enums is a list of encountered protected defined enums.
        # TODO: find a way to find automatically whether or not the enum is protected
        protected_enums=['PointLocation','Comparison','Logical','HypothesisType','VValue','IValueIndex','VValueIndex','SValueIndex','ValueIndex',\
                         'ParameterType','' #AWfull Tweak to exclude a protected enum in SMESH_Block\
                         ]
        try:
            class_declaration.enumerations() #if no internal enum, an exception is raised by pygccxml
            HAVE_INTERNAL_ENUMS = True
        except:
            HAVE_INTERNAL_ENUMS = False
        if HAVE_INTERNAL_ENUMS:
            class_enums_tempdict = {} #a dict {} = [enum_name:enum_value]
            for class_enum in class_declaration.enumerations():
                if class_enum.name not in protected_enums:
                    # TODO: better handle of privade enums
                    class_enums_tempdict[class_enum.name]=class_enum.values                
            # Then add the lines to write
            for class_enum_name in class_enums_tempdict.keys():
                self.fp.write("\t\tenum %s {\n"%class_enum_name)
                for class_enum_values in class_enums_tempdict[class_enum_name]:
                    self.fp.write("\t\t\t%s,\n"%class_enum_values[0])
                self.fp.write("\t\t};\n")
        # Processing methods for this class
        # The implementation is a loop over the methods found by pygccxml      
        print "\t### Member functions for class %s ###"%class_declaration.name
        HAVE_HASHCODE = False
        # Check protected constructors
        PROTECTED_CONSTRUCTOR = False
        for protected_method in class_declaration.protected_members:
            if class_name == protected_method.name:
                PROTECTED_CONSTRUCTOR = True
                print 'class %s has protected constructor'%class_name
        # process all public methods
        for mem_fun in class_declaration.public_members:#member_functions():
            # Member functions to exclude
            function_name = mem_fun.name
            if function_name == 'HashCode': #function that have a special HashCode
                nb_arguments = len(mem_fun.arguments)
                if nb_arguments == 1:
                    HAVE_HASHCODE = True
            if (function_name.startswith('~')):#ignore destructor
                pass
            elif not self.MEMBER_FUNCTIONS_TO_EXCLUDE.has_key(class_name):
                self.write_function(mem_fun,CURRENT_CLASS_IS_ABSTRACT)
            elif function_name not in self.MEMBER_FUNCTIONS_TO_EXCLUDE[class_name]:
                 self.write_function(mem_fun,CURRENT_CLASS_IS_ABSTRACT)
        self.fp.write("\n};")
        #
        # Adding a method GetObject() to Handle_* classes
        #
        if (class_name.startswith('Handle_')):
            self.fp.write("\n%")
            self.fp.write("extend %s {\n"%class_name)
            pointed_class = class_name[7:]
            self.fp.write("\t%s* GetObject() {\n"%pointed_class)
            self.fp.write("\treturn (%s*)$self->Access();\n\t}\n};"%pointed_class)
        #
        # Adding a method GetHandle() to objects managed by handles
        #
        if ('Handle_%s'%class_name) in self.ALREADY_EXPOSED:
            self.fp.write("\n%")
            self.fp.write("extend %s {\n"%class_name)
            handle_class_name = 'Handle_%s'%class_name
            self.fp.write("\t%s GetHandle() {\n"%handle_class_name)
            self.fp.write("\treturn *(%s*) &$self;\n\t}\n};"%handle_class_name)
        #
        # Overload __hash__() method for objects that inherits from Standard_Transient
        #
        if (('Handle_%s'%class_name in self.ALREADY_EXPOSED) or HAVE_HASHCODE):
            self.fp.write("\n%")
            self.fp.write("extend %s {\n"%class_name)
            handle_class_name = 'Handle_%s'%class_name
            self.fp.write("\tStandard_Integer __hash__() {\n")
            self.fp.write("\treturn $self->HashCode(__PYTHONOCC_MAXINT__);\n\t}\n};")
        #
        # Or for functions that have a special HashCode function (TopoDS, Standard_GUID etc.)
        #
        if not (class_name.startswith('GEOMAlgo')):#issues with GEOMAlgo_Clsf destructor, protected
            self.fp.write('\n%')
            self.fp.write('feature("shadow") %s::~%s '%(class_name,class_name))
            self.fp.write('%{\n')
            self.fp.write('def __del__(self):\n')
            #self.fp.write('\tglobal occ_gc\n')
            self.fp.write('\ttry:\n')
            self.fp.write('\t\tself.thisown = False\n')#detach python object/C++ object
            self.fp.write('\t\tGarbageCollector.garbage.collect_object(self)\n')
            self.fp.write('\texcept:\n\t\tpass\n')
            #self.fp.write('\texcept:\n\t\tpass\n')
            self.fp.write('%}\n')
        # Customize destructor
        #self.fp.write('\n%')
        #self.fp.write('extend %s {\n'%class_name)
        #self.fp.write('\t~%s() {\n\tchar *__env=getenv("PYTHONOCC_VERBOSE");\n\tif (__env){printf("## Call custom destructor for instance of %s\\n");}'%(class_name,class_name))
        #if class_name == 'BRepAlgoAPI_BooleanOperation':
        #    self.fp.write('\n\t$self->Destroy();\n')
        #self.fp.write('\n\t}\n};\n')
        # Customize destructor
            self.fp.write('\n%')
            self.fp.write('extend %s {\n'%class_name)
            self.fp.write('\tvoid _kill_pointed() {\n\t')
            self.fp.write('\tdelete $self;')
            self.fp.write('\n\t}\n};\n')
        #
        # Special method for XCAFApp_Application
        #
        if (class_name=='XCAFApp_Application'):
            self.fp.write('%inline %{\n')
            self.fp.write('Handle_XCAFApp_Application GetApplication()\n')
            self.fp.write('{\n')
            self.fp.write('return XCAFApp_Application::GetApplication();\n')
            self.fp.write('}\n%}\n')
        #
        # Method ToString for Standard_GUID
        #
        if (class_name=='Standard_GUID'):
            self.fp.write('%extend Standard_GUID {\n')
            self.fp.write('\tStandard_PCharacter ToString() {\n')
            self.fp.write('\tStandard_PCharacter tmpstr=NULL;\n')
            self.fp.write('\ttmpstr = new char[37];\n')
            self.fp.write('\tstrcpy(tmpstr,"00000000-0000-0000-0000-000000000000");\n')
            self.fp.write('\t$self->ToCString(tmpstr);\n')
            self.fp.write('\treturn tmpstr;\n\t}\n};\n')
        #
        # Pickling for TopoDS shapes
        #
        if (class_name=='TopoDS_Shape'):
            self.fp.write('%extend TopoDS_Shape {\n%pythoncode {\n')
            self.fp.write('\tdef __getstate__(self):\n')
            self.fp.write('\t\tfrom BRepTools import BRepTools_ShapeSet\n')
            self.fp.write('\t\tss = BRepTools_ShapeSet()\n')
            self.fp.write('\t\tss.Add(self)\n')
            self.fp.write('\t\tstr_shape = ss.WriteToString()\n')
            self.fp.write('\t\treturn str_shape\n')

            self.fp.write('\tdef __setstate__(self, state):\n')
            self.fp.write('\t\tfrom BRepTools import BRepTools_ShapeSet\n')
            self.fp.write('\t\tss = BRepTools_ShapeSet()\n')
            self.fp.write('\t\tss.ReadFromString(state)\n')
            self.fp.write('\t\tthe_shape = ss.Shape(ss.NbShapes())\n')
            self.fp.write('\t\tself.this = the_shape.this\n')
            self.fp.write('\t}\n};\n')
        #
        # Node, Edge and Face iterator for SMDS_Mesh
        #
        if (class_name=='SMDS_Mesh'):
            # Node iterator
            self.fp.write('%extend SMDS_Mesh {\n')
            self.fp.write('\tconst SMDS_MeshNode * nodeValue(int index) {\n')
            self.fp.write('\t\tint i;\n')
            self.fp.write('\t\tSMDS_NodeIteratorPtr iterator=$self->nodesIterator();\n')
            self.fp.write('\t\tfor (i=0; i<=index-1; i++) {\n')
            self.fp.write('\t\t\titerator->next();}\n')
            self.fp.write('\t\treturn iterator->next();\n')
            self.fp.write('\t}\n};\n')
            # Edge iterator
            self.fp.write('%extend SMDS_Mesh {\n')
            self.fp.write('\tconst SMDS_MeshEdge * edgeValue(int index) {\n')
            self.fp.write('\t\tint i;\n')
            self.fp.write('\t\tSMDS_EdgeIteratorPtr iterator=$self->edgesIterator();\n')
            self.fp.write('\t\tfor (i=0; i<=index-1; i++) {\n')
            self.fp.write('\t\t\titerator->next();}\n')
            self.fp.write('\t\treturn iterator->next();\n')
            self.fp.write('\t}\n};\n')
            # Face iterator
            self.fp.write('%extend SMDS_Mesh {\n')
            self.fp.write('\tconst SMDS_MeshFace * faceValue(int index) {\n')
            self.fp.write('\t\tint i;\n')
            self.fp.write('\t\tSMDS_FaceIteratorPtr iterator=$self->facesIterator();\n')
            self.fp.write('\t\tfor (i=0; i<=index-1; i++) {\n')
            self.fp.write('\t\t\titerator->next();}\n')
            self.fp.write('\t\treturn iterator->next();\n')
            self.fp.write('\t}\n};\n')
        
        if PROTECTED_CONSTRUCTOR and not CURRENT_CLASS_IS_ABSTRACT:
            self.fp.write('%extend ')
            self.fp.write('%s {\n'%class_name)
            self.fp.write('\t%s () {}\n'%class_name)
            self.fp.write('};\n')
          
#            %extend SMDS_Mesh {
#    const SMDS_MeshNode * nodesValue(int index) {
#        int i;
#        SMDS_NodeIteratorPtr node_iterator=$self->nodesIterator();
#        for (i=0; i<index-1; i++) {
#            node_iterator->next();
#            }
#        #SMDS_NodeIteratorPtr node_iterator=$self->nodesIterator();
#        return node_iterator->next();
#    }
#};
        #
        # On l'ajoute a la liste des classes deja exposees
        #
        self.ALREADY_EXPOSED.append(class_name)
        global nb_exported_classes
        nb_exported_classes += 1
    
    def IsTypeDef(self,param_name):
        """
        Return True if the param_name is a typedef
        """
        if param_name in self._typedef_list:
            return True
        else:
            return False
    
    def IsEnum(self,param_name):
        """
        Return True if param_name is an enum
        """
        if param_name in self._enum_list:
            return True
        else:
            return False
        
    def CheckParameterIsTypedef(self,param_name):
        """
        Check if the parameter is a typedef defined in this scope or not.
        If this is a typedef that is not defined in that module, returns the module name.
        """
        if self.IsTypeDef(param_name) or self.IsEnum(param_name):
            if param_name.startswith('Handle'):
                return param_name.split("_")[1]
            else:
                return param_name.split("_")[0]            
        return False
    
    def AddFunctionTransformation(self,t):
        """ This methods writes in a file all classes/methods that are modified by the wrapper.
        For instance all the byref Standard_Real etc. This is just a logfile.
        """
        f = open('function_transformation.log','a')
        f.write(t)
        f.close()
                
    def InitBaseSwigFile(self):
        # create OCC.i script
        self.occ_fp = open(os.path.join(os.getcwd(),'%s'%environment.SWIG_FILES_PATH_MODULAR,'%s.i'%self.MODULE_NAME),"w")
        WriteLicenseHeader(self.occ_fp)
        self.occ_fp.write("%module ")
        self.occ_fp.write("%s\n"%self.MODULE_NAME)
        # Add renames
        # self.occ_fp.write("\n\n%%include %s_renames.i"%self.MODULE_NAME)        
        # Write common header
        self.occ_fp.write("%include ../CommonIncludes.i\n")
        self.occ_fp.write("%include ../StandardDefines.i\n")
        self.occ_fp.write("%include ../ExceptionCatcher.i\n")
        self.occ_fp.write("%include ../FunctionTransformers.i\n")
        self.occ_fp.write("%include ../Operators.i\n")
        # For modules SMDS or StdMeshers, add the Vector.i header
        if self.MODULE_NAME in ['SMDS','SMESH','StdMeshers']:
            self.occ_fp.write("%include ../StandardTemplateLibrary.i\n")
        # Garbage collector
        GARBAGE = """
%pythoncode {
import GarbageCollector
};
"""     
        self.occ_fp.write(GARBAGE)       
        # Add dependencies
        self.occ_fp.write("\n%%include %s_dependencies.i\n\n"%self.MODULE_NAME)
        # Add headers
        self.occ_fp.write("\n%%include %s_headers.i\n\n"%self.MODULE_NAME)
        
        
    def FindClasseToExclude(self):
        """
        Build a list about classes to exclude in the whole module
        """
        self.CLASSES_TO_EXCLUDE += self.MODULES[2]
    
    def FindMemberFunctionsToExclude(self):
        """
        Build a dict about members functions to exclude (linkage issue for example)
        """
        if len(self.MODULES)==4:
            self.MEMBER_FUNCTIONS_TO_EXCLUDE.update(self.MODULES[3])
    
    def OSFilterHeaders(self,HXX_FILES):
        """
        Under Linux/MacOS, remove all WNT*headers
        Under Windows, remove all X11/Xfw headers
        """
        # First define all headers that raise a gccxml/pygccxml exception
        HXX_TO_EXCLUDE = ['TCollection_AVLNode.hxx',
                          'BndLib_Compute.hxx','W32_Allocator.hxx',
                          'WNT_Allocator.hxx','WNT_FontMapEntry.hxx',
                          'Standard_Atomic.hxx',
                          'WNT_FontTable.hxx',
                          'AlienImage_GIFLZWDict.hxx','Image_PixelFieldOfDIndexedImage.hxx',
                          'Standard_Transient_proto.hxx',
                          'TopOpeBRepBuild_Builder.hxx','TopOpeBRepBuild_Fill.hxx',
                          'TopOpeBRepBuild_SplitSolid.hxx','TopOpeBRepBuild_SplitShapes.hxx',
                          'TopOpeBRepBuild_SplitEdge.hxx',
                          'Message_Algorithm.hxx',
                          'Message_ExecStatus.hxx',
                          'GEOMImpl_Template.hxx',
                          ]
        if sys.platform!='win32':
            HXX_TO_EXCLUDE.append('InterfaceGraphic_Visual3d.hxx') #error with gccxml under Linux
            HXX_TO_EXCLUDE.append('Xw_Cextern.hxx')
        # Also remove all headers that contain 'Test' (for instance BOPTest.hxx').
        # These are just unit tests and missing from Debian Package
        if self.MODULE_NAME!='TopBas':
            for hxx_file in HXX_FILES:
                if 'Test' in hxx_file:
                    HXX_TO_EXCLUDE.append(hxx_file)
        # Under Linux, remove all *WNT* classes
        if sys.platform != 'win32':
            for hxx_file in HXX_FILES:
                if 'WNT' in hxx_file:
                    HXX_TO_EXCLUDE.append(hxx_file)        
        elif sys.platform == 'win32':
            HXX_TO_EXCLUDE.append('SMESH_ControlsDef.hxx') #SMESH pygccxml error
            HXX_TO_EXCLUDE.append('Standard_Real_Original.hxx')
            for hxx_file in HXX_FILES: # Under Windows, remove all X11/Xfw headers
                if ('X11' in hxx_file) or ('XWD' in hxx_file):
                    HXX_TO_EXCLUDE.append(hxx_file)
        if len(HXX_FILES)==0:
            HXX_FILES = CaseSensitiveGlob(os.path.join(self.INC_PATH,'%s*.hxx'%self.MODULE_NAME))
        # Exclude undesired hxx for OS specific or pygccxml issues
        for hxx_to_exclude in HXX_TO_EXCLUDE:
            to_exclude = os.path.join(self.INC_PATH,'%s'%hxx_to_exclude)
            if to_exclude in HXX_FILES:
                HXX_FILES.remove(to_exclude)
        return HXX_FILES
        
    def Init(self):
        """
        Module builder initialization
        """        
        self.HXX_FILES = CaseSensitiveGlob(os.path.join(self.INC_PATH,'%s_*.hxx'%self.MODULE_NAME))+\
                         CaseSensitiveGlob(os.path.join(self.INC_PATH,'%s.hxx'%self.MODULE_NAME))+\
                         CaseSensitiveGlob(os.path.join(self.INC_PATH,'Handle_%s_*.hxx'%self.MODULE_NAME))
        self.HXX_FILES = self.OSFilterHeaders(self.HXX_FILES)
        print " %i headers - GCCXML parsing"%len(self.HXX_FILES)
        # Include additionnal headers
        for additional_header in self.ADDITIONAL_HEADERS:
            self.ADDITIONAL_HXX += CaseSensitiveGlob(os.path.join(self.INC_PATH,'%s*.hxx'%additional_header))
            self.ADDITIONAL_HXX += CaseSensitiveGlob(os.path.join(environment.OCC_INC,'%s*.hxx'%additional_header))
        self.ADDITIONAL_HXX = self.OSFilterHeaders(self.ADDITIONAL_HXX)
        ### TO OPTIMIZE
        if self.INC_PATH == environment.SALOME_GEOM_INC:
            # Include additionnal headers
            for additional_header in self.ADDITIONAL_HEADERS:
                self.ADDITIONAL_HXX += CaseSensitiveGlob(os.path.join(environment.OCC_INC,'%s*.hxx'%additional_header))       
                self.ADDITIONAL_HXX = self.OSFilterHeaders(self.ADDITIONAL_HXX)
        # Sorting headers
        self.HXX_FILES.sort()
        self.ADDITIONAL_HXX.sort()
        
    def GenerateWrapper(self):
        """
        Create .hxx file that will be processed with pygccxml
        """
        hxx_wrapper = open(self._wrapper_filename,"w")
        hxx_wrapper.write("// HXX wrapper generated by pythonOCC generate_code.py script.\n")
        hxx_wrapper.write("#ifndef __%s_wrapper__\n#define __%s_wrapper__\n\n"%(self.MODULE_NAME,self.MODULE_NAME))
        for hxx_file in self.HXX_FILES:
            hxx_wrapper.write('#include "%s"\n'%hxx_file)
        hxx_wrapper.write("\n#endif __%s_wrapper__\n"%(self.MODULE_NAME))
        hxx_wrapper.close()
        #
        # Careful: if the module to parse is SGEOM then must parse GEOM classes
        #
        if self.MODULE_NAME == 'SGEOM':
            self.MODULE_NAME = 'GEOM'
        
    def WriteModuleEnums(self):
        """
        Including enums that match module name
        """
        try: #BRepBndLib raises a pygccxml exception.
            for enum in self._mb.enumerations():       
                if enum.name.startswith('%s_'%self.MODULE_NAME):#self.MODULE_NAME in enum.name:
                    enum_name = enum.name
                    enum_values = enum.values
                    self.fp.write("enum %s {\n"%enum_name)
                    for value in enum.values:
                        self.fp.write("\t%s,\n"%value[0])
                        # Rename enums
                        #self.AddFilterName(value[0])
                    self.fp.write("\t};\n\n")
        except:
            print "Error while getting enums"
    
    def WriteModuleTypedefs(self):
        """
        Including enums that match module name
        """
        if self.MODULE_NAME== 'OSD':
            return # TODO: Problem with a typedef in OSD module
        try:
            typedefs = self._mb.global_ns.typedefs()
        except:
            print "No typedef defined in the set of headers provided"
            return True
        for elem in typedefs:
            if (elem.name.startswith('%s_'%self.MODULE_NAME)) and (not '::' in '%s'%elem.type) and not(elem.name=='MeshVS_SelectionModeFlags'):
                # Careful:
                # typedef Standard_Real Quantity_Parameter leads to a bug
                # it should rather be:
                # typedef double Quantity_Parameter
                if "%s"%elem.type=="Standard_Real":
                    elem_type = "double"
                else:
                    elem_type = "%s"%elem.type
                self.fp.write('typedef %s %s;\n'%(elem_type,elem.name))
        self.fp.write('\n')
        
    def BuildModule(self):
        """
        Generate _mb with pygccxml
        """
        PATHS = [self.INC_PATH, environment.SWIG_FILES_PATH_MODULAR, environment.OCC_INC,environment.BOOST_INC]
        self._mb = module_builder.module_builder_t(
                files=[self._wrapper_filename],
                gccxml_path=environment.GCC_XML_PATH,
                define_symbols=environment.PYGCCXML_DEFINES,
                include_paths=PATHS)
        # Excluding member functions that cause compilation fail
        #if self.MODULE_NAME == 'ShapeSchema':
        #    member_functions = self._mb.member_functions(lambda decl : decl.name.startswith('SAdd'))
        #    member_functions.exclude()
    
if __name__ == '__main__':
    a = glob.glob(os.path.join(self.INC_PATH,'STandard_*.hxx'))
    b = CaseSensitiveGlob(os.path.join(self.INC_PATH,'STandard_*.hxx'))
    assert a == 76
    assert b == 0
    
