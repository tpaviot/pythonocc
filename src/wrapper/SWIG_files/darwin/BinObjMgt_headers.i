/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<BinObjMgt_PByte.hxx>
#include<BinObjMgt_PChar.hxx>
#include<BinObjMgt_PExtChar.hxx>
#include<BinObjMgt_PInteger.hxx>
#include<BinObjMgt_PReal.hxx>
#include<BinObjMgt_PShortReal.hxx>
#include<BinObjMgt_Persistent.hxx>
#include<BinObjMgt_RRelocationTable.hxx>
#include<BinObjMgt_SRelocationTable.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<TCollection_AsciiString.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TDF_Label.hxx>
#include<Standard_GUID.hxx>
#include<Handle_TDF_Data.hxx>
%}
