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

// Headers necessary to define wrapped classes.

#include<Handle_OSD_Exception.hxx>
#include<Handle_OSD_Exception_ACCESS_VIOLATION.hxx>
#include<Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED.hxx>
#include<Handle_OSD_Exception_CTRL_BREAK.hxx>
#include<Handle_OSD_Exception_FLT_DENORMAL_OPERAND.hxx>
#include<Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO.hxx>
#include<Handle_OSD_Exception_FLT_INEXACT_RESULT.hxx>
#include<Handle_OSD_Exception_FLT_INVALID_OPERATION.hxx>
#include<Handle_OSD_Exception_FLT_OVERFLOW.hxx>
#include<Handle_OSD_Exception_FLT_STACK_CHECK.hxx>
#include<Handle_OSD_Exception_FLT_UNDERFLOW.hxx>
#include<Handle_OSD_Exception_ILLEGAL_INSTRUCTION.hxx>
#include<Handle_OSD_Exception_INT_DIVIDE_BY_ZERO.hxx>
#include<Handle_OSD_Exception_INT_OVERFLOW.hxx>
#include<Handle_OSD_Exception_INVALID_DISPOSITION.hxx>
#include<Handle_OSD_Exception_IN_PAGE_ERROR.hxx>
#include<Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION.hxx>
#include<Handle_OSD_Exception_PRIV_INSTRUCTION.hxx>
#include<Handle_OSD_Exception_STACK_OVERFLOW.hxx>
#include<Handle_OSD_Exception_STATUS_NO_MEMORY.hxx>
#include<Handle_OSD_FontMgr.hxx>
#include<Handle_OSD_OSDError.hxx>
#include<Handle_OSD_SIGBUS.hxx>
#include<Handle_OSD_SIGHUP.hxx>
#include<Handle_OSD_SIGILL.hxx>
#include<Handle_OSD_SIGINT.hxx>
#include<Handle_OSD_SIGKILL.hxx>
#include<Handle_OSD_SIGQUIT.hxx>
#include<Handle_OSD_SIGSEGV.hxx>
#include<Handle_OSD_SIGSYS.hxx>
#include<Handle_OSD_Signal.hxx>
#include<Handle_OSD_SystemFont.hxx>
#include<OSD.hxx>
#include<OSD_Chronometer.hxx>
#include<OSD_Directory.hxx>
#include<OSD_DirectoryIterator.hxx>
#include<OSD_Disk.hxx>
#include<OSD_Environment.hxx>
#include<OSD_EnvironmentIterator.hxx>
#include<OSD_Error.hxx>
#include<OSD_ErrorList.hxx>
#include<OSD_Exception.hxx>
#include<OSD_Exception_ACCESS_VIOLATION.hxx>
#include<OSD_Exception_ARRAY_BOUNDS_EXCEEDED.hxx>
#include<OSD_Exception_CTRL_BREAK.hxx>
#include<OSD_Exception_FLT_DENORMAL_OPERAND.hxx>
#include<OSD_Exception_FLT_DIVIDE_BY_ZERO.hxx>
#include<OSD_Exception_FLT_INEXACT_RESULT.hxx>
#include<OSD_Exception_FLT_INVALID_OPERATION.hxx>
#include<OSD_Exception_FLT_OVERFLOW.hxx>
#include<OSD_Exception_FLT_STACK_CHECK.hxx>
#include<OSD_Exception_FLT_UNDERFLOW.hxx>
#include<OSD_Exception_ILLEGAL_INSTRUCTION.hxx>
#include<OSD_Exception_INT_DIVIDE_BY_ZERO.hxx>
#include<OSD_Exception_INT_OVERFLOW.hxx>
#include<OSD_Exception_INVALID_DISPOSITION.hxx>
#include<OSD_Exception_IN_PAGE_ERROR.hxx>
#include<OSD_Exception_NONCONTINUABLE_EXCEPTION.hxx>
#include<OSD_Exception_PRIV_INSTRUCTION.hxx>
#include<OSD_Exception_STACK_OVERFLOW.hxx>
#include<OSD_Exception_STATUS_NO_MEMORY.hxx>
#include<OSD_File.hxx>
#include<OSD_FileIterator.hxx>
#include<OSD_FileNode.hxx>
#include<OSD_FontAspect.hxx>
#include<OSD_FontMgr.hxx>
#include<OSD_FromWhere.hxx>
#include<OSD_Function.hxx>
#include<OSD_Host.hxx>
#include<OSD_KindFile.hxx>
#include<OSD_LoadMode.hxx>
#include<OSD_Localizer.hxx>
#include<OSD_LockType.hxx>
#include<OSD_MAllocHook.hxx>
#include<OSD_MailBox.hxx>
#include<OSD_NListOfSystemFont.hxx>
#include<OSD_OEMType.hxx>
#include<OSD_OSDError.hxx>
#include<OSD_OpenMode.hxx>
#include<OSD_PThread.hxx>
#include<OSD_Path.hxx>
#include<OSD_PerfMeter.hxx>
#include<OSD_Printer.hxx>
#include<OSD_Process.hxx>
#include<OSD_Protection.hxx>
#include<OSD_Real2String.hxx>
#include<OSD_SIGBUS.hxx>
#include<OSD_SIGHUP.hxx>
#include<OSD_SIGILL.hxx>
#include<OSD_SIGINT.hxx>
#include<OSD_SIGKILL.hxx>
#include<OSD_SIGQUIT.hxx>
#include<OSD_SIGSEGV.hxx>
#include<OSD_SIGSYS.hxx>
#include<OSD_Semaphore.hxx>
#include<OSD_SharedLibrary.hxx>
#include<OSD_SharedMemory.hxx>
#include<OSD_Signal.hxx>
#include<OSD_Signals.hxx>
#include<OSD_SingleProtection.hxx>
#include<OSD_SysType.hxx>
#include<OSD_SystemFont.hxx>
#include<OSD_Thread.hxx>
#include<OSD_ThreadFunction.hxx>
#include<OSD_Timer.hxx>
#include<OSD_WNT.hxx>
#include<OSD_WNT_1.hxx>
#include<OSD_WNT_BREAK.hxx>
#include<OSD_WhoAmI.hxx>

// Additional headers necessary for compilation.

#include<Quantity_Date.hxx>
#include<Quantity_DateDefinitionError.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TCollection_AsciiString.hxx>
#include<Quantity_Date.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<OSD.hxx>
%}
