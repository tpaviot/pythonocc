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

$Revision
$Date
$Author
$HeaderURL

*/
%rename(downcast) Handle_XSControl_TransferWriter::DownCast;
%rename(downcast) Handle_XSControl_SignTransferStatus::DownCast;
%rename(downcast) Handle_XSControl_TransferReader::DownCast;
%rename(downcast) Handle_XSControl_Vars::DownCast;
%rename(downcast) Handle_XSControl_SelectForTransfer::DownCast;
%rename(downcast) Handle_XSControl_WorkSession::DownCast;
%rename(downcast) Handle_XSControl_Controller::DownCast;
%rename(downcast) Handle_XSControl_ConnectedShapes::DownCast;
%rename(init) XSControl_Functions::Init;
%rename(adjacententities) XSControl_ConnectedShapes::AdjacentEntities;
%rename(init) XSControl_FuncShape::Init;
%rename(moreshapes) XSControl_FuncShape::MoreShapes;
%rename(fileandvar) XSControl_FuncShape::FileAndVar;
%rename(recorded) XSControl_Controller::Recorded;
%rename(listrecorded) XSControl_Controller::ListRecorded;
%rename(printstatsprocess) XSControl_TransferWriter::PrintStatsProcess;
%rename(printstatsprocess) XSControl_TransferReader::PrintStatsProcess;
%rename(printstatsonlist) XSControl_TransferReader::PrintStatsOnList;
%rename(session) XSControl::Session;
%rename(vars) XSControl::Vars;
