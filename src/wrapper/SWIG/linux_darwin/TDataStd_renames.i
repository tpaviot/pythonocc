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
%rename(DownCast) Handle_TDataStd_DeltaOnModificationOfExtStringArray::DownCast;
%rename(DownCast) Handle_TDataStd_Relation::DownCast;
%rename(DownCast) Handle_TDataStd_DataMapNodeOfDataMapOfStringByte::DownCast;
%rename(DownCast) Handle_TDataStd_ListNodeOfListOfExtendedString::DownCast;
%rename(DownCast) Handle_TDataStd_ExtStringList::DownCast;
%rename(DownCast) Handle_TDataStd_TreeNode::DownCast;
%rename(DownCast) Handle_TDataStd_BooleanList::DownCast;
%rename(DownCast) Handle_TDataStd_UAttribute::DownCast;
%rename(DownCast) Handle_TDataStd_DataMapNodeOfDataMapOfStringReal::DownCast;
%rename(DownCast) Handle_TDataStd_HDataMapOfStringHArray1OfReal::DownCast;
%rename(DownCast) Handle_TDataStd_HDataMapOfStringByte::DownCast;
%rename(DownCast) Handle_TDataStd_ReferenceArray::DownCast;
%rename(DownCast) Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger::DownCast;
%rename(DownCast) Handle_TDataStd_DeltaOnModificationOfIntArray::DownCast;
%rename(DownCast) Handle_TDataStd_AsciiString::DownCast;
%rename(DownCast) Handle_TDataStd_HDataMapOfStringInteger::DownCast;
%rename(DownCast) Handle_TDataStd_DeltaOnModificationOfByteArray::DownCast;
%rename(DownCast) Handle_TDataStd_IntegerList::DownCast;
%rename(DownCast) Handle_TDataStd_DeltaOnModificationOfIntPackedMap::DownCast;
%rename(DownCast) Handle_TDataStd_ExtStringArray::DownCast;
%rename(DownCast) Handle_TDataStd_IntegerArray::DownCast;
%rename(DownCast) Handle_TDataStd_HDataMapOfStringReal::DownCast;
%rename(DownCast) Handle_TDataStd_ReferenceList::DownCast;
%rename(DownCast) Handle_TDataStd_HDataMapOfStringString::DownCast;
%rename(DownCast) Handle_TDataStd_Expression::DownCast;
%rename(DownCast) Handle_TDataStd_HDataMapOfStringHArray1OfInteger::DownCast;
%rename(DownCast) Handle_TDataStd_DeltaOnModificationOfRealArray::DownCast;
%rename(DownCast) Handle_TDataStd_Variable::DownCast;
%rename(DownCast) Handle_TDataStd_BooleanArray::DownCast;
%rename(DownCast) Handle_TDataStd_IntPackedMap::DownCast;
%rename(DownCast) Handle_TDataStd_HLabelArray1::DownCast;
%rename(DownCast) Handle_TDataStd_Name::DownCast;
%rename(DownCast) Handle_TDataStd_ListNodeOfListOfByte::DownCast;
%rename(DownCast) Handle_TDataStd_Tick::DownCast;
%rename(DownCast) Handle_TDataStd_Comment::DownCast;
%rename(DownCast) Handle_TDataStd_DataMapNodeOfDataMapOfStringString::DownCast;
%rename(DownCast) Handle_TDataStd_Integer::DownCast;
%rename(DownCast) Handle_TDataStd_Directory::DownCast;
%rename(DownCast) Handle_TDataStd_Current::DownCast;
%rename(DownCast) Handle_TDataStd_RealArray::DownCast;
%rename(DownCast) Handle_TDataStd_NoteBook::DownCast;
%rename(DownCast) Handle_TDataStd_RealList::DownCast;
%rename(DownCast) Handle_TDataStd_ByteArray::DownCast;
%rename(DownCast) Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal::DownCast;
%rename(DownCast) Handle_TDataStd_Real::DownCast;
%rename(DownCast) Handle_TDataStd_NamedData::DownCast;
%rename(Find) TDataStd_NoteBook::Find;
%rename(New) TDataStd_NoteBook::New;
%rename(GetID) TDataStd_NoteBook::GetID;
%rename(GetID) TDataStd_NamedData::GetID;
%rename(Set) TDataStd_NamedData::Set;
%rename(GetID) TDataStd_RealArray::GetID;
%rename(Set) TDataStd_RealArray::Set;
%rename(GetID) TDataStd_Relation::GetID;
%rename(Set) TDataStd_Relation::Set;
%rename(GetID) TDataStd_AsciiString::GetID;
%rename(Set) TDataStd_AsciiString::Set;
%rename(GetID) TDataStd_Expression::GetID;
%rename(Set) TDataStd_Expression::Set;
%rename(GetID) TDataStd_BooleanArray::GetID;
%rename(Set) TDataStd_BooleanArray::Set;
%rename(GetID) TDataStd_ByteArray::GetID;
%rename(Set) TDataStd_ByteArray::Set;
%rename(GetID) TDataStd_IntPackedMap::GetID;
%rename(Set) TDataStd_IntPackedMap::Set;
%rename(GetID) TDataStd_ExtStringList::GetID;
%rename(Set) TDataStd_ExtStringList::Set;
%rename(GetID) TDataStd_Integer::GetID;
%rename(Set) TDataStd_Integer::Set;
%rename(GetID) TDataStd_BooleanList::GetID;
%rename(Set) TDataStd_BooleanList::Set;
%rename(GetID) TDataStd_IntegerList::GetID;
%rename(Set) TDataStd_IntegerList::Set;
%rename(GetID) TDataStd_IntegerArray::GetID;
%rename(Set) TDataStd_IntegerArray::Set;
%rename(GetID) TDataStd_Current::GetID;
%rename(Set) TDataStd_Current::Set;
%rename(Get) TDataStd_Current::Get;
%rename(Has) TDataStd_Current::Has;
%rename(Set) TDataStd_UAttribute::Set;
%rename(IDList) TDataStd::IDList;
%rename(Print) TDataStd::Print;
%rename(GetID) TDataStd_ReferenceList::GetID;
%rename(Set) TDataStd_ReferenceList::Set;
%rename(GetID) TDataStd_Tick::GetID;
%rename(Set) TDataStd_Tick::Set;
%rename(GetID) TDataStd_ReferenceArray::GetID;
%rename(Set) TDataStd_ReferenceArray::Set;
%rename(GetID) TDataStd_Comment::GetID;
%rename(Set) TDataStd_Comment::Set;
%rename(GetID) TDataStd_Name::GetID;
%rename(Set) TDataStd_Name::Set;
%rename(Find) TDataStd_Directory::Find;
%rename(New) TDataStd_Directory::New;
%rename(AddDirectory) TDataStd_Directory::AddDirectory;
%rename(MakeObjectLabel) TDataStd_Directory::MakeObjectLabel;
%rename(GetID) TDataStd_Directory::GetID;
%rename(GetID) TDataStd_RealList::GetID;
%rename(Set) TDataStd_RealList::Set;
%rename(GetID) TDataStd_Variable::GetID;
%rename(Set) TDataStd_Variable::Set;
%rename(GetID) TDataStd_Real::GetID;
%rename(Set) TDataStd_Real::Set;
%rename(Find) TDataStd_TreeNode::Find;
%rename(Set) TDataStd_TreeNode::Set;
%rename(GetDefaultTreeID) TDataStd_TreeNode::GetDefaultTreeID;
%rename(GetID) TDataStd_ExtStringArray::GetID;
%rename(Set) TDataStd_ExtStringArray::Set;
