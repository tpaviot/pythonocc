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
%module Intrv

%include Intrv_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
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

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include Intrv_dependencies.i


%include Intrv_headers.i


enum Intrv_Position {
	Intrv_Before,
	Intrv_JustBefore,
	Intrv_OverlappingAtStart,
	Intrv_JustEnclosingAtEnd,
	Intrv_Enclosing,
	Intrv_JustOverlappingAtStart,
	Intrv_Similar,
	Intrv_JustEnclosingAtStart,
	Intrv_Inside,
	Intrv_JustOverlappingAtEnd,
	Intrv_OverlappingAtEnd,
	Intrv_JustAfter,
	Intrv_After,
	};



%nodefaultctor Handle_Intrv_SequenceNodeOfSequenceOfInterval;
class Handle_Intrv_SequenceNodeOfSequenceOfInterval : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval();
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval(const Handle_Intrv_SequenceNodeOfSequenceOfInterval &aHandle);
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval(const Intrv_SequenceNodeOfSequenceOfInterval *anItem);
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval & operator=(const Handle_Intrv_SequenceNodeOfSequenceOfInterval &aHandle);
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval & operator=(const Intrv_SequenceNodeOfSequenceOfInterval *anItem);
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Intrv_SequenceNodeOfSequenceOfInterval {
	Intrv_SequenceNodeOfSequenceOfInterval* GetObject() {
	return (Intrv_SequenceNodeOfSequenceOfInterval*)$self->Access();
	}
};
%extend Handle_Intrv_SequenceNodeOfSequenceOfInterval {
	~Handle_Intrv_SequenceNodeOfSequenceOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Intrv_SequenceNodeOfSequenceOfInterval\n");}
	}
};


%nodefaultctor Intrv_Intervals;
class Intrv_Intervals {
	public:
		%feature("autodoc", "1");
		Intrv_Intervals();
		%feature("autodoc", "1");
		Intrv_Intervals(const Intrv_Interval &Int);
		%feature("autodoc", "1");
		Intrv_Intervals(const Intrv_Intervals &Int);
		%feature("autodoc", "1");
		void Intersect(const Intrv_Interval &Tool);
		%feature("autodoc", "1");
		void Intersect(const Intrv_Intervals &Tool);
		%feature("autodoc", "1");
		void Subtract(const Intrv_Interval &Tool);
		%feature("autodoc", "1");
		void Subtract(const Intrv_Intervals &Tool);
		%feature("autodoc", "1");
		void Unite(const Intrv_Interval &Tool);
		%feature("autodoc", "1");
		void Unite(const Intrv_Intervals &Tool);
		%feature("autodoc", "1");
		void XUnite(const Intrv_Interval &Tool);
		%feature("autodoc", "1");
		void XUnite(const Intrv_Intervals &Tool);
		%feature("autodoc", "1");
		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		const Intrv_Interval & Value(const Standard_Integer Index) const;

};
%extend Intrv_Intervals {
	~Intrv_Intervals() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Intrv_Intervals\n");}
	}
};


%nodefaultctor Intrv_SequenceNodeOfSequenceOfInterval;
class Intrv_SequenceNodeOfSequenceOfInterval : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Intrv_SequenceNodeOfSequenceOfInterval(const Intrv_Interval &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Intrv_Interval & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Intrv_SequenceNodeOfSequenceOfInterval {
	Handle_Intrv_SequenceNodeOfSequenceOfInterval GetHandle() {
	return *(Handle_Intrv_SequenceNodeOfSequenceOfInterval*) &$self;
	}
};
%extend Intrv_SequenceNodeOfSequenceOfInterval {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Intrv_SequenceNodeOfSequenceOfInterval {
	~Intrv_SequenceNodeOfSequenceOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Intrv_SequenceNodeOfSequenceOfInterval\n");}
	}
};


%nodefaultctor Intrv_Interval;
class Intrv_Interval {
	public:
		%feature("autodoc", "1");
		Intrv_Interval();
		%feature("autodoc", "1");
		Intrv_Interval(const Standard_Real Start, const Standard_Real End);
		%feature("autodoc", "1");
		Intrv_Interval(const Standard_Real Start, const Standard_ShortReal TolStart, const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc", "1");
		Standard_Real Start() const;
		%feature("autodoc", "1");
		Standard_Real End() const;
		%feature("autodoc", "1");
		Standard_ShortReal TolStart() const;
		%feature("autodoc", "1");
		Standard_ShortReal TolEnd() const;
		%feature("autodoc", "1");
		void Bounds(Standard_Real &OutValue, Standard_ShortReal & TolStart, Standard_Real &OutValue, Standard_ShortReal & TolEnd) const;
		%feature("autodoc", "1");
		void SetStart(const Standard_Real Start, const Standard_ShortReal TolStart);
		%feature("autodoc", "1");
		void FuseAtStart(const Standard_Real Start, const Standard_ShortReal TolStart);
		%feature("autodoc", "1");
		void CutAtStart(const Standard_Real Start, const Standard_ShortReal TolStart);
		%feature("autodoc", "1");
		void SetEnd(const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc", "1");
		void FuseAtEnd(const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc", "1");
		void CutAtEnd(const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc", "1");
		Standard_Boolean IsProbablyEmpty() const;
		%feature("autodoc", "1");
		Intrv_Position Position(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBefore(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAfter(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsInside(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosing(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustEnclosingAtStart(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustEnclosingAtEnd(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustBefore(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustAfter(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOverlappingAtStart(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOverlappingAtEnd(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustOverlappingAtStart(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustOverlappingAtEnd(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSimilar(const Intrv_Interval &Other) const;

};
%extend Intrv_Interval {
	~Intrv_Interval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Intrv_Interval\n");}
	}
};


%nodefaultctor Intrv_SequenceOfInterval;
class Intrv_SequenceOfInterval : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Intrv_SequenceOfInterval();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Intrv_SequenceOfInterval & Assign(const Intrv_SequenceOfInterval &Other);
		%feature("autodoc", "1");
		const Intrv_SequenceOfInterval & operator=(const Intrv_SequenceOfInterval &Other);
		%feature("autodoc", "1");
		void Append(const Intrv_Interval &T);
		%feature("autodoc", "1");
		void Append(Intrv_SequenceOfInterval & S);
		%feature("autodoc", "1");
		void Prepend(const Intrv_Interval &T);
		%feature("autodoc", "1");
		void Prepend(Intrv_SequenceOfInterval & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Intrv_Interval &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Intrv_SequenceOfInterval & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Intrv_Interval &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Intrv_SequenceOfInterval & S);
		%feature("autodoc", "1");
		const Intrv_Interval & First() const;
		%feature("autodoc", "1");
		const Intrv_Interval & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Intrv_SequenceOfInterval & S);
		%feature("autodoc", "1");
		const Intrv_Interval & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Intrv_Interval & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Intrv_Interval &I);
		%feature("autodoc", "1");
		Intrv_Interval & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Intrv_Interval & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Intrv_SequenceOfInterval {
	~Intrv_SequenceOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Intrv_SequenceOfInterval\n");}
	}
};
