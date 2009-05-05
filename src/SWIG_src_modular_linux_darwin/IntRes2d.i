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
%module IntRes2d

%include IntRes2d_renames.i

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


%include IntRes2d_dependencies.i


%include IntRes2d_headers.i


enum IntRes2d_Position {
	IntRes2d_Head,
	IntRes2d_Middle,
	IntRes2d_End,
	};

enum IntRes2d_TypeTrans {
	IntRes2d_In,
	IntRes2d_Out,
	IntRes2d_Touch,
	IntRes2d_Undecided,
	};

enum IntRes2d_Situation {
	IntRes2d_Inside,
	IntRes2d_Outside,
	IntRes2d_Unknown,
	};



%nodefaultctor Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint;
class Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint();
		%feature("autodoc", "1");
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint(const Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint &aHandle);
		%feature("autodoc", "1");
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint(const IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint *anItem);
		%feature("autodoc", "1");
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint {
	IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint* GetObject() {
	return (IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint*)$self->Access();
	}
};
%extend Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint {
	~Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint\n");}
	}
};


%nodefaultctor Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment;
class Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment();
		%feature("autodoc", "1");
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment(const Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment &aHandle);
		%feature("autodoc", "1");
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment(const IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment *anItem);
		%feature("autodoc", "1");
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment {
	IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment* GetObject() {
	return (IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment*)$self->Access();
	}
};
%extend Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment {
	~Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment\n");}
	}
};


%nodefaultctor IntRes2d_SequenceOfIntersectionSegment;
class IntRes2d_SequenceOfIntersectionSegment : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntRes2d_SequenceOfIntersectionSegment();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntRes2d_SequenceOfIntersectionSegment & Assign(const IntRes2d_SequenceOfIntersectionSegment &Other);
		%feature("autodoc", "1");
		void Append(const IntRes2d_IntersectionSegment &T);
		%feature("autodoc", "1");
		void Append(IntRes2d_SequenceOfIntersectionSegment & S);
		%feature("autodoc", "1");
		void Prepend(const IntRes2d_IntersectionSegment &T);
		%feature("autodoc", "1");
		void Prepend(IntRes2d_SequenceOfIntersectionSegment & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntRes2d_IntersectionSegment &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntRes2d_SequenceOfIntersectionSegment & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntRes2d_IntersectionSegment &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntRes2d_SequenceOfIntersectionSegment & S);
		%feature("autodoc", "1");
		const IntRes2d_IntersectionSegment & First() const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionSegment & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntRes2d_SequenceOfIntersectionSegment & S);
		%feature("autodoc", "1");
		const IntRes2d_IntersectionSegment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionSegment & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntRes2d_IntersectionSegment &I);
		%feature("autodoc", "1");
		IntRes2d_IntersectionSegment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntRes2d_IntersectionSegment & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend IntRes2d_SequenceOfIntersectionSegment {
	~IntRes2d_SequenceOfIntersectionSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntRes2d_SequenceOfIntersectionSegment\n");}
	}
};


%nodefaultctor IntRes2d_Transition;
class IntRes2d_Transition {
	public:
		%feature("autodoc", "1");
		IntRes2d_Transition();
		%feature("autodoc", "1");
		IntRes2d_Transition(const Standard_Boolean Tangent, const IntRes2d_Position Pos, const IntRes2d_TypeTrans Type);
		%feature("autodoc", "1");
		IntRes2d_Transition(const Standard_Boolean Tangent, const IntRes2d_Position Pos, const IntRes2d_Situation Situ, const Standard_Boolean Oppos);
		%feature("autodoc", "1");
		IntRes2d_Transition(const IntRes2d_Position Pos);
		%feature("autodoc", "1");
		void SetValue(const Standard_Boolean Tangent, const IntRes2d_Position Pos, const IntRes2d_TypeTrans Type);
		%feature("autodoc", "1");
		void SetValue(const Standard_Boolean Tangent, const IntRes2d_Position Pos, const IntRes2d_Situation Situ, const Standard_Boolean Oppos);
		%feature("autodoc", "1");
		void SetValue(const IntRes2d_Position Pos);
		%feature("autodoc", "1");
		void SetPosition(const IntRes2d_Position Pos);
		%feature("autodoc", "1");
		IntRes2d_Position PositionOnCurve() const;
		%feature("autodoc", "1");
		IntRes2d_TypeTrans TransitionType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent() const;
		%feature("autodoc", "1");
		IntRes2d_Situation Situation() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpposite() const;
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetIntRes2d_Transitiontangent() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntRes2d_Transitiontangent(const Standard_Boolean p);
		%feature("autodoc", "1");
		IntRes2d_Position _CSFDB_GetIntRes2d_Transitionposit() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntRes2d_Transitionposit(const IntRes2d_Position p);
		%feature("autodoc", "1");
		IntRes2d_TypeTrans _CSFDB_GetIntRes2d_Transitiontypetra() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntRes2d_Transitiontypetra(const IntRes2d_TypeTrans p);
		%feature("autodoc", "1");
		IntRes2d_Situation _CSFDB_GetIntRes2d_Transitionsituat() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntRes2d_Transitionsituat(const IntRes2d_Situation p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetIntRes2d_Transitionoppos() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntRes2d_Transitionoppos(const Standard_Boolean p);

};
%extend IntRes2d_Transition {
	~IntRes2d_Transition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntRes2d_Transition\n");}
	}
};


%nodefaultctor IntRes2d_IntersectionSegment;
class IntRes2d_IntersectionSegment {
	public:
		%feature("autodoc", "1");
		IntRes2d_IntersectionSegment();
		%feature("autodoc", "1");
		IntRes2d_IntersectionSegment(const IntRes2d_IntersectionPoint &P1, const IntRes2d_IntersectionPoint &P2, const Standard_Boolean Oppos, const Standard_Boolean ReverseFlag);
		%feature("autodoc", "1");
		IntRes2d_IntersectionSegment(const IntRes2d_IntersectionPoint &P, const Standard_Boolean First, const Standard_Boolean Oppos, const Standard_Boolean ReverseFlag);
		%feature("autodoc", "1");
		IntRes2d_IntersectionSegment(const Standard_Boolean Oppos);
		%feature("autodoc", "1");
		Standard_Boolean IsOpposite() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstPoint() const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & FirstPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastPoint() const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & LastPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetIntRes2d_IntersectionSegmentoppos() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntRes2d_IntersectionSegmentoppos(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetIntRes2d_IntersectionSegmentfirst() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntRes2d_IntersectionSegmentfirst(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetIntRes2d_IntersectionSegmentlast() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntRes2d_IntersectionSegmentlast(const Standard_Boolean p);
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & _CSFDB_GetIntRes2d_IntersectionSegmentptfirst() const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & _CSFDB_GetIntRes2d_IntersectionSegmentptlast() const;

};
%extend IntRes2d_IntersectionSegment {
	~IntRes2d_IntersectionSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntRes2d_IntersectionSegment\n");}
	}
};


%nodefaultctor IntRes2d_IntersectionPoint;
class IntRes2d_IntersectionPoint {
	public:
		%feature("autodoc", "1");
		IntRes2d_IntersectionPoint();
		%feature("autodoc", "1");
		IntRes2d_IntersectionPoint(const gp_Pnt2d &P, const Standard_Real Uc1, const Standard_Real Uc2, const IntRes2d_Transition &Trans1, const IntRes2d_Transition &Trans2, const Standard_Boolean ReversedFlag);
		%feature("autodoc", "1");
		void SetValues(const gp_Pnt2d &P, const Standard_Real Uc1, const Standard_Real Uc2, const IntRes2d_Transition &Trans1, const IntRes2d_Transition &Trans2, const Standard_Boolean ReversedFlag);
		%feature("autodoc", "1");
		const gp_Pnt2d & Value() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnFirst() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnSecond() const;
		%feature("autodoc", "1");
		const IntRes2d_Transition & TransitionOfFirst() const;
		%feature("autodoc", "1");
		const IntRes2d_Transition & TransitionOfSecond() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetIntRes2d_IntersectionPointpt() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetIntRes2d_IntersectionPointp1() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntRes2d_IntersectionPointp1(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetIntRes2d_IntersectionPointp2() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntRes2d_IntersectionPointp2(const Standard_Real p);
		%feature("autodoc", "1");
		const IntRes2d_Transition & _CSFDB_GetIntRes2d_IntersectionPointtrans1() const;
		%feature("autodoc", "1");
		const IntRes2d_Transition & _CSFDB_GetIntRes2d_IntersectionPointtrans2() const;

};
%extend IntRes2d_IntersectionPoint {
	~IntRes2d_IntersectionPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntRes2d_IntersectionPoint\n");}
	}
};


%nodefaultctor IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment;
class IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment(const IntRes2d_IntersectionSegment &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntRes2d_IntersectionSegment & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment {
	Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment GetHandle() {
	return *(Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment*) &$self;
	}
};
%extend IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment {
	~IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment\n");}
	}
};


%nodefaultctor IntRes2d_Intersection;
class IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & Point(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionSegment & Segment(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void SetReversedParameters(const Standard_Boolean flag);

};
%extend IntRes2d_Intersection {
	~IntRes2d_Intersection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntRes2d_Intersection\n");}
	}
};


%nodefaultctor IntRes2d_Domain;
class IntRes2d_Domain {
	public:
		%feature("autodoc", "1");
		IntRes2d_Domain();
		%feature("autodoc", "1");
		IntRes2d_Domain(const gp_Pnt2d &Pnt1, const Standard_Real Par1, const Standard_Real Tol1, const gp_Pnt2d &Pnt2, const Standard_Real Par2, const Standard_Real Tol2);
		%feature("autodoc", "1");
		IntRes2d_Domain(const gp_Pnt2d &Pnt, const Standard_Real Par, const Standard_Real Tol, const Standard_Boolean First);
		%feature("autodoc", "1");
		void SetValues(const gp_Pnt2d &Pnt1, const Standard_Real Par1, const Standard_Real Tol1, const gp_Pnt2d &Pnt2, const Standard_Real Par2, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void SetValues();
		%feature("autodoc", "1");
		void SetValues(const gp_Pnt2d &Pnt, const Standard_Real Par, const Standard_Real Tol, const Standard_Boolean First);
		%feature("autodoc", "1");
		void SetEquivalentParameters(const Standard_Real p_first, const Standard_Real p_last);
		%feature("autodoc", "1");
		Standard_Boolean HasFirstPoint() const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & FirstPoint() const;
		%feature("autodoc", "1");
		Standard_Real FirstTolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastPoint() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & LastPoint() const;
		%feature("autodoc", "1");
		Standard_Real LastTolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		void EquivalentParameters(Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%extend IntRes2d_Domain {
	~IntRes2d_Domain() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntRes2d_Domain\n");}
	}
};


%nodefaultctor IntRes2d_SequenceOfIntersectionPoint;
class IntRes2d_SequenceOfIntersectionPoint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntRes2d_SequenceOfIntersectionPoint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntRes2d_SequenceOfIntersectionPoint & Assign(const IntRes2d_SequenceOfIntersectionPoint &Other);
		%feature("autodoc", "1");
		void Append(const IntRes2d_IntersectionPoint &T);
		%feature("autodoc", "1");
		void Append(IntRes2d_SequenceOfIntersectionPoint & S);
		%feature("autodoc", "1");
		void Prepend(const IntRes2d_IntersectionPoint &T);
		%feature("autodoc", "1");
		void Prepend(IntRes2d_SequenceOfIntersectionPoint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntRes2d_IntersectionPoint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntRes2d_SequenceOfIntersectionPoint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntRes2d_IntersectionPoint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntRes2d_SequenceOfIntersectionPoint & S);
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & First() const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntRes2d_SequenceOfIntersectionPoint & S);
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntRes2d_IntersectionPoint &I);
		%feature("autodoc", "1");
		IntRes2d_IntersectionPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntRes2d_IntersectionPoint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend IntRes2d_SequenceOfIntersectionPoint {
	~IntRes2d_SequenceOfIntersectionPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntRes2d_SequenceOfIntersectionPoint\n");}
	}
};


%nodefaultctor IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint;
class IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint(const IntRes2d_IntersectionPoint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntRes2d_IntersectionPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint {
	Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint GetHandle() {
	return *(Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint*) &$self;
	}
};
%extend IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint {
	~IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint\n");}
	}
};
