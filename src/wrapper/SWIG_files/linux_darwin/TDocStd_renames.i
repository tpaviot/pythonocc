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
%rename(DownCast) Handle_TDocStd_ApplicationDelta::DownCast;
%rename(DownCast) Handle_TDocStd_Modified::DownCast;
%rename(DownCast) Handle_TDocStd_XLink::DownCast;
%rename(DownCast) Handle_TDocStd_MultiTransactionManager::DownCast;
%rename(DownCast) Handle_TDocStd_Application::DownCast;
%rename(DownCast) Handle_TDocStd_Document::DownCast;
%rename(DownCast) Handle_TDocStd_Owner::DownCast;
%rename(DownCast) Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta::DownCast;
%rename(DownCast) Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap::DownCast;
%rename(DownCast) Handle_TDocStd_SequenceNodeOfSequenceOfDocument::DownCast;
%rename(DownCast) Handle_TDocStd_XLinkRoot::DownCast;
%rename(DownCast) Handle_TDocStd_CompoundDelta::DownCast;
%rename(Get) TDocStd_Document::Get;
%rename(GetID) TDocStd_Owner::GetID;
%rename(SetDocument) TDocStd_Owner::SetDocument;
%rename(GetDocument) TDocStd_Owner::GetDocument;
%rename(IsEmpty) TDocStd_Modified::IsEmpty;
%rename(Add) TDocStd_Modified::Add;
%rename(Remove) TDocStd_Modified::Remove;
%rename(Contains) TDocStd_Modified::Contains;
%rename(Get) TDocStd_Modified::Get;
%rename(Clear) TDocStd_Modified::Clear;
%rename(GetID) TDocStd_Modified::GetID;
%rename(IDList) TDocStd::IDList;
%rename(GetID) TDocStd_XLinkRoot::GetID;
%rename(Set) TDocStd_XLinkRoot::Set;
%rename(Insert) TDocStd_XLinkRoot::Insert;
%rename(Remove) TDocStd_XLinkRoot::Remove;
%rename(Set) TDocStd_XLink::Set;
%rename(GetID) TDocStd_XLink::GetID;
