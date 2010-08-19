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
%rename(downcast) Handle_MDF_ARDriverHSequence::DownCast;
%rename(downcast) Handle_MDF_ARDriverTable::DownCast;
%rename(downcast) Handle_MDF_ListNodeOfDriverListOfARDriverTable::DownCast;
%rename(downcast) Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable::DownCast;
%rename(downcast) Handle_MDF_ASDriver::DownCast;
%rename(downcast) Handle_MDF_ReferenceStorageDriver::DownCast;
%rename(downcast) Handle_MDF_ARDriver::DownCast;
%rename(downcast) Handle_MDF_ReferenceRetrievalDriver::DownCast;
%rename(downcast) Handle_MDF_TagSourceRetrievalDriver::DownCast;
%rename(downcast) Handle_MDF_ASDriverTable::DownCast;
%rename(downcast) Handle_MDF_RRelocationTable::DownCast;
%rename(downcast) Handle_MDF_ListNodeOfDriverListOfASDriverTable::DownCast;
%rename(downcast) Handle_MDF_ASDriverHSequence::DownCast;
%rename(downcast) Handle_MDF_DataMapNodeOfTypeASDriverMap::DownCast;
%rename(downcast) Handle_MDF_DataMapNodeOfTypeARDriverMap::DownCast;
%rename(downcast) Handle_MDF_SRelocationTable::DownCast;
%rename(downcast) Handle_MDF_SequenceNodeOfARDriverSequence::DownCast;
%rename(downcast) Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable::DownCast;
%rename(downcast) Handle_MDF_TagSourceStorageDriver::DownCast;
%rename(downcast) Handle_MDF_SequenceNodeOfASDriverSequence::DownCast;
%rename(fromto) MDF::FromTo;
%rename(fromto) MDF::FromTo;
%rename(addstoragedrivers) MDF::AddStorageDrivers;
%rename(addretrievaldrivers) MDF::AddRetrievalDrivers;
%rename(writelabels) MDF_Tool::WriteLabels;
%rename(writelabels) MDF_Tool::WriteLabels;
%rename(writeattributes) MDF_Tool::WriteAttributes;
%rename(readlabels) MDF_Tool::ReadLabels;
%rename(readlabels) MDF_Tool::ReadLabels;
%rename(readattributes) MDF_Tool::ReadAttributes;
