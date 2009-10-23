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
%module TopBas

%include TopBas_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include TopBas_dependencies.i


%include TopBas_headers.i




%nodefaultctor Handle_TopBas_ListNodeOfListOfTestInterference;
class Handle_TopBas_ListNodeOfListOfTestInterference : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopBas_ListNodeOfListOfTestInterference();
		%feature("autodoc", "1");
		Handle_TopBas_ListNodeOfListOfTestInterference(const Handle_TopBas_ListNodeOfListOfTestInterference &aHandle);
		%feature("autodoc", "1");
		Handle_TopBas_ListNodeOfListOfTestInterference(const TopBas_ListNodeOfListOfTestInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopBas_ListNodeOfListOfTestInterference & operator=(const Handle_TopBas_ListNodeOfListOfTestInterference &aHandle);
		%feature("autodoc", "1");
		Handle_TopBas_ListNodeOfListOfTestInterference & operator=(const TopBas_ListNodeOfListOfTestInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopBas_ListNodeOfListOfTestInterference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopBas_ListNodeOfListOfTestInterference {
	TopBas_ListNodeOfListOfTestInterference* GetObject() {
	return (TopBas_ListNodeOfListOfTestInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopBas_ListNodeOfListOfTestInterference::~Handle_TopBas_ListNodeOfListOfTestInterference %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor TopBas_ListOfTestInterference;
class TopBas_ListOfTestInterference {
	public:
		%feature("autodoc", "1");
		TopBas_ListOfTestInterference();
		%feature("autodoc", "1");
		void Assign(const TopBas_ListOfTestInterference &Other);
		%feature("autodoc", "1");
		void operator=(const TopBas_ListOfTestInterference &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopBas_TestInterference &I);
		%feature("autodoc", "1");
		void Prepend(const TopBas_TestInterference &I, TopBas_ListIteratorOfListOfTestInterference & theIt);
		%feature("autodoc", "1");
		void Prepend(TopBas_ListOfTestInterference & Other);
		%feature("autodoc", "1");
		void Append(const TopBas_TestInterference &I);
		%feature("autodoc", "1");
		void Append(const TopBas_TestInterference &I, TopBas_ListIteratorOfListOfTestInterference & theIt);
		%feature("autodoc", "1");
		void Append(TopBas_ListOfTestInterference & Other);
		%feature("autodoc", "1");
		TopBas_TestInterference & First() const;
		%feature("autodoc", "1");
		TopBas_TestInterference & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopBas_ListIteratorOfListOfTestInterference & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopBas_TestInterference &I, TopBas_ListIteratorOfListOfTestInterference & It);
		%feature("autodoc", "1");
		void InsertBefore(TopBas_ListOfTestInterference & Other, TopBas_ListIteratorOfListOfTestInterference & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopBas_TestInterference &I, TopBas_ListIteratorOfListOfTestInterference & It);
		%feature("autodoc", "1");
		void InsertAfter(TopBas_ListOfTestInterference & Other, TopBas_ListIteratorOfListOfTestInterference & It);

};
%feature("shadow") TopBas_ListOfTestInterference::~TopBas_ListOfTestInterference %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor TopBas_ListIteratorOfListOfTestInterference;
class TopBas_ListIteratorOfListOfTestInterference {
	public:
		%feature("autodoc", "1");
		TopBas_ListIteratorOfListOfTestInterference();
		%feature("autodoc", "1");
		TopBas_ListIteratorOfListOfTestInterference(const TopBas_ListOfTestInterference &L);
		%feature("autodoc", "1");
		void Initialize(const TopBas_ListOfTestInterference &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopBas_TestInterference & Value() const;

};
%feature("shadow") TopBas_ListIteratorOfListOfTestInterference::~TopBas_ListIteratorOfListOfTestInterference %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor TopBas_ListNodeOfListOfTestInterference;
class TopBas_ListNodeOfListOfTestInterference : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopBas_ListNodeOfListOfTestInterference(const TopBas_TestInterference &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopBas_TestInterference & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopBas_ListNodeOfListOfTestInterference {
	Handle_TopBas_ListNodeOfListOfTestInterference GetHandle() {
	return *(Handle_TopBas_ListNodeOfListOfTestInterference*) &$self;
	}
};
%extend TopBas_ListNodeOfListOfTestInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopBas_ListNodeOfListOfTestInterference::~TopBas_ListNodeOfListOfTestInterference %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor TopBas_TestInterference;
class TopBas_TestInterference {
	public:
		%feature("autodoc", "1");
		TopBas_TestInterference();
		%feature("autodoc", "1");
		TopBas_TestInterference(const Standard_Real &Inters, const Standard_Integer &Bound, const TopAbs_Orientation Orient, const TopAbs_Orientation Trans, const TopAbs_Orientation BTrans);
		%feature("autodoc", "1");
		void Intersection(const Standard_Real &I);
		%feature("autodoc", "1");
		void Boundary(const Standard_Integer &B);
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		void Transition(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		void BoundaryTransition(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		const Standard_Real & Intersection() const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeIntersection() {
				return (Standard_Real) $self->ChangeIntersection();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeIntersection(Standard_Real value ) {
				$self->ChangeIntersection()=value;
				}
		};
		%feature("autodoc", "1");
		const Standard_Integer & Boundary() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeBoundary() {
				return (Standard_Integer) $self->ChangeBoundary();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeBoundary(Standard_Integer value ) {
				$self->ChangeBoundary()=value;
				}
		};
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Transition() const;
		%feature("autodoc", "1");
		TopAbs_Orientation BoundaryTransition() const;

};
%feature("shadow") TopBas_TestInterference::~TopBas_TestInterference %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}
