##Copyright 2009 Thomas Paviot
##
##thomas.paviot@free.fr.fr
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
import sys, os, os.path
import environment

#
# List of modules to export
#
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
           ##('ChFiKPart',[],[]),#DON'T WORK
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
            ('AppCont',[],[]), #LINUX TEST
            ('AppDef',['TCollection'],[],{'AppDef_TheResol':['Error'],\
                                          'AppDef_ResConstraintOfTheGradient':['Error'],\
                                          'AppDef_ResConstraintOfMyGradientOfCompute':['Error'],\
                                          'AppDef_ResConstraintOfMyGradientbisOfBSplineCompute':['Error'],\
                                          'AppDef_MultiLine':['SetParameter']}), #LINUX TEST
            ('CDM',[],['CDM_Document']),#LINUX TEST
            ('CDF',['TCollection'],[]), #LINUX TEST
            ('TDocStd',[],[]), #LINUX TEST
            ('AppStd',['TCollection','CDM','CDF','TDF'],[]), #LINUX TEST
            ('AppStdL',['TCollection','CDM','CDF','TDF'],[]), #LINUX TEST
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
           ('IntCurve',[],[]), #LINUX TEST
           ('IntCurvesFace',[],[]), #LINUX TEST
           ('IntCurveSurface',[],['IntCurveSurface_ThePolyhedronOfHInter']),
           ('IntSurf',[],[]),
           ('IntImp',[],[]),
           ('IntWalk',[],[]),
           ##('IntPatch',[],[]),DON'T WORK
           ('IntPolyh',[],['IntPolyh_MaillageAffinage','IntPolyh_Triangle']),
           ('IntPoly',[],[]),
           ('IntAna',[],[]),
           ('IntAna2d',[],[]),
           ('Intrv',[],[]),
           ('IntStart',[],[]), 
           ('IntTools',['math'],[],{'IntTools_PntOnFace':['IsValid']}),
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
           ('AdvApprox',[],[]), #LINUX TEST
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
           ('BRepAdaptor',['math'],[]),
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
           ('BRepLProp',[],[]),
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
           ('BRepToIGESBRep',[],[]),#LINUX TEST
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
            ('HLRTopoBRep',[],[])                                                               ,
            ('BRepFeat',[],[],{'BRepFeat':['IsInOut'],\
                               'BRepFeat_MakeLinearForm':['TransformShapeFU']}), #LINUX TEST
            ('BRepIntCurveSurface',[],[]),
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
            ('AIS2D',[],[]),
#############################
#    Print stuff         ######
#############################
            ('PS',['Aspect','TCollection','MFT','OSD'],[]),
            ('PlotMgt',['OSD'],[],{'PlotMgt_Plotter':['SetPaperFormat']}),
            ('PS_Driver',['OSD','Handle_TCollection'],[]),
###########################
####### Misc ##############
###########################
            ('GraphDS',[],[]),#LINUX TEST,
            ('GraphTools',[],[]),
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
               ##('IGESDraw',[],[]), DON'T WORK
               ('IGESFile',[],[]),
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

def PythonOCCStats():
    """
    This function takes all *.hxx headers and returns a list of available packages:
    ['gp','Standard','Geom', etc.]. OpenCascade 6.3.0 is composed of 416 such packages.
    
    """
    # First constructs a list of all OpenCascade packages
    available_occ_packages = []
    headers = glob.glob(os.path.join(environment.OCC_INC,'*.hxx'))
    for header in headers:
        package_name = os.path.basename(header).split("_")[0]
        if (not package_name in available_occ_packages)\
         and (package_name!='Handle')\
         and ('.hxx' not in package_name)\
         and ('WOK' not in package_name):
            available_occ_packages.append(package_name)
    # Then a list of wrapped packages
    wrapped_packages = []
    for module in MODULES:
        wrapped_packages.append(module[0])
    # Outputs a file [X] gp
    f = open('pythonOCCstats.txt', 'w')
    f.write('pythonOCC %s stats.\n'%environment.VERSION)
    f.write('Number of OpenCascade packages (without WOK): %i\n'%len(available_occ_packages))
    f.write('Number of pythonOCC modules: %i\n'%len(wrapped_packages))
    f.write('Percentage of pythonOCC/OCC coverage: %.2f\n'%(float(len(wrapped_packages))*100./len(available_occ_packages)))
    for elem in available_occ_packages:
        f.write('[')
        if elem in wrapped_packages:
            f.write('X')
        else:
            f.write(' ')
        f.write('] %s\n'%elem)
    f.close()

if __name__=='__main__':
    PythonOCCStats()
