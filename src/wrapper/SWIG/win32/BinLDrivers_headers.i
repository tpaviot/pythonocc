/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<BinLDrivers.hxx>
#include<BinLDrivers_DocumentRetrievalDriver.hxx>
#include<BinLDrivers_DocumentSection.hxx>
#include<BinLDrivers_DocumentStorageDriver.hxx>
#include<BinLDrivers_Marker.hxx>
#include<BinLDrivers_VectorOfDocumentSection.hxx>
#include<Handle_BinLDrivers_DocumentRetrievalDriver.hxx>
#include<Handle_BinLDrivers_DocumentStorageDriver.hxx>

// Additional headers necessary for compilation.

#include<Storage.hxx>
#include<Storage_ArrayOfCallBack.hxx>
#include<Storage_ArrayOfSchema.hxx>
#include<Storage_BaseDriver.hxx>
#include<Storage_BucketOfPersistent.hxx>
#include<Storage_CallBack.hxx>
#include<Storage_Container.hxx>
#include<Storage_Data.hxx>
#include<Storage_DataMapIteratorOfMapOfCallBack.hxx>
#include<Storage_DataMapIteratorOfMapOfPers.hxx>
#include<Storage_DataMapNodeOfMapOfCallBack.hxx>
#include<Storage_DataMapNodeOfMapOfPers.hxx>
#include<Storage_DefaultCallBack.hxx>
#include<Storage_Error.hxx>
#include<Storage_HArrayOfCallBack.hxx>
#include<Storage_HArrayOfSchema.hxx>
#include<Storage_HPArray.hxx>
#include<Storage_HSeqOfCallBack.hxx>
#include<Storage_HSeqOfPersistent.hxx>
#include<Storage_HSeqOfRoot.hxx>
#include<Storage_HeaderData.hxx>
#include<Storage_IndexedDataMapNodeOfPType.hxx>
#include<Storage_InternalData.hxx>
#include<Storage_Macros.hxx>
#include<Storage_MapIteratorOfMapOfAsciiString.hxx>
#include<Storage_MapOfAsciiString.hxx>
#include<Storage_MapOfCallBack.hxx>
#include<Storage_MapOfPers.hxx>
#include<Storage_MapPSDHasher.hxx>
#include<Storage_OpenMode.hxx>
#include<Storage_PArray.hxx>
#include<Storage_PType.hxx>
#include<Storage_Position.hxx>
#include<Storage_Root.hxx>
#include<Storage_RootData.hxx>
#include<Storage_Schema.hxx>
#include<Storage_SeqOfCallBack.hxx>
#include<Storage_SeqOfPersistent.hxx>
#include<Storage_SeqOfRoot.hxx>
#include<Storage_SequenceNodeOfSeqOfCallBack.hxx>
#include<Storage_SequenceNodeOfSeqOfPersistent.hxx>
#include<Storage_SequenceNodeOfSeqOfRoot.hxx>
#include<Storage_SolveMode.hxx>
#include<Storage_StdMapNodeOfMapOfAsciiString.hxx>
#include<Storage_StreamExtCharParityError.hxx>
#include<Storage_StreamFormatError.hxx>
#include<Storage_StreamModeError.hxx>
#include<Storage_StreamReadError.hxx>
#include<Storage_StreamTypeMismatchError.hxx>
#include<Storage_StreamUnknownTypeError.hxx>
#include<Storage_StreamWriteError.hxx>
#include<Storage_TypeData.hxx>
#include<Storage_TypedCallBack.hxx>
#include<Storage_stCONSTclCOM.hxx>
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
#include<TCollection_ExtendedString.hxx>
#include<Handle_CDM_Document.hxx>
#include<Handle_BinMDF_ADriverTable.hxx>
#include<Handle_CDM_MessageDriver.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_PCDM_Document.hxx>
#include<Handle_CDM_Application.hxx>
#include<BinLDrivers.hxx>
#include<Standard_GUID.hxx>
%}
