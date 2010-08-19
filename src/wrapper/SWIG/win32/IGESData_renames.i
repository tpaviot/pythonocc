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
%rename(downcast) Handle_IGESData_IGESEntity::DownCast;
%rename(downcast) Handle_IGESData_FileRecognizer::DownCast;
%rename(downcast) Handle_IGESData_GeneralModule::DownCast;
%rename(downcast) Handle_IGESData_ToolLocation::DownCast;
%rename(downcast) Handle_IGESData_ColorEntity::DownCast;
%rename(downcast) Handle_IGESData_UndefinedEntity::DownCast;
%rename(downcast) Handle_IGESData_FreeFormatEntity::DownCast;
%rename(downcast) Handle_IGESData_NameEntity::DownCast;
%rename(downcast) Handle_IGESData_SpecificModule::DownCast;
%rename(downcast) Handle_IGESData_DefaultSpecific::DownCast;
%rename(downcast) Handle_IGESData_GlobalNodeOfSpecificLib::DownCast;
%rename(downcast) Handle_IGESData_LevelListEntity::DownCast;
%rename(downcast) Handle_IGESData_LineFontEntity::DownCast;
%rename(downcast) Handle_IGESData_TransfEntity::DownCast;
%rename(downcast) Handle_IGESData_SingleParentEntity::DownCast;
%rename(downcast) Handle_IGESData_NodeOfSpecificLib::DownCast;
%rename(downcast) Handle_IGESData_Protocol::DownCast;
%rename(downcast) Handle_IGESData_FileProtocol::DownCast;
%rename(downcast) Handle_IGESData_GlobalNodeOfWriterLib::DownCast;
%rename(downcast) Handle_IGESData_HArray1OfIGESEntity::DownCast;
%rename(downcast) Handle_IGESData_ViewKindEntity::DownCast;
%rename(downcast) Handle_IGESData_IGESReaderData::DownCast;
%rename(downcast) Handle_IGESData_LabelDisplayEntity::DownCast;
%rename(downcast) Handle_IGESData_DefaultGeneral::DownCast;
%rename(downcast) Handle_IGESData_ReadWriteModule::DownCast;
%rename(downcast) Handle_IGESData_NodeOfWriterLib::DownCast;
%rename(downcast) Handle_IGESData_IGESModel::DownCast;
%rename(convertlocation) IGESData_ToolLocation::ConvertLocation;
%rename(init) IGESData::Init;
%rename(protocol) IGESData::Protocol;
%rename(setglobal) IGESData_WriterLib::SetGlobal;
%rename(setglobal) IGESData_SpecificLib::SetGlobal;
%rename(newdatestring) IGESData_GlobalSection::NewDateString;
%rename(newdatestring) IGESData_GlobalSection::NewDateString;
%rename(unitnameflag) IGESData_BasicEditor::UnitNameFlag;
%rename(unitflagvalue) IGESData_BasicEditor::UnitFlagValue;
%rename(unitflagname) IGESData_BasicEditor::UnitFlagName;
%rename(igesversionname) IGESData_BasicEditor::IGESVersionName;
%rename(igesversionmax) IGESData_BasicEditor::IGESVersionMax;
%rename(draftingname) IGESData_BasicEditor::DraftingName;
%rename(draftingmax) IGESData_BasicEditor::DraftingMax;
