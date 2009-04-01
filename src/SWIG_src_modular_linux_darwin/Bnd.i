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
%module Bnd

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


%include Bnd_dependencies.i


%include Bnd_headers.i




%nodefaultctor Handle_Bnd_SequenceNodeOfSeqOfBox;
class Handle_Bnd_SequenceNodeOfSeqOfBox : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Bnd_SequenceNodeOfSeqOfBox();
		%feature("autodoc", "1");
		Handle_Bnd_SequenceNodeOfSeqOfBox(const Handle_Bnd_SequenceNodeOfSeqOfBox &aHandle);
		%feature("autodoc", "1");
		Handle_Bnd_SequenceNodeOfSeqOfBox(const Bnd_SequenceNodeOfSeqOfBox *anItem);
		%feature("autodoc", "1");
		Handle_Bnd_SequenceNodeOfSeqOfBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bnd_SequenceNodeOfSeqOfBox {
	Bnd_SequenceNodeOfSeqOfBox* GetObject() {
	return (Bnd_SequenceNodeOfSeqOfBox*)$self->Access();
	}
};
%extend Handle_Bnd_SequenceNodeOfSeqOfBox {
	~Handle_Bnd_SequenceNodeOfSeqOfBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Bnd_SequenceNodeOfSeqOfBox\n");}
	}
};

%nodefaultctor Handle_Bnd_HArray1OfBox2d;
class Handle_Bnd_HArray1OfBox2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfBox2d();
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfBox2d(const Handle_Bnd_HArray1OfBox2d &aHandle);
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfBox2d(const Bnd_HArray1OfBox2d *anItem);
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfBox2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bnd_HArray1OfBox2d {
	Bnd_HArray1OfBox2d* GetObject() {
	return (Bnd_HArray1OfBox2d*)$self->Access();
	}
};
%extend Handle_Bnd_HArray1OfBox2d {
	~Handle_Bnd_HArray1OfBox2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Bnd_HArray1OfBox2d\n");}
	}
};

%nodefaultctor Handle_Bnd_HArray1OfBox;
class Handle_Bnd_HArray1OfBox : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfBox();
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfBox(const Handle_Bnd_HArray1OfBox &aHandle);
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfBox(const Bnd_HArray1OfBox *anItem);
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bnd_HArray1OfBox {
	Bnd_HArray1OfBox* GetObject() {
	return (Bnd_HArray1OfBox*)$self->Access();
	}
};
%extend Handle_Bnd_HArray1OfBox {
	~Handle_Bnd_HArray1OfBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Bnd_HArray1OfBox\n");}
	}
};

%nodefaultctor Bnd_B2d;
class Bnd_B2d {
	public:
		%feature("autodoc", "1");
		Bnd_B2d();
		%feature("autodoc", "1");
		Bnd_B2d(const gp_XY &theCenter, const gp_XY &theHSize);
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const gp_XY &thePnt);
		%feature("autodoc", "1");
		void Add(const gp_Pnt2d &thePnt);
		%feature("autodoc", "1");
		void Add(const Bnd_B2d &theBox);
		%feature("autodoc", "1");
		gp_XY CornerMin() const;
		%feature("autodoc", "1");
		gp_XY CornerMax() const;
		%feature("autodoc", "1");
		Standard_Real SquareExtent() const;
		%feature("autodoc", "1");
		void Enlarge(const Standard_Real aDiff);
		%feature("autodoc", "1");
		Standard_Boolean Limit(const Bnd_B2d &theOtherBox);
		%feature("autodoc", "1");
		Bnd_B2d Transformed(const gp_Trsf2d &theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY &thePnt) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY &theCenter, const Standard_Real theRadius, const Standard_Boolean isCircleHollow=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B2d &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B2d &theOtherBox, const gp_Trsf2d &theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax2d &theLine) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY &theP0, const gp_XY &theP1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B2d &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B2d &theBox, const gp_Trsf2d &theTrsf) const;
		%feature("autodoc", "1");
		void SetCenter(const gp_XY &theCenter);
		%feature("autodoc", "1");
		void SetHSize(const gp_XY &theHSize);

};
%extend Bnd_B2d {
	~Bnd_B2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_B2d\n");}
	}
};

%nodefaultctor Bnd_B2f;
class Bnd_B2f {
	public:
		%feature("autodoc", "1");
		Bnd_B2f();
		%feature("autodoc", "1");
		Bnd_B2f(const gp_XY &theCenter, const gp_XY &theHSize);
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const gp_XY &thePnt);
		%feature("autodoc", "1");
		void Add(const gp_Pnt2d &thePnt);
		%feature("autodoc", "1");
		void Add(const Bnd_B2f &theBox);
		%feature("autodoc", "1");
		gp_XY CornerMin() const;
		%feature("autodoc", "1");
		gp_XY CornerMax() const;
		%feature("autodoc", "1");
		Standard_Real SquareExtent() const;
		%feature("autodoc", "1");
		void Enlarge(const Standard_Real aDiff);
		%feature("autodoc", "1");
		Standard_Boolean Limit(const Bnd_B2f &theOtherBox);
		%feature("autodoc", "1");
		Bnd_B2f Transformed(const gp_Trsf2d &theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY &thePnt) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY &theCenter, const Standard_Real theRadius, const Standard_Boolean isCircleHollow=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B2f &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B2f &theOtherBox, const gp_Trsf2d &theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax2d &theLine) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY &theP0, const gp_XY &theP1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B2f &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B2f &theBox, const gp_Trsf2d &theTrsf) const;
		%feature("autodoc", "1");
		void SetCenter(const gp_XY &theCenter);
		%feature("autodoc", "1");
		void SetHSize(const gp_XY &theHSize);

};
%extend Bnd_B2f {
	~Bnd_B2f() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_B2f\n");}
	}
};

%nodefaultctor Bnd_BoundSortBox2d;
class Bnd_BoundSortBox2d {
	public:
		%feature("autodoc", "1");
		Bnd_BoundSortBox2d();
		%feature("autodoc", "1");
		void Initialize(const Bnd_Box2d &CompleteBox, const Handle_Bnd_HArray1OfBox2d &SetOfBox);
		%feature("autodoc", "1");
		void Initialize(const Handle_Bnd_HArray1OfBox2d &SetOfBox);
		%feature("autodoc", "1");
		void Initialize(const Bnd_Box2d &CompleteBox, const Standard_Integer nbComponents);
		%feature("autodoc", "1");
		void Add(const Bnd_Box2d &theBox, const Standard_Integer boxIndex);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Compare(const Bnd_Box2d &theBox);
		%feature("autodoc", "1");
		void Dump() const;

};
%extend Bnd_BoundSortBox2d {
	~Bnd_BoundSortBox2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_BoundSortBox2d\n");}
	}
};

%nodefaultctor Bnd_SequenceNodeOfSeqOfBox;
class Bnd_SequenceNodeOfSeqOfBox : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Bnd_SequenceNodeOfSeqOfBox(const Bnd_Box &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Bnd_SequenceNodeOfSeqOfBox {
	Handle_Bnd_SequenceNodeOfSeqOfBox GetHandle() {
	return *(Handle_Bnd_SequenceNodeOfSeqOfBox*) &$self;
	}
};
%extend Bnd_SequenceNodeOfSeqOfBox {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend Bnd_SequenceNodeOfSeqOfBox {
	~Bnd_SequenceNodeOfSeqOfBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_SequenceNodeOfSeqOfBox\n");}
	}
};

%nodefaultctor Bnd_Box;
class Bnd_Box {
	public:
		%feature("autodoc", "1");
		Bnd_Box();
		%feature("autodoc", "1");
		void SetWhole();
		%feature("autodoc", "1");
		void SetVoid();
		%feature("autodoc", "1");
		void Set(const gp_Pnt &P);
		%feature("autodoc", "1");
		void Set(const gp_Pnt &P, const gp_Dir &D);
		%feature("autodoc", "1");
		void Update(const Standard_Real aXmin, const Standard_Real aYmin, const Standard_Real aZmin, const Standard_Real aXmax, const Standard_Real aYmax, const Standard_Real aZmax);
		%feature("autodoc", "1");
		void Update(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		Standard_Real GetGap() const;
		%feature("autodoc", "1");
		void SetGap(const Standard_Real Tol);
		%feature("autodoc", "1");
		void Enlarge(const Standard_Real Tol);
		%feature("autodoc", "1");
		void Get(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void OpenXmin();
		%feature("autodoc", "1");
		void OpenXmax();
		%feature("autodoc", "1");
		void OpenYmin();
		%feature("autodoc", "1");
		void OpenYmax();
		%feature("autodoc", "1");
		void OpenZmin();
		%feature("autodoc", "1");
		void OpenZmax();
		%feature("autodoc", "1");
		Standard_Boolean IsOpenXmin() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpenXmax() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpenYmin() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpenYmax() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpenZmin() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpenZmax() const;
		%feature("autodoc", "1");
		Standard_Boolean IsWhole() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;
		%feature("autodoc", "1");
		Standard_Boolean IsXThin(const Standard_Real tol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsYThin(const Standard_Real tol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsZThin(const Standard_Real tol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsThin(const Standard_Real tol) const;
		%feature("autodoc", "1");
		Bnd_Box Transformed(const gp_Trsf &T) const;
		%feature("autodoc", "1");
		void Add(const Bnd_Box &Other);
		%feature("autodoc", "1");
		void Add(const gp_Pnt &P);
		%feature("autodoc", "1");
		void Add(const gp_Pnt &P, const gp_Dir &D);
		%feature("autodoc", "1");
		void Add(const gp_Dir &D);
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Pnt &P) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Lin &L) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Pln &P) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_Box &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_Box &Other, const gp_Trsf &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Trsf &T1, const Bnd_Box &Other, const gp_Trsf &T2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Dir &D) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const Bnd_Box &Other) const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		Standard_Real SquareExtent() const;

};
%extend Bnd_Box {
	~Bnd_Box() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_Box\n");}
	}
};

%nodefaultctor Bnd_Array1OfBox2d;
class Bnd_Array1OfBox2d {
	public:
		%feature("autodoc", "1");
		Bnd_Array1OfBox2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Bnd_Array1OfBox2d(const Bnd_Box2d &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Bnd_Box2d &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Bnd_Array1OfBox2d & Assign(const Bnd_Array1OfBox2d &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Bnd_Box2d &Value);
		%feature("autodoc", "1");
		const Bnd_Box2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Bnd_Box2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Bnd_Box2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Bnd_Box2d & operator()(const Standard_Integer Index);

};
%extend Bnd_Array1OfBox2d {
	~Bnd_Array1OfBox2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_Array1OfBox2d\n");}
	}
};

%nodefaultctor Bnd_B3d;
class Bnd_B3d {
	public:
		%feature("autodoc", "1");
		Bnd_B3d();
		%feature("autodoc", "1");
		Bnd_B3d(const gp_XYZ &theCenter, const gp_XYZ &theHSize);
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const gp_XYZ &thePnt);
		%feature("autodoc", "1");
		void Add(const gp_Pnt &thePnt);
		%feature("autodoc", "1");
		void Add(const Bnd_B3d &theBox);
		%feature("autodoc", "1");
		gp_XYZ CornerMin() const;
		%feature("autodoc", "1");
		gp_XYZ CornerMax() const;
		%feature("autodoc", "1");
		Standard_Real SquareExtent() const;
		%feature("autodoc", "1");
		void Enlarge(const Standard_Real aDiff);
		%feature("autodoc", "1");
		Standard_Boolean Limit(const Bnd_B3d &theOtherBox);
		%feature("autodoc", "1");
		Bnd_B3d Transformed(const gp_Trsf &theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XYZ &thePnt) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XYZ &theCenter, const Standard_Real theRadius, const Standard_Boolean isSphereHollow=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B3d &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B3d &theOtherBox, const gp_Trsf &theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax1 &theLine, const Standard_Boolean isRay=0, const Standard_Real theOverthickness=0.0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax3 &thePlane) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B3d &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B3d &theBox, const gp_Trsf &theTrsf) const;
		%feature("autodoc", "1");
		void SetCenter(const gp_XYZ &theCenter);
		%feature("autodoc", "1");
		void SetHSize(const gp_XYZ &theHSize);

};
%extend Bnd_B3d {
	~Bnd_B3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_B3d\n");}
	}
};

%nodefaultctor Bnd_HArray1OfBox2d;
class Bnd_HArray1OfBox2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Bnd_HArray1OfBox2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Bnd_HArray1OfBox2d(const Standard_Integer Low, const Standard_Integer Up, const Bnd_Box2d &V);
		%feature("autodoc", "1");
		void Init(const Bnd_Box2d &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Bnd_Box2d &Value);
		%feature("autodoc", "1");
		const Bnd_Box2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Bnd_Box2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Bnd_Array1OfBox2d & Array1() const;
		%feature("autodoc", "1");
		Bnd_Array1OfBox2d & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Bnd_HArray1OfBox2d {
	Handle_Bnd_HArray1OfBox2d GetHandle() {
	return *(Handle_Bnd_HArray1OfBox2d*) &$self;
	}
};
%extend Bnd_HArray1OfBox2d {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend Bnd_HArray1OfBox2d {
	~Bnd_HArray1OfBox2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_HArray1OfBox2d\n");}
	}
};

%nodefaultctor Bnd_SeqOfBox;
class Bnd_SeqOfBox : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Bnd_SeqOfBox();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Bnd_SeqOfBox & Assign(const Bnd_SeqOfBox &Other);
		%feature("autodoc", "1");
		void Append(const Bnd_Box &T);
		%feature("autodoc", "1");
		void Append(Bnd_SeqOfBox & S);
		%feature("autodoc", "1");
		void Prepend(const Bnd_Box &T);
		%feature("autodoc", "1");
		void Prepend(Bnd_SeqOfBox & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Bnd_Box &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Bnd_SeqOfBox & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Bnd_Box &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Bnd_SeqOfBox & S);
		%feature("autodoc", "1");
		const Bnd_Box & First() const;
		%feature("autodoc", "1");
		const Bnd_Box & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Bnd_SeqOfBox & S);
		%feature("autodoc", "1");
		const Bnd_Box & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Bnd_Box &I);
		%feature("autodoc", "1");
		Bnd_Box & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Bnd_SeqOfBox {
	~Bnd_SeqOfBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_SeqOfBox\n");}
	}
};

%nodefaultctor Bnd_HArray1OfBox;
class Bnd_HArray1OfBox : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Bnd_HArray1OfBox(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Bnd_HArray1OfBox(const Standard_Integer Low, const Standard_Integer Up, const Bnd_Box &V);
		%feature("autodoc", "1");
		void Init(const Bnd_Box &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Bnd_Box &Value);
		%feature("autodoc", "1");
		const Bnd_Box & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Bnd_Array1OfBox & Array1() const;
		%feature("autodoc", "1");
		Bnd_Array1OfBox & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Bnd_HArray1OfBox {
	Handle_Bnd_HArray1OfBox GetHandle() {
	return *(Handle_Bnd_HArray1OfBox*) &$self;
	}
};
%extend Bnd_HArray1OfBox {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend Bnd_HArray1OfBox {
	~Bnd_HArray1OfBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_HArray1OfBox\n");}
	}
};

%nodefaultctor Bnd_B3f;
class Bnd_B3f {
	public:
		%feature("autodoc", "1");
		Bnd_B3f();
		%feature("autodoc", "1");
		Bnd_B3f(const gp_XYZ &theCenter, const gp_XYZ &theHSize);
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const gp_XYZ &thePnt);
		%feature("autodoc", "1");
		void Add(const gp_Pnt &thePnt);
		%feature("autodoc", "1");
		void Add(const Bnd_B3f &theBox);
		%feature("autodoc", "1");
		gp_XYZ CornerMin() const;
		%feature("autodoc", "1");
		gp_XYZ CornerMax() const;
		%feature("autodoc", "1");
		Standard_Real SquareExtent() const;
		%feature("autodoc", "1");
		void Enlarge(const Standard_Real aDiff);
		%feature("autodoc", "1");
		Standard_Boolean Limit(const Bnd_B3f &theOtherBox);
		%feature("autodoc", "1");
		Bnd_B3f Transformed(const gp_Trsf &theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XYZ &thePnt) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XYZ &theCenter, const Standard_Real theRadius, const Standard_Boolean isSphereHollow=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B3f &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B3f &theOtherBox, const gp_Trsf &theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax1 &theLine, const Standard_Boolean isRay=0, const Standard_Real theOverthickness=0.0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax3 &thePlane) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B3f &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B3f &theBox, const gp_Trsf &theTrsf) const;
		%feature("autodoc", "1");
		void SetCenter(const gp_XYZ &theCenter);
		%feature("autodoc", "1");
		void SetHSize(const gp_XYZ &theHSize);

};
%extend Bnd_B3f {
	~Bnd_B3f() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_B3f\n");}
	}
};

%nodefaultctor Bnd_BoundSortBox;
class Bnd_BoundSortBox {
	public:
		%feature("autodoc", "1");
		Bnd_BoundSortBox();
		%feature("autodoc", "1");
		void Initialize(const Bnd_Box &CompleteBox, const Handle_Bnd_HArray1OfBox &SetOfBox);
		%feature("autodoc", "1");
		void Initialize(const Handle_Bnd_HArray1OfBox &SetOfBox);
		%feature("autodoc", "1");
		void Initialize(const Bnd_Box &CompleteBox, const Standard_Integer nbComponents);
		%feature("autodoc", "1");
		void Add(const Bnd_Box &theBox, const Standard_Integer boxIndex);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Compare(const Bnd_Box &theBox);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Compare(const gp_Pln &P);
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend Bnd_BoundSortBox {
	~Bnd_BoundSortBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_BoundSortBox\n");}
	}
};

%nodefaultctor Bnd_Array1OfBox;
class Bnd_Array1OfBox {
	public:
		%feature("autodoc", "1");
		Bnd_Array1OfBox(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Bnd_Array1OfBox(const Bnd_Box &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Bnd_Box &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Bnd_Array1OfBox & Assign(const Bnd_Array1OfBox &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Bnd_Box &Value);
		%feature("autodoc", "1");
		const Bnd_Box & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const Standard_Integer Index);

};
%extend Bnd_Array1OfBox {
	~Bnd_Array1OfBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_Array1OfBox\n");}
	}
};

%nodefaultctor Bnd_Box2d;
class Bnd_Box2d {
	public:
		%feature("autodoc", "1");
		Bnd_Box2d();
		%feature("autodoc", "1");
		void SetWhole();
		%feature("autodoc", "1");
		void SetVoid();
		%feature("autodoc", "1");
		void Set(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		void Set(const gp_Pnt2d &P, const gp_Dir2d &D);
		%feature("autodoc", "1");
		void Update(const Standard_Real aXmin, const Standard_Real aYmin, const Standard_Real aXmax, const Standard_Real aYmax);
		%feature("autodoc", "1");
		void Update(const Standard_Real X, const Standard_Real Y);
		%feature("autodoc", "1");
		Standard_Real GetGap() const;
		%feature("autodoc", "1");
		void SetGap(const Standard_Real Tol);
		%feature("autodoc", "1");
		void Enlarge(const Standard_Real Tol);
		%feature("autodoc", "1");
		void Get(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void OpenXmin();
		%feature("autodoc", "1");
		void OpenXmax();
		%feature("autodoc", "1");
		void OpenYmin();
		%feature("autodoc", "1");
		void OpenYmax();
		%feature("autodoc", "1");
		Standard_Boolean IsOpenXmin() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpenXmax() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpenYmin() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpenYmax() const;
		%feature("autodoc", "1");
		Standard_Boolean IsWhole() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;
		%feature("autodoc", "1");
		Bnd_Box2d Transformed(const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		void Add(const Bnd_Box2d &Other);
		%feature("autodoc", "1");
		void Add(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		void Add(const gp_Pnt2d &P, const gp_Dir2d &D);
		%feature("autodoc", "1");
		void Add(const gp_Dir2d &D);
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_Box2d &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_Box2d &Other, const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Trsf2d &T1, const Bnd_Box2d &Other, const gp_Trsf2d &T2) const;
		%feature("autodoc", "1");
		void Dump() const;

};
%extend Bnd_Box2d {
	~Bnd_Box2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Bnd_Box2d\n");}
	}
};