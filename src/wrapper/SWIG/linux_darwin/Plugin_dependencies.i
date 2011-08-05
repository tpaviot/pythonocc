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
#include <Handle_OSD_Exception.hxx>
#include <Handle_OSD_Exception_ACCESS_VIOLATION.hxx>
#include <Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED.hxx>
#include <Handle_OSD_Exception_CTRL_BREAK.hxx>
#include <Handle_OSD_Exception_FLT_DENORMAL_OPERAND.hxx>
#include <Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO.hxx>
#include <Handle_OSD_Exception_FLT_INEXACT_RESULT.hxx>
#include <Handle_OSD_Exception_FLT_INVALID_OPERATION.hxx>
#include <Handle_OSD_Exception_FLT_OVERFLOW.hxx>
#include <Handle_OSD_Exception_FLT_STACK_CHECK.hxx>
#include <Handle_OSD_Exception_FLT_UNDERFLOW.hxx>
#include <Handle_OSD_Exception_ILLEGAL_INSTRUCTION.hxx>
#include <Handle_OSD_Exception_INT_DIVIDE_BY_ZERO.hxx>
#include <Handle_OSD_Exception_INT_OVERFLOW.hxx>
#include <Handle_OSD_Exception_INVALID_DISPOSITION.hxx>
#include <Handle_OSD_Exception_IN_PAGE_ERROR.hxx>
#include <Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION.hxx>
#include <Handle_OSD_Exception_PRIV_INSTRUCTION.hxx>
#include <Handle_OSD_Exception_STACK_OVERFLOW.hxx>
#include <Handle_OSD_Exception_STATUS_NO_MEMORY.hxx>
#include <Handle_OSD_FontMgr.hxx>
#include <Handle_OSD_OSDError.hxx>
#include <Handle_OSD_SIGBUS.hxx>
#include <Handle_OSD_SIGHUP.hxx>
#include <Handle_OSD_SIGILL.hxx>
#include <Handle_OSD_SIGINT.hxx>
#include <Handle_OSD_SIGKILL.hxx>
#include <Handle_OSD_SIGQUIT.hxx>
#include <Handle_OSD_SIGSEGV.hxx>
#include <Handle_OSD_SIGSYS.hxx>
#include <Handle_OSD_Signal.hxx>
#include <Handle_OSD_SystemFont.hxx>
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
#include <Handle_TCollection_AVLBaseNode.hxx>
#include <Handle_TCollection_HAsciiString.hxx>
#include <Handle_TCollection_HExtendedString.hxx>
#include <Handle_TCollection_MapNode.hxx>
#include <Handle_TCollection_SeqNode.hxx>
#include <OSD_Chronometer.hxx>
#include <OSD_Directory.hxx>
#include <OSD_DirectoryIterator.hxx>
#include <OSD_Disk.hxx>
#include <OSD_Environment.hxx>
#include <OSD_EnvironmentIterator.hxx>
#include <OSD_Error.hxx>
#include <OSD_ErrorList.hxx>
#include <OSD_Exception.hxx>
#include <OSD_Exception_ACCESS_VIOLATION.hxx>
#include <OSD_Exception_ARRAY_BOUNDS_EXCEEDED.hxx>
#include <OSD_Exception_CTRL_BREAK.hxx>
#include <OSD_Exception_FLT_DENORMAL_OPERAND.hxx>
#include <OSD_Exception_FLT_DIVIDE_BY_ZERO.hxx>
#include <OSD_Exception_FLT_INEXACT_RESULT.hxx>
#include <OSD_Exception_FLT_INVALID_OPERATION.hxx>
#include <OSD_Exception_FLT_OVERFLOW.hxx>
#include <OSD_Exception_FLT_STACK_CHECK.hxx>
#include <OSD_Exception_FLT_UNDERFLOW.hxx>
#include <OSD_Exception_ILLEGAL_INSTRUCTION.hxx>
#include <OSD_Exception_INT_DIVIDE_BY_ZERO.hxx>
#include <OSD_Exception_INT_OVERFLOW.hxx>
#include <OSD_Exception_INVALID_DISPOSITION.hxx>
#include <OSD_Exception_IN_PAGE_ERROR.hxx>
#include <OSD_Exception_NONCONTINUABLE_EXCEPTION.hxx>
#include <OSD_Exception_PRIV_INSTRUCTION.hxx>
#include <OSD_Exception_STACK_OVERFLOW.hxx>
#include <OSD_Exception_STATUS_NO_MEMORY.hxx>
#include <OSD_File.hxx>
#include <OSD_FileIterator.hxx>
#include <OSD_FileNode.hxx>
#include <OSD_FontAspect.hxx>
#include <OSD_FontMgr.hxx>
#include <OSD_FromWhere.hxx>
#include <OSD_Function.hxx>
#include <OSD_Host.hxx>
#include <OSD_KindFile.hxx>
#include <OSD_LoadMode.hxx>
#include <OSD_Localizer.hxx>
#include <OSD_LockType.hxx>
#include <OSD_MAllocHook.hxx>
#include <OSD_MailBox.hxx>
#include <OSD_NListOfSystemFont.hxx>
#include <OSD_OEMType.hxx>
#include <OSD_OSDError.hxx>
#include <OSD_OpenMode.hxx>
#include <OSD_PThread.hxx>
#include <OSD_Path.hxx>
#include <OSD_PerfMeter.hxx>
#include <OSD_Printer.hxx>
#include <OSD_Process.hxx>
#include <OSD_Protection.hxx>
#include <OSD_Real2String.hxx>
#include <OSD_SIGBUS.hxx>
#include <OSD_SIGHUP.hxx>
#include <OSD_SIGILL.hxx>
#include <OSD_SIGINT.hxx>
#include <OSD_SIGKILL.hxx>
#include <OSD_SIGQUIT.hxx>
#include <OSD_SIGSEGV.hxx>
#include <OSD_SIGSYS.hxx>
#include <OSD_Semaphore.hxx>
#include <OSD_SharedLibrary.hxx>
#include <OSD_SharedMemory.hxx>
#include <OSD_Signal.hxx>
#include <OSD_Signals.hxx>
#include <OSD_SingleProtection.hxx>
#include <OSD_SysType.hxx>
#include <OSD_SystemFont.hxx>
#include <OSD_Thread.hxx>
#include <OSD_ThreadFunction.hxx>
#include <OSD_Timer.hxx>
#include <OSD_WhoAmI.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_CString.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
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
#include <Standard_Static.hxx>
#include <Standard_Storable.hxx>
#include <Standard_Stream.hxx>
#include <Standard_String.hxx>
#include <Standard_ThreadId.hxx>
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
%};

%import TCollection.i
%import Standard.i
%import OSD.i
