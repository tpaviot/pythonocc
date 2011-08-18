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
#include <BOP_Area2dBuilder.hxx>
#include <BOP_Area3dBuilder.hxx>
#include <BOP_AreaBuilder.hxx>
#include <BOP_ArgumentAnalyzer.hxx>
#include <BOP_BlockBuilder.hxx>
#include <BOP_BlockIterator.hxx>
#include <BOP_Builder.hxx>
#include <BOP_BuilderTools.hxx>
#include <BOP_CheckResult.hxx>
#include <BOP_CheckStatus.hxx>
#include <BOP_CompositeClassifier.hxx>
#include <BOP_ConnexityBlock.hxx>
#include <BOP_CorrectTolerances.hxx>
#include <BOP_Draw.hxx>
#include <BOP_EdgeInfo.hxx>
#include <BOP_EmptyBuilder.hxx>
#include <BOP_FaceAreaBuilder.hxx>
#include <BOP_FaceBuilder.hxx>
#include <BOP_FaceInfo.hxx>
#include <BOP_HistoryCollector.hxx>
#include <BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo.hxx>
#include <BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier.hxx>
#include <BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo.hxx>
#include <BOP_IndexedDataMapOfEdgeListFaceInfo.hxx>
#include <BOP_IndexedDataMapOfSolidClassifier.hxx>
#include <BOP_IndexedDataMapOfVertexListEdgeInfo.hxx>
#include <BOP_ListIteratorOfListOfCheckResult.hxx>
#include <BOP_ListIteratorOfListOfConnexityBlock.hxx>
#include <BOP_ListIteratorOfListOfEdgeInfo.hxx>
#include <BOP_ListIteratorOfListOfFaceInfo.hxx>
#include <BOP_ListIteratorOfListOfListOfLoop.hxx>
#include <BOP_ListIteratorOfListOfLoop.hxx>
#include <BOP_ListNodeOfListOfCheckResult.hxx>
#include <BOP_ListNodeOfListOfConnexityBlock.hxx>
#include <BOP_ListNodeOfListOfEdgeInfo.hxx>
#include <BOP_ListNodeOfListOfFaceInfo.hxx>
#include <BOP_ListNodeOfListOfListOfLoop.hxx>
#include <BOP_ListNodeOfListOfLoop.hxx>
#include <BOP_ListOfCheckResult.hxx>
#include <BOP_ListOfConnexityBlock.hxx>
#include <BOP_ListOfEdgeInfo.hxx>
#include <BOP_ListOfFaceInfo.hxx>
#include <BOP_ListOfListOfLoop.hxx>
#include <BOP_ListOfLoop.hxx>
#include <BOP_Loop.hxx>
#include <BOP_LoopClassifier.hxx>
#include <BOP_LoopEnum.hxx>
#include <BOP_LoopSet.hxx>
#include <BOP_Operation.hxx>
#include <BOP_PBuilder.hxx>
#include <BOP_PShellFaceSet.hxx>
#include <BOP_PSoClassif.hxx>
#include <BOP_PWireEdgeSet.hxx>
#include <BOP_Refiner.hxx>
#include <BOP_SDFWESFiller.hxx>
#include <BOP_SFSCorrector.hxx>
#include <BOP_Section.hxx>
#include <BOP_SectionHistoryCollector.hxx>
#include <BOP_SeqOfSeqOfShape.hxx>
#include <BOP_SequenceNodeOfSeqOfSeqOfShape.hxx>
#include <BOP_ShapeSet.hxx>
#include <BOP_ShellFaceClassifier.hxx>
#include <BOP_ShellFaceSet.hxx>
#include <BOP_ShellShell.hxx>
#include <BOP_ShellSolid.hxx>
#include <BOP_ShellSolidHistoryCollector.hxx>
#include <BOP_ShellSplitter.hxx>
#include <BOP_SolidAreaBuilder.hxx>
#include <BOP_SolidBuilder.hxx>
#include <BOP_SolidClassifier.hxx>
#include <BOP_SolidSolid.hxx>
#include <BOP_SolidSolidHistoryCollector.hxx>
#include <BOP_WESCorrector.hxx>
#include <BOP_WireEdgeClassifier.hxx>
#include <BOP_WireEdgeSet.hxx>
#include <BOP_WireShape.hxx>
#include <BOP_WireShell.hxx>
#include <BOP_WireSolid.hxx>
#include <BOP_WireSolidHistoryCollector.hxx>
#include <BOP_WireSplitter.hxx>
#include <BOP_WireWire.hxx>
#include <BRepBuilderAPI_Collect.hxx>
#include <BRepBuilderAPI_Command.hxx>
#include <BRepBuilderAPI_Copy.hxx>
#include <BRepBuilderAPI_EdgeError.hxx>
#include <BRepBuilderAPI_FaceError.hxx>
#include <BRepBuilderAPI_FindPlane.hxx>
#include <BRepBuilderAPI_GTransform.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepBuilderAPI_MakeEdge2d.hxx>
#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRepBuilderAPI_MakePolygon.hxx>
#include <BRepBuilderAPI_MakeShape.hxx>
#include <BRepBuilderAPI_MakeShell.hxx>
#include <BRepBuilderAPI_MakeSolid.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepBuilderAPI_ModifyShape.hxx>
#include <BRepBuilderAPI_NurbsConvert.hxx>
#include <BRepBuilderAPI_PipeError.hxx>
#include <BRepBuilderAPI_Sewing.hxx>
#include <BRepBuilderAPI_ShapeModification.hxx>
#include <BRepBuilderAPI_ShellError.hxx>
#include <BRepBuilderAPI_Transform.hxx>
#include <BRepBuilderAPI_TransitionMode.hxx>
#include <BRepBuilderAPI_WireError.hxx>
#include <Handle_BOP_HistoryCollector.hxx>
#include <Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo.hxx>
#include <Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier.hxx>
#include <Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo.hxx>
#include <Handle_BOP_ListNodeOfListOfCheckResult.hxx>
#include <Handle_BOP_ListNodeOfListOfConnexityBlock.hxx>
#include <Handle_BOP_ListNodeOfListOfEdgeInfo.hxx>
#include <Handle_BOP_ListNodeOfListOfFaceInfo.hxx>
#include <Handle_BOP_ListNodeOfListOfListOfLoop.hxx>
#include <Handle_BOP_ListNodeOfListOfLoop.hxx>
#include <Handle_BOP_Loop.hxx>
#include <Handle_BOP_SectionHistoryCollector.hxx>
#include <Handle_BOP_SequenceNodeOfSeqOfSeqOfShape.hxx>
#include <Handle_BOP_ShellSolidHistoryCollector.hxx>
#include <Handle_BOP_SolidSolidHistoryCollector.hxx>
#include <Handle_BOP_WireSolidHistoryCollector.hxx>
#include <Handle_BRepBuilderAPI_Sewing.hxx>
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
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_CString.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
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
%};

%import BRepBuilderAPI.i
%import BOP.i
%import Standard.i
