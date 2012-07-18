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
%rename(DownCast) Handle_StepData_EDescr::DownCast;
%rename(DownCast) Handle_StepData_ReadWriteModule::DownCast;
%rename(DownCast) Handle_StepData_DescrReadWrite::DownCast;
%rename(DownCast) Handle_StepData_StepReaderData::DownCast;
%rename(DownCast) Handle_StepData_NodeOfWriterLib::DownCast;
%rename(DownCast) Handle_StepData_SelectMember::DownCast;
%rename(DownCast) Handle_StepData_SelectReal::DownCast;
%rename(DownCast) Handle_StepData_GeneralModule::DownCast;
%rename(DownCast) Handle_StepData_DefaultGeneral::DownCast;
%rename(DownCast) Handle_StepData_Described::DownCast;
%rename(DownCast) Handle_StepData_ESDescr::DownCast;
%rename(DownCast) Handle_StepData_ECDescr::DownCast;
%rename(DownCast) Handle_StepData_UndefinedEntity::DownCast;
%rename(DownCast) Handle_StepData_PDescr::DownCast;
%rename(DownCast) Handle_StepData_SelectNamed::DownCast;
%rename(DownCast) Handle_StepData_StepModel::DownCast;
%rename(DownCast) Handle_StepData_SelectArrReal::DownCast;
%rename(DownCast) Handle_StepData_Protocol::DownCast;
%rename(DownCast) Handle_StepData_FileProtocol::DownCast;
%rename(DownCast) Handle_StepData_DescrProtocol::DownCast;
%rename(DownCast) Handle_StepData_FreeFormEntity::DownCast;
%rename(DownCast) Handle_StepData_GlobalNodeOfWriterLib::DownCast;
%rename(DownCast) Handle_StepData_HArray1OfField::DownCast;
%rename(DownCast) Handle_StepData_FileRecognizer::DownCast;
%rename(DownCast) Handle_StepData_Simple::DownCast;
%rename(DownCast) Handle_StepData_DescrGeneral::DownCast;
%rename(DownCast) Handle_StepData_SelectInt::DownCast;
%rename(DownCast) Handle_StepData_Plex::DownCast;
%rename(HeaderProtocol) StepData::HeaderProtocol;
%rename(AddHeaderProtocol) StepData::AddHeaderProtocol;
%rename(Init) StepData::Init;
%rename(Protocol) StepData::Protocol;
%rename(SetGlobal) StepData_WriterLib::SetGlobal;
%rename(Reorder) StepData_FreeFormEntity::Reorder;
