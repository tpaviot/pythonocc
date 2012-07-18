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
%rename(DownCast) Handle_XSControl_TransferWriter::DownCast;
%rename(DownCast) Handle_XSControl_SignTransferStatus::DownCast;
%rename(DownCast) Handle_XSControl_Controller::DownCast;
%rename(DownCast) Handle_XSControl_SelectForTransfer::DownCast;
%rename(DownCast) Handle_XSControl_TransferReader::DownCast;
%rename(DownCast) Handle_XSControl_Vars::DownCast;
%rename(DownCast) Handle_XSControl_WorkSession::DownCast;
%rename(DownCast) Handle_XSControl_ConnectedShapes::DownCast;
%rename(Session) XSControl::Session;
%rename(Vars) XSControl::Vars;
%rename(AdjacentEntities) XSControl_ConnectedShapes::AdjacentEntities;
%rename(Init) XSControl_FuncShape::Init;
%rename(MoreShapes) XSControl_FuncShape::MoreShapes;
%rename(FileAndVar) XSControl_FuncShape::FileAndVar;
%rename(Recorded) XSControl_Controller::Recorded;
%rename(ListRecorded) XSControl_Controller::ListRecorded;
%rename(PrintStatsProcess) XSControl_TransferWriter::PrintStatsProcess;
%rename(Init) XSControl_Functions::Init;
%rename(PrintStatsProcess) XSControl_TransferReader::PrintStatsProcess;
%rename(PrintStatsOnList) XSControl_TransferReader::PrintStatsOnList;
