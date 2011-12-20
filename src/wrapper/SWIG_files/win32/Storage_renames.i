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
%rename(DownCast) Handle_Storage_StreamReadError::DownCast;
%rename(DownCast) Handle_Storage_StreamExtCharParityError::DownCast;
%rename(DownCast) Handle_Storage_StreamTypeMismatchError::DownCast;
%rename(DownCast) Handle_Storage_IndexedDataMapNodeOfPType::DownCast;
%rename(DownCast) Handle_Storage_Data::DownCast;
%rename(DownCast) Handle_Storage_HArrayOfCallBack::DownCast;
%rename(DownCast) Handle_Storage_HPArray::DownCast;
%rename(DownCast) Handle_Storage_StreamWriteError::DownCast;
%rename(DownCast) Handle_Storage_DataMapNodeOfMapOfPers::DownCast;
%rename(DownCast) Handle_Storage_SequenceNodeOfSeqOfPersistent::DownCast;
%rename(DownCast) Handle_Storage_StreamModeError::DownCast;
%rename(DownCast) Handle_Storage_HSeqOfPersistent::DownCast;
%rename(DownCast) Handle_Storage_StreamFormatError::DownCast;
%rename(DownCast) Handle_Storage_TypedCallBack::DownCast;
%rename(DownCast) Handle_Storage_SequenceNodeOfSeqOfCallBack::DownCast;
%rename(DownCast) Handle_Storage_Root::DownCast;
%rename(DownCast) Handle_Storage_HSeqOfRoot::DownCast;
%rename(DownCast) Handle_Storage_HSeqOfCallBack::DownCast;
%rename(DownCast) Handle_Storage_Schema::DownCast;
%rename(DownCast) Handle_Storage_CallBack::DownCast;
%rename(DownCast) Handle_Storage_DefaultCallBack::DownCast;
%rename(DownCast) Handle_Storage_HArrayOfSchema::DownCast;
%rename(DownCast) Handle_Storage_DataMapNodeOfMapOfCallBack::DownCast;
%rename(DownCast) Handle_Storage_RootData::DownCast;
%rename(DownCast) Handle_Storage_SequenceNodeOfSeqOfRoot::DownCast;
%rename(DownCast) Handle_Storage_TypeData::DownCast;
%rename(DownCast) Handle_Storage_StreamUnknownTypeError::DownCast;
%rename(DownCast) Handle_Storage_HeaderData::DownCast;
%rename(DownCast) Handle_Storage_InternalData::DownCast;
%rename(Version) Storage::Version;
%rename(Raise) Storage_StreamReadError::Raise;
%rename(NewInstance) Storage_StreamReadError::NewInstance;
%rename(Raise) Storage_StreamExtCharParityError::Raise;
%rename(NewInstance) Storage_StreamExtCharParityError::NewInstance;
%rename(ICreationDate) Storage_Schema::ICreationDate;
%rename(CheckTypeMigration) Storage_Schema::CheckTypeMigration;
%rename(Raise) Storage_StreamTypeMismatchError::Raise;
%rename(NewInstance) Storage_StreamTypeMismatchError::NewInstance;
%rename(HashCode) Storage_MapPSDHasher::HashCode;
%rename(IsEqual) Storage_MapPSDHasher::IsEqual;
%rename(Raise) Storage_StreamUnknownTypeError::Raise;
%rename(NewInstance) Storage_StreamUnknownTypeError::NewInstance;
%rename(Raise) Storage_StreamModeError::Raise;
%rename(NewInstance) Storage_StreamModeError::NewInstance;
%rename(Raise) Storage_StreamWriteError::Raise;
%rename(NewInstance) Storage_StreamWriteError::NewInstance;
%rename(Raise) Storage_StreamFormatError::Raise;
%rename(NewInstance) Storage_StreamFormatError::NewInstance;
