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

#include<Handle_StdLDrivers_DocumentRetrievalDriver.hxx>
#include<Handle_StdLDrivers_DocumentStorageDriver.hxx>
#include<StdLDrivers.hxx>
#include<StdLDrivers_DocumentRetrievalDriver.hxx>
#include<StdLDrivers_DocumentStorageDriver.hxx>

// Additional headers necessary for compilation.

#include<MDF.hxx>
#include<MDF_ARDriver.hxx>
#include<MDF_ARDriverHSequence.hxx>
#include<MDF_ARDriverSequence.hxx>
#include<MDF_ARDriverTable.hxx>
#include<MDF_ASDriver.hxx>
#include<MDF_ASDriverHSequence.hxx>
#include<MDF_ASDriverSequence.hxx>
#include<MDF_ASDriverTable.hxx>
#include<MDF_DataMapIteratorOfTypeARDriverMap.hxx>
#include<MDF_DataMapIteratorOfTypeASDriverMap.hxx>
#include<MDF_DataMapIteratorOfTypeDriverListMapOfARDriverTable.hxx>
#include<MDF_DataMapIteratorOfTypeDriverListMapOfASDriverTable.hxx>
#include<MDF_DataMapNodeOfTypeARDriverMap.hxx>
#include<MDF_DataMapNodeOfTypeASDriverMap.hxx>
#include<MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable.hxx>
#include<MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable.hxx>
#include<MDF_DriverListOfARDriverTable.hxx>
#include<MDF_DriverListOfASDriverTable.hxx>
#include<MDF_ListIteratorOfDriverListOfARDriverTable.hxx>
#include<MDF_ListIteratorOfDriverListOfASDriverTable.hxx>
#include<MDF_ListNodeOfDriverListOfARDriverTable.hxx>
#include<MDF_ListNodeOfDriverListOfASDriverTable.hxx>
#include<MDF_RRelocationTable.hxx>
#include<MDF_ReferenceRetrievalDriver.hxx>
#include<MDF_ReferenceStorageDriver.hxx>
#include<MDF_SRelocationTable.hxx>
#include<MDF_SequenceNodeOfARDriverSequence.hxx>
#include<MDF_SequenceNodeOfASDriverSequence.hxx>
#include<MDF_TagSourceRetrievalDriver.hxx>
#include<MDF_TagSourceStorageDriver.hxx>
#include<MDF_Tool.hxx>
#include<MDF_TypeARDriverMap.hxx>
#include<MDF_TypeASDriverMap.hxx>
#include<MDF_TypeDriverListMapOfARDriverTable.hxx>
#include<MDF_TypeDriverListMapOfASDriverTable.hxx>
#include<PCDM.hxx>
#include<PCDMShape_Document.hxx>
#include<PCDM_BaseDriverPointer.hxx>
#include<PCDM_DOMHeaderParser.hxx>
#include<PCDM_Document.hxx>
#include<PCDM_DriverError.hxx>
#include<PCDM_ReadWriter.hxx>
#include<PCDM_ReadWriter_1.hxx>
#include<PCDM_Reader.hxx>
#include<PCDM_ReaderStatus.hxx>
#include<PCDM_Reference.hxx>
#include<PCDM_ReferenceIterator.hxx>
#include<PCDM_RetrievalDriver.hxx>
#include<PCDM_SequenceNodeOfSequenceOfDocument.hxx>
#include<PCDM_SequenceNodeOfSequenceOfReference.hxx>
#include<PCDM_SequenceOfDocument.hxx>
#include<PCDM_SequenceOfReference.hxx>
#include<PCDM_StorageDriver.hxx>
#include<PCDM_TypeOfFileDriver.hxx>
#include<PCDM_Writer.hxx>
#include<Standard.hxx>
#include<Standard_AbortiveTransaction.hxx>
#include<Standard_Address.hxx>
#include<Standard_AncestorIterator.hxx>
#include<Standard_Boolean.hxx>
#include<Standard_Byte.hxx>
#include<Standard_CString.hxx>
#include<Standard_Character.hxx>
#include<Standard_ConstructionError.hxx>
#include<Standard_DefineHandle.hxx>
#include<Standard_DimensionError.hxx>
#include<Standard_DimensionMismatch.hxx>
#include<Standard_DivideByZero.hxx>
#include<Standard_DomainError.hxx>
#include<Standard_ErrorHandler.hxx>
#include<Standard_ErrorHandlerCallback.hxx>
#include<Standard_ExtCharacter.hxx>
#include<Standard_ExtString.hxx>
#include<Standard_Failure.hxx>
#include<Standard_GUID.hxx>
#include<Standard_HandlerStatus.hxx>
#include<Standard_IStream.hxx>
#include<Standard_ImmutableObject.hxx>
#include<Standard_Integer.hxx>
#include<Standard_InternalType.hxx>
#include<Standard_JmpBuf.hxx>
#include<Standard_KindOfType.hxx>
#include<Standard_LicenseError.hxx>
#include<Standard_LicenseNotFound.hxx>
#include<Standard_MMgrOpt.hxx>
#include<Standard_MMgrRaw.hxx>
#include<Standard_MMgrRoot.hxx>
#include<Standard_Macro.hxx>
#include<Standard_MultiplyDefined.hxx>
#include<Standard_Mutex.hxx>
#include<Standard_NegativeValue.hxx>
#include<Standard_NoMoreObject.hxx>
#include<Standard_NoSuchObject.hxx>
#include<Standard_NotImplemented.hxx>
#include<Standard_NullObject.hxx>
#include<Standard_NullValue.hxx>
#include<Standard_NumericError.hxx>
#include<Standard_OId.hxx>
#include<Standard_OStream.hxx>
#include<Standard_OutOfMemory.hxx>
#include<Standard_OutOfRange.hxx>
#include<Standard_Overflow.hxx>
#include<Standard_PCharacter.hxx>
#include<Standard_PErrorHandler.hxx>
#include<Standard_PExtCharacter.hxx>
#include<Standard_Persistent.hxx>
#include<Standard_Persistent_proto.hxx>
#include<Standard_PrimitiveTypes.hxx>
#include<Standard_ProgramError.hxx>
#include<Standard_RangeError.hxx>
#include<Standard_Real.hxx>
#include<Standard_SStream.hxx>
#include<Standard_ShortReal.hxx>
#include<Standard_Size.hxx>
#include<Standard_Static.hxx>
#include<Standard_Storable.hxx>
#include<Standard_Stream.hxx>
#include<Standard_String.hxx>
#include<Standard_ThreadId.hxx>
#include<Standard_TooManyUsers.hxx>
#include<Standard_Transient.hxx>
#include<Standard_Type.hxx>
#include<Standard_TypeDef.hxx>
#include<Standard_TypeMismatch.hxx>
#include<Standard_UUID.hxx>
#include<Standard_Underflow.hxx>
#include<Standard_Version.hxx>
#include<Standard_WayOfLife.hxx>
#include<Standard_ctype.hxx>
#include<Standard_math.hxx>
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
#include<Storage_MapIteratorOfMapOfAsciiString.hxx>
#include<Storage_MapOfAsciiString.hxx>
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
#include<Storage_StdMapNodeOfMapOfAsciiString.hxx>
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
#include<StdLDrivers.hxx>
#include<Standard_GUID.hxx>
#include<Handle_CDM_Document.hxx>
#include<PCDM_SequenceOfDocument.hxx>
#include<Handle_MDF_ASDriverTable.hxx>
#include<Handle_CDM_MessageDriver.hxx>
#include<Handle_MDF_ARDriverTable.hxx>
%}
