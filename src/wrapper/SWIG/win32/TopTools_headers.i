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
%{

// Headers necessary to define wrapped classes.

#include<Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape.hxx>
#include<Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape.hxx>
#include<Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger.hxx>
#include<Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape.hxx>
#include<Handle_TopTools_DataMapNodeOfDataMapOfShapeShape.hxx>
#include<Handle_TopTools_HArray1OfListOfShape.hxx>
#include<Handle_TopTools_HArray1OfShape.hxx>
#include<Handle_TopTools_HArray2OfShape.hxx>
#include<Handle_TopTools_HSequenceOfShape.hxx>
#include<Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape.hxx>
#include<Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape.hxx>
#include<Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape.hxx>
#include<Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape.hxx>
#include<Handle_TopTools_ListNodeOfListOfShape.hxx>
#include<Handle_TopTools_SequenceNodeOfSequenceOfShape.hxx>
#include<Handle_TopTools_StdMapNodeOfMapOfOrientedShape.hxx>
#include<Handle_TopTools_StdMapNodeOfMapOfShape.hxx>
#include<TopTools.hxx>
#include<TopTools_Array1OfListOfShape.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<TopTools_Array2OfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<TopTools_DataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopTools_HArray1OfListOfShape.hxx>
#include<TopTools_HArray1OfShape.hxx>
#include<TopTools_HArray2OfShape.hxx>
#include<TopTools_HSequenceOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedDataMapOfShapeShape.hxx>
#include<TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape.hxx>
#include<TopTools_IndexedMapNodeOfIndexedMapOfShape.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_ListIteratorOfListOfShape.hxx>
#include<TopTools_ListNodeOfListOfShape.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_LocationSet.hxx>
#include<TopTools_MapIteratorOfMapOfOrientedShape.hxx>
#include<TopTools_MapIteratorOfMapOfShape.hxx>
#include<TopTools_MapOfOrientedShape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TopTools_OrientedShapeMapHasher.hxx>
#include<TopTools_SequenceNodeOfSequenceOfShape.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopTools_ShapeMapHasher.hxx>
#include<TopTools_ShapeSet.hxx>
#include<TopTools_StdMapNodeOfMapOfOrientedShape.hxx>
#include<TopTools_StdMapNodeOfMapOfShape.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<TopLoc_Location.hxx>
#include<Handle_Message_ProgressIndicator.hxx>
#include<TopTools.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TCollection_AsciiString.hxx>
%}
