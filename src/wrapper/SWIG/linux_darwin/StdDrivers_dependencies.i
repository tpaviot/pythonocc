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
%{
#include <Handle_MDocStd_DocumentRetrievalDriver.hxx>
#include <Handle_MDocStd_DocumentStorageDriver.hxx>
#include <Handle_MDocStd_ListNodeOfDocEntryList.hxx>
#include <Handle_MDocStd_StdMapNodeOfPersistentMap.hxx>
#include <Handle_MDocStd_XLinkRetrievalDriver.hxx>
#include <Handle_MDocStd_XLinkStorageDriver.hxx>
#include <MDocStd_DocEntryList.hxx>
#include <MDocStd_DocumentRetrievalDriver.hxx>
#include <MDocStd_DocumentStorageDriver.hxx>
#include <MDocStd_ListIteratorOfDocEntryList.hxx>
#include <MDocStd_ListNodeOfDocEntryList.hxx>
#include <MDocStd_MapIteratorOfPersistentMap.hxx>
#include <MDocStd_PersistentMap.hxx>
#include <MDocStd_StdMapNodeOfPersistentMap.hxx>
#include <MDocStd_XLinkRetrievalDriver.hxx>
#include <MDocStd_XLinkStorageDriver.hxx>
%};

%import MDocStd.i
