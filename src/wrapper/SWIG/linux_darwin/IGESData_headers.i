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

#include<Handle_IGESData_ColorEntity.hxx>
#include<Handle_IGESData_DefaultGeneral.hxx>
#include<Handle_IGESData_DefaultSpecific.hxx>
#include<Handle_IGESData_FileProtocol.hxx>
#include<Handle_IGESData_FileRecognizer.hxx>
#include<Handle_IGESData_FreeFormatEntity.hxx>
#include<Handle_IGESData_GeneralModule.hxx>
#include<Handle_IGESData_GlobalNodeOfSpecificLib.hxx>
#include<Handle_IGESData_GlobalNodeOfWriterLib.hxx>
#include<Handle_IGESData_HArray1OfIGESEntity.hxx>
#include<Handle_IGESData_IGESEntity.hxx>
#include<Handle_IGESData_IGESModel.hxx>
#include<Handle_IGESData_IGESReaderData.hxx>
#include<Handle_IGESData_LabelDisplayEntity.hxx>
#include<Handle_IGESData_LevelListEntity.hxx>
#include<Handle_IGESData_LineFontEntity.hxx>
#include<Handle_IGESData_NameEntity.hxx>
#include<Handle_IGESData_NodeOfSpecificLib.hxx>
#include<Handle_IGESData_NodeOfWriterLib.hxx>
#include<Handle_IGESData_Protocol.hxx>
#include<Handle_IGESData_ReadWriteModule.hxx>
#include<Handle_IGESData_SingleParentEntity.hxx>
#include<Handle_IGESData_SpecificModule.hxx>
#include<Handle_IGESData_ToolLocation.hxx>
#include<Handle_IGESData_TransfEntity.hxx>
#include<Handle_IGESData_UndefinedEntity.hxx>
#include<Handle_IGESData_ViewKindEntity.hxx>
#include<IGESData.hxx>
#include<IGESData_Array1OfDirPart.hxx>
#include<IGESData_Array1OfIGESEntity.hxx>
#include<IGESData_BasicEditor.hxx>
#include<IGESData_ColorEntity.hxx>
#include<IGESData_DefList.hxx>
#include<IGESData_DefSwitch.hxx>
#include<IGESData_DefType.hxx>
#include<IGESData_DefaultGeneral.hxx>
#include<IGESData_DefaultSpecific.hxx>
#include<IGESData_DirChecker.hxx>
#include<IGESData_DirPart.hxx>
#include<IGESData_Dump.hxx>
#include<IGESData_FileProtocol.hxx>
#include<IGESData_FileRecognizer.hxx>
#include<IGESData_FreeFormatEntity.hxx>
#include<IGESData_GeneralModule.hxx>
#include<IGESData_GlobalNodeOfSpecificLib.hxx>
#include<IGESData_GlobalNodeOfWriterLib.hxx>
#include<IGESData_GlobalSection.hxx>
#include<IGESData_HArray1OfIGESEntity.hxx>
#include<IGESData_IGESDumper.hxx>
#include<IGESData_IGESEntity.hxx>
#include<IGESData_IGESModel.hxx>
#include<IGESData_IGESReaderData.hxx>
#include<IGESData_IGESReaderTool.hxx>
#include<IGESData_IGESType.hxx>
#include<IGESData_IGESWriter.hxx>
#include<IGESData_LabelDisplayEntity.hxx>
#include<IGESData_LevelListEntity.hxx>
#include<IGESData_LineFontEntity.hxx>
#include<IGESData_NameEntity.hxx>
#include<IGESData_NodeOfSpecificLib.hxx>
#include<IGESData_NodeOfWriterLib.hxx>
#include<IGESData_ParamCursor.hxx>
#include<IGESData_ParamReader.hxx>
#include<IGESData_Protocol.hxx>
#include<IGESData_ReadStage.hxx>
#include<IGESData_ReadWriteModule.hxx>
#include<IGESData_SingleParentEntity.hxx>
#include<IGESData_SpecificLib.hxx>
#include<IGESData_SpecificModule.hxx>
#include<IGESData_Status.hxx>
#include<IGESData_ToolLocation.hxx>
#include<IGESData_TransfEntity.hxx>
#include<IGESData_UndefinedEntity.hxx>
#include<IGESData_ViewKindEntity.hxx>
#include<IGESData_WriterLib.hxx>

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
#include<Handle_TCollection_HAsciiString.hxx>
#include<gp_GTrsf.hxx>
#include<Interface_EntityIterator.hxx>
#include<Handle_Standard_Type.hxx>
#include<Handle_Message_Messenger.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Handle_Interface_Check.hxx>
#include<Handle_TColStd_HSequenceOfHAsciiString.hxx>
#include<IGESData.hxx>
#include<gp_Trsf.hxx>
#include<Handle_Interface_ParamList.hxx>
#include<Message_Msg.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Interface_EntityList.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_TColStd_HSequenceOfInteger.hxx>
#include<Interface_ShareTool.hxx>
#include<Interface_CopyTool.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_ParamSet.hxx>
%}
