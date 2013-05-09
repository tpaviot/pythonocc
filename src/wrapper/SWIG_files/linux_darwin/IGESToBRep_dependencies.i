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
#include <Handle_MMgt_TShared.hxx>
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
#include <Handle_Transfer_ActorDispatch.hxx>
#include <Handle_Transfer_ActorOfFinderProcess.hxx>
#include <Handle_Transfer_ActorOfProcessForFinder.hxx>
#include <Handle_Transfer_ActorOfProcessForTransient.hxx>
#include <Handle_Transfer_ActorOfTransientProcess.hxx>
#include <Handle_Transfer_Binder.hxx>
#include <Handle_Transfer_BinderOfTransientInteger.hxx>
#include <Handle_Transfer_DispatchControl.hxx>
#include <Handle_Transfer_Finder.hxx>
#include <Handle_Transfer_FinderProcess.hxx>
#include <Handle_Transfer_HSequenceOfBinder.hxx>
#include <Handle_Transfer_HSequenceOfFinder.hxx>
#include <Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder.hxx>
#include <Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient.hxx>
#include <Handle_Transfer_MapContainer.hxx>
#include <Handle_Transfer_MultipleBinder.hxx>
#include <Handle_Transfer_ProcessForFinder.hxx>
#include <Handle_Transfer_ProcessForTransient.hxx>
#include <Handle_Transfer_ResultFromModel.hxx>
#include <Handle_Transfer_ResultFromTransient.hxx>
#include <Handle_Transfer_SequenceNodeOfSequenceOfBinder.hxx>
#include <Handle_Transfer_SequenceNodeOfSequenceOfFinder.hxx>
#include <Handle_Transfer_SimpleBinderOfTransient.hxx>
#include <Handle_Transfer_TransferDeadLoop.hxx>
#include <Handle_Transfer_TransferFailure.hxx>
#include <Handle_Transfer_TransientListBinder.hxx>
#include <Handle_Transfer_TransientMapper.hxx>
#include <Handle_Transfer_TransientProcess.hxx>
#include <Handle_Transfer_VoidBinder.hxx>
#include <MMgt_StackManager.hxx>
#include <MMgt_TShared.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Assert.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_CLocaleSentry.hxx>
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
#include <Transfer_ActorDispatch.hxx>
#include <Transfer_ActorOfFinderProcess.hxx>
#include <Transfer_ActorOfProcessForFinder.hxx>
#include <Transfer_ActorOfProcessForTransient.hxx>
#include <Transfer_ActorOfTransientProcess.hxx>
#include <Transfer_Binder.hxx>
#include <Transfer_BinderOfTransientInteger.hxx>
#include <Transfer_DataInfo.hxx>
#include <Transfer_DispatchControl.hxx>
#include <Transfer_FindHasher.hxx>
#include <Transfer_Finder.hxx>
#include <Transfer_FinderProcess.hxx>
#include <Transfer_HSequenceOfBinder.hxx>
#include <Transfer_HSequenceOfFinder.hxx>
#include <Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder.hxx>
#include <Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient.hxx>
#include <Transfer_IteratorOfProcessForFinder.hxx>
#include <Transfer_IteratorOfProcessForTransient.hxx>
#include <Transfer_MapContainer.hxx>
#include <Transfer_MultipleBinder.hxx>
#include <Transfer_ProcessForFinder.hxx>
#include <Transfer_ProcessForTransient.hxx>
#include <Transfer_ResultFromModel.hxx>
#include <Transfer_ResultFromTransient.hxx>
#include <Transfer_SequenceNodeOfSequenceOfBinder.hxx>
#include <Transfer_SequenceNodeOfSequenceOfFinder.hxx>
#include <Transfer_SequenceOfBinder.hxx>
#include <Transfer_SequenceOfFinder.hxx>
#include <Transfer_SimpleBinderOfTransient.hxx>
#include <Transfer_StatusExec.hxx>
#include <Transfer_StatusResult.hxx>
#include <Transfer_TransferDeadLoop.hxx>
#include <Transfer_TransferDispatch.hxx>
#include <Transfer_TransferFailure.hxx>
#include <Transfer_TransferInput.hxx>
#include <Transfer_TransferIterator.hxx>
#include <Transfer_TransferMapOfProcessForFinder.hxx>
#include <Transfer_TransferMapOfProcessForTransient.hxx>
#include <Transfer_TransferOutput.hxx>
#include <Transfer_TransientListBinder.hxx>
#include <Transfer_TransientMapper.hxx>
#include <Transfer_TransientProcess.hxx>
#include <Transfer_UndefMode.hxx>
#include <Transfer_VoidBinder.hxx>
%};

%import MMgt.i
%import Transfer.i
%import Standard.i
