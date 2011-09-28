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
%{

// Headers necessary to define wrapped classes.

#include<Handle_MDataStd_AsciiStringRetrievalDriver.hxx>
#include<Handle_MDataStd_AsciiStringStorageDriver.hxx>
#include<Handle_MDataStd_BooleanArrayRetrievalDriver.hxx>
#include<Handle_MDataStd_BooleanArrayStorageDriver.hxx>
#include<Handle_MDataStd_BooleanListRetrievalDriver.hxx>
#include<Handle_MDataStd_BooleanListStorageDriver.hxx>
#include<Handle_MDataStd_ByteArrayRetrievalDriver.hxx>
#include<Handle_MDataStd_ByteArrayRetrievalDriver_1.hxx>
#include<Handle_MDataStd_ByteArrayStorageDriver.hxx>
#include<Handle_MDataStd_CommentRetrievalDriver.hxx>
#include<Handle_MDataStd_CommentStorageDriver.hxx>
#include<Handle_MDataStd_DirectoryRetrievalDriver.hxx>
#include<Handle_MDataStd_DirectoryStorageDriver.hxx>
#include<Handle_MDataStd_ExpressionRetrievalDriver.hxx>
#include<Handle_MDataStd_ExpressionStorageDriver.hxx>
#include<Handle_MDataStd_ExtStringArrayRetrievalDriver.hxx>
#include<Handle_MDataStd_ExtStringArrayRetrievalDriver_1.hxx>
#include<Handle_MDataStd_ExtStringArrayStorageDriver.hxx>
#include<Handle_MDataStd_ExtStringListRetrievalDriver.hxx>
#include<Handle_MDataStd_ExtStringListStorageDriver.hxx>
#include<Handle_MDataStd_IntPackedMapRetrievalDriver.hxx>
#include<Handle_MDataStd_IntPackedMapRetrievalDriver_1.hxx>
#include<Handle_MDataStd_IntPackedMapStorageDriver.hxx>
#include<Handle_MDataStd_IntegerArrayRetrievalDriver.hxx>
#include<Handle_MDataStd_IntegerArrayRetrievalDriver_1.hxx>
#include<Handle_MDataStd_IntegerArrayStorageDriver.hxx>
#include<Handle_MDataStd_IntegerListRetrievalDriver.hxx>
#include<Handle_MDataStd_IntegerListStorageDriver.hxx>
#include<Handle_MDataStd_IntegerRetrievalDriver.hxx>
#include<Handle_MDataStd_IntegerStorageDriver.hxx>
#include<Handle_MDataStd_NameRetrievalDriver.hxx>
#include<Handle_MDataStd_NameStorageDriver.hxx>
#include<Handle_MDataStd_NamedDataRetrievalDriver.hxx>
#include<Handle_MDataStd_NamedDataStorageDriver.hxx>
#include<Handle_MDataStd_NoteBookRetrievalDriver.hxx>
#include<Handle_MDataStd_NoteBookStorageDriver.hxx>
#include<Handle_MDataStd_RealArrayRetrievalDriver.hxx>
#include<Handle_MDataStd_RealArrayRetrievalDriver_1.hxx>
#include<Handle_MDataStd_RealArrayStorageDriver.hxx>
#include<Handle_MDataStd_RealListRetrievalDriver.hxx>
#include<Handle_MDataStd_RealListStorageDriver.hxx>
#include<Handle_MDataStd_RealRetrievalDriver.hxx>
#include<Handle_MDataStd_RealStorageDriver.hxx>
#include<Handle_MDataStd_ReferenceArrayRetrievalDriver.hxx>
#include<Handle_MDataStd_ReferenceArrayStorageDriver.hxx>
#include<Handle_MDataStd_ReferenceListRetrievalDriver.hxx>
#include<Handle_MDataStd_ReferenceListStorageDriver.hxx>
#include<Handle_MDataStd_RelationRetrievalDriver.hxx>
#include<Handle_MDataStd_RelationStorageDriver.hxx>
#include<Handle_MDataStd_TickRetrievalDriver.hxx>
#include<Handle_MDataStd_TickStorageDriver.hxx>
#include<Handle_MDataStd_TreeNodeRetrievalDriver.hxx>
#include<Handle_MDataStd_TreeNodeStorageDriver.hxx>
#include<Handle_MDataStd_UAttributeRetrievalDriver.hxx>
#include<Handle_MDataStd_UAttributeStorageDriver.hxx>
#include<Handle_MDataStd_VariableRetrievalDriver.hxx>
#include<Handle_MDataStd_VariableStorageDriver.hxx>
#include<MDataStd.hxx>
#include<MDataStd_AsciiStringRetrievalDriver.hxx>
#include<MDataStd_AsciiStringStorageDriver.hxx>
#include<MDataStd_BooleanArrayRetrievalDriver.hxx>
#include<MDataStd_BooleanArrayStorageDriver.hxx>
#include<MDataStd_BooleanListRetrievalDriver.hxx>
#include<MDataStd_BooleanListStorageDriver.hxx>
#include<MDataStd_ByteArrayRetrievalDriver.hxx>
#include<MDataStd_ByteArrayRetrievalDriver_1.hxx>
#include<MDataStd_ByteArrayStorageDriver.hxx>
#include<MDataStd_CommentRetrievalDriver.hxx>
#include<MDataStd_CommentStorageDriver.hxx>
#include<MDataStd_DirectoryRetrievalDriver.hxx>
#include<MDataStd_DirectoryStorageDriver.hxx>
#include<MDataStd_ExpressionRetrievalDriver.hxx>
#include<MDataStd_ExpressionStorageDriver.hxx>
#include<MDataStd_ExtStringArrayRetrievalDriver.hxx>
#include<MDataStd_ExtStringArrayRetrievalDriver_1.hxx>
#include<MDataStd_ExtStringArrayStorageDriver.hxx>
#include<MDataStd_ExtStringListRetrievalDriver.hxx>
#include<MDataStd_ExtStringListStorageDriver.hxx>
#include<MDataStd_IntPackedMapRetrievalDriver.hxx>
#include<MDataStd_IntPackedMapRetrievalDriver_1.hxx>
#include<MDataStd_IntPackedMapStorageDriver.hxx>
#include<MDataStd_IntegerArrayRetrievalDriver.hxx>
#include<MDataStd_IntegerArrayRetrievalDriver_1.hxx>
#include<MDataStd_IntegerArrayStorageDriver.hxx>
#include<MDataStd_IntegerListRetrievalDriver.hxx>
#include<MDataStd_IntegerListStorageDriver.hxx>
#include<MDataStd_IntegerRetrievalDriver.hxx>
#include<MDataStd_IntegerStorageDriver.hxx>
#include<MDataStd_NameRetrievalDriver.hxx>
#include<MDataStd_NameStorageDriver.hxx>
#include<MDataStd_NamedDataRetrievalDriver.hxx>
#include<MDataStd_NamedDataStorageDriver.hxx>
#include<MDataStd_NoteBookRetrievalDriver.hxx>
#include<MDataStd_NoteBookStorageDriver.hxx>
#include<MDataStd_RealArrayRetrievalDriver.hxx>
#include<MDataStd_RealArrayRetrievalDriver_1.hxx>
#include<MDataStd_RealArrayStorageDriver.hxx>
#include<MDataStd_RealListRetrievalDriver.hxx>
#include<MDataStd_RealListStorageDriver.hxx>
#include<MDataStd_RealRetrievalDriver.hxx>
#include<MDataStd_RealStorageDriver.hxx>
#include<MDataStd_ReferenceArrayRetrievalDriver.hxx>
#include<MDataStd_ReferenceArrayStorageDriver.hxx>
#include<MDataStd_ReferenceListRetrievalDriver.hxx>
#include<MDataStd_ReferenceListStorageDriver.hxx>
#include<MDataStd_RelationRetrievalDriver.hxx>
#include<MDataStd_RelationStorageDriver.hxx>
#include<MDataStd_TickRetrievalDriver.hxx>
#include<MDataStd_TickStorageDriver.hxx>
#include<MDataStd_TreeNodeRetrievalDriver.hxx>
#include<MDataStd_TreeNodeStorageDriver.hxx>
#include<MDataStd_UAttributeRetrievalDriver.hxx>
#include<MDataStd_UAttributeStorageDriver.hxx>
#include<MDataStd_VariableRetrievalDriver.hxx>
#include<MDataStd_VariableStorageDriver.hxx>

// Additional headers necessary for compilation.

#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>
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

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_CDM_MessageDriver.hxx>
#include<Handle_Standard_Type.hxx>
#include<Handle_PDF_Attribute.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<Handle_MDF_SRelocationTable.hxx>
#include<Handle_MDF_RRelocationTable.hxx>
#include<MDataStd.hxx>
#include<Handle_MDF_ASDriverHSequence.hxx>
#include<Handle_MDF_ARDriverHSequence.hxx>
%}
