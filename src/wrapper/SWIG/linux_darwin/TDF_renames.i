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
%rename(downcast) Handle_TDF_DoubleMapNodeOfGUIDProgIDMap::DownCast;
%rename(downcast) Handle_TDF_AttributeDelta::DownCast;
%rename(downcast) Handle_TDF_StdMapNodeOfLabelMap::DownCast;
%rename(downcast) Handle_TDF_Attribute::DownCast;
%rename(downcast) Handle_TDF_Reference::DownCast;
%rename(downcast) Handle_TDF_DataMapNodeOfAttributeDataMap::DownCast;
%rename(downcast) Handle_TDF_StdMapNodeOfIDMap::DownCast;
%rename(downcast) Handle_TDF_DataSet::DownCast;
%rename(downcast) Handle_TDF_DeltaOnModification::DownCast;
%rename(downcast) Handle_TDF_DataMapNodeOfLabelDataMap::DownCast;
%rename(downcast) Handle_TDF_ListNodeOfAttributeList::DownCast;
%rename(downcast) Handle_TDF_DeltaOnRemoval::DownCast;
%rename(downcast) Handle_TDF_DefaultDeltaOnRemoval::DownCast;
%rename(downcast) Handle_TDF_SequenceNodeOfAttributeSequence::DownCast;
%rename(downcast) Handle_TDF_ListNodeOfIDList::DownCast;
%rename(downcast) Handle_TDF_DataMapNodeOfLabelIntegerMap::DownCast;
%rename(downcast) Handle_TDF_RelocationTable::DownCast;
%rename(downcast) Handle_TDF_StdMapNodeOfAttributeMap::DownCast;
%rename(downcast) Handle_TDF_ListNodeOfAttributeDeltaList::DownCast;
%rename(downcast) Handle_TDF_ListNodeOfLabelList::DownCast;
%rename(downcast) Handle_TDF_Data::DownCast;
%rename(downcast) Handle_TDF_DoubleMapNodeOfAttributeDoubleMap::DownCast;
%rename(downcast) Handle_TDF_DeltaOnAddition::DownCast;
%rename(downcast) Handle_TDF_IndexedMapNodeOfAttributeIndexedMap::DownCast;
%rename(downcast) Handle_TDF_ListNodeOfDeltaList::DownCast;
%rename(downcast) Handle_TDF_HAttributeArray1::DownCast;
%rename(downcast) Handle_TDF_TagSource::DownCast;
%rename(downcast) Handle_TDF_DeltaOnResume::DownCast;
%rename(downcast) Handle_TDF_DataMapNodeOfLabelLabelMap::DownCast;
%rename(downcast) Handle_TDF_SequenceNodeOfLabelSequence::DownCast;
%rename(downcast) Handle_TDF_Delta::DownCast;
%rename(downcast) Handle_TDF_DefaultDeltaOnModification::DownCast;
%rename(downcast) Handle_TDF_DeltaOnForget::DownCast;
%rename(downcast) Handle_TDF_IndexedMapNodeOfLabelIndexedMap::DownCast;
%rename(downcast) Handle_TDF_DoubleMapNodeOfLabelDoubleMap::DownCast;
%rename(nblabels) TDF_Tool::NbLabels;
%rename(nbattributes) TDF_Tool::NbAttributes;
%rename(isselfcontained) TDF_Tool::IsSelfContained;
%rename(outreferers) TDF_Tool::OutReferers;
%rename(outreferences) TDF_Tool::OutReferences;
%rename(relocatelabel) TDF_Tool::RelocateLabel;
%rename(entry) TDF_Tool::Entry;
%rename(taglist) TDF_Tool::TagList;
%rename(label) TDF_Tool::Label;
%rename(countlabels) TDF_Tool::CountLabels;
%rename(deductlabels) TDF_Tool::DeductLabels;
%rename(deepdump) TDF_Tool::DeepDump;
%rename(extendeddeepdump) TDF_Tool::ExtendedDeepDump;
%rename(hashcode) TDF_LabelMapHasher::HashCode;
%rename(isequal) TDF_LabelMapHasher::IsEqual;
%rename(getid) TDF_TagSource::GetID;
%rename(set) TDF_TagSource::Set;
%rename(newchild) TDF_TagSource::NewChild;
%rename(copy) TDF_CopyTool::Copy;
%rename(externalreferences) TDF_CopyLabel::ExternalReferences;
%rename(lowestid) TDF::LowestID;
%rename(uppestid) TDF::UppestID;
%rename(addlinkguidtoprogid) TDF::AddLinkGUIDToProgID;
%rename(guidfromprogid) TDF::GUIDFromProgID;
%rename(progidfromguid) TDF::ProgIDFromGUID;
%rename(getid) TDF_Reference::GetID;
%rename(set) TDF_Reference::Set;
%rename(compare) TDF_ComparisonTool::Compare;
%rename(sourceunbound) TDF_ComparisonTool::SourceUnbound;
%rename(targetunbound) TDF_ComparisonTool::TargetUnbound;
%rename(cut) TDF_ComparisonTool::Cut;
%rename(isselfcontained) TDF_ComparisonTool::IsSelfContained;
%rename(closure) TDF_ClosureTool::Closure;
