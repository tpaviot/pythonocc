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

#include<InterfaceGraphic_Aspect.hxx>
#include<InterfaceGraphic_Cextern.hxx>
#include<InterfaceGraphic_Graphic3d.hxx>
#include<InterfaceGraphic_Labels.hxx>
#include<InterfaceGraphic_Portability.hxx>
#include<InterfaceGraphic_PrimitiveArray.hxx>
#include<InterfaceGraphic_Visual3d.hxx>
#include<InterfaceGraphic_WNT.hxx>
#include<Interface_Array1OfFileParameter.hxx>
#include<Interface_Array1OfHAsciiString.hxx>
#include<Interface_BitMap.hxx>
#include<Interface_Category.hxx>
#include<Interface_Check.hxx>
#include<Interface_CheckFailure.hxx>
#include<Interface_CheckIterator.hxx>
#include<Interface_CheckStatus.hxx>
#include<Interface_CheckTool.hxx>
#include<Interface_CopyControl.hxx>
#include<Interface_CopyMap.hxx>
#include<Interface_CopyTool.hxx>
#include<Interface_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<Interface_DataMapIteratorOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapOfIntegerTransient.hxx>
#include<Interface_DataMapOfTransientInteger.hxx>
#include<Interface_DataState.hxx>
#include<Interface_EntityCluster.hxx>
#include<Interface_EntityIterator.hxx>
#include<Interface_EntityList.hxx>
#include<Interface_FileParameter.hxx>
#include<Interface_FileReaderData.hxx>
#include<Interface_FileReaderTool.hxx>
#include<Interface_FloatWriter.hxx>
#include<Interface_GTool.hxx>
#include<Interface_GeneralLib.hxx>
#include<Interface_GeneralModule.hxx>
#include<Interface_GlobalNodeOfGeneralLib.hxx>
#include<Interface_GlobalNodeOfReaderLib.hxx>
#include<Interface_Graph.hxx>
#include<Interface_GraphContent.hxx>
#include<Interface_HArray1OfHAsciiString.hxx>
#include<Interface_HGraph.hxx>
#include<Interface_HSequenceOfCheck.hxx>
#include<Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Interface_IndexedMapOfAsciiString.hxx>
#include<Interface_IntList.hxx>
#include<Interface_IntVal.hxx>
#include<Interface_InterfaceError.hxx>
#include<Interface_InterfaceMismatch.hxx>
#include<Interface_InterfaceModel.hxx>
#include<Interface_LineBuffer.hxx>
#include<Interface_MSG.hxx>
#include<Interface_Macros.hxx>
#include<Interface_MapAsciiStringHasher.hxx>
#include<Interface_NodeOfGeneralLib.hxx>
#include<Interface_NodeOfReaderLib.hxx>
#include<Interface_ParamList.hxx>
#include<Interface_ParamSet.hxx>
#include<Interface_ParamType.hxx>
#include<Interface_Protocol.hxx>
#include<Interface_ReaderLib.hxx>
#include<Interface_ReaderModule.hxx>
#include<Interface_ReportEntity.hxx>
#include<Interface_STAT.hxx>
#include<Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Interface_SequenceOfCheck.hxx>
#include<Interface_ShareFlags.hxx>
#include<Interface_ShareTool.hxx>
#include<Interface_SignLabel.hxx>
#include<Interface_SignType.hxx>
#include<Interface_Static.hxx>
#include<Interface_StaticSatisfies.hxx>
#include<Interface_Statics.hxx>
#include<Interface_Translates.hxx>
#include<Interface_TypedValue.hxx>
#include<Interface_UndefinedContent.hxx>
#include<Interface_ValueInterpret.hxx>
#include<Interface_ValueSatisfies.hxx>
#include<Interface_VectorOfFileParameter.hxx>
#include<Interface_Version.hxx>
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

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_StepBasic_CharacterizedObject.hxx>
#include<Handle_StepBasic_ProductDefinition.hxx>
#include<Handle_StepBasic_ProductDefinitionRelationship.hxx>
#include<Handle_StepBasic_DocumentFile.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_StepBasic_ProductConceptContext.hxx>
#include<Handle_StepBasic_GeneralProperty.hxx>
#include<Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit.hxx>
#include<Handle_StepBasic_UncertaintyMeasureWithUnit.hxx>
#include<Handle_StepBasic_MeasureWithUnit.hxx>
#include<Handle_StepBasic_LengthMeasureWithUnit.hxx>
#include<Handle_StepBasic_HArray1OfNamedUnit.hxx>
#include<Handle_StepBasic_NamedUnit.hxx>
#include<Handle_StepBasic_ProductDefinitionFormation.hxx>
#include<Handle_StepBasic_MeasureValueMember.hxx>
#include<StepBasic_Unit.hxx>
%}
