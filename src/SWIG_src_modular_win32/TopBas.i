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
%module TopBas

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


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
		Handle_TopBas_ListNodeOfListOfTestInterference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopBas_ListNodeOfListOfTestInterference {
	TopBas_ListNodeOfListOfTestInterference* GetObject() {
	return (TopBas_ListNodeOfListOfTestInterference*)$self->Access();
	}
};
%extend Handle_TopBas_ListNodeOfListOfTestInterference {
	~Handle_TopBas_ListNodeOfListOfTestInterference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TopBas_ListNodeOfListOfTestInterference\n");}
	}
};

%nodefaultctor TopBas_ListOfTestInterference;
class TopBas_ListOfTestInterference {
	public:
		%feature("autodoc", "1");
		TopBas_ListOfTestInterference();
		%feature("autodoc", "1");
		void Assign(const TopBas_ListOfTestInterference &Other);
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
%extend TopBas_ListOfTestInterference {
	~TopBas_ListOfTestInterference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TopBas_ListOfTestInterference\n");}
	}
};

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
	~TopBas_ListNodeOfListOfTestInterference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TopBas_ListNodeOfListOfTestInterference\n");}
	}
};

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
%extend TopBas_ListIteratorOfListOfTestInterference {
	~TopBas_ListIteratorOfListOfTestInterference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TopBas_ListIteratorOfListOfTestInterference\n");}
	}
};

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
		%feature("autodoc", "1");
		Standard_Real & ChangeIntersection();
		%feature("autodoc", "1");
		const Standard_Integer & Boundary() const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeBoundary();
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Transition() const;
		%feature("autodoc", "1");
		TopAbs_Orientation BoundaryTransition() const;

};
%extend TopBas_TestInterference {
	~TopBas_TestInterference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TopBas_TestInterference\n");}
	}
};