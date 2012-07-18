/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_IGESToBRep_Actor.hxx>
#include<Handle_IGESToBRep_AlgoContainer.hxx>
#include<Handle_IGESToBRep_IGESBoundary.hxx>
#include<Handle_IGESToBRep_ToolContainer.hxx>
#include<IGESToBRep.hxx>
#include<IGESToBRep_Actor.hxx>
#include<IGESToBRep_AlgoContainer.hxx>
#include<IGESToBRep_BRepEntity.hxx>
#include<IGESToBRep_BasicCurve.hxx>
#include<IGESToBRep_BasicSurface.hxx>
#include<IGESToBRep_CurveAndSurface.hxx>
#include<IGESToBRep_IGESBoundary.hxx>
#include<IGESToBRep_Reader.hxx>
#include<IGESToBRep_ToolContainer.hxx>
#include<IGESToBRep_TopoCurve.hxx>
#include<IGESToBRep_TopoSurface.hxx>

// Additional headers necessary for compilation.

#include<Handle_Interface_Check.hxx>
#include<Handle_Interface_CheckFailure.hxx>
#include<Handle_Interface_CopyControl.hxx>
#include<Handle_Interface_CopyMap.hxx>
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
#include<Handle_IGESData_IGESModel.hxx>
#include<Handle_Transfer_TransientProcess.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_IGESData_IGESEntity.hxx>
#include<Message_Msg.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TopoDS_Face.hxx>
#include<gp_Trsf2d.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_IGESGeom_Point.hxx>
#include<Handle_IGESGeom_CompositeCurve.hxx>
#include<Handle_IGESGeom_OffsetCurve.hxx>
#include<Handle_IGESGeom_CurveOnSurface.hxx>
#include<Handle_IGESGeom_Boundary.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Transfer_Binder.hxx>
#include<IGESToBRep.hxx>
#include<Handle_TColStd_HSequenceOfTransient.hxx>
#include<TopoDS_Edge.hxx>
#include<Handle_ShapeExtend_WireData.hxx>
#include<Handle_IGESData_HArray1OfIGESEntity.hxx>
#include<Handle_IGESSolid_VertexList.hxx>
#include<Handle_IGESSolid_EdgeList.hxx>
#include<Handle_IGESSolid_Loop.hxx>
#include<Handle_IGESSolid_Face.hxx>
#include<Handle_IGESSolid_Shell.hxx>
#include<Handle_IGESSolid_ManifoldSolid.hxx>
#include<Handle_IGESGeom_BSplineCurve.hxx>
#include<Handle_IGESGeom_CircularArc.hxx>
#include<Handle_IGESGeom_ConicArc.hxx>
#include<Handle_IGESGeom_CopiousData.hxx>
#include<Handle_IGESGeom_Line.hxx>
#include<Handle_IGESGeom_SplineCurve.hxx>
#include<Handle_Geom_Transformation.hxx>
#include<Handle_IGESGeom_TransformationMatrix.hxx>
#include<Handle_Geom_Plane.hxx>
#include<Handle_IGESSolid_PlaneSurface.hxx>
#include<Handle_Geom_CylindricalSurface.hxx>
#include<Handle_IGESSolid_CylindricalSurface.hxx>
#include<Handle_Geom_ConicalSurface.hxx>
#include<Handle_IGESSolid_ConicalSurface.hxx>
#include<Handle_Geom_SphericalSurface.hxx>
#include<Handle_IGESSolid_SphericalSurface.hxx>
#include<Handle_Geom_ToroidalSurface.hxx>
#include<Handle_IGESSolid_ToroidalSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<Handle_IGESGeom_SplineSurface.hxx>
#include<Handle_IGESGeom_BSplineSurface.hxx>
#include<Handle_IGESGeom_RuledSurface.hxx>
#include<Handle_IGESGeom_SurfaceOfRevolution.hxx>
#include<Handle_IGESGeom_TabulatedCylinder.hxx>
#include<Handle_IGESGeom_OffsetSurface.hxx>
#include<Handle_IGESGeom_TrimmedSurface.hxx>
#include<Handle_IGESGeom_BoundedSurface.hxx>
#include<Handle_IGESGeom_Plane.hxx>
#include<Handle_IGESBasic_SingleParent.hxx>
%}
