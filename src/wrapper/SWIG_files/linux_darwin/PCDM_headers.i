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

// Headers necessary to define wrapped classes.

#include<Handle_PCDM_Document.hxx>
#include<Handle_PCDM_DriverError.hxx>
#include<Handle_PCDM_ReadWriter.hxx>
#include<Handle_PCDM_ReadWriter_1.hxx>
#include<Handle_PCDM_Reader.hxx>
#include<Handle_PCDM_ReferenceIterator.hxx>
#include<Handle_PCDM_RetrievalDriver.hxx>
#include<Handle_PCDM_SequenceNodeOfSequenceOfDocument.hxx>
#include<Handle_PCDM_SequenceNodeOfSequenceOfReference.hxx>
#include<Handle_PCDM_StorageDriver.hxx>
#include<Handle_PCDM_Writer.hxx>
#include<PCDM.hxx>
#include<PCDM_BaseDriverPointer.hxx>
#include<PCDM_DOMHeaderParser.hxx>
#include<PCDM_Document.hxx>
#include<PCDM_DriverError.hxx>
#include<PCDM_ReadWriter.hxx>
#include<PCDM_ReadWriter_1.hxx>
#include<PCDM_Reader.hxx>
#include<PCDM_ReaderStatus.hxx>
#include<PCDM_Reference.hxx>
#include<PCDM_ReferenceIterator.hxx>
#include<PCDM_RetrievalDriver.hxx>
#include<PCDM_SequenceNodeOfSequenceOfDocument.hxx>
#include<PCDM_SequenceNodeOfSequenceOfReference.hxx>
#include<PCDM_SequenceOfDocument.hxx>
#include<PCDM_SequenceOfReference.hxx>
#include<PCDM_StorageDriver.hxx>
#include<PCDM_StoreStatus.hxx>
#include<PCDM_TypeOfFileDriver.hxx>
#include<PCDM_Writer.hxx>

// Additional headers necessary for compilation.

#include<PCDMShape_Document.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Standard_Persistent.hxx>
#include<Handle_CDM_Document.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_CDM_Application.hxx>
#include<Handle_Storage_Schema.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
#include<Handle_CDM_MessageDriver.hxx>
#include<Handle_CDM_MetaData.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_Storage_Data.hxx>
#include<Storage_BaseDriver.hxx>
#include<PCDM.hxx>
#include<Storage_stCONSTclCOM.hxx>
%}
