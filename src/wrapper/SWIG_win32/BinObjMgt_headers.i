/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<BinObjMgt_DataMapIteratorOfRRelocationTable.hxx>
#include<BinObjMgt_DataMapNodeOfRRelocationTable.hxx>
#include<BinObjMgt_PByte.hxx>
#include<BinObjMgt_PChar.hxx>
#include<BinObjMgt_PExtChar.hxx>
#include<BinObjMgt_PInteger.hxx>
#include<BinObjMgt_PReal.hxx>
#include<BinObjMgt_PShortReal.hxx>
#include<BinObjMgt_Persistent.hxx>
#include<BinObjMgt_RRelocationTable.hxx>
#include<BinObjMgt_SRelocationTable.hxx>
#include<BinObjMgt_SequenceNodeOfSequenceOfAddress.hxx>
#include<BinObjMgt_SequenceOfAddress.hxx>
#include<Handle_BinObjMgt_DataMapNodeOfRRelocationTable.hxx>
#include<Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TDF_Label.hxx>
#include<Standard_GUID.hxx>
#include<Handle_TDF_Data.hxx>
%}
