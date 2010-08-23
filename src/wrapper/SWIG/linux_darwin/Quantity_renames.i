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
%rename(downcast) Handle_Quantity_ColorDefinitionError::DownCast;
%rename(downcast) Handle_Quantity_PeriodDefinitionError::DownCast;
%rename(downcast) Handle_Quantity_HArray1OfColor::DownCast;
%rename(downcast) Handle_Quantity_DateDefinitionError::DownCast;
%rename(isvalid) Quantity_Period::IsValid;
%rename(raise) Quantity_ColorDefinitionError::Raise;
%rename(newinstance) Quantity_ColorDefinitionError::NewInstance;
%rename(raise) Quantity_PeriodDefinitionError::Raise;
%rename(newinstance) Quantity_PeriodDefinitionError::NewInstance;
%rename(setepsilon) Quantity_Color::SetEpsilon;
%rename(epsilon) Quantity_Color::Epsilon;
%rename(name) Quantity_Color::Name;
%rename(stringname) Quantity_Color::StringName;
%rename(hlsrgb) Quantity_Color::HlsRgb;
%rename(rgbhls) Quantity_Color::RgbHls;
%rename(test) Quantity_Color::Test;
%rename(isvalid) Quantity_Date::IsValid;
%rename(isleap) Quantity_Date::IsLeap;
%rename(raise) Quantity_DateDefinitionError::Raise;
%rename(newinstance) Quantity_DateDefinitionError::NewInstance;
%rename(setquantity) Quantity_Convert::SetQuantity;
%rename(convertusertosi) Quantity_Convert::ConvertUserToSI;
%rename(convertsitouser) Quantity_Convert::ConvertSIToUser;
%rename(isphysicalquantity) Quantity_Convert::IsPhysicalQuantity;
