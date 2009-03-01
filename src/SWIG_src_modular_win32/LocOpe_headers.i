/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
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
*/
%{

// Headers necessary to define wrapped classes.

#include<LocOpe_Builder.hxx>
#include<LocOpe_BuildShape.hxx>
#include<LocOpe_BuildWires.hxx>
#include<LocOpe_CSIntersector.hxx>
#include<LocOpe_CurveShapeIntersector.hxx>
#include<LocOpe_DataMapIteratorOfDataMapOfShapePnt.hxx>
#include<LocOpe_DataMapNodeOfDataMapOfShapePnt.hxx>
#include<LocOpe_DataMapOfShapePnt.hxx>
#include<LocOpe_DPrism.hxx>
#include<LocOpe_FindEdges.hxx>
#include<LocOpe_FindEdgesInFace.hxx>
#include<LocOpe_GeneratedShape.hxx>
#include<LocOpe_Generator.hxx>
#include<LocOpe_GluedShape.hxx>
#include<LocOpe_Gluer.hxx>
#include<LocOpe_HBuilder.hxx>
#include<LocOpe_LinearForm.hxx>
#include<LocOpe_Operation.hxx>
#include<LocOpe_Pipe.hxx>
#include<LocOpe_PntFace.hxx>
#include<LocOpe_Prism.hxx>
#include<LocOpe_ProjectedWires.hxx>
#include<LocOpe_Revol.hxx>
#include<LocOpe_RevolutionForm.hxx>
#include<LocOpe_SequenceNodeOfSequenceOfCirc.hxx>
#include<LocOpe_SequenceNodeOfSequenceOfLin.hxx>
#include<LocOpe_SequenceNodeOfSequenceOfPntFace.hxx>
#include<LocOpe_SequenceOfCirc.hxx>
#include<LocOpe_SequenceOfLin.hxx>
#include<LocOpe_SequenceOfPntFace.hxx>
#include<LocOpe_SplitDrafts.hxx>
#include<LocOpe_Spliter.hxx>
#include<LocOpe_SplitShape.hxx>
#include<LocOpe_WiresOnShape.hxx>
#include<LocOpe.hxx>
#include<Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt.hxx>
#include<Handle_LocOpe_GeneratedShape.hxx>
#include<Handle_LocOpe_GluedShape.hxx>
#include<Handle_LocOpe_HBuilder.hxx>
#include<Handle_LocOpe_ProjectedWires.hxx>
#include<Handle_LocOpe_SequenceNodeOfSequenceOfCirc.hxx>
#include<Handle_LocOpe_SequenceNodeOfSequenceOfLin.hxx>
#include<Handle_LocOpe_SequenceNodeOfSequenceOfPntFace.hxx>
#include<Handle_LocOpe_WiresOnShape.hxx>

// Additional headers necessary for compilation.

#include<TopOpeBRepDS.hxx>
#include<TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference.hxx>
#include<TopOpeBRepDS_Association.hxx>
#include<TopOpeBRepDS_BuildTool.hxx>
#include<TopOpeBRepDS_Check.hxx>
#include<TopOpeBRepDS_CheckStatus.hxx>
#include<TopOpeBRepDS_Config.hxx>
#include<TopOpeBRepDS_connex.hxx>
#include<TopOpeBRepDS_Curve.hxx>
#include<TopOpeBRepDS_CurveData.hxx>
#include<TopOpeBRepDS_CurveExplorer.hxx>
#include<TopOpeBRepDS_CurveIterator.hxx>
#include<TopOpeBRepDS_CurvePointInterference.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfMapOfCurve.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfMapOfPoint.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfMapOfSurface.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfShapeSurface.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState.hxx>
#include<TopOpeBRepDS_DataMapNodeOfMapOfCurve.hxx>
#include<TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData.hxx>
#include<TopOpeBRepDS_DataMapNodeOfMapOfPoint.hxx>
#include<TopOpeBRepDS_DataMapNodeOfMapOfSurface.hxx>
#include<TopOpeBRepDS_DataMapNodeOfShapeSurface.hxx>
#include<TopOpeBRepDS_DataMapOfCheckStatus.hxx>
#include<TopOpeBRepDS_DataMapOfIntegerListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapOfInterferenceListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapOfInterferenceShape.hxx>
#include<TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State.hxx>
#include<TopOpeBRepDS_DataMapOfShapeState.hxx>
#include<TopOpeBRepDS_DataStructure.hxx>
#include<TopOpeBRepDS_define.hxx>
#include<TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape.hxx>
#include<TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape.hxx>
#include<TopOpeBRepDS_DoubleMapOfIntegerShape.hxx>
#include<TopOpeBRepDS_DRAW.hxx>
#include<TopOpeBRepDS_DSS.hxx>
#include<TopOpeBRepDS_DSX.hxx>
#include<TopOpeBRepDS_Dumper.hxx>
#include<TopOpeBRepDS_Edge3dInterferenceTool.hxx>
#include<TopOpeBRepDS_EdgeInterferenceTool.hxx>
#include<TopOpeBRepDS_EdgeVertexInterference.hxx>
#include<TopOpeBRepDS_EIR.hxx>
#include<TopOpeBRepDS_Explorer.hxx>
#include<TopOpeBRepDS_EXPORT.hxx>
#include<TopOpeBRepDS_FaceEdgeInterference.hxx>
#include<TopOpeBRepDS_FaceInterferenceTool.hxx>
#include<TopOpeBRepDS_Filter.hxx>
#include<TopOpeBRepDS_FIR.hxx>
#include<TopOpeBRepDS_GapFiller.hxx>
#include<TopOpeBRepDS_GapTool.hxx>
#include<TopOpeBRepDS_GeometryData.hxx>
#include<TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference.hxx>
#include<TopOpeBRepDS_HDataStructure.hxx>
#include<TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState.hxx>
#include<TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint.hxx>
#include<TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData.hxx>
#include<TopOpeBRepDS_IndexedDataMapOfShapeWithState.hxx>
#include<TopOpeBRepDS_IndexedDataMapOfVertexPoint.hxx>
#include<TopOpeBRepDS_Interference.hxx>
#include<TopOpeBRepDS_InterferenceIterator.hxx>
#include<TopOpeBRepDS_InterferenceTool.hxx>
#include<TopOpeBRepDS_Kind.hxx>
#include<TopOpeBRepDS_ListIteratorOfListOfInterference.hxx>
#include<TopOpeBRepDS_ListNodeOfListOfInterference.hxx>
#include<TopOpeBRepDS_ListOfInterference.hxx>
#include<TopOpeBRepDS_ListOfShapeOn1State.hxx>
#include<TopOpeBRepDS_MapOfCurve.hxx>
#include<TopOpeBRepDS_MapOfIntegerShapeData.hxx>
#include<TopOpeBRepDS_MapOfPoint.hxx>
#include<TopOpeBRepDS_MapOfShapeData.hxx>
#include<TopOpeBRepDS_MapOfSurface.hxx>
#include<TopOpeBRepDS_Marker.hxx>
#include<TopOpeBRepDS_PDataStructure.hxx>
#include<TopOpeBRepDS_Point.hxx>
#include<TopOpeBRepDS_PointData.hxx>
#include<TopOpeBRepDS_PointExplorer.hxx>
#include<TopOpeBRepDS_PointIterator.hxx>
#include<TopOpeBRepDS_ProcessInterferencesTool.hxx>
#include<TopOpeBRepDS_reDEB.hxx>
#include<TopOpeBRepDS_Reducer.hxx>
#include<TopOpeBRepDS_repvg.hxx>
#include<TopOpeBRepDS_samdom.hxx>
#include<TopOpeBRepDS_ShapeData.hxx>
#include<TopOpeBRepDS_ShapeShapeInterference.hxx>
#include<TopOpeBRepDS_ShapeSurface.hxx>
#include<TopOpeBRepDS_ShapeWithState.hxx>
#include<TopOpeBRepDS_SolidSurfaceInterference.hxx>
#include<TopOpeBRepDS_Surface.hxx>
#include<TopOpeBRepDS_SurfaceCurveInterference.hxx>
#include<TopOpeBRepDS_SurfaceData.hxx>
#include<TopOpeBRepDS_SurfaceExplorer.hxx>
#include<TopOpeBRepDS_SurfaceIterator.hxx>
#include<TopOpeBRepDS_TKI.hxx>
#include<TopOpeBRepDS_TOOL.hxx>
#include<TopOpeBRepDS_tools.hxx>
#include<TopOpeBRepDS_traceDSX.hxx>
#include<TopOpeBRepDS_Transition.hxx>
#include<TopOpeBRepTool.hxx>
#include<TopOpeBRepTool_2d.hxx>
#include<TopOpeBRepTool_AncestorsTool.hxx>
#include<TopOpeBRepTool_box.hxx>
#include<TopOpeBRepTool_BoxSort.hxx>
#include<TopOpeBRepTool_C2DF.hxx>
#include<TopOpeBRepTool_CLASSI.hxx>
#include<TopOpeBRepTool_connexity.hxx>
#include<TopOpeBRepTool_CORRISO.hxx>
#include<TopOpeBRepTool_CurveTool.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<TopOpeBRepTool_DataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapOfShapeReal.hxx>
#include<TopOpeBRepTool_define.hxx>
#include<TopOpeBRepTool_defineG.hxx>
#include<TopOpeBRepTool_DRAW.hxx>
#include<TopOpeBRepTool_EXPORT.hxx>
#include<TopOpeBRepTool_face.hxx>
#include<TopOpeBRepTool_FuseEdges.hxx>
#include<TopOpeBRepTool_GEOMETRY.hxx>
#include<TopOpeBRepTool_GeomTool.hxx>
#include<TopOpeBRepTool_HBoxTool.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeAddress.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeBox.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeBox2d.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeconnexity.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfSolidClassifier.hxx>
#include<TopOpeBRepTool_KRO.hxx>
#include<TopOpeBRepTool_ListIteratorOfListOfC2DF.hxx>
#include<TopOpeBRepTool_ListNodeOfListOfC2DF.hxx>
#include<TopOpeBRepTool_ListOfC2DF.hxx>
#include<TopOpeBRepTool_makeTransition.hxx>
#include<TopOpeBRepTool_mkTondgE.hxx>
#include<TopOpeBRepTool_OutCurveType.hxx>
#include<TopOpeBRepTool_Plos.hxx>
#include<TopOpeBRepTool_PROJECT.hxx>
#include<TopOpeBRepTool_PShapeClassifier.hxx>
#include<TopOpeBRepTool_PSoClassif.hxx>
#include<TopOpeBRepTool_PURGE.hxx>
#include<TopOpeBRepTool_PurgeInternalEdges.hxx>
#include<TopOpeBRepTool_REGUS.hxx>
#include<TopOpeBRepTool_REGUW.hxx>
#include<TopOpeBRepTool_SC.hxx>
#include<TopOpeBRepTool_ShapeClassifier.hxx>
#include<TopOpeBRepTool_ShapeExplorer.hxx>
#include<TopOpeBRepTool_ShapeTool.hxx>
#include<TopOpeBRepTool_SolidClassifier.hxx>
#include<TopOpeBRepTool_STATE.hxx>
#include<TopOpeBRepTool_tol.hxx>
#include<TopOpeBRepTool_TOOL.hxx>
#include<TopOpeBRepTool_TOPOLOGY.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Circ.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Shape.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<Handle_Geom_Curve.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Edge.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopoDS_Vertex.hxx>
#include<LocOpe.hxx>
#include<gp_Lin.hxx>
#include<gp_Vec.hxx>
#include<TColGeom_SequenceOfCurve.hxx>
#include<TopOpeBRepDS_BuildTool.hxx>
#include<gp_Ax1.hxx>
#include<gp_Dir.hxx>
#include<gp_Pln.hxx>
%}
