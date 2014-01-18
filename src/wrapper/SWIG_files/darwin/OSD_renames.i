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
%rename(DownCast) Handle_OSD_Exception::DownCast;
%rename(DownCast) Handle_OSD_Exception_INT_DIVIDE_BY_ZERO::DownCast;
%rename(DownCast) Handle_OSD_Signal::DownCast;
%rename(DownCast) Handle_OSD_SIGBUS::DownCast;
%rename(DownCast) Handle_OSD_Exception_INT_OVERFLOW::DownCast;
%rename(DownCast) Handle_OSD_Exception_FLT_STACK_CHECK::DownCast;
%rename(DownCast) Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION::DownCast;
%rename(DownCast) Handle_OSD_SIGILL::DownCast;
%rename(DownCast) Handle_OSD_SIGKILL::DownCast;
%rename(DownCast) Handle_OSD_Exception_INVALID_DISPOSITION::DownCast;
%rename(DownCast) Handle_OSD_Exception_STACK_OVERFLOW::DownCast;
%rename(DownCast) Handle_OSD_Exception_FLT_OVERFLOW::DownCast;
%rename(DownCast) Handle_OSD_Exception_IN_PAGE_ERROR::DownCast;
%rename(DownCast) Handle_OSD_SIGSEGV::DownCast;
%rename(DownCast) Handle_OSD_Exception_STATUS_NO_MEMORY::DownCast;
%rename(DownCast) Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO::DownCast;
%rename(DownCast) Handle_OSD_Exception_PRIV_INSTRUCTION::DownCast;
%rename(DownCast) Handle_OSD_Exception_FLT_INVALID_OPERATION::DownCast;
%rename(DownCast) Handle_OSD_OSDError::DownCast;
%rename(DownCast) Handle_OSD_Exception_ACCESS_VIOLATION::DownCast;
%rename(DownCast) Handle_OSD_SIGQUIT::DownCast;
%rename(DownCast) Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED::DownCast;
%rename(DownCast) Handle_OSD_SIGHUP::DownCast;
%rename(DownCast) Handle_OSD_SIGSYS::DownCast;
%rename(DownCast) Handle_OSD_Exception_ILLEGAL_INSTRUCTION::DownCast;
%rename(DownCast) Handle_OSD_SIGINT::DownCast;
%rename(DownCast) Handle_OSD_Exception_FLT_UNDERFLOW::DownCast;
%rename(DownCast) Handle_OSD_Exception_CTRL_BREAK::DownCast;
%rename(DownCast) Handle_OSD_Exception_FLT_INEXACT_RESULT::DownCast;
%rename(DownCast) Handle_OSD_Exception_FLT_DENORMAL_OPERAND::DownCast;
%rename(GetProcessCPU) OSD_Chronometer::GetProcessCPU;
%rename(GetThreadCPU) OSD_Chronometer::GetThreadCPU;
%rename(Raise) OSD_Exception::Raise;
%rename(NewInstance) OSD_Exception::NewInstance;
%rename(Raise) OSD_Exception_FLT_UNDERFLOW::Raise;
%rename(NewInstance) OSD_Exception_FLT_UNDERFLOW::NewInstance;
%rename(PrintInfo) OSD_MemInfo::PrintInfo;
%rename(Raise) OSD_Exception_CTRL_BREAK::Raise;
%rename(NewInstance) OSD_Exception_CTRL_BREAK::NewInstance;
%rename(Raise) OSD_Exception_ILLEGAL_INSTRUCTION::Raise;
%rename(NewInstance) OSD_Exception_ILLEGAL_INSTRUCTION::NewInstance;
%rename(Raise) OSD_Exception_IN_PAGE_ERROR::Raise;
%rename(NewInstance) OSD_Exception_IN_PAGE_ERROR::NewInstance;
%rename(Raise) OSD_Exception_ACCESS_VIOLATION::Raise;
%rename(NewInstance) OSD_Exception_ACCESS_VIOLATION::NewInstance;
%rename(Raise) OSD_Exception_FLT_DIVIDE_BY_ZERO::Raise;
%rename(NewInstance) OSD_Exception_FLT_DIVIDE_BY_ZERO::NewInstance;
%rename(Raise) OSD_OSDError::Raise;
%rename(NewInstance) OSD_OSDError::NewInstance;
%rename(Raise) OSD_Exception_FLT_INVALID_OPERATION::Raise;
%rename(NewInstance) OSD_Exception_FLT_INVALID_OPERATION::NewInstance;
%rename(RelativePath) OSD_Path::RelativePath;
%rename(AbsolutePath) OSD_Path::AbsolutePath;
%rename(Raise) OSD_Signal::Raise;
%rename(NewInstance) OSD_Signal::NewInstance;
%rename(BuildTemporary) OSD_Directory::BuildTemporary;
%rename(Raise) OSD_Exception_PRIV_INSTRUCTION::Raise;
%rename(NewInstance) OSD_Exception_PRIV_INSTRUCTION::NewInstance;
%rename(Raise) OSD_Exception_INT_OVERFLOW::Raise;
%rename(NewInstance) OSD_Exception_INT_OVERFLOW::NewInstance;
%rename(Raise) OSD_SIGHUP::Raise;
%rename(NewInstance) OSD_SIGHUP::NewInstance;
%rename(Raise) OSD_SIGSYS::Raise;
%rename(NewInstance) OSD_SIGSYS::NewInstance;
%rename(SetSignal) OSD::SetSignal;
%rename(AvailableMemory) OSD::AvailableMemory;
%rename(SecSleep) OSD::SecSleep;
%rename(MilliSecSleep) OSD::MilliSecSleep;
%rename(RealToCString) OSD::RealToCString;
%rename(CStringToReal) OSD::CStringToReal;
%rename(IsDivisible) OSD::IsDivisible;
%rename(GetExponent) OSD::GetExponent;
%rename(GetMantissa) OSD::GetMantissa;
%rename(Raise) OSD_Exception_FLT_STACK_CHECK::Raise;
%rename(NewInstance) OSD_Exception_FLT_STACK_CHECK::NewInstance;
%rename(Raise) OSD_Exception_STACK_OVERFLOW::Raise;
%rename(NewInstance) OSD_Exception_STACK_OVERFLOW::NewInstance;
%rename(Raise) OSD_SIGQUIT::Raise;
%rename(NewInstance) OSD_SIGQUIT::NewInstance;
%rename(Raise) OSD_Exception_STATUS_NO_MEMORY::Raise;
%rename(NewInstance) OSD_Exception_STATUS_NO_MEMORY::NewInstance;
%rename(Raise) OSD_SIGILL::Raise;
%rename(NewInstance) OSD_SIGILL::NewInstance;
%rename(Current) OSD_Thread::Current;
%rename(Raise) OSD_Exception_FLT_INEXACT_RESULT::Raise;
%rename(NewInstance) OSD_Exception_FLT_INEXACT_RESULT::NewInstance;
%rename(Raise) OSD_SIGKILL::Raise;
%rename(NewInstance) OSD_SIGKILL::NewInstance;
%rename(Raise) OSD_Exception_FLT_DENORMAL_OPERAND::Raise;
%rename(NewInstance) OSD_Exception_FLT_DENORMAL_OPERAND::NewInstance;
%rename(Raise) OSD_SIGBUS::Raise;
%rename(NewInstance) OSD_SIGBUS::NewInstance;
%rename(Raise) OSD_Exception_FLT_OVERFLOW::Raise;
%rename(NewInstance) OSD_Exception_FLT_OVERFLOW::NewInstance;
%rename(Raise) OSD_Exception_NONCONTINUABLE_EXCEPTION::Raise;
%rename(NewInstance) OSD_Exception_NONCONTINUABLE_EXCEPTION::NewInstance;
%rename(SetCallback) OSD_MAllocHook::SetCallback;
%rename(GetCallback) OSD_MAllocHook::GetCallback;
%rename(GetLogFileHandler) OSD_MAllocHook::GetLogFileHandler;
%rename(GetCollectBySize) OSD_MAllocHook::GetCollectBySize;
%rename(Raise) OSD_SIGINT::Raise;
%rename(NewInstance) OSD_SIGINT::NewInstance;
%rename(Raise) OSD_Exception_INT_DIVIDE_BY_ZERO::Raise;
%rename(NewInstance) OSD_Exception_INT_DIVIDE_BY_ZERO::NewInstance;
%rename(BuildTemporary) OSD_File::BuildTemporary;
%rename(Raise) OSD_Exception_INVALID_DISPOSITION::Raise;
%rename(NewInstance) OSD_Exception_INVALID_DISPOSITION::NewInstance;
%rename(Raise) OSD_Exception_ARRAY_BOUNDS_EXCEEDED::Raise;
%rename(NewInstance) OSD_Exception_ARRAY_BOUNDS_EXCEEDED::NewInstance;
%rename(Raise) OSD_SIGSEGV::Raise;
%rename(NewInstance) OSD_SIGSEGV::NewInstance;
