/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_TDF_Attribute.hxx>
#include<Handle_TDF_AttributeDelta.hxx>
#include<Handle_TDF_Data.hxx>
#include<Handle_TDF_DataMapNodeOfAttributeDataMap.hxx>
#include<Handle_TDF_DataMapNodeOfLabelDataMap.hxx>
#include<Handle_TDF_DataMapNodeOfLabelIntegerMap.hxx>
#include<Handle_TDF_DataMapNodeOfLabelLabelMap.hxx>
#include<Handle_TDF_DataSet.hxx>
#include<Handle_TDF_DefaultDeltaOnModification.hxx>
#include<Handle_TDF_DefaultDeltaOnRemoval.hxx>
#include<Handle_TDF_Delta.hxx>
#include<Handle_TDF_DeltaOnAddition.hxx>
#include<Handle_TDF_DeltaOnForget.hxx>
#include<Handle_TDF_DeltaOnModification.hxx>
#include<Handle_TDF_DeltaOnRemoval.hxx>
#include<Handle_TDF_DeltaOnResume.hxx>
#include<Handle_TDF_DoubleMapNodeOfAttributeDoubleMap.hxx>
#include<Handle_TDF_DoubleMapNodeOfGUIDProgIDMap.hxx>
#include<Handle_TDF_DoubleMapNodeOfLabelDoubleMap.hxx>
#include<Handle_TDF_HAttributeArray1.hxx>
#include<Handle_TDF_IndexedMapNodeOfAttributeIndexedMap.hxx>
#include<Handle_TDF_IndexedMapNodeOfLabelIndexedMap.hxx>
#include<Handle_TDF_ListNodeOfAttributeDeltaList.hxx>
#include<Handle_TDF_ListNodeOfAttributeList.hxx>
#include<Handle_TDF_ListNodeOfDeltaList.hxx>
#include<Handle_TDF_ListNodeOfIDList.hxx>
#include<Handle_TDF_ListNodeOfLabelList.hxx>
#include<Handle_TDF_Reference.hxx>
#include<Handle_TDF_RelocationTable.hxx>
#include<Handle_TDF_SequenceNodeOfAttributeSequence.hxx>
#include<Handle_TDF_SequenceNodeOfLabelSequence.hxx>
#include<Handle_TDF_StdMapNodeOfAttributeMap.hxx>
#include<Handle_TDF_StdMapNodeOfIDMap.hxx>
#include<Handle_TDF_StdMapNodeOfLabelMap.hxx>
#include<Handle_TDF_TagSource.hxx>
#include<TDF.hxx>
#include<TDF_Attribute.hxx>
#include<TDF_AttributeArray1.hxx>
#include<TDF_AttributeDataMap.hxx>
#include<TDF_AttributeDelta.hxx>
#include<TDF_AttributeDeltaList.hxx>
#include<TDF_AttributeDoubleMap.hxx>
#include<TDF_AttributeIndexedMap.hxx>
#include<TDF_AttributeIterator.hxx>
#include<TDF_AttributeList.hxx>
#include<TDF_AttributeMap.hxx>
#include<TDF_AttributeSequence.hxx>
#include<TDF_ChildIDIterator.hxx>
#include<TDF_ChildIterator.hxx>
#include<TDF_ClosureMode.hxx>
#include<TDF_ClosureTool.hxx>
#include<TDF_ComparisonTool.hxx>
#include<TDF_CopyLabel.hxx>
#include<TDF_CopyTool.hxx>
#include<TDF_Data.hxx>
#include<TDF_DataMapIteratorOfAttributeDataMap.hxx>
#include<TDF_DataMapIteratorOfLabelDataMap.hxx>
#include<TDF_DataMapIteratorOfLabelIntegerMap.hxx>
#include<TDF_DataMapIteratorOfLabelLabelMap.hxx>
#include<TDF_DataMapNodeOfAttributeDataMap.hxx>
#include<TDF_DataMapNodeOfLabelDataMap.hxx>
#include<TDF_DataMapNodeOfLabelIntegerMap.hxx>
#include<TDF_DataMapNodeOfLabelLabelMap.hxx>
#include<TDF_DataSet.hxx>
#include<TDF_DefaultDeltaOnModification.hxx>
#include<TDF_DefaultDeltaOnRemoval.hxx>
#include<TDF_Delta.hxx>
#include<TDF_DeltaList.hxx>
#include<TDF_DeltaOnAddition.hxx>
#include<TDF_DeltaOnForget.hxx>
#include<TDF_DeltaOnModification.hxx>
#include<TDF_DeltaOnRemoval.hxx>
#include<TDF_DeltaOnResume.hxx>
#include<TDF_DoubleMapIteratorOfAttributeDoubleMap.hxx>
#include<TDF_DoubleMapIteratorOfGUIDProgIDMap.hxx>
#include<TDF_DoubleMapIteratorOfLabelDoubleMap.hxx>
#include<TDF_DoubleMapNodeOfAttributeDoubleMap.hxx>
#include<TDF_DoubleMapNodeOfGUIDProgIDMap.hxx>
#include<TDF_DoubleMapNodeOfLabelDoubleMap.hxx>
#include<TDF_GUIDProgIDMap.hxx>
#include<TDF_HAllocator.hxx>
#include<TDF_HAttributeArray1.hxx>
#include<TDF_IDFilter.hxx>
#include<TDF_IDList.hxx>
#include<TDF_IDMap.hxx>
#include<TDF_IndexedMapNodeOfAttributeIndexedMap.hxx>
#include<TDF_IndexedMapNodeOfLabelIndexedMap.hxx>
#include<TDF_Label.hxx>
#include<TDF_LabelDataMap.hxx>
#include<TDF_LabelDoubleMap.hxx>
#include<TDF_LabelIndexedMap.hxx>
#include<TDF_LabelIntegerMap.hxx>
#include<TDF_LabelLabelMap.hxx>
#include<TDF_LabelList.hxx>
#include<TDF_LabelMap.hxx>
#include<TDF_LabelMapHasher.hxx>
#include<TDF_LabelNode.hxx>
#include<TDF_LabelNodePtr.hxx>
#include<TDF_LabelSequence.hxx>
#include<TDF_ListIteratorOfAttributeDeltaList.hxx>
#include<TDF_ListIteratorOfAttributeList.hxx>
#include<TDF_ListIteratorOfDeltaList.hxx>
#include<TDF_ListIteratorOfIDList.hxx>
#include<TDF_ListIteratorOfLabelList.hxx>
#include<TDF_ListNodeOfAttributeDeltaList.hxx>
#include<TDF_ListNodeOfAttributeList.hxx>
#include<TDF_ListNodeOfDeltaList.hxx>
#include<TDF_ListNodeOfIDList.hxx>
#include<TDF_ListNodeOfLabelList.hxx>
#include<TDF_MapIteratorOfAttributeMap.hxx>
#include<TDF_MapIteratorOfIDMap.hxx>
#include<TDF_MapIteratorOfLabelMap.hxx>
#include<TDF_Reference.hxx>
#include<TDF_RelocationTable.hxx>
#include<TDF_SequenceNodeOfAttributeSequence.hxx>
#include<TDF_SequenceNodeOfLabelSequence.hxx>
#include<TDF_StdMapNodeOfAttributeMap.hxx>
#include<TDF_StdMapNodeOfIDMap.hxx>
#include<TDF_StdMapNodeOfLabelMap.hxx>
#include<TDF_TagSource.hxx>
#include<TDF_Tool.hxx>
#include<TDF_Transaction.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Standard_GUID.hxx>
#include<TCollection_AsciiString.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TDF.hxx>
%}
