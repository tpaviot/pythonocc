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
%rename(downcast) Handle_Message_Printer::DownCast;
%rename(downcast) Handle_Message_PrinterOStream::DownCast;
%rename(downcast) Handle_Message_Messenger::DownCast;
%rename(downcast) Handle_Message_SequenceNodeOfSequenceOfPrinters::DownCast;
%rename(downcast) Handle_Message_ListNodeOfListOfMsg::DownCast;
%rename(downcast) Handle_Message_ProgressIndicator::DownCast;
%rename(downcast) Handle_Message_SequenceNodeOfSequenceOfProgressScale::DownCast;
%rename(downcast) Handle_Message_Algorithm::DownCast;
%rename(defaultmessenger) Message::DefaultMessenger;
%rename(filltime) Message::FillTime;
%rename(load) Message_MsgFile::Load;
%rename(loadfile) Message_MsgFile::LoadFile;
%rename(loadfromenv) Message_MsgFile::LoadFromEnv;
%rename(addmsg) Message_MsgFile::AddMsg;
%rename(msg) Message_MsgFile::Msg;
