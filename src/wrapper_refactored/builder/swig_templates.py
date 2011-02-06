'''
Created on Jan 21, 2011

@author: henrik
'''
from builder.templates import BaseTemplate
from pygccxml.declarations.cpptypes import free_function_type_t
from pygccxml import declarations
from builder.pypp_mods import include_matcher, module_matcher
from pyplusplus.decl_wrappers.class_wrapper import class_t
import re

        
license = """
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
"""



def class_sort_key(module_name):
    def sort_key(cls):
        base = cls
        keys = []
        while True:
            keys.append(base.alias)
            if not hasattr(base, 'bases') or len(base.bases) < 1:
                break
            if not bool(re.match("^(Handle_)*%s_"%module_name, base.alias)):
                break
            base = base.bases[0].related_class
        if cls.is_handle:
            keys.append(str(0))
        return "".join(reversed(keys)) 
    return sort_key

class ModuleTemplate(BaseTemplate):
    """
    /*
    ${license}
    */
     
    %module ${module_name}
           
    %include ../CommonIncludes.i
    %include ../StandardDefines.i
    %include ../ExceptionCatcher.i
    %include ../FunctionTransformers.i
    %include ../Operators.i
    *${additional_includes}
    
    %pythoncode {
    import GarbageCollector
    };
    %include ${module_name}_dependencies.i
    
    ${typedefs}
    
    ${enumerations}
    
    ${classes}
    """

    def process(self, args):
        #ulgly hack to conform interface
        name, global_ns = args
        self.module_name = name
        self.license = license
        self.additional_includes = ""
        matcher = module_matcher(name) & include_matcher
        self.typedefs = "\n".join(global_ns.typedefs(matcher).render())
        classes = global_ns.classes(matcher, recursive=False)
        self.classes = "\n".join(classes.render())
        #self.enumerations = "\n".join(decl.enums(include_matcher).sort().render())
        self.enumerations = "\n".join(global_ns.enums(matcher).render())
        #self.object_classes = "\n".join(decl.classes(object_matcher).sort(reverse=True).render())

class DependencyTemplate(BaseTemplate):
    """
    /*
    ${license}
    */
    %{
    ${included_headers}
    %};
    """
    
    def process(self, decl):
        self.license = decl.license_template.render(None)
        self.included_headers = "".join(["\n#include<%s.hxx>"%head for head in decl.include_files])
        
class ClassTemplate(BaseTemplate):
    """   
    %nodefaultctor ${class_name};
    ${no_destructor}
    class ${class_name} ${inheritance} {
        public:
           *${wrapped_methods} 
    };
    *${additional}
    """
   
    def process(self, decl):
        self.class_name = decl.alias
        self.no_destructor = ""
        if decl.no_destructor == True:
            self.no_destructor = "%nodefaultdtor %s;" % decl.alias
        self.inheritance = ""
        if len(decl.bases) > 0:
            super_class = decl.bases[0].related_class.alias
            self.inheritance = ": public %s" % super_class 

        members = filter(include_matcher, decl.public_members)
        members = filter(lambda m: m.main_template is not None, members)
        members = filter(lambda m: not isinstance(m, class_t), members)
        
        self.wrapped_methods = "\n".join([member.render(indent=2) for member in members])
        self.internal_enums = ""
        additional = []
        for t in decl.templates():
            #print "Extra!!!", t
            additional.append(t.render(decl, indent=0))
            
        self.additional = "\n".join(additional)


class PropertyTemplate(BaseTemplate):
    """
    //Var: ${type} ${name}
    //Get: ${getter}
    //Set: ${setter}
    """
    #Geom_BSplineSurface
    def process(self, decl):
        self.type = decl.type.decl_string
        self.name = decl.alias
        self.setter = decl.setter
        self.getter = decl.getter
    
class PrimitiveFunction:
    """
    %feature("autodoc","1");
    %extend {
        ${type} Get${function_name}(${str_args}) {
            return (${type}) $self->${function_name}(${po});
        }
    };
    
    %feature("autodoc","1");
    %extend {
        void Set${function_name}(${type} value ${str_args2}) {
            $self->${function_name}(${po})=value;
        }
    }; 
    """
    
class FunctionTemplate(BaseTemplate):
    """
    %feature("autodoc", "1");
    ${pre}${return_type}${function_name}(${arguments})${const};
    """ 
    
    def process(self, mem_fun):
        self.function_name = mem_fun.alias
        
        self.pre = ""
        if mem_fun.virtuality == declarations.VIRTUALITY_TYPES.PURE_VIRTUAL or \
           mem_fun.virtuality==declarations.VIRTUALITY_TYPES.VIRTUAL:
            self.pre = "virtual "
            
        if mem_fun.has_static: #isinstance(mem_fun.function_type(), free_function_type_t):
            self.pre += 'static '
        
        self.return_type = ""
        if mem_fun.return_type:
            ret = str(mem_fun.return_type_alias)
            if "const" in ret and len(ret.split(" ")) == 3:# and not mem_fun.has_static:
                ret =  "const " + ret.replace("const ", "")

            self.return_type = ret
        self.const = ""
        if mem_fun.has_const:
            self.const = ' const'
            

        self.arguments = ", ".join(mem_fun.args().render())
        #self.additional = "\n".join([t.render(mem_fun, indent=0) for t in mem_fun.templates()])



class EnumTemplate(BaseTemplate):
    """
    enum ${name} {
        *${values}
    };
    """
    def process(self, decl):
        self.name = decl.alias
        self.values = ",\n    ".join([v[0] for v in decl.values])+"," 

class TypeDefTemplate(BaseTemplate):
    """
    typedef ${type} ${name};
    """
    def process(self, decl):
        self.name = decl.alias
        self.type = str(decl.type)
        
        



class ClassExtensionBaseTemplate(BaseTemplate):
    """
    """
    def process(self, decl):
        self.class_name = decl.alias

class GetObjectTemplate(BaseTemplate):
    """
    %extend ${class_name} {
        ${pointed_class}* GetObject() {
            return (${pointed_class}*)$self->Access();
        }
    };
    """ 
 
    def process(self, declaration):
        self.class_name = declaration.alias
        self.pointed_class = self.class_name[7:] #"Handle_" 
        return self.render  
        

class GetHandleTemplate(ClassExtensionBaseTemplate):
    """
    %extend ${class_name} {
        Handle_${class_name} GetHandle(){
            return *(Handle_${class_name}*)&$self;
        }
    };
    """ 

class HashTemplate(ClassExtensionBaseTemplate):
    """
    %extend ${class_name} {
        Standard_Integer __hash__() {
            return $self->HashCode(__PYTHONOCC_MAXINT__);
        }
    };
    
    """

class GeomDestructorTemplate(ClassExtensionBaseTemplate):
    '''
    %feature("shadow") ${class_name}::~${class_name} %{
        def __del__(self):
            try:
                self.thisown = False
                GarbageCollector.garbage.collect_object(self)
            except:
                pass
    
    %}
    %extend ${class_name} {
        void _kill_pointed() {
            delete $self;
        }                    
    };
    '''

    def process(self, decl):
        self.class_name = decl.alias

         
class XCAFAppTemplate(ClassExtensionBaseTemplate):
    '''
    %inline %{
        Handle_XCAFApp_Application GetApplication(){
            return XCAFApp_Application::GetApplication();
        }
    %}
    '''

class GUIDTemplate(ClassExtensionBaseTemplate):
    '''
    %extend Standard_GUID {
        Standard_PCharacter ToString() {
            Standard_PCharacter tmpstr=NULL;
            tmpstr = new char[37];
            strcpy(tmpstr,"00000000-0000-0000-0000-000000000000");
            $self->ToCString(tmpstr);
            return tmpstr;
        }
    };                      
    '''
    
class OStreamTemplate(BaseTemplate):
    """
    %feature("autodoc", "1");
    %extend{
        std::string ${function_name}ToString() {
            std::stringstream s;
            self->${function_name}(s);
            return s.str();
        }
    };

    """
    
    def process(self, decl):
        self.function_name = decl.alias


class IStreamTemplate(BaseTemplate):
    """
    %feature("autodoc", "1");
    %extend{
        void ${function_name}FromString(std::string src) {
            std::stringstream s(src);
            self->${function_name}(s);
        }
    };
    """
    def process(self, decl):
        self.function_name = decl.alias

class TopoShapePickleTemplate(ClassExtensionBaseTemplate):
    '''
    %extend TopoDS_Shape {
    %pythoncode {
        def __getstate__(self):
            from BRepTools import BRepTools_ShapeSet
            ss = BRepTools_ShapeSet()
            ss.Add(self)
            str_shape = ss.WriteToString()
            return str_shape

        def __setstate__(self, state):
            from BRepTools import BRepTools_ShapeSet
            ss = BRepTools_ShapeSet()
            ss.ReadFromString(state)
            the_shape = ss.Shape(ss.NbShapes())
            self.this = the_shape.this
        }
    };
    '''

class SMDSMeshIterator(ClassExtensionBaseTemplate):
    '''
    %extend SMDS_Mesh {
    const SMDS_MeshNode * nodeValue(int index) {
        int i;
        SMDS_NodeIteratorPtr iterator=$self->nodesIterator();
        for (i=0; i<=index-1; i++) {
            iterator->next();}
        return iterator->next();
    }
    };
    # Edge iterator
    %extend SMDS_Mesh {
        const SMDS_MeshEdge * edgeValue(int index) {
            int i;
            SMDS_EdgeIteratorPtr iterator=$self->edgesIterator();
            for (i=0; i<=index-1; i++) {
                iterator->next();}
            return iterator->next();
        }
    };
    # Face iterator
    %extend SMDS_Mesh {
        const SMDS_MeshFace * faceValue(int index) {
            int i;
            SMDS_FaceIteratorPtr iterator=$self->facesIterator();
            for (i=0; i<=index-1; i++) {
                iterator->next();}
            return iterator->next();
        }
    };
    '''
    
class StandardTypeReturnByRef(FunctionTemplate):
    
    '''
    %feature("autodoc","1");
    %extend {
        ${return_type} Get${function_name}(${arguments}){ 
           return ($return_type) $self->${function_name}($arg_names); 
        }
    };
    %feature("autodoc","1");
    %extend {
        void Set${function_name}(${return_type} value${comma}${arguments}){ 
           $self->${function_name}($arg_names) = value; 
        }
    };
    '''
#if (return_type in ['Standard_Integer &','Standard_Real &','Standard_Boolean &']) and not ('operator' in function_name):    
    def process(self, decl):
        FunctionTemplate.process(self, decl)
        self.arg_names = ", ".join(decl.args().name)
        self.comma = ' '
        if len(decl.args()) > 0:
            self.comma = ', '
            
        self.return_type = self.return_type.replace("&", "")


class ProtectedConstructorTemplate(ClassExtensionBaseTemplate): 
    '''
    %extend ${class_name} {
        ${class_name} () {}  
    };
    '''

