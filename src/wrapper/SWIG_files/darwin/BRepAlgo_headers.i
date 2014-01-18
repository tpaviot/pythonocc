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

#include<BRepAlgo.hxx>
#include<BRepAlgo_AsDes.hxx>
#include<BRepAlgo_BooleanOperation.hxx>
#include<BRepAlgo_BooleanOperations.hxx>
#include<BRepAlgo_CheckStatus.hxx>
#include<BRepAlgo_Common.hxx>
#include<BRepAlgo_Cut.hxx>
#include<BRepAlgo_DSAccess.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapOfShapeInterference.hxx>
#include<BRepAlgo_EdgeConnector.hxx>
#include<BRepAlgo_FaceRestrictor.hxx>
#include<BRepAlgo_Fuse.hxx>
#include<BRepAlgo_Image.hxx>
#include<BRepAlgo_Loop.hxx>
#include<BRepAlgo_NormalProjection.hxx>
#include<BRepAlgo_Section.hxx>
#include<BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger.hxx>
#include<BRepAlgo_SequenceOfSequenceOfInteger.hxx>
#include<BRepAlgo_Tool.hxx>
#include<Handle_BRepAlgo_AsDes.hxx>
#include<Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean.hxx>
#include<Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference.hxx>
#include<Handle_BRepAlgo_EdgeConnector.hxx>
#include<Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger.hxx>

// Additional headers necessary for compilation.

#include<NCollection_Array1.hxx>
#include<NCollection_Array2.hxx>
#include<NCollection_BaseAllocator.hxx>
#include<NCollection_BaseCollection.hxx>
#include<NCollection_BaseList.hxx>
#include<NCollection_BaseMap.hxx>
#include<NCollection_BaseSequence.hxx>
#include<NCollection_BaseVector.hxx>
#include<NCollection_Comparator.hxx>
#include<NCollection_DataMap.hxx>
#include<NCollection_DefaultHasher.hxx>
#include<NCollection_DefineAlloc.hxx>
#include<NCollection_DefineArray1.hxx>
#include<NCollection_DefineArray2.hxx>
#include<NCollection_DefineBaseCollection.hxx>
#include<NCollection_DefineDataMap.hxx>
#include<NCollection_DefineDoubleMap.hxx>
#include<NCollection_DefineHArray1.hxx>
#include<NCollection_DefineHArray2.hxx>
#include<NCollection_DefineHSequence.hxx>
#include<NCollection_DefineHSet.hxx>
#include<NCollection_DefineIndexedDataMap.hxx>
#include<NCollection_DefineIndexedMap.hxx>
#include<NCollection_DefineList.hxx>
#include<NCollection_DefineMap.hxx>
#include<NCollection_DefineQueue.hxx>
#include<NCollection_DefineSList.hxx>
#include<NCollection_DefineSequence.hxx>
#include<NCollection_DefineSet.hxx>
#include<NCollection_DefineStack.hxx>
#include<NCollection_DefineTListIterator.hxx>
#include<NCollection_DefineTListNode.hxx>
#include<NCollection_DefineVector.hxx>
#include<NCollection_DoubleMap.hxx>
#include<NCollection_HArray1.hxx>
#include<NCollection_HArray2.hxx>
#include<NCollection_HSequence.hxx>
#include<NCollection_HSet.hxx>
#include<NCollection_Handle.hxx>
#include<NCollection_HeapAllocator.hxx>
#include<NCollection_IncAllocator.hxx>
#include<NCollection_IndexedDataMap.hxx>
#include<NCollection_IndexedMap.hxx>
#include<NCollection_List.hxx>
#include<NCollection_ListNode.hxx>
#include<NCollection_Map.hxx>
#include<NCollection_Queue.hxx>
#include<NCollection_QuickSort.hxx>
#include<NCollection_SList.hxx>
#include<NCollection_Sequence.hxx>
#include<NCollection_Set.hxx>
#include<NCollection_SparseArray.hxx>
#include<NCollection_SparseArrayBase.hxx>
#include<NCollection_Stack.hxx>
#include<NCollection_StdAllocator.hxx>
#include<NCollection_StdBase.hxx>
#include<NCollection_String.hxx>
#include<NCollection_TListIterator.hxx>
#include<NCollection_TListNode.hxx>
#include<NCollection_TypeDef.hxx>
#include<NCollection_UBTree.hxx>
#include<NCollection_UBTreeFiller.hxx>
#include<NCollection_UtfIterator.hxx>
#include<NCollection_UtfString.hxx>
#include<NCollection_Vector.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<Handle_TopOpeBRepBuild_HBuilder.hxx>
#include<BRepAlgo.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Edge.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopoDS_Face.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<Handle_TopOpeBRepDS_Interference.hxx>
#include<Adaptor3d_Curve.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_TopOpeBRepDS_HDataStructure.hxx>
#include<gp_Pln.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TColStd_SequenceOfInteger.hxx>
%}
