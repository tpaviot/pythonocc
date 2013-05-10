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
#include <Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger.hxx>
#include <Handle_MeshVS_DataSource.hxx>
#include <Handle_MeshVS_DataSource3D.hxx>
#include <Handle_MeshVS_DeformedDataSource.hxx>
#include <Handle_MeshVS_Drawer.hxx>
#include <Handle_MeshVS_DummySensitiveEntity.hxx>
#include <Handle_MeshVS_ElementalColorPrsBuilder.hxx>
#include <Handle_MeshVS_HArray1OfSequenceOfInteger.hxx>
#include <Handle_MeshVS_Mesh.hxx>
#include <Handle_MeshVS_MeshEntityOwner.hxx>
#include <Handle_MeshVS_MeshOwner.hxx>
#include <Handle_MeshVS_MeshPrsBuilder.hxx>
#include <Handle_MeshVS_NodalColorPrsBuilder.hxx>
#include <Handle_MeshVS_PrsBuilder.hxx>
#include <Handle_MeshVS_SensitiveFace.hxx>
#include <Handle_MeshVS_SensitiveMesh.hxx>
#include <Handle_MeshVS_SensitivePolyhedron.hxx>
#include <Handle_MeshVS_SensitiveSegment.hxx>
#include <Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder.hxx>
#include <Handle_MeshVS_StdMapNodeOfMapOfTwoNodes.hxx>
#include <Handle_MeshVS_TextPrsBuilder.hxx>
#include <Handle_MeshVS_VectorPrsBuilder.hxx>
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
#include <MeshVS_Array1OfSequenceOfInteger.hxx>
#include <MeshVS_Buffer.hxx>
#include <MeshVS_BuilderPriority.hxx>
#include <MeshVS_ColorHasher.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfColorMapOfInteger.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfHArray1OfSequenceOfInteger.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfIntegerAsciiString.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfIntegerBoolean.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfIntegerColor.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfIntegerMaterial.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfIntegerMeshEntityOwner.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfIntegerOwner.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfIntegerVector.hxx>
#include <MeshVS_DataMapIteratorOfDataMapOfTwoColorsMapOfInteger.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfIntegerBoolean.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfIntegerColor.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfIntegerMaterial.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfIntegerOwner.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfIntegerVector.hxx>
#include <MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger.hxx>
#include <MeshVS_DataMapOfColorMapOfInteger.hxx>
#include <MeshVS_DataMapOfHArray1OfSequenceOfInteger.hxx>
#include <MeshVS_DataMapOfIntegerAsciiString.hxx>
#include <MeshVS_DataMapOfIntegerBoolean.hxx>
#include <MeshVS_DataMapOfIntegerColor.hxx>
#include <MeshVS_DataMapOfIntegerMaterial.hxx>
#include <MeshVS_DataMapOfIntegerMeshEntityOwner.hxx>
#include <MeshVS_DataMapOfIntegerOwner.hxx>
#include <MeshVS_DataMapOfIntegerTwoColors.hxx>
#include <MeshVS_DataMapOfIntegerVector.hxx>
#include <MeshVS_DataMapOfTwoColorsMapOfInteger.hxx>
#include <MeshVS_DataSource.hxx>
#include <MeshVS_DataSource3D.hxx>
#include <MeshVS_DeformedDataSource.hxx>
#include <MeshVS_DisplayModeFlags.hxx>
#include <MeshVS_Drawer.hxx>
#include <MeshVS_DrawerAttribute.hxx>
#include <MeshVS_DummySensitiveEntity.hxx>
#include <MeshVS_ElementalColorPrsBuilder.hxx>
#include <MeshVS_EntityType.hxx>
#include <MeshVS_HArray1OfSequenceOfInteger.hxx>
#include <MeshVS_MapIteratorOfMapOfTwoNodes.hxx>
#include <MeshVS_MapOfTwoNodes.hxx>
#include <MeshVS_Mesh.hxx>
#include <MeshVS_MeshEntityOwner.hxx>
#include <MeshVS_MeshOwner.hxx>
#include <MeshVS_MeshPrsBuilder.hxx>
#include <MeshVS_MeshPtr.hxx>
#include <MeshVS_MeshSelectionMethod.hxx>
#include <MeshVS_NodalColorPrsBuilder.hxx>
#include <MeshVS_PrsBuilder.hxx>
#include <MeshVS_SelectionModeFlags.hxx>
#include <MeshVS_SensitiveFace.hxx>
#include <MeshVS_SensitiveMesh.hxx>
#include <MeshVS_SensitivePolyhedron.hxx>
#include <MeshVS_SensitiveSegment.hxx>
#include <MeshVS_SequenceNodeOfSequenceOfPrsBuilder.hxx>
#include <MeshVS_SequenceOfPrsBuilder.hxx>
#include <MeshVS_StdMapNodeOfMapOfTwoNodes.hxx>
#include <MeshVS_TextPrsBuilder.hxx>
#include <MeshVS_Tool.hxx>
#include <MeshVS_TwoColors.hxx>
#include <MeshVS_TwoColorsHasher.hxx>
#include <MeshVS_TwoNodes.hxx>
#include <MeshVS_TwoNodesHasher.hxx>
#include <MeshVS_VectorPrsBuilder.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Assert.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_CLocaleSentry.hxx>
#include <Standard_CString.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_DefineException.hxx>
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
#include <Standard_MMgrTBBalloc.hxx>
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
#include <Standard_PByte.hxx>
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
#include <Standard_Storable.hxx>
#include <Standard_Stream.hxx>
#include <Standard_String.hxx>
#include <Standard_ThreadId.hxx>
#include <Standard_Time.hxx>
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
%};

%import TCollection.i
%import MeshVS.i
%import Standard.i
