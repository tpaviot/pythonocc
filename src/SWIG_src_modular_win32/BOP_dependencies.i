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
#include <Handle_TCollection_AVLBaseNode.hxx>
#include <Handle_TCollection_HAsciiString.hxx>
#include <Handle_TCollection_HExtendedString.hxx>
#include <Handle_TCollection_MapNode.hxx>
#include <Handle_TCollection_SeqNode.hxx>
#include <MMgt_StackManager.hxx>
#include <MMgt_TShared.hxx>
#include <Handle_MMgt_TShared.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_CString.hxx>
#include <Standard_ctype.hxx>
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
#include <Standard_ImmutableObject.hxx>
#include <Standard_Integer.hxx>
#include <Standard_InternalType.hxx>
#include <Standard_IStream.hxx>
#include <Standard_JmpBuf.hxx>
#include <Standard_KindOfType.hxx>
#include <Standard_LicenseError.hxx>
#include <Standard_LicenseNotFound.hxx>
#include <Standard_Macro.hxx>
#include <Standard_math.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_MMgrRoot.hxx>
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
#include <Standard_Persistent.hxx>
#include <Standard_Persistent_proto.hxx>
#include <Standard_PExtCharacter.hxx>
#include <Standard_PrimitiveTypes.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_RangeError.hxx>
#include <Standard_Real.hxx>
#include <Standard_ShortReal.hxx>
#include <Standard_Size.hxx>
#include <Standard_SStream.hxx>
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
#include <Standard_Underflow.hxx>
#include <Standard_UUID.hxx>
#include <Standard_Version.hxx>
#include <Standard_WayOfLife.hxx>
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
#include <BOPTools_Array1OfPave.hxx>
#include <BOPTools_Array2OfIntersectionStatus.hxx>
#include <BOPTools_CArray1OfEEInterference.hxx>
#include <BOPTools_CArray1OfESInterference.hxx>
#include <BOPTools_CArray1OfInterferenceLine.hxx>
#include <BOPTools_CArray1OfPave.hxx>
#include <BOPTools_CArray1OfSSInterference.hxx>
#include <BOPTools_CArray1OfVEInterference.hxx>
#include <BOPTools_CArray1OfVSInterference.hxx>
#include <BOPTools_CArray1OfVVInterference.hxx>
#include <BOPTools_Checker.hxx>
#include <BOPTools_CheckResult.hxx>
#include <BOPTools_CheckStatus.hxx>
#include <BOPTools_CommonBlock.hxx>
#include <BOPTools_CommonBlockAPI.hxx>
#include <BOPTools_CommonBlockPool.hxx>
#include <BOPTools_ComparePave.hxx>
#include <BOPTools_CoupleOfInteger.hxx>
#include <BOPTools_CoupleOfIntegerMapHasher.hxx>
#include <BOPTools_Curve.hxx>
#include <BOPTools_DEInfo.hxx>
#include <BOPTools_DEProcessor.hxx>
#include <BOPTools_DSFiller.hxx>
#include <BOPTools_EEInterference.hxx>
#include <BOPTools_ESInterference.hxx>
#include <BOPTools_HArray2OfIntersectionStatus.hxx>
#include <BOPTools_IDMapOfPaveBlockIMapOfInteger.hxx>
#include <BOPTools_IDMapOfPaveBlockIMapOfPaveBlock.hxx>
#include <BOPTools_IMapOfPaveBlock.hxx>
#include <BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger.hxx>
#include <BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock.hxx>
#include <BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo.hxx>
#include <BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet.hxx>
#include <BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState.hxx>
#include <BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState.hxx>
#include <BOPTools_IndexedDataMapOfIntegerDEInfo.hxx>
#include <BOPTools_IndexedDataMapOfIntegerPaveSet.hxx>
#include <BOPTools_IndexedDataMapOfIntegerState.hxx>
#include <BOPTools_IndexedDataMapOfShapeWithState.hxx>
#include <BOPTools_IndexedMapNodeOfIMapOfPaveBlock.hxx>
#include <BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger.hxx>
#include <BOPTools_IndexedMapOfCoupleOfInteger.hxx>
#include <BOPTools_Interference.hxx>
#include <BOPTools_InterferenceLine.hxx>
#include <BOPTools_InterferencePool.hxx>
#include <BOPTools_IntersectionStatus.hxx>
#include <BOPTools_IteratorOfCoupleOfShape.hxx>
#include <BOPTools_ListIteratorOfListOfCheckResults.hxx>
#include <BOPTools_ListIteratorOfListOfCommonBlock.hxx>
#include <BOPTools_ListIteratorOfListOfCoupleOfInteger.hxx>
#include <BOPTools_ListIteratorOfListOfInterference.hxx>
#include <BOPTools_ListIteratorOfListOfPave.hxx>
#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfShapeEnum.hxx>
#include <BOPTools_ListNodeOfListOfCheckResults.hxx>
#include <BOPTools_ListNodeOfListOfCommonBlock.hxx>
#include <BOPTools_ListNodeOfListOfCoupleOfInteger.hxx>
#include <BOPTools_ListNodeOfListOfInterference.hxx>
#include <BOPTools_ListNodeOfListOfPave.hxx>
#include <BOPTools_ListNodeOfListOfPaveBlock.hxx>
#include <BOPTools_ListNodeOfListOfShapeEnum.hxx>
#include <BOPTools_ListOfCheckResults.hxx>
#include <BOPTools_ListOfCommonBlock.hxx>
#include <BOPTools_ListOfCoupleOfInteger.hxx>
#include <BOPTools_ListOfInterference.hxx>
#include <BOPTools_ListOfPave.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_ListOfShapeEnum.hxx>
#include <BOPTools_Pave.hxx>
#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_PaveBlockIterator.hxx>
#include <BOPTools_PaveBlockMapHasher.hxx>
#include <BOPTools_PaveFiller.hxx>
#include <BOPTools_PavePool.hxx>
#include <BOPTools_PaveSet.hxx>
#include <BOPTools_PCurveMaker.hxx>
#include <BOPTools_PDSFiller.hxx>
#include <BOPTools_PInterferencePool.hxx>
#include <BOPTools_PointBetween.hxx>
#include <BOPTools_PPaveFiller.hxx>
#include <BOPTools_PShapeShapeInterference.hxx>
#include <BOPTools_QuickSortPave.hxx>
#include <BOPTools_RoughShapeIntersector.hxx>
#include <BOPTools_SequenceNodeOfSequenceOfCurves.hxx>
#include <BOPTools_SequenceNodeOfSequenceOfPaveBlock.hxx>
#include <BOPTools_SequenceOfCurves.hxx>
#include <BOPTools_SequenceOfPaveBlock.hxx>
#include <BOPTools_ShapeShapeInterference.hxx>
#include <BOPTools_SolidStateFiller.hxx>
#include <BOPTools_SplitShapesPool.hxx>
#include <BOPTools_SSInterference.hxx>
#include <BOPTools_SSIntersectionAttribute.hxx>
#include <BOPTools_StateFiller.hxx>
#include <BOPTools_Tools.hxx>
#include <BOPTools_Tools2D.hxx>
#include <BOPTools_Tools3D.hxx>
#include <BOPTools_VEInterference.hxx>
#include <BOPTools_VSInterference.hxx>
#include <BOPTools_VVInterference.hxx>
#include <BOPTools_WireStateFiller.hxx>
#include <Handle_BOPTools_HArray2OfIntersectionStatus.hxx>
#include <Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger.hxx>
#include <Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock.hxx>
#include <Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo.hxx>
#include <Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet.hxx>
#include <Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState.hxx>
#include <Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState.hxx>
#include <Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock.hxx>
#include <Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger.hxx>
#include <Handle_BOPTools_ListNodeOfListOfCheckResults.hxx>
#include <Handle_BOPTools_ListNodeOfListOfCommonBlock.hxx>
#include <Handle_BOPTools_ListNodeOfListOfCoupleOfInteger.hxx>
#include <Handle_BOPTools_ListNodeOfListOfInterference.hxx>
#include <Handle_BOPTools_ListNodeOfListOfPave.hxx>
#include <Handle_BOPTools_ListNodeOfListOfPaveBlock.hxx>
#include <Handle_BOPTools_ListNodeOfListOfShapeEnum.hxx>
#include <Handle_BOPTools_SequenceNodeOfSequenceOfCurves.hxx>
#include <Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock.hxx>
#include <TopAbs_Orientation.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TopAbs_State.hxx>
#include <BooleanOperations_AncestorsAndSuccessors.hxx>
#include <BooleanOperations_AncestorsSeqAndSuccessorsSeq.hxx>
#include <BooleanOperations_Explorer.hxx>
#include <BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include <BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger.hxx>
#include <BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include <BooleanOperations_IndexedDataMapOfShapeInteger.hxx>
#include <BooleanOperations_KindOfInterference.hxx>
#include <BooleanOperations_KindOfIntersection.hxx>
#include <BooleanOperations_OnceExplorer.hxx>
#include <BooleanOperations_PShapeAndInterferences.hxx>
#include <BooleanOperations_PShapesDataStructure.hxx>
#include <BooleanOperations_ShapeAndInterferences.hxx>
#include <BooleanOperations_ShapesDataStructure.hxx>
#include <BooleanOperations_StateOfShape.hxx>
#include <Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include <Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger.hxx>
#include <BOPTColStd_CArray1OfInteger.hxx>
#include <BOPTColStd_CArray1OfPnt2d.hxx>
#include <BOPTColStd_CArray1OfShape.hxx>
#include <BOPTColStd_Dump.hxx>
#include <BOPTColStd_Failure.hxx>
#include <BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#include <BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger.hxx>
#include <BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger.hxx>
#include <BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#include <BOPTColStd_IndexedDataMapOfIntegerInteger.hxx>
#include <BOPTColStd_IndexedDataMapOfSWRInteger.hxx>
#include <BOPTColStd_ListIteratorOfListOfListOfShape.hxx>
#include <BOPTColStd_ListNodeOfListOfListOfShape.hxx>
#include <BOPTColStd_ListOfListOfShape.hxx>
#include <BOPTColStd_ShapeWithRank.hxx>
#include <BOPTColStd_ShapeWithRankHasher.hxx>
#include <Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#include <Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger.hxx>
#include <Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger.hxx>
#include <Handle_BOPTColStd_ListNodeOfListOfListOfShape.hxx>
%};

%import TCollection.i
%import MMgt.i
%import Standard.i
%import BOPTools.i
%import TopAbs.i
%import BooleanOperations.i
%import BOPTColStd.i
