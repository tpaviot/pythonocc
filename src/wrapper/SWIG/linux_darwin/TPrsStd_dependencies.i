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
#include <Graphic3d_Array1OfBytes.hxx>
#include <Graphic3d_Array1OfVector.hxx>
#include <Graphic3d_Array1OfVertex.hxx>
#include <Graphic3d_Array1OfVertexC.hxx>
#include <Graphic3d_Array1OfVertexN.hxx>
#include <Graphic3d_Array1OfVertexNC.hxx>
#include <Graphic3d_Array1OfVertexNT.hxx>
#include <Graphic3d_Array2OfVertex.hxx>
#include <Graphic3d_Array2OfVertexC.hxx>
#include <Graphic3d_Array2OfVertexN.hxx>
#include <Graphic3d_Array2OfVertexNC.hxx>
#include <Graphic3d_Array2OfVertexNT.hxx>
#include <Graphic3d_ArrayOfPoints.hxx>
#include <Graphic3d_ArrayOfPolygons.hxx>
#include <Graphic3d_ArrayOfPolylines.hxx>
#include <Graphic3d_ArrayOfPrimitives.hxx>
#include <Graphic3d_ArrayOfQuadrangleStrips.hxx>
#include <Graphic3d_ArrayOfQuadrangles.hxx>
#include <Graphic3d_ArrayOfSegments.hxx>
#include <Graphic3d_ArrayOfTriangleFans.hxx>
#include <Graphic3d_ArrayOfTriangleStrips.hxx>
#include <Graphic3d_ArrayOfTriangles.hxx>
#include <Graphic3d_AspectFillArea3d.hxx>
#include <Graphic3d_AspectLine3d.hxx>
#include <Graphic3d_AspectMarker3d.hxx>
#include <Graphic3d_AspectText3d.hxx>
#include <Graphic3d_AspectTextDefinitionError.hxx>
#include <Graphic3d_CBitFields16.hxx>
#include <Graphic3d_CBitFields20.hxx>
#include <Graphic3d_CBitFields4.hxx>
#include <Graphic3d_CBitFields8.hxx>
#include <Graphic3d_CBounds.hxx>
#include <Graphic3d_CGroup.hxx>
#include <Graphic3d_CInitTexture.hxx>
#include <Graphic3d_CLight.hxx>
#include <Graphic3d_CPick.hxx>
#include <Graphic3d_CPlane.hxx>
#include <Graphic3d_CStructure.hxx>
#include <Graphic3d_CTexture.hxx>
#include <Graphic3d_CTransPersStruct.hxx>
#include <Graphic3d_CUserDraw.hxx>
#include <Graphic3d_CView.hxx>
#include <Graphic3d_CycleError.hxx>
#include <Graphic3d_DataStructureManager.hxx>
#include <Graphic3d_ExportFormat.hxx>
#include <Graphic3d_GraphicDevice.hxx>
#include <Graphic3d_GraphicDriver.hxx>
#include <Graphic3d_Group.hxx>
#include <Graphic3d_GroupDefinitionError.hxx>
#include <Graphic3d_HArray1OfBytes.hxx>
#include <Graphic3d_HSequenceOfGroup.hxx>
#include <Graphic3d_HSequenceOfStructure.hxx>
#include <Graphic3d_HSetOfGroup.hxx>
#include <Graphic3d_HorizontalTextAlignment.hxx>
#include <Graphic3d_InitialisationError.hxx>
#include <Graphic3d_ListIteratorOfListOfPArray.hxx>
#include <Graphic3d_ListIteratorOfListOfShortReal.hxx>
#include <Graphic3d_ListIteratorOfSetListOfSetOfGroup.hxx>
#include <Graphic3d_ListNodeOfListOfPArray.hxx>
#include <Graphic3d_ListNodeOfListOfShortReal.hxx>
#include <Graphic3d_ListNodeOfSetListOfSetOfGroup.hxx>
#include <Graphic3d_ListOfPArray.hxx>
#include <Graphic3d_ListOfShortReal.hxx>
#include <Graphic3d_MapIteratorOfMapOfStructure.hxx>
#include <Graphic3d_MapOfStructure.hxx>
#include <Graphic3d_MaterialAspect.hxx>
#include <Graphic3d_MaterialDefinitionError.hxx>
#include <Graphic3d_NameOfFont.hxx>
#include <Graphic3d_NameOfMaterial.hxx>
#include <Graphic3d_NameOfTexture1D.hxx>
#include <Graphic3d_NameOfTexture2D.hxx>
#include <Graphic3d_NameOfTextureEnv.hxx>
#include <Graphic3d_NameOfTexturePlane.hxx>
#include <Graphic3d_PickIdDefinitionError.hxx>
#include <Graphic3d_Plotter.hxx>
#include <Graphic3d_PlotterDefinitionError.hxx>
#include <Graphic3d_PrimitiveArray.hxx>
#include <Graphic3d_PriorityDefinitionError.hxx>
#include <Graphic3d_SequenceNodeOfSequenceOfAddress.hxx>
#include <Graphic3d_SequenceNodeOfSequenceOfGroup.hxx>
#include <Graphic3d_SequenceNodeOfSequenceOfStructure.hxx>
#include <Graphic3d_SequenceOfAddress.hxx>
#include <Graphic3d_SequenceOfGroup.hxx>
#include <Graphic3d_SequenceOfStructure.hxx>
#include <Graphic3d_SetIteratorOfSetOfGroup.hxx>
#include <Graphic3d_SetListOfSetOfGroup.hxx>
#include <Graphic3d_SetOfGroup.hxx>
#include <Graphic3d_SortType.hxx>
#include <Graphic3d_StdMapNodeOfMapOfStructure.hxx>
#include <Graphic3d_Strips.hxx>
#include <Graphic3d_StructPtr.hxx>
#include <Graphic3d_Structure.hxx>
#include <Graphic3d_StructureDefinitionError.hxx>
#include <Graphic3d_StructureManager.hxx>
#include <Graphic3d_TextPath.hxx>
#include <Graphic3d_Texture1D.hxx>
#include <Graphic3d_Texture1Dmanual.hxx>
#include <Graphic3d_Texture1Dsegment.hxx>
#include <Graphic3d_Texture2D.hxx>
#include <Graphic3d_Texture2Dmanual.hxx>
#include <Graphic3d_Texture2Dplane.hxx>
#include <Graphic3d_TextureEnv.hxx>
#include <Graphic3d_TextureMap.hxx>
#include <Graphic3d_TextureRoot.hxx>
#include <Graphic3d_TransModeFlags.hxx>
#include <Graphic3d_TransformError.hxx>
#include <Graphic3d_TypeOfComposition.hxx>
#include <Graphic3d_TypeOfConnection.hxx>
#include <Graphic3d_TypeOfMaterial.hxx>
#include <Graphic3d_TypeOfPolygon.hxx>
#include <Graphic3d_TypeOfPrimitive.hxx>
#include <Graphic3d_TypeOfPrimitiveArray.hxx>
#include <Graphic3d_TypeOfReflection.hxx>
#include <Graphic3d_TypeOfStructure.hxx>
#include <Graphic3d_TypeOfTexture.hxx>
#include <Graphic3d_TypeOfTextureMode.hxx>
#include <Graphic3d_Vector.hxx>
#include <Graphic3d_VectorError.hxx>
#include <Graphic3d_Vertex.hxx>
#include <Graphic3d_VertexC.hxx>
#include <Graphic3d_VertexN.hxx>
#include <Graphic3d_VertexNC.hxx>
#include <Graphic3d_VertexNT.hxx>
#include <Graphic3d_VerticalTextAlignment.hxx>
#include <Handle_Graphic3d_ArrayOfPoints.hxx>
#include <Handle_Graphic3d_ArrayOfPolygons.hxx>
#include <Handle_Graphic3d_ArrayOfPolylines.hxx>
#include <Handle_Graphic3d_ArrayOfPrimitives.hxx>
#include <Handle_Graphic3d_ArrayOfQuadrangleStrips.hxx>
#include <Handle_Graphic3d_ArrayOfQuadrangles.hxx>
#include <Handle_Graphic3d_ArrayOfSegments.hxx>
#include <Handle_Graphic3d_ArrayOfTriangleFans.hxx>
#include <Handle_Graphic3d_ArrayOfTriangleStrips.hxx>
#include <Handle_Graphic3d_ArrayOfTriangles.hxx>
#include <Handle_Graphic3d_AspectFillArea3d.hxx>
#include <Handle_Graphic3d_AspectLine3d.hxx>
#include <Handle_Graphic3d_AspectMarker3d.hxx>
#include <Handle_Graphic3d_AspectText3d.hxx>
#include <Handle_Graphic3d_AspectTextDefinitionError.hxx>
#include <Handle_Graphic3d_CycleError.hxx>
#include <Handle_Graphic3d_DataStructureManager.hxx>
#include <Handle_Graphic3d_GraphicDevice.hxx>
#include <Handle_Graphic3d_GraphicDriver.hxx>
#include <Handle_Graphic3d_Group.hxx>
#include <Handle_Graphic3d_GroupDefinitionError.hxx>
#include <Handle_Graphic3d_HArray1OfBytes.hxx>
#include <Handle_Graphic3d_HSequenceOfGroup.hxx>
#include <Handle_Graphic3d_HSequenceOfStructure.hxx>
#include <Handle_Graphic3d_HSetOfGroup.hxx>
#include <Handle_Graphic3d_InitialisationError.hxx>
#include <Handle_Graphic3d_ListNodeOfListOfPArray.hxx>
#include <Handle_Graphic3d_ListNodeOfListOfShortReal.hxx>
#include <Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup.hxx>
#include <Handle_Graphic3d_MaterialDefinitionError.hxx>
#include <Handle_Graphic3d_PickIdDefinitionError.hxx>
#include <Handle_Graphic3d_Plotter.hxx>
#include <Handle_Graphic3d_PlotterDefinitionError.hxx>
#include <Handle_Graphic3d_PriorityDefinitionError.hxx>
#include <Handle_Graphic3d_SequenceNodeOfSequenceOfAddress.hxx>
#include <Handle_Graphic3d_SequenceNodeOfSequenceOfGroup.hxx>
#include <Handle_Graphic3d_SequenceNodeOfSequenceOfStructure.hxx>
#include <Handle_Graphic3d_StdMapNodeOfMapOfStructure.hxx>
#include <Handle_Graphic3d_Structure.hxx>
#include <Handle_Graphic3d_StructureDefinitionError.hxx>
#include <Handle_Graphic3d_StructureManager.hxx>
#include <Handle_Graphic3d_Texture1D.hxx>
#include <Handle_Graphic3d_Texture1Dmanual.hxx>
#include <Handle_Graphic3d_Texture1Dsegment.hxx>
#include <Handle_Graphic3d_Texture2D.hxx>
#include <Handle_Graphic3d_Texture2Dmanual.hxx>
#include <Handle_Graphic3d_Texture2Dplane.hxx>
#include <Handle_Graphic3d_TextureEnv.hxx>
#include <Handle_Graphic3d_TextureMap.hxx>
#include <Handle_Graphic3d_TextureRoot.hxx>
#include <Handle_Graphic3d_TransformError.hxx>
#include <Handle_Graphic3d_VectorError.hxx>
#include <Handle_MMgt_TShared.hxx>
#include <Handle_Quantity_ColorDefinitionError.hxx>
#include <Handle_Quantity_DateDefinitionError.hxx>
#include <Handle_Quantity_HArray1OfColor.hxx>
#include <Handle_Quantity_PeriodDefinitionError.hxx>
#include <Handle_Standard_AbortiveTransaction.hxx>
#include <Handle_Standard_ConstructionError.hxx>
#include <Handle_Standard_DimensionError.hxx>
#include <Handle_Standard_DimensionMismatch.hxx>
#include <Handle_Standard_DivideByZero.hxx>
#include <Handle_Standard_DomainError.hxx>
#include <Handle_Standard_Failure.hxx>
#include <Handle_Standard_ImmutableObject.hxx>
#include <Handle_Standard_LicenseError.hxx>
#include <Handle_Standard_LicenseNotFound.hxx>
#include <Handle_Standard_MultiplyDefined.hxx>
#include <Handle_Standard_NegativeValue.hxx>
#include <Handle_Standard_NoMoreObject.hxx>
#include <Handle_Standard_NoSuchObject.hxx>
#include <Handle_Standard_NotImplemented.hxx>
#include <Handle_Standard_NullObject.hxx>
#include <Handle_Standard_NullValue.hxx>
#include <Handle_Standard_NumericError.hxx>
#include <Handle_Standard_OutOfMemory.hxx>
#include <Handle_Standard_OutOfRange.hxx>
#include <Handle_Standard_Overflow.hxx>
#include <Handle_Standard_Persistent.hxx>
#include <Handle_Standard_ProgramError.hxx>
#include <Handle_Standard_RangeError.hxx>
#include <Handle_Standard_TooManyUsers.hxx>
#include <Handle_Standard_Transient.hxx>
#include <Handle_Standard_Type.hxx>
#include <Handle_Standard_TypeMismatch.hxx>
#include <Handle_Standard_Underflow.hxx>
#include <Handle_TCollection_AVLBaseNode.hxx>
#include <Handle_TCollection_HAsciiString.hxx>
#include <Handle_TCollection_HExtendedString.hxx>
#include <Handle_TCollection_MapNode.hxx>
#include <Handle_TCollection_SeqNode.hxx>
#include <Handle_TDF_Attribute.hxx>
#include <Handle_TDF_AttributeDelta.hxx>
#include <Handle_TDF_Data.hxx>
#include <Handle_TDF_DataMapNodeOfAttributeDataMap.hxx>
#include <Handle_TDF_DataMapNodeOfLabelDataMap.hxx>
#include <Handle_TDF_DataMapNodeOfLabelIntegerMap.hxx>
#include <Handle_TDF_DataMapNodeOfLabelLabelMap.hxx>
#include <Handle_TDF_DataSet.hxx>
#include <Handle_TDF_DefaultDeltaOnModification.hxx>
#include <Handle_TDF_DefaultDeltaOnRemoval.hxx>
#include <Handle_TDF_Delta.hxx>
#include <Handle_TDF_DeltaOnAddition.hxx>
#include <Handle_TDF_DeltaOnForget.hxx>
#include <Handle_TDF_DeltaOnModification.hxx>
#include <Handle_TDF_DeltaOnRemoval.hxx>
#include <Handle_TDF_DeltaOnResume.hxx>
#include <Handle_TDF_DoubleMapNodeOfAttributeDoubleMap.hxx>
#include <Handle_TDF_DoubleMapNodeOfGUIDProgIDMap.hxx>
#include <Handle_TDF_DoubleMapNodeOfLabelDoubleMap.hxx>
#include <Handle_TDF_HAttributeArray1.hxx>
#include <Handle_TDF_IndexedMapNodeOfAttributeIndexedMap.hxx>
#include <Handle_TDF_IndexedMapNodeOfLabelIndexedMap.hxx>
#include <Handle_TDF_ListNodeOfAttributeDeltaList.hxx>
#include <Handle_TDF_ListNodeOfAttributeList.hxx>
#include <Handle_TDF_ListNodeOfDeltaList.hxx>
#include <Handle_TDF_ListNodeOfIDList.hxx>
#include <Handle_TDF_ListNodeOfLabelList.hxx>
#include <Handle_TDF_Reference.hxx>
#include <Handle_TDF_RelocationTable.hxx>
#include <Handle_TDF_SequenceNodeOfAttributeSequence.hxx>
#include <Handle_TDF_SequenceNodeOfLabelSequence.hxx>
#include <Handle_TDF_StdMapNodeOfAttributeMap.hxx>
#include <Handle_TDF_StdMapNodeOfIDMap.hxx>
#include <Handle_TDF_StdMapNodeOfLabelMap.hxx>
#include <Handle_TDF_TagSource.hxx>
#include <MMgt_StackManager.hxx>
#include <MMgt_TShared.hxx>
#include <Quantity_AbsorbedDose.hxx>
#include <Quantity_Acceleration.hxx>
#include <Quantity_AcousticIntensity.hxx>
#include <Quantity_Activity.hxx>
#include <Quantity_Admittance.hxx>
#include <Quantity_AmountOfSubstance.hxx>
#include <Quantity_AngularVelocity.hxx>
#include <Quantity_Area.hxx>
#include <Quantity_Array1OfCoefficient.hxx>
#include <Quantity_Array1OfColor.hxx>
#include <Quantity_Array2OfColor.hxx>
#include <Quantity_Capacitance.hxx>
#include <Quantity_Coefficient.hxx>
#include <Quantity_CoefficientOfExpansion.hxx>
#include <Quantity_Color.hxx>
#include <Quantity_ColorDefinitionError.hxx>
#include <Quantity_Color_1.hxx>
#include <Quantity_Concentration.hxx>
#include <Quantity_Conductivity.hxx>
#include <Quantity_Constant.hxx>
#include <Quantity_Consumption.hxx>
#include <Quantity_Content.hxx>
#include <Quantity_Convert.hxx>
#include <Quantity_Date.hxx>
#include <Quantity_DateDefinitionError.hxx>
#include <Quantity_Density.hxx>
#include <Quantity_DoseEquivalent.hxx>
#include <Quantity_ElectricCapacitance.hxx>
#include <Quantity_ElectricCharge.hxx>
#include <Quantity_ElectricCurrent.hxx>
#include <Quantity_ElectricFieldStrength.hxx>
#include <Quantity_ElectricPotential.hxx>
#include <Quantity_Energy.hxx>
#include <Quantity_Enthalpy.hxx>
#include <Quantity_Entropy.hxx>
#include <Quantity_Factor.hxx>
#include <Quantity_Force.hxx>
#include <Quantity_Frequency.hxx>
#include <Quantity_HArray1OfColor.hxx>
#include <Quantity_Illuminance.hxx>
#include <Quantity_Impedance.hxx>
#include <Quantity_Index.hxx>
#include <Quantity_Inductance.hxx>
#include <Quantity_KinematicViscosity.hxx>
#include <Quantity_KineticMoment.hxx>
#include <Quantity_Length.hxx>
#include <Quantity_Luminance.hxx>
#include <Quantity_LuminousEfficacity.hxx>
#include <Quantity_LuminousExposition.hxx>
#include <Quantity_LuminousFlux.hxx>
#include <Quantity_LuminousIntensity.hxx>
#include <Quantity_MagneticFieldStrength.hxx>
#include <Quantity_MagneticFlux.hxx>
#include <Quantity_MagneticFluxDensity.hxx>
#include <Quantity_Mass.hxx>
#include <Quantity_MassFlow.hxx>
#include <Quantity_MolarConcentration.hxx>
#include <Quantity_MolarMass.hxx>
#include <Quantity_MolarVolume.hxx>
#include <Quantity_Molarity.hxx>
#include <Quantity_MomentOfAForce.hxx>
#include <Quantity_MomentOfInertia.hxx>
#include <Quantity_Momentum.hxx>
#include <Quantity_NameOfColor.hxx>
#include <Quantity_Normality.hxx>
#include <Quantity_Parameter.hxx>
#include <Quantity_Period.hxx>
#include <Quantity_PeriodDefinitionError.hxx>
#include <Quantity_PhysicalQuantity.hxx>
#include <Quantity_PlaneAngle.hxx>
#include <Quantity_Power.hxx>
#include <Quantity_Pressure.hxx>
#include <Quantity_Quotient.hxx>
#include <Quantity_Rate.hxx>
#include <Quantity_Ratio.hxx>
#include <Quantity_Reluctance.hxx>
#include <Quantity_Resistance.hxx>
#include <Quantity_Resistivity.hxx>
#include <Quantity_Scalaire.hxx>
#include <Quantity_SolidAngle.hxx>
#include <Quantity_SoundIntensity.hxx>
#include <Quantity_SpecificHeatCapacity.hxx>
#include <Quantity_Speed.hxx>
#include <Quantity_SurfaceTension.hxx>
#include <Quantity_Temperature.hxx>
#include <Quantity_ThermalConductivity.hxx>
#include <Quantity_Torque.hxx>
#include <Quantity_TypeOfColor.hxx>
#include <Quantity_Velocity.hxx>
#include <Quantity_Viscosity.hxx>
#include <Quantity_Volume.hxx>
#include <Quantity_VolumeFlow.hxx>
#include <Quantity_Weight.hxx>
#include <Quantity_Work.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_CString.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_DefineHandle.hxx>
#include <Standard_DimensionError.hxx>
#include <Standard_DimensionMismatch.hxx>
#include <Standard_DivideByZero.hxx>
#include <Standard_DomainError.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_ErrorHandlerCallback.hxx>
#include <Standard_ExtCharacter.hxx>
#include <Standard_ExtString.hxx>
#include <Standard_Failure.hxx>
#include <Standard_GUID.hxx>
#include <Standard_HandlerStatus.hxx>
#include <Standard_IStream.hxx>
#include <Standard_ImmutableObject.hxx>
#include <Standard_Integer.hxx>
#include <Standard_InternalType.hxx>
#include <Standard_JmpBuf.hxx>
#include <Standard_KindOfType.hxx>
#include <Standard_LicenseError.hxx>
#include <Standard_LicenseNotFound.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_MMgrRoot.hxx>
#include <Standard_Macro.hxx>
#include <Standard_MultiplyDefined.hxx>
#include <Standard_Mutex.hxx>
#include <Standard_NegativeValue.hxx>
#include <Standard_NoMoreObject.hxx>
#include <Standard_NoSuchObject.hxx>
#include <Standard_NotImplemented.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_NullValue.hxx>
#include <Standard_NumericError.hxx>
#include <Standard_OId.hxx>
#include <Standard_OStream.hxx>
#include <Standard_OutOfMemory.hxx>
#include <Standard_OutOfRange.hxx>
#include <Standard_Overflow.hxx>
#include <Standard_PCharacter.hxx>
#include <Standard_PErrorHandler.hxx>
#include <Standard_PExtCharacter.hxx>
#include <Standard_Persistent.hxx>
#include <Standard_Persistent_proto.hxx>
#include <Standard_PrimitiveTypes.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_RangeError.hxx>
#include <Standard_Real.hxx>
#include <Standard_SStream.hxx>
#include <Standard_ShortReal.hxx>
#include <Standard_Size.hxx>
#include <Standard_Static.hxx>
#include <Standard_Storable.hxx>
#include <Standard_Stream.hxx>
#include <Standard_String.hxx>
#include <Standard_ThreadId.hxx>
#include <Standard_TooManyUsers.hxx>
#include <Standard_Transient.hxx>
#include <Standard_Type.hxx>
#include <Standard_TypeDef.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_UUID.hxx>
#include <Standard_Underflow.hxx>
#include <Standard_Version.hxx>
#include <Standard_WayOfLife.hxx>
#include <Standard_ctype.hxx>
#include <Standard_math.hxx>
#include <TDF_Attribute.hxx>
#include <TDF_AttributeArray1.hxx>
#include <TDF_AttributeDataMap.hxx>
#include <TDF_AttributeDelta.hxx>
#include <TDF_AttributeDeltaList.hxx>
#include <TDF_AttributeDoubleMap.hxx>
#include <TDF_AttributeIndexedMap.hxx>
#include <TDF_AttributeIterator.hxx>
#include <TDF_AttributeList.hxx>
#include <TDF_AttributeMap.hxx>
#include <TDF_AttributeSequence.hxx>
#include <TDF_ChildIDIterator.hxx>
#include <TDF_ChildIterator.hxx>
#include <TDF_ClosureMode.hxx>
#include <TDF_ClosureTool.hxx>
#include <TDF_ComparisonTool.hxx>
#include <TDF_CopyLabel.hxx>
#include <TDF_CopyTool.hxx>
#include <TDF_Data.hxx>
#include <TDF_DataMapIteratorOfAttributeDataMap.hxx>
#include <TDF_DataMapIteratorOfLabelDataMap.hxx>
#include <TDF_DataMapIteratorOfLabelIntegerMap.hxx>
#include <TDF_DataMapIteratorOfLabelLabelMap.hxx>
#include <TDF_DataMapNodeOfAttributeDataMap.hxx>
#include <TDF_DataMapNodeOfLabelDataMap.hxx>
#include <TDF_DataMapNodeOfLabelIntegerMap.hxx>
#include <TDF_DataMapNodeOfLabelLabelMap.hxx>
#include <TDF_DataSet.hxx>
#include <TDF_DefaultDeltaOnModification.hxx>
#include <TDF_DefaultDeltaOnRemoval.hxx>
#include <TDF_Delta.hxx>
#include <TDF_DeltaList.hxx>
#include <TDF_DeltaOnAddition.hxx>
#include <TDF_DeltaOnForget.hxx>
#include <TDF_DeltaOnModification.hxx>
#include <TDF_DeltaOnRemoval.hxx>
#include <TDF_DeltaOnResume.hxx>
#include <TDF_DoubleMapIteratorOfAttributeDoubleMap.hxx>
#include <TDF_DoubleMapIteratorOfGUIDProgIDMap.hxx>
#include <TDF_DoubleMapIteratorOfLabelDoubleMap.hxx>
#include <TDF_DoubleMapNodeOfAttributeDoubleMap.hxx>
#include <TDF_DoubleMapNodeOfGUIDProgIDMap.hxx>
#include <TDF_DoubleMapNodeOfLabelDoubleMap.hxx>
#include <TDF_GUIDProgIDMap.hxx>
#include <TDF_HAllocator.hxx>
#include <TDF_HAttributeArray1.hxx>
#include <TDF_IDFilter.hxx>
#include <TDF_IDList.hxx>
#include <TDF_IDMap.hxx>
#include <TDF_IndexedMapNodeOfAttributeIndexedMap.hxx>
#include <TDF_IndexedMapNodeOfLabelIndexedMap.hxx>
#include <TDF_Label.hxx>
#include <TDF_LabelDataMap.hxx>
#include <TDF_LabelDoubleMap.hxx>
#include <TDF_LabelIndexedMap.hxx>
#include <TDF_LabelIntegerMap.hxx>
#include <TDF_LabelLabelMap.hxx>
#include <TDF_LabelList.hxx>
#include <TDF_LabelMap.hxx>
#include <TDF_LabelMapHasher.hxx>
#include <TDF_LabelNode.hxx>
#include <TDF_LabelNodePtr.hxx>
#include <TDF_LabelSequence.hxx>
#include <TDF_ListIteratorOfAttributeDeltaList.hxx>
#include <TDF_ListIteratorOfAttributeList.hxx>
#include <TDF_ListIteratorOfDeltaList.hxx>
#include <TDF_ListIteratorOfIDList.hxx>
#include <TDF_ListIteratorOfLabelList.hxx>
#include <TDF_ListNodeOfAttributeDeltaList.hxx>
#include <TDF_ListNodeOfAttributeList.hxx>
#include <TDF_ListNodeOfDeltaList.hxx>
#include <TDF_ListNodeOfIDList.hxx>
#include <TDF_ListNodeOfLabelList.hxx>
#include <TDF_MapIteratorOfAttributeMap.hxx>
#include <TDF_MapIteratorOfIDMap.hxx>
#include <TDF_MapIteratorOfLabelMap.hxx>
#include <TDF_Reference.hxx>
#include <TDF_RelocationTable.hxx>
#include <TDF_SequenceNodeOfAttributeSequence.hxx>
#include <TDF_SequenceNodeOfLabelSequence.hxx>
#include <TDF_StdMapNodeOfAttributeMap.hxx>
#include <TDF_StdMapNodeOfIDMap.hxx>
#include <TDF_StdMapNodeOfLabelMap.hxx>
#include <TDF_TagSource.hxx>
#include <TDF_Tool.hxx>
#include <TDF_Transaction.hxx>
%};

%import MMgt.i
%import TCollection.i
%import TDF.i
%import Standard.i
%import Graphic3d.i
%import Quantity.i
