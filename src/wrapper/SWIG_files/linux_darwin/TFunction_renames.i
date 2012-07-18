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
%rename(DownCast) Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel::DownCast;
%rename(DownCast) Handle_TFunction_DriverTable::DownCast;
%rename(DownCast) Handle_TFunction_GraphNode::DownCast;
%rename(DownCast) Handle_TFunction_Scope::DownCast;
%rename(DownCast) Handle_TFunction_Driver::DownCast;
%rename(DownCast) Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver::DownCast;
%rename(DownCast) Handle_TFunction_HArray1OfDataMapOfGUIDDriver::DownCast;
%rename(DownCast) Handle_TFunction_Function::DownCast;
%rename(DownCast) Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel::DownCast;
%rename(Set) TFunction_Scope::Set;
%rename(GetID) TFunction_Scope::GetID;
%rename(Set) TFunction_Function::Set;
%rename(GetID) TFunction_Function::GetID;
%rename(Get) TFunction_DriverTable::Get;
%rename(NewFunction) TFunction_IFunction::NewFunction;
%rename(DeleteFunction) TFunction_IFunction::DeleteFunction;
%rename(UpdateDependencies) TFunction_IFunction::UpdateDependencies;
%rename(Set) TFunction_GraphNode::Set;
%rename(GetID) TFunction_GraphNode::GetID;
