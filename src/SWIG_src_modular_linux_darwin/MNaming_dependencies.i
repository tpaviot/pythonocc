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
#include <MDF_ReferenceRetrievalDriver.hxx>
#include <MDF_ARDriverTable.hxx>
#include <MDF_DriverListOfARDriverTable.hxx>
#include <MDF_TypeARDriverMap.hxx>
#include <MDF_DataMapIteratorOfTypeASDriverMap.hxx>
#include <MDF_SequenceNodeOfASDriverSequence.hxx>
#include <MDF_ASDriver.hxx>
#include <MDF_TypeASDriverMap.hxx>
#include <MDF_ARDriver.hxx>
#include <MDF_TagSourceRetrievalDriver.hxx>
#include <MDF_ListNodeOfDriverListOfARDriverTable.hxx>
#include <MDF_Tool.hxx>
#include <MDF_ASDriverSequence.hxx>
#include <MDF_TypeDriverListMapOfASDriverTable.hxx>
#include <MDF_ASDriverHSequence.hxx>
#include <MDF_DataMapNodeOfTypeARDriverMap.hxx>
#include <MDF_ASDriverTable.hxx>
#include <MDF_TagSourceStorageDriver.hxx>
#include <MDF_DataMapIteratorOfTypeARDriverMap.hxx>
#include <MDF_ListNodeOfDriverListOfASDriverTable.hxx>
#include <MDF_SRelocationTable.hxx>
#include <MDF_ListIteratorOfDriverListOfASDriverTable.hxx>
#include <MDF_TypeDriverListMapOfARDriverTable.hxx>
#include <MDF_DataMapNodeOfTypeASDriverMap.hxx>
#include <MDF_ReferenceStorageDriver.hxx>
#include <MDF_DataMapIteratorOfTypeDriverListMapOfARDriverTable.hxx>
#include <MDF_ARDriverHSequence.hxx>
#include <MDF_DriverListOfASDriverTable.hxx>
#include <MDF_DataMapIteratorOfTypeDriverListMapOfASDriverTable.hxx>
#include <MDF_SequenceNodeOfARDriverSequence.hxx>
#include <MDF_ARDriverSequence.hxx>
#include <MDF_RRelocationTable.hxx>
#include <MDF_ListIteratorOfDriverListOfARDriverTable.hxx>
#include <MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable.hxx>
#include <MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable.hxx>
#include <Handle_MDF_ASDriver.hxx>
#include <Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable.hxx>
#include <Handle_MDF_SequenceNodeOfASDriverSequence.hxx>
#include <Handle_MDF_TagSourceStorageDriver.hxx>
#include <Handle_MDF_RRelocationTable.hxx>
#include <Handle_MDF_SRelocationTable.hxx>
#include <Handle_MDF_ARDriver.hxx>
#include <Handle_MDF_ASDriverHSequence.hxx>
#include <Handle_MDF_TagSourceRetrievalDriver.hxx>
#include <Handle_MDF_DataMapNodeOfTypeARDriverMap.hxx>
#include <Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable.hxx>
#include <Handle_MDF_ReferenceStorageDriver.hxx>
#include <Handle_MDF_ARDriverTable.hxx>
#include <Handle_MDF_DataMapNodeOfTypeASDriverMap.hxx>
#include <Handle_MDF_ASDriverTable.hxx>
#include <Handle_MDF_ListNodeOfDriverListOfASDriverTable.hxx>
#include <Handle_MDF_ReferenceRetrievalDriver.hxx>
#include <Handle_MDF_SequenceNodeOfARDriverSequence.hxx>
#include <Handle_MDF_ARDriverHSequence.hxx>
#include <Handle_MDF_ListNodeOfDriverListOfARDriverTable.hxx>
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
%};

%import MDF.i
%import Standard.i
