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
#include<NCollection_StdBase.hxx>
#include<NCollection_TListIterator.hxx>
#include<NCollection_TListNode.hxx>
#include<NCollection_TypeDef.hxx>
#include<NCollection_UBTree.hxx>
#include<NCollection_UBTreeFiller.hxx>
#include<NCollection_Vector.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
%}
