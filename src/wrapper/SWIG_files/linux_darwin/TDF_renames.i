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
%rename(DownCast) Handle_TDF_DoubleMapNodeOfGUIDProgIDMap::DownCast;
%rename(DownCast) Handle_TDF_AttributeDelta::DownCast;
%rename(DownCast) Handle_TDF_DeltaOnForget::DownCast;
%rename(DownCast) Handle_TDF_StdMapNodeOfLabelMap::DownCast;
%rename(DownCast) Handle_TDF_Attribute::DownCast;
%rename(DownCast) Handle_TDF_Reference::DownCast;
%rename(DownCast) Handle_TDF_DataMapNodeOfAttributeDataMap::DownCast;
%rename(DownCast) Handle_TDF_StdMapNodeOfIDMap::DownCast;
%rename(DownCast) Handle_TDF_DataSet::DownCast;
%rename(DownCast) Handle_TDF_ListNodeOfDeltaList::DownCast;
%rename(DownCast) Handle_TDF_TagSource::DownCast;
%rename(DownCast) Handle_TDF_HAttributeArray1::DownCast;
%rename(DownCast) Handle_TDF_DeltaOnModification::DownCast;
%rename(DownCast) Handle_TDF_Delta::DownCast;
%rename(DownCast) Handle_TDF_ListNodeOfAttributeList::DownCast;
%rename(DownCast) Handle_TDF_SequenceNodeOfAttributeSequence::DownCast;
%rename(DownCast) Handle_TDF_DeltaOnRemoval::DownCast;
%rename(DownCast) Handle_TDF_ListNodeOfIDList::DownCast;
%rename(DownCast) Handle_TDF_DataMapNodeOfLabelIntegerMap::DownCast;
%rename(DownCast) Handle_TDF_RelocationTable::DownCast;
%rename(DownCast) Handle_TDF_ListNodeOfAttributeDeltaList::DownCast;
%rename(DownCast) Handle_TDF_DataMapNodeOfLabelDataMap::DownCast;
%rename(DownCast) Handle_TDF_ListNodeOfLabelList::DownCast;
%rename(DownCast) Handle_TDF_DeltaOnResume::DownCast;
%rename(DownCast) Handle_TDF_DoubleMapNodeOfAttributeDoubleMap::DownCast;
%rename(DownCast) Handle_TDF_Data::DownCast;
%rename(DownCast) Handle_TDF_IndexedMapNodeOfAttributeIndexedMap::DownCast;
%rename(DownCast) Handle_TDF_DefaultDeltaOnModification::DownCast;
%rename(DownCast) Handle_TDF_StdMapNodeOfAttributeMap::DownCast;
%rename(DownCast) Handle_TDF_DeltaOnAddition::DownCast;
%rename(DownCast) Handle_TDF_IndexedMapNodeOfLabelIndexedMap::DownCast;
%rename(DownCast) Handle_TDF_DataMapNodeOfLabelLabelMap::DownCast;
%rename(DownCast) Handle_TDF_SequenceNodeOfLabelSequence::DownCast;
%rename(DownCast) Handle_TDF_DoubleMapNodeOfLabelDoubleMap::DownCast;
%rename(DownCast) Handle_TDF_DefaultDeltaOnRemoval::DownCast;
%rename(NbLabels) TDF_Tool::NbLabels;
%rename(NbAttributes) TDF_Tool::NbAttributes;
%rename(IsSelfContained) TDF_Tool::IsSelfContained;
%rename(OutReferers) TDF_Tool::OutReferers;
%rename(OutReferences) TDF_Tool::OutReferences;
%rename(RelocateLabel) TDF_Tool::RelocateLabel;
%rename(Entry) TDF_Tool::Entry;
%rename(TagList) TDF_Tool::TagList;
%rename(Label) TDF_Tool::Label;
%rename(CountLabels) TDF_Tool::CountLabels;
%rename(DeductLabels) TDF_Tool::DeductLabels;
%rename(DeepDump) TDF_Tool::DeepDump;
%rename(ExtendedDeepDump) TDF_Tool::ExtendedDeepDump;
%rename(HashCode) TDF_LabelMapHasher::HashCode;
%rename(IsEqual) TDF_LabelMapHasher::IsEqual;
%rename(GetID) TDF_TagSource::GetID;
%rename(Set) TDF_TagSource::Set;
%rename(NewChild) TDF_TagSource::NewChild;
%rename(Copy) TDF_CopyTool::Copy;
%rename(ExternalReferences) TDF_CopyLabel::ExternalReferences;
%rename(Closure) TDF_ClosureTool::Closure;
%rename(LowestID) TDF::LowestID;
%rename(UppestID) TDF::UppestID;
%rename(AddLinkGUIDToProgID) TDF::AddLinkGUIDToProgID;
%rename(GUIDFromProgID) TDF::GUIDFromProgID;
%rename(ProgIDFromGUID) TDF::ProgIDFromGUID;
%rename(GetID) TDF_Reference::GetID;
%rename(Set) TDF_Reference::Set;
%rename(Compare) TDF_ComparisonTool::Compare;
%rename(SourceUnbound) TDF_ComparisonTool::SourceUnbound;
%rename(TargetUnbound) TDF_ComparisonTool::TargetUnbound;
%rename(Cut) TDF_ComparisonTool::Cut;
%rename(IsSelfContained) TDF_ComparisonTool::IsSelfContained;
