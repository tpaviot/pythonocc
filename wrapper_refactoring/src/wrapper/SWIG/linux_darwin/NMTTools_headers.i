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

#include<Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock.hxx>
#include<Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger.hxx>
#include<Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include<Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock.hxx>
#include<Handle_NMTTools_ListNodeOfListOfCommonBlock.hxx>
#include<Handle_NMTTools_ListNodeOfListOfCoupleOfShape.hxx>
#include<Handle_NMTTools_StdMapNodeOfMapOfPaveBlock.hxx>
#include<NMTTools_CheckerSI.hxx>
#include<NMTTools_CommonBlock.hxx>
#include<NMTTools_CommonBlockAPI.hxx>
#include<NMTTools_CommonBlockPool.hxx>
#include<NMTTools_CoupleOfShape.hxx>
#include<NMTTools_DEProcessor.hxx>
#include<NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock.hxx>
#include<NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock.hxx>
#include<NMTTools_DataMapOfIntegerListOfPaveBlock.hxx>
#include<NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger.hxx>
#include<NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include<NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock.hxx>
#include<NMTTools_IndexedDataMapOfIndexedMapOfInteger.hxx>
#include<NMTTools_IndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include<NMTTools_IndexedDataMapOfShapePaveBlock.hxx>
#include<NMTTools_IteratorOfCoupleOfShape.hxx>
#include<NMTTools_ListIteratorOfListOfCommonBlock.hxx>
#include<NMTTools_ListIteratorOfListOfCoupleOfShape.hxx>
#include<NMTTools_ListNodeOfListOfCommonBlock.hxx>
#include<NMTTools_ListNodeOfListOfCoupleOfShape.hxx>
#include<NMTTools_ListOfCommonBlock.hxx>
#include<NMTTools_ListOfCoupleOfShape.hxx>
#include<NMTTools_MapIteratorOfMapOfPaveBlock.hxx>
#include<NMTTools_MapOfPaveBlock.hxx>
#include<NMTTools_PPaveFiller.hxx>
#include<NMTTools_PaveFiller.hxx>
#include<NMTTools_StdMapNodeOfMapOfPaveBlock.hxx>
#include<NMTTools_Tools.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

%}
