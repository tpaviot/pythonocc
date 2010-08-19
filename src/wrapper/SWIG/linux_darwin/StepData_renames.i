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
%rename(downcast) Handle_StepData_EDescr::DownCast;
%rename(downcast) Handle_StepData_Described::DownCast;
%rename(downcast) Handle_StepData_Plex::DownCast;
%rename(downcast) Handle_StepData_ReadWriteModule::DownCast;
%rename(downcast) Handle_StepData_DescrReadWrite::DownCast;
%rename(downcast) Handle_StepData_ESDescr::DownCast;
%rename(downcast) Handle_StepData_SelectMember::DownCast;
%rename(downcast) Handle_StepData_SelectReal::DownCast;
%rename(downcast) Handle_StepData_ECDescr::DownCast;
%rename(downcast) Handle_StepData_UndefinedEntity::DownCast;
%rename(downcast) Handle_StepData_SelectInt::DownCast;
%rename(downcast) Handle_StepData_PDescr::DownCast;
%rename(downcast) Handle_StepData_Protocol::DownCast;
%rename(downcast) Handle_StepData_FileProtocol::DownCast;
%rename(downcast) Handle_StepData_StepModel::DownCast;
%rename(downcast) Handle_StepData_StepReaderData::DownCast;
%rename(downcast) Handle_StepData_DescrProtocol::DownCast;
%rename(downcast) Handle_StepData_GlobalNodeOfWriterLib::DownCast;
%rename(downcast) Handle_StepData_SelectNamed::DownCast;
%rename(downcast) Handle_StepData_SelectArrReal::DownCast;
%rename(downcast) Handle_StepData_HArray1OfField::DownCast;
%rename(downcast) Handle_StepData_FileRecognizer::DownCast;
%rename(downcast) Handle_StepData_NodeOfWriterLib::DownCast;
%rename(downcast) Handle_StepData_FreeFormEntity::DownCast;
%rename(downcast) Handle_StepData_Simple::DownCast;
%rename(downcast) Handle_StepData_GeneralModule::DownCast;
%rename(downcast) Handle_StepData_DescrGeneral::DownCast;
%rename(downcast) Handle_StepData_DefaultGeneral::DownCast;
%rename(headerprotocol) StepData::HeaderProtocol;
%rename(addheaderprotocol) StepData::AddHeaderProtocol;
%rename(init) StepData::Init;
%rename(protocol) StepData::Protocol;
%rename(setglobal) StepData_WriterLib::SetGlobal;
%rename(reorder) StepData_FreeFormEntity::Reorder;
