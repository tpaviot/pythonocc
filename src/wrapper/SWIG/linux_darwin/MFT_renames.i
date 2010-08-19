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
%rename(downcast) Handle_MFT_SequenceNodeOfListOfFontHandle::DownCast;
%rename(downcast) Handle_MFT_SequenceNodeOfListOfFontName::DownCast;
%rename(downcast) Handle_MFT_TextManager::DownCast;
%rename(downcast) Handle_MFT_FontManager::DownCast;
%rename(downcast) Handle_MFT_FontManagerError::DownCast;
%rename(downcast) Handle_MFT_SequenceNodeOfListOfFontReference::DownCast;
%rename(downcast) Handle_MFT_FontManagerDefinitionError::DownCast;
%rename(raise) MFT_FontManagerError::Raise;
%rename(raise) MFT_FontManagerError::Raise;
%rename(newinstance) MFT_FontManagerError::NewInstance;
%rename(isknown) MFT_FontManager::IsKnown;
%rename(font) MFT_FontManager::Font;
%rename(fontnumber) MFT_FontManager::FontNumber;
%rename(font) MFT_FontManager::Font;
%rename(maxcommandvalues) MFT_FontManager::MaxCommandValues;
%rename(restore) MFT_FontManager::Restore;
%rename(raise) MFT_FontManagerDefinitionError::Raise;
%rename(raise) MFT_FontManagerDefinitionError::Raise;
%rename(newinstance) MFT_FontManagerDefinitionError::NewInstance;
