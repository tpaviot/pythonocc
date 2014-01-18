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

#include<SortTools_HeapSortOfInteger.hxx>
#include<SortTools_HeapSortOfReal.hxx>
#include<SortTools_QuickSortOfInteger.hxx>
#include<SortTools_QuickSortOfReal.hxx>
#include<SortTools_ShellSortOfInteger.hxx>
#include<SortTools_ShellSortOfReal.hxx>
#include<SortTools_StraightInsertionSortOfInteger.hxx>
#include<SortTools_StraightInsertionSortOfReal.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<TColStd_Array1OfReal.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TCollection_CompareOfInteger.hxx>
%}
