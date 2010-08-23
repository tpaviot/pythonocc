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
%rename(downcast) Handle_PCDM_SequenceNodeOfSequenceOfReference::DownCast;
%rename(downcast) Handle_PCDM_Document::DownCast;
%rename(downcast) Handle_PCDM_SequenceNodeOfSequenceOfDocument::DownCast;
%rename(downcast) Handle_PCDM_ReadWriter::DownCast;
%rename(downcast) Handle_PCDM_ReadWriter_1::DownCast;
%rename(downcast) Handle_PCDM_Reader::DownCast;
%rename(downcast) Handle_PCDM_RetrievalDriver::DownCast;
%rename(downcast) Handle_PCDM_Writer::DownCast;
%rename(downcast) Handle_PCDM_ReferenceIterator::DownCast;
%rename(downcast) Handle_PCDM_StorageDriver::DownCast;
%rename(downcast) Handle_PCDM_DriverError::DownCast;
%rename(raiseifunknowntypes) PCDM_RetrievalDriver::RaiseIfUnknownTypes;
%rename(documentversion) PCDM_RetrievalDriver::DocumentVersion;
%rename(referencecounter) PCDM_RetrievalDriver::ReferenceCounter;
%rename(findstoragedriver) PCDM::FindStorageDriver;
%rename(schema) PCDM::Schema;
%rename(raise) PCDM_DriverError::Raise;
%rename(newinstance) PCDM_DriverError::NewInstance;
%rename(open) PCDM_ReadWriter::Open;
%rename(reader) PCDM_ReadWriter::Reader;
%rename(writer) PCDM_ReadWriter::Writer;
%rename(writefileformat) PCDM_ReadWriter::WriteFileFormat;
%rename(fileformat) PCDM_ReadWriter::FileFormat;
