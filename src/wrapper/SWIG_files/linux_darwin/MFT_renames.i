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
%rename(DownCast) Handle_MFT_SequenceNodeOfListOfFontHandle::DownCast;
%rename(DownCast) Handle_MFT_TextManager::DownCast;
%rename(DownCast) Handle_MFT_FontManager::DownCast;
%rename(DownCast) Handle_MFT_FontManagerError::DownCast;
%rename(DownCast) Handle_MFT_FontManagerDefinitionError::DownCast;
%rename(Raise) MFT_FontManagerError::Raise;
%rename(NewInstance) MFT_FontManagerError::NewInstance;
%rename(IsKnown) MFT_FontManager::IsKnown;
%rename(Font) MFT_FontManager::Font;
%rename(FontNumber) MFT_FontManager::FontNumber;
%rename(MaxCommandValues) MFT_FontManager::MaxCommandValues;
%rename(Restore) MFT_FontManager::Restore;
%rename(Raise) MFT_FontManagerDefinitionError::Raise;
%rename(NewInstance) MFT_FontManagerDefinitionError::NewInstance;
