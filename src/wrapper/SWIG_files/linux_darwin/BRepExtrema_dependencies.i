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
#include <Extrema_Array1OfPOnCurv.hxx>
#include <Extrema_Array1OfPOnCurv2d.hxx>
#include <Extrema_Array1OfPOnSurf.hxx>
#include <Extrema_Array2OfPOnCurv.hxx>
#include <Extrema_Array2OfPOnCurv2d.hxx>
#include <Extrema_Array2OfPOnSurf.hxx>
#include <Extrema_CCFOfECC2dOfExtCC2d.hxx>
#include <Extrema_CCFOfECCOfExtCC.hxx>
#include <Extrema_CCFOfELCC2dOfLocateExtCC2d.hxx>
#include <Extrema_CCFOfELCCOfLocateExtCC.hxx>
#include <Extrema_CCLocFOfLocECC2dOfLocateExtCC2d.hxx>
#include <Extrema_CCLocFOfLocECCOfLocateExtCC.hxx>
#include <Extrema_CCache2dOfExtCC2d.hxx>
#include <Extrema_CCacheOfExtCC.hxx>
#include <Extrema_Curve2dTool.hxx>
#include <Extrema_CurveTool.hxx>
#include <Extrema_ECC2dOfExtCC2d.hxx>
#include <Extrema_ECCOfExtCC.hxx>
#include <Extrema_ELCC2dOfLocateExtCC2d.hxx>
#include <Extrema_ELCCOfLocateExtCC.hxx>
#include <Extrema_ELPCOfLocateExtPC.hxx>
#include <Extrema_ELPCOfLocateExtPC2d.hxx>
#include <Extrema_EPCOfELPCOfLocateExtPC.hxx>
#include <Extrema_EPCOfELPCOfLocateExtPC2d.hxx>
#include <Extrema_EPCOfExtPC.hxx>
#include <Extrema_EPCOfExtPC2d.hxx>
#include <Extrema_ExtAlgo.hxx>
#include <Extrema_ExtCC.hxx>
#include <Extrema_ExtCC2d.hxx>
#include <Extrema_ExtCS.hxx>
#include <Extrema_ExtElC.hxx>
#include <Extrema_ExtElC2d.hxx>
#include <Extrema_ExtElCS.hxx>
#include <Extrema_ExtElSS.hxx>
#include <Extrema_ExtFlag.hxx>
#include <Extrema_ExtPC.hxx>
#include <Extrema_ExtPC2d.hxx>
#include <Extrema_ExtPElC.hxx>
#include <Extrema_ExtPElC2d.hxx>
#include <Extrema_ExtPElS.hxx>
#include <Extrema_ExtPExtS.hxx>
#include <Extrema_ExtPRevS.hxx>
#include <Extrema_ExtPS.hxx>
#include <Extrema_ExtSS.hxx>
#include <Extrema_FuncExtCS.hxx>
#include <Extrema_FuncExtPS.hxx>
#include <Extrema_FuncExtSS.hxx>
#include <Extrema_GenExtCS.hxx>
#include <Extrema_GenExtPS.hxx>
#include <Extrema_GenExtSS.hxx>
#include <Extrema_GenLocateExtCS.hxx>
#include <Extrema_GenLocateExtPS.hxx>
#include <Extrema_GenLocateExtSS.hxx>
#include <Extrema_HArray1OfPOnCurv.hxx>
#include <Extrema_HArray1OfPOnCurv2d.hxx>
#include <Extrema_HArray1OfPOnSurf.hxx>
#include <Extrema_HArray2OfPOnCurv.hxx>
#include <Extrema_HArray2OfPOnCurv2d.hxx>
#include <Extrema_HArray2OfPOnSurf.hxx>
#include <Extrema_HUBTreeOfSphere.hxx>
#include <Extrema_LCCache2dOfLocateExtCC2d.hxx>
#include <Extrema_LCCacheOfLocateExtCC.hxx>
#include <Extrema_LocECC2dOfLocateExtCC2d.hxx>
#include <Extrema_LocECCOfLocateExtCC.hxx>
#include <Extrema_LocEPCOfLocateExtPC.hxx>
#include <Extrema_LocEPCOfLocateExtPC2d.hxx>
#include <Extrema_LocateExtCC.hxx>
#include <Extrema_LocateExtCC2d.hxx>
#include <Extrema_LocateExtPC.hxx>
#include <Extrema_LocateExtPC2d.hxx>
#include <Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx>
#include <Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx>
#include <Extrema_PCFOfEPCOfExtPC.hxx>
#include <Extrema_PCFOfEPCOfExtPC2d.hxx>
#include <Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx>
#include <Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx>
#include <Extrema_POnCurv.hxx>
#include <Extrema_POnCurv2d.hxx>
#include <Extrema_POnSurf.hxx>
#include <Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC.hxx>
#include <Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d.hxx>
#include <Extrema_SeqPCOfPCFOfEPCOfExtPC.hxx>
#include <Extrema_SeqPCOfPCFOfEPCOfExtPC2d.hxx>
#include <Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC.hxx>
#include <Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d.hxx>
#include <Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d.hxx>
#include <Extrema_SeqPOnCOfCCFOfECCOfExtCC.hxx>
#include <Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d.hxx>
#include <Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC.hxx>
#include <Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d.hxx>
#include <Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC.hxx>
#include <Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC.hxx>
#include <Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d.hxx>
#include <Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC.hxx>
#include <Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d.hxx>
#include <Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC.hxx>
#include <Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d.hxx>
#include <Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d.hxx>
#include <Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC.hxx>
#include <Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d.hxx>
#include <Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC.hxx>
#include <Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d.hxx>
#include <Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC.hxx>
#include <Extrema_SequenceNodeOfSequenceOfPOnCurv.hxx>
#include <Extrema_SequenceNodeOfSequenceOfPOnCurv2d.hxx>
#include <Extrema_SequenceNodeOfSequenceOfPOnSurf.hxx>
#include <Extrema_SequenceOfPOnCurv.hxx>
#include <Extrema_SequenceOfPOnCurv2d.hxx>
#include <Extrema_SequenceOfPOnSurf.hxx>
#include <Handle_Extrema_CCache2dOfExtCC2d.hxx>
#include <Handle_Extrema_CCacheOfExtCC.hxx>
#include <Handle_Extrema_HArray1OfPOnCurv.hxx>
#include <Handle_Extrema_HArray1OfPOnCurv2d.hxx>
#include <Handle_Extrema_HArray1OfPOnSurf.hxx>
#include <Handle_Extrema_HArray2OfPOnCurv.hxx>
#include <Handle_Extrema_HArray2OfPOnCurv2d.hxx>
#include <Handle_Extrema_HArray2OfPOnSurf.hxx>
#include <Handle_Extrema_LCCache2dOfLocateExtCC2d.hxx>
#include <Handle_Extrema_LCCacheOfLocateExtCC.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d.hxx>
#include <Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC.hxx>
#include <Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv.hxx>
#include <Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d.hxx>
#include <Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf.hxx>
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
#include <Standard_Assert.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
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
%import Extrema.i
