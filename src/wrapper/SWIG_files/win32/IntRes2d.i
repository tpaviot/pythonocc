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

%module IntRes2d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IntRes2d_renames.i


%include IntRes2d_required_python_modules.i


%include IntRes2d_dependencies.i


%include IntRes2d_headers.i


enum IntRes2d_Situation {
	IntRes2d_Inside,
	IntRes2d_Outside,
	IntRes2d_Unknown,
	};

enum IntRes2d_TypeTrans {
	IntRes2d_In,
	IntRes2d_Out,
	IntRes2d_Touch,
	IntRes2d_Undecided,
	};

enum IntRes2d_Position {
	IntRes2d_Head,
	IntRes2d_Middle,
	IntRes2d_End,
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
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint & operator=(const Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint &aHandle);
		%feature("autodoc", "1");
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint & operator=(const IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint {
	IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint* GetObject() {
	return (IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint*)$self->Access();
	}
};
%feature("shadow") Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint::~Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint {
	void _kill_pointed() {
		delete $self;
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
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment & operator=(const Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment &aHandle);
		%feature("autodoc", "1");
		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment & operator=(const IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment *anItem);
		%feature("autodoc", "1");
		static		Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment {
	IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment* GetObject() {
	return (IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment*)$self->Access();
	}
};
%feature("shadow") Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment::~Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") IntRes2d_Intersection::~IntRes2d_Intersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntRes2d_Intersection {
	void _kill_pointed() {
		delete $self;
	}
};
%extend IntRes2d_Intersection {
	IntRes2d_Intersection () {}
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
%feature("shadow") IntRes2d_Transition::~IntRes2d_Transition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntRes2d_Transition {
	void _kill_pointed() {
		delete $self;
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
		const IntRes2d_SequenceOfIntersectionPoint & operator=(const IntRes2d_SequenceOfIntersectionPoint &Other);
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
%feature("shadow") IntRes2d_SequenceOfIntersectionPoint::~IntRes2d_SequenceOfIntersectionPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntRes2d_SequenceOfIntersectionPoint {
	void _kill_pointed() {
		delete $self;
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
		const IntRes2d_SequenceOfIntersectionSegment & operator=(const IntRes2d_SequenceOfIntersectionSegment &Other);
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
%feature("shadow") IntRes2d_SequenceOfIntersectionSegment::~IntRes2d_SequenceOfIntersectionSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntRes2d_SequenceOfIntersectionSegment {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") IntRes2d_IntersectionSegment::~IntRes2d_IntersectionSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntRes2d_IntersectionSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntRes2d_IntersectionPoint;
class IntRes2d_IntersectionPoint {
	public:
		%feature("autodoc", "1");
		IntRes2d_IntersectionPoint();
		%feature("autodoc", "1");
		IntRes2d_IntersectionPoint(const gp_Pnt2d P, const Standard_Real Uc1, const Standard_Real Uc2, const IntRes2d_Transition &Trans1, const IntRes2d_Transition &Trans2, const Standard_Boolean ReversedFlag);
		%feature("autodoc", "1");
		void SetValues(const gp_Pnt2d P, const Standard_Real Uc1, const Standard_Real Uc2, const IntRes2d_Transition &Trans1, const IntRes2d_Transition &Trans2, const Standard_Boolean ReversedFlag);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnFirst() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnSecond() const;
		%feature("autodoc", "1");
		const IntRes2d_Transition & TransitionOfFirst() const;
		%feature("autodoc", "1");
		const IntRes2d_Transition & TransitionOfSecond() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  _CSFDB_GetIntRes2d_IntersectionPointpt() const;
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
%feature("shadow") IntRes2d_IntersectionPoint::~IntRes2d_IntersectionPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntRes2d_IntersectionPoint {
	void _kill_pointed() {
		delete $self;
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
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment::~IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntRes2d_SequenceNodeOfSequenceOfIntersectionSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntRes2d_Domain;
class IntRes2d_Domain {
	public:
		%feature("autodoc", "1");
		IntRes2d_Domain();
		%feature("autodoc", "1");
		IntRes2d_Domain(const gp_Pnt2d Pnt1, const Standard_Real Par1, const Standard_Real Tol1, const gp_Pnt2d Pnt2, const Standard_Real Par2, const Standard_Real Tol2);
		%feature("autodoc", "1");
		IntRes2d_Domain(const gp_Pnt2d Pnt, const Standard_Real Par, const Standard_Real Tol, const Standard_Boolean First);
		%feature("autodoc", "1");
		void SetValues(const gp_Pnt2d Pnt1, const Standard_Real Par1, const Standard_Real Tol1, const gp_Pnt2d Pnt2, const Standard_Real Par2, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void SetValues();
		%feature("autodoc", "1");
		void SetValues(const gp_Pnt2d Pnt, const Standard_Real Par, const Standard_Real Tol, const Standard_Boolean First);
		%feature("autodoc", "1");
		void SetEquivalentParameters(const Standard_Real p_first, const Standard_Real p_last);
		%feature("autodoc", "1");
		Standard_Boolean HasFirstPoint() const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  FirstPoint() const;
		%feature("autodoc", "1");
		Standard_Real FirstTolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastPoint() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  LastPoint() const;
		%feature("autodoc", "1");
		Standard_Real LastTolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc","EquivalentParameters() -> [Standard_Real, Standard_Real]");

		void EquivalentParameters(Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") IntRes2d_Domain::~IntRes2d_Domain %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntRes2d_Domain {
	void _kill_pointed() {
		delete $self;
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
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint::~IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntRes2d_SequenceNodeOfSequenceOfIntersectionPoint {
	void _kill_pointed() {
		delete $self;
	}
};
