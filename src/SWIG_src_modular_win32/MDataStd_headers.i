/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_MDataStd_AsciiStringRetrievalDriver.hxx>
#include<Handle_MDataStd_AsciiStringStorageDriver.hxx>
#include<Handle_MDataStd_AxisRetrievalDriver.hxx>
#include<Handle_MDataStd_AxisStorageDriver.hxx>
#include<Handle_MDataStd_BooleanArrayRetrievalDriver.hxx>
#include<Handle_MDataStd_BooleanArrayStorageDriver.hxx>
#include<Handle_MDataStd_BooleanListRetrievalDriver.hxx>
#include<Handle_MDataStd_BooleanListStorageDriver.hxx>
#include<Handle_MDataStd_ByteArrayRetrievalDriver.hxx>
#include<Handle_MDataStd_ByteArrayRetrievalDriver_1.hxx>
#include<Handle_MDataStd_ByteArrayStorageDriver.hxx>
#include<Handle_MDataStd_CommentRetrievalDriver.hxx>
#include<Handle_MDataStd_CommentStorageDriver.hxx>
#include<Handle_MDataStd_ConstraintRetrievalDriver.hxx>
#include<Handle_MDataStd_ConstraintStorageDriver.hxx>
#include<Handle_MDataStd_DirectoryRetrievalDriver.hxx>
#include<Handle_MDataStd_DirectoryStorageDriver.hxx>
#include<Handle_MDataStd_ExpressionRetrievalDriver.hxx>
#include<Handle_MDataStd_ExpressionStorageDriver.hxx>
#include<Handle_MDataStd_ExtStringArrayRetrievalDriver.hxx>
#include<Handle_MDataStd_ExtStringArrayRetrievalDriver_1.hxx>
#include<Handle_MDataStd_ExtStringArrayStorageDriver.hxx>
#include<Handle_MDataStd_ExtStringListRetrievalDriver.hxx>
#include<Handle_MDataStd_ExtStringListStorageDriver.hxx>
#include<Handle_MDataStd_GeometryRetrievalDriver.hxx>
#include<Handle_MDataStd_GeometryStorageDriver.hxx>
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
#include<Handle_MDataStd_PatternStdRetrievalDriver.hxx>
#include<Handle_MDataStd_PatternStdStorageDriver.hxx>
#include<Handle_MDataStd_PlacementRetrievalDriver.hxx>
#include<Handle_MDataStd_PlacementStorageDriver.hxx>
#include<Handle_MDataStd_PlaneRetrievalDriver.hxx>
#include<Handle_MDataStd_PlaneStorageDriver.hxx>
#include<Handle_MDataStd_PointRetrievalDriver.hxx>
#include<Handle_MDataStd_PointStorageDriver.hxx>
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
#include<Handle_MDataStd_ShapeRetrievalDriver.hxx>
#include<Handle_MDataStd_ShapeStorageDriver.hxx>
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
#include<MDataStd_AxisRetrievalDriver.hxx>
#include<MDataStd_AxisStorageDriver.hxx>
#include<MDataStd_BooleanArrayRetrievalDriver.hxx>
#include<MDataStd_BooleanArrayStorageDriver.hxx>
#include<MDataStd_BooleanListRetrievalDriver.hxx>
#include<MDataStd_BooleanListStorageDriver.hxx>
#include<MDataStd_ByteArrayRetrievalDriver.hxx>
#include<MDataStd_ByteArrayRetrievalDriver_1.hxx>
#include<MDataStd_ByteArrayStorageDriver.hxx>
#include<MDataStd_CommentRetrievalDriver.hxx>
#include<MDataStd_CommentStorageDriver.hxx>
#include<MDataStd_ConstraintRetrievalDriver.hxx>
#include<MDataStd_ConstraintStorageDriver.hxx>
#include<MDataStd_DirectoryRetrievalDriver.hxx>
#include<MDataStd_DirectoryStorageDriver.hxx>
#include<MDataStd_ExpressionRetrievalDriver.hxx>
#include<MDataStd_ExpressionStorageDriver.hxx>
#include<MDataStd_ExtStringArrayRetrievalDriver.hxx>
#include<MDataStd_ExtStringArrayRetrievalDriver_1.hxx>
#include<MDataStd_ExtStringArrayStorageDriver.hxx>
#include<MDataStd_ExtStringListRetrievalDriver.hxx>
#include<MDataStd_ExtStringListStorageDriver.hxx>
#include<MDataStd_GeometryRetrievalDriver.hxx>
#include<MDataStd_GeometryStorageDriver.hxx>
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
#include<MDataStd_PatternStdRetrievalDriver.hxx>
#include<MDataStd_PatternStdStorageDriver.hxx>
#include<MDataStd_PlacementRetrievalDriver.hxx>
#include<MDataStd_PlacementStorageDriver.hxx>
#include<MDataStd_PlaneRetrievalDriver.hxx>
#include<MDataStd_PlaneStorageDriver.hxx>
#include<MDataStd_PointRetrievalDriver.hxx>
#include<MDataStd_PointStorageDriver.hxx>
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
#include<MDataStd_ShapeRetrievalDriver.hxx>
#include<MDataStd_ShapeStorageDriver.hxx>
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
#include<Handle_PGeom_Geometry.hxx>
#include<Handle_Geom_Geometry.hxx>
%}
