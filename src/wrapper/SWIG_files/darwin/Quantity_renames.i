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
%rename(DownCast) Handle_Quantity_ColorDefinitionError::DownCast;
%rename(DownCast) Handle_Quantity_PeriodDefinitionError::DownCast;
%rename(DownCast) Handle_Quantity_HArray1OfColor::DownCast;
%rename(DownCast) Handle_Quantity_DateDefinitionError::DownCast;
%rename(IsValid) Quantity_Period::IsValid;
%rename(IsValid) Quantity_Date::IsValid;
%rename(IsLeap) Quantity_Date::IsLeap;
%rename(Raise) Quantity_ColorDefinitionError::Raise;
%rename(NewInstance) Quantity_ColorDefinitionError::NewInstance;
%rename(Raise) Quantity_PeriodDefinitionError::Raise;
%rename(NewInstance) Quantity_PeriodDefinitionError::NewInstance;
%rename(SetEpsilon) Quantity_Color::SetEpsilon;
%rename(Epsilon) Quantity_Color::Epsilon;
%rename(Name) Quantity_Color::Name;
%rename(StringName) Quantity_Color::StringName;
%rename(HlsRgb) Quantity_Color::HlsRgb;
%rename(RgbHls) Quantity_Color::RgbHls;
%rename(Color2argb) Quantity_Color::Color2argb;
%rename(Argb2color) Quantity_Color::Argb2color;
%rename(Test) Quantity_Color::Test;
%rename(Raise) Quantity_DateDefinitionError::Raise;
%rename(NewInstance) Quantity_DateDefinitionError::NewInstance;
%rename(SetQuantity) Quantity_Convert::SetQuantity;
%rename(ConvertUserToSI) Quantity_Convert::ConvertUserToSI;
%rename(ConvertSIToUser) Quantity_Convert::ConvertSIToUser;
%rename(IsPhysicalQuantity) Quantity_Convert::IsPhysicalQuantity;
