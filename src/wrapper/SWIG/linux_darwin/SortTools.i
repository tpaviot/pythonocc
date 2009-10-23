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
%module SortTools

%include SortTools_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include SortTools_dependencies.i


%include SortTools_headers.i




%nodefaultctor SortTools_QuickSortOfReal;
class SortTools_QuickSortOfReal {
	public:
		%feature("autodoc", "1");
		SortTools_QuickSortOfReal();
		%feature("autodoc", "1");
		void Sort(TColStd_Array1OfReal & TheArray, const TCollection_CompareOfReal &Comp);

};
%feature("shadow") SortTools_QuickSortOfReal::~SortTools_QuickSortOfReal %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor SortTools_HeapSortOfInteger;
class SortTools_HeapSortOfInteger {
	public:
		%feature("autodoc", "1");
		SortTools_HeapSortOfInteger();
		%feature("autodoc", "1");
		void Sort(TColStd_Array1OfInteger & TheArray, const TCollection_CompareOfInteger &Comp);

};
%feature("shadow") SortTools_HeapSortOfInteger::~SortTools_HeapSortOfInteger %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor SortTools_StraightInsertionSortOfInteger;
class SortTools_StraightInsertionSortOfInteger {
	public:
		%feature("autodoc", "1");
		SortTools_StraightInsertionSortOfInteger();
		%feature("autodoc", "1");
		void Sort(TColStd_Array1OfInteger & TheArray, const TCollection_CompareOfInteger &Comp);

};
%feature("shadow") SortTools_StraightInsertionSortOfInteger::~SortTools_StraightInsertionSortOfInteger %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor SortTools_HeapSortOfReal;
class SortTools_HeapSortOfReal {
	public:
		%feature("autodoc", "1");
		SortTools_HeapSortOfReal();
		%feature("autodoc", "1");
		void Sort(TColStd_Array1OfReal & TheArray, const TCollection_CompareOfReal &Comp);

};
%feature("shadow") SortTools_HeapSortOfReal::~SortTools_HeapSortOfReal %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor SortTools_StraightInsertionSortOfReal;
class SortTools_StraightInsertionSortOfReal {
	public:
		%feature("autodoc", "1");
		SortTools_StraightInsertionSortOfReal();
		%feature("autodoc", "1");
		void Sort(TColStd_Array1OfReal & TheArray, const TCollection_CompareOfReal &Comp);

};
%feature("shadow") SortTools_StraightInsertionSortOfReal::~SortTools_StraightInsertionSortOfReal %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor SortTools_QuickSortOfInteger;
class SortTools_QuickSortOfInteger {
	public:
		%feature("autodoc", "1");
		SortTools_QuickSortOfInteger();
		%feature("autodoc", "1");
		void Sort(TColStd_Array1OfInteger & TheArray, const TCollection_CompareOfInteger &Comp);

};
%feature("shadow") SortTools_QuickSortOfInteger::~SortTools_QuickSortOfInteger %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor SortTools_ShellSortOfReal;
class SortTools_ShellSortOfReal {
	public:
		%feature("autodoc", "1");
		SortTools_ShellSortOfReal();
		%feature("autodoc", "1");
		void Sort(TColStd_Array1OfReal & TheArray, const TCollection_CompareOfReal &Comp);

};
%feature("shadow") SortTools_ShellSortOfReal::~SortTools_ShellSortOfReal %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor SortTools_ShellSortOfInteger;
class SortTools_ShellSortOfInteger {
	public:
		%feature("autodoc", "1");
		SortTools_ShellSortOfInteger();
		%feature("autodoc", "1");
		void Sort(TColStd_Array1OfInteger & TheArray, const TCollection_CompareOfInteger &Comp);

};
%feature("shadow") SortTools_ShellSortOfInteger::~SortTools_ShellSortOfInteger %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}
