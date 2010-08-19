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

#include<Handle_IGESDimen_AngularDimension.hxx>
#include<Handle_IGESDimen_BasicDimension.hxx>
#include<Handle_IGESDimen_CenterLine.hxx>
#include<Handle_IGESDimen_CurveDimension.hxx>
#include<Handle_IGESDimen_DiameterDimension.hxx>
#include<Handle_IGESDimen_DimensionDisplayData.hxx>
#include<Handle_IGESDimen_DimensionTolerance.hxx>
#include<Handle_IGESDimen_DimensionUnits.hxx>
#include<Handle_IGESDimen_DimensionedGeometry.hxx>
#include<Handle_IGESDimen_FlagNote.hxx>
#include<Handle_IGESDimen_GeneralLabel.hxx>
#include<Handle_IGESDimen_GeneralModule.hxx>
#include<Handle_IGESDimen_GeneralNote.hxx>
#include<Handle_IGESDimen_GeneralSymbol.hxx>
#include<Handle_IGESDimen_HArray1OfGeneralNote.hxx>
#include<Handle_IGESDimen_HArray1OfLeaderArrow.hxx>
#include<Handle_IGESDimen_LeaderArrow.hxx>
#include<Handle_IGESDimen_LinearDimension.hxx>
#include<Handle_IGESDimen_NewDimensionedGeometry.hxx>
#include<Handle_IGESDimen_NewGeneralNote.hxx>
#include<Handle_IGESDimen_OrdinateDimension.hxx>
#include<Handle_IGESDimen_PointDimension.hxx>
#include<Handle_IGESDimen_Protocol.hxx>
#include<Handle_IGESDimen_RadiusDimension.hxx>
#include<Handle_IGESDimen_ReadWriteModule.hxx>
#include<Handle_IGESDimen_Section.hxx>
#include<Handle_IGESDimen_SectionedArea.hxx>
#include<Handle_IGESDimen_SpecificModule.hxx>
#include<Handle_IGESDimen_WitnessLine.hxx>
#include<IGESDimen.hxx>
#include<IGESDimen_AngularDimension.hxx>
#include<IGESDimen_Array1OfGeneralNote.hxx>
#include<IGESDimen_Array1OfLeaderArrow.hxx>
#include<IGESDimen_BasicDimension.hxx>
#include<IGESDimen_CenterLine.hxx>
#include<IGESDimen_CurveDimension.hxx>
#include<IGESDimen_DiameterDimension.hxx>
#include<IGESDimen_DimensionDisplayData.hxx>
#include<IGESDimen_DimensionTolerance.hxx>
#include<IGESDimen_DimensionUnits.hxx>
#include<IGESDimen_DimensionedGeometry.hxx>
#include<IGESDimen_FlagNote.hxx>
#include<IGESDimen_GeneralLabel.hxx>
#include<IGESDimen_GeneralModule.hxx>
#include<IGESDimen_GeneralNote.hxx>
#include<IGESDimen_GeneralSymbol.hxx>
#include<IGESDimen_HArray1OfGeneralNote.hxx>
#include<IGESDimen_HArray1OfLeaderArrow.hxx>
#include<IGESDimen_LeaderArrow.hxx>
#include<IGESDimen_LinearDimension.hxx>
#include<IGESDimen_NewDimensionedGeometry.hxx>
#include<IGESDimen_NewGeneralNote.hxx>
#include<IGESDimen_OrdinateDimension.hxx>
#include<IGESDimen_PointDimension.hxx>
#include<IGESDimen_Protocol.hxx>
#include<IGESDimen_RadiusDimension.hxx>
#include<IGESDimen_ReadWriteModule.hxx>
#include<IGESDimen_Section.hxx>
#include<IGESDimen_SectionedArea.hxx>
#include<IGESDimen_SpecificModule.hxx>
#include<IGESDimen_ToolAngularDimension.hxx>
#include<IGESDimen_ToolBasicDimension.hxx>
#include<IGESDimen_ToolCenterLine.hxx>
#include<IGESDimen_ToolCurveDimension.hxx>
#include<IGESDimen_ToolDiameterDimension.hxx>
#include<IGESDimen_ToolDimensionDisplayData.hxx>
#include<IGESDimen_ToolDimensionTolerance.hxx>
#include<IGESDimen_ToolDimensionUnits.hxx>
#include<IGESDimen_ToolDimensionedGeometry.hxx>
#include<IGESDimen_ToolFlagNote.hxx>
#include<IGESDimen_ToolGeneralLabel.hxx>
#include<IGESDimen_ToolGeneralNote.hxx>
#include<IGESDimen_ToolGeneralSymbol.hxx>
#include<IGESDimen_ToolLeaderArrow.hxx>
#include<IGESDimen_ToolLinearDimension.hxx>
#include<IGESDimen_ToolNewDimensionedGeometry.hxx>
#include<IGESDimen_ToolNewGeneralNote.hxx>
#include<IGESDimen_ToolOrdinateDimension.hxx>
#include<IGESDimen_ToolPointDimension.hxx>
#include<IGESDimen_ToolRadiusDimension.hxx>
#include<IGESDimen_ToolSection.hxx>
#include<IGESDimen_ToolSectionedArea.hxx>
#include<IGESDimen_ToolWitnessLine.hxx>
#include<IGESDimen_WitnessLine.hxx>

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
#include<gp_XY.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_IGESData_IGESReaderData.hxx>
#include<IGESData_ParamReader.hxx>
#include<IGESData_IGESWriter.hxx>
#include<Interface_EntityIterator.hxx>
#include<IGESData_DirChecker.hxx>
#include<Interface_ShareTool.hxx>
#include<Handle_Interface_Check.hxx>
#include<Interface_CopyTool.hxx>
#include<IGESData_IGESDumper.hxx>
#include<Handle_Message_Messenger.hxx>
#include<Handle_TColgp_HArray1OfXY.hxx>
#include<gp_Pnt.hxx>
#include<Handle_IGESData_HArray1OfIGESEntity.hxx>
#include<Handle_IGESData_IGESEntity.hxx>
#include<gp_XYZ.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_IGESGraph_HArray1OfTextFontDef.hxx>
#include<Handle_TColgp_HArray1OfXYZ.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_IGESGraph_TextFontDef.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_IGESGeom_CircularArc.hxx>
#include<Handle_IGESGeom_CompositeCurve.hxx>
#include<IGESDimen.hxx>
%}
