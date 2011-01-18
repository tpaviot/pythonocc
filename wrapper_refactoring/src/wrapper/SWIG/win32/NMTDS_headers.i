/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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

#include<Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger.hxx>
#include<Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger.hxx>
#include<Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx>
#include<Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include<Handle_NMTDS_ListNodeOfListOfPassKey.hxx>
#include<Handle_NMTDS_ListNodeOfListOfPassKeyBoolean.hxx>
#include<Handle_NMTDS_StdMapNodeOfMapOfPassKey.hxx>
#include<Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean.hxx>
#include<NMTDS_BoxBndTree.hxx>
#include<NMTDS_CArray1OfIndexRange.hxx>
#include<NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger.hxx>
#include<NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger.hxx>
#include<NMTDS_DataMapOfIntegerMapOfInteger.hxx>
#include<NMTDS_IndexRange.hxx>
#include<NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger.hxx>
#include<NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx>
#include<NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger.hxx>
#include<NMTDS_IndexedDataMapOfIntegerShape.hxx>
#include<NMTDS_IndexedDataMapOfShapeBox.hxx>
#include<NMTDS_InterfPool.hxx>
#include<NMTDS_InterfType.hxx>
#include<NMTDS_Iterator.hxx>
#include<NMTDS_IteratorCheckerSI.hxx>
#include<NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include<NMTDS_ListIteratorOfListOfPassKey.hxx>
#include<NMTDS_ListIteratorOfListOfPassKeyBoolean.hxx>
#include<NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include<NMTDS_ListNodeOfListOfPassKey.hxx>
#include<NMTDS_ListNodeOfListOfPassKeyBoolean.hxx>
#include<NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include<NMTDS_ListOfPassKey.hxx>
#include<NMTDS_ListOfPassKeyBoolean.hxx>
#include<NMTDS_MapIteratorOfMapOfPassKey.hxx>
#include<NMTDS_MapIteratorOfMapOfPassKeyBoolean.hxx>
#include<NMTDS_MapOfPassKey.hxx>
#include<NMTDS_MapOfPassKeyBoolean.hxx>
#include<NMTDS_PInterfPool.hxx>
#include<NMTDS_PIterator.hxx>
#include<NMTDS_PShapesDataStructure.hxx>
#include<NMTDS_PassKey.hxx>
#include<NMTDS_PassKeyBoolean.hxx>
#include<NMTDS_PassKeyMapHasher.hxx>
#include<NMTDS_PassKeyShape.hxx>
#include<NMTDS_PassKeyShapeMapHasher.hxx>
#include<NMTDS_ShapesDataStructure.hxx>
#include<NMTDS_StdMapNodeOfMapOfPassKey.hxx>
#include<NMTDS_StdMapNodeOfMapOfPassKeyBoolean.hxx>
#include<NMTDS_Tools.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

%}
