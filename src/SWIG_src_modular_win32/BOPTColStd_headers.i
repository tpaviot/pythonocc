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

#include<BOPTColStd_CArray1OfInteger.hxx>
#include<BOPTColStd_CArray1OfPnt2d.hxx>
#include<BOPTColStd_CArray1OfShape.hxx>
#include<BOPTColStd_Dump.hxx>
#include<BOPTColStd_Failure.hxx>
#include<BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#include<BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger.hxx>
#include<BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger.hxx>
#include<BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#include<BOPTColStd_IndexedDataMapOfIntegerInteger.hxx>
#include<BOPTColStd_IndexedDataMapOfSWRInteger.hxx>
#include<BOPTColStd_ListIteratorOfListOfListOfShape.hxx>
#include<BOPTColStd_ListNodeOfListOfListOfShape.hxx>
#include<BOPTColStd_ListOfListOfShape.hxx>
#include<BOPTColStd_ShapeWithRank.hxx>
#include<BOPTColStd_ShapeWithRankHasher.hxx>
#include<Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#include<Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger.hxx>
#include<Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger.hxx>
#include<Handle_BOPTColStd_ListNodeOfListOfListOfShape.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<gp_Pnt2d.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TCollection_AsciiString.hxx>
%}
