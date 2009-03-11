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
#include <BRepBuilderAPI_PipeError.hxx>
#include <BRepBuilderAPI_Copy.hxx>
#include <BRepBuilderAPI_Transform.hxx>
#include <BRepBuilderAPI_ShellError.hxx>
#include <BRepBuilderAPI_NurbsConvert.hxx>
#include <BRepBuilderAPI_MakeSolid.hxx>
#include <BRepBuilderAPI_MakeShell.hxx>
#include <BRepBuilderAPI_Command.hxx>
#include <BRepBuilderAPI_FaceError.hxx>
#include <BRepBuilderAPI_MakePolygon.hxx>
#include <BRepBuilderAPI_ShapeModification.hxx>
#include <BRepBuilderAPI_Collect.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <BRepBuilderAPI_TransitionMode.hxx>
#include <BRepBuilderAPI_Sewing.hxx>
#include <BRepBuilderAPI_GTransform.hxx>
#include <BRepBuilderAPI_ModifyShape.hxx>
#include <BRepBuilderAPI_WireError.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepBuilderAPI_MakeEdge2d.hxx>
#include <BRepBuilderAPI_EdgeError.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRepBuilderAPI_FindPlane.hxx>
#include <BRepBuilderAPI_MakeShape.hxx>
#include <Handle_BRepBuilderAPI_Sewing.hxx>
#include <Standard_PrimitiveTypes.hxx>
#include <Standard_Storable.hxx>
#include <Standard_Persistent.hxx>
#include <Standard_OutOfRange.hxx>
#include <Standard_MultiplyDefined.hxx>
#include <Standard_Size.hxx>
#include <Standard_String.hxx>
#include <Standard_IStream.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_NotImplemented.hxx>
#include <Standard_PErrorHandler.hxx>
#include <Standard_math.hxx>
#include <Standard_HandlerStatus.hxx>
#include <Standard_NoSuchObject.hxx>
#include <Standard_OutOfMemory.hxx>
#include <Standard_Character.hxx>
#include <Standard_TooManyUsers.hxx>
#include <Standard_MMgrRoot.hxx>
#include <Standard_ThreadId.hxx>
#include <Standard_ShortReal.hxx>
#include <Standard_JmpBuf.hxx>
#include <Standard_Mutex.hxx>
#include <Standard_Byte.hxx>
#include <Standard_PCharacter.hxx>
#include <Standard_Failure.hxx>
#include <Standard_Macro.hxx>
#include <Standard_TypeDef.hxx>
#include <Standard_DefineHandle.hxx>
#include <Standard_Version.hxx>
#include <Standard_UUID.hxx>
#include <Standard_OId.hxx>
#include <Standard_GUID.hxx>
#include <Standard_Underflow.hxx>
#include <Standard_RangeError.hxx>
#include <Standard_DimensionMismatch.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_Transient.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_NullValue.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_NumericError.hxx>
#include <Standard_Persistent_proto.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_SStream.hxx>
#include <Standard_LicenseError.hxx>
#include <Standard_ctype.hxx>
#include <Standard_OStream.hxx>
#include <Standard_ImmutableObject.hxx>
#include <Standard_KindOfType.hxx>
#include <Standard_ExtCharacter.hxx>
#include <Standard_ExtString.hxx>
#include <Standard_Stream.hxx>
#include <Standard_Overflow.hxx>
#include <Standard_NoMoreObject.hxx>
#include <Standard_LicenseNotFound.hxx>
#include <Standard_WayOfLife.hxx>
#include <Standard_Address.hxx>
#include <Standard_DomainError.hxx>
#include <Standard_Static.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_CString.hxx>
#include <Standard_PExtCharacter.hxx>
#include <Standard_Type.hxx>
#include <Standard_DimensionError.hxx>
#include <Standard_ErrorHandlerCallback.hxx>
#include <Standard_Integer.hxx>
#include <Standard_NegativeValue.hxx>
#include <Standard_DivideByZero.hxx>
#include <Standard_InternalType.hxx>
#include <Standard_Real.hxx>
#include <Handle_Standard_LicenseError.hxx>
#include <Handle_Standard_NoMoreObject.hxx>
#include <Handle_Standard_NullObject.hxx>
#include <Handle_Standard_ConstructionError.hxx>
#include <Handle_Standard_NoSuchObject.hxx>
#include <Handle_Standard_LicenseNotFound.hxx>
#include <Handle_Standard_NegativeValue.hxx>
#include <Handle_Standard_Transient.hxx>
#include <Handle_Standard_DomainError.hxx>
#include <Handle_Standard_NumericError.hxx>
#include <Handle_Standard_DimensionError.hxx>
#include <Handle_Standard_DivideByZero.hxx>
#include <Handle_Standard_Underflow.hxx>
#include <Handle_Standard_Type.hxx>
#include <Handle_Standard_Failure.hxx>
#include <Handle_Standard_AbortiveTransaction.hxx>
#include <Handle_Standard_NotImplemented.hxx>
#include <Handle_Standard_Overflow.hxx>
#include <Handle_Standard_ProgramError.hxx>
#include <Handle_Standard_MultiplyDefined.hxx>
#include <Handle_Standard_RangeError.hxx>
#include <Handle_Standard_OutOfMemory.hxx>
#include <Handle_Standard_Persistent.hxx>
#include <Handle_Standard_TooManyUsers.hxx>
#include <Handle_Standard_ImmutableObject.hxx>
#include <Handle_Standard_DimensionMismatch.hxx>
#include <Handle_Standard_OutOfRange.hxx>
#include <Handle_Standard_TypeMismatch.hxx>
#include <Handle_Standard_NullValue.hxx>
#include <LocOpe_DPrism.hxx>
#include <LocOpe_RevolutionForm.hxx>
#include <LocOpe_Revol.hxx>
#include <LocOpe_GluedShape.hxx>
#include <LocOpe_SequenceOfLin.hxx>
#include <LocOpe_Pipe.hxx>
#include <LocOpe_ProjectedWires.hxx>
#include <LocOpe_CSIntersector.hxx>
#include <LocOpe_SequenceNodeOfSequenceOfPntFace.hxx>
#include <LocOpe_Generator.hxx>
#include <LocOpe_GeneratedShape.hxx>
#include <LocOpe_Operation.hxx>
#include <LocOpe_DataMapNodeOfDataMapOfShapePnt.hxx>
#include <LocOpe_SequenceNodeOfSequenceOfCirc.hxx>
#include <LocOpe_SplitDrafts.hxx>
#include <LocOpe_SequenceOfPntFace.hxx>
#include <LocOpe_SequenceOfCirc.hxx>
#include <LocOpe_DataMapOfShapePnt.hxx>
#include <LocOpe_Builder.hxx>
#include <LocOpe_WiresOnShape.hxx>
#include <LocOpe_BuildWires.hxx>
#include <LocOpe_SplitShape.hxx>
#include <LocOpe_SequenceNodeOfSequenceOfLin.hxx>
#include <LocOpe_FindEdgesInFace.hxx>
#include <LocOpe_HBuilder.hxx>
#include <LocOpe_LinearForm.hxx>
#include <LocOpe_Prism.hxx>
#include <LocOpe_Spliter.hxx>
#include <LocOpe_DataMapIteratorOfDataMapOfShapePnt.hxx>
#include <LocOpe_FindEdges.hxx>
#include <LocOpe_Gluer.hxx>
#include <LocOpe_PntFace.hxx>
#include <LocOpe_BuildShape.hxx>
#include <LocOpe_CurveShapeIntersector.hxx>
#include <Handle_LocOpe_SequenceNodeOfSequenceOfCirc.hxx>
#include <Handle_LocOpe_WiresOnShape.hxx>
#include <Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt.hxx>
#include <Handle_LocOpe_GeneratedShape.hxx>
#include <Handle_LocOpe_GluedShape.hxx>
#include <Handle_LocOpe_HBuilder.hxx>
#include <Handle_LocOpe_SequenceNodeOfSequenceOfPntFace.hxx>
#include <Handle_LocOpe_ProjectedWires.hxx>
#include <Handle_LocOpe_SequenceNodeOfSequenceOfLin.hxx>
#include <TopAbs_State.hxx>
#include <TopAbs_Orientation.hxx>
#include <TopAbs_ShapeEnum.hxx>
%};

%import BRepBuilderAPI.i
%import Standard.i
%import LocOpe.i
%import TopAbs.i
