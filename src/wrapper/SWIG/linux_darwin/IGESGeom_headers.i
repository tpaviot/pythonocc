/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_IGESGeom_BSplineCurve.hxx>
#include<Handle_IGESGeom_BSplineSurface.hxx>
#include<Handle_IGESGeom_Boundary.hxx>
#include<Handle_IGESGeom_BoundedSurface.hxx>
#include<Handle_IGESGeom_CircularArc.hxx>
#include<Handle_IGESGeom_CompositeCurve.hxx>
#include<Handle_IGESGeom_ConicArc.hxx>
#include<Handle_IGESGeom_CopiousData.hxx>
#include<Handle_IGESGeom_CurveOnSurface.hxx>
#include<Handle_IGESGeom_Direction.hxx>
#include<Handle_IGESGeom_Flash.hxx>
#include<Handle_IGESGeom_GeneralModule.hxx>
#include<Handle_IGESGeom_HArray1OfBoundary.hxx>
#include<Handle_IGESGeom_HArray1OfCurveOnSurface.hxx>
#include<Handle_IGESGeom_HArray1OfTransformationMatrix.hxx>
#include<Handle_IGESGeom_Line.hxx>
#include<Handle_IGESGeom_OffsetCurve.hxx>
#include<Handle_IGESGeom_OffsetSurface.hxx>
#include<Handle_IGESGeom_Plane.hxx>
#include<Handle_IGESGeom_Point.hxx>
#include<Handle_IGESGeom_Protocol.hxx>
#include<Handle_IGESGeom_ReadWriteModule.hxx>
#include<Handle_IGESGeom_RuledSurface.hxx>
#include<Handle_IGESGeom_SpecificModule.hxx>
#include<Handle_IGESGeom_SplineCurve.hxx>
#include<Handle_IGESGeom_SplineSurface.hxx>
#include<Handle_IGESGeom_SurfaceOfRevolution.hxx>
#include<Handle_IGESGeom_TabulatedCylinder.hxx>
#include<Handle_IGESGeom_TransformationMatrix.hxx>
#include<Handle_IGESGeom_TrimmedSurface.hxx>
#include<IGESGeom.hxx>
#include<IGESGeom_Array1OfBoundary.hxx>
#include<IGESGeom_Array1OfCurveOnSurface.hxx>
#include<IGESGeom_Array1OfTransformationMatrix.hxx>
#include<IGESGeom_BSplineCurve.hxx>
#include<IGESGeom_BSplineSurface.hxx>
#include<IGESGeom_Boundary.hxx>
#include<IGESGeom_BoundedSurface.hxx>
#include<IGESGeom_CircularArc.hxx>
#include<IGESGeom_CompositeCurve.hxx>
#include<IGESGeom_ConicArc.hxx>
#include<IGESGeom_CopiousData.hxx>
#include<IGESGeom_CurveOnSurface.hxx>
#include<IGESGeom_Direction.hxx>
#include<IGESGeom_Flash.hxx>
#include<IGESGeom_GeneralModule.hxx>
#include<IGESGeom_HArray1OfBoundary.hxx>
#include<IGESGeom_HArray1OfCurveOnSurface.hxx>
#include<IGESGeom_HArray1OfTransformationMatrix.hxx>
#include<IGESGeom_Line.hxx>
#include<IGESGeom_OffsetCurve.hxx>
#include<IGESGeom_OffsetSurface.hxx>
#include<IGESGeom_Plane.hxx>
#include<IGESGeom_Point.hxx>
#include<IGESGeom_Protocol.hxx>
#include<IGESGeom_ReadWriteModule.hxx>
#include<IGESGeom_RuledSurface.hxx>
#include<IGESGeom_SpecificModule.hxx>
#include<IGESGeom_SplineCurve.hxx>
#include<IGESGeom_SplineSurface.hxx>
#include<IGESGeom_SurfaceOfRevolution.hxx>
#include<IGESGeom_TabulatedCylinder.hxx>
#include<IGESGeom_ToolBSplineCurve.hxx>
#include<IGESGeom_ToolBSplineSurface.hxx>
#include<IGESGeom_ToolBoundary.hxx>
#include<IGESGeom_ToolBoundedSurface.hxx>
#include<IGESGeom_ToolCircularArc.hxx>
#include<IGESGeom_ToolCompositeCurve.hxx>
#include<IGESGeom_ToolConicArc.hxx>
#include<IGESGeom_ToolCopiousData.hxx>
#include<IGESGeom_ToolCurveOnSurface.hxx>
#include<IGESGeom_ToolDirection.hxx>
#include<IGESGeom_ToolFlash.hxx>
#include<IGESGeom_ToolLine.hxx>
#include<IGESGeom_ToolOffsetCurve.hxx>
#include<IGESGeom_ToolOffsetSurface.hxx>
#include<IGESGeom_ToolPlane.hxx>
#include<IGESGeom_ToolPoint.hxx>
#include<IGESGeom_ToolRuledSurface.hxx>
#include<IGESGeom_ToolSplineCurve.hxx>
#include<IGESGeom_ToolSplineSurface.hxx>
#include<IGESGeom_ToolSurfaceOfRevolution.hxx>
#include<IGESGeom_ToolTabulatedCylinder.hxx>
#include<IGESGeom_ToolTransformationMatrix.hxx>
#include<IGESGeom_ToolTrimmedSurface.hxx>
#include<IGESGeom_TransformationMatrix.hxx>
#include<IGESGeom_TrimmedSurface.hxx>

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
#include<Interface_GraphContent.hxx>
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
#include<Handle_IGESData_IGESEntity.hxx>
#include<Handle_IGESData_IGESReaderData.hxx>
#include<IGESData_ParamReader.hxx>
#include<IGESData_IGESWriter.hxx>
#include<gp_XYZ.hxx>
#include<gp_Pnt.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<Handle_TColgp_HArray2OfXYZ.hxx>
#include<gp_XY.hxx>
#include<gp_Pnt2d.hxx>
#include<Interface_EntityIterator.hxx>
#include<IGESData_DirChecker.hxx>
#include<Interface_ShareTool.hxx>
#include<Handle_Interface_Check.hxx>
#include<Interface_CopyTool.hxx>
#include<IGESData_IGESDumper.hxx>
#include<Handle_Message_Messenger.hxx>
#include<gp_Vec.hxx>
#include<gp_Dir.hxx>
#include<IGESGeom.hxx>
#include<Handle_IGESBasic_HArray2OfHArray1OfReal.hxx>
#include<Handle_TColgp_HArray1OfXYZ.hxx>
#include<Handle_IGESData_HArray1OfIGESEntity.hxx>
#include<gp_GTrsf.hxx>
#include<Handle_IGESBasic_SubfigureDef.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfIGESEntity.hxx>
%}
