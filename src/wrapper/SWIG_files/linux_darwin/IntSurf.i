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

%module IntSurf
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IntSurf_renames.i


%include IntSurf_required_python_modules.i


%include IntSurf_dependencies.i


%include IntSurf_headers.i


enum IntSurf_Situation {
	IntSurf_Inside,
	IntSurf_Outside,
	IntSurf_Unknown,
	};

enum IntSurf_TypeTrans {
	IntSurf_In,
	IntSurf_Out,
	IntSurf_Touch,
	IntSurf_Undecided,
	};



%nodefaultctor Handle_IntSurf_LineOn2S;
class Handle_IntSurf_LineOn2S : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IntSurf_LineOn2S();
		%feature("autodoc", "1");
		Handle_IntSurf_LineOn2S(const Handle_IntSurf_LineOn2S &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_LineOn2S(const IntSurf_LineOn2S *anItem);
		%feature("autodoc", "1");
		Handle_IntSurf_LineOn2S & operator=(const Handle_IntSurf_LineOn2S &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_LineOn2S & operator=(const IntSurf_LineOn2S *anItem);
		%feature("autodoc", "1");
		static		Handle_IntSurf_LineOn2S DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntSurf_LineOn2S {
	IntSurf_LineOn2S* GetObject() {
	return (IntSurf_LineOn2S*)$self->Access();
	}
};
%feature("shadow") Handle_IntSurf_LineOn2S::~Handle_IntSurf_LineOn2S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntSurf_LineOn2S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint;
class Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint();
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint(const Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint(const IntSurf_SequenceNodeOfSequenceOfInteriorPoint *anItem);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint & operator=(const Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint & operator=(const IntSurf_SequenceNodeOfSequenceOfInteriorPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint {
	IntSurf_SequenceNodeOfSequenceOfInteriorPoint* GetObject() {
	return (IntSurf_SequenceNodeOfSequenceOfInteriorPoint*)$self->Access();
	}
};
%feature("shadow") Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint::~Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntSurf_ListNodeOfListOfPntOn2S;
class Handle_IntSurf_ListNodeOfListOfPntOn2S : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntSurf_ListNodeOfListOfPntOn2S();
		%feature("autodoc", "1");
		Handle_IntSurf_ListNodeOfListOfPntOn2S(const Handle_IntSurf_ListNodeOfListOfPntOn2S &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_ListNodeOfListOfPntOn2S(const IntSurf_ListNodeOfListOfPntOn2S *anItem);
		%feature("autodoc", "1");
		Handle_IntSurf_ListNodeOfListOfPntOn2S & operator=(const Handle_IntSurf_ListNodeOfListOfPntOn2S &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_ListNodeOfListOfPntOn2S & operator=(const IntSurf_ListNodeOfListOfPntOn2S *anItem);
		%feature("autodoc", "1");
		static		Handle_IntSurf_ListNodeOfListOfPntOn2S DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntSurf_ListNodeOfListOfPntOn2S {
	IntSurf_ListNodeOfListOfPntOn2S* GetObject() {
	return (IntSurf_ListNodeOfListOfPntOn2S*)$self->Access();
	}
};
%feature("shadow") Handle_IntSurf_ListNodeOfListOfPntOn2S::~Handle_IntSurf_ListNodeOfListOfPntOn2S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntSurf_ListNodeOfListOfPntOn2S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint;
class Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint();
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint(const Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint(const IntSurf_SequenceNodeOfSequenceOfPathPoint *anItem);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint & operator=(const Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint & operator=(const IntSurf_SequenceNodeOfSequenceOfPathPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint {
	IntSurf_SequenceNodeOfSequenceOfPathPoint* GetObject() {
	return (IntSurf_SequenceNodeOfSequenceOfPathPoint*)$self->Access();
	}
};
%feature("shadow") Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint::~Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntSurf_SequenceNodeOfSequenceOfCouple;
class Handle_IntSurf_SequenceNodeOfSequenceOfCouple : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfCouple();
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfCouple(const Handle_IntSurf_SequenceNodeOfSequenceOfCouple &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfCouple(const IntSurf_SequenceNodeOfSequenceOfCouple *anItem);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfCouple & operator=(const Handle_IntSurf_SequenceNodeOfSequenceOfCouple &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfCouple & operator=(const IntSurf_SequenceNodeOfSequenceOfCouple *anItem);
		%feature("autodoc", "1");
		static		Handle_IntSurf_SequenceNodeOfSequenceOfCouple DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntSurf_SequenceNodeOfSequenceOfCouple {
	IntSurf_SequenceNodeOfSequenceOfCouple* GetObject() {
	return (IntSurf_SequenceNodeOfSequenceOfCouple*)$self->Access();
	}
};
%feature("shadow") Handle_IntSurf_SequenceNodeOfSequenceOfCouple::~Handle_IntSurf_SequenceNodeOfSequenceOfCouple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntSurf_SequenceNodeOfSequenceOfCouple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S;
class Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S();
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S(const Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S(const IntSurf_SequenceNodeOfSequenceOfPntOn2S *anItem);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S & operator=(const Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S &aHandle);
		%feature("autodoc", "1");
		Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S & operator=(const IntSurf_SequenceNodeOfSequenceOfPntOn2S *anItem);
		%feature("autodoc", "1");
		static		Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S {
	IntSurf_SequenceNodeOfSequenceOfPntOn2S* GetObject() {
	return (IntSurf_SequenceNodeOfSequenceOfPntOn2S*)$self->Access();
	}
};
%feature("shadow") Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S::~Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_ListNodeOfListOfPntOn2S;
class IntSurf_ListNodeOfListOfPntOn2S : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntSurf_ListNodeOfListOfPntOn2S(const IntSurf_PntOn2S &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		IntSurf_PntOn2S & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntSurf_ListNodeOfListOfPntOn2S {
	Handle_IntSurf_ListNodeOfListOfPntOn2S GetHandle() {
	return *(Handle_IntSurf_ListNodeOfListOfPntOn2S*) &$self;
	}
};
%extend IntSurf_ListNodeOfListOfPntOn2S {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntSurf_ListNodeOfListOfPntOn2S::~IntSurf_ListNodeOfListOfPntOn2S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_ListNodeOfListOfPntOn2S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf;
class IntSurf {
	public:
		%feature("autodoc", "1");
		IntSurf();
		%feature("autodoc", "1");
		static		void MakeTransition(const gp_Vec TgFirst, const gp_Vec TgSecond, const gp_Dir Normal, IntSurf_Transition & TFirst, IntSurf_Transition & TSecond);

};
%feature("shadow") IntSurf::~IntSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_Transition;
class IntSurf_Transition {
	public:
		%feature("autodoc", "1");
		IntSurf_Transition();
		%feature("autodoc", "1");
		IntSurf_Transition(const Standard_Boolean Tangent, const IntSurf_TypeTrans Type);
		%feature("autodoc", "1");
		IntSurf_Transition(const Standard_Boolean Tangent, const IntSurf_Situation Situ, const Standard_Boolean Oppos);
		%feature("autodoc", "1");
		void SetValue(const Standard_Boolean Tangent, const IntSurf_TypeTrans Type);
		%feature("autodoc", "1");
		void SetValue(const Standard_Boolean Tangent, const IntSurf_Situation Situ, const Standard_Boolean Oppos);
		%feature("autodoc", "1");
		void SetValue();
		%feature("autodoc", "1");
		IntSurf_TypeTrans TransitionType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent() const;
		%feature("autodoc", "1");
		IntSurf_Situation Situation() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpposite() const;

};
%feature("shadow") IntSurf_Transition::~IntSurf_Transition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_Transition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_Quadric;
class IntSurf_Quadric {
	public:
		%feature("autodoc", "1");
		IntSurf_Quadric();
		%feature("autodoc", "1");
		IntSurf_Quadric(const gp_Pln P);
		%feature("autodoc", "1");
		IntSurf_Quadric(const gp_Cylinder C);
		%feature("autodoc", "1");
		IntSurf_Quadric(const gp_Sphere S);
		%feature("autodoc", "1");
		IntSurf_Quadric(const gp_Cone C);
		%feature("autodoc", "1");
		void SetValue(const gp_Pln P);
		%feature("autodoc", "1");
		void SetValue(const gp_Cylinder C);
		%feature("autodoc", "1");
		void SetValue(const gp_Sphere S);
		%feature("autodoc", "1");
		void SetValue(const gp_Cone C);
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt P) const;
		%feature("autodoc", "1");
		gp_Vec Gradient(const gp_Pnt P) const;
		%feature("autodoc","ValAndGrad(const P) -> Standard_Real");

		void ValAndGrad(const gp_Pnt P, Standard_Real &OutValue, gp_Vec & Grad) const;
		%feature("autodoc", "1");
		GeomAbs_SurfaceType TypeQuadric() const;
		%feature("autodoc", "1");
		gp_Pln Plane() const;
		%feature("autodoc", "1");
		gp_Sphere Sphere() const;
		%feature("autodoc", "1");
		gp_Cylinder Cylinder() const;
		%feature("autodoc", "1");
		gp_Cone Cone() const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		gp_Vec Normale(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc","Parameters(const P) -> [Standard_Real, Standard_Real]");

		void Parameters(const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Vec Normale(const gp_Pnt P) const;

};
%feature("shadow") IntSurf_Quadric::~IntSurf_Quadric %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_Quadric {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_ListOfPntOn2S;
class IntSurf_ListOfPntOn2S {
	public:
		%feature("autodoc", "1");
		IntSurf_ListOfPntOn2S();
		%feature("autodoc", "1");
		void Assign(const IntSurf_ListOfPntOn2S &Other);
		%feature("autodoc", "1");
		void operator=(const IntSurf_ListOfPntOn2S &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const IntSurf_PntOn2S &I);
		%feature("autodoc", "1");
		void Prepend(const IntSurf_PntOn2S &I, IntSurf_ListIteratorOfListOfPntOn2S & theIt);
		%feature("autodoc", "1");
		void Prepend(IntSurf_ListOfPntOn2S & Other);
		%feature("autodoc", "1");
		void Append(const IntSurf_PntOn2S &I);
		%feature("autodoc", "1");
		void Append(const IntSurf_PntOn2S &I, IntSurf_ListIteratorOfListOfPntOn2S & theIt);
		%feature("autodoc", "1");
		void Append(IntSurf_ListOfPntOn2S & Other);
		%feature("autodoc", "1");
		IntSurf_PntOn2S & First() const;
		%feature("autodoc", "1");
		IntSurf_PntOn2S & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(IntSurf_ListIteratorOfListOfPntOn2S & It);
		%feature("autodoc", "1");
		void InsertBefore(const IntSurf_PntOn2S &I, IntSurf_ListIteratorOfListOfPntOn2S & It);
		%feature("autodoc", "1");
		void InsertBefore(IntSurf_ListOfPntOn2S & Other, IntSurf_ListIteratorOfListOfPntOn2S & It);
		%feature("autodoc", "1");
		void InsertAfter(const IntSurf_PntOn2S &I, IntSurf_ListIteratorOfListOfPntOn2S & It);
		%feature("autodoc", "1");
		void InsertAfter(IntSurf_ListOfPntOn2S & Other, IntSurf_ListIteratorOfListOfPntOn2S & It);

};
%feature("shadow") IntSurf_ListOfPntOn2S::~IntSurf_ListOfPntOn2S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_ListOfPntOn2S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_PntOn2S;
class IntSurf_PntOn2S {
	public:
		%feature("autodoc", "1");
		IntSurf_PntOn2S();
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt Pt);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt Pt, const Standard_Boolean OnFirst, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt Pt, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2);
		%feature("autodoc", "1");
		void SetValue(const Standard_Boolean OnFirst, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2);
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc","ParametersOnS1() -> [Standard_Real, Standard_Real]");

		void ParametersOnS1(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ParametersOnS2() -> [Standard_Real, Standard_Real]");

		void ParametersOnS2(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Parameters() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Parameters(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") IntSurf_PntOn2S::~IntSurf_PntOn2S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_PntOn2S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_PathPoint;
class IntSurf_PathPoint {
	public:
		%feature("autodoc", "1");
		IntSurf_PathPoint();
		%feature("autodoc", "1");
		IntSurf_PathPoint(const gp_Pnt P, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt P, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void AddUV(const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void SetDirections(const gp_Vec V, const gp_Dir2d D);
		%feature("autodoc", "1");
		void SetTangency(const Standard_Boolean Tang);
		%feature("autodoc", "1");
		void SetPassing(const Standard_Boolean Pass);
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc","Value2d() -> [Standard_Real, Standard_Real]");

		void Value2d(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPassingPnt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent() const;
		%feature("autodoc", "1");
		const gp_Vec  Direction3d() const;
		%feature("autodoc", "1");
		const gp_Dir2d  Direction2d() const;
		%feature("autodoc", "1");
		Standard_Integer Multiplicity() const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") IntSurf_PathPoint::~IntSurf_PathPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_PathPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_Couple;
class IntSurf_Couple {
	public:
		%feature("autodoc", "1");
		IntSurf_Couple();
		%feature("autodoc", "1");
		IntSurf_Couple(const Standard_Integer Index1, const Standard_Integer Index2);
		%feature("autodoc", "1");
		Standard_Integer First() const;
		%feature("autodoc", "1");
		Standard_Integer Second() const;

};
%feature("shadow") IntSurf_Couple::~IntSurf_Couple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_Couple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_SequenceOfCouple;
class IntSurf_SequenceOfCouple : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntSurf_SequenceOfCouple();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntSurf_SequenceOfCouple & Assign(const IntSurf_SequenceOfCouple &Other);
		%feature("autodoc", "1");
		const IntSurf_SequenceOfCouple & operator=(const IntSurf_SequenceOfCouple &Other);
		%feature("autodoc", "1");
		void Append(const IntSurf_Couple &T);
		%feature("autodoc", "1");
		void Append(IntSurf_SequenceOfCouple & S);
		%feature("autodoc", "1");
		void Prepend(const IntSurf_Couple &T);
		%feature("autodoc", "1");
		void Prepend(IntSurf_SequenceOfCouple & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntSurf_Couple &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntSurf_SequenceOfCouple & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntSurf_Couple &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntSurf_SequenceOfCouple & S);
		%feature("autodoc", "1");
		const IntSurf_Couple & First() const;
		%feature("autodoc", "1");
		const IntSurf_Couple & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntSurf_SequenceOfCouple & S);
		%feature("autodoc", "1");
		const IntSurf_Couple & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntSurf_Couple & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntSurf_Couple &I);
		%feature("autodoc", "1");
		IntSurf_Couple & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntSurf_Couple & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntSurf_SequenceOfCouple::~IntSurf_SequenceOfCouple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_SequenceOfCouple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_PathPointTool;
class IntSurf_PathPointTool {
	public:
		%feature("autodoc", "1");
		IntSurf_PathPointTool();
		%feature("autodoc", "1");
		static		gp_Pnt Value3d(const IntSurf_PathPoint &PStart);
		%feature("autodoc","Value2d(const PStart) -> [Standard_Real, Standard_Real]");

		static		void Value2d(const IntSurf_PathPoint &PStart, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean IsPassingPnt(const IntSurf_PathPoint &PStart);
		%feature("autodoc", "1");
		static		Standard_Boolean IsTangent(const IntSurf_PathPoint &PStart);
		%feature("autodoc", "1");
		static		gp_Vec Direction3d(const IntSurf_PathPoint &PStart);
		%feature("autodoc", "1");
		static		gp_Dir2d Direction2d(const IntSurf_PathPoint &PStart);
		%feature("autodoc", "1");
		static		Standard_Integer Multiplicity(const IntSurf_PathPoint &PStart);
		%feature("autodoc","Parameters(const PStart, Standard_Integer Mult) -> [Standard_Real, Standard_Real]");

		static		void Parameters(const IntSurf_PathPoint &PStart, const Standard_Integer Mult, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") IntSurf_PathPointTool::~IntSurf_PathPointTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_PathPointTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_SequenceNodeOfSequenceOfPathPoint;
class IntSurf_SequenceNodeOfSequenceOfPathPoint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntSurf_SequenceNodeOfSequenceOfPathPoint(const IntSurf_PathPoint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntSurf_PathPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntSurf_SequenceNodeOfSequenceOfPathPoint {
	Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint GetHandle() {
	return *(Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint*) &$self;
	}
};
%extend IntSurf_SequenceNodeOfSequenceOfPathPoint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntSurf_SequenceNodeOfSequenceOfPathPoint::~IntSurf_SequenceNodeOfSequenceOfPathPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_SequenceNodeOfSequenceOfPathPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_InteriorPoint;
class IntSurf_InteriorPoint {
	public:
		%feature("autodoc", "1");
		IntSurf_InteriorPoint();
		%feature("autodoc", "1");
		IntSurf_InteriorPoint(const gp_Pnt P, const Standard_Real U, const Standard_Real V, const gp_Vec Direc, const gp_Vec2d Direc2d);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt P, const Standard_Real U, const Standard_Real V, const gp_Vec Direc, const gp_Vec2d Direc2d);
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc","Parameters() -> [Standard_Real, Standard_Real]");

		void Parameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real UParameter() const;
		%feature("autodoc", "1");
		Standard_Real VParameter() const;
		%feature("autodoc", "1");
		const gp_Vec  Direction() const;
		%feature("autodoc", "1");
		const gp_Vec2d  Direction2d() const;

};
%feature("shadow") IntSurf_InteriorPoint::~IntSurf_InteriorPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_InteriorPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_SequenceNodeOfSequenceOfInteriorPoint;
class IntSurf_SequenceNodeOfSequenceOfInteriorPoint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntSurf_SequenceNodeOfSequenceOfInteriorPoint(const IntSurf_InteriorPoint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntSurf_InteriorPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntSurf_SequenceNodeOfSequenceOfInteriorPoint {
	Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint GetHandle() {
	return *(Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint*) &$self;
	}
};
%extend IntSurf_SequenceNodeOfSequenceOfInteriorPoint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntSurf_SequenceNodeOfSequenceOfInteriorPoint::~IntSurf_SequenceNodeOfSequenceOfInteriorPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_SequenceNodeOfSequenceOfInteriorPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_SequenceNodeOfSequenceOfCouple;
class IntSurf_SequenceNodeOfSequenceOfCouple : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntSurf_SequenceNodeOfSequenceOfCouple(const IntSurf_Couple &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntSurf_Couple & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntSurf_SequenceNodeOfSequenceOfCouple {
	Handle_IntSurf_SequenceNodeOfSequenceOfCouple GetHandle() {
	return *(Handle_IntSurf_SequenceNodeOfSequenceOfCouple*) &$self;
	}
};
%extend IntSurf_SequenceNodeOfSequenceOfCouple {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntSurf_SequenceNodeOfSequenceOfCouple::~IntSurf_SequenceNodeOfSequenceOfCouple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_SequenceNodeOfSequenceOfCouple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_SequenceOfPntOn2S;
class IntSurf_SequenceOfPntOn2S : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntSurf_SequenceOfPntOn2S();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntSurf_SequenceOfPntOn2S & Assign(const IntSurf_SequenceOfPntOn2S &Other);
		%feature("autodoc", "1");
		const IntSurf_SequenceOfPntOn2S & operator=(const IntSurf_SequenceOfPntOn2S &Other);
		%feature("autodoc", "1");
		void Append(const IntSurf_PntOn2S &T);
		%feature("autodoc", "1");
		void Append(IntSurf_SequenceOfPntOn2S & S);
		%feature("autodoc", "1");
		void Prepend(const IntSurf_PntOn2S &T);
		%feature("autodoc", "1");
		void Prepend(IntSurf_SequenceOfPntOn2S & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntSurf_PntOn2S &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntSurf_SequenceOfPntOn2S & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntSurf_PntOn2S &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntSurf_SequenceOfPntOn2S & S);
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & First() const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntSurf_SequenceOfPntOn2S & S);
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntSurf_PntOn2S &I);
		%feature("autodoc", "1");
		IntSurf_PntOn2S & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntSurf_PntOn2S & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntSurf_SequenceOfPntOn2S::~IntSurf_SequenceOfPntOn2S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_SequenceOfPntOn2S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_InteriorPointTool;
class IntSurf_InteriorPointTool {
	public:
		%feature("autodoc", "1");
		IntSurf_InteriorPointTool();
		%feature("autodoc", "1");
		static		gp_Pnt Value3d(const IntSurf_InteriorPoint &PStart);
		%feature("autodoc","Value2d(const PStart) -> [Standard_Real, Standard_Real]");

		static		void Value2d(const IntSurf_InteriorPoint &PStart, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		gp_Vec Direction3d(const IntSurf_InteriorPoint &PStart);
		%feature("autodoc", "1");
		static		gp_Dir2d Direction2d(const IntSurf_InteriorPoint &PStart);

};
%feature("shadow") IntSurf_InteriorPointTool::~IntSurf_InteriorPointTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_InteriorPointTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_LineOn2S;
class IntSurf_LineOn2S : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IntSurf_LineOn2S();
		%feature("autodoc", "1");
		void Add(const IntSurf_PntOn2S &P);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		Handle_IntSurf_LineOn2S Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Value(const Standard_Integer Index, const IntSurf_PntOn2S &P);
		%feature("autodoc", "1");
		void SetUV(const Standard_Integer Index, const Standard_Boolean OnFirst, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer I, const IntSurf_PntOn2S &P);
		%feature("autodoc", "1");
		void RemovePoint(const Standard_Integer I);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntSurf_LineOn2S {
	Handle_IntSurf_LineOn2S GetHandle() {
	return *(Handle_IntSurf_LineOn2S*) &$self;
	}
};
%extend IntSurf_LineOn2S {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntSurf_LineOn2S::~IntSurf_LineOn2S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_LineOn2S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_ListIteratorOfListOfPntOn2S;
class IntSurf_ListIteratorOfListOfPntOn2S {
	public:
		%feature("autodoc", "1");
		IntSurf_ListIteratorOfListOfPntOn2S();
		%feature("autodoc", "1");
		IntSurf_ListIteratorOfListOfPntOn2S(const IntSurf_ListOfPntOn2S &L);
		%feature("autodoc", "1");
		void Initialize(const IntSurf_ListOfPntOn2S &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		IntSurf_PntOn2S & Value() const;

};
%feature("shadow") IntSurf_ListIteratorOfListOfPntOn2S::~IntSurf_ListIteratorOfListOfPntOn2S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_ListIteratorOfListOfPntOn2S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_SequenceNodeOfSequenceOfPntOn2S;
class IntSurf_SequenceNodeOfSequenceOfPntOn2S : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntSurf_SequenceNodeOfSequenceOfPntOn2S(const IntSurf_PntOn2S &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntSurf_PntOn2S & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntSurf_SequenceNodeOfSequenceOfPntOn2S {
	Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S GetHandle() {
	return *(Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S*) &$self;
	}
};
%extend IntSurf_SequenceNodeOfSequenceOfPntOn2S {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntSurf_SequenceNodeOfSequenceOfPntOn2S::~IntSurf_SequenceNodeOfSequenceOfPntOn2S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_SequenceNodeOfSequenceOfPntOn2S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_QuadricTool;
class IntSurf_QuadricTool {
	public:
		%feature("autodoc", "1");
		IntSurf_QuadricTool();
		%feature("autodoc", "1");
		static		Standard_Real Value(const IntSurf_Quadric &Quad, const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		static		void Gradient(const IntSurf_Quadric &Quad, const Standard_Real X, const Standard_Real Y, const Standard_Real Z, gp_Vec & V);
		%feature("autodoc","ValueAndGradient(const Quad, Standard_Real X, Standard_Real Y, Standard_Real Z) -> Standard_Real");

		static		void ValueAndGradient(const IntSurf_Quadric &Quad, const Standard_Real X, const Standard_Real Y, const Standard_Real Z, Standard_Real &OutValue, gp_Vec & V);
		%feature("autodoc", "1");
		static		Standard_Real Tolerance(const IntSurf_Quadric &Quad);

};
%feature("shadow") IntSurf_QuadricTool::~IntSurf_QuadricTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_QuadricTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_SequenceOfPathPoint;
class IntSurf_SequenceOfPathPoint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntSurf_SequenceOfPathPoint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntSurf_SequenceOfPathPoint & Assign(const IntSurf_SequenceOfPathPoint &Other);
		%feature("autodoc", "1");
		const IntSurf_SequenceOfPathPoint & operator=(const IntSurf_SequenceOfPathPoint &Other);
		%feature("autodoc", "1");
		void Append(const IntSurf_PathPoint &T);
		%feature("autodoc", "1");
		void Append(IntSurf_SequenceOfPathPoint & S);
		%feature("autodoc", "1");
		void Prepend(const IntSurf_PathPoint &T);
		%feature("autodoc", "1");
		void Prepend(IntSurf_SequenceOfPathPoint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntSurf_PathPoint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntSurf_SequenceOfPathPoint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntSurf_PathPoint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntSurf_SequenceOfPathPoint & S);
		%feature("autodoc", "1");
		const IntSurf_PathPoint & First() const;
		%feature("autodoc", "1");
		const IntSurf_PathPoint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntSurf_SequenceOfPathPoint & S);
		%feature("autodoc", "1");
		const IntSurf_PathPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntSurf_PathPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntSurf_PathPoint &I);
		%feature("autodoc", "1");
		IntSurf_PathPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntSurf_PathPoint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntSurf_SequenceOfPathPoint::~IntSurf_SequenceOfPathPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_SequenceOfPathPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntSurf_SequenceOfInteriorPoint;
class IntSurf_SequenceOfInteriorPoint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntSurf_SequenceOfInteriorPoint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntSurf_SequenceOfInteriorPoint & Assign(const IntSurf_SequenceOfInteriorPoint &Other);
		%feature("autodoc", "1");
		const IntSurf_SequenceOfInteriorPoint & operator=(const IntSurf_SequenceOfInteriorPoint &Other);
		%feature("autodoc", "1");
		void Append(const IntSurf_InteriorPoint &T);
		%feature("autodoc", "1");
		void Append(IntSurf_SequenceOfInteriorPoint & S);
		%feature("autodoc", "1");
		void Prepend(const IntSurf_InteriorPoint &T);
		%feature("autodoc", "1");
		void Prepend(IntSurf_SequenceOfInteriorPoint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntSurf_InteriorPoint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntSurf_SequenceOfInteriorPoint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntSurf_InteriorPoint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntSurf_SequenceOfInteriorPoint & S);
		%feature("autodoc", "1");
		const IntSurf_InteriorPoint & First() const;
		%feature("autodoc", "1");
		const IntSurf_InteriorPoint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntSurf_SequenceOfInteriorPoint & S);
		%feature("autodoc", "1");
		const IntSurf_InteriorPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntSurf_InteriorPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntSurf_InteriorPoint &I);
		%feature("autodoc", "1");
		IntSurf_InteriorPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntSurf_InteriorPoint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntSurf_SequenceOfInteriorPoint::~IntSurf_SequenceOfInteriorPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntSurf_SequenceOfInteriorPoint {
	void _kill_pointed() {
		delete $self;
	}
};
