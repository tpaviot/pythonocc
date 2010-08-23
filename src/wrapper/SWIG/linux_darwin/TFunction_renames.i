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
%rename(downcast) Handle_TFunction_HArray1OfDataMapOfGUIDDriver::DownCast;
%rename(downcast) Handle_TFunction_DriverTable::DownCast;
%rename(downcast) Handle_TFunction_GraphNode::DownCast;
%rename(downcast) Handle_TFunction_Scope::DownCast;
%rename(downcast) Handle_TFunction_Driver::DownCast;
%rename(downcast) Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver::DownCast;
%rename(downcast) Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel::DownCast;
%rename(downcast) Handle_TFunction_Function::DownCast;
%rename(downcast) Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel::DownCast;
%rename(set) TFunction_Function::Set;
%rename(getid) TFunction_Function::GetID;
%rename(newfunction) TFunction_IFunction::NewFunction;
%rename(deletefunction) TFunction_IFunction::DeleteFunction;
%rename(updatedependencies) TFunction_IFunction::UpdateDependencies;
%rename(get) TFunction_DriverTable::Get;
%rename(set) TFunction_GraphNode::Set;
%rename(getid) TFunction_GraphNode::GetID;
%rename(set) TFunction_Scope::Set;
%rename(getid) TFunction_Scope::GetID;
