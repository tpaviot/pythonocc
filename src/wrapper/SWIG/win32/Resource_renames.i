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
%rename(downcast) Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString::DownCast;
%rename(downcast) Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString::DownCast;
%rename(downcast) Handle_Resource_Manager::DownCast;
%rename(downcast) Handle_Resource_NoSuchResource::DownCast;
%rename(sort) Resource_QuickSortOfArray1::Sort;
%rename(raise) Resource_NoSuchResource::Raise;
%rename(newinstance) Resource_NoSuchResource::NewInstance;
%rename(convertsjistounicode) Resource_Unicode::ConvertSJISToUnicode;
%rename(converteuctounicode) Resource_Unicode::ConvertEUCToUnicode;
%rename(convertgbtounicode) Resource_Unicode::ConvertGBToUnicode;
%rename(convertansitounicode) Resource_Unicode::ConvertANSIToUnicode;
%rename(convertunicodetosjis) Resource_Unicode::ConvertUnicodeToSJIS;
%rename(convertunicodetoeuc) Resource_Unicode::ConvertUnicodeToEUC;
%rename(convertunicodetogb) Resource_Unicode::ConvertUnicodeToGB;
%rename(convertunicodetoansi) Resource_Unicode::ConvertUnicodeToANSI;
%rename(setformat) Resource_Unicode::SetFormat;
%rename(getformat) Resource_Unicode::GetFormat;
%rename(readformat) Resource_Unicode::ReadFormat;
%rename(convertformattounicode) Resource_Unicode::ConvertFormatToUnicode;
%rename(convertunicodetoformat) Resource_Unicode::ConvertUnicodeToFormat;
