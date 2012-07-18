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
%rename(DownCast) Handle_MDF_ListNodeOfDriverListOfARDriverTable::DownCast;
%rename(DownCast) Handle_MDF_ASDriver::DownCast;
%rename(DownCast) Handle_MDF_TagSourceStorageDriver::DownCast;
%rename(DownCast) Handle_MDF_ARDriverHSequence::DownCast;
%rename(DownCast) Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable::DownCast;
%rename(DownCast) Handle_MDF_ARDriver::DownCast;
%rename(DownCast) Handle_MDF_ReferenceRetrievalDriver::DownCast;
%rename(DownCast) Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable::DownCast;
%rename(DownCast) Handle_MDF_ASDriverTable::DownCast;
%rename(DownCast) Handle_MDF_SRelocationTable::DownCast;
%rename(DownCast) Handle_MDF_ListNodeOfDriverListOfASDriverTable::DownCast;
%rename(DownCast) Handle_MDF_DataMapNodeOfTypeASDriverMap::DownCast;
%rename(DownCast) Handle_MDF_SequenceNodeOfARDriverSequence::DownCast;
%rename(DownCast) Handle_MDF_ASDriverHSequence::DownCast;
%rename(DownCast) Handle_MDF_ReferenceStorageDriver::DownCast;
%rename(DownCast) Handle_MDF_DataMapNodeOfTypeARDriverMap::DownCast;
%rename(DownCast) Handle_MDF_TagSourceRetrievalDriver::DownCast;
%rename(DownCast) Handle_MDF_ARDriverTable::DownCast;
%rename(DownCast) Handle_MDF_RRelocationTable::DownCast;
%rename(DownCast) Handle_MDF_SequenceNodeOfASDriverSequence::DownCast;
%rename(FromTo) MDF::FromTo;
%rename(AddStorageDrivers) MDF::AddStorageDrivers;
%rename(AddRetrievalDrivers) MDF::AddRetrievalDrivers;
%rename(WriteLabels) MDF_Tool::WriteLabels;
%rename(WriteAttributes) MDF_Tool::WriteAttributes;
%rename(ReadLabels) MDF_Tool::ReadLabels;
%rename(ReadAttributes) MDF_Tool::ReadAttributes;
