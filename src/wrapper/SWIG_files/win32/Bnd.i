/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Bnd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Bnd_renames.i


%include Bnd_required_python_modules.i


%include Bnd_dependencies.i


%include Bnd_headers.i




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
		Handle_Bnd_HArray1OfBox2d & operator=(const Handle_Bnd_HArray1OfBox2d &aHandle);
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfBox2d & operator=(const Bnd_HArray1OfBox2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Bnd_HArray1OfBox2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bnd_HArray1OfBox2d {
	Bnd_HArray1OfBox2d* GetObject() {
	return (Bnd_HArray1OfBox2d*)$self->Access();
	}
};
%feature("shadow") Handle_Bnd_HArray1OfBox2d::~Handle_Bnd_HArray1OfBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Bnd_HArray1OfBox2d {
	void _kill_pointed() {
		delete $self;
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
		Handle_Bnd_HArray1OfBox & operator=(const Handle_Bnd_HArray1OfBox &aHandle);
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfBox & operator=(const Bnd_HArray1OfBox *anItem);
		%feature("autodoc", "1");
		static		Handle_Bnd_HArray1OfBox DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bnd_HArray1OfBox {
	Bnd_HArray1OfBox* GetObject() {
	return (Bnd_HArray1OfBox*)$self->Access();
	}
};
%feature("shadow") Handle_Bnd_HArray1OfBox::~Handle_Bnd_HArray1OfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Bnd_HArray1OfBox {
	void _kill_pointed() {
		delete $self;
	}
};


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
		Handle_Bnd_SequenceNodeOfSeqOfBox & operator=(const Handle_Bnd_SequenceNodeOfSeqOfBox &aHandle);
		%feature("autodoc", "1");
		Handle_Bnd_SequenceNodeOfSeqOfBox & operator=(const Bnd_SequenceNodeOfSeqOfBox *anItem);
		%feature("autodoc", "1");
		static		Handle_Bnd_SequenceNodeOfSeqOfBox DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bnd_SequenceNodeOfSeqOfBox {
	Bnd_SequenceNodeOfSeqOfBox* GetObject() {
	return (Bnd_SequenceNodeOfSeqOfBox*)$self->Access();
	}
};
%feature("shadow") Handle_Bnd_SequenceNodeOfSeqOfBox::~Handle_Bnd_SequenceNodeOfSeqOfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Bnd_SequenceNodeOfSeqOfBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Bnd_HArray1OfSphere;
class Handle_Bnd_HArray1OfSphere : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfSphere();
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfSphere(const Handle_Bnd_HArray1OfSphere &aHandle);
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfSphere(const Bnd_HArray1OfSphere *anItem);
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfSphere & operator=(const Handle_Bnd_HArray1OfSphere &aHandle);
		%feature("autodoc", "1");
		Handle_Bnd_HArray1OfSphere & operator=(const Bnd_HArray1OfSphere *anItem);
		%feature("autodoc", "1");
		static		Handle_Bnd_HArray1OfSphere DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bnd_HArray1OfSphere {
	Bnd_HArray1OfSphere* GetObject() {
	return (Bnd_HArray1OfSphere*)$self->Access();
	}
};
%feature("shadow") Handle_Bnd_HArray1OfSphere::~Handle_Bnd_HArray1OfSphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Bnd_HArray1OfSphere {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bnd_B2d;
class Bnd_B2d {
	public:
		%feature("autodoc", "1");
		Bnd_B2d();
		%feature("autodoc", "1");
		Bnd_B2d(const gp_XY theCenter, const gp_XY theHSize);
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const gp_XY thePnt);
		%feature("autodoc", "1");
		void Add(const gp_Pnt2d thePnt);
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
		Bnd_B2d Transformed(const gp_Trsf2d theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY thePnt) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY theCenter, const Standard_Real theRadius, const Standard_Boolean isCircleHollow=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B2d &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B2d &theOtherBox, const gp_Trsf2d theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax2d theLine) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY theP0, const gp_XY theP1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B2d &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B2d &theBox, const gp_Trsf2d theTrsf) const;
		%feature("autodoc", "1");
		void SetCenter(const gp_XY theCenter);
		%feature("autodoc", "1");
		void SetHSize(const gp_XY theHSize);

};
%feature("shadow") Bnd_B2d::~Bnd_B2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_B2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bnd_B2f;
class Bnd_B2f {
	public:
		%feature("autodoc", "1");
		Bnd_B2f();
		%feature("autodoc", "1");
		Bnd_B2f(const gp_XY theCenter, const gp_XY theHSize);
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const gp_XY thePnt);
		%feature("autodoc", "1");
		void Add(const gp_Pnt2d thePnt);
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
		Bnd_B2f Transformed(const gp_Trsf2d theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY thePnt) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY theCenter, const Standard_Real theRadius, const Standard_Boolean isCircleHollow=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B2f &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B2f &theOtherBox, const gp_Trsf2d theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax2d theLine) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XY theP0, const gp_XY theP1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B2f &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B2f &theBox, const gp_Trsf2d theTrsf) const;
		%feature("autodoc", "1");
		void SetCenter(const gp_XY theCenter);
		%feature("autodoc", "1");
		void SetHSize(const gp_XY theHSize);

};
%feature("shadow") Bnd_B2f::~Bnd_B2f %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_B2f {
	void _kill_pointed() {
		delete $self;
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
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Bnd_SequenceNodeOfSeqOfBox::~Bnd_SequenceNodeOfSeqOfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_SequenceNodeOfSeqOfBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bnd_B3f;
class Bnd_B3f {
	public:
		%feature("autodoc", "1");
		Bnd_B3f();
		%feature("autodoc", "1");
		Bnd_B3f(const gp_XYZ theCenter, const gp_XYZ theHSize);
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const gp_XYZ thePnt);
		%feature("autodoc", "1");
		void Add(const gp_Pnt thePnt);
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
		Bnd_B3f Transformed(const gp_Trsf theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XYZ thePnt) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XYZ theCenter, const Standard_Real theRadius, const Standard_Boolean isSphereHollow=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B3f &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B3f &theOtherBox, const gp_Trsf theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax1 theLine, const Standard_Boolean isRay=0, const Standard_Real theOverthickness=0.0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax3 thePlane) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B3f &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B3f &theBox, const gp_Trsf theTrsf) const;
		%feature("autodoc", "1");
		void SetCenter(const gp_XYZ theCenter);
		%feature("autodoc", "1");
		void SetHSize(const gp_XYZ theHSize);

};
%feature("shadow") Bnd_B3f::~Bnd_B3f %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_B3f {
	void _kill_pointed() {
		delete $self;
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
		const Bnd_SeqOfBox & operator=(const Bnd_SeqOfBox &Other);
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
%feature("shadow") Bnd_SeqOfBox::~Bnd_SeqOfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_SeqOfBox {
	void _kill_pointed() {
		delete $self;
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
		void Set(const gp_Pnt P);
		%feature("autodoc", "1");
		void Set(const gp_Pnt P, const gp_Dir D);
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
		%feature("autodoc","Get() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

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
		Bnd_Box Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Add(const Bnd_Box &Other);
		%feature("autodoc", "1");
		void Add(const gp_Pnt P);
		%feature("autodoc", "1");
		void Add(const gp_Pnt P, const gp_Dir D);
		%feature("autodoc", "1");
		void Add(const gp_Dir D);
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Pnt P) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Lin L) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Pln P) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_Box &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_Box &Other, const gp_Trsf T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Trsf T1, const Bnd_Box &Other, const gp_Trsf T2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Pnt P1, const gp_Pnt P2, const gp_Dir D) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const Bnd_Box &Other) const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		Standard_Real SquareExtent() const;

};
%feature("shadow") Bnd_Box::~Bnd_Box %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_Box {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") Bnd_BoundSortBox2d::~Bnd_BoundSortBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_BoundSortBox2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bnd_Sphere;
class Bnd_Sphere {
	public:
		%feature("autodoc", "1");
		Bnd_Sphere();
		%feature("autodoc", "1");
		Bnd_Sphere(const gp_XYZ theCntr, const Standard_Real theRad, const Standard_Integer theU, const Standard_Integer theV);
		%feature("autodoc", "1");
		Standard_Integer U() const;
		%feature("autodoc", "1");
		Standard_Integer V() const;
		%feature("autodoc", "1");
		Standard_Boolean IsValid() const;
		%feature("autodoc", "1");
		void SetValid(const Standard_Boolean isValid);
		%feature("autodoc", "1");
		const gp_XYZ  Center() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc","Distances(const theXYZ) -> [Standard_Real, Standard_Real]");

		void Distances(const gp_XYZ theXYZ, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","SquareDistances(const theXYZ) -> [Standard_Real, Standard_Real]");

		void SquareDistances(const gp_XYZ theXYZ, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Project(const theNode) -> Standard_Real");

		Standard_Boolean Project(const gp_XYZ theNode, gp_XYZ & theProjNode, Standard_Real &OutValue, Standard_Boolean & theInside) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_XYZ theNode) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_XYZ theNode) const;
		%feature("autodoc", "1");
		void Add(const Bnd_Sphere &theOther);
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_Sphere &theOther) const;
		%feature("autodoc","IsOut(const thePnt) -> Standard_Real");

		Standard_Boolean IsOut(const gp_XYZ thePnt, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real SquareExtent() const;

};
%feature("shadow") Bnd_Sphere::~Bnd_Sphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_Sphere {
	void _kill_pointed() {
		delete $self;
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
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Bnd_HArray1OfBox2d::~Bnd_HArray1OfBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_HArray1OfBox2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bnd_Array1OfSphere;
class Bnd_Array1OfSphere {
	public:
		%feature("autodoc", "1");
		Bnd_Array1OfSphere(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Bnd_Array1OfSphere(const Bnd_Sphere &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Bnd_Sphere &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Bnd_Array1OfSphere & Assign(const Bnd_Array1OfSphere &Other);
		%feature("autodoc", "1");
		const Bnd_Array1OfSphere & operator=(const Bnd_Array1OfSphere &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Bnd_Sphere &Value);
		%feature("autodoc", "1");
		const Bnd_Sphere & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Bnd_Sphere & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Bnd_Sphere & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Bnd_Sphere & operator()(const Standard_Integer Index);

};
%feature("shadow") Bnd_Array1OfSphere::~Bnd_Array1OfSphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_Array1OfSphere {
	void _kill_pointed() {
		delete $self;
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
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Bnd_HArray1OfBox::~Bnd_HArray1OfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_HArray1OfBox {
	void _kill_pointed() {
		delete $self;
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
		const TColStd_ListOfInteger & Compare(const gp_Pln P);
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") Bnd_BoundSortBox::~Bnd_BoundSortBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_BoundSortBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bnd_B3d;
class Bnd_B3d {
	public:
		%feature("autodoc", "1");
		Bnd_B3d();
		%feature("autodoc", "1");
		Bnd_B3d(const gp_XYZ theCenter, const gp_XYZ theHSize);
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const gp_XYZ thePnt);
		%feature("autodoc", "1");
		void Add(const gp_Pnt thePnt);
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
		Bnd_B3d Transformed(const gp_Trsf theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XYZ thePnt) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_XYZ theCenter, const Standard_Real theRadius, const Standard_Boolean isSphereHollow=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B3d &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_B3d &theOtherBox, const gp_Trsf theTrsf) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax1 theLine, const Standard_Boolean isRay=0, const Standard_Real theOverthickness=0.0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Ax3 thePlane) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B3d &theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Bnd_B3d &theBox, const gp_Trsf theTrsf) const;
		%feature("autodoc", "1");
		void SetCenter(const gp_XYZ theCenter);
		%feature("autodoc", "1");
		void SetHSize(const gp_XYZ theHSize);

};
%feature("shadow") Bnd_B3d::~Bnd_B3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_B3d {
	void _kill_pointed() {
		delete $self;
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
		void Set(const gp_Pnt2d P);
		%feature("autodoc", "1");
		void Set(const gp_Pnt2d P, const gp_Dir2d D);
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
		%feature("autodoc","Get() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

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
		Bnd_Box2d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		void Add(const Bnd_Box2d &Other);
		%feature("autodoc", "1");
		void Add(const gp_Pnt2d P);
		%feature("autodoc", "1");
		void Add(const gp_Pnt2d P, const gp_Dir2d D);
		%feature("autodoc", "1");
		void Add(const gp_Dir2d D);
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_Box2d &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const Bnd_Box2d &Other, const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const gp_Trsf2d T1, const Bnd_Box2d &Other, const gp_Trsf2d T2) const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") Bnd_Box2d::~Bnd_Box2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_Box2d {
	void _kill_pointed() {
		delete $self;
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
		const Bnd_Array1OfBox2d & operator=(const Bnd_Array1OfBox2d &Other);
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
%feature("shadow") Bnd_Array1OfBox2d::~Bnd_Array1OfBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_Array1OfBox2d {
	void _kill_pointed() {
		delete $self;
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
		const Bnd_Array1OfBox & operator=(const Bnd_Array1OfBox &Other);
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
%feature("shadow") Bnd_Array1OfBox::~Bnd_Array1OfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_Array1OfBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bnd_HArray1OfSphere;
class Bnd_HArray1OfSphere : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Bnd_HArray1OfSphere(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Bnd_HArray1OfSphere(const Standard_Integer Low, const Standard_Integer Up, const Bnd_Sphere &V);
		%feature("autodoc", "1");
		void Init(const Bnd_Sphere &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Bnd_Sphere &Value);
		%feature("autodoc", "1");
		const Bnd_Sphere & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Bnd_Sphere & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Bnd_Array1OfSphere & Array1() const;
		%feature("autodoc", "1");
		Bnd_Array1OfSphere & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Bnd_HArray1OfSphere {
	Handle_Bnd_HArray1OfSphere GetHandle() {
	return *(Handle_Bnd_HArray1OfSphere*) &$self;
	}
};
%extend Bnd_HArray1OfSphere {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Bnd_HArray1OfSphere::~Bnd_HArray1OfSphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bnd_HArray1OfSphere {
	void _kill_pointed() {
		delete $self;
	}
};
