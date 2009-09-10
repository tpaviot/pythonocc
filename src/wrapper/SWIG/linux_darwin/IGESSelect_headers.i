/*

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
%{

// Headers necessary to define wrapped classes.

#include<Handle_IGESSelect_Activator.hxx>
#include<Handle_IGESSelect_AddFileComment.hxx>
#include<Handle_IGESSelect_AddGroup.hxx>
#include<Handle_IGESSelect_AutoCorrect.hxx>
#include<Handle_IGESSelect_ChangeLevelList.hxx>
#include<Handle_IGESSelect_ChangeLevelNumber.hxx>
#include<Handle_IGESSelect_ComputeStatus.hxx>
#include<Handle_IGESSelect_CounterOfLevelNumber.hxx>
#include<Handle_IGESSelect_DispPerDrawing.hxx>
#include<Handle_IGESSelect_DispPerSingleView.hxx>
#include<Handle_IGESSelect_Dumper.hxx>
#include<Handle_IGESSelect_EditDirPart.hxx>
#include<Handle_IGESSelect_EditHeader.hxx>
#include<Handle_IGESSelect_FileModifier.hxx>
#include<Handle_IGESSelect_FloatFormat.hxx>
#include<Handle_IGESSelect_IGESName.hxx>
#include<Handle_IGESSelect_IGESTypeForm.hxx>
#include<Handle_IGESSelect_ModelModifier.hxx>
#include<Handle_IGESSelect_RebuildDrawings.hxx>
#include<Handle_IGESSelect_RebuildGroups.hxx>
#include<Handle_IGESSelect_RemoveCurves.hxx>
#include<Handle_IGESSelect_SelectBasicGeom.hxx>
#include<Handle_IGESSelect_SelectBypassGroup.hxx>
#include<Handle_IGESSelect_SelectBypassSubfigure.hxx>
#include<Handle_IGESSelect_SelectDrawingFrom.hxx>
#include<Handle_IGESSelect_SelectFaces.hxx>
#include<Handle_IGESSelect_SelectFromDrawing.hxx>
#include<Handle_IGESSelect_SelectFromSingleView.hxx>
#include<Handle_IGESSelect_SelectLevelNumber.hxx>
#include<Handle_IGESSelect_SelectName.hxx>
#include<Handle_IGESSelect_SelectPCurves.hxx>
#include<Handle_IGESSelect_SelectSingleViewFrom.hxx>
#include<Handle_IGESSelect_SelectSubordinate.hxx>
#include<Handle_IGESSelect_SelectVisibleStatus.hxx>
#include<Handle_IGESSelect_SetGlobalParameter.hxx>
#include<Handle_IGESSelect_SetLabel.hxx>
#include<Handle_IGESSelect_SetVersion5.hxx>
#include<Handle_IGESSelect_SignColor.hxx>
#include<Handle_IGESSelect_SignLevelNumber.hxx>
#include<Handle_IGESSelect_SignStatus.hxx>
#include<Handle_IGESSelect_SplineToBSpline.hxx>
#include<Handle_IGESSelect_UpdateCreationDate.hxx>
#include<Handle_IGESSelect_UpdateFileName.hxx>
#include<Handle_IGESSelect_UpdateLastChange.hxx>
#include<Handle_IGESSelect_ViewSorter.hxx>
#include<Handle_IGESSelect_WorkLibrary.hxx>
#include<IGESSelect.hxx>
#include<IGESSelect_Activator.hxx>
#include<IGESSelect_AddFileComment.hxx>
#include<IGESSelect_AddGroup.hxx>
#include<IGESSelect_AutoCorrect.hxx>
#include<IGESSelect_ChangeLevelList.hxx>
#include<IGESSelect_ChangeLevelNumber.hxx>
#include<IGESSelect_ComputeStatus.hxx>
#include<IGESSelect_CounterOfLevelNumber.hxx>
#include<IGESSelect_DispPerDrawing.hxx>
#include<IGESSelect_DispPerSingleView.hxx>
#include<IGESSelect_Dumper.hxx>
#include<IGESSelect_EditDirPart.hxx>
#include<IGESSelect_EditHeader.hxx>
#include<IGESSelect_FileModifier.hxx>
#include<IGESSelect_FloatFormat.hxx>
#include<IGESSelect_IGESName.hxx>
#include<IGESSelect_IGESTypeForm.hxx>
#include<IGESSelect_ModelModifier.hxx>
#include<IGESSelect_RebuildDrawings.hxx>
#include<IGESSelect_RebuildGroups.hxx>
#include<IGESSelect_RemoveCurves.hxx>
#include<IGESSelect_SelectBasicGeom.hxx>
#include<IGESSelect_SelectBypassGroup.hxx>
#include<IGESSelect_SelectBypassSubfigure.hxx>
#include<IGESSelect_SelectDrawingFrom.hxx>
#include<IGESSelect_SelectFaces.hxx>
#include<IGESSelect_SelectFromDrawing.hxx>
#include<IGESSelect_SelectFromSingleView.hxx>
#include<IGESSelect_SelectLevelNumber.hxx>
#include<IGESSelect_SelectName.hxx>
#include<IGESSelect_SelectPCurves.hxx>
#include<IGESSelect_SelectSingleViewFrom.hxx>
#include<IGESSelect_SelectSubordinate.hxx>
#include<IGESSelect_SelectVisibleStatus.hxx>
#include<IGESSelect_SetGlobalParameter.hxx>
#include<IGESSelect_SetLabel.hxx>
#include<IGESSelect_SetVersion5.hxx>
#include<IGESSelect_SignColor.hxx>
#include<IGESSelect_SignLevelNumber.hxx>
#include<IGESSelect_SignStatus.hxx>
#include<IGESSelect_SplineToBSpline.hxx>
#include<IGESSelect_UpdateCreationDate.hxx>
#include<IGESSelect_UpdateFileName.hxx>
#include<IGESSelect_UpdateLastChange.hxx>
#include<IGESSelect_ViewSorter.hxx>
#include<IGESSelect_WorkLibrary.hxx>

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
#include<IFSelect_ContextModif.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Interface_CopyTool.hxx>
#include<Handle_IGESData_IGESModel.hxx>
#include<Handle_IGESData_Protocol.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_IFSelect_IntParam.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Interface_EntityIterator.hxx>
#include<Interface_Graph.hxx>
#include<Handle_IGESData_IGESEntity.hxx>
#include<Handle_TColStd_HSequenceOfTransient.hxx>
#include<Handle_IFSelect_PacketList.hxx>
#include<Handle_IFSelect_EditForm.hxx>
#include<IFSelect_ContextWrite.hxx>
#include<Handle_Message_Messenger.hxx>
#include<IGESData_IGESWriter.hxx>
#include<Handle_TColStd_HSequenceOfInteger.hxx>
#include<IFSelect_SessionFile.hxx>
#include<IGESSelect.hxx>
#include<Handle_IFSelect_SessionPilot.hxx>
#include<IFGraph_SubPartsIterator.hxx>
#include<Handle_TColStd_HSequenceOfHAsciiString.hxx>
#include<Interface_CheckIterator.hxx>
%}
