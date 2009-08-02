/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

#include<Handle_XCAFApp_Application.hxx>
#include<XCAFApp_Application.hxx>

// Additional headers necessary for compilation.

#include<CDF.hxx>
#include<CDF_Application.hxx>
#include<CDF_Directory.hxx>
#include<CDF_DirectoryIterator.hxx>
#include<CDF_MetaDataDriver.hxx>
#include<CDF_MetaDataDriverError.hxx>
#include<CDF_MetaDataDriverFactory.hxx>
#include<CDF_RetrievableStatus.hxx>
#include<CDF_Session.hxx>
#include<CDF_Store.hxx>
#include<CDF_StoreList.hxx>
#include<CDF_StoreSetNameStatus.hxx>
#include<CDF_StoreStatus.hxx>
#include<CDF_SubComponentStatus.hxx>
#include<CDF_Timer.hxx>
#include<CDF_TryStoreStatus.hxx>
#include<CDF_TypeOfActivation.hxx>
#include<CDM_Application.hxx>
#include<CDM_COutMessageDriver.hxx>
#include<CDM_CanCloseStatus.hxx>
#include<CDM_DataMapIteratorOfMetaDataLookUpTable.hxx>
#include<CDM_DataMapIteratorOfNamesDirectory.hxx>
#include<CDM_DataMapIteratorOfPresentationDirectory.hxx>
#include<CDM_DataMapNodeOfMetaDataLookUpTable.hxx>
#include<CDM_DataMapNodeOfNamesDirectory.hxx>
#include<CDM_DataMapNodeOfPresentationDirectory.hxx>
#include<CDM_Document.hxx>
#include<CDM_DocumentHasher.hxx>
#include<CDM_DocumentPointer.hxx>
#include<CDM_ListIteratorOfListOfDocument.hxx>
#include<CDM_ListIteratorOfListOfReferences.hxx>
#include<CDM_ListNodeOfListOfDocument.hxx>
#include<CDM_ListNodeOfListOfReferences.hxx>
#include<CDM_ListOfDocument.hxx>
#include<CDM_ListOfReferences.hxx>
#include<CDM_MapIteratorOfMapOfDocument.hxx>
#include<CDM_MapOfDocument.hxx>
#include<CDM_MessageDriver.hxx>
#include<CDM_MetaData.hxx>
#include<CDM_MetaDataLookUpTable.hxx>
#include<CDM_NamesDirectory.hxx>
#include<CDM_NullMessageDriver.hxx>
#include<CDM_PresentationDirectory.hxx>
#include<CDM_Reference.hxx>
#include<CDM_ReferenceIterator.hxx>
#include<CDM_StackIteratorOfStackOfDocument.hxx>
#include<CDM_StackNodeOfStackOfDocument.hxx>
#include<CDM_StackOfDocument.hxx>
#include<CDM_StdMapNodeOfMapOfDocument.hxx>
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
#include<TColStd_SequenceOfExtendedString.hxx>
#include<Handle_TDocStd_Document.hxx>
%}
