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
%rename(downcast) Handle_TNaming_DeltaOnModification::DownCast;
%rename(downcast) Handle_TNaming_Naming::DownCast;
%rename(downcast) Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape::DownCast;
%rename(downcast) Handle_TNaming_UsedShapes::DownCast;
%rename(downcast) Handle_TNaming_ListNodeOfListOfNamedShape::DownCast;
%rename(downcast) Handle_TNaming_TranslateTool::DownCast;
%rename(downcast) Handle_TNaming_NamedShape::DownCast;
%rename(downcast) Handle_TNaming_DeltaOnRemoval::DownCast;
%rename(downcast) Handle_TNaming_ListNodeOfListOfMapOfShape::DownCast;
%rename(downcast) Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet::DownCast;
%rename(downcast) Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape::DownCast;
%rename(downcast) Handle_TNaming_StdMapNodeOfMapOfNamedShape::DownCast;
%rename(hashcode) TNaming_NamedShapeHasher::HashCode;
%rename(isequal) TNaming_NamedShapeHasher::IsEqual;
%rename(currentshape) TNaming_Tool::CurrentShape;
%rename(currentnamedshape) TNaming_Tool::CurrentNamedShape;
%rename(namedshape) TNaming_Tool::NamedShape;
%rename(getshape) TNaming_Tool::GetShape;
%rename(originalshape) TNaming_Tool::OriginalShape;
%rename(generatedshape) TNaming_Tool::GeneratedShape;
%rename(collect) TNaming_Tool::Collect;
%rename(haslabel) TNaming_Tool::HasLabel;
%rename(label) TNaming_Tool::Label;
%rename(initialshape) TNaming_Tool::InitialShape;
%rename(validuntil) TNaming_Tool::ValidUntil;
%rename(findshape) TNaming_Tool::FindShape;
%rename(getid) TNaming_UsedShapes::GetID;
%rename(currentshape) TNaming_NamingTool::CurrentShape;
%rename(currentshapefromshape) TNaming_NamingTool::CurrentShapeFromShape;
%rename(builddescendants) TNaming_NamingTool::BuildDescendants;
%rename(copytool) TNaming_CopyShape::CopyTool;
%rename(translate) TNaming_CopyShape::Translate;
%rename(isidentified) TNaming_Selector::IsIdentified;
%rename(getid) TNaming_NamedShape::GetID;
%rename(isnew) TNaming_Localizer::IsNew;
%rename(findgenerator) TNaming_Localizer::FindGenerator;
%rename(findshapecontext) TNaming_Localizer::FindShapeContext;
%rename(getid) TNaming_Naming::GetID;
%rename(insert) TNaming_Naming::Insert;
%rename(name) TNaming_Naming::Name;
%rename(substitute) TNaming::Substitute;
%rename(update) TNaming::Update;
%rename(displace) TNaming::Displace;
%rename(changeshapes) TNaming::ChangeShapes;
%rename(transform) TNaming::Transform;
%rename(replicate) TNaming::Replicate;
%rename(idlist) TNaming::IDList;
%rename(print) TNaming::Print;
