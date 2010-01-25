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

import glob
import sys, os, os.path
import environment

#
# OpenCASCADE Toolkits: each ToolKit is a list of modules
#
TOOLKITS = {'TKernel':['Dico','FSD','MMgt','Message','NCollection','OSD','Plugin','Quantity'
                       'Resource','SortTools','Standard','StdFail','Storage','TColStd'
                       'TCollection','TShort','Units','UnitsAPI']}

# List of modules to export
#
# (string module_name, list additional headers, list classes_to_exclude, dict member_functions to exclude)

MODULES = [
           ('Standard',[],['Standard_SStream'],{'Handle_Standard_Persistent':['ShallowDump'],\
'Standard_Failure':['operator=']}),
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
           ('TopTrans',[],[]),
           ('MoniTool',[],[],{'MoniTool_CaseData':['Msg','Text'],'MoniTool_AttrList':['GetStringAttribute'],
                              'MoniTool_DataMapIteratorOfDataMapOfTimer':['Key'],
                              'MoniTool_DataMapNodeOfDataMapOfTimer':['Key']}),
           ('Interface',[],['Interface_STAT'],{'Interface_Graph':['Status'],'Interface_CheckIterator':['Status'],'Interface_Check':['Status']}),
           ('IFSelect',['MoniTool'],[],{"IFSelect_ContextModif":["Search"],"IFSelect_EditForm":["NbTouched"],"IFSelect_IntParam":["StaticName"]}),
           ('IFGraph',['TCollection','MoniTool'],[]),
           ('Transfer',['MoniTool','IFSelect'],[],{'Transfer_Finder':['GetStringAttribute']}),
           ('XSAlgo',['Standard'],['XSAlgo_AlgoContainer']),
           ('XSControl',['MoniTool','TCollection'],['XSControl_Vars']),
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
           #('VrmlData',[],[]), NEED NCOllection
           ('TopAbs',[],[]),
           ('TopBas',[],[]),
           ('TopClass',[],[]),
           ('TopCnx',[],[]),
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
           ('DBC',[],[]),
           ('PDF',[],[]),
           ('PStandard',[],[]),
           ('MNaming',['TCollection'],[]),
           ('PNaming',[],[]),
           ('TFunction',[],[]),
           ('PFunction',['DBC'],[]),
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
           #('Draw',[],[]), DON'T WORK
           #('DBRep',[],[]), NEED DRAW
           #('BOPTest',[],[]), NEED DBRep
           ('Extrema',['Adaptor2d'],[]),
##################################
######## Approx ####################
##################################
            ('AppParCurves',[],[]),
            ('Approx',[],[]),
            ('ApproxInt',[],[]),
            ('AppBlend',[],[]),
            ('AppCont',[],[]),
            ('AppDef',['TCollection'],[],{'AppDef_TheResol':['Error'],\
                                          'AppDef_ResConstraintOfTheGradient':['Error'],\
                                          'AppDef_ResConstraintOfMyGradientOfCompute':['Error'],\
                                          'AppDef_ResConstraintOfMyGradientbisOfBSplineCompute':['Error'],\
                                          'AppDef_MultiLine':['SetParameter']}), #LINUX TEST
            ('CDM',[],['CDM_Document']),
            ('CGM',['Standard','Quantity','TCollection','OSD','MFT','Aspect'],['CGM_Driver']),
            ('CDF',['TCollection'],[]),
            ('TDocStd',[],[]),
            ('AppStd',['TCollection','CDM','CDF','TDF'],[]),
            ('AppStdL',['TCollection','CDM','CDF','TDF'],[]),
###################################
######### Mesh ####################
###################################
           ('MeshAlgo',[],['MeshAlgo_Edge','MeshAlgo_Vertex','MeshAlgo_Triangle','MeshAlgo_CircleInspector']),
           ('MeshDS',[],[]), 
           ('MeshShape',[],['MeshShape_Edge','MeshShape_Vertex','MeshShape_Triangle']),
###################################
######### FemTool ####################
           ('FEmTool',[],[]),
###################################
###########################
######## Int #############
###########################
           ('Intf',[],[]),
           ('IntRes2d',[],[]),
           ('IntCurve',[],[]),
           ('IntCurvesFace',[],[]),
           ('IntCurveSurface',[],['IntCurveSurface_ThePolyhedronOfHInter']),
           ('IntSurf',[],[]),
           ('IntImp',[],[]),
           ('IntWalk',[],[]),
           ('IntImpParGen',[],['IntImpParGen_ImpTool']),
           ##('IntPatch',[],[]),DON'T WORK WORK ON LINUX
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
           ('AdvApprox',[],[]),
           ('Geom',['BRepFill','gp'],[]),
           ('GeomPlate',[],[]),
           ('GeomProjLib',[],[]),
           ('GeomToIGES',[],[]),
           ('GeomTools',['Handle_TCollection'],[]),
           ('GeomToStep',[],[]),
           ('GProp',[],[]),
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
           ('MAT2d',[],['MAT2d_SketchExplorer','MAT2d_CutCurve']),
           ('BRepMAT2d',['gp','Bisector'],[]),
           ('Draft',['TopTools'],[]),
           ('BRepOffsetAPI',['TopTools','BRepTools'],['BRepOffsetAPI_FindContigousEdges']),
           ('BRepOffset',[],[],{"BRepOffset_MakeOffset":["GetAnalyse"]}),
           ('Primitives',[],[]),
           ('BRepPrim',['gp'],[]),
           ('BRepProj',[],[]),
           ('BRepSweep',[],[]),
           ('BRepToIGES',['gp'],[]),
           ('BRepToIGESBRep',[],[]),
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
            ('BRepIntCurveSurface',[],[]),
            
            ('MgtTopoDS',['Standard'],[]),
            ('MgtBRep',['Standard'],[]),
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
           ('MDF',[],[]),
           ('MFunction',['TCollection'],[]),
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
            ('ShapeProcessAPI',['Geom','TCollection','Message','Handle_Message_Algorithm'],[]),            
            ('ShapeUpgrade',['Geom','TCollection','Message','Handle_Message_Algorithm'],[]),
            ('ShapeAnalysis',['Geom','TCollection','Message','Handle_Message_Algorithm'],['Selector','ShapeAnalysis_BoxBndTreeSelector']),
            #('ShapeSchema',['Geom','TCollection','Message','Handle_Message_Algorithm'],[]), Many linking errors
################################
############ Images ############
################################
            #('Image',[],[]), #bug on Windows
            #('AlienImage',['Quantity','TCollection'],[]),
            ('Units',[],['Units_Quantity','Units_Dimensions']),
            ('UnitsAPI',[],[]),
################################
############ Bin ############
################################
            ('BinLDrivers',['TCollection','Storage'],[]),
            ('BinDrivers',['Standard','TCollection','Storage','PCDM'],[]),
            ('BinObjMgt',[],[]),
            ('BinMDF',[],[]),
            ('BinMDataStd',['TCollection'],[]),
            ('BinMDocStd',['TCollection'],[]),
            ('BinMFunction',['TCollection'],[]),
            ('BinMNaming',['TCollection'],[]),
            ('BinMPrsStd',['TCollection'],[]),
            ('BinTObjDrivers',['Standard','TCollection','Storage','PCDM'],[]),
            ('BinTools',[],[],{'BinTools_Curve2dSet':['Dump']}),
            ('BinXCAFDrivers',['Standard','TCollection','Storage','PCDM'],[]),
            ('BinMXCAFDoc',['TCollection'],[]),
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
            ('AIS2D',[],[],{'AIS2D_ProjShape':['Projector']}),
#############################
#    Print stuff         ######
#############################
            ('PS',['Aspect','TCollection','MFT','OSD'],[]),
            ('PlotMgt',['OSD'],[],{'PlotMgt_Plotter':['SetPaperFormat']}),
#############################
########   Xml         ######
#############################
            ('XmlDrivers',['Standard','PCDM','TCollection','Storage'],[]),
            ('XmlLDrivers',['Standard','PCDM','TCollection','Storage'],[]),
            ('XmlMDataStd',['TCollection'],[]),
            ('XmlMDF',[],[]),
            ('XmlMDocStd',['TCollection'],[]),
            ('XmlMFunction',['TCollection'],[]),
            ('XmlMNaming',['TCollection'],[]),
            ('XmlMPrsStd',['TCollection'],[]),
            ('XmlMXCAFDoc',['TCollection'],[]),
            ('XmlTObjDrivers',['TCollection','PCDM','Storage'],[]),
            ('XmlXCAFDrivers',['Standard','TCollection','PCDM','Storage'],[]),
###########################
####### Misc ##############
###########################
            ('GraphDS',[],[]),#LINUX TEST,
            ('GraphTools',[],[]),
            ('FairCurve',[],[]),
            #('FSD',[],[]), DONT WORK
            ('ExprIntrp',[],[]),
            ('Expr',[],['Expr_Sign']),
            ('GGraphic2d',['Quantity'],[]),
            ('LocalAnalysis',[],[]),
            ('LDOMParser',[],[],{'LDOMParser':['parse']}),
            ('Storage',[],['Storage_BucketIterator','Storage_BucketOfPersistent','Storage_Bucket']),
            ('PCDM',[],['PCDM_StorageDriver','PCDM_DOMHeaderParser'],{'PCDM':['StorageDriver']}),
            ('PCDMShape',[],[]),
            ('MDocStd',['Storage'],[]),
            ('TDataStd',[],[]),
            ('MDataStd',['TCollection','TDF'],[]),
            ('Bisector',['TCollection'],[]),
            ('BiTgte',['math'],[]),
            ('BSplCLib',[],[],{'BSplCLib':['DN']}),
            ('BSplSLib',[],[],{'BSplCLib':['DN']}),
            ('CSLib',[],[]),
            #('DBRep',[],[]), NEED Draw.I dont work
            # ('DDataStd',[],[]), idem
            # ('DDF',[],[]),idem
            # ('DDocStd',[],[]), Need DDF DON'T WORK
            ('Dico',[],[]),
            ('PMMgt',[],[]),
            ('ObjMgt',[],[]),
            #('NCollection',[],[]),# don't work
            ('PColStd',[],[]),
            ('PColgp',[],[]),
            ('PCollection',[],[]),
            ('PColPGeom2d',[],[]),
            ('PColPGeom',[],[]),
            ('PGeom',[],[]),
            ('PGeom2d',[],[]),
            ('Plate',[],[]),
            #('PLib',[],[]), don't work
            ('PShort',[],[]),
            ('Sweep',[],[]),
            ('ProjLib',[],[],{'ProjLib_ProjectOnSurface':['Load'],'ProjLib_ProjectedCurve':['Load']}),
            ('NLPlate',[],[]),
            ('Resource',[],[]),
            ('Select2D',['TCollection'],[]),
            ('Select3D',[],[],{'Select3D_SensitiveTriangulation':['DetectedTriangle']}),
            ('SortTools',[],[]),
            ('StdDrivers',['Standard','TCollection','PCDM','MDF','Storage'],[]),
            ('StdFail',[],[]),
            ('StdLDrivers',['Standard','TCollection','PCDM','MDF','Storage'],[]),
            #('StdLSchema',['TCollection'],[]), MANY LINKAGE ERRORS
            #('StdPrs',[],[]), MSVC Fail
            #('TObj',[],[]), DONT WORK NEED NCOLLECTION
            ('PTopoDS',[],['PTopoDS_TShape','PTopoDS_TShape1']),
            ('PBRep',['DBC','PMMgt','ObjMgt'],[]),
            ('PPoly',[],[]),
            ('PTopLoc',[],[]),
            ('PTColStd',[],[]),
            ('PPrsStd',['DBC'],[]),
            ('Plugin',[],[]),
            ('PXCAFDoc',['DBC'],[]),
            #('MS',[],[]), GCCXMLERROR
            ('XmlObjMgt',['TCollection'],[],{'XmlObjMgt':['GetInteger']}),
            ('TopOpeBRepBuild',['TopOpeBRepDS'],[],{'TopOpeBRepBuild_Builder1':['GFillSplitsPVS']}),
            ('BRepFeat',[],[],{'BRepFeat':['IsInOut'],\
                                'BRepFeat_MakeLinearForm':['TransformShapeFU']}),
            ('LocOpe',['TopOpeBRepDS','TopOpeBRepTool'],['LocOpe_Revol','LocOpe_RevolutionForm']),
########################
##### IGES #############
########################
            ('IGESToBRep',['MoniTool','TCollection','Handle_Interface'],['IGESToBRep_AlgoContainer'],{'IGESToBRep_TopoSurface':['TransferPlaneSurface']}),
            ('IGESControl',['MoniTool','TCollection','Handle_Interface'],[]),
            ('IGESData',['MoniTool','TCollection'],['IGESData_Protocol'],{'IGESData_IGESReaderData':['DirValues']}),
            ('IGESBasic',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent'],['IGESBasic_Protocol']),
            ('IGESDefs',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent'],['IGESDefs_Protocol']),
            ('IGESAppli',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent'],['IGESAppli_Protocol']),
            ('IGESDimen',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent'],['IGESDimen_Protocol']),
            ('IGESGeom',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent'],['IGESGeom_Protocol']),
            ('IGESGraph',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent'],['IGESGraph_Protocol']),
            ('IGESSelect',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent'],['IGESSelect_Protocol'],{'IGESSelect_SelectBasicGeom':['CurvesOnly']}),
            ('IGESSolid',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent'],['IGESSolid_Protocol']),
            ('IGESCAFControl',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent'],[]),
            ##('IGESDraw',[],[]), DON'T WORK
            ('IGESConvGeom',[],[]),
            ('IGESFile',[],[]),
########################################
############## STEP ####################
########################################
            ('STEPControl',['MoniTool','TCollection','Handle_Interface'],[]),
            ('StepData',['MoniTool','TCollection'],['StepData_Protocol'],{'StepData_FreeFormEntity':['StepData_FreeFormEntity'],\
'StepData_UndefinedEntity':['Super'],'StepData_StepReaderData':['ReadEnumParam']}),#,'StepData_UndefinedEntity']),
            ('StepBasic',['MoniTool','TCollection','Handle_Interface'],[]),
            ('StepDimTol',['MoniTool','TCollection','Handle_Interface','StepBasic'],[]),
            ('STEPEdit',['MoniTool','TCollection','Handle_Interface'],[]),
            ('StepFEA',['MoniTool','TCollection','Handle_Interface','Interface_SequenceOfCheck'],['StepFEA_SymmetricTensor43d']),
            ('StepFile',['MoniTool','TCollection','Handle_Interface'],[]),
            ('STEPSelections',['MoniTool','TCollection','Handle_Interface','Interface_SequenceOfCheck'],[],\
                {'STEPSelections_Counter':['POP','POP2']}),
            ('StepSelect',['MoniTool','TCollection','Handle_Interface'],[]),
            ('StepToGeom',['MoniTool','TCollection','Handle_Interface'],[]),
            ('StepToTopoDS',['MoniTool','TCollection','Handle_Interface'],['StepToTopoDS_Builder']),
            ('StepElement',['MoniTool','TCollection','Handle_Interface','Interface_SequenceOfCheck'],[]), 
            ('STEPCAFControl',['MoniTool','TCollection','Handle_Interface',\
                               'Transfer','XSControl','Interface_Data','Interface_Map',\
                               'Interface_Indexed'],[]),
            ('StepRepr',['MoniTool','TCollection','Handle_Interface','Interface_SequenceOfCheck'],[]),
            ('StepShape',['MoniTool','TCollection','Handle_Interface','StepBasic'],[]),
            ('StepGeom',['MoniTool','TCollection','Handle_Interface','StepBasic'],[]),
            ('StepAP203',['MoniTool','TCollection','Handle_Interface','StepBasic'],[]),
            ##('StepAP209',['XSControl','TCollection','MoniTool','Interface','StepBasic'],[]),# GCCXML ERROR
            ('StepVisual',['MoniTool','TCollection','Handle_Interface','StepBasic'],[]),
            ('StepAP214',['MoniTool','TCollection','Handle_Interface','StepBasic','StepGeom','StepRepr'],['StepAP214_Protocol']),
            ('RWHeaderSection',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('RWStepAP203',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('RWStepAP214',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('RWStepBasic',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('RWStepDimTol',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('RWStepElement',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('RWStepFEA',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('RWStepGeom',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('RWStepRepr',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('RWStepShape',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('RWStepVisual',['MoniTool','TCollection','Handle_Interface','Interface_GraphContent','StepBasic'],[]),
            ('APIHeaderSection',['MoniTool','TCollection','Handle_Interface'],[]),
            ('TransferBRep',['MoniTool','TCollection','Handle_Interface','Interface_SequenceOfCheck'],['TransferBRep_ShapeMapper'],\
                {'TransferBRep':['BRepCheck']}),
            ('XCAFApp',['CDM','CDF','TDF','TCollection'],[]),
            ('XCAFDoc',[],[],{'XCAFDoc_DimTolTool':['GetDatum']}),
            ('XCAFDrivers',['Standard','PCDM','Storage','MDF','TCollection'],[]),
            #('XCAFSchema',['TCollection'],[]),#Many linkage errors Function SAdd
           ]
#####################################
# Visualization part is OS specific #
#####################################
if sys.platform=='win32':
    MODULES.extend([
             ('Graphic2d',[],[],{'Graphic2d_TransientManager':['Transform']}),
             ('Graphic3d',['gp'],['Graphic3d_GraphicDevice','Handle_Graphic3d_GraphicDevice'],\
             {'Graphic3d_Group':['SetGroupPrimitivesAspect'],'Handle_Graphic3d_GraphicDevice':['DownCast']}),
             ('Prs2d',['Graphic3d','Bnd_Box','Aspect','Handle_TCollection'],[]),             
             ('Prs3d',['Graphic3d','Bnd_Box','Aspect','Handle_TCollection'],[]),
             ('PrsMgr',['Graphic3d','gp','Aspect','Handle_TCollection'],[]),
             ('SelectMgr',['TCollection','Prs3d','Graphic3d','Aspect','Quantity'],[]),
             ('StdSelect',['TCollection','Prs3d','Graphic3d','Aspect','Quantity','SelectBasics'],[],\
             {'StdSelect_Shape':['Shape'],'StdSelect_BRepOwner':['Set']}),
             ('DsgPrs',[],[],{'DsgPrs_RadiusPresentation':['Add']}),
             ('AIS',['Graphic3d','TopoDS_Vertex','Aspect','SelectBasics','PrsMgr',],[],{"AIS_LocalContext":["Reactivate"]}),
             ('NIS',['TCollection','Quantity','Viewer','TColStd','Aspect'],[],{'NIS_InteractiveObject':['SetAttribute'],\
                                             'NIS_Triangulated':['Polygon','tri_line_intersect','seg_line_intersect']}),
             ('Voxel',['Quantity','gp','Graphic3d','Aspect',\
                      'Handle_TCollection','Prs3d','PrsMgr','SelectMgr','SelectBasics',],[]),
             ('Visual3d',[],[]),
             ('TPrsStd',['Aspect',],[]),
             ('XCAFPrs',['SelectMgr','TDF','Graphic3d','Aspect','Prs3d','PrsMgr','SelectBasics','Quantity'],[]),
             #('WNT',[],[]), gccxml error
             ('MeshVS',['Aspect','Graphic3d','PrsMgr','Prs3d'],[]),
             ])
    MODULES.extend([
               ('XDEDRAW',[],[]),

               ('EDL',[],[]),
               ('HeaderSection',['Interface','MoniTool','TCollection'],['HeaderSection_Protocol']),
               ('DNaming',[],[]),
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
                    ('Visual3d',['OSD','MFT','Xw'],[]),
                    ('TPrsStd',['OSD','MFT','Xw','Aspect',],[]),
                    ('XCAFPrs',['Aspect','MFT','TDF','OSD','Graphic3d',\
                                'SelectBasics','SelectMgr','Xw','Quantity','Prs3d','PrsMgr'],[]),
                    ('NIS',['Aspect','TColStd','TCollection','Quantity','Viewer'],['NIS_Triangulated']),
                    ('MeshVS',['OSD','MFT','Xw','Graphic3d','Aspect','Prs3d','Quantity','PrsMgr'],[]),          
                    ])
    MODULES.extend([
                    ('Image',[],[]), #bug on Windows
                    ('AlienImage',['Quantity','TCollection'],[]),
                   ])
#
# SalomeGEOM modules
#
SALOME_GEOM_MODULES = [
                       ('Archimede',[],[]),
                       ('SGEOM',['TDataStd','TColStd','TDF','CDM','CDF','Quantity'],[],\
                        {'GEOM_SubShapeDriver':['GetID']}),
                       ('GEOMAlgo',['Handle_TCollection'],[]),
                       ('GEOMImpl',['TDataStd','TDocStd','CDM','TDF','Handle_TCollection','CDF',
                                    'Aspect','Quantity'],\
                        ['GEOMImpl_Block6Explorer','GEOMImpl_Template','Handle_GEOMImpl_Template'],\
                        {'GEOMImpl_IShapesOperations':['GetShapesOnCylinderOld','GetShapesOnSphereOld','GetShapeProperties'],\
                         'GEOMImpl_ITransformOperations':['ScaleShapeAlongAxes'],
                         'GEOMImpl_IInsertOperations':['GetAllTextures']}),
                       ('BlockFix',['TopTools','Handle_TCollection'],[],\
                        {'BlockFix_SphereSpaceModifier':['ForRotation']}),
                        ('NMTDS',[],[]),
                        ('NMTTools',[],[],\
                         {'NMTTools_IteratorOfCoupleOfShape':['DS']}),
                        ('Partition',['TopoDS_Vertex','gp_Vec'],[]),
                        ('ShHealOper',['Geom','Handle_TCollection','Handle_Message','Handle_ShapeExtend'],[]),
                        ('Sketcher',[],[]),
                       ]

#
# SalomeSMESH modules
#
SALOME_SMESH_MODULES = [('SMDSAbs',[],[]),
                        ('SMDS',[],['SMDS_PolyhedralVolumeOfNodes','SMDS_IteratorOfElements'],\
                         {'SMDS_Mesh':['AddVolumeWithID','AddVolume','AddFaceWithID',\
                                       'AddFace','AddPolygonalFace','AddPolygonalFaceWithID',\
                                       'AddPolyhedralVolume','AddPolyhedralVolumeWithID',\
                                       'RemoveElement','FindFace','ChangeElementNodes',\
                                       'boundaryFaces','boundaryEdges'],\
                        'SMDS_PolygonalFaceOfNodes':['ChangeNodes'],\
                        'SMDS_FaceOfNodes':['ChangeNodes'],\
                        'SMDS_QuadraticFaceOfNodes':['ChangeNodes'],\
                        'SMDS_VolumeOfNodes':['ChangeNodes'],\
                        'SMDS_QuadraticVolumeOfNodes':['ChangeNodes'],\
                        'SMDS_SpacePosition':['SetCoords']}),
                       ('SMESHDS',[],[],{'SMESHDS_Command':['AddPolygonalFace','ChangePolyhedronNodes','AddPolyhedralVolume'],\
                                         'SMESHDS_Script':['AddPolygonalFace','AddPolyhedralVolume','ChangePolyhedronNodes'],\
                                         'SMESHDS_Mesh':['AddPolygonalFaceWithID','AddPolygonalFace',\
                                                         'AddPolyhedralVolumeWithID',\
                                                         'AddPolyhedralVolume','ChangePolygonNodes','ChangePolyhedronNodes',\
                                                         'SubMeshIndices','ChangeElementNodes',],\
                                         'SMESHDS_Hypothesis':['SMESHDS_Hypothesis'],
                                         'SMESHDS_GroupBase':['SMESHDS_GroupBase']}),
                        ('SMESH',['SMDS','SelectBasics','Select3D','TColStd',\
                                  'AIS','SelectMgr','MeshVS','PrsMgr','Graphic3d',\
                                  'Xw','MFT','Aspect','Quantity','Prs3d','Handle_TCollection',\
                                  'OSD','Standard','math'],\
                         ['SMESH_Comment','SMESH_OctreeNode','SMESH_MeshEditor',\
                                     'SMESH_0D_Algo','SMESH_1D_Algo','SMESH_2D_Algo','SMESH_3D_Algo','SMESH_Octree'],\
                         {'SMESH_Algo':['SMESH_Algo','GetNodeParamOnEdge','GetSortedNodesOnEdge'],\
                          'SMESH_Block':['GetFaceEdgesIDs','GetEdgeVertexIDs'],\
                          'SMESH_Mesh':['GetGroupSubMeshesContaining','GetGroupIds','GetHypotheses'],
                          'SMESH_Pattern':['Apply','GetMappedPoints','GetPoints'],\
                          'SMESH_Hypothesis':['SMESH_Hypothesis'],\
                          }),
                         ]
if sys.platform!='win32':
    SALOME_SMESH_MODULES.append(('StdMeshers',['SMDS'],[],{'StdMeshers_Hexa_3D':['OppositeVertex'],'StdMeshers_MEFISTO_2D':['LoadPoints']}),)
else:
    SALOME_SMESH_MODULES.append(('StdMeshers',['SMDS'],['StdMeshers_ProjectionUtils'],
                                 {'StdMeshers_Hexa_3D':['OppositeVertex'],
                                  'StdMeshers_MEFISTO_2D':['LoadPoints']}))

ALL_MODULES = MODULES + SALOME_GEOM_MODULES + SALOME_SMESH_MODULES

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
         and ('WOK' not in package_name)\
         and ('Test' not in package_name)\
         and ('cdl' not in package_name):
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
