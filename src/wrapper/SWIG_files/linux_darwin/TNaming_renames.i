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
%rename(DownCast) Handle_TNaming_DeltaOnRemoval::DownCast;
%rename(DownCast) Handle_TNaming_TranslateTool::DownCast;
%rename(DownCast) Handle_TNaming_DeltaOnModification::DownCast;
%rename(DownCast) Handle_TNaming_NamedShape::DownCast;
%rename(DownCast) Handle_TNaming_Naming::DownCast;
%rename(DownCast) Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape::DownCast;
%rename(DownCast) Handle_TNaming_UsedShapes::DownCast;
%rename(DownCast) Handle_TNaming_ListNodeOfListOfNamedShape::DownCast;
%rename(DownCast) Handle_TNaming_ListNodeOfListOfMapOfShape::DownCast;
%rename(DownCast) Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet::DownCast;
%rename(DownCast) Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape::DownCast;
%rename(DownCast) Handle_TNaming_StdMapNodeOfMapOfNamedShape::DownCast;
%rename(HashCode) TNaming_NamedShapeHasher::HashCode;
%rename(IsEqual) TNaming_NamedShapeHasher::IsEqual;
%rename(CurrentShape) TNaming_Tool::CurrentShape;
%rename(CurrentNamedShape) TNaming_Tool::CurrentNamedShape;
%rename(NamedShape) TNaming_Tool::NamedShape;
%rename(GetShape) TNaming_Tool::GetShape;
%rename(OriginalShape) TNaming_Tool::OriginalShape;
%rename(GeneratedShape) TNaming_Tool::GeneratedShape;
%rename(Collect) TNaming_Tool::Collect;
%rename(HasLabel) TNaming_Tool::HasLabel;
%rename(Label) TNaming_Tool::Label;
%rename(InitialShape) TNaming_Tool::InitialShape;
%rename(ValidUntil) TNaming_Tool::ValidUntil;
%rename(FindShape) TNaming_Tool::FindShape;
%rename(GetID) TNaming_UsedShapes::GetID;
%rename(IsNew) TNaming_Localizer::IsNew;
%rename(FindGenerator) TNaming_Localizer::FindGenerator;
%rename(FindShapeContext) TNaming_Localizer::FindShapeContext;
%rename(CopyTool) TNaming_CopyShape::CopyTool;
%rename(Translate) TNaming_CopyShape::Translate;
%rename(CurrentShape) TNaming_NamingTool::CurrentShape;
%rename(CurrentShapeFromShape) TNaming_NamingTool::CurrentShapeFromShape;
%rename(BuildDescendants) TNaming_NamingTool::BuildDescendants;
%rename(IsIdentified) TNaming_Selector::IsIdentified;
%rename(GetID) TNaming_NamedShape::GetID;
%rename(GetID) TNaming_Naming::GetID;
%rename(Insert) TNaming_Naming::Insert;
%rename(Name) TNaming_Naming::Name;
%rename(Substitute) TNaming::Substitute;
%rename(Update) TNaming::Update;
%rename(Displace) TNaming::Displace;
%rename(ChangeShapes) TNaming::ChangeShapes;
%rename(Transform) TNaming::Transform;
%rename(Replicate) TNaming::Replicate;
%rename(MakeShape) TNaming::MakeShape;
%rename(FindUniqueContext) TNaming::FindUniqueContext;
%rename(FindUniqueContextSet) TNaming::FindUniqueContextSet;
%rename(SubstituteSShape) TNaming::SubstituteSShape;
%rename(IDList) TNaming::IDList;
%rename(Print) TNaming::Print;
