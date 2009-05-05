/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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
%{

// Headers necessary to define wrapped classes.

#include<Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI.hxx>
#include<Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap.hxx>
#include<Handle_StepToTopoDS_DataMapNodeOfPointVertexMap.hxx>
#include<StepToTopoDS.hxx>
#include<StepToTopoDS_Builder.hxx>
#include<StepToTopoDS_BuilderError.hxx>
#include<StepToTopoDS_CartesianPointHasher.hxx>
#include<StepToTopoDS_DataMapIteratorOfDataMapOfTRI.hxx>
#include<StepToTopoDS_DataMapIteratorOfPointEdgeMap.hxx>
#include<StepToTopoDS_DataMapIteratorOfPointVertexMap.hxx>
#include<StepToTopoDS_DataMapNodeOfDataMapOfTRI.hxx>
#include<StepToTopoDS_DataMapNodeOfPointEdgeMap.hxx>
#include<StepToTopoDS_DataMapNodeOfPointVertexMap.hxx>
#include<StepToTopoDS_DataMapOfTRI.hxx>
#include<StepToTopoDS_GeometricTool.hxx>
#include<StepToTopoDS_GeometricToolError.hxx>
#include<StepToTopoDS_MakeTransformed.hxx>
#include<StepToTopoDS_PointEdgeMap.hxx>
#include<StepToTopoDS_PointPair.hxx>
#include<StepToTopoDS_PointPairHasher.hxx>
#include<StepToTopoDS_PointVertexMap.hxx>
#include<StepToTopoDS_Root.hxx>
#include<StepToTopoDS_Tool.hxx>
#include<StepToTopoDS_TranslateCompositeCurve.hxx>
#include<StepToTopoDS_TranslateCurveBoundedSurface.hxx>
#include<StepToTopoDS_TranslateEdge.hxx>
#include<StepToTopoDS_TranslateEdgeError.hxx>
#include<StepToTopoDS_TranslateEdgeLoop.hxx>
#include<StepToTopoDS_TranslateEdgeLoopError.hxx>
#include<StepToTopoDS_TranslateFace.hxx>
#include<StepToTopoDS_TranslateFaceError.hxx>
#include<StepToTopoDS_TranslatePolyLoop.hxx>
#include<StepToTopoDS_TranslatePolyLoopError.hxx>
#include<StepToTopoDS_TranslateShell.hxx>
#include<StepToTopoDS_TranslateShellError.hxx>
#include<StepToTopoDS_TranslateVertex.hxx>
#include<StepToTopoDS_TranslateVertexError.hxx>
#include<StepToTopoDS_TranslateVertexLoop.hxx>
#include<StepToTopoDS_TranslateVertexLoopError.hxx>

// Additional headers necessary for compilation.

#include<Handle_Interface_Check.hxx>
#include<Handle_Interface_CheckFailure.hxx>
#include<Handle_Interface_CopyControl.hxx>
#include<Handle_Interface_CopyMap.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Handle_Interface_EntityCluster.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Handle_Interface_GTool.hxx>
#include<Handle_Interface_GeneralModule.hxx>
#include<Handle_Interface_GlobalNodeOfGeneralLib.hxx>
#include<Handle_Interface_GlobalNodeOfReaderLib.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_Interface_HGraph.hxx>
#include<Handle_Interface_HSequenceOfCheck.hxx>
#include<Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Handle_Interface_IntVal.hxx>
#include<Handle_Interface_InterfaceError.hxx>
#include<Handle_Interface_InterfaceMismatch.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_NodeOfGeneralLib.hxx>
#include<Handle_Interface_NodeOfReaderLib.hxx>
#include<Handle_Interface_ParamList.hxx>
#include<Handle_Interface_ParamSet.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_Interface_ReaderModule.hxx>
#include<Handle_Interface_ReportEntity.hxx>
#include<Handle_Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Handle_Interface_SignLabel.hxx>
#include<Handle_Interface_SignType.hxx>
#include<Handle_Interface_Static.hxx>
#include<Handle_Interface_TypedValue.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
#include<MoniTool_AttrList.hxx>
#include<MoniTool_CaseData.hxx>
#include<MoniTool_DataInfo.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapOfTimer.hxx>
#include<MoniTool_ElemHasher.hxx>
#include<MoniTool_Element.hxx>
#include<MoniTool_HSequenceOfElement.hxx>
#include<MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IntVal.hxx>
#include<MoniTool_MTHasher.hxx>
#include<MoniTool_Macros.hxx>
#include<MoniTool_OptValue.hxx>
#include<MoniTool_Option.hxx>
#include<MoniTool_Profile.hxx>
#include<MoniTool_RealVal.hxx>
#include<MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<MoniTool_SequenceOfElement.hxx>
#include<MoniTool_SignShape.hxx>
#include<MoniTool_SignText.hxx>
#include<MoniTool_Stat.hxx>
#include<MoniTool_Timer.hxx>
#include<MoniTool_TimerSentry.hxx>
#include<MoniTool_TransientElem.hxx>
#include<MoniTool_TypedValue.hxx>
#include<MoniTool_ValueInterpret.hxx>
#include<MoniTool_ValueSatisfies.hxx>
#include<MoniTool_ValueType.hxx>
#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_StepShape_ConnectedFaceSet.hxx>
#include<Handle_StepGeom_Axis2Placement3d.hxx>
#include<Handle_StepGeom_CartesianTransformationOperator3d.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_StepRepr_MappedItem.hxx>
#include<Handle_Transfer_TransientProcess.hxx>
#include<Handle_StepShape_TopologicalRepresentationItem.hxx>
#include<TopoDS_Edge.hxx>
#include<Handle_StepGeom_CartesianPoint.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_StepShape_Edge.hxx>
#include<Handle_StepGeom_Curve.hxx>
#include<Handle_StepShape_EdgeCurve.hxx>
#include<Handle_StepShape_Vertex.hxx>
#include<Handle_StepGeom_Pcurve.hxx>
#include<Handle_StepShape_FaceBound.hxx>
#include<TopoDS_Face.hxx>
#include<Handle_StepGeom_Surface.hxx>
#include<Handle_StepShape_FaceSurface.hxx>
#include<Handle_StepShape_PolyLoop.hxx>
#include<Handle_StepGeom_CompositeCurve.hxx>
#include<Handle_StepGeom_SurfaceCurve.hxx>
#include<Handle_StepShape_EdgeLoop.hxx>
#include<Handle_StepGeom_CurveBoundedSurface.hxx>
#include<StepToTopoDS.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_StepShape_VertexLoop.hxx>
%}
