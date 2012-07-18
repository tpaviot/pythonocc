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
%rename(DownCast) Handle_CDM_StdMapNodeOfMapOfDocument::DownCast;
%rename(DownCast) Handle_CDM_MessageDriver::DownCast;
%rename(DownCast) Handle_CDM_DataMapNodeOfPresentationDirectory::DownCast;
%rename(DownCast) Handle_CDM_Reference::DownCast;
%rename(DownCast) Handle_CDM_COutMessageDriver::DownCast;
%rename(DownCast) Handle_CDM_NullMessageDriver::DownCast;
%rename(DownCast) Handle_CDM_Document::DownCast;
%rename(DownCast) Handle_CDM_DataMapNodeOfMetaDataLookUpTable::DownCast;
%rename(DownCast) Handle_CDM_ListNodeOfListOfDocument::DownCast;
%rename(DownCast) Handle_CDM_ListNodeOfListOfReferences::DownCast;
%rename(DownCast) Handle_CDM_StackNodeOfStackOfDocument::DownCast;
%rename(DownCast) Handle_CDM_MetaData::DownCast;
%rename(DownCast) Handle_CDM_Application::DownCast;
%rename(LookUp) CDM_MetaData::LookUp;
%rename(HashCode) CDM_DocumentHasher::HashCode;
%rename(IsEqual) CDM_DocumentHasher::IsEqual;
