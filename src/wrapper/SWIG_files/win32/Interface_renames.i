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
%rename(DownCast) Handle_Interface_EntityCluster::DownCast;
%rename(DownCast) Handle_Interface_NodeOfGeneralLib::DownCast;
%rename(DownCast) Handle_Interface_GlobalNodeOfGeneralLib::DownCast;
%rename(DownCast) Handle_Interface_GeneralModule::DownCast;
%rename(DownCast) Handle_Interface_GlobalNodeOfReaderLib::DownCast;
%rename(DownCast) Handle_Interface_ParamSet::DownCast;
%rename(DownCast) Handle_Interface_InterfaceError::DownCast;
%rename(DownCast) Handle_Interface_CheckFailure::DownCast;
%rename(DownCast) Handle_Interface_HArray1OfHAsciiString::DownCast;
%rename(DownCast) Handle_Interface_SignType::DownCast;
%rename(DownCast) Handle_Interface_SignLabel::DownCast;
%rename(DownCast) Handle_Interface_GTool::DownCast;
%rename(DownCast) Handle_Interface_UndefinedContent::DownCast;
%rename(DownCast) Handle_Interface_TypedValue::DownCast;
%rename(DownCast) Handle_Interface_CopyControl::DownCast;
%rename(DownCast) Handle_Interface_CopyMap::DownCast;
%rename(DownCast) Handle_Interface_ReportEntity::DownCast;
%rename(DownCast) Handle_Interface_ReaderModule::DownCast;
%rename(DownCast) Handle_Interface_Check::DownCast;
%rename(DownCast) Handle_Interface_InterfaceModel::DownCast;
%rename(DownCast) Handle_Interface_NodeOfReaderLib::DownCast;
%rename(DownCast) Handle_Interface_Static::DownCast;
%rename(DownCast) Handle_Interface_ParamList::DownCast;
%rename(DownCast) Handle_Interface_SequenceNodeOfSequenceOfCheck::DownCast;
%rename(DownCast) Handle_Interface_FileReaderData::DownCast;
%rename(DownCast) Handle_Interface_IntVal::DownCast;
%rename(DownCast) Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString::DownCast;
%rename(DownCast) Handle_Interface_InterfaceMismatch::DownCast;
%rename(DownCast) Handle_Interface_HSequenceOfCheck::DownCast;
%rename(DownCast) Handle_Interface_Protocol::DownCast;
%rename(DownCast) Handle_Interface_HGraph::DownCast;
%rename(DownCast) Handle_Interface_DataMapNodeOfDataMapOfTransientInteger::DownCast;
%rename(SetGlobal) Interface_ReaderLib::SetGlobal;
%rename(Fastof) Interface_FileReaderData::Fastof;
%rename(Raise) Interface_InterfaceError::Raise;
%rename(NewInstance) Interface_InterfaceError::NewInstance;
%rename(Raise) Interface_CheckFailure::Raise;
%rename(NewInstance) Interface_CheckFailure::NewInstance;
%rename(Convert) Interface_FloatWriter::Convert;
%rename(SetGlobal) Interface_GeneralLib::SetGlobal;
%rename(ParamTypeToValueType) Interface_TypedValue::ParamTypeToValueType;
%rename(ValueTypeToParamType) Interface_TypedValue::ValueTypeToParamType;
%rename(Init) Interface_Static::Init;
%rename(Static) Interface_Static::Static;
%rename(IsPresent) Interface_Static::IsPresent;
%rename(CDef) Interface_Static::CDef;
%rename(IDef) Interface_Static::IDef;
%rename(IsSet) Interface_Static::IsSet;
%rename(CVal) Interface_Static::CVal;
%rename(IVal) Interface_Static::IVal;
%rename(RVal) Interface_Static::RVal;
%rename(SetCVal) Interface_Static::SetCVal;
%rename(SetIVal) Interface_Static::SetIVal;
%rename(SetRVal) Interface_Static::SetRVal;
%rename(Update) Interface_Static::Update;
%rename(IsUpdated) Interface_Static::IsUpdated;
%rename(Items) Interface_Static::Items;
%rename(Standards) Interface_Static::Standards;
%rename(Active) Interface_Protocol::Active;
%rename(SetActive) Interface_Protocol::SetActive;
%rename(ClearActive) Interface_Protocol::ClearActive;
%rename(HashCode) Interface_MapAsciiStringHasher::HashCode;
%rename(IsEqual) Interface_MapAsciiStringHasher::IsEqual;
%rename(Raise) Interface_InterfaceMismatch::Raise;
%rename(NewInstance) Interface_InterfaceMismatch::NewInstance;
%rename(Read) Interface_MSG::Read;
%rename(Write) Interface_MSG::Write;
%rename(IsKey) Interface_MSG::IsKey;
%rename(Translated) Interface_MSG::Translated;
%rename(Record) Interface_MSG::Record;
%rename(SetTrace) Interface_MSG::SetTrace;
%rename(SetMode) Interface_MSG::SetMode;
%rename(PrintTrace) Interface_MSG::PrintTrace;
%rename(Intervalled) Interface_MSG::Intervalled;
%rename(TDate) Interface_MSG::TDate;
%rename(NDate) Interface_MSG::NDate;
%rename(CDate) Interface_MSG::CDate;
%rename(Blanks) Interface_MSG::Blanks;
%rename(Print) Interface_MSG::Print;
%rename(AddCategory) Interface_Category::AddCategory;
%rename(NbCategories) Interface_Category::NbCategories;
%rename(Name) Interface_Category::Name;
%rename(Number) Interface_Category::Number;
%rename(Init) Interface_Category::Init;
%rename(ClassName) Interface_SignType::ClassName;
%rename(ClassName) Interface_InterfaceModel::ClassName;
%rename(HasTemplate) Interface_InterfaceModel::HasTemplate;
%rename(Template) Interface_InterfaceModel::Template;
%rename(SetTemplate) Interface_InterfaceModel::SetTemplate;
%rename(ListTemplates) Interface_InterfaceModel::ListTemplates;
