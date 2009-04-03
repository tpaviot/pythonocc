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
%module Geom2dHatch

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i

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


%include Geom2dHatch_dependencies.i


%include Geom2dHatch_headers.i




%nodefaultctor Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher;
class Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher();
		%feature("autodoc", "1");
		Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher(const Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher(const Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher *anItem);
		%feature("autodoc", "1");
		Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher {
	Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher* GetObject() {
	return (Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher*)$self->Access();
	}
};
%extend Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher {
	~Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher\n");}
	}
};

%nodefaultctor Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher;
class Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher();
		%feature("autodoc", "1");
		Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher(const Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher(const Geom2dHatch_DataMapNodeOfHatchingsOfHatcher *anItem);
		%feature("autodoc", "1");
		Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher {
	Geom2dHatch_DataMapNodeOfHatchingsOfHatcher* GetObject() {
	return (Geom2dHatch_DataMapNodeOfHatchingsOfHatcher*)$self->Access();
	}
};
%extend Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher {
	~Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_ElementOfHatcher;
class Geom2dHatch_ElementOfHatcher {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_ElementOfHatcher();
		%feature("autodoc", "1");
		Geom2dHatch_ElementOfHatcher(const Geom2dHatch_ElementOfHatcher &Other);
		%feature("autodoc", "1");
		Geom2dHatch_ElementOfHatcher(const Geom2dAdaptor_Curve &Curve, const TopAbs_Orientation Orientation=TopAbs_FORWARD);
		%feature("autodoc", "1");
		const Geom2dAdaptor_Curve & Curve() const;
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve & ChangeCurve();
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation Orientation);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;

};
%extend Geom2dHatch_ElementOfHatcher {
	~Geom2dHatch_ElementOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_ElementOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_DataMapIteratorOfHatchingsOfHatcher;
class Geom2dHatch_DataMapIteratorOfHatchingsOfHatcher : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_DataMapIteratorOfHatchingsOfHatcher();
		%feature("autodoc", "1");
		Geom2dHatch_DataMapIteratorOfHatchingsOfHatcher(const Geom2dHatch_HatchingsOfHatcher &aMap);
		%feature("autodoc", "1");
		void Initialize(const Geom2dHatch_HatchingsOfHatcher &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Geom2dHatch_HatchingOfHatcher & Value() const;

};
%extend Geom2dHatch_DataMapIteratorOfHatchingsOfHatcher {
	~Geom2dHatch_DataMapIteratorOfHatchingsOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_DataMapIteratorOfHatchingsOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_MapOfElementsOfElementsOfHatcher;
class Geom2dHatch_MapOfElementsOfElementsOfHatcher : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_MapOfElementsOfElementsOfHatcher(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Geom2dHatch_MapOfElementsOfElementsOfHatcher & Assign(const Geom2dHatch_MapOfElementsOfElementsOfHatcher &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Geom2dHatch_ElementOfHatcher &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Geom2dHatch_ElementOfHatcher & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Geom2dHatch_ElementOfHatcher & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Geom2dHatch_ElementOfHatcher & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Geom2dHatch_ElementOfHatcher & operator()(const Standard_Integer &K);

};
%extend Geom2dHatch_MapOfElementsOfElementsOfHatcher {
	~Geom2dHatch_MapOfElementsOfElementsOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_MapOfElementsOfElementsOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_FClass2dOfClassifierOfHatcher;
class Geom2dHatch_FClass2dOfClassifierOfHatcher {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_FClass2dOfClassifierOfHatcher();
		%feature("autodoc", "1");
		void Reset(const gp_Lin2d &L, const Standard_Real P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Compare(const Geom2dAdaptor_Curve &E, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Geom2dHatch_Intersector & Intersector();
		%feature("autodoc", "1");
		Standard_Integer ClosestIntersection() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		Standard_Boolean IsHeadOrEnd() const;

};
%extend Geom2dHatch_FClass2dOfClassifierOfHatcher {
	~Geom2dHatch_FClass2dOfClassifierOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_FClass2dOfClassifierOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_ClassifierOfHatcher;
class Geom2dHatch_ClassifierOfHatcher {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_ClassifierOfHatcher();
		%feature("autodoc", "1");
		Geom2dHatch_ClassifierOfHatcher(Geom2dHatch_ElementsOfHatcher & F, const gp_Pnt2d &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(Geom2dHatch_ElementsOfHatcher & F, const gp_Pnt2d &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		Standard_Boolean Rejected() const;
		%feature("autodoc", "1");
		Standard_Boolean NoWires() const;
		%feature("autodoc", "1");
		const Geom2dAdaptor_Curve & Edge() const;
		%feature("autodoc", "1");
		Standard_Real EdgeParameter() const;
		%feature("autodoc", "1");
		IntRes2d_Position Position() const;

};
%extend Geom2dHatch_ClassifierOfHatcher {
	~Geom2dHatch_ClassifierOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_ClassifierOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_Intersector;
class Geom2dHatch_Intersector : public Geom2dInt_GInter {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_Intersector(const Standard_Real Confusion, const Standard_Real Tangency);
		%feature("autodoc", "1");
		Standard_Real ConfusionTolerance() const;
		%feature("autodoc", "1");
		void SetConfusionTolerance(const Standard_Real Confusion);
		%feature("autodoc", "1");
		Standard_Real TangencyTolerance() const;
		%feature("autodoc", "1");
		void SetTangencyTolerance(const Standard_Real Tangency);
		%feature("autodoc", "1");
		void Intersect(const Geom2dAdaptor_Curve &C1, const Geom2dAdaptor_Curve &C2);
		%feature("autodoc", "1");
		Geom2dHatch_Intersector();
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L, const Standard_Real P, const Standard_Real Tol, const Geom2dAdaptor_Curve &E);
		%feature("autodoc", "1");
		void LocalGeometry(const Geom2dAdaptor_Curve &E, const Standard_Real U, gp_Dir2d & T, gp_Dir2d & N, Standard_Real &OutValue) const;

};
%extend Geom2dHatch_Intersector {
	~Geom2dHatch_Intersector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_Intersector\n");}
	}
};

%nodefaultctor Geom2dHatch_HatchingsOfHatcher;
class Geom2dHatch_HatchingsOfHatcher : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_HatchingsOfHatcher(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Geom2dHatch_HatchingsOfHatcher & Assign(const Geom2dHatch_HatchingsOfHatcher &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Geom2dHatch_HatchingOfHatcher &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Geom2dHatch_HatchingOfHatcher & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Geom2dHatch_HatchingOfHatcher & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Geom2dHatch_HatchingOfHatcher & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Geom2dHatch_HatchingOfHatcher & operator()(const Standard_Integer &K);

};
%extend Geom2dHatch_HatchingsOfHatcher {
	~Geom2dHatch_HatchingsOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_HatchingsOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_HatchingOfHatcher;
class Geom2dHatch_HatchingOfHatcher {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_HatchingOfHatcher();
		%feature("autodoc", "1");
		Geom2dHatch_HatchingOfHatcher(const Geom2dAdaptor_Curve &Curve);
		%feature("autodoc", "1");
		const Geom2dAdaptor_Curve & Curve() const;
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve & ChangeCurve();
		%feature("autodoc", "1");
		void TrimDone(const Standard_Boolean Flag);
		%feature("autodoc", "1");
		Standard_Boolean TrimDone() const;
		%feature("autodoc", "1");
		void TrimFailed(const Standard_Boolean Flag);
		%feature("autodoc", "1");
		Standard_Boolean TrimFailed() const;
		%feature("autodoc", "1");
		void IsDone(const Standard_Boolean Flag);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Status(const HatchGen_ErrorStatus Status);
		%feature("autodoc", "1");
		HatchGen_ErrorStatus Status() const;
		%feature("autodoc", "1");
		void AddPoint(const HatchGen_PointOnHatching &Point, const Standard_Real Confusion);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const HatchGen_PointOnHatching & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		HatchGen_PointOnHatching & ChangePoint(const Standard_Integer Index);
		%feature("autodoc", "1");
		void RemPoint(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ClrPoints();
		%feature("autodoc", "1");
		void AddDomain(const HatchGen_Domain &Domain);
		%feature("autodoc", "1");
		Standard_Integer NbDomains() const;
		%feature("autodoc", "1");
		const HatchGen_Domain & Domain(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void RemDomain(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ClrDomains();
		%feature("autodoc", "1");
		gp_Pnt2d ClassificationPoint() const;

};
%extend Geom2dHatch_HatchingOfHatcher {
	~Geom2dHatch_HatchingOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_HatchingOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher;
class Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher(const Standard_Integer &K, const Geom2dHatch_ElementOfHatcher &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Geom2dHatch_ElementOfHatcher & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher {
	Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher GetHandle() {
	return *(Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher*) &$self;
	}
};
%extend Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher {
	~Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_DataMapNodeOfHatchingsOfHatcher;
class Geom2dHatch_DataMapNodeOfHatchingsOfHatcher : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_DataMapNodeOfHatchingsOfHatcher(const Standard_Integer &K, const Geom2dHatch_HatchingOfHatcher &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Geom2dHatch_HatchingOfHatcher & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2dHatch_DataMapNodeOfHatchingsOfHatcher {
	Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher GetHandle() {
	return *(Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher*) &$self;
	}
};
%extend Geom2dHatch_DataMapNodeOfHatchingsOfHatcher {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2dHatch_DataMapNodeOfHatchingsOfHatcher {
	~Geom2dHatch_DataMapNodeOfHatchingsOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_DataMapNodeOfHatchingsOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_Hatcher;
class Geom2dHatch_Hatcher {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_Hatcher(const Geom2dHatch_Intersector &Intersector, const Standard_Real Confusion2d, const Standard_Real Confusion3d, const Standard_Boolean KeepPnt=0, const Standard_Boolean KeepSeg=0);
		%feature("autodoc", "1");
		void Intersector(const Geom2dHatch_Intersector &Intersector);
		%feature("autodoc", "1");
		const Geom2dHatch_Intersector & Intersector();
		%feature("autodoc", "1");
		Geom2dHatch_Intersector & ChangeIntersector();
		%feature("autodoc", "1");
		void Confusion2d(const Standard_Real Confusion);
		%feature("autodoc", "1");
		Standard_Real Confusion2d() const;
		%feature("autodoc", "1");
		void Confusion3d(const Standard_Real Confusion);
		%feature("autodoc", "1");
		Standard_Real Confusion3d() const;
		%feature("autodoc", "1");
		void KeepPoints(const Standard_Boolean Keep);
		%feature("autodoc", "1");
		Standard_Boolean KeepPoints() const;
		%feature("autodoc", "1");
		void KeepSegments(const Standard_Boolean Keep);
		%feature("autodoc", "1");
		Standard_Boolean KeepSegments() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Geom2dAdaptor_Curve & ElementCurve(const Standard_Integer IndE) const;
		%feature("autodoc", "1");
		Standard_Integer AddElement(const Geom2dAdaptor_Curve &Curve, const TopAbs_Orientation Orientation=TopAbs_FORWARD);
		%feature("autodoc", "1");
		void RemElement(const Standard_Integer IndE);
		%feature("autodoc", "1");
		void ClrElements();
		%feature("autodoc", "1");
		const Geom2dAdaptor_Curve & HatchingCurve(const Standard_Integer IndH) const;
		%feature("autodoc", "1");
		Standard_Integer AddHatching(const Geom2dAdaptor_Curve &Curve);
		%feature("autodoc", "1");
		void RemHatching(const Standard_Integer IndH);
		%feature("autodoc", "1");
		void ClrHatchings();
		%feature("autodoc", "1");
		Standard_Integer NbPoints(const Standard_Integer IndH) const;
		%feature("autodoc", "1");
		const HatchGen_PointOnHatching & Point(const Standard_Integer IndH, const Standard_Integer IndP) const;
		%feature("autodoc", "1");
		void Trim();
		%feature("autodoc", "1");
		Standard_Integer Trim(const Geom2dAdaptor_Curve &Curve);
		%feature("autodoc", "1");
		void Trim(const Standard_Integer IndH);
		%feature("autodoc", "1");
		void ComputeDomains();
		%feature("autodoc", "1");
		void ComputeDomains(const Standard_Integer IndH);
		%feature("autodoc", "1");
		Standard_Boolean TrimDone(const Standard_Integer IndH) const;
		%feature("autodoc", "1");
		Standard_Boolean TrimFailed(const Standard_Integer IndH) const;
		%feature("autodoc", "1");
		HatchGen_ErrorStatus Status(const Standard_Integer IndH) const;
		%feature("autodoc", "1");
		Standard_Integer NbDomains(const Standard_Integer IndH) const;
		%feature("autodoc", "1");
		const HatchGen_Domain & Domain(const Standard_Integer IndH, const Standard_Integer IDom) const;
		%feature("autodoc", "1");
		void Dump() const;

};
%extend Geom2dHatch_Hatcher {
	~Geom2dHatch_Hatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_Hatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_ElementsOfHatcher;
class Geom2dHatch_ElementsOfHatcher {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_ElementsOfHatcher();
		%feature("autodoc", "1");
		Geom2dHatch_ElementsOfHatcher(const Geom2dHatch_ElementsOfHatcher &Other);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Geom2dHatch_ElementOfHatcher &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Geom2dHatch_ElementOfHatcher & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Geom2dHatch_ElementOfHatcher & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Geom2dHatch_ElementOfHatcher & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Geom2dHatch_ElementOfHatcher & operator()(const Standard_Integer &K);
		%feature("autodoc", "1");
		Standard_Boolean Reject(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		Standard_Boolean Segment(const gp_Pnt2d &P, gp_Lin2d & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean OtherSegment(const gp_Pnt2d &P, gp_Lin2d & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void InitWires();
		%feature("autodoc", "1");
		Standard_Boolean MoreWires() const;
		%feature("autodoc", "1");
		void NextWire();
		%feature("autodoc", "1");
		Standard_Boolean RejectWire(const gp_Lin2d &L, const Standard_Real Par) const;
		%feature("autodoc", "1");
		void InitEdges();
		%feature("autodoc", "1");
		Standard_Boolean MoreEdges() const;
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		Standard_Boolean RejectEdge(const gp_Lin2d &L, const Standard_Real Par) const;
		%feature("autodoc", "1");
		void CurrentEdge(Geom2dAdaptor_Curve & E, TopAbs_Orientation & Or) const;

};
%extend Geom2dHatch_ElementsOfHatcher {
	~Geom2dHatch_ElementsOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_ElementsOfHatcher\n");}
	}
};

%nodefaultctor Geom2dHatch_DataMapIteratorOfMapOfElementsOfElementsOfHatcher;
class Geom2dHatch_DataMapIteratorOfMapOfElementsOfElementsOfHatcher : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Geom2dHatch_DataMapIteratorOfMapOfElementsOfElementsOfHatcher();
		%feature("autodoc", "1");
		Geom2dHatch_DataMapIteratorOfMapOfElementsOfElementsOfHatcher(const Geom2dHatch_MapOfElementsOfElementsOfHatcher &aMap);
		%feature("autodoc", "1");
		void Initialize(const Geom2dHatch_MapOfElementsOfElementsOfHatcher &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Geom2dHatch_ElementOfHatcher & Value() const;

};
%extend Geom2dHatch_DataMapIteratorOfMapOfElementsOfElementsOfHatcher {
	~Geom2dHatch_DataMapIteratorOfMapOfElementsOfElementsOfHatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dHatch_DataMapIteratorOfMapOfElementsOfElementsOfHatcher\n");}
	}
};