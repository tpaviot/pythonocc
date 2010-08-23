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
%rename(downcast) Handle_Interface_EntityCluster::DownCast;
%rename(downcast) Handle_Interface_ReportEntity::DownCast;
%rename(downcast) Handle_Interface_GeneralModule::DownCast;
%rename(downcast) Handle_Interface_GlobalNodeOfReaderLib::DownCast;
%rename(downcast) Handle_Interface_ParamSet::DownCast;
%rename(downcast) Handle_Interface_DataMapNodeOfDataMapOfIntegerTransient::DownCast;
%rename(downcast) Handle_Interface_InterfaceError::DownCast;
%rename(downcast) Handle_Interface_CheckFailure::DownCast;
%rename(downcast) Handle_Interface_HArray1OfHAsciiString::DownCast;
%rename(downcast) Handle_Interface_Check::DownCast;
%rename(downcast) Handle_Interface_SignType::DownCast;
%rename(downcast) Handle_Interface_SignLabel::DownCast;
%rename(downcast) Handle_Interface_CopyControl::DownCast;
%rename(downcast) Handle_Interface_NodeOfGeneralLib::DownCast;
%rename(downcast) Handle_Interface_NodeOfReaderLib::DownCast;
%rename(downcast) Handle_Interface_UndefinedContent::DownCast;
%rename(downcast) Handle_Interface_TypedValue::DownCast;
%rename(downcast) Handle_Interface_CopyMap::DownCast;
%rename(downcast) Handle_Interface_ReaderModule::DownCast;
%rename(downcast) Handle_Interface_GTool::DownCast;
%rename(downcast) Handle_Interface_InterfaceModel::DownCast;
%rename(downcast) Handle_Interface_ParamList::DownCast;
%rename(downcast) Handle_Interface_SequenceNodeOfSequenceOfCheck::DownCast;
%rename(downcast) Handle_Interface_Static::DownCast;
%rename(downcast) Handle_Interface_FileReaderData::DownCast;
%rename(downcast) Handle_Interface_IntVal::DownCast;
%rename(downcast) Handle_Interface_GlobalNodeOfGeneralLib::DownCast;
%rename(downcast) Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString::DownCast;
%rename(downcast) Handle_Interface_InterfaceMismatch::DownCast;
%rename(downcast) Handle_Interface_HSequenceOfCheck::DownCast;
%rename(downcast) Handle_Interface_Protocol::DownCast;
%rename(downcast) Handle_Interface_HGraph::DownCast;
%rename(downcast) Handle_Interface_DataMapNodeOfDataMapOfTransientInteger::DownCast;
%rename(setglobal) Interface_ReaderLib::SetGlobal;
%rename(fastof) Interface_FileReaderData::Fastof;
%rename(raise) Interface_InterfaceError::Raise;
%rename(newinstance) Interface_InterfaceError::NewInstance;
%rename(raise) Interface_InterfaceMismatch::Raise;
%rename(newinstance) Interface_InterfaceMismatch::NewInstance;
%rename(convert) Interface_FloatWriter::Convert;
%rename(setglobal) Interface_GeneralLib::SetGlobal;
%rename(paramtypetovaluetype) Interface_TypedValue::ParamTypeToValueType;
%rename(valuetypetoparamtype) Interface_TypedValue::ValueTypeToParamType;
%rename(init) Interface_Static::Init;
%rename(ispresent) Interface_Static::IsPresent;
%rename(cdef) Interface_Static::CDef;
%rename(idef) Interface_Static::IDef;
%rename(isset) Interface_Static::IsSet;
%rename(cval) Interface_Static::CVal;
%rename(ival) Interface_Static::IVal;
%rename(rval) Interface_Static::RVal;
%rename(setcval) Interface_Static::SetCVal;
%rename(setival) Interface_Static::SetIVal;
%rename(setrval) Interface_Static::SetRVal;
%rename(update) Interface_Static::Update;
%rename(isupdated) Interface_Static::IsUpdated;
%rename(items) Interface_Static::Items;
%rename(standards) Interface_Static::Standards;
%rename(active) Interface_Protocol::Active;
%rename(setactive) Interface_Protocol::SetActive;
%rename(clearactive) Interface_Protocol::ClearActive;
%rename(hashcode) Interface_MapAsciiStringHasher::HashCode;
%rename(isequal) Interface_MapAsciiStringHasher::IsEqual;
%rename(read) Interface_MSG::Read;
%rename(write) Interface_MSG::Write;
%rename(iskey) Interface_MSG::IsKey;
%rename(translated) Interface_MSG::Translated;
%rename(record) Interface_MSG::Record;
%rename(settrace) Interface_MSG::SetTrace;
%rename(setmode) Interface_MSG::SetMode;
%rename(printtrace) Interface_MSG::PrintTrace;
%rename(intervalled) Interface_MSG::Intervalled;
%rename(tdate) Interface_MSG::TDate;
%rename(ndate) Interface_MSG::NDate;
%rename(cdate) Interface_MSG::CDate;
%rename(blanks) Interface_MSG::Blanks;
%rename(print) Interface_MSG::Print;
%rename(addcategory) Interface_Category::AddCategory;
%rename(nbcategories) Interface_Category::NbCategories;
%rename(name) Interface_Category::Name;
%rename(number) Interface_Category::Number;
%rename(init) Interface_Category::Init;
%rename(classname) Interface_SignType::ClassName;
%rename(raise) Interface_CheckFailure::Raise;
%rename(newinstance) Interface_CheckFailure::NewInstance;
%rename(classname) Interface_InterfaceModel::ClassName;
%rename(hastemplate) Interface_InterfaceModel::HasTemplate;
%rename(settemplate) Interface_InterfaceModel::SetTemplate;
%rename(listtemplates) Interface_InterfaceModel::ListTemplates;
