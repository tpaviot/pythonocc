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


%include Bnd_dependencies.i


%include Bnd_headers.i




%nodefaultctor Handle_Bnd_SequenceNodeOfSeqOfBox;
class Handle_Bnd_SequenceNodeOfSeqOfBox : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_Bnd_SequenceNodeOfSeqOfBox();
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

%nodefaultctor Handle_Bnd_HArray1OfBox2d;
class Handle_Bnd_HArray1OfBox2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Bnd_HArray1OfBox2d();
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

%nodefaultctor Handle_Bnd_HArray1OfBox;
class Handle_Bnd_HArray1OfBox : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Bnd_HArray1OfBox();
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

%nodefaultctor Bnd_Box;
class Bnd_Box {
	public:
		%feature("autodoc", "1");
		~Bnd_Box();
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

%nodefaultctor Bnd_B2d;
class Bnd_B2d {
	public:
		%feature("autodoc", "1");
		~Bnd_B2d();
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

%nodefaultctor Bnd_B2f;
class Bnd_B2f {
	public:
		%feature("autodoc", "1");
		~Bnd_B2f();
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

%nodefaultctor Bnd_BoundSortBox2d;
class Bnd_BoundSortBox2d {
	public:
		%feature("autodoc", "1");
		~Bnd_BoundSortBox2d();
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

%nodefaultctor Bnd_SequenceNodeOfSeqOfBox;
class Bnd_SequenceNodeOfSeqOfBox : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Bnd_SequenceNodeOfSeqOfBox(const Bnd_Box &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Bnd_SequenceNodeOfSeqOfBox();

};
%extend Bnd_SequenceNodeOfSeqOfBox {
	Handle_Bnd_SequenceNodeOfSeqOfBox GetHandle() {
	return *(Handle_Bnd_SequenceNodeOfSeqOfBox*) &$self;
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
		~Bnd_Array1OfBox2d();
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

%nodefaultctor Bnd_Box2d;
class Bnd_Box2d {
	public:
		%feature("autodoc", "1");
		~Bnd_Box2d();
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

%nodefaultctor Bnd_B3d;
class Bnd_B3d {
	public:
		%feature("autodoc", "1");
		~Bnd_B3d();
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
		%feature("autodoc", "1");
		virtual		~Bnd_HArray1OfBox2d();

};
%extend Bnd_HArray1OfBox2d {
	Handle_Bnd_HArray1OfBox2d GetHandle() {
	return *(Handle_Bnd_HArray1OfBox2d*) &$self;
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
		~Bnd_SeqOfBox();
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
		%feature("autodoc", "1");
		virtual		~Bnd_HArray1OfBox();

};
%extend Bnd_HArray1OfBox {
	Handle_Bnd_HArray1OfBox GetHandle() {
	return *(Handle_Bnd_HArray1OfBox*) &$self;
	}
};

%nodefaultctor Bnd_B3f;
class Bnd_B3f {
	public:
		%feature("autodoc", "1");
		~Bnd_B3f();
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
		%feature("autodoc", "1");
		~Bnd_BoundSortBox();

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
		~Bnd_Array1OfBox();
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