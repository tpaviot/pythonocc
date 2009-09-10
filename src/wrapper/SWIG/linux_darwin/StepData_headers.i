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

#include<Handle_StepData_DefaultGeneral.hxx>
#include<Handle_StepData_DescrGeneral.hxx>
#include<Handle_StepData_DescrProtocol.hxx>
#include<Handle_StepData_DescrReadWrite.hxx>
#include<Handle_StepData_Described.hxx>
#include<Handle_StepData_ECDescr.hxx>
#include<Handle_StepData_EDescr.hxx>
#include<Handle_StepData_ESDescr.hxx>
#include<Handle_StepData_FileProtocol.hxx>
#include<Handle_StepData_FileRecognizer.hxx>
#include<Handle_StepData_FreeFormEntity.hxx>
#include<Handle_StepData_GeneralModule.hxx>
#include<Handle_StepData_GlobalNodeOfWriterLib.hxx>
#include<Handle_StepData_HArray1OfField.hxx>
#include<Handle_StepData_NodeOfWriterLib.hxx>
#include<Handle_StepData_PDescr.hxx>
#include<Handle_StepData_Plex.hxx>
#include<Handle_StepData_Protocol.hxx>
#include<Handle_StepData_ReadWriteModule.hxx>
#include<Handle_StepData_SelectArrReal.hxx>
#include<Handle_StepData_SelectInt.hxx>
#include<Handle_StepData_SelectMember.hxx>
#include<Handle_StepData_SelectNamed.hxx>
#include<Handle_StepData_SelectReal.hxx>
#include<Handle_StepData_Simple.hxx>
#include<Handle_StepData_StepModel.hxx>
#include<Handle_StepData_StepReaderData.hxx>
#include<Handle_StepData_UndefinedEntity.hxx>
#include<StepData.hxx>
#include<StepData_Array1OfField.hxx>
#include<StepData_DefaultGeneral.hxx>
#include<StepData_DescrGeneral.hxx>
#include<StepData_DescrProtocol.hxx>
#include<StepData_DescrReadWrite.hxx>
#include<StepData_Described.hxx>
#include<StepData_ECDescr.hxx>
#include<StepData_EDescr.hxx>
#include<StepData_ESDescr.hxx>
#include<StepData_EnumTool.hxx>
#include<StepData_Field.hxx>
#include<StepData_FieldList.hxx>
#include<StepData_FieldList1.hxx>
#include<StepData_FieldListD.hxx>
#include<StepData_FieldListN.hxx>
#include<StepData_FileProtocol.hxx>
#include<StepData_FileRecognizer.hxx>
#include<StepData_FreeFormEntity.hxx>
#include<StepData_GeneralModule.hxx>
#include<StepData_GlobalNodeOfWriterLib.hxx>
#include<StepData_HArray1OfField.hxx>
#include<StepData_HeaderTool.hxx>
#include<StepData_Logical.hxx>
#include<StepData_NodeOfWriterLib.hxx>
#include<StepData_PDescr.hxx>
#include<StepData_Plex.hxx>
#include<StepData_Protocol.hxx>
#include<StepData_ReadWriteModule.hxx>
#include<StepData_SelectArrReal.hxx>
#include<StepData_SelectInt.hxx>
#include<StepData_SelectMember.hxx>
#include<StepData_SelectNamed.hxx>
#include<StepData_SelectReal.hxx>
#include<StepData_SelectType.hxx>
#include<StepData_Simple.hxx>
#include<StepData_StepDumper.hxx>
#include<StepData_StepModel.hxx>
#include<StepData_StepReaderData.hxx>
#include<StepData_StepReaderTool.hxx>
#include<StepData_StepWriter.hxx>
#include<StepData_UndefinedEntity.hxx>
#include<StepData_WriterLib.hxx>

// Additional headers necessary for compilation.

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
#include<TColStd_SequenceOfAsciiString.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_Standard_Type.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Interface_EntityIterator.hxx>
#include<Handle_Interface_Check.hxx>
#include<Handle_Message_Messenger.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Interface_ShareTool.hxx>
#include<Interface_CopyTool.hxx>
#include<Handle_TColStd_HSequenceOfAsciiString.hxx>
#include<StepData.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Interface_Graph.hxx>
#include<Interface_CheckIterator.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
%}
