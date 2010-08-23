/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%rename(downcast) Handle_OSD_Exception::DownCast;
%rename(downcast) Handle_OSD_Exception_STACK_OVERFLOW::DownCast;
%rename(downcast) Handle_OSD_Signal::DownCast;
%rename(downcast) Handle_OSD_SIGILL::DownCast;
%rename(downcast) Handle_OSD_SIGHUP::DownCast;
%rename(downcast) Handle_OSD_Exception_ILLEGAL_INSTRUCTION::DownCast;
%rename(downcast) Handle_OSD_OSDError::DownCast;
%rename(downcast) Handle_OSD_Exception_CTRL_BREAK::DownCast;
%rename(downcast) Handle_OSD_SIGINT::DownCast;
%rename(downcast) Handle_OSD_Exception_PRIV_INSTRUCTION::DownCast;
%rename(downcast) Handle_OSD_SIGKILL::DownCast;
%rename(downcast) Handle_OSD_Exception_ACCESS_VIOLATION::DownCast;
%rename(downcast) Handle_OSD_SIGQUIT::DownCast;
%rename(downcast) Handle_OSD_Exception_INVALID_DISPOSITION::DownCast;
%rename(downcast) Handle_OSD_Exception_INT_DIVIDE_BY_ZERO::DownCast;
%rename(downcast) Handle_OSD_Exception_INT_OVERFLOW::DownCast;
%rename(downcast) Handle_OSD_Exception_FLT_STACK_CHECK::DownCast;
%rename(downcast) Handle_OSD_Exception_STATUS_NO_MEMORY::DownCast;
%rename(downcast) Handle_OSD_Exception_FLT_INVALID_OPERATION::DownCast;
%rename(downcast) Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION::DownCast;
%rename(downcast) Handle_OSD_Exception_FLT_OVERFLOW::DownCast;
%rename(downcast) Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED::DownCast;
%rename(downcast) Handle_OSD_SIGBUS::DownCast;
%rename(downcast) Handle_OSD_Exception_FLT_INEXACT_RESULT::DownCast;
%rename(downcast) Handle_OSD_Exception_FLT_DENORMAL_OPERAND::DownCast;
%rename(downcast) Handle_OSD_SIGSEGV::DownCast;
%rename(downcast) Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO::DownCast;
%rename(downcast) Handle_OSD_SIGSYS::DownCast;
%rename(downcast) Handle_OSD_Exception_FLT_UNDERFLOW::DownCast;
%rename(downcast) Handle_OSD_Exception_IN_PAGE_ERROR::DownCast;
%rename(raise) OSD_Exception::Raise;
%rename(newinstance) OSD_Exception::NewInstance;
%rename(raise) OSD_Exception_CTRL_BREAK::Raise;
%rename(newinstance) OSD_Exception_CTRL_BREAK::NewInstance;
%rename(raise) OSD_Exception_INVALID_DISPOSITION::Raise;
%rename(newinstance) OSD_Exception_INVALID_DISPOSITION::NewInstance;
%rename(raise) OSD_Signal::Raise;
%rename(newinstance) OSD_Signal::NewInstance;
%rename(raise) OSD_SIGKILL::Raise;
%rename(newinstance) OSD_SIGKILL::NewInstance;
%rename(raise) OSD_Exception_FLT_INEXACT_RESULT::Raise;
%rename(newinstance) OSD_Exception_FLT_INEXACT_RESULT::NewInstance;
%rename(raise) OSD_Exception_INT_DIVIDE_BY_ZERO::Raise;
%rename(newinstance) OSD_Exception_INT_DIVIDE_BY_ZERO::NewInstance;
%rename(raise) OSD_Exception_FLT_STACK_CHECK::Raise;
%rename(newinstance) OSD_Exception_FLT_STACK_CHECK::NewInstance;
%rename(raise) OSD_SIGSYS::Raise;
%rename(newinstance) OSD_SIGSYS::NewInstance;
%rename(raise) OSD_Exception_FLT_UNDERFLOW::Raise;
%rename(newinstance) OSD_Exception_FLT_UNDERFLOW::NewInstance;
%rename(raise) OSD_Exception_IN_PAGE_ERROR::Raise;
%rename(newinstance) OSD_Exception_IN_PAGE_ERROR::NewInstance;
%rename(raise) OSD_OSDError::Raise;
%rename(newinstance) OSD_OSDError::NewInstance;
%rename(raise) OSD_Exception_ARRAY_BOUNDS_EXCEEDED::Raise;
%rename(newinstance) OSD_Exception_ARRAY_BOUNDS_EXCEEDED::NewInstance;
%rename(current) OSD_Thread::Current;
%rename(raise) OSD_SIGQUIT::Raise;
%rename(newinstance) OSD_SIGQUIT::NewInstance;
%rename(raise) OSD_SIGBUS::Raise;
%rename(newinstance) OSD_SIGBUS::NewInstance;
%rename(buildtemporary) OSD_File::BuildTemporary;
%rename(raise) OSD_SIGSEGV::Raise;
%rename(newinstance) OSD_SIGSEGV::NewInstance;
%rename(raise) OSD_Exception_PRIV_INSTRUCTION::Raise;
%rename(newinstance) OSD_Exception_PRIV_INSTRUCTION::NewInstance;
%rename(buildtemporary) OSD_Directory::BuildTemporary;
%rename(raise) OSD_Exception_ACCESS_VIOLATION::Raise;
%rename(newinstance) OSD_Exception_ACCESS_VIOLATION::NewInstance;
%rename(setsignal) OSD::SetSignal;
%rename(availablememory) OSD::AvailableMemory;
%rename(setlocale) OSD::SetLocale;
%rename(secsleep) OSD::SecSleep;
%rename(millisecsleep) OSD::MilliSecSleep;
%rename(realtocstring) OSD::RealToCString;
%rename(cstringtoreal) OSD::CStringToReal;
%rename(isdivisible) OSD::IsDivisible;
%rename(getexponent) OSD::GetExponent;
%rename(getmantissa) OSD::GetMantissa;
%rename(usesetranslator) OSD::UseSETranslator;
%rename(raise) OSD_Exception_ILLEGAL_INSTRUCTION::Raise;
%rename(newinstance) OSD_Exception_ILLEGAL_INSTRUCTION::NewInstance;
%rename(raise) OSD_Exception_FLT_INVALID_OPERATION::Raise;
%rename(newinstance) OSD_Exception_FLT_INVALID_OPERATION::NewInstance;
%rename(raise) OSD_SIGINT::Raise;
%rename(newinstance) OSD_SIGINT::NewInstance;
%rename(raise) OSD_Exception_STACK_OVERFLOW::Raise;
%rename(newinstance) OSD_Exception_STACK_OVERFLOW::NewInstance;
%rename(raise) OSD_Exception_INT_OVERFLOW::Raise;
%rename(newinstance) OSD_Exception_INT_OVERFLOW::NewInstance;
%rename(relativepath) OSD_Path::RelativePath;
%rename(absolutepath) OSD_Path::AbsolutePath;
%rename(raise) OSD_SIGHUP::Raise;
%rename(newinstance) OSD_SIGHUP::NewInstance;
%rename(raise) OSD_Exception_STATUS_NO_MEMORY::Raise;
%rename(newinstance) OSD_Exception_STATUS_NO_MEMORY::NewInstance;
%rename(raise) OSD_SIGILL::Raise;
%rename(newinstance) OSD_SIGILL::NewInstance;
%rename(raise) OSD_Exception_FLT_DENORMAL_OPERAND::Raise;
%rename(newinstance) OSD_Exception_FLT_DENORMAL_OPERAND::NewInstance;
%rename(raise) OSD_Exception_FLT_OVERFLOW::Raise;
%rename(newinstance) OSD_Exception_FLT_OVERFLOW::NewInstance;
%rename(raise) OSD_Exception_FLT_DIVIDE_BY_ZERO::Raise;
%rename(newinstance) OSD_Exception_FLT_DIVIDE_BY_ZERO::NewInstance;
%rename(raise) OSD_Exception_NONCONTINUABLE_EXCEPTION::Raise;
%rename(newinstance) OSD_Exception_NONCONTINUABLE_EXCEPTION::NewInstance;
