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

#include<Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString.hxx>
#include<Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString.hxx>
#include<Handle_Resource_Manager.hxx>
#include<Handle_Resource_NoSuchResource.hxx>
#include<Resource_ConvertUnicode.hxx>
#include<Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString.hxx>
#include<Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString.hxx>
#include<Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString.hxx>
#include<Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString.hxx>
#include<Resource_DataMapOfAsciiStringAsciiString.hxx>
#include<Resource_DataMapOfAsciiStringExtendedString.hxx>
#include<Resource_FormatType.hxx>
#include<Resource_LexicalCompare.hxx>
#include<Resource_Manager.hxx>
#include<Resource_NoSuchResource.hxx>
#include<Resource_QuickSortOfArray1.hxx>
#include<Resource_Unicode.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TCollection_AsciiString.hxx>
#include<TColStd_Array1OfAsciiString.hxx>
#include<TCollection_ExtendedString.hxx>
%}
