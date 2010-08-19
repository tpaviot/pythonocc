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

$Revision
$Date
$Author
$HeaderURL

*/
%rename(downcast) Handle_Standard_Transient::DownCast;
%rename(downcast) Handle_Standard_Failure::DownCast;
%rename(downcast) Handle_Standard_DomainError::DownCast;
%rename(downcast) Handle_Standard_RangeError::DownCast;
%rename(downcast) Handle_Standard_NullValue::DownCast;
%rename(downcast) Handle_Standard_LicenseError::DownCast;
%rename(downcast) Handle_Standard_LicenseNotFound::DownCast;
%rename(downcast) Handle_Standard_TypeMismatch::DownCast;
%rename(downcast) Handle_Standard_OutOfRange::DownCast;
%rename(downcast) Handle_Standard_NumericError::DownCast;
%rename(downcast) Handle_Standard_NoMoreObject::DownCast;
%rename(downcast) Handle_Standard_ProgramError::DownCast;
%rename(downcast) Handle_Standard_NotImplemented::DownCast;
%rename(downcast) Handle_Standard_NullObject::DownCast;
%rename(downcast) Handle_Standard_Persistent::DownCast;
%rename(downcast) Handle_Standard_AbortiveTransaction::DownCast;
%rename(downcast) Handle_Standard_DimensionError::DownCast;
%rename(downcast) Handle_Standard_DivideByZero::DownCast;
%rename(downcast) Handle_Standard_NoSuchObject::DownCast;
%rename(downcast) Handle_Standard_ConstructionError::DownCast;
%rename(downcast) Handle_Standard_DimensionMismatch::DownCast;
%rename(downcast) Handle_Standard_OutOfMemory::DownCast;
%rename(downcast) Handle_Standard_Type::DownCast;
%rename(downcast) Handle_Standard_Overflow::DownCast;
%rename(downcast) Handle_Standard_NegativeValue::DownCast;
%rename(downcast) Handle_Standard_ImmutableObject::DownCast;
%rename(downcast) Handle_Standard_Underflow::DownCast;
%rename(downcast) Handle_Standard_MultiplyDefined::DownCast;
%rename(downcast) Handle_Standard_TooManyUsers::DownCast;
%rename(raise) Standard_Failure::Raise;
%rename(raise) Standard_Failure::Raise;
%rename(newinstance) Standard_Failure::NewInstance;
%rename(caught) Standard_Failure::Caught;
%rename(raise) Standard_DomainError::Raise;
%rename(raise) Standard_DomainError::Raise;
%rename(newinstance) Standard_DomainError::NewInstance;
%rename(raise) Standard_NoSuchObject::Raise;
%rename(raise) Standard_NoSuchObject::Raise;
%rename(newinstance) Standard_NoSuchObject::NewInstance;
%rename(raise) Standard_RangeError::Raise;
%rename(raise) Standard_RangeError::Raise;
%rename(newinstance) Standard_RangeError::NewInstance;
%rename(raise) Standard_NullValue::Raise;
%rename(raise) Standard_NullValue::Raise;
%rename(newinstance) Standard_NullValue::NewInstance;
%rename(raise) Standard_NumericError::Raise;
%rename(raise) Standard_NumericError::Raise;
%rename(newinstance) Standard_NumericError::NewInstance;
%rename(raise) Standard_NoMoreObject::Raise;
%rename(raise) Standard_NoMoreObject::Raise;
%rename(newinstance) Standard_NoMoreObject::NewInstance;
%rename(raise) Standard_ProgramError::Raise;
%rename(raise) Standard_ProgramError::Raise;
%rename(newinstance) Standard_ProgramError::NewInstance;
%rename(raise) Standard_NotImplemented::Raise;
%rename(raise) Standard_NotImplemented::Raise;
%rename(newinstance) Standard_NotImplemented::NewInstance;
%rename(raise) Standard_ConstructionError::Raise;
%rename(raise) Standard_ConstructionError::Raise;
%rename(newinstance) Standard_ConstructionError::NewInstance;
%rename(raise) Standard_TypeMismatch::Raise;
%rename(raise) Standard_TypeMismatch::Raise;
%rename(newinstance) Standard_TypeMismatch::NewInstance;
%rename(raise) Standard_DimensionError::Raise;
%rename(raise) Standard_DimensionError::Raise;
%rename(newinstance) Standard_DimensionError::NewInstance;
%rename(raise) Standard_DimensionMismatch::Raise;
%rename(raise) Standard_DimensionMismatch::Raise;
%rename(newinstance) Standard_DimensionMismatch::NewInstance;
%rename(raise) Standard_NegativeValue::Raise;
%rename(raise) Standard_NegativeValue::Raise;
%rename(newinstance) Standard_NegativeValue::NewInstance;
%rename(raise) Standard_ImmutableObject::Raise;
%rename(raise) Standard_ImmutableObject::Raise;
%rename(newinstance) Standard_ImmutableObject::NewInstance;
%rename(raise) Standard_AbortiveTransaction::Raise;
%rename(raise) Standard_AbortiveTransaction::Raise;
%rename(newinstance) Standard_AbortiveTransaction::NewInstance;
%rename(raise) Standard_MultiplyDefined::Raise;
%rename(raise) Standard_MultiplyDefined::Raise;
%rename(newinstance) Standard_MultiplyDefined::NewInstance;
%rename(raise) Standard_LicenseError::Raise;
%rename(raise) Standard_LicenseError::Raise;
%rename(newinstance) Standard_LicenseError::NewInstance;
%rename(raise) Standard_TooManyUsers::Raise;
%rename(raise) Standard_TooManyUsers::Raise;
%rename(newinstance) Standard_TooManyUsers::NewInstance;
%rename(raise) Standard_LicenseNotFound::Raise;
%rename(raise) Standard_LicenseNotFound::Raise;
%rename(newinstance) Standard_LicenseNotFound::NewInstance;
%rename(allocate) Standard::Allocate;
%rename(free) Standard::Free;
%rename(reallocate) Standard::Reallocate;
%rename(purge) Standard::Purge;
%rename(isreentrant) Standard::IsReentrant;
%rename(setreentrant) Standard::SetReentrant;
%rename(raise) Standard_Underflow::Raise;
%rename(raise) Standard_Underflow::Raise;
%rename(newinstance) Standard_Underflow::NewInstance;
%rename(raise) Standard_Overflow::Raise;
%rename(raise) Standard_Overflow::Raise;
%rename(newinstance) Standard_Overflow::NewInstance;
%rename(raise) Standard_NullObject::Raise;
%rename(raise) Standard_NullObject::Raise;
%rename(newinstance) Standard_NullObject::NewInstance;
%rename(checkguidformat) Standard_GUID::CheckGUIDFormat;
%rename(hashcode) Standard_GUID::HashCode;
%rename(isequal) Standard_GUID::IsEqual;
%rename(lastcaughterror) Standard_ErrorHandler::LastCaughtError;
%rename(isintryblock) Standard_ErrorHandler::IsInTryBlock;
%rename(raise) Standard_OutOfRange::Raise;
%rename(raise) Standard_OutOfRange::Raise;
%rename(newinstance) Standard_OutOfRange::NewInstance;
%rename(raise) Standard_DivideByZero::Raise;
%rename(raise) Standard_DivideByZero::Raise;
%rename(newinstance) Standard_DivideByZero::NewInstance;
%rename(raise) Standard_OutOfMemory::Raise;
%rename(raise) Standard_OutOfMemory::Raise;
%rename(newinstance) Standard_OutOfMemory::NewInstance;
