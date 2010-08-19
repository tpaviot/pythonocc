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
%rename(downcast) Handle_Storage_StreamReadError::DownCast;
%rename(downcast) Handle_Storage_StreamTypeMismatchError::DownCast;
%rename(downcast) Handle_Storage_InternalData::DownCast;
%rename(downcast) Handle_Storage_SequenceNodeOfSeqOfCallBack::DownCast;
%rename(downcast) Handle_Storage_IndexedDataMapNodeOfPType::DownCast;
%rename(downcast) Handle_Storage_DataMapNodeOfMapOfPers::DownCast;
%rename(downcast) Handle_Storage_SequenceNodeOfSeqOfPersistent::DownCast;
%rename(downcast) Handle_Storage_HSeqOfPersistent::DownCast;
%rename(downcast) Handle_Storage_HPArray::DownCast;
%rename(downcast) Handle_Storage_StreamFormatError::DownCast;
%rename(downcast) Handle_Storage_TypedCallBack::DownCast;
%rename(downcast) Handle_Storage_HSeqOfCallBack::DownCast;
%rename(downcast) Handle_Storage_Root::DownCast;
%rename(downcast) Handle_Storage_DataMapNodeOfMapOfCallBack::DownCast;
%rename(downcast) Handle_Storage_StreamWriteError::DownCast;
%rename(downcast) Handle_Storage_Data::DownCast;
%rename(downcast) Handle_Storage_HArrayOfSchema::DownCast;
%rename(downcast) Handle_Storage_TypeData::DownCast;
%rename(downcast) Handle_Storage_Schema::DownCast;
%rename(downcast) Handle_Storage_RootData::DownCast;
%rename(downcast) Handle_Storage_StreamExtCharParityError::DownCast;
%rename(downcast) Handle_Storage_SequenceNodeOfSeqOfRoot::DownCast;
%rename(downcast) Handle_Storage_HArrayOfCallBack::DownCast;
%rename(downcast) Handle_Storage_StdMapNodeOfMapOfAsciiString::DownCast;
%rename(downcast) Handle_Storage_StreamModeError::DownCast;
%rename(downcast) Handle_Storage_HeaderData::DownCast;
%rename(downcast) Handle_Storage_CallBack::DownCast;
%rename(downcast) Handle_Storage_DefaultCallBack::DownCast;
%rename(downcast) Handle_Storage_StreamUnknownTypeError::DownCast;
%rename(downcast) Handle_Storage_HSeqOfRoot::DownCast;
%rename(version) Storage::Version;
%rename(raise) Storage_StreamReadError::Raise;
%rename(raise) Storage_StreamReadError::Raise;
%rename(newinstance) Storage_StreamReadError::NewInstance;
%rename(raise) Storage_StreamExtCharParityError::Raise;
%rename(raise) Storage_StreamExtCharParityError::Raise;
%rename(newinstance) Storage_StreamExtCharParityError::NewInstance;
%rename(hashcode) Storage_MapPSDHasher::HashCode;
%rename(isequal) Storage_MapPSDHasher::IsEqual;
%rename(icreationdate) Storage_Schema::ICreationDate;
%rename(raise) Storage_StreamUnknownTypeError::Raise;
%rename(raise) Storage_StreamUnknownTypeError::Raise;
%rename(newinstance) Storage_StreamUnknownTypeError::NewInstance;
%rename(raise) Storage_StreamModeError::Raise;
%rename(raise) Storage_StreamModeError::Raise;
%rename(newinstance) Storage_StreamModeError::NewInstance;
%rename(raise) Storage_StreamWriteError::Raise;
%rename(raise) Storage_StreamWriteError::Raise;
%rename(newinstance) Storage_StreamWriteError::NewInstance;
%rename(raise) Storage_StreamFormatError::Raise;
%rename(raise) Storage_StreamFormatError::Raise;
%rename(newinstance) Storage_StreamFormatError::NewInstance;
%rename(raise) Storage_StreamTypeMismatchError::Raise;
%rename(raise) Storage_StreamTypeMismatchError::Raise;
%rename(newinstance) Storage_StreamTypeMismatchError::NewInstance;
