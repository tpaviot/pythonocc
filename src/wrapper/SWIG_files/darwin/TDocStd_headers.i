/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_TDocStd_Application.hxx>
#include<Handle_TDocStd_ApplicationDelta.hxx>
#include<Handle_TDocStd_CompoundDelta.hxx>
#include<Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap.hxx>
#include<Handle_TDocStd_Document.hxx>
#include<Handle_TDocStd_Modified.hxx>
#include<Handle_TDocStd_MultiTransactionManager.hxx>
#include<Handle_TDocStd_Owner.hxx>
#include<Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta.hxx>
#include<Handle_TDocStd_SequenceNodeOfSequenceOfDocument.hxx>
#include<Handle_TDocStd_XLink.hxx>
#include<Handle_TDocStd_XLinkRoot.hxx>
#include<TDocStd.hxx>
#include<TDocStd_Application.hxx>
#include<TDocStd_ApplicationDelta.hxx>
#include<TDocStd_CompoundDelta.hxx>
#include<TDocStd_Context.hxx>
#include<TDocStd_DataMapIteratorOfLabelIDMapDataMap.hxx>
#include<TDocStd_DataMapNodeOfLabelIDMapDataMap.hxx>
#include<TDocStd_Document.hxx>
#include<TDocStd_LabelIDMapDataMap.hxx>
#include<TDocStd_Modified.hxx>
#include<TDocStd_MultiTransactionManager.hxx>
#include<TDocStd_Owner.hxx>
#include<TDocStd_PathParser.hxx>
#include<TDocStd_SequenceNodeOfSequenceOfApplicationDelta.hxx>
#include<TDocStd_SequenceNodeOfSequenceOfDocument.hxx>
#include<TDocStd_SequenceOfApplicationDelta.hxx>
#include<TDocStd_SequenceOfDocument.hxx>
#include<TDocStd_XLink.hxx>
#include<TDocStd_XLinkIterator.hxx>
#include<TDocStd_XLinkPtr.hxx>
#include<TDocStd_XLinkRoot.hxx>
#include<TDocStd_XLinkTool.hxx>

// Additional headers necessary for compilation.

#include<Storage.hxx>
#include<Storage_ArrayOfCallBack.hxx>
#include<Storage_ArrayOfSchema.hxx>
#include<Storage_BaseDriver.hxx>
#include<Storage_BucketOfPersistent.hxx>
#include<Storage_CallBack.hxx>
#include<Storage_Container.hxx>
#include<Storage_Data.hxx>
#include<Storage_DataMapIteratorOfMapOfCallBack.hxx>
#include<Storage_DataMapIteratorOfMapOfPers.hxx>
#include<Storage_DataMapNodeOfMapOfCallBack.hxx>
#include<Storage_DataMapNodeOfMapOfPers.hxx>
#include<Storage_DefaultCallBack.hxx>
#include<Storage_Error.hxx>
#include<Storage_HArrayOfCallBack.hxx>
#include<Storage_HArrayOfSchema.hxx>
#include<Storage_HPArray.hxx>
#include<Storage_HSeqOfCallBack.hxx>
#include<Storage_HSeqOfPersistent.hxx>
#include<Storage_HSeqOfRoot.hxx>
#include<Storage_HeaderData.hxx>
#include<Storage_IndexedDataMapNodeOfPType.hxx>
#include<Storage_InternalData.hxx>
#include<Storage_Macros.hxx>
#include<Storage_MapOfCallBack.hxx>
#include<Storage_MapOfPers.hxx>
#include<Storage_MapPSDHasher.hxx>
#include<Storage_OpenMode.hxx>
#include<Storage_PArray.hxx>
#include<Storage_PType.hxx>
#include<Storage_Position.hxx>
#include<Storage_Root.hxx>
#include<Storage_RootData.hxx>
#include<Storage_Schema.hxx>
#include<Storage_SeqOfCallBack.hxx>
#include<Storage_SeqOfPersistent.hxx>
#include<Storage_SeqOfRoot.hxx>
#include<Storage_SequenceNodeOfSeqOfCallBack.hxx>
#include<Storage_SequenceNodeOfSeqOfPersistent.hxx>
#include<Storage_SequenceNodeOfSeqOfRoot.hxx>
#include<Storage_SolveMode.hxx>
#include<Storage_StreamExtCharParityError.hxx>
#include<Storage_StreamFormatError.hxx>
#include<Storage_StreamModeError.hxx>
#include<Storage_StreamReadError.hxx>
#include<Storage_StreamTypeMismatchError.hxx>
#include<Storage_StreamUnknownTypeError.hxx>
#include<Storage_StreamWriteError.hxx>
#include<Storage_TypeData.hxx>
#include<Storage_TypedCallBack.hxx>
#include<Storage_stCONSTclCOM.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TDF_Label.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_TDF_Data.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_CDM_Document.hxx>
#include<TDocStd.hxx>
#include<TDF_IDList.hxx>
#include<Handle_TDF_DataSet.hxx>
#include<Handle_TDF_RelocationTable.hxx>
#include<Handle_Resource_Manager.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<TDF_IDMap.hxx>
#include<Handle_TDF_Reference.hxx>
#include<Handle_TDF_AttributeDelta.hxx>
%}
