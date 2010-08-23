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
%rename(downcast) Handle_TDataStd_DeltaOnModificationOfExtStringArray::DownCast;
%rename(downcast) Handle_TDataStd_Relation::DownCast;
%rename(downcast) Handle_TDataStd_DataMapNodeOfDataMapOfStringByte::DownCast;
%rename(downcast) Handle_TDataStd_ListNodeOfListOfExtendedString::DownCast;
%rename(downcast) Handle_TDataStd_ExtStringList::DownCast;
%rename(downcast) Handle_TDataStd_TreeNode::DownCast;
%rename(downcast) Handle_TDataStd_BooleanList::DownCast;
%rename(downcast) Handle_TDataStd_Pattern::DownCast;
%rename(downcast) Handle_TDataStd_Geometry::DownCast;
%rename(downcast) Handle_TDataStd_UAttribute::DownCast;
%rename(downcast) Handle_TDataStd_Axis::DownCast;
%rename(downcast) Handle_TDataStd_DataMapNodeOfDataMapOfStringReal::DownCast;
%rename(downcast) Handle_TDataStd_AsciiString::DownCast;
%rename(downcast) Handle_TDataStd_HDataMapOfStringHArray1OfReal::DownCast;
%rename(downcast) Handle_TDataStd_HDataMapOfStringByte::DownCast;
%rename(downcast) Handle_TDataStd_ReferenceArray::DownCast;
%rename(downcast) Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger::DownCast;
%rename(downcast) Handle_TDataStd_HArray1OfByte::DownCast;
%rename(downcast) Handle_TDataStd_DeltaOnModificationOfIntArray::DownCast;
%rename(downcast) Handle_TDataStd_Point::DownCast;
%rename(downcast) Handle_TDataStd_Constraint::DownCast;
%rename(downcast) Handle_TDataStd_HDataMapOfStringInteger::DownCast;
%rename(downcast) Handle_TDataStd_DeltaOnModificationOfByteArray::DownCast;
%rename(downcast) Handle_TDataStd_IntegerList::DownCast;
%rename(downcast) Handle_TDataStd_DeltaOnModificationOfIntPackedMap::DownCast;
%rename(downcast) Handle_TDataStd_ExtStringArray::DownCast;
%rename(downcast) Handle_TDataStd_Position::DownCast;
%rename(downcast) Handle_TDataStd_IntegerArray::DownCast;
%rename(downcast) Handle_TDataStd_HDataMapOfStringReal::DownCast;
%rename(downcast) Handle_TDataStd_Plane::DownCast;
%rename(downcast) Handle_TDataStd_ReferenceList::DownCast;
%rename(downcast) Handle_TDataStd_HDataMapOfStringString::DownCast;
%rename(downcast) Handle_TDataStd_HDataMapOfStringHArray1OfInteger::DownCast;
%rename(downcast) Handle_TDataStd_DeltaOnModificationOfRealArray::DownCast;
%rename(downcast) Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger::DownCast;
%rename(downcast) Handle_TDataStd_Variable::DownCast;
%rename(downcast) Handle_TDataStd_BooleanArray::DownCast;
%rename(downcast) Handle_TDataStd_PatternStd::DownCast;
%rename(downcast) Handle_TDataStd_IntPackedMap::DownCast;
%rename(downcast) Handle_TDataStd_HLabelArray1::DownCast;
%rename(downcast) Handle_TDataStd_HArray1OfTrsf::DownCast;
%rename(downcast) Handle_TDataStd_Name::DownCast;
%rename(downcast) Handle_TDataStd_ListNodeOfListOfByte::DownCast;
%rename(downcast) Handle_TDataStd_Tick::DownCast;
%rename(downcast) Handle_TDataStd_Expression::DownCast;
%rename(downcast) Handle_TDataStd_Placement::DownCast;
%rename(downcast) Handle_TDataStd_Shape::DownCast;
%rename(downcast) Handle_TDataStd_Comment::DownCast;
%rename(downcast) Handle_TDataStd_DataMapNodeOfDataMapOfStringString::DownCast;
%rename(downcast) Handle_TDataStd_Integer::DownCast;
%rename(downcast) Handle_TDataStd_Directory::DownCast;
%rename(downcast) Handle_TDataStd_Current::DownCast;
%rename(downcast) Handle_TDataStd_RealArray::DownCast;
%rename(downcast) Handle_TDataStd_NoteBook::DownCast;
%rename(downcast) Handle_TDataStd_RealList::DownCast;
%rename(downcast) Handle_TDataStd_ByteArray::DownCast;
%rename(downcast) Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal::DownCast;
%rename(downcast) Handle_TDataStd_Real::DownCast;
%rename(downcast) Handle_TDataStd_NamedData::DownCast;
%rename(find) TDataStd_NoteBook::Find;
%rename(new) TDataStd_NoteBook::New;
%rename(getid) TDataStd_NoteBook::GetID;
%rename(getid) TDataStd_NamedData::GetID;
%rename(set) TDataStd_NamedData::Set;
%rename(getid) TDataStd_Placement::GetID;
%rename(set) TDataStd_Placement::Set;
%rename(getid) TDataStd_Pattern::GetID;
%rename(getpatternid) TDataStd_PatternStd::GetPatternID;
%rename(set) TDataStd_PatternStd::Set;
%rename(getid) TDataStd_RealArray::GetID;
%rename(set) TDataStd_RealArray::Set;
%rename(getid) TDataStd_Relation::GetID;
%rename(set) TDataStd_Relation::Set;
%rename(getid) TDataStd_AsciiString::GetID;
%rename(set) TDataStd_AsciiString::Set;
%rename(getid) TDataStd_Expression::GetID;
%rename(set) TDataStd_Expression::Set;
%rename(getid) TDataStd_Point::GetID;
%rename(set) TDataStd_Point::Set;
%rename(set) TDataStd_Position::Set;
%rename(get) TDataStd_Position::Get;
%rename(getid) TDataStd_Position::GetID;
%rename(getid) TDataStd_BooleanArray::GetID;
%rename(set) TDataStd_BooleanArray::Set;
%rename(getid) TDataStd_ByteArray::GetID;
%rename(set) TDataStd_ByteArray::Set;
%rename(getid) TDataStd_IntPackedMap::GetID;
%rename(set) TDataStd_IntPackedMap::Set;
%rename(getid) TDataStd_ExtStringList::GetID;
%rename(set) TDataStd_ExtStringList::Set;
%rename(getid) TDataStd_Integer::GetID;
%rename(set) TDataStd_Integer::Set;
%rename(getid) TDataStd_BooleanList::GetID;
%rename(set) TDataStd_BooleanList::Set;
%rename(getid) TDataStd_IntegerList::GetID;
%rename(set) TDataStd_IntegerList::Set;
%rename(getid) TDataStd_IntegerArray::GetID;
%rename(set) TDataStd_IntegerArray::Set;
%rename(getid) TDataStd_Current::GetID;
%rename(set) TDataStd_Current::Set;
%rename(get) TDataStd_Current::Get;
%rename(has) TDataStd_Current::Has;
%rename(set) TDataStd_UAttribute::Set;
%rename(idlist) TDataStd::IDList;
%rename(print) TDataStd::Print;
%rename(getid) TDataStd_ReferenceList::GetID;
%rename(set) TDataStd_ReferenceList::Set;
%rename(getid) TDataStd_Tick::GetID;
%rename(set) TDataStd_Tick::Set;
%rename(find) TDataStd_Shape::Find;
%rename(new) TDataStd_Shape::New;
%rename(set) TDataStd_Shape::Set;
%rename(get) TDataStd_Shape::Get;
%rename(getid) TDataStd_Shape::GetID;
%rename(getid) TDataStd_ReferenceArray::GetID;
%rename(set) TDataStd_ReferenceArray::Set;
%rename(getid) TDataStd_Comment::GetID;
%rename(set) TDataStd_Comment::Set;
%rename(getid) TDataStd_Name::GetID;
%rename(set) TDataStd_Name::Set;
%rename(find) TDataStd_Directory::Find;
%rename(new) TDataStd_Directory::New;
%rename(adddirectory) TDataStd_Directory::AddDirectory;
%rename(makeobjectlabel) TDataStd_Directory::MakeObjectLabel;
%rename(getid) TDataStd_Directory::GetID;
%rename(getid) TDataStd_RealList::GetID;
%rename(set) TDataStd_RealList::Set;
%rename(getid) TDataStd_Constraint::GetID;
%rename(set) TDataStd_Constraint::Set;
%rename(collectchildconstraints) TDataStd_Constraint::CollectChildConstraints;
%rename(getid) TDataStd_Variable::GetID;
%rename(set) TDataStd_Variable::Set;
%rename(getid) TDataStd_Real::GetID;
%rename(set) TDataStd_Real::Set;
%rename(getid) TDataStd_Plane::GetID;
%rename(set) TDataStd_Plane::Set;
%rename(set) TDataStd_Geometry::Set;
%rename(type) TDataStd_Geometry::Type;
%rename(point) TDataStd_Geometry::Point;
%rename(axis) TDataStd_Geometry::Axis;
%rename(line) TDataStd_Geometry::Line;
%rename(circle) TDataStd_Geometry::Circle;
%rename(ellipse) TDataStd_Geometry::Ellipse;
%rename(plane) TDataStd_Geometry::Plane;
%rename(cylinder) TDataStd_Geometry::Cylinder;
%rename(getid) TDataStd_Geometry::GetID;
%rename(getid) TDataStd_Axis::GetID;
%rename(set) TDataStd_Axis::Set;
%rename(find) TDataStd_TreeNode::Find;
%rename(set) TDataStd_TreeNode::Set;
%rename(getdefaulttreeid) TDataStd_TreeNode::GetDefaultTreeID;
%rename(getid) TDataStd_ExtStringArray::GetID;
%rename(set) TDataStd_ExtStringArray::Set;
