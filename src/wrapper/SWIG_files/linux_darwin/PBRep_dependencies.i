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
#include <GeomAbs_BSplKnotDistribution.hxx>
#include <GeomAbs_CurveForm.hxx>
#include <GeomAbs_CurveType.hxx>
#include <GeomAbs_IsoType.hxx>
#include <GeomAbs_JoinType.hxx>
#include <GeomAbs_Shape.hxx>
#include <GeomAbs_SurfaceForm.hxx>
#include <GeomAbs_SurfaceType.hxx>
#include <GeomAbs_UVSense.hxx>
#include <Handle_PTopoDS_CompSolid.hxx>
#include <Handle_PTopoDS_Compound.hxx>
#include <Handle_PTopoDS_Edge.hxx>
#include <Handle_PTopoDS_Face.hxx>
#include <Handle_PTopoDS_HArray1OfHShape.hxx>
#include <Handle_PTopoDS_HArray1OfShape1.hxx>
#include <Handle_PTopoDS_HShape.hxx>
#include <Handle_PTopoDS_Shell.hxx>
#include <Handle_PTopoDS_Solid.hxx>
#include <Handle_PTopoDS_TCompSolid.hxx>
#include <Handle_PTopoDS_TCompSolid1.hxx>
#include <Handle_PTopoDS_TCompound.hxx>
#include <Handle_PTopoDS_TCompound1.hxx>
#include <Handle_PTopoDS_TEdge.hxx>
#include <Handle_PTopoDS_TEdge1.hxx>
#include <Handle_PTopoDS_TFace.hxx>
#include <Handle_PTopoDS_TFace1.hxx>
#include <Handle_PTopoDS_TShape.hxx>
#include <Handle_PTopoDS_TShape1.hxx>
#include <Handle_PTopoDS_TShell.hxx>
#include <Handle_PTopoDS_TShell1.hxx>
#include <Handle_PTopoDS_TSolid.hxx>
#include <Handle_PTopoDS_TSolid1.hxx>
#include <Handle_PTopoDS_TVertex.hxx>
#include <Handle_PTopoDS_TVertex1.hxx>
#include <Handle_PTopoDS_TWire.hxx>
#include <Handle_PTopoDS_TWire1.hxx>
#include <Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape.hxx>
#include <Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1.hxx>
#include <Handle_PTopoDS_Vertex.hxx>
#include <Handle_PTopoDS_Wire.hxx>
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
#include <PTopoDS_CompSolid.hxx>
#include <PTopoDS_Compound.hxx>
#include <PTopoDS_Edge.hxx>
#include <PTopoDS_Face.hxx>
#include <PTopoDS_FieldOfHArray1OfHShape.hxx>
#include <PTopoDS_FieldOfHArray1OfShape1.hxx>
#include <PTopoDS_HArray1OfHShape.hxx>
#include <PTopoDS_HArray1OfShape1.hxx>
#include <PTopoDS_HShape.hxx>
#include <PTopoDS_Shape1.hxx>
#include <PTopoDS_Shell.hxx>
#include <PTopoDS_Solid.hxx>
#include <PTopoDS_TCompSolid.hxx>
#include <PTopoDS_TCompSolid1.hxx>
#include <PTopoDS_TCompound.hxx>
#include <PTopoDS_TCompound1.hxx>
#include <PTopoDS_TEdge.hxx>
#include <PTopoDS_TEdge1.hxx>
#include <PTopoDS_TFace.hxx>
#include <PTopoDS_TFace1.hxx>
#include <PTopoDS_TShape.hxx>
#include <PTopoDS_TShape1.hxx>
#include <PTopoDS_TShell.hxx>
#include <PTopoDS_TShell1.hxx>
#include <PTopoDS_TSolid.hxx>
#include <PTopoDS_TSolid1.hxx>
#include <PTopoDS_TVertex.hxx>
#include <PTopoDS_TVertex1.hxx>
#include <PTopoDS_TWire.hxx>
#include <PTopoDS_TWire1.hxx>
#include <PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape.hxx>
#include <PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1.hxx>
#include <PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape.hxx>
#include <PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1.hxx>
#include <PTopoDS_Vertex.hxx>
#include <PTopoDS_Wire.hxx>
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

%import Standard.i
%import PTopoDS.i
%import GeomAbs.i
