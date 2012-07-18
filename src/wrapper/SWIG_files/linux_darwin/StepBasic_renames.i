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
%rename(DownCast) Handle_StepBasic_Person::DownCast;
%rename(DownCast) Handle_StepBasic_IdentificationRole::DownCast;
%rename(DownCast) Handle_StepBasic_ApplicationContextElement::DownCast;
%rename(DownCast) Handle_StepBasic_MeasureWithUnit::DownCast;
%rename(DownCast) Handle_StepBasic_PlaneAngleMeasureWithUnit::DownCast;
%rename(DownCast) Handle_StepBasic_NamedUnit::DownCast;
%rename(DownCast) Handle_StepBasic_SiUnit::DownCast;
%rename(DownCast) Handle_StepBasic_SiUnitAndThermodynamicTemperatureUnit::DownCast;
%rename(DownCast) Handle_StepBasic_CertificationAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_ApprovalRelationship::DownCast;
%rename(DownCast) Handle_StepBasic_ApprovalAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_OrganizationRole::DownCast;
%rename(DownCast) Handle_StepBasic_ActionMethod::DownCast;
%rename(DownCast) Handle_StepBasic_ActionRequestAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_Approval::DownCast;
%rename(DownCast) Handle_StepBasic_SiUnitAndTimeUnit::DownCast;
%rename(DownCast) Handle_StepBasic_IdentificationAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_ExternalIdentificationAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_Effectivity::DownCast;
%rename(DownCast) Handle_StepBasic_ProductDefinitionEffectivity::DownCast;
%rename(DownCast) Handle_StepBasic_Date::DownCast;
%rename(DownCast) Handle_StepBasic_OrdinalDate::DownCast;
%rename(DownCast) Handle_StepBasic_ProductContext::DownCast;
%rename(DownCast) Handle_StepBasic_MechanicalContext::DownCast;
%rename(DownCast) Handle_StepBasic_CertificationType::DownCast;
%rename(DownCast) Handle_StepBasic_LocalTime::DownCast;
%rename(DownCast) Handle_StepBasic_MassMeasureWithUnit::DownCast;
%rename(DownCast) Handle_StepBasic_SiUnitAndSolidAngleUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ProductDefinitionContext::DownCast;
%rename(DownCast) Handle_StepBasic_DesignContext::DownCast;
%rename(DownCast) Handle_StepBasic_DateAndTimeAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_ProductCategoryRelationship::DownCast;
%rename(DownCast) Handle_StepBasic_ObjectRole::DownCast;
%rename(DownCast) Handle_StepBasic_SecurityClassification::DownCast;
%rename(DownCast) Handle_StepBasic_Document::DownCast;
%rename(DownCast) Handle_StepBasic_ConversionBasedUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ConversionBasedUnitAndRatioUnit::DownCast;
%rename(DownCast) Handle_StepBasic_PersonAndOrganization::DownCast;
%rename(DownCast) Handle_StepBasic_ActionRequestSolution::DownCast;
%rename(DownCast) Handle_StepBasic_DocumentReference::DownCast;
%rename(DownCast) Handle_StepBasic_TimeUnit::DownCast;
%rename(DownCast) Handle_StepBasic_CoordinatedUniversalTimeOffset::DownCast;
%rename(DownCast) Handle_StepBasic_SiUnitAndMassUnit::DownCast;
%rename(DownCast) Handle_StepBasic_SolidAngleUnit::DownCast;
%rename(DownCast) Handle_StepBasic_SiUnitAndAreaUnit::DownCast;
%rename(DownCast) Handle_StepBasic_DocumentType::DownCast;
%rename(DownCast) Handle_StepBasic_HArray1OfProductDefinition::DownCast;
%rename(DownCast) Handle_StepBasic_ProductDefinitionFormation::DownCast;
%rename(DownCast) Handle_StepBasic_ProductDefinitionFormationWithSpecifiedSource::DownCast;
%rename(DownCast) Handle_StepBasic_DocumentRepresentationType::DownCast;
%rename(DownCast) Handle_StepBasic_ConversionBasedUnitAndPlaneAngleUnit::DownCast;
%rename(DownCast) Handle_StepBasic_EffectivityAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_SecurityClassificationAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_ProductCategory::DownCast;
%rename(DownCast) Handle_StepBasic_PersonAndOrganizationRole::DownCast;
%rename(DownCast) Handle_StepBasic_HArray1OfApproval::DownCast;
%rename(DownCast) Handle_StepBasic_DocumentProductAssociation::DownCast;
%rename(DownCast) Handle_StepBasic_DocumentProductEquivalence::DownCast;
%rename(DownCast) Handle_StepBasic_ProductRelatedProductCategory::DownCast;
%rename(DownCast) Handle_StepBasic_DateRole::DownCast;
%rename(DownCast) Handle_StepBasic_DigitalDocument::DownCast;
%rename(DownCast) Handle_StepBasic_ExternalSource::DownCast;
%rename(DownCast) Handle_StepBasic_SiUnitAndRatioUnit::DownCast;
%rename(DownCast) Handle_StepBasic_RatioUnit::DownCast;
%rename(DownCast) Handle_StepBasic_Group::DownCast;
%rename(DownCast) Handle_StepBasic_MeasureValueMember::DownCast;
%rename(DownCast) Handle_StepBasic_SolidAngleMeasureWithUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ProductDefinitionFormationRelationship::DownCast;
%rename(DownCast) Handle_StepBasic_NameAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_MassUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ProductDefinitionRelationship::DownCast;
%rename(DownCast) Handle_StepBasic_HArray1OfDerivedUnitElement::DownCast;
%rename(DownCast) Handle_StepBasic_Address::DownCast;
%rename(DownCast) Handle_StepBasic_PersonalAddress::DownCast;
%rename(DownCast) Handle_StepBasic_DocumentRelationship::DownCast;
%rename(DownCast) Handle_StepBasic_DerivedUnitElement::DownCast;
%rename(DownCast) Handle_StepBasic_ConversionBasedUnitAndVolumeUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ConversionBasedUnitAndMassUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ActionAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_SiUnitAndPlaneAngleUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ProductDefinition::DownCast;
%rename(DownCast) Handle_StepBasic_ThermodynamicTemperatureUnit::DownCast;
%rename(DownCast) Handle_StepBasic_DateAndTime::DownCast;
%rename(DownCast) Handle_StepBasic_SiUnitAndVolumeUnit::DownCast;
%rename(DownCast) Handle_StepBasic_LengthUnit::DownCast;
%rename(DownCast) Handle_StepBasic_DateAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_Product::DownCast;
%rename(DownCast) Handle_StepBasic_GroupRelationship::DownCast;
%rename(DownCast) Handle_StepBasic_CharacterizedObject::DownCast;
%rename(DownCast) Handle_StepBasic_ConversionBasedUnitAndLengthUnit::DownCast;
%rename(DownCast) Handle_StepBasic_VersionedActionRequest::DownCast;
%rename(DownCast) Handle_StepBasic_OrganizationAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_ConversionBasedUnitAndSolidAngleUnit::DownCast;
%rename(DownCast) Handle_StepBasic_CalendarDate::DownCast;
%rename(DownCast) Handle_StepBasic_SizeMember::DownCast;
%rename(DownCast) Handle_StepBasic_HArray1OfPerson::DownCast;
%rename(DownCast) Handle_StepBasic_ContractType::DownCast;
%rename(DownCast) Handle_StepBasic_ProductConceptContext::DownCast;
%rename(DownCast) Handle_StepBasic_Contract::DownCast;
%rename(DownCast) Handle_StepBasic_ApplicationProtocolDefinition::DownCast;
%rename(DownCast) Handle_StepBasic_AreaUnit::DownCast;
%rename(DownCast) Handle_StepBasic_SecurityClassificationLevel::DownCast;
%rename(DownCast) Handle_StepBasic_Certification::DownCast;
%rename(DownCast) Handle_StepBasic_HArray1OfProductContext::DownCast;
%rename(DownCast) Handle_StepBasic_ConversionBasedUnitAndAreaUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ContractAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_HArray1OfNamedUnit::DownCast;
%rename(DownCast) Handle_StepBasic_HArray1OfOrganization::DownCast;
%rename(DownCast) Handle_StepBasic_ConversionBasedUnitAndTimeUnit::DownCast;
%rename(DownCast) Handle_StepBasic_PhysicallyModeledProductDefinition::DownCast;
%rename(DownCast) Handle_StepBasic_OrganizationalAddress::DownCast;
%rename(DownCast) Handle_StepBasic_ExternallyDefinedItem::DownCast;
%rename(DownCast) Handle_StepBasic_WeekOfYearAndDayDate::DownCast;
%rename(DownCast) Handle_StepBasic_ProductDefinitionWithAssociatedDocuments::DownCast;
%rename(DownCast) Handle_StepBasic_EulerAngles::DownCast;
%rename(DownCast) Handle_StepBasic_SiUnitAndLengthUnit::DownCast;
%rename(DownCast) Handle_StepBasic_UncertaintyMeasureWithUnit::DownCast;
%rename(DownCast) Handle_StepBasic_LengthMeasureWithUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ApprovalRole::DownCast;
%rename(DownCast) Handle_StepBasic_DerivedUnit::DownCast;
%rename(DownCast) Handle_StepBasic_HArray1OfDocument::DownCast;
%rename(DownCast) Handle_StepBasic_VolumeUnit::DownCast;
%rename(DownCast) Handle_StepBasic_DocumentFile::DownCast;
%rename(DownCast) Handle_StepBasic_ProductType::DownCast;
%rename(DownCast) Handle_StepBasic_RoleAssociation::DownCast;
%rename(DownCast) Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit::DownCast;
%rename(DownCast) Handle_StepBasic_PlaneAngleUnit::DownCast;
%rename(DownCast) Handle_StepBasic_Action::DownCast;
%rename(DownCast) Handle_StepBasic_Organization::DownCast;
%rename(DownCast) Handle_StepBasic_TimeMeasureWithUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ApprovalDateTime::DownCast;
%rename(DownCast) Handle_StepBasic_DimensionalExponents::DownCast;
%rename(DownCast) Handle_StepBasic_ApprovalPersonOrganization::DownCast;
%rename(DownCast) Handle_StepBasic_RatioMeasureWithUnit::DownCast;
%rename(DownCast) Handle_StepBasic_ApplicationContext::DownCast;
%rename(DownCast) Handle_StepBasic_GeneralProperty::DownCast;
%rename(DownCast) Handle_StepBasic_DateTimeRole::DownCast;
%rename(DownCast) Handle_StepBasic_ApprovalStatus::DownCast;
%rename(DownCast) Handle_StepBasic_GroupAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_PersonAndOrganizationAssignment::DownCast;
%rename(DownCast) Handle_StepBasic_HArray1OfProduct::DownCast;
%rename(DownCast) Handle_StepBasic_DocumentUsageConstraint::DownCast;
