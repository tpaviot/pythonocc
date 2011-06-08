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

// Headers necessary to define wrapped classes.

#include<Handle_XmlMDF_ADriver.hxx>
#include<Handle_XmlMDF_ADriverTable.hxx>
#include<Handle_XmlMDF_DataMapNodeOfMapOfDriver.hxx>
#include<Handle_XmlMDF_DataMapNodeOfTypeADriverMap.hxx>
#include<Handle_XmlMDF_ReferenceDriver.hxx>
#include<Handle_XmlMDF_TagSourceDriver.hxx>
#include<XmlMDF.hxx>
#include<XmlMDF_ADriver.hxx>
#include<XmlMDF_ADriverTable.hxx>
#include<XmlMDF_DataMapIteratorOfMapOfDriver.hxx>
#include<XmlMDF_DataMapIteratorOfTypeADriverMap.hxx>
#include<XmlMDF_DataMapNodeOfMapOfDriver.hxx>
#include<XmlMDF_DataMapNodeOfTypeADriverMap.hxx>
#include<XmlMDF_MapOfDriver.hxx>
#include<XmlMDF_ReferenceDriver.hxx>
#include<XmlMDF_TagSourceDriver.hxx>
#include<XmlMDF_TypeADriverMap.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Standard_Type.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<XmlObjMgt_Persistent.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_CDM_MessageDriver.hxx>
#include<XmlMDF.hxx>
#include<Handle_TDF_Data.hxx>
%}
