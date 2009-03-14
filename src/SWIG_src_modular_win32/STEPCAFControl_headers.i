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

#include<Handle_STEPCAFControl_ActorWrite.hxx>
#include<Handle_STEPCAFControl_Controller.hxx>
#include<Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile.hxx>
#include<Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape.hxx>
#include<Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile.hxx>
#include<Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile.hxx>
#include<Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel.hxx>
#include<Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD.hxx>
#include<Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR.hxx>
#include<Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<Handle_STEPCAFControl_DictionaryOfExternFile.hxx>
#include<Handle_STEPCAFControl_ExternFile.hxx>
#include<Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile.hxx>
#include<STEPCAFControl_ActorWrite.hxx>
#include<STEPCAFControl_Controller.hxx>
#include<STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile.hxx>
#include<STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape.hxx>
#include<STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile.hxx>
#include<STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile.hxx>
#include<STEPCAFControl_DataMapIteratorOfDataMapOfShapeLabel.hxx>
#include<STEPCAFControl_DataMapIteratorOfDataMapOfShapePD.hxx>
#include<STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR.hxx>
#include<STEPCAFControl_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile.hxx>
#include<STEPCAFControl_DataMapNodeOfDataMapOfLabelShape.hxx>
#include<STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile.hxx>
#include<STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile.hxx>
#include<STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel.hxx>
#include<STEPCAFControl_DataMapNodeOfDataMapOfShapePD.hxx>
#include<STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR.hxx>
#include<STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<STEPCAFControl_DataMapOfLabelExternFile.hxx>
#include<STEPCAFControl_DataMapOfLabelShape.hxx>
#include<STEPCAFControl_DataMapOfPDExternFile.hxx>
#include<STEPCAFControl_DataMapOfSDRExternFile.hxx>
#include<STEPCAFControl_DataMapOfShapeLabel.hxx>
#include<STEPCAFControl_DataMapOfShapePD.hxx>
#include<STEPCAFControl_DataMapOfShapeSDR.hxx>
#include<STEPCAFControl_DataMapOfShapeTransient.hxx>
#include<STEPCAFControl_DictionaryOfExternFile.hxx>
#include<STEPCAFControl_ExternFile.hxx>
#include<STEPCAFControl_IteratorOfDictionaryOfExternFile.hxx>
#include<STEPCAFControl_Reader.hxx>
#include<STEPCAFControl_StackItemOfDictionaryOfExternFile.hxx>
#include<STEPCAFControl_Writer.hxx>

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
#include<Interface_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<Interface_DataMapIteratorOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapOfIntegerTransient.hxx>
#include<Interface_DataMapOfTransientInteger.hxx>
#include<Interface_DataState.hxx>
#include<Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Interface_IndexedMapOfAsciiString.hxx>
#include<Interface_MapAsciiStringHasher.hxx>
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
#include<TransferBRep.hxx>
#include<TransferBRep_BinderOfShape.hxx>
#include<TransferBRep_HSequenceOfTransferResultInfo.hxx>
#include<TransferBRep_OrientedShapeMapper.hxx>
#include<TransferBRep_Reader.hxx>
#include<TransferBRep_SequenceNodeOfSequenceOfTransferResultInfo.hxx>
#include<TransferBRep_SequenceOfTransferResultInfo.hxx>
#include<TransferBRep_ShapeBinder.hxx>
#include<TransferBRep_ShapeInfo.hxx>
#include<TransferBRep_ShapeListBinder.hxx>
#include<TransferBRep_ShapeMapper.hxx>
#include<TransferBRep_TransferResultInfo.hxx>
#include<Transfer_ActorDispatch.hxx>
#include<Transfer_ActorOfFinderProcess.hxx>
#include<Transfer_ActorOfProcessForFinder.hxx>
#include<Transfer_ActorOfProcessForTransient.hxx>
#include<Transfer_ActorOfTransientProcess.hxx>
#include<Transfer_Binder.hxx>
#include<Transfer_BinderOfTransientInteger.hxx>
#include<Transfer_DataInfo.hxx>
#include<Transfer_DataMapIteratorOfDataMapOfTransientTransient.hxx>
#include<Transfer_DataMapNodeOfDataMapOfTransientTransient.hxx>
#include<Transfer_DataMapOfTransientTransient.hxx>
#include<Transfer_DispatchControl.hxx>
#include<Transfer_FindHasher.hxx>
#include<Transfer_Finder.hxx>
#include<Transfer_FinderProcess.hxx>
#include<Transfer_HSequenceOfBinder.hxx>
#include<Transfer_HSequenceOfFinder.hxx>
#include<Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder.hxx>
#include<Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient.hxx>
#include<Transfer_IteratorOfProcessForFinder.hxx>
#include<Transfer_IteratorOfProcessForTransient.hxx>
#include<Transfer_MapContainer.hxx>
#include<Transfer_MultipleBinder.hxx>
#include<Transfer_ProcessForFinder.hxx>
#include<Transfer_ProcessForTransient.hxx>
#include<Transfer_ResultFromModel.hxx>
#include<Transfer_ResultFromTransient.hxx>
#include<Transfer_SequenceNodeOfSequenceOfBinder.hxx>
#include<Transfer_SequenceNodeOfSequenceOfFinder.hxx>
#include<Transfer_SequenceOfBinder.hxx>
#include<Transfer_SequenceOfFinder.hxx>
#include<Transfer_SimpleBinderOfTransient.hxx>
#include<Transfer_StatusExec.hxx>
#include<Transfer_StatusResult.hxx>
#include<Transfer_TransferDeadLoop.hxx>
#include<Transfer_TransferDispatch.hxx>
#include<Transfer_TransferFailure.hxx>
#include<Transfer_TransferInput.hxx>
#include<Transfer_TransferIterator.hxx>
#include<Transfer_TransferMapOfProcessForFinder.hxx>
#include<Transfer_TransferMapOfProcessForTransient.hxx>
#include<Transfer_TransferOutput.hxx>
#include<Transfer_TransientListBinder.hxx>
#include<Transfer_TransientMapper.hxx>
#include<Transfer_TransientProcess.hxx>
#include<Transfer_UndefMode.hxx>
#include<Transfer_VoidBinder.hxx>
#include<XSControl.hxx>
#include<XSControl_ConnectedShapes.hxx>
#include<XSControl_Controller.hxx>
#include<XSControl_FuncShape.hxx>
#include<XSControl_Functions.hxx>
#include<XSControl_Reader.hxx>
#include<XSControl_SelectForTransfer.hxx>
#include<XSControl_SignTransferStatus.hxx>
#include<XSControl_TransferReader.hxx>
#include<XSControl_TransferWriter.hxx>
#include<XSControl_Utils.hxx>
#include<XSControl_Vars.hxx>
#include<XSControl_WorkSession.hxx>
#include<XSControl_Writer.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_XSControl_WorkSession.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<TDF_Label.hxx>
#include<Handle_StepBasic_ProductDefinition.hxx>
#include<Handle_StepShape_ShapeDefinitionRepresentation.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_TDocStd_Document.hxx>
#include<Handle_StepRepr_NextAssemblyUsageOccurrence.hxx>
#include<Handle_XCAFDoc_ShapeTool.hxx>
#include<STEPConstruct_Tool.hxx>
%}
