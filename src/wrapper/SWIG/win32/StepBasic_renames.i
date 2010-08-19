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
%rename(downcast) Handle_StepBasic_Person::DownCast;
%rename(downcast) Handle_StepBasic_IdentificationRole::DownCast;
%rename(downcast) Handle_StepBasic_ApplicationContextElement::DownCast;
%rename(downcast) Handle_StepBasic_ProductDefinition::DownCast;
%rename(downcast) Handle_StepBasic_NamedUnit::DownCast;
%rename(downcast) Handle_StepBasic_SiUnit::DownCast;
%rename(downcast) Handle_StepBasic_SiUnitAndThermodynamicTemperatureUnit::DownCast;
%rename(downcast) Handle_StepBasic_CertificationAssignment::DownCast;
%rename(downcast) Handle_StepBasic_ApprovalRelationship::DownCast;
%rename(downcast) Handle_StepBasic_ConversionBasedUnit::DownCast;
%rename(downcast) Handle_StepBasic_ConversionBasedUnitAndRatioUnit::DownCast;
%rename(downcast) Handle_StepBasic_ApprovalAssignment::DownCast;
%rename(downcast) Handle_StepBasic_ApprovalStatus::DownCast;
%rename(downcast) Handle_StepBasic_SiUnitAndSolidAngleUnit::DownCast;
%rename(downcast) Handle_StepBasic_ObjectRole::DownCast;
%rename(downcast) Handle_StepBasic_ProductDefinitionRelationship::DownCast;
%rename(downcast) Handle_StepBasic_Approval::DownCast;
%rename(downcast) Handle_StepBasic_IdentificationAssignment::DownCast;
%rename(downcast) Handle_StepBasic_ExternalIdentificationAssignment::DownCast;
%rename(downcast) Handle_StepBasic_Effectivity::DownCast;
%rename(downcast) Handle_StepBasic_ProductDefinitionEffectivity::DownCast;
%rename(downcast) Handle_StepBasic_Date::DownCast;
%rename(downcast) Handle_StepBasic_OrdinalDate::DownCast;
%rename(downcast) Handle_StepBasic_CertificationType::DownCast;
%rename(downcast) Handle_StepBasic_DimensionalExponents::DownCast;
%rename(downcast) Handle_StepBasic_MeasureWithUnit::DownCast;
%rename(downcast) Handle_StepBasic_MassMeasureWithUnit::DownCast;
%rename(downcast) Handle_StepBasic_ProductDefinitionContext::DownCast;
%rename(downcast) Handle_StepBasic_DesignContext::DownCast;
%rename(downcast) Handle_StepBasic_DateAndTimeAssignment::DownCast;
%rename(downcast) Handle_StepBasic_ProductCategoryRelationship::DownCast;
%rename(downcast) Handle_StepBasic_HArray1OfOrganization::DownCast;
%rename(downcast) Handle_StepBasic_ProductDefinitionWithAssociatedDocuments::DownCast;
%rename(downcast) Handle_StepBasic_PersonAndOrganization::DownCast;
%rename(downcast) Handle_StepBasic_Contract::DownCast;
%rename(downcast) Handle_StepBasic_DocumentUsageConstraint::DownCast;
%rename(downcast) Handle_StepBasic_ActionRequestSolution::DownCast;
%rename(downcast) Handle_StepBasic_DocumentReference::DownCast;
%rename(downcast) Handle_StepBasic_ProductContext::DownCast;
%rename(downcast) Handle_StepBasic_SolidAngleUnit::DownCast;
%rename(downcast) Handle_StepBasic_ProductCategory::DownCast;
%rename(downcast) Handle_StepBasic_ProductRelatedProductCategory::DownCast;
%rename(downcast) Handle_StepBasic_ProductType::DownCast;
%rename(downcast) Handle_StepBasic_Document::DownCast;
%rename(downcast) Handle_StepBasic_SiUnitAndAreaUnit::DownCast;
%rename(downcast) Handle_StepBasic_DocumentType::DownCast;
%rename(downcast) Handle_StepBasic_EffectivityAssignment::DownCast;
%rename(downcast) Handle_StepBasic_ProductDefinitionFormation::DownCast;
%rename(downcast) Handle_StepBasic_ProductDefinitionFormationWithSpecifiedSource::DownCast;
%rename(downcast) Handle_StepBasic_DocumentRepresentationType::DownCast;
%rename(downcast) Handle_StepBasic_ConversionBasedUnitAndPlaneAngleUnit::DownCast;
%rename(downcast) Handle_StepBasic_DateAndTime::DownCast;
%rename(downcast) Handle_StepBasic_SecurityClassificationAssignment::DownCast;
%rename(downcast) Handle_StepBasic_PersonAndOrganizationRole::DownCast;
%rename(downcast) Handle_StepBasic_DocumentProductAssociation::DownCast;
%rename(downcast) Handle_StepBasic_ProductDefinitionFormationRelationship::DownCast;
%rename(downcast) Handle_StepBasic_ApprovalDateTime::DownCast;
%rename(downcast) Handle_StepBasic_DateRole::DownCast;
%rename(downcast) Handle_StepBasic_GeneralProperty::DownCast;
%rename(downcast) Handle_StepBasic_SecurityClassification::DownCast;
%rename(downcast) Handle_StepBasic_DigitalDocument::DownCast;
%rename(downcast) Handle_StepBasic_MassUnit::DownCast;
%rename(downcast) Handle_StepBasic_ExternalSource::DownCast;
%rename(downcast) Handle_StepBasic_ThermodynamicTemperatureUnit::DownCast;
%rename(downcast) Handle_StepBasic_SiUnitAndRatioUnit::DownCast;
%rename(downcast) Handle_StepBasic_HArray1OfProduct::DownCast;
%rename(downcast) Handle_StepBasic_Group::DownCast;
%rename(downcast) Handle_StepBasic_MeasureValueMember::DownCast;
%rename(downcast) Handle_StepBasic_SolidAngleMeasureWithUnit::DownCast;
%rename(downcast) Handle_StepBasic_TimeUnit::DownCast;
%rename(downcast) Handle_StepBasic_LocalTime::DownCast;
%rename(downcast) Handle_StepBasic_Address::DownCast;
%rename(downcast) Handle_StepBasic_PersonalAddress::DownCast;
%rename(downcast) Handle_StepBasic_DocumentRelationship::DownCast;
%rename(downcast) Handle_StepBasic_DerivedUnitElement::DownCast;
%rename(downcast) Handle_StepBasic_VersionedActionRequest::DownCast;
%rename(downcast) Handle_StepBasic_ConversionBasedUnitAndVolumeUnit::DownCast;
%rename(downcast) Handle_StepBasic_ConversionBasedUnitAndMassUnit::DownCast;
%rename(downcast) Handle_StepBasic_ActionAssignment::DownCast;
%rename(downcast) Handle_StepBasic_RatioUnit::DownCast;
%rename(downcast) Handle_StepBasic_SecurityClassificationLevel::DownCast;
%rename(downcast) Handle_StepBasic_SiUnitAndVolumeUnit::DownCast;
%rename(downcast) Handle_StepBasic_DateAssignment::DownCast;
%rename(downcast) Handle_StepBasic_Product::DownCast;
%rename(downcast) Handle_StepBasic_ActionMethod::DownCast;
%rename(downcast) Handle_StepBasic_GroupRelationship::DownCast;
%rename(downcast) Handle_StepBasic_ActionRequestAssignment::DownCast;
%rename(downcast) Handle_StepBasic_PlaneAngleMeasureWithUnit::DownCast;
%rename(downcast) Handle_StepBasic_MechanicalContext::DownCast;
%rename(downcast) Handle_StepBasic_ConversionBasedUnitAndLengthUnit::DownCast;
%rename(downcast) Handle_StepBasic_OrganizationAssignment::DownCast;
%rename(downcast) Handle_StepBasic_ConversionBasedUnitAndSolidAngleUnit::DownCast;
%rename(downcast) Handle_StepBasic_Certification::DownCast;
%rename(downcast) Handle_StepBasic_DocumentProductEquivalence::DownCast;
%rename(downcast) Handle_StepBasic_OrganizationalAddress::DownCast;
%rename(downcast) Handle_StepBasic_CalendarDate::DownCast;
%rename(downcast) Handle_StepBasic_HArray1OfApproval::DownCast;
%rename(downcast) Handle_StepBasic_ConversionBasedUnitAndTimeUnit::DownCast;
%rename(downcast) Handle_StepBasic_HArray1OfPerson::DownCast;
%rename(downcast) Handle_StepBasic_ContractType::DownCast;
%rename(downcast) Handle_StepBasic_ProductConceptContext::DownCast;
%rename(downcast) Handle_StepBasic_AreaUnit::DownCast;
%rename(downcast) Handle_StepBasic_HArray1OfProductDefinition::DownCast;
%rename(downcast) Handle_StepBasic_VolumeUnit::DownCast;
%rename(downcast) Handle_StepBasic_RoleAssociation::DownCast;
%rename(downcast) Handle_StepBasic_HArray1OfNamedUnit::DownCast;
%rename(downcast) Handle_StepBasic_NameAssignment::DownCast;
%rename(downcast) Handle_StepBasic_OrganizationRole::DownCast;
%rename(downcast) Handle_StepBasic_SiUnitAndLengthUnit::DownCast;
%rename(downcast) Handle_StepBasic_HArray1OfDerivedUnitElement::DownCast;
%rename(downcast) Handle_StepBasic_HArray1OfProductContext::DownCast;
%rename(downcast) Handle_StepBasic_SiUnitAndPlaneAngleUnit::DownCast;
%rename(downcast) Handle_StepBasic_ExternallyDefinedItem::DownCast;
%rename(downcast) Handle_StepBasic_WeekOfYearAndDayDate::DownCast;
%rename(downcast) Handle_StepBasic_EulerAngles::DownCast;
%rename(downcast) Handle_StepBasic_SiUnitAndMassUnit::DownCast;
%rename(downcast) Handle_StepBasic_CharacterizedObject::DownCast;
%rename(downcast) Handle_StepBasic_ContractAssignment::DownCast;
%rename(downcast) Handle_StepBasic_UncertaintyMeasureWithUnit::DownCast;
%rename(downcast) Handle_StepBasic_ApprovalRole::DownCast;
%rename(downcast) Handle_StepBasic_LengthMeasureWithUnit::DownCast;
%rename(downcast) Handle_StepBasic_ApplicationContext::DownCast;
%rename(downcast) Handle_StepBasic_HArray1OfDocument::DownCast;
%rename(downcast) Handle_StepBasic_CoordinatedUniversalTimeOffset::DownCast;
%rename(downcast) Handle_StepBasic_SizeMember::DownCast;
%rename(downcast) Handle_StepBasic_SiUnitAndTimeUnit::DownCast;
%rename(downcast) Handle_StepBasic_DocumentFile::DownCast;
%rename(downcast) Handle_StepBasic_DateTimeRole::DownCast;
%rename(downcast) Handle_StepBasic_DerivedUnit::DownCast;
%rename(downcast) Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit::DownCast;
%rename(downcast) Handle_StepBasic_LengthUnit::DownCast;
%rename(downcast) Handle_StepBasic_ConversionBasedUnitAndAreaUnit::DownCast;
%rename(downcast) Handle_StepBasic_PlaneAngleUnit::DownCast;
%rename(downcast) Handle_StepBasic_PersonAndOrganizationAssignment::DownCast;
%rename(downcast) Handle_StepBasic_Action::DownCast;
%rename(downcast) Handle_StepBasic_Organization::DownCast;
%rename(downcast) Handle_StepBasic_TimeMeasureWithUnit::DownCast;
%rename(downcast) Handle_StepBasic_RatioMeasureWithUnit::DownCast;
%rename(downcast) Handle_StepBasic_ApplicationProtocolDefinition::DownCast;
%rename(downcast) Handle_StepBasic_ApprovalPersonOrganization::DownCast;
%rename(downcast) Handle_StepBasic_PhysicallyModeledProductDefinition::DownCast;
%rename(downcast) Handle_StepBasic_GroupAssignment::DownCast;
