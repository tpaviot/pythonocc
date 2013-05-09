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
%rename(DownCast) Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString::DownCast;
%rename(DownCast) Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString::DownCast;
%rename(DownCast) Handle_Resource_Manager::DownCast;
%rename(DownCast) Handle_Resource_NoSuchResource::DownCast;
%rename(Sort) Resource_QuickSortOfArray1::Sort;
%rename(Raise) Resource_NoSuchResource::Raise;
%rename(NewInstance) Resource_NoSuchResource::NewInstance;
%rename(ConvertSJISToUnicode) Resource_Unicode::ConvertSJISToUnicode;
%rename(ConvertEUCToUnicode) Resource_Unicode::ConvertEUCToUnicode;
%rename(ConvertGBToUnicode) Resource_Unicode::ConvertGBToUnicode;
%rename(ConvertANSIToUnicode) Resource_Unicode::ConvertANSIToUnicode;
%rename(ConvertUnicodeToSJIS) Resource_Unicode::ConvertUnicodeToSJIS;
%rename(ConvertUnicodeToEUC) Resource_Unicode::ConvertUnicodeToEUC;
%rename(ConvertUnicodeToGB) Resource_Unicode::ConvertUnicodeToGB;
%rename(ConvertUnicodeToANSI) Resource_Unicode::ConvertUnicodeToANSI;
%rename(SetFormat) Resource_Unicode::SetFormat;
%rename(GetFormat) Resource_Unicode::GetFormat;
%rename(ReadFormat) Resource_Unicode::ReadFormat;
%rename(ConvertFormatToUnicode) Resource_Unicode::ConvertFormatToUnicode;
%rename(ConvertUnicodeToFormat) Resource_Unicode::ConvertUnicodeToFormat;
