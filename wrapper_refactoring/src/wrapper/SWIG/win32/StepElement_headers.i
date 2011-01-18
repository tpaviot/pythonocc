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

#include<Handle_StepElement_AnalysisItemWithinRepresentation.hxx>
#include<Handle_StepElement_Curve3dElementDescriptor.hxx>
#include<Handle_StepElement_CurveElementEndReleasePacket.hxx>
#include<Handle_StepElement_CurveElementFreedomMember.hxx>
#include<Handle_StepElement_CurveElementPurposeMember.hxx>
#include<Handle_StepElement_CurveElementSectionDefinition.hxx>
#include<Handle_StepElement_CurveElementSectionDerivedDefinitions.hxx>
#include<Handle_StepElement_ElementAspectMember.hxx>
#include<Handle_StepElement_ElementDescriptor.hxx>
#include<Handle_StepElement_ElementMaterial.hxx>
#include<Handle_StepElement_HArray1OfCurveElementEndReleasePacket.hxx>
#include<Handle_StepElement_HArray1OfCurveElementSectionDefinition.hxx>
#include<Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx>
#include<Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx>
#include<Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx>
#include<Handle_StepElement_HArray1OfSurfaceSection.hxx>
#include<Handle_StepElement_HArray1OfVolumeElementPurpose.hxx>
#include<Handle_StepElement_HArray1OfVolumeElementPurposeMember.hxx>
#include<Handle_StepElement_HArray2OfCurveElementPurposeMember.hxx>
#include<Handle_StepElement_HArray2OfSurfaceElementPurpose.hxx>
#include<Handle_StepElement_HArray2OfSurfaceElementPurposeMember.hxx>
#include<Handle_StepElement_HSequenceOfCurveElementPurposeMember.hxx>
#include<Handle_StepElement_HSequenceOfCurveElementSectionDefinition.hxx>
#include<Handle_StepElement_HSequenceOfElementMaterial.hxx>
#include<Handle_StepElement_HSequenceOfSurfaceElementPurposeMember.hxx>
#include<Handle_StepElement_MeasureOrUnspecifiedValueMember.hxx>
#include<Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember.hxx>
#include<Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition.hxx>
#include<Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial.hxx>
#include<Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember.hxx>
#include<Handle_StepElement_Surface3dElementDescriptor.hxx>
#include<Handle_StepElement_SurfaceElementProperty.hxx>
#include<Handle_StepElement_SurfaceElementPurposeMember.hxx>
#include<Handle_StepElement_SurfaceSection.hxx>
#include<Handle_StepElement_SurfaceSectionField.hxx>
#include<Handle_StepElement_SurfaceSectionFieldConstant.hxx>
#include<Handle_StepElement_SurfaceSectionFieldVarying.hxx>
#include<Handle_StepElement_UniformSurfaceSection.hxx>
#include<Handle_StepElement_Volume3dElementDescriptor.hxx>
#include<Handle_StepElement_VolumeElementPurposeMember.hxx>
#include<StepElement_AnalysisItemWithinRepresentation.hxx>
#include<StepElement_Array1OfCurveElementEndReleasePacket.hxx>
#include<StepElement_Array1OfCurveElementSectionDefinition.hxx>
#include<StepElement_Array1OfHSequenceOfCurveElementPurposeMember.hxx>
#include<StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember.hxx>
#include<StepElement_Array1OfMeasureOrUnspecifiedValue.hxx>
#include<StepElement_Array1OfSurfaceSection.hxx>
#include<StepElement_Array1OfVolumeElementPurpose.hxx>
#include<StepElement_Array1OfVolumeElementPurposeMember.hxx>
#include<StepElement_Array2OfCurveElementPurposeMember.hxx>
#include<StepElement_Array2OfSurfaceElementPurpose.hxx>
#include<StepElement_Array2OfSurfaceElementPurposeMember.hxx>
#include<StepElement_Curve3dElementDescriptor.hxx>
#include<StepElement_CurveEdge.hxx>
#include<StepElement_CurveElementEndReleasePacket.hxx>
#include<StepElement_CurveElementFreedom.hxx>
#include<StepElement_CurveElementFreedomMember.hxx>
#include<StepElement_CurveElementPurpose.hxx>
#include<StepElement_CurveElementPurposeMember.hxx>
#include<StepElement_CurveElementSectionDefinition.hxx>
#include<StepElement_CurveElementSectionDerivedDefinitions.hxx>
#include<StepElement_Element2dShape.hxx>
#include<StepElement_ElementAspect.hxx>
#include<StepElement_ElementAspectMember.hxx>
#include<StepElement_ElementDescriptor.hxx>
#include<StepElement_ElementMaterial.hxx>
#include<StepElement_ElementOrder.hxx>
#include<StepElement_ElementVolume.hxx>
#include<StepElement_EnumeratedCurveElementFreedom.hxx>
#include<StepElement_EnumeratedCurveElementPurpose.hxx>
#include<StepElement_EnumeratedSurfaceElementPurpose.hxx>
#include<StepElement_EnumeratedVolumeElementPurpose.hxx>
#include<StepElement_HArray1OfCurveElementEndReleasePacket.hxx>
#include<StepElement_HArray1OfCurveElementSectionDefinition.hxx>
#include<StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx>
#include<StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx>
#include<StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx>
#include<StepElement_HArray1OfSurfaceSection.hxx>
#include<StepElement_HArray1OfVolumeElementPurpose.hxx>
#include<StepElement_HArray1OfVolumeElementPurposeMember.hxx>
#include<StepElement_HArray2OfCurveElementPurposeMember.hxx>
#include<StepElement_HArray2OfSurfaceElementPurpose.hxx>
#include<StepElement_HArray2OfSurfaceElementPurposeMember.hxx>
#include<StepElement_HSequenceOfCurveElementPurposeMember.hxx>
#include<StepElement_HSequenceOfCurveElementSectionDefinition.hxx>
#include<StepElement_HSequenceOfElementMaterial.hxx>
#include<StepElement_HSequenceOfSurfaceElementPurposeMember.hxx>
#include<StepElement_MeasureOrUnspecifiedValue.hxx>
#include<StepElement_MeasureOrUnspecifiedValueMember.hxx>
#include<StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember.hxx>
#include<StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition.hxx>
#include<StepElement_SequenceNodeOfSequenceOfElementMaterial.hxx>
#include<StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember.hxx>
#include<StepElement_SequenceOfCurveElementPurposeMember.hxx>
#include<StepElement_SequenceOfCurveElementSectionDefinition.hxx>
#include<StepElement_SequenceOfElementMaterial.hxx>
#include<StepElement_SequenceOfSurfaceElementPurposeMember.hxx>
#include<StepElement_Surface3dElementDescriptor.hxx>
#include<StepElement_SurfaceElementProperty.hxx>
#include<StepElement_SurfaceElementPurpose.hxx>
#include<StepElement_SurfaceElementPurposeMember.hxx>
#include<StepElement_SurfaceSection.hxx>
#include<StepElement_SurfaceSectionField.hxx>
#include<StepElement_SurfaceSectionFieldConstant.hxx>
#include<StepElement_SurfaceSectionFieldVarying.hxx>
#include<StepElement_UniformSurfaceSection.hxx>
#include<StepElement_UnspecifiedValue.hxx>
#include<StepElement_Volume3dElementDescriptor.hxx>
#include<StepElement_Volume3dElementShape.hxx>
#include<StepElement_VolumeElementPurpose.hxx>
#include<StepElement_VolumeElementPurposeMember.hxx>

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
#include<Handle_StepData_SelectMember.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_StepRepr_HArray1OfMaterialPropertyRepresentation.hxx>
#include<Handle_StepRepr_RepresentationItem.hxx>
#include<Handle_StepRepr_Representation.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
%}
