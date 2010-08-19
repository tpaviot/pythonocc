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
%rename(downcast) Handle_TDocStd_Modified::DownCast;
%rename(downcast) Handle_TDocStd_XLinkRoot::DownCast;
%rename(downcast) Handle_TDocStd_XLink::DownCast;
%rename(downcast) Handle_TDocStd_Document::DownCast;
%rename(downcast) Handle_TDocStd_MultiTransactionManager::DownCast;
%rename(downcast) Handle_TDocStd_Owner::DownCast;
%rename(downcast) Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta::DownCast;
%rename(downcast) Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap::DownCast;
%rename(downcast) Handle_TDocStd_SequenceNodeOfSequenceOfDocument::DownCast;
%rename(downcast) Handle_TDocStd_ApplicationDelta::DownCast;
%rename(downcast) Handle_TDocStd_CompoundDelta::DownCast;
%rename(downcast) Handle_TDocStd_Application::DownCast;
%rename(getid) TDocStd_Owner::GetID;
%rename(setdocument) TDocStd_Owner::SetDocument;
%rename(getdocument) TDocStd_Owner::GetDocument;
%rename(isempty) TDocStd_Modified::IsEmpty;
%rename(add) TDocStd_Modified::Add;
%rename(remove) TDocStd_Modified::Remove;
%rename(contains) TDocStd_Modified::Contains;
%rename(get) TDocStd_Modified::Get;
%rename(clear) TDocStd_Modified::Clear;
%rename(getid) TDocStd_Modified::GetID;
%rename(idlist) TDocStd::IDList;
%rename(get) TDocStd_Document::Get;
%rename(getid) TDocStd_XLinkRoot::GetID;
%rename(set) TDocStd_XLinkRoot::Set;
%rename(insert) TDocStd_XLinkRoot::Insert;
%rename(remove) TDocStd_XLinkRoot::Remove;
%rename(set) TDocStd_XLink::Set;
%rename(getid) TDocStd_XLink::GetID;
