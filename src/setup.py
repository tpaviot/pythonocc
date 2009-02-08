#!/usr/bin/env python

##Copyright 2008 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCasacde library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.

import glob
import os,os.path
import sys
import shutil
import time

init_time = time.time()
print "Building pythonOCC"
# Check whether generate swig .i files
if '-generate_swig' in sys.argv:
    GENERATE_SWIG = True
    sys.argv.remove('-generate_swig')
else:
    GENERATE_SWIG = False
# Check whether generate docstrings
if ('-with_doc' in sys.argv) and GENERATE_SWIG:
    GENERATE_DOC = True
    sys.argv.remove('-with_doc')
    r = raw_input("""IMPORTANT: the generate_doc argument extracts documentation strings from OCC header files.
    You should not redistribute this package since it could break the OpenCascade and CeCILL licenses.
    Enter 'Y' or 'y' if you accept this disclaimer and want to continue, 'n' otherwise.""")
    if (r!='Y' and r!='y'):
        print "on y est"
        sys.exit(0)
else:
    GENERATE_DOC = False
if ('-help' in sys.argv) or ('-h' in sys.argv):
    help_str="""pythonOCC builder system - (c) Thomas Paviot, 2008-2009.
usage: python setup.py build [options]
With [options]:
    -generate_swig: process swig files generation (if .i files already exist, you should skip this option)
    -modular: build modular
    -monolithic: build monolithic
    -with_doc: add docstrings to pythonOCC classes
    -ccompiler: compiler can be either gcc, mingw32 or msvc
    """
    print help_str
    sys.exit(0)

try:
    import psyco
    psyco.full()
except:
    print "psyco not found. This module can speed up pythonOCC compilation time by about 10%."
import distutils
from distutils.core import setup, Extension
from distutils import sysconfig
import environment
from environment import OCC_INC,OCC_LIB, VERSION,\
ECA, ELA, PYGCCXML_DEFINES, SWIG_OPTS, DEFINE_MACROS, SWIG_FILES_PATH_MODULAR
#
# Prompt
#
import SWIG_generator
if GENERATE_SWIG and not SWIG_generator.HAVE_PYGCCXML:
    print "pygccxml/py++ 1.0 have to be installed. Please check http://www.language-binding.net/pyplusplus/pyplusplus.html"
    sys.exit(0)
if GENERATE_SWIG:#a small things to do before building
    #
    # Under WNT, modify Standard_Real.hxx so that it can be parsed by GCCXML without issue
    #
    if sys.platform == 'win32':
        standard_real_header = os.path.join(OCC_INC,"Standard_Real.hxx")
        if not os.path.isfile(standard_real_header):
            print "%s not found."%standard_file_header
            sys.exit(0)
        else:
            fp = open(standard_real_header,"r")
            file_content = fp.read()
            fp.close()
            if not '__SWIG_GENERATION__' in file_content:#need rewriting
                key = raw_input("Original Standard_Real.hxx header file needs to be modified. Original file will be available with the name Standard_Real_Original.hxx.\nEnter 'y' or 'Y' if you whish to continue.'n' otherwise:")# first mode Standard_Real.hxx to Standard_Real_Original.hxx
                if key.lower()=='y':
                    shutil.copy(standard_real_header, os.path.join(OCC_INC,"Standard_Real_Original.hxx"))
                    #replacing string
                    file_content = file_content.replace("#if defined(WNT)","#if defined(WNT) && !defined(__SWIG_GENERATION__)")
                    fp = open(standard_real_header,"w")
                    fp.write(file_content)
                    fp.close()
                else:
                    sys.exit(0)
            else:
                print "Found modified Standard_Real.hxx header file."
    #
    # Create paths
    #
    if not os.path.isdir(SWIG_FILES_PATH_MODULAR):
        os.mkdir(SWIG_FILES_PATH_MODULAR)
#
# OCC header file TopOpeBRepDS_tools.hxx maybe missing, causing a gccxml error.
#
if not os.path.isfile(os.path.join(OCC_INC,'TopOpeBRepDS_tools.hxx')):
    try:
        f = open(os.path.join(OCC_INC,'TopOpeBRepDS_tools.hxx'),'w')
        f.close()
        print "TopOpeBRepDS_tools.hxx created in %s"%OCC_INC
    except:
        print "You don't have write acces to %s directory. Please use 'sudo python setup.py build'."%OCC_INC
        sys.exit(0)
#
# List of modules to export
#
PACKAGE = 'OCC'
# (string module_name, list additional headers, list classes_to_exclude, dict member_functions to exclude)
MODULES = [
           ('Standard',[],['Standard_SStream'],{'Handle_Standard_Persistent':['ShallowDump']}),
           ('MMgt',[],[]),
           ('Precision',[],[]),
           ('Quantity',[],[]),
           ('TCollection',[],[]),
           ('TColgp',[],[]),
           ('TColStd',[],[]),
           ('TColGeom',[],[]),
           ('TColGeom2d',[],[]),
           ('TColQuantity',[],[]),
           ('TShort',[],[]),
           ('gce',[],[]),
           ('CPnts',[],[]),
           ('GCE2d',[],[]),
           ('Poly',[],['Poly_CoherentTriPtr','Poly_CoherentTriangulation']),
           ('GC',[],[]),
           ('GProp',[],[]),
           ('gp',[],[]),
           ('GCPnts',[],[]),
           ('TopoDS',[],[]),
           ('TopoDSToStep',[],[]),
           ('TopLoc',[],['TopLoc_SListNodeOfSListOfItemLocation']),
           ('TopExp',[],[]),
           ('TopTools',[],[]),
           ('MoniTool',[],[],{'MoniTool_CaseData':['Msg','Text'],'MoniTool_AttrList':['GetStringAttribute']}),
           ('Interface',[],[],{'Interface_Graph':['Status'],'Interface_CheckIterator':['Status'],'Interface_Check':['Status']}),
           ('IFSelect',['MoniTool'],[],{"IFSelect_ContextModif":["Search"],"IFSelect_EditForm":["NbTouched"],"IFSelect_IntParam":["StaticName"]}),
           ('Transfer',['MoniTool','IFSelect'],[],{'Transfer_Finder':['GetStringAttribute']}),
           ('XSAlgo',['Standard'],['XSAlgo_AlgoContainer']),
           ('XSControl',['TopoDS','TCollection','Interface','MoniTool','IFSelect'],['XSControl_Vars']),
############################################
############# Stl ##########################
############################################
           ('RWStl',[],[]),
           ('StlAPI',[],[]),
           ('StlMesh',[],[]),
######################################
############ VRML ####################
######################################
           ('Vrml',[],[]),
           ('VrmlAPI',[],[]),
           ('VrmlConverter',['TCollection'],[]),
           ('TopAbs',[],[]),
           ('Adaptor2d',[],[]),
           ('Adaptor3d',['Handle_TCollection'],[]),
           ('ChFi2d',[],[]),
           ('ChFi3d',['Adaptor3d'],[]),
           ('ChFiDS',['math'],[]),
           ('Contap',[],['Contap_TheIWalkingOfContour']),
           ('HLRAlgo',['gp_Lin'],[]),  
#############################################
########### Topological naming###############
############################################# 
           ('TNaming',['Standard_GUID'],['TNaming_Identifier']),
           ('TFunction',[],[]),
           ('TDF',[],['TDF_LabelNode']),
#############################################
########### Gcc #############################
############################################# 
           ('GccAna',[],[]),
           ('GccEnt',[],[]),
           ('GccInt',['Handle_Standard','Quantity'],[]),
           ('GccIter',[],[]),
           ('Convert',[],[]),
           ('Blend',[],[]),
           ('BlendFunc',[],[],{"BlendFunc":["Knots","Mults"]}),
           ('BooleanOperations',[],[]),
           ('BOP',['BooleanOperations'],[]), 
           ('BOPTools',[],[]),
           ('BOPTColStd',[],[]),
           ('Extrema',['Adaptor2d'],[]),
##################################
######## Approx ####################
##################################
            ('AppParCurves',[],[]),
            ('Approx',[],[]),
            ('ApproxInt',[],[]),
            ('AppBlend',[],[]),
###################################
######### Mesh ####################
###################################
           ('MeshAlgo',[],['MeshAlgo_Edge','MeshAlgo_Vertex','MeshAlgo_Triangle','MeshAlgo_CircleInspector']),
           ('MeshDS',[],[]), 
           ('MeshShape',[],['MeshShape_Edge','MeshShape_Vertex','MeshShape_Triangle']),
           #('MeshVS',[],[]),
###########################
######## Int #############
###########################
           ('Intf',[],[]),
           ('IntRes2d',[],[]),
           ('IntCurveSurface',[],['IntCurveSurface_ThePolyhedronOfHInter']),
           ('IntSurf',[],[]),
           ('IntImp',[],[]),
####################################
########### LProp ##################
####################################
           ('LProp',['Adaptor2d','Adaptor3d'],[]),
           ('LProp3d',[],[]),
###################################
########## Hatch ##################
###################################
           ('Hatch',[],[]),
           ('HatchGen',[],[]),
######## GEOM #############
###########################
           ('Geom2dAdaptor',[],[]),
           ('Geom2dAPI',[],[],{"Geom2dAPI_Interpolate":["ClearTangents"]}),
           ('Geom2dConvert',[],[]),
           ('Geom2dGcc',['gp'],['Geom2dGcc_FuncTCuCuCuOfMyC2d3Tan'],{'Geom2dGcc_Lin2dTanObl':['IsParallel2']}),
           ('Geom2dHatch',['Contap','math'],[],{'Geom2dHatch_Hatcher':['IsDone']}),
           ('Geom2dInt',['Adaptor2d'],[],{'Geom2dInt_Geom2dCurveTool':['IsComposite'],
                               'Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter':['Locate']}),
           ('Geom2dLProp',[],[]),
           ('Geom2dToIGES',[],[]),
           ('Geom2d',['gp'],[]),
           ('GeomAbs',[],[]),
           ('GeomAdaptor',['math','Handle_TCollection'],[]),
           ('GeomAPI',[],[],{"GeomAPI_Interpolate":["ClearTangents"]}),
           ('GeomConvert',[],[]),
           ('GeomFill',['gp','Geom2dHatch','AppParCurves'],['GeomFill_NSections','GeomFill_SweepSectionGenerator','GeomFill_FunctionGuide']),
           ('GeomInt',['gp','Adaptor3d'],['GeomInt_WLApprox',
                                'GeomInt_IntSS',
                                'GeomInt_ResConstraintOfMyGradientOfTheComputeLineBezierOfWLApprox',
                                'GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox'
                                ]),
           ('GeomLib',[],[]),
           ('GeomLProp',[],[]),
           ('AdvApp2Var',['gp'],['AdvApp2Var_Iso','AdvApp2Var_SysBase','AdvApp2Var_ApproxF2var','AdvApp2Var_MathBase']),
           ('Geom',['BRepFill','gp'],[]),
           ('GeomPlate',['gp'],[]),
           ('GeomProjLib',[],[]),
           ('GeomToIGES',[],[]),
           ('GeomTools',['Handle_TCollection'],[]),
           ('GeomToStep',[],[]),
           ('GProp',[],[]),
########################
##### IGES #############
########################
           ('IGESToBRep',['IGESData','Interface','MoniTool','TCollection'],['IGESToBRep_AlgoContainer'],{'IGESToBRep_TopoSurface':['TransferPlaneSurface']}),
           ('IGESControl',['IFSelect','IGESData','Interface','MoniTool','TCollection'],[]),
########################
##### STEP #############
########################           
           ('STEPControl',['IFSelect','TopoDS_Shape','Interface','MoniTool','TCollection'],[]),
#########################
###### BRep #############
#########################
           ('BRep',[],[]),    
           ('BRepPrimAPI',[],[]),    
           ('BRepMesh',[],['BRepMesh_DiscretFactory'],{'BRepMesh_SurfaceGrid':['SetTrianglesOnPlane']}),
           ('BRepBlend',['math','Contap','Convert','AppParCurves'],[]),
           ('BRepBuilderAPI',['TopoDS'],[]),
           ('BRepCheck',[],[]),
           ('BRepClass',[],[],{'BRepClass_FaceClassifier':'BRepClass_FaceClassifier'}),
           ('BRepClass3d',['TopoDS_Shell','math'],[]),
           ('BRepExtrema',[],[]),
           ('BRepFill',['Geom','AdvApp2Var','Convert','Approx','Adaptor3d','Handle_math'],[]),
           ('BRepGProp',['GProp_PrincipalProps'],['BRepGProp_VinertGK']),
           ('BRepAlgo',[],[],{"BRepAlgo_DSAccess":["IsDeleted"]}),
           ('BRepAlgoAPI',[],[]),
           ('BRepLib',[],[]),
           ('MAT',[],[]),
           ('BRepMAT2d',['gp','Bisector'],[]),
           ('Draft',['TopTools'],[]),
           ('BRepOffsetAPI',['TopTools','BRepTools'],['BRepOffsetAPI_FindContigousEdges']),
           ('BRepOffset',[],[],{"BRepOffset_MakeOffset":["GetAnalyse"]}),
           ('Primitives',[],[]),
           ('BRepPrim',['gp'],[]),
           ('BRepProj',[],[]),
           ('BRepSweep',[],[]),
           ('BRepToIGES',['gp'],[]),
           ('BRepTools',['TopoDS'],[]),
           ('BRepTopAdaptor',['math','ChFiDS'],[]),
           ('BRepFilletAPI',[],[]),
           ('BRepBndLib',[],[]),
           ('BRepApprox',['Handle_TCollection'],[],{'BRepApprox_Approx':['Perform'],
                              'BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox':['Error'],
                              'BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox':['Error']}),
           ('HLRBRep',[],['HLRBRep_ThePolyhedronOfInterCSurf'],{\
                                                                 'HLRBRep_Surface':['UIntervalContinuity','VIntervalContinuity'],\
                                                                 'HLRBRep_BSurfaceTool':['Axis'],
                                                                 'HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter':['Locate']}),
##################################
######## TopOpe ##################
##################################
           ('TopOpeBRepDS',[],['TopOpeBRepDS_DSS','TopOpeBRepDS_Dumper','TopOpeBRepDS_HDataStructure']),
           ('TopOpeBRep',['TopoDS','Geom2d'],['TopOpeBRep_GeomTools','TopOpeBRep_LineInter'],{'TopOpeBRep_FacesFiller':['EqualpP'],\
                                'TopOpeBRep_EdgesIntersector':['Tolerance2'],\
                                'TopOpeBRep_LineIntersector':['LineA'],
                                'TopOpeBRep_GeomTool':['MakePrivateCurves']}),
           ('TopOpeBRepTool',[],['TopOpeBRepTool_STATE','TopOpeBRepTool_mkTondgE']),
#################################
####### Math stuff ##############
#################################
           ('math',['Handle_TCollection'],['math_NewtonFunctionSetRoot','math_NewtonMinimum']),
           ('Law',[],[],{'Law_Interpolate':['ClearTangents']}),
##################################
######## Fillet ##################
##################################
           ('FilletSurf',['TopoDS'],[]),
           ('Bnd',['math'],[]),
           ('BndLib',[],[]), 
           ('MFT',['Aspect'],[]),
           ('OSD',['Quantity_Date'],['OSD_Semaphore','OSD_MailBox','OSD_Process'],{'OSD_Path':['LocateExecFile'],'OSD':['ControlBreak']}),
##################################
######## Shape ##################
##################################
            ('Message',[],[]),
            ('ShapeAlgo',['TopoDS'],['ShapeAlgo']),
            ('ShapeBuild',['TopoDS','TopTools','TCollection','Geom','Message','Handle_Message_Algorithm'],[]),
            ('ShapeConstruct',['Geom','TCollection','Message','Handle_Message_Algorithm'],[]),
            ('ShapeCustom',['Handle_TCollection','TopoDS','TopTools'],[],{'ShapeCustom':['BSplineRestriction',
                                                 'ConvertToRevolution',
                                                 'SweptToElementary',
                                                 'ConvertToBSpline']}),
            ('ShapeExtend',['BRepFill','gp','TopoDS'],[]),
            ('ShapeFix',['TopoDS_Solid','Geom','TCollection','Message','Handle_Message_Algorithm'],['ShapeFix_WireSegment']),
            ('ShapeProcess',['Geom','TCollection','Message','Handle_Message_Algorithm'],[]),
            ('ShapeUpgrade',['Geom','TCollection','Message','Handle_Message_Algorithm'],[]),
            ('ShapeAnalysis',['Geom','TCollection','Message','Handle_Message_Algorithm'],['Selector','ShapeAnalysis_BoxBndTreeSelector']),
################################
############ Images ############
################################
            #('Image',[],[]), #bug on Windows
            #('AlienImage',['Quantity','TCollection'],[]),
            ('Units',[],['Units_Quantity','Units_Dimensions']),
############################
## VISUALIZATION STUFF ######
#############################
            ('Aspect',[],[]),
            ('SelectBasics',[],[]),
            ('V2d',['Handle_TCollection'],[]),
            ('Viewer',[],[]),
            ('V3d',['Handle_TCollection','Aspect','Quantity'],[]),
            ('Dynamic',['TCollection'],[]),
            ('Materials',['TCollection_AsciiString'],[]),
#############################
#    Print stuff         ######
#############################
            ('PS',['Aspect','TCollection','MFT','OSD'],[]),
            ('PlotMgt',['OSD'],[],{'PlotMgt_Plotter':['SetPaperFormat']}),
            ('PS_Driver',['OSD','Handle_TCollection'],[]),
           ]
#####################################
# Visualization part is OS specific #
#####################################
if sys.platform=='win32':
    MODULES.extend([
             ('Graphic2d',[],[],{'Graphic2d_TransientManager':['Transform']}),
             ('Graphic3d',['gp'],['Graphic3d_GraphicDevice','Handle_Graphic3d_GraphicDevice'],\
             {'Graphic3d_Group':['SetGroupPrimitivesAspect'],'Handle_Graphic3d_GraphicDevice':['DownCast']}),
             ('Prs3d',['Graphic3d','Bnd_Box','Aspect','Handle_TCollection'],[]),
             ('PrsMgr',['Graphic3d','gp','Aspect','Handle_TCollection'],[]),
             ('SelectMgr',['TCollection','Prs3d','Graphic3d','Aspect','Quantity'],[]),
             ('DsgPrs',[],[],{'DsgPrs_RadiusPresentation':['Add']}),
             ('AIS',['Graphic3d','TopoDS_Vertex','Aspect','SelectBasics','PrsMgr',],[],{"AIS_LocalContext":["Reactivate"]}),
             ('Voxel',['Quantity','gp','Graphic3d','Aspect',\
                      'Handle_TCollection','Prs3d','PrsMgr','SelectMgr','SelectBasics'],[]),
             ])
    MODULES.extend([
                ###########################################
                ############## IGES #######################
                ###########################################
               ('IGESBasic',['MoniTool','Interface','IGESData','TCollection'],['IGESBasic_Protocol']),
               ('IGESDefs',['Interface','MoniTool','IGESData','TCollection'],['IGESDefs_Protocol']),
               ('IGESAppli',['IGESData','Interface','MoniTool','TCollection'],['IGESAppli_Protocol']),
               ('IGESDimen',['IGESData','Interface','MoniTool','TCollection'],['IGESDimen_Protocol']),
               ('IGESGeom',['IGESData','Interface','MoniTool','TCollection'],['IGESGeom_Protocol']),
               ('IGESGraph',['IGESData','Interface','MoniTool','TCollection'],['IGESGraph_Protocol']),
               ('IGESSelect',['IGESData','Interface','MoniTool','TCollection','IFSelect'],['IGESSelect_Protocol'],{'IGESSelect_SelectBasicGeom':['CurvesOnly']}),
               ('IGESSolid',['IGESData','Interface','MoniTool','TCollection'],['IGESSolid_Protocol']),
               ('IGESData',['IGESData','Interface','MoniTool','TCollection'],['IGESData_Protocol']),
               ('IGESCAFControl',['IGESData','Interface','MoniTool','TCollection'],[]),
               ('XDEDRAW',[],[]),
               ########################################
               ############## STEP ####################
               ########################################
               ('StepData',['Interface','MoniTool','TCollection','IGESGraph','IGESGeom'],['StepData_Protocol'],{'StepData_FreeFormEntity':['StepData_FreeFormEntity'],'StepData_UndefinedEntity':['Super']}),#,'StepData_UndefinedEntity']),
               ('StepBasic',['Interface','MoniTool','TCollection'],[]),
               ('StepElement',['StepBasic','Interface','MoniTool','TCollection'],[]), 
               ('STEPCAFControl',['IFSelect','XSControl','Transfer','IGESData','Interface','MoniTool','TCollection'],[]),
               ('StepRepr',['Interface','MoniTool'],[]),
               ('StepShape',['MoniTool','Interface','StepBasic','TCollection'],[]),
               ('StepGeom',['StepShape','StepBasic','Interface','MoniTool','TCollection'],[]),
               ('StepAP203',['MoniTool','Interface','StepBasic','TCollection'],[]),
               ('StepVisual',['MoniTool','Interface','StepBasic','TCollection'],[]),
               ('StepAP214',['StepGeom','StepRepr','MoniTool','Interface','StepBasic','TCollection'],['StepAP214_Protocol']),
               ('TopOpeBRepBuild',['TopOpeBRepDS'],[],{'TopOpeBRepBuild_Builder1':['GFillSplitsPVS']}),
               ('LocOpe',['TopOpeBRepDS','TopOpeBRepTool'],['LocOpe_Revol','LocOpe_RevolutionForm']),
               ])
else:
    MODULES.extend([
                    ('Xw',['OSD','TCollection'],[]),
                    ('Graphic2d',[],[],{'Graphic2d_TransientManager':['Transform']}),
                    ('Graphic3d',['OSD','MFT','gp'],[],{'Graphic3d_Group':['SetGroupPrimitivesAspect']}),
                    ('Prs3d',['OSD','MFT','Xw','Graphic3d','Bnd_Box','Aspect','Handle_TCollection'],[]),
                    ('PrsMgr',['OSD','MFT','Xw','Graphic3d','gp','Aspect','Handle_TCollection'],[]),
                    ('SelectMgr',['OSD','MFT','Xw','TCollection','Prs3d','Graphic3d','Aspect','Quantity'],[]),
                    ('DsgPrs',[],[],{'DsgPrs_RadiusPresentation':['Add']}),
                    ('AIS',['OSD','MFT','Xw','Graphic3d','TopoDS_Vertex','Aspect','SelectBasics','PrsMgr',],[],{"AIS_LocalContext":["Reactivate"]}),
                    ('Voxel',['OSD','MFT','Xw','Quantity','gp','Graphic3d','Aspect',\
                              'Handle_TCollection','Prs3d','PrsMgr','SelectMgr','SelectBasics'],[]),
                    ])

def Create__init__():
    """
    Create the __init__.py file for OCC package.
    just create domething like: __all__ = ['gp,'gce']
    """
    print "Creating __init__.py script."
    init_directory = os.path.join(os.getcwd(),'OCC')
    if not os.path.isdir(init_directory):
        os.mkdir(init_directory)
    init_fp = open(os.path.join(init_directory,'__init__.py'),'w')
    #
    # First set important OpenCascade env var
    # These settings are taken from OCC message forum:
    # http://www.opencascade.org/org/forum/thread_12800/
    # I did a test case in my OCAF application, and i could not see any problem, even with your first case.My environment variables concerning the memory manager are:
    #
    #MMGT_OPT=1 //use the optimised memory manager
    #MMGT_CLEAR=1 //this is important , at least in my case.Many problems could rise if i did not set this variable.Sets all bits of new allocated memory to NULL.
    #MMGT_REENTRANT=0 //My application is not multi threaded , so i do not need this.
    init_fp.write('import os\n')
    init_fp.write('#\n#Define OpenCascade behaviour settings\n#\n')
    init_fp.write("os.environ['MMGT_CLEAR']='1'\n")
    init_fp.write("os.environ['MMGT_OPT']='1'\n")
    init_fp.write("os.environ['MMGT_REENTRANT']='0'\n")
    init_fp.write("os.environ['CSF_EXCEPTION_PROMPT']='1'\n")
    #
    # Include Version number
    #
    init_fp.write("VERSION='%s'\n"%VERSION)
    #
    #
    #
    init_fp.write('__all__=[')
    for module_tuple in MODULES:
        module_name = module_tuple[0]
        init_fp.write("'%s',\n"%module_name)
    init_fp.write("'Visualization',\n'Misc'\n")
    init_fp.write(']\n')
    init_fp.close()
    print "__init__.py script created."      
#
# Building libraries list
#
if sys.platform == 'win32': # names are TKFillet.lib
    LIBFILES = glob.glob(os.path.join(OCC_LIB,'*.lib'))
    LIBS = []
    for LIBFILE in LIBFILES:
        libname = os.path.basename(LIBFILE).split(".")[0]
        LIBS.append(libname)
else: #under Linux or MacOSX, names are libTKFillet*
    LIBFILES = glob.glob(os.path.join(OCC_LIB,'lib*TK*'))
    LIBS = []
    for LIBFILE in LIBFILES:
        libname = os.path.basename(LIBFILE).split(".")[0]
        if not (libname in LIBS):
            LIBS.append(libname[3:])                        
#
# Setup
#
Create__init__()
extension = []
for module in MODULES:
    if GENERATE_SWIG:
        builder = SWIG_generator.ModularBuilder(module, GENERATE_DOC)
    module_extension = Extension("OCC._%s"%module[0],
                    sources = [os.path.join(os.getcwd(),environment.SWIG_FILES_PATH_MODULAR,"%s.i"%module[0])],
                    include_dirs=[OCC_INC],
                    library_dirs=[OCC_LIB],
                    define_macros= DEFINE_MACROS,
                    swig_opts = SWIG_OPTS,
                    libraries = LIBS,
                    extra_compile_args = ECA,
                    extra_link_args = ELA,
                    )
    extension.append(module_extension)
# Add Visualization
extension.append(Extension("OCC._Visualization",
                    sources = [os.path.join(os.getcwd(),'Visualization','Visualization_modular.i'),
                               os.path.join(os.getcwd(),'Visualization','Display3d.cpp'),
                               ],
                    include_dirs=[OCC_INC,os.path.join(os.getcwd(),'Visualization')],
                    library_dirs=[OCC_LIB],
                    define_macros= DEFINE_MACROS,
                    swig_opts = SWIG_OPTS,
                    libraries = LIBS,
                    extra_compile_args = ECA,
                    extra_link_args = ELA,
                    ))
# Add Misc
extension.append(Extension("OCC._Misc",
                    sources = [os.path.join(os.getcwd(),'Misc','Misc.i')],
                    include_dirs=[OCC_INC],
                    library_dirs=[OCC_LIB],
                    define_macros= DEFINE_MACROS,
                    swig_opts = SWIG_OPTS,
                    libraries = LIBS,
                    extra_compile_args = ECA,
                    extra_link_args = ELA,
                    ))
install_dir = os.path.join(sysconfig.get_python_lib(),'OCC')
data = (install_dir,\
        [os.path.join(os.getcwd(),'AUTHORS'),
         os.path.join(os.getcwd(),'Licence_CeCILL_V2-en.txt')])
    
KARGS = {"ext_modules":extension}
#
# SETUP
#
setup(name = "pythonOCC",
      license = "CeCILL",
      url = "http://www.pythonocc.org",
      author = "Thomas Paviot",
      author_email = "thomas.paviot@free.fr",
      description = "OpenCascade 6.3.0 Python bindings",
      version=VERSION,
      long_description = """PythonOCC is a Python wrapper module for the
OpenCascade library. It contains python functions and classes
that will allow you to fully utilitize the OpenCascade library.
This version is built against OpenCascade 6.3.0""",
      package_dir = {'OCC.Display':os.path.join(os.getcwd(),'Display'),
                     'OCC.Utils':os.path.join(os.getcwd(),'..','Utils')},
      packages = ['OCC','OCC.Display','OCC.Utils'],
      data_files = [data],
      **KARGS
      )
   
if GENERATE_SWIG:
    print "%i exported classes"%SWIG_generator.nb_exported_classes
final_time = time.time()
print final_time-init_time