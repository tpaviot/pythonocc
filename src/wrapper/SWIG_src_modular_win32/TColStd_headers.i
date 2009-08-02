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

#include<Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger.hxx>
#include<Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger.hxx>
#include<Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal.hxx>
#include<Handle_TColStd_HArray1OfAsciiString.hxx>
#include<Handle_TColStd_HArray1OfBoolean.hxx>
#include<Handle_TColStd_HArray1OfCharacter.hxx>
#include<Handle_TColStd_HArray1OfExtendedString.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfListOfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColStd_HArray1OfTransient.hxx>
#include<Handle_TColStd_HArray2OfBoolean.hxx>
#include<Handle_TColStd_HArray2OfCharacter.hxx>
#include<Handle_TColStd_HArray2OfInteger.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<Handle_TColStd_HArray2OfTransient.hxx>
#include<Handle_TColStd_HPackedMapOfInteger.hxx>
#include<Handle_TColStd_HSequenceOfAsciiString.hxx>
#include<Handle_TColStd_HSequenceOfExtendedString.hxx>
#include<Handle_TColStd_HSequenceOfHAsciiString.hxx>
#include<Handle_TColStd_HSequenceOfHExtendedString.hxx>
#include<Handle_TColStd_HSequenceOfInteger.hxx>
#include<Handle_TColStd_HSequenceOfReal.hxx>
#include<Handle_TColStd_HSequenceOfTransient.hxx>
#include<Handle_TColStd_HSetOfInteger.hxx>
#include<Handle_TColStd_HSetOfReal.hxx>
#include<Handle_TColStd_HSetOfTransient.hxx>
#include<Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient.hxx>
#include<Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger.hxx>
#include<Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal.hxx>
#include<Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient.hxx>
#include<Handle_TColStd_ListNodeOfListOfInteger.hxx>
#include<Handle_TColStd_ListNodeOfListOfReal.hxx>
#include<Handle_TColStd_ListNodeOfListOfTransient.hxx>
#include<Handle_TColStd_ListNodeOfSetListOfSetOfInteger.hxx>
#include<Handle_TColStd_ListNodeOfSetListOfSetOfReal.hxx>
#include<Handle_TColStd_ListNodeOfSetListOfSetOfTransient.hxx>
#include<Handle_TColStd_QueueNodeOfQueueOfInteger.hxx>
#include<Handle_TColStd_QueueNodeOfQueueOfReal.hxx>
#include<Handle_TColStd_QueueNodeOfQueueOfTransient.hxx>
#include<Handle_TColStd_SequenceNodeOfSequenceOfAsciiString.hxx>
#include<Handle_TColStd_SequenceNodeOfSequenceOfExtendedString.hxx>
#include<Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString.hxx>
#include<Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString.hxx>
#include<Handle_TColStd_SequenceNodeOfSequenceOfInteger.hxx>
#include<Handle_TColStd_SequenceNodeOfSequenceOfReal.hxx>
#include<Handle_TColStd_SequenceNodeOfSequenceOfTransient.hxx>
#include<Handle_TColStd_StackNodeOfStackOfInteger.hxx>
#include<Handle_TColStd_StackNodeOfStackOfReal.hxx>
#include<Handle_TColStd_StackNodeOfStackOfTransient.hxx>
#include<Handle_TColStd_StdMapNodeOfMapOfInteger.hxx>
#include<Handle_TColStd_StdMapNodeOfMapOfReal.hxx>
#include<Handle_TColStd_StdMapNodeOfMapOfTransient.hxx>
#include<TColStd_Array1OfAsciiString.hxx>
#include<TColStd_Array1OfBoolean.hxx>
#include<TColStd_Array1OfCharacter.hxx>
#include<TColStd_Array1OfExtendedString.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array1OfListOfInteger.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfTransient.hxx>
#include<TColStd_Array2OfBoolean.hxx>
#include<TColStd_Array2OfCharacter.hxx>
#include<TColStd_Array2OfInteger.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColStd_Array2OfTransient.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerReal.hxx>
#include<TColStd_DataMapNodeOfDataMapOfIntegerInteger.hxx>
#include<TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger.hxx>
#include<TColStd_DataMapNodeOfDataMapOfIntegerReal.hxx>
#include<TColStd_DataMapOfIntegerInteger.hxx>
#include<TColStd_DataMapOfIntegerListOfInteger.hxx>
#include<TColStd_DataMapOfIntegerReal.hxx>
#include<TColStd_HArray1OfAsciiString.hxx>
#include<TColStd_HArray1OfBoolean.hxx>
#include<TColStd_HArray1OfCharacter.hxx>
#include<TColStd_HArray1OfExtendedString.hxx>
#include<TColStd_HArray1OfInteger.hxx>
#include<TColStd_HArray1OfListOfInteger.hxx>
#include<TColStd_HArray1OfReal.hxx>
#include<TColStd_HArray1OfTransient.hxx>
#include<TColStd_HArray2OfBoolean.hxx>
#include<TColStd_HArray2OfCharacter.hxx>
#include<TColStd_HArray2OfInteger.hxx>
#include<TColStd_HArray2OfReal.hxx>
#include<TColStd_HArray2OfTransient.hxx>
#include<TColStd_HPackedMapOfInteger.hxx>
#include<TColStd_HSequenceOfAsciiString.hxx>
#include<TColStd_HSequenceOfExtendedString.hxx>
#include<TColStd_HSequenceOfHAsciiString.hxx>
#include<TColStd_HSequenceOfHExtendedString.hxx>
#include<TColStd_HSequenceOfInteger.hxx>
#include<TColStd_HSequenceOfReal.hxx>
#include<TColStd_HSequenceOfTransient.hxx>
#include<TColStd_HSetOfInteger.hxx>
#include<TColStd_HSetOfReal.hxx>
#include<TColStd_HSetOfTransient.hxx>
#include<TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient.hxx>
#include<TColStd_IndexedDataMapOfTransientTransient.hxx>
#include<TColStd_IndexedMapNodeOfIndexedMapOfInteger.hxx>
#include<TColStd_IndexedMapNodeOfIndexedMapOfReal.hxx>
#include<TColStd_IndexedMapNodeOfIndexedMapOfTransient.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<TColStd_IndexedMapOfReal.hxx>
#include<TColStd_IndexedMapOfTransient.hxx>
#include<TColStd_ListIteratorOfListOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfReal.hxx>
#include<TColStd_ListIteratorOfListOfTransient.hxx>
#include<TColStd_ListIteratorOfSetListOfSetOfInteger.hxx>
#include<TColStd_ListIteratorOfSetListOfSetOfReal.hxx>
#include<TColStd_ListIteratorOfSetListOfSetOfTransient.hxx>
#include<TColStd_ListNodeOfListOfInteger.hxx>
#include<TColStd_ListNodeOfListOfReal.hxx>
#include<TColStd_ListNodeOfListOfTransient.hxx>
#include<TColStd_ListNodeOfSetListOfSetOfInteger.hxx>
#include<TColStd_ListNodeOfSetListOfSetOfReal.hxx>
#include<TColStd_ListNodeOfSetListOfSetOfTransient.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TColStd_ListOfReal.hxx>
#include<TColStd_ListOfTransient.hxx>
#include<TColStd_MapIntegerHasher.hxx>
#include<TColStd_MapIteratorOfMapOfInteger.hxx>
#include<TColStd_MapIteratorOfMapOfReal.hxx>
#include<TColStd_MapIteratorOfMapOfTransient.hxx>
#include<TColStd_MapIteratorOfPackedMapOfInteger.hxx>
#include<TColStd_MapOfInteger.hxx>
#include<TColStd_MapOfReal.hxx>
#include<TColStd_MapOfTransient.hxx>
#include<TColStd_MapRealHasher.hxx>
#include<TColStd_MapTransientHasher.hxx>
#include<TColStd_PackedMapOfInteger.hxx>
#include<TColStd_QueueNodeOfQueueOfInteger.hxx>
#include<TColStd_QueueNodeOfQueueOfReal.hxx>
#include<TColStd_QueueNodeOfQueueOfTransient.hxx>
#include<TColStd_QueueOfInteger.hxx>
#include<TColStd_QueueOfReal.hxx>
#include<TColStd_QueueOfTransient.hxx>
#include<TColStd_SequenceNodeOfSequenceOfAsciiString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfExtendedString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfHAsciiString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfHExtendedString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfInteger.hxx>
#include<TColStd_SequenceNodeOfSequenceOfReal.hxx>
#include<TColStd_SequenceNodeOfSequenceOfTransient.hxx>
#include<TColStd_SequenceOfAsciiString.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
#include<TColStd_SequenceOfHAsciiString.hxx>
#include<TColStd_SequenceOfHExtendedString.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<TColStd_SequenceOfTransient.hxx>
#include<TColStd_SetIteratorOfSetOfInteger.hxx>
#include<TColStd_SetIteratorOfSetOfReal.hxx>
#include<TColStd_SetIteratorOfSetOfTransient.hxx>
#include<TColStd_SetListOfSetOfInteger.hxx>
#include<TColStd_SetListOfSetOfReal.hxx>
#include<TColStd_SetListOfSetOfTransient.hxx>
#include<TColStd_SetOfInteger.hxx>
#include<TColStd_SetOfReal.hxx>
#include<TColStd_SetOfTransient.hxx>
#include<TColStd_StackIteratorOfStackOfInteger.hxx>
#include<TColStd_StackIteratorOfStackOfReal.hxx>
#include<TColStd_StackIteratorOfStackOfTransient.hxx>
#include<TColStd_StackNodeOfStackOfInteger.hxx>
#include<TColStd_StackNodeOfStackOfReal.hxx>
#include<TColStd_StackNodeOfStackOfTransient.hxx>
#include<TColStd_StackOfInteger.hxx>
#include<TColStd_StackOfReal.hxx>
#include<TColStd_StackOfTransient.hxx>
#include<TColStd_StdMapNodeOfMapOfInteger.hxx>
#include<TColStd_StdMapNodeOfMapOfReal.hxx>
#include<TColStd_StdMapNodeOfMapOfTransient.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<TCollection_ExtendedString.hxx>
%}
