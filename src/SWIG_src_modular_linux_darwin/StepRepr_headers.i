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

#include<Handle_StepRepr_AssemblyComponentUsage.hxx>
#include<Handle_StepRepr_AssemblyComponentUsageSubstitute.hxx>
#include<Handle_StepRepr_CompositeShapeAspect.hxx>
#include<Handle_StepRepr_CompoundRepresentationItem.hxx>
#include<Handle_StepRepr_ConfigurationDesign.hxx>
#include<Handle_StepRepr_ConfigurationEffectivity.hxx>
#include<Handle_StepRepr_ConfigurationItem.hxx>
#include<Handle_StepRepr_DataEnvironment.hxx>
#include<Handle_StepRepr_DefinitionalRepresentation.hxx>
#include<Handle_StepRepr_DerivedShapeAspect.hxx>
#include<Handle_StepRepr_DescriptiveRepresentationItem.hxx>
#include<Handle_StepRepr_Extension.hxx>
#include<Handle_StepRepr_ExternallyDefinedRepresentation.hxx>
#include<Handle_StepRepr_FunctionallyDefinedTransformation.hxx>
#include<Handle_StepRepr_GlobalUncertaintyAssignedContext.hxx>
#include<Handle_StepRepr_GlobalUnitAssignedContext.hxx>
#include<Handle_StepRepr_HArray1OfMaterialPropertyRepresentation.hxx>
#include<Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx>
#include<Handle_StepRepr_HArray1OfRepresentationItem.hxx>
#include<Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation.hxx>
#include<Handle_StepRepr_HSequenceOfRepresentationItem.hxx>
#include<Handle_StepRepr_ItemDefinedTransformation.hxx>
#include<Handle_StepRepr_MakeFromUsageOption.hxx>
#include<Handle_StepRepr_MappedItem.hxx>
#include<Handle_StepRepr_MaterialDesignation.hxx>
#include<Handle_StepRepr_MaterialProperty.hxx>
#include<Handle_StepRepr_MaterialPropertyRepresentation.hxx>
#include<Handle_StepRepr_MeasureRepresentationItem.hxx>
#include<Handle_StepRepr_NextAssemblyUsageOccurrence.hxx>
#include<Handle_StepRepr_ParametricRepresentationContext.hxx>
#include<Handle_StepRepr_ProductConcept.hxx>
#include<Handle_StepRepr_ProductDefinitionShape.hxx>
#include<Handle_StepRepr_ProductDefinitionUsage.hxx>
#include<Handle_StepRepr_PromissoryUsageOccurrence.hxx>
#include<Handle_StepRepr_PropertyDefinition.hxx>
#include<Handle_StepRepr_PropertyDefinitionRelationship.hxx>
#include<Handle_StepRepr_PropertyDefinitionRepresentation.hxx>
#include<Handle_StepRepr_QuantifiedAssemblyComponentUsage.hxx>
#include<Handle_StepRepr_ReprItemAndLengthMeasureWithUnit.hxx>
#include<Handle_StepRepr_Representation.hxx>
#include<Handle_StepRepr_RepresentationContext.hxx>
#include<Handle_StepRepr_RepresentationItem.hxx>
#include<Handle_StepRepr_RepresentationMap.hxx>
#include<Handle_StepRepr_RepresentationRelationship.hxx>
#include<Handle_StepRepr_RepresentationRelationshipWithTransformation.hxx>
#include<Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation.hxx>
#include<Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem.hxx>
#include<Handle_StepRepr_ShapeAspect.hxx>
#include<Handle_StepRepr_ShapeAspectDerivingRelationship.hxx>
#include<Handle_StepRepr_ShapeAspectRelationship.hxx>
#include<Handle_StepRepr_ShapeAspectTransition.hxx>
#include<Handle_StepRepr_ShapeRepresentationRelationship.hxx>
#include<Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation.hxx>
#include<Handle_StepRepr_SpecifiedHigherUsageOccurrence.hxx>
#include<Handle_StepRepr_StructuralResponseProperty.hxx>
#include<Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation.hxx>
#include<Handle_StepRepr_SuppliedPartRelationship.hxx>
#include<Handle_StepRepr_ValueRange.hxx>
#include<StepRepr_Array1OfMaterialPropertyRepresentation.hxx>
#include<StepRepr_Array1OfPropertyDefinitionRepresentation.hxx>
#include<StepRepr_Array1OfRepresentationItem.hxx>
#include<StepRepr_AssemblyComponentUsage.hxx>
#include<StepRepr_AssemblyComponentUsageSubstitute.hxx>
#include<StepRepr_CharacterizedDefinition.hxx>
#include<StepRepr_CompositeShapeAspect.hxx>
#include<StepRepr_CompoundRepresentationItem.hxx>
#include<StepRepr_ConfigurationDesign.hxx>
#include<StepRepr_ConfigurationDesignItem.hxx>
#include<StepRepr_ConfigurationEffectivity.hxx>
#include<StepRepr_ConfigurationItem.hxx>
#include<StepRepr_DataEnvironment.hxx>
#include<StepRepr_DefinitionalRepresentation.hxx>
#include<StepRepr_DerivedShapeAspect.hxx>
#include<StepRepr_DescriptiveRepresentationItem.hxx>
#include<StepRepr_Extension.hxx>
#include<StepRepr_ExternallyDefinedRepresentation.hxx>
#include<StepRepr_FunctionallyDefinedTransformation.hxx>
#include<StepRepr_GlobalUncertaintyAssignedContext.hxx>
#include<StepRepr_GlobalUnitAssignedContext.hxx>
#include<StepRepr_HArray1OfMaterialPropertyRepresentation.hxx>
#include<StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx>
#include<StepRepr_HArray1OfRepresentationItem.hxx>
#include<StepRepr_HSequenceOfMaterialPropertyRepresentation.hxx>
#include<StepRepr_HSequenceOfRepresentationItem.hxx>
#include<StepRepr_ItemDefinedTransformation.hxx>
#include<StepRepr_MakeFromUsageOption.hxx>
#include<StepRepr_MappedItem.hxx>
#include<StepRepr_MaterialDesignation.hxx>
#include<StepRepr_MaterialProperty.hxx>
#include<StepRepr_MaterialPropertyRepresentation.hxx>
#include<StepRepr_MeasureRepresentationItem.hxx>
#include<StepRepr_NextAssemblyUsageOccurrence.hxx>
#include<StepRepr_ParametricRepresentationContext.hxx>
#include<StepRepr_ProductConcept.hxx>
#include<StepRepr_ProductDefinitionShape.hxx>
#include<StepRepr_ProductDefinitionUsage.hxx>
#include<StepRepr_PromissoryUsageOccurrence.hxx>
#include<StepRepr_PropertyDefinition.hxx>
#include<StepRepr_PropertyDefinitionRelationship.hxx>
#include<StepRepr_PropertyDefinitionRepresentation.hxx>
#include<StepRepr_QuantifiedAssemblyComponentUsage.hxx>
#include<StepRepr_ReprItemAndLengthMeasureWithUnit.hxx>
#include<StepRepr_Representation.hxx>
#include<StepRepr_RepresentationContext.hxx>
#include<StepRepr_RepresentationItem.hxx>
#include<StepRepr_RepresentationMap.hxx>
#include<StepRepr_RepresentationRelationship.hxx>
#include<StepRepr_RepresentationRelationshipWithTransformation.hxx>
#include<StepRepr_RepresentedDefinition.hxx>
#include<StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation.hxx>
#include<StepRepr_SequenceNodeOfSequenceOfRepresentationItem.hxx>
#include<StepRepr_SequenceOfMaterialPropertyRepresentation.hxx>
#include<StepRepr_SequenceOfRepresentationItem.hxx>
#include<StepRepr_ShapeAspect.hxx>
#include<StepRepr_ShapeAspectDerivingRelationship.hxx>
#include<StepRepr_ShapeAspectRelationship.hxx>
#include<StepRepr_ShapeAspectTransition.hxx>
#include<StepRepr_ShapeDefinition.hxx>
#include<StepRepr_ShapeRepresentationRelationship.hxx>
#include<StepRepr_ShapeRepresentationRelationshipWithTransformation.hxx>
#include<StepRepr_SpecifiedHigherUsageOccurrence.hxx>
#include<StepRepr_StructuralResponseProperty.hxx>
#include<StepRepr_StructuralResponsePropertyDefinitionRepresentation.hxx>
#include<StepRepr_SuppliedPartRelationship.hxx>
#include<StepRepr_Transformation.hxx>
#include<StepRepr_ValueRange.hxx>

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
#include<Interface_SequenceOfCheck.hxx>
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
#include<Handle_StepBasic_CharacterizedObject.hxx>
#include<Handle_StepBasic_ProductDefinition.hxx>
#include<Handle_StepBasic_ProductDefinitionRelationship.hxx>
#include<Handle_StepBasic_DocumentFile.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_StepBasic_ProductConceptContext.hxx>
#include<Handle_StepBasic_MeasureWithUnit.hxx>
#include<Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit.hxx>
#include<Handle_StepBasic_UncertaintyMeasureWithUnit.hxx>
#include<Handle_StepBasic_GeneralProperty.hxx>
#include<Handle_StepBasic_HArray1OfNamedUnit.hxx>
#include<Handle_StepBasic_NamedUnit.hxx>
#include<Handle_StepBasic_MeasureValueMember.hxx>
#include<StepBasic_Unit.hxx>
#include<Handle_StepBasic_LengthMeasureWithUnit.hxx>
#include<Handle_StepBasic_ProductDefinitionFormation.hxx>
%}
