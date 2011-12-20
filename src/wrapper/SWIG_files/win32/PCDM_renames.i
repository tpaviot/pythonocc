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
%rename(DownCast) Handle_PCDM_Document::DownCast;
%rename(DownCast) Handle_PCDM_SequenceNodeOfSequenceOfDocument::DownCast;
%rename(DownCast) Handle_PCDM_ReadWriter::DownCast;
%rename(DownCast) Handle_PCDM_ReadWriter_1::DownCast;
%rename(DownCast) Handle_PCDM_Reader::DownCast;
%rename(DownCast) Handle_PCDM_RetrievalDriver::DownCast;
%rename(DownCast) Handle_PCDM_Writer::DownCast;
%rename(DownCast) Handle_PCDM_SequenceNodeOfSequenceOfReference::DownCast;
%rename(DownCast) Handle_PCDM_StorageDriver::DownCast;
%rename(DownCast) Handle_PCDM_DriverError::DownCast;
%rename(DownCast) Handle_PCDM_ReferenceIterator::DownCast;
%rename(FindStorageDriver) PCDM::FindStorageDriver;
%rename(Schema) PCDM::Schema;
%rename(RaiseIfUnknownTypes) PCDM_RetrievalDriver::RaiseIfUnknownTypes;
%rename(DocumentVersion) PCDM_RetrievalDriver::DocumentVersion;
%rename(ReferenceCounter) PCDM_RetrievalDriver::ReferenceCounter;
%rename(Raise) PCDM_DriverError::Raise;
%rename(NewInstance) PCDM_DriverError::NewInstance;
%rename(Open) PCDM_ReadWriter::Open;
%rename(Reader) PCDM_ReadWriter::Reader;
%rename(Writer) PCDM_ReadWriter::Writer;
%rename(WriteFileFormat) PCDM_ReadWriter::WriteFileFormat;
%rename(FileFormat) PCDM_ReadWriter::FileFormat;
