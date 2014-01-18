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
%rename(DownCast) Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient::DownCast;
%rename(DownCast) Handle_XCAFPrs_AISObject::DownCast;
%rename(DownCast) Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle::DownCast;
%rename(DownCast) Handle_XCAFPrs_Driver::DownCast;
%rename(DownCast) Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape::DownCast;
%rename(GetID) XCAFPrs_Driver::GetID;
%rename(CollectStyleSettings) XCAFPrs::CollectStyleSettings;
%rename(DispatchStyles) XCAFPrs::DispatchStyles;
%rename(SetViewNameMode) XCAFPrs::SetViewNameMode;
%rename(GetViewNameMode) XCAFPrs::GetViewNameMode;
%rename(HashCode) XCAFPrs_Style::HashCode;
%rename(IsEqual) XCAFPrs_Style::IsEqual;
