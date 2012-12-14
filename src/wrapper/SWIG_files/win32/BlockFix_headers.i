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

#include<BlockFix.hxx>
#include<BlockFix_BlockFixAPI.hxx>
#include<BlockFix_CheckTool.hxx>
#include<BlockFix_PeriodicSurfaceModifier.hxx>
#include<BlockFix_SphereSpaceModifier.hxx>
#include<BlockFix_UnionEdges.hxx>
#include<BlockFix_UnionFaces.hxx>
#include<Handle_BlockFix_BlockFixAPI.hxx>
#include<Handle_BlockFix_PeriodicSurfaceModifier.hxx>
#include<Handle_BlockFix_SphereSpaceModifier.hxx>

// Additional headers necessary for compilation.

#include<Handle_TCollection_AVLBaseNode.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<Handle_TCollection_MapNode.hxx>
#include<Handle_TCollection_SeqNode.hxx>
#include<TopTools.hxx>
#include<TopTools_Array1OfListOfShape.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<TopTools_Array2OfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<TopTools_DataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapOfShapeReal.hxx>
#include<TopTools_DataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopTools_HArray1OfListOfShape.hxx>
#include<TopTools_HArray1OfShape.hxx>
#include<TopTools_HArray2OfShape.hxx>
#include<TopTools_HSequenceOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape.hxx>
#include<TopTools_IndexedDataMapOfShapeAddress.hxx>
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
#include<TopTools_LocationSetPtr.hxx>
#include<TopTools_MapIteratorOfMapOfOrientedShape.hxx>
#include<TopTools_MapIteratorOfMapOfShape.hxx>
#include<TopTools_MapOfOrientedShape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TopTools_MutexForShapeProvider.hxx>
#include<TopTools_OrientedShapeMapHasher.hxx>
#include<TopTools_SequenceNodeOfSequenceOfShape.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopTools_ShapeMapHasher.hxx>
#include<TopTools_ShapeSet.hxx>
#include<TopTools_StdMapNodeOfMapOfOrientedShape.hxx>
#include<TopTools_StdMapNodeOfMapOfShape.hxx>

// Needed headers necessary for compilation.

#include<BlockFix.hxx>
%}
