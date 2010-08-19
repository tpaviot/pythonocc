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
%{

// Headers necessary to define wrapped classes.

#include<BinMDF.hxx>
#include<BinMDF_ADriver.hxx>
#include<BinMDF_ADriverTable.hxx>
#include<BinMDF_DataMapIteratorOfStringIdMap.hxx>
#include<BinMDF_DataMapIteratorOfTypeADriverMap.hxx>
#include<BinMDF_DataMapNodeOfStringIdMap.hxx>
#include<BinMDF_DataMapNodeOfTypeADriverMap.hxx>
#include<BinMDF_DoubleMapIteratorOfTypeIdMap.hxx>
#include<BinMDF_DoubleMapNodeOfTypeIdMap.hxx>
#include<BinMDF_ReferenceDriver.hxx>
#include<BinMDF_StringIdMap.hxx>
#include<BinMDF_TagSourceDriver.hxx>
#include<BinMDF_TypeADriverMap.hxx>
#include<BinMDF_TypeIdMap.hxx>
#include<Handle_BinMDF_ADriver.hxx>
#include<Handle_BinMDF_ADriverTable.hxx>
#include<Handle_BinMDF_DataMapNodeOfStringIdMap.hxx>
#include<Handle_BinMDF_DataMapNodeOfTypeADriverMap.hxx>
#include<Handle_BinMDF_DoubleMapNodeOfTypeIdMap.hxx>
#include<Handle_BinMDF_ReferenceDriver.hxx>
#include<Handle_BinMDF_TagSourceDriver.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<BinObjMgt_Persistent.hxx>
#include<BinObjMgt_RRelocationTable.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_Standard_Type.hxx>
#include<BinMDF.hxx>
#include<Handle_CDM_MessageDriver.hxx>
#include<TCollection_AsciiString.hxx>
#include<TColStd_IndexedMapOfTransient.hxx>
#include<TColStd_SequenceOfAsciiString.hxx>
%}
