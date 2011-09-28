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
%rename(DownCast) Handle_IGESData_ReadWriteModule::DownCast;
%rename(DownCast) Handle_IGESData_GeneralModule::DownCast;
%rename(DownCast) Handle_IGESData_ToolLocation::DownCast;
%rename(DownCast) Handle_IGESData_IGESEntity::DownCast;
%rename(DownCast) Handle_IGESData_UndefinedEntity::DownCast;
%rename(DownCast) Handle_IGESData_FreeFormatEntity::DownCast;
%rename(DownCast) Handle_IGESData_Protocol::DownCast;
%rename(DownCast) Handle_IGESData_NodeOfSpecificLib::DownCast;
%rename(DownCast) Handle_IGESData_SpecificModule::DownCast;
%rename(DownCast) Handle_IGESData_DefaultSpecific::DownCast;
%rename(DownCast) Handle_IGESData_LevelListEntity::DownCast;
%rename(DownCast) Handle_IGESData_NameEntity::DownCast;
%rename(DownCast) Handle_IGESData_ColorEntity::DownCast;
%rename(DownCast) Handle_IGESData_LineFontEntity::DownCast;
%rename(DownCast) Handle_IGESData_TransfEntity::DownCast;
%rename(DownCast) Handle_IGESData_FileProtocol::DownCast;
%rename(DownCast) Handle_IGESData_GlobalNodeOfWriterLib::DownCast;
%rename(DownCast) Handle_IGESData_HArray1OfIGESEntity::DownCast;
%rename(DownCast) Handle_IGESData_ViewKindEntity::DownCast;
%rename(DownCast) Handle_IGESData_GlobalNodeOfSpecificLib::DownCast;
%rename(DownCast) Handle_IGESData_FileRecognizer::DownCast;
%rename(DownCast) Handle_IGESData_DefaultGeneral::DownCast;
%rename(DownCast) Handle_IGESData_SingleParentEntity::DownCast;
%rename(DownCast) Handle_IGESData_NodeOfWriterLib::DownCast;
%rename(DownCast) Handle_IGESData_IGESModel::DownCast;
%rename(DownCast) Handle_IGESData_LabelDisplayEntity::DownCast;
%rename(DownCast) Handle_IGESData_IGESReaderData::DownCast;
%rename(ConvertLocation) IGESData_ToolLocation::ConvertLocation;
%rename(Init) IGESData::Init;
%rename(Protocol) IGESData::Protocol;
%rename(SetGlobal) IGESData_WriterLib::SetGlobal;
%rename(SetGlobal) IGESData_SpecificLib::SetGlobal;
%rename(NewDateString) IGESData_GlobalSection::NewDateString;
%rename(UnitNameFlag) IGESData_BasicEditor::UnitNameFlag;
%rename(UnitFlagValue) IGESData_BasicEditor::UnitFlagValue;
%rename(UnitFlagName) IGESData_BasicEditor::UnitFlagName;
%rename(IGESVersionName) IGESData_BasicEditor::IGESVersionName;
%rename(IGESVersionMax) IGESData_BasicEditor::IGESVersionMax;
%rename(DraftingName) IGESData_BasicEditor::DraftingName;
%rename(DraftingMax) IGESData_BasicEditor::DraftingMax;
