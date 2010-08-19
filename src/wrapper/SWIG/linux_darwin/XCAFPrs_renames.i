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
%rename(downcast) Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient::DownCast;
%rename(downcast) Handle_XCAFPrs_AISObject::DownCast;
%rename(downcast) Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle::DownCast;
%rename(downcast) Handle_XCAFPrs_Driver::DownCast;
%rename(downcast) Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape::DownCast;
%rename(collectstylesettings) XCAFPrs::CollectStyleSettings;
%rename(dispatchstyles) XCAFPrs::DispatchStyles;
%rename(setviewnamemode) XCAFPrs::SetViewNameMode;
%rename(getviewnamemode) XCAFPrs::GetViewNameMode;
%rename(getid) XCAFPrs_Driver::GetID;
%rename(hashcode) XCAFPrs_Style::HashCode;
%rename(isequal) XCAFPrs_Style::IsEqual;
