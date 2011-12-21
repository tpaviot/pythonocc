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
%rename(DownCast) Handle_Message_Printer::DownCast;
%rename(DownCast) Handle_Message_PrinterOStream::DownCast;
%rename(DownCast) Handle_Message_Messenger::DownCast;
%rename(DownCast) Handle_Message_SequenceNodeOfSequenceOfPrinters::DownCast;
%rename(DownCast) Handle_Message_ListNodeOfListOfMsg::DownCast;
%rename(DownCast) Handle_Message_ProgressIndicator::DownCast;
%rename(DownCast) Handle_Message_SequenceNodeOfSequenceOfProgressScale::DownCast;
%rename(DownCast) Handle_Message_Algorithm::DownCast;
%rename(DefaultMessenger) Message::DefaultMessenger;
%rename(FillTime) Message::FillTime;
%rename(Load) Message_MsgFile::Load;
%rename(LoadFile) Message_MsgFile::LoadFile;
%rename(LoadFromEnv) Message_MsgFile::LoadFromEnv;
%rename(AddMsg) Message_MsgFile::AddMsg;
%rename(Msg) Message_MsgFile::Msg;
