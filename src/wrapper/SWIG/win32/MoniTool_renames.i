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
%rename(downcast) Handle_MoniTool_SignText::DownCast;
%rename(downcast) Handle_MoniTool_CaseData::DownCast;
%rename(downcast) Handle_MoniTool_DataMapNodeOfDataMapOfTimer::DownCast;
%rename(downcast) Handle_MoniTool_IntVal::DownCast;
%rename(downcast) Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient::DownCast;
%rename(downcast) Handle_MoniTool_RealVal::DownCast;
%rename(downcast) Handle_MoniTool_Element::DownCast;
%rename(downcast) Handle_MoniTool_TransientElem::DownCast;
%rename(downcast) Handle_MoniTool_Profile::DownCast;
%rename(downcast) Handle_MoniTool_SequenceNodeOfSequenceOfElement::DownCast;
%rename(downcast) Handle_MoniTool_Timer::DownCast;
%rename(downcast) Handle_MoniTool_TypedValue::DownCast;
%rename(downcast) Handle_MoniTool_Option::DownCast;
%rename(downcast) Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient::DownCast;
%rename(downcast) Handle_MoniTool_SignShape::DownCast;
%rename(downcast) Handle_MoniTool_HSequenceOfElement::DownCast;
%rename(hashcode) MoniTool_ElemHasher::HashCode;
%rename(isequal) MoniTool_ElemHasher::IsEqual;
%rename(timer) MoniTool_Timer::Timer;
%rename(start) MoniTool_Timer::Start;
%rename(stop) MoniTool_Timer::Stop;
%rename(dictionary) MoniTool_Timer::Dictionary;
%rename(cleartimers) MoniTool_Timer::ClearTimers;
%rename(dumptimers) MoniTool_Timer::DumpTimers;
%rename(computeamendments) MoniTool_Timer::ComputeAmendments;
%rename(getamendments) MoniTool_Timer::GetAmendments;
%rename(setdefwarning) MoniTool_CaseData::SetDefWarning;
%rename(setdeffail) MoniTool_CaseData::SetDefFail;
%rename(defcheck) MoniTool_CaseData::DefCheck;
%rename(setdefmsg) MoniTool_CaseData::SetDefMsg;
%rename(defmsg) MoniTool_CaseData::DefMsg;
%rename(type) MoniTool_DataInfo::Type;
%rename(typename) MoniTool_DataInfo::TypeName;
%rename(hashcode) MoniTool_MTHasher::HashCode;
%rename(isequal) MoniTool_MTHasher::IsEqual;
%rename(addlib) MoniTool_TypedValue::AddLib;
%rename(lib) MoniTool_TypedValue::Lib;
%rename(fromlib) MoniTool_TypedValue::FromLib;
%rename(liblist) MoniTool_TypedValue::LibList;
%rename(staticvalue) MoniTool_TypedValue::StaticValue;
%rename(current) MoniTool_Stat::Current;
