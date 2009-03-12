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
along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_XmlObjMgt_DataMapNodeOfRRelocationTable.hxx>
#include<XmlObjMgt.hxx>
#include<XmlObjMgt_DOMString.hxx>
#include<XmlObjMgt_DataMapIteratorOfRRelocationTable.hxx>
#include<XmlObjMgt_DataMapNodeOfRRelocationTable.hxx>
#include<XmlObjMgt_Document.hxx>
#include<XmlObjMgt_Element.hxx>
#include<XmlObjMgt_GP.hxx>
#include<XmlObjMgt_Persistent.hxx>
#include<XmlObjMgt_RRelocationTable.hxx>
#include<XmlObjMgt_SRelocationTable.hxx>

// Additional headers necessary for compilation.

#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<XmlObjMgt.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_AsciiString.hxx>
#include<gp_Trsf.hxx>
#include<gp_Mat.hxx>
#include<gp_XYZ.hxx>
%}
