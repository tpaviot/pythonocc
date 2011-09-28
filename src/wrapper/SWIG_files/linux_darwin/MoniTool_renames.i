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
%rename(DownCast) Handle_MoniTool_SignText::DownCast;
%rename(DownCast) Handle_MoniTool_DataMapNodeOfDataMapOfTimer::DownCast;
%rename(DownCast) Handle_MoniTool_IntVal::DownCast;
%rename(DownCast) Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient::DownCast;
%rename(DownCast) Handle_MoniTool_CaseData::DownCast;
%rename(DownCast) Handle_MoniTool_RealVal::DownCast;
%rename(DownCast) Handle_MoniTool_Option::DownCast;
%rename(DownCast) Handle_MoniTool_Element::DownCast;
%rename(DownCast) Handle_MoniTool_TransientElem::DownCast;
%rename(DownCast) Handle_MoniTool_Profile::DownCast;
%rename(DownCast) Handle_MoniTool_SequenceNodeOfSequenceOfElement::DownCast;
%rename(DownCast) Handle_MoniTool_TypedValue::DownCast;
%rename(DownCast) Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient::DownCast;
%rename(DownCast) Handle_MoniTool_SignShape::DownCast;
%rename(DownCast) Handle_MoniTool_HSequenceOfElement::DownCast;
%rename(DownCast) Handle_MoniTool_Timer::DownCast;
%rename(Timer) MoniTool_Timer::Timer;
%rename(Start) MoniTool_Timer::Start;
%rename(Stop) MoniTool_Timer::Stop;
%rename(Dictionary) MoniTool_Timer::Dictionary;
%rename(ClearTimers) MoniTool_Timer::ClearTimers;
%rename(DumpTimers) MoniTool_Timer::DumpTimers;
%rename(ComputeAmendments) MoniTool_Timer::ComputeAmendments;
%rename(GetAmendments) MoniTool_Timer::GetAmendments;
%rename(Current) MoniTool_Stat::Current;
%rename(AddLib) MoniTool_TypedValue::AddLib;
%rename(Lib) MoniTool_TypedValue::Lib;
%rename(FromLib) MoniTool_TypedValue::FromLib;
%rename(LibList) MoniTool_TypedValue::LibList;
%rename(StaticValue) MoniTool_TypedValue::StaticValue;
%rename(Type) MoniTool_DataInfo::Type;
%rename(TypeName) MoniTool_DataInfo::TypeName;
%rename(HashCode) MoniTool_ElemHasher::HashCode;
%rename(IsEqual) MoniTool_ElemHasher::IsEqual;
%rename(HashCode) MoniTool_MTHasher::HashCode;
%rename(IsEqual) MoniTool_MTHasher::IsEqual;
%rename(SetDefWarning) MoniTool_CaseData::SetDefWarning;
%rename(SetDefFail) MoniTool_CaseData::SetDefFail;
%rename(DefCheck) MoniTool_CaseData::DefCheck;
%rename(SetDefMsg) MoniTool_CaseData::SetDefMsg;
%rename(DefMsg) MoniTool_CaseData::DefMsg;
