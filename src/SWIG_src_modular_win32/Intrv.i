/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module Intrv

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
		Handle_Intrv_SequenceNodeOfSequenceOfInterval const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Intrv_SequenceNodeOfSequenceOfInterval {
	Intrv_SequenceNodeOfSequenceOfInterval* GetObject() {
	return (Intrv_SequenceNodeOfSequenceOfInterval*)$self->Access();
	}
};
%extend Handle_Intrv_SequenceNodeOfSequenceOfInterval {
	~Handle_Intrv_SequenceNodeOfSequenceOfInterval() {
	printf("Call custom destructor for instance of Handle_Intrv_SequenceNodeOfSequenceOfInterval\n");
	}
};

%nodefaultctor Intrv_Intervals;
class Intrv_Intervals {
	public:
		%feature("autodoc", "1");
		~Intrv_Intervals();
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

%nodefaultctor Intrv_Interval;
class Intrv_Interval {
	public:
		%feature("autodoc", "1");
		~Intrv_Interval();
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

%nodefaultctor Intrv_SequenceOfInterval;
class Intrv_SequenceOfInterval : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Intrv_SequenceOfInterval();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Intrv_SequenceOfInterval();
		%feature("autodoc", "1");
		const Intrv_SequenceOfInterval & Assign(const Intrv_SequenceOfInterval &Other);
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
	~Intrv_SequenceNodeOfSequenceOfInterval() {
	printf("Call custom destructor for instance of Intrv_SequenceNodeOfSequenceOfInterval\n");
	}
};