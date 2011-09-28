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
%rename(DownCast) Handle_Standard_Transient::DownCast;
%rename(DownCast) Handle_Standard_Failure::DownCast;
%rename(DownCast) Handle_Standard_DomainError::DownCast;
%rename(DownCast) Handle_Standard_RangeError::DownCast;
%rename(DownCast) Handle_Standard_NullValue::DownCast;
%rename(DownCast) Handle_Standard_LicenseError::DownCast;
%rename(DownCast) Handle_Standard_LicenseNotFound::DownCast;
%rename(DownCast) Handle_Standard_TypeMismatch::DownCast;
%rename(DownCast) Handle_Standard_OutOfRange::DownCast;
%rename(DownCast) Handle_Standard_NumericError::DownCast;
%rename(DownCast) Handle_Standard_NoMoreObject::DownCast;
%rename(DownCast) Handle_Standard_ProgramError::DownCast;
%rename(DownCast) Handle_Standard_NotImplemented::DownCast;
%rename(DownCast) Handle_Standard_NullObject::DownCast;
%rename(DownCast) Handle_Standard_Persistent::DownCast;
%rename(DownCast) Handle_Standard_AbortiveTransaction::DownCast;
%rename(DownCast) Handle_Standard_DimensionError::DownCast;
%rename(DownCast) Handle_Standard_DivideByZero::DownCast;
%rename(DownCast) Handle_Standard_NoSuchObject::DownCast;
%rename(DownCast) Handle_Standard_ConstructionError::DownCast;
%rename(DownCast) Handle_Standard_DimensionMismatch::DownCast;
%rename(DownCast) Handle_Standard_OutOfMemory::DownCast;
%rename(DownCast) Handle_Standard_Type::DownCast;
%rename(DownCast) Handle_Standard_Overflow::DownCast;
%rename(DownCast) Handle_Standard_NegativeValue::DownCast;
%rename(DownCast) Handle_Standard_ImmutableObject::DownCast;
%rename(DownCast) Handle_Standard_Underflow::DownCast;
%rename(DownCast) Handle_Standard_MultiplyDefined::DownCast;
%rename(DownCast) Handle_Standard_TooManyUsers::DownCast;
%rename(Raise) Standard_Failure::Raise;
%rename(NewInstance) Standard_Failure::NewInstance;
%rename(Caught) Standard_Failure::Caught;
%rename(Raise) Standard_DomainError::Raise;
%rename(NewInstance) Standard_DomainError::NewInstance;
%rename(Raise) Standard_NoSuchObject::Raise;
%rename(NewInstance) Standard_NoSuchObject::NewInstance;
%rename(Raise) Standard_RangeError::Raise;
%rename(NewInstance) Standard_RangeError::NewInstance;
%rename(Raise) Standard_NullValue::Raise;
%rename(NewInstance) Standard_NullValue::NewInstance;
%rename(Raise) Standard_NumericError::Raise;
%rename(NewInstance) Standard_NumericError::NewInstance;
%rename(Raise) Standard_NoMoreObject::Raise;
%rename(NewInstance) Standard_NoMoreObject::NewInstance;
%rename(Raise) Standard_ProgramError::Raise;
%rename(NewInstance) Standard_ProgramError::NewInstance;
%rename(Raise) Standard_NotImplemented::Raise;
%rename(NewInstance) Standard_NotImplemented::NewInstance;
%rename(Raise) Standard_ConstructionError::Raise;
%rename(NewInstance) Standard_ConstructionError::NewInstance;
%rename(Raise) Standard_TypeMismatch::Raise;
%rename(NewInstance) Standard_TypeMismatch::NewInstance;
%rename(Raise) Standard_DimensionError::Raise;
%rename(NewInstance) Standard_DimensionError::NewInstance;
%rename(Raise) Standard_DimensionMismatch::Raise;
%rename(NewInstance) Standard_DimensionMismatch::NewInstance;
%rename(Raise) Standard_NegativeValue::Raise;
%rename(NewInstance) Standard_NegativeValue::NewInstance;
%rename(Raise) Standard_ImmutableObject::Raise;
%rename(NewInstance) Standard_ImmutableObject::NewInstance;
%rename(Raise) Standard_AbortiveTransaction::Raise;
%rename(NewInstance) Standard_AbortiveTransaction::NewInstance;
%rename(Raise) Standard_LicenseError::Raise;
%rename(NewInstance) Standard_LicenseError::NewInstance;
%rename(Raise) Standard_TooManyUsers::Raise;
%rename(NewInstance) Standard_TooManyUsers::NewInstance;
%rename(Raise) Standard_LicenseNotFound::Raise;
%rename(NewInstance) Standard_LicenseNotFound::NewInstance;
%rename(Allocate) Standard::Allocate;
%rename(Free) Standard::Free;
%rename(Reallocate) Standard::Reallocate;
%rename(Purge) Standard::Purge;
%rename(IsReentrant) Standard::IsReentrant;
%rename(SetReentrant) Standard::SetReentrant;
%rename(Raise) Standard_Underflow::Raise;
%rename(NewInstance) Standard_Underflow::NewInstance;
%rename(Raise) Standard_MultiplyDefined::Raise;
%rename(NewInstance) Standard_MultiplyDefined::NewInstance;
%rename(Raise) Standard_Overflow::Raise;
%rename(NewInstance) Standard_Overflow::NewInstance;
%rename(Raise) Standard_NullObject::Raise;
%rename(NewInstance) Standard_NullObject::NewInstance;
%rename(CheckGUIDFormat) Standard_GUID::CheckGUIDFormat;
%rename(HashCode) Standard_GUID::HashCode;
%rename(IsEqual) Standard_GUID::IsEqual;
%rename(LastCaughtError) Standard_ErrorHandler::LastCaughtError;
%rename(IsInTryBlock) Standard_ErrorHandler::IsInTryBlock;
%rename(Raise) Standard_OutOfRange::Raise;
%rename(NewInstance) Standard_OutOfRange::NewInstance;
%rename(Raise) Standard_DivideByZero::Raise;
%rename(NewInstance) Standard_DivideByZero::NewInstance;
%rename(Raise) Standard_OutOfMemory::Raise;
%rename(NewInstance) Standard_OutOfMemory::NewInstance;
