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
%rename(downcast) Handle_TopTools_ListNodeOfListOfShape::DownCast;
%rename(downcast) Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape::DownCast;
%rename(downcast) Handle_TopTools_HSequenceOfShape::DownCast;
%rename(downcast) Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape::DownCast;
%rename(downcast) Handle_TopTools_HArray1OfListOfShape::DownCast;
%rename(downcast) Handle_TopTools_DataMapNodeOfDataMapOfShapeShape::DownCast;
%rename(downcast) Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape::DownCast;
%rename(downcast) Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape::DownCast;
%rename(downcast) Handle_TopTools_HArray1OfShape::DownCast;
%rename(downcast) Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape::DownCast;
%rename(downcast) Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger::DownCast;
%rename(downcast) Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger::DownCast;
%rename(downcast) Handle_TopTools_SequenceNodeOfSequenceOfShape::DownCast;
%rename(downcast) Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape::DownCast;
%rename(downcast) Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger::DownCast;
%rename(downcast) Handle_TopTools_HArray2OfShape::DownCast;
%rename(downcast) Handle_TopTools_StdMapNodeOfMapOfShape::DownCast;
%rename(downcast) Handle_TopTools_StdMapNodeOfMapOfOrientedShape::DownCast;
%rename(downcast) Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape::DownCast;
%rename(dump) TopTools::Dump;
%rename(dummy) TopTools::Dummy;
%rename(hashcode) TopTools_ShapeMapHasher::HashCode;
%rename(isequal) TopTools_ShapeMapHasher::IsEqual;
%rename(hashcode) TopTools_OrientedShapeMapHasher::HashCode;
%rename(isequal) TopTools_OrientedShapeMapHasher::IsEqual;
