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
#include <Handle_Standard_AbortiveTransaction.hxx>
#include <Handle_Standard_ConstructionError.hxx>
#include <Handle_Standard_DimensionError.hxx>
#include <Handle_Standard_DimensionMismatch.hxx>
#include <Handle_Standard_DivideByZero.hxx>
#include <Handle_Standard_DomainError.hxx>
#include <Handle_Standard_Failure.hxx>
#include <Handle_Standard_ImmutableObject.hxx>
#include <Handle_Standard_LicenseError.hxx>
#include <Handle_Standard_LicenseNotFound.hxx>
#include <Handle_Standard_MultiplyDefined.hxx>
#include <Handle_Standard_NegativeValue.hxx>
#include <Handle_Standard_NoMoreObject.hxx>
#include <Handle_Standard_NoSuchObject.hxx>
#include <Handle_Standard_NotImplemented.hxx>
#include <Handle_Standard_NullObject.hxx>
#include <Handle_Standard_NullValue.hxx>
#include <Handle_Standard_NumericError.hxx>
#include <Handle_Standard_OutOfMemory.hxx>
#include <Handle_Standard_OutOfRange.hxx>
#include <Handle_Standard_Overflow.hxx>
#include <Handle_Standard_Persistent.hxx>
#include <Handle_Standard_ProgramError.hxx>
#include <Handle_Standard_RangeError.hxx>
#include <Handle_Standard_TooManyUsers.hxx>
#include <Handle_Standard_Transient.hxx>
#include <Handle_Standard_Type.hxx>
#include <Handle_Standard_TypeMismatch.hxx>
#include <Handle_Standard_Underflow.hxx>
#include <Handle_Storage_CallBack.hxx>
#include <Handle_Storage_Data.hxx>
#include <Handle_Storage_DataMapNodeOfMapOfCallBack.hxx>
#include <Handle_Storage_DataMapNodeOfMapOfPers.hxx>
#include <Handle_Storage_DefaultCallBack.hxx>
#include <Handle_Storage_HArrayOfCallBack.hxx>
#include <Handle_Storage_HArrayOfSchema.hxx>
#include <Handle_Storage_HPArray.hxx>
#include <Handle_Storage_HSeqOfCallBack.hxx>
#include <Handle_Storage_HSeqOfPersistent.hxx>
#include <Handle_Storage_HSeqOfRoot.hxx>
#include <Handle_Storage_HeaderData.hxx>
#include <Handle_Storage_IndexedDataMapNodeOfPType.hxx>
#include <Handle_Storage_InternalData.hxx>
#include <Handle_Storage_Root.hxx>
#include <Handle_Storage_RootData.hxx>
#include <Handle_Storage_Schema.hxx>
#include <Handle_Storage_SequenceNodeOfSeqOfCallBack.hxx>
#include <Handle_Storage_SequenceNodeOfSeqOfPersistent.hxx>
#include <Handle_Storage_SequenceNodeOfSeqOfRoot.hxx>
#include <Handle_Storage_StreamExtCharParityError.hxx>
#include <Handle_Storage_StreamFormatError.hxx>
#include <Handle_Storage_StreamModeError.hxx>
#include <Handle_Storage_StreamReadError.hxx>
#include <Handle_Storage_StreamTypeMismatchError.hxx>
#include <Handle_Storage_StreamUnknownTypeError.hxx>
#include <Handle_Storage_StreamWriteError.hxx>
#include <Handle_Storage_TypeData.hxx>
#include <Handle_Storage_TypedCallBack.hxx>
#include <Handle_TCollection_AVLBaseNode.hxx>
#include <Handle_TCollection_HAsciiString.hxx>
#include <Handle_TCollection_HExtendedString.hxx>
#include <Handle_TCollection_MapNode.hxx>
#include <Handle_TCollection_SeqNode.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Assert.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_CString.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_DefineException.hxx>
#include <Standard_DefineHandle.hxx>
#include <Standard_DimensionError.hxx>
#include <Standard_DimensionMismatch.hxx>
#include <Standard_DivideByZero.hxx>
#include <Standard_DomainError.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_ErrorHandlerCallback.hxx>
#include <Standard_ExtCharacter.hxx>
#include <Standard_ExtString.hxx>
#include <Standard_Failure.hxx>
#include <Standard_GUID.hxx>
#include <Standard_HandlerStatus.hxx>
#include <Standard_IStream.hxx>
#include <Standard_ImmutableObject.hxx>
#include <Standard_Integer.hxx>
#include <Standard_InternalType.hxx>
#include <Standard_JmpBuf.hxx>
#include <Standard_KindOfType.hxx>
#include <Standard_LicenseError.hxx>
#include <Standard_LicenseNotFound.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_MMgrRoot.hxx>
#include <Standard_MMgrTBBalloc.hxx>
#include <Standard_Macro.hxx>
#include <Standard_MultiplyDefined.hxx>
#include <Standard_Mutex.hxx>
#include <Standard_NegativeValue.hxx>
#include <Standard_NoMoreObject.hxx>
#include <Standard_NoSuchObject.hxx>
#include <Standard_NotImplemented.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_NullValue.hxx>
#include <Standard_NumericError.hxx>
#include <Standard_OId.hxx>
#include <Standard_OStream.hxx>
#include <Standard_OutOfMemory.hxx>
#include <Standard_OutOfRange.hxx>
#include <Standard_Overflow.hxx>
#include <Standard_PByte.hxx>
#include <Standard_PCharacter.hxx>
#include <Standard_PErrorHandler.hxx>
#include <Standard_PExtCharacter.hxx>
#include <Standard_Persistent.hxx>
#include <Standard_Persistent_proto.hxx>
#include <Standard_PrimitiveTypes.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_RangeError.hxx>
#include <Standard_Real.hxx>
#include <Standard_SStream.hxx>
#include <Standard_ShortReal.hxx>
#include <Standard_Size.hxx>
#include <Standard_Storable.hxx>
#include <Standard_Stream.hxx>
#include <Standard_String.hxx>
#include <Standard_ThreadId.hxx>
#include <Standard_Time.hxx>
#include <Standard_TooManyUsers.hxx>
#include <Standard_Transient.hxx>
#include <Standard_Type.hxx>
#include <Standard_TypeDef.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_UUID.hxx>
#include <Standard_Underflow.hxx>
#include <Standard_Version.hxx>
#include <Standard_WayOfLife.hxx>
#include <Standard_ctype.hxx>
#include <Standard_math.hxx>
#include <Storage_ArrayOfCallBack.hxx>
#include <Storage_ArrayOfSchema.hxx>
#include <Storage_BaseDriver.hxx>
#include <Storage_BucketOfPersistent.hxx>
#include <Storage_CallBack.hxx>
#include <Storage_Container.hxx>
#include <Storage_Data.hxx>
#include <Storage_DataMapIteratorOfMapOfCallBack.hxx>
#include <Storage_DataMapIteratorOfMapOfPers.hxx>
#include <Storage_DataMapNodeOfMapOfCallBack.hxx>
#include <Storage_DataMapNodeOfMapOfPers.hxx>
#include <Storage_DefaultCallBack.hxx>
#include <Storage_Error.hxx>
#include <Storage_HArrayOfCallBack.hxx>
#include <Storage_HArrayOfSchema.hxx>
#include <Storage_HPArray.hxx>
#include <Storage_HSeqOfCallBack.hxx>
#include <Storage_HSeqOfPersistent.hxx>
#include <Storage_HSeqOfRoot.hxx>
#include <Storage_HeaderData.hxx>
#include <Storage_IndexedDataMapNodeOfPType.hxx>
#include <Storage_InternalData.hxx>
#include <Storage_Macros.hxx>
#include <Storage_MapOfCallBack.hxx>
#include <Storage_MapOfPers.hxx>
#include <Storage_MapPSDHasher.hxx>
#include <Storage_OpenMode.hxx>
#include <Storage_PArray.hxx>
#include <Storage_PType.hxx>
#include <Storage_Position.hxx>
#include <Storage_Root.hxx>
#include <Storage_RootData.hxx>
#include <Storage_Schema.hxx>
#include <Storage_SeqOfCallBack.hxx>
#include <Storage_SeqOfPersistent.hxx>
#include <Storage_SeqOfRoot.hxx>
#include <Storage_SequenceNodeOfSeqOfCallBack.hxx>
#include <Storage_SequenceNodeOfSeqOfPersistent.hxx>
#include <Storage_SequenceNodeOfSeqOfRoot.hxx>
#include <Storage_SolveMode.hxx>
#include <Storage_StreamExtCharParityError.hxx>
#include <Storage_StreamFormatError.hxx>
#include <Storage_StreamModeError.hxx>
#include <Storage_StreamReadError.hxx>
#include <Storage_StreamTypeMismatchError.hxx>
#include <Storage_StreamUnknownTypeError.hxx>
#include <Storage_StreamWriteError.hxx>
#include <Storage_TypeData.hxx>
#include <Storage_TypedCallBack.hxx>
#include <Storage_stCONSTclCOM.hxx>
%};

%import TCollection.i
%import Standard.i
%import Storage.i
