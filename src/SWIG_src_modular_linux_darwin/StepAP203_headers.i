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

#include<Handle_StepAP203_CcDesignApproval.hxx>
#include<Handle_StepAP203_CcDesignCertification.hxx>
#include<Handle_StepAP203_CcDesignContract.hxx>
#include<Handle_StepAP203_CcDesignDateAndTimeAssignment.hxx>
#include<Handle_StepAP203_CcDesignPersonAndOrganizationAssignment.hxx>
#include<Handle_StepAP203_CcDesignSecurityClassification.hxx>
#include<Handle_StepAP203_CcDesignSpecificationReference.hxx>
#include<Handle_StepAP203_Change.hxx>
#include<Handle_StepAP203_ChangeRequest.hxx>
#include<Handle_StepAP203_HArray1OfApprovedItem.hxx>
#include<Handle_StepAP203_HArray1OfCertifiedItem.hxx>
#include<Handle_StepAP203_HArray1OfChangeRequestItem.hxx>
#include<Handle_StepAP203_HArray1OfClassifiedItem.hxx>
#include<Handle_StepAP203_HArray1OfContractedItem.hxx>
#include<Handle_StepAP203_HArray1OfDateTimeItem.hxx>
#include<Handle_StepAP203_HArray1OfPersonOrganizationItem.hxx>
#include<Handle_StepAP203_HArray1OfSpecifiedItem.hxx>
#include<Handle_StepAP203_HArray1OfStartRequestItem.hxx>
#include<Handle_StepAP203_HArray1OfWorkItem.hxx>
#include<Handle_StepAP203_StartRequest.hxx>
#include<Handle_StepAP203_StartWork.hxx>
#include<StepAP203_ApprovedItem.hxx>
#include<StepAP203_Array1OfApprovedItem.hxx>
#include<StepAP203_Array1OfCertifiedItem.hxx>
#include<StepAP203_Array1OfChangeRequestItem.hxx>
#include<StepAP203_Array1OfClassifiedItem.hxx>
#include<StepAP203_Array1OfContractedItem.hxx>
#include<StepAP203_Array1OfDateTimeItem.hxx>
#include<StepAP203_Array1OfPersonOrganizationItem.hxx>
#include<StepAP203_Array1OfSpecifiedItem.hxx>
#include<StepAP203_Array1OfStartRequestItem.hxx>
#include<StepAP203_Array1OfWorkItem.hxx>
#include<StepAP203_CcDesignApproval.hxx>
#include<StepAP203_CcDesignCertification.hxx>
#include<StepAP203_CcDesignContract.hxx>
#include<StepAP203_CcDesignDateAndTimeAssignment.hxx>
#include<StepAP203_CcDesignPersonAndOrganizationAssignment.hxx>
#include<StepAP203_CcDesignSecurityClassification.hxx>
#include<StepAP203_CcDesignSpecificationReference.hxx>
#include<StepAP203_CertifiedItem.hxx>
#include<StepAP203_Change.hxx>
#include<StepAP203_ChangeRequest.hxx>
#include<StepAP203_ChangeRequestItem.hxx>
#include<StepAP203_ClassifiedItem.hxx>
#include<StepAP203_ContractedItem.hxx>
#include<StepAP203_DateTimeItem.hxx>
#include<StepAP203_HArray1OfApprovedItem.hxx>
#include<StepAP203_HArray1OfCertifiedItem.hxx>
#include<StepAP203_HArray1OfChangeRequestItem.hxx>
#include<StepAP203_HArray1OfClassifiedItem.hxx>
#include<StepAP203_HArray1OfContractedItem.hxx>
#include<StepAP203_HArray1OfDateTimeItem.hxx>
#include<StepAP203_HArray1OfPersonOrganizationItem.hxx>
#include<StepAP203_HArray1OfSpecifiedItem.hxx>
#include<StepAP203_HArray1OfStartRequestItem.hxx>
#include<StepAP203_HArray1OfWorkItem.hxx>
#include<StepAP203_PersonOrganizationItem.hxx>
#include<StepAP203_SpecifiedItem.hxx>
#include<StepAP203_StartRequest.hxx>
#include<StepAP203_StartRequestItem.hxx>
#include<StepAP203_StartWork.hxx>
#include<StepAP203_WorkItem.hxx>

// Additional headers necessary for compilation.

#include<Handle_Interface_Check.hxx>
#include<Handle_Interface_CheckFailure.hxx>
#include<Handle_Interface_CopyControl.hxx>
#include<Handle_Interface_CopyMap.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Handle_Interface_EntityCluster.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Handle_Interface_GTool.hxx>
#include<Handle_Interface_GeneralModule.hxx>
#include<Handle_Interface_GlobalNodeOfGeneralLib.hxx>
#include<Handle_Interface_GlobalNodeOfReaderLib.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_Interface_HGraph.hxx>
#include<Handle_Interface_HSequenceOfCheck.hxx>
#include<Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Handle_Interface_IntVal.hxx>
#include<Handle_Interface_InterfaceError.hxx>
#include<Handle_Interface_InterfaceMismatch.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_NodeOfGeneralLib.hxx>
#include<Handle_Interface_NodeOfReaderLib.hxx>
#include<Handle_Interface_ParamList.hxx>
#include<Handle_Interface_ParamSet.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_Interface_ReaderModule.hxx>
#include<Handle_Interface_ReportEntity.hxx>
#include<Handle_Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Handle_Interface_SignLabel.hxx>
#include<Handle_Interface_SignType.hxx>
#include<Handle_Interface_Static.hxx>
#include<Handle_Interface_TypedValue.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
#include<MoniTool_AttrList.hxx>
#include<MoniTool_CaseData.hxx>
#include<MoniTool_DataInfo.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapOfTimer.hxx>
#include<MoniTool_ElemHasher.hxx>
#include<MoniTool_Element.hxx>
#include<MoniTool_HSequenceOfElement.hxx>
#include<MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IntVal.hxx>
#include<MoniTool_MTHasher.hxx>
#include<MoniTool_Macros.hxx>
#include<MoniTool_OptValue.hxx>
#include<MoniTool_Option.hxx>
#include<MoniTool_Profile.hxx>
#include<MoniTool_RealVal.hxx>
#include<MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<MoniTool_SequenceOfElement.hxx>
#include<MoniTool_SignShape.hxx>
#include<MoniTool_SignText.hxx>
#include<MoniTool_Stat.hxx>
#include<MoniTool_Timer.hxx>
#include<MoniTool_TimerSentry.hxx>
#include<MoniTool_TransientElem.hxx>
#include<MoniTool_TypedValue.hxx>
#include<MoniTool_ValueInterpret.hxx>
#include<MoniTool_ValueSatisfies.hxx>
#include<MoniTool_ValueType.hxx>
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

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_StepBasic_ProductDefinitionFormation.hxx>
#include<Handle_StepBasic_VersionedActionRequest.hxx>
#include<Handle_StepBasic_DateAndTime.hxx>
#include<Handle_StepBasic_DateTimeRole.hxx>
#include<Handle_StepRepr_SuppliedPartRelationship.hxx>
#include<Handle_StepBasic_ProductDefinition.hxx>
#include<Handle_StepRepr_ShapeAspect.hxx>
#include<Handle_StepBasic_SecurityClassification.hxx>
#include<Handle_StepRepr_ConfigurationItem.hxx>
#include<Handle_StepBasic_Product.hxx>
#include<Handle_StepBasic_Contract.hxx>
#include<Handle_StepBasic_Action.hxx>
#include<Handle_StepBasic_Approval.hxx>
#include<Handle_StepBasic_PersonAndOrganization.hxx>
#include<Handle_StepBasic_PersonAndOrganizationRole.hxx>
#include<Handle_StepRepr_AssemblyComponentUsage.hxx>
#include<Handle_StepRepr_ConfigurationEffectivity.hxx>
#include<Handle_StepBasic_Certification.hxx>
#include<Handle_StepBasic_Document.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_StepBasic_ApprovalPersonOrganization.hxx>
%}
