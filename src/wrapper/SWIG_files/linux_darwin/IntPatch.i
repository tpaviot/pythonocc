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

%module IntPatch
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IntPatch_renames.i


%include IntPatch_required_python_modules.i


%include IntPatch_dependencies.i


%include IntPatch_headers.i

typedef Intf_InterferencePolygon2d IntPatch_SearchPnt;

enum IntPatch_IType {
	IntPatch_Lin,
	IntPatch_Circle,
	IntPatch_Ellipse,
	IntPatch_Parabola,
	IntPatch_Hyperbola,
	IntPatch_Analytic,
	IntPatch_Walking,
	IntPatch_Restriction,
	};



%nodefaultctor Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking;
class Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking();
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking(const Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking(const IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking & operator=(const Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking & operator=(const IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking {
	IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking* GetObject() {
	return (IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking::~Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntPatch_Line;
class Handle_IntPatch_Line : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_Line();
		%feature("autodoc", "1");
		Handle_IntPatch_Line(const Handle_IntPatch_Line &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_Line(const IntPatch_Line *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_Line & operator=(const Handle_IntPatch_Line &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_Line & operator=(const IntPatch_Line *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_Line DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_Line {
	IntPatch_Line* GetObject() {
	return (IntPatch_Line*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_Line::~Handle_IntPatch_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntPatch_ALine;
class Handle_IntPatch_ALine : public Handle_IntPatch_Line {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_ALine();
		%feature("autodoc", "1");
		Handle_IntPatch_ALine(const Handle_IntPatch_ALine &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_ALine(const IntPatch_ALine *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_ALine & operator=(const Handle_IntPatch_ALine &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_ALine & operator=(const IntPatch_ALine *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_ALine DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_ALine {
	IntPatch_ALine* GetObject() {
	return (IntPatch_ALine*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_ALine::~Handle_IntPatch_ALine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_ALine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntPatch_TheIWLineOfTheIWalking;
class Handle_IntPatch_TheIWLineOfTheIWalking : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_TheIWLineOfTheIWalking();
		%feature("autodoc", "1");
		Handle_IntPatch_TheIWLineOfTheIWalking(const Handle_IntPatch_TheIWLineOfTheIWalking &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_TheIWLineOfTheIWalking(const IntPatch_TheIWLineOfTheIWalking *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_TheIWLineOfTheIWalking & operator=(const Handle_IntPatch_TheIWLineOfTheIWalking &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_TheIWLineOfTheIWalking & operator=(const IntPatch_TheIWLineOfTheIWalking *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_TheIWLineOfTheIWalking DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_TheIWLineOfTheIWalking {
	IntPatch_TheIWLineOfTheIWalking* GetObject() {
	return (IntPatch_TheIWLineOfTheIWalking*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_TheIWLineOfTheIWalking::~Handle_IntPatch_TheIWLineOfTheIWalking %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_TheIWLineOfTheIWalking {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds;
class Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds();
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds(const Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds(const IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds & operator=(const Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds & operator=(const IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds {
	IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds* GetObject() {
	return (IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds::~Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntPatch_GLine;
class Handle_IntPatch_GLine : public Handle_IntPatch_Line {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_GLine();
		%feature("autodoc", "1");
		Handle_IntPatch_GLine(const Handle_IntPatch_GLine &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_GLine(const IntPatch_GLine *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_GLine & operator=(const Handle_IntPatch_GLine &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_GLine & operator=(const IntPatch_GLine *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_GLine DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_GLine {
	IntPatch_GLine* GetObject() {
	return (IntPatch_GLine*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_GLine::~Handle_IntPatch_GLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_GLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds;
class Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds();
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds(const Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds(const IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds & operator=(const Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds & operator=(const IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds {
	IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds* GetObject() {
	return (IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds::~Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntPatch_WLine;
class Handle_IntPatch_WLine : public Handle_IntPatch_Line {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_WLine();
		%feature("autodoc", "1");
		Handle_IntPatch_WLine(const Handle_IntPatch_WLine &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_WLine(const IntPatch_WLine *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_WLine & operator=(const Handle_IntPatch_WLine &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_WLine & operator=(const IntPatch_WLine *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_WLine DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_WLine {
	IntPatch_WLine* GetObject() {
	return (IntPatch_WLine*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_WLine::~Handle_IntPatch_WLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_WLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntPatch_RLine;
class Handle_IntPatch_RLine : public Handle_IntPatch_Line {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_RLine();
		%feature("autodoc", "1");
		Handle_IntPatch_RLine(const Handle_IntPatch_RLine &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_RLine(const IntPatch_RLine *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_RLine & operator=(const Handle_IntPatch_RLine &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_RLine & operator=(const IntPatch_RLine *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_RLine DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_RLine {
	IntPatch_RLine* GetObject() {
	return (IntPatch_RLine*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_RLine::~Handle_IntPatch_RLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_RLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntPatch_SequenceNodeOfSequenceOfPoint;
class Handle_IntPatch_SequenceNodeOfSequenceOfPoint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfPoint();
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfPoint(const Handle_IntPatch_SequenceNodeOfSequenceOfPoint &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfPoint(const IntPatch_SequenceNodeOfSequenceOfPoint *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfPoint & operator=(const Handle_IntPatch_SequenceNodeOfSequenceOfPoint &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfPoint & operator=(const IntPatch_SequenceNodeOfSequenceOfPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_SequenceNodeOfSequenceOfPoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_SequenceNodeOfSequenceOfPoint {
	IntPatch_SequenceNodeOfSequenceOfPoint* GetObject() {
	return (IntPatch_SequenceNodeOfSequenceOfPoint*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_SequenceNodeOfSequenceOfPoint::~Handle_IntPatch_SequenceNodeOfSequenceOfPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_SequenceNodeOfSequenceOfPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntPatch_SequenceNodeOfSequenceOfLine;
class Handle_IntPatch_SequenceNodeOfSequenceOfLine : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfLine();
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfLine(const Handle_IntPatch_SequenceNodeOfSequenceOfLine &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfLine(const IntPatch_SequenceNodeOfSequenceOfLine *anItem);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfLine & operator=(const Handle_IntPatch_SequenceNodeOfSequenceOfLine &aHandle);
		%feature("autodoc", "1");
		Handle_IntPatch_SequenceNodeOfSequenceOfLine & operator=(const IntPatch_SequenceNodeOfSequenceOfLine *anItem);
		%feature("autodoc", "1");
		static		Handle_IntPatch_SequenceNodeOfSequenceOfLine DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPatch_SequenceNodeOfSequenceOfLine {
	IntPatch_SequenceNodeOfSequenceOfLine* GetObject() {
	return (IntPatch_SequenceNodeOfSequenceOfLine*)$self->Access();
	}
};
%feature("shadow") Handle_IntPatch_SequenceNodeOfSequenceOfLine::~Handle_IntPatch_SequenceNodeOfSequenceOfLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntPatch_SequenceNodeOfSequenceOfLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_SequenceOfSegmentOfTheSOnBounds;
class IntPatch_SequenceOfSegmentOfTheSOnBounds : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntPatch_SequenceOfSegmentOfTheSOnBounds();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntPatch_SequenceOfSegmentOfTheSOnBounds & Assign(const IntPatch_SequenceOfSegmentOfTheSOnBounds &Other);
		%feature("autodoc", "1");
		const IntPatch_SequenceOfSegmentOfTheSOnBounds & operator=(const IntPatch_SequenceOfSegmentOfTheSOnBounds &Other);
		%feature("autodoc", "1");
		void Append(const IntPatch_TheSegmentOfTheSOnBounds &T);
		%feature("autodoc", "1");
		void Append(IntPatch_SequenceOfSegmentOfTheSOnBounds & S);
		%feature("autodoc", "1");
		void Prepend(const IntPatch_TheSegmentOfTheSOnBounds &T);
		%feature("autodoc", "1");
		void Prepend(IntPatch_SequenceOfSegmentOfTheSOnBounds & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntPatch_TheSegmentOfTheSOnBounds &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntPatch_SequenceOfSegmentOfTheSOnBounds & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntPatch_TheSegmentOfTheSOnBounds &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntPatch_SequenceOfSegmentOfTheSOnBounds & S);
		%feature("autodoc", "1");
		const IntPatch_TheSegmentOfTheSOnBounds & First() const;
		%feature("autodoc", "1");
		const IntPatch_TheSegmentOfTheSOnBounds & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntPatch_SequenceOfSegmentOfTheSOnBounds & S);
		%feature("autodoc", "1");
		const IntPatch_TheSegmentOfTheSOnBounds & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntPatch_TheSegmentOfTheSOnBounds & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntPatch_TheSegmentOfTheSOnBounds &I);
		%feature("autodoc", "1");
		IntPatch_TheSegmentOfTheSOnBounds & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntPatch_TheSegmentOfTheSOnBounds & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntPatch_SequenceOfSegmentOfTheSOnBounds::~IntPatch_SequenceOfSegmentOfTheSOnBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_SequenceOfSegmentOfTheSOnBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_RstInt;
class IntPatch_RstInt {
	public:
		%feature("autodoc", "1");
		IntPatch_RstInt();
		%feature("autodoc", "1");
		static		void PutVertexOnLine(Handle_IntPatch_Line & L, const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &Domain, const Handle_Adaptor3d_HSurface &OtherSurf, const Standard_Boolean OnFirst, const Standard_Real Tol);

};
%feature("shadow") IntPatch_RstInt::~IntPatch_RstInt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_RstInt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_HCurve2dTool;
class IntPatch_HCurve2dTool {
	public:
		%feature("autodoc", "1");
		IntPatch_HCurve2dTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		GeomAbs_Shape Continuity(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbIntervals(const Handle_Adaptor2d_HCurve2d &C, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		static		void Intervals(const Handle_Adaptor2d_HCurve2d &C, TColStd_Array1OfReal & Tab, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		static		Standard_Boolean IsClosed(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Boolean IsPeriodic(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Real Period(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Pnt2d Value(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U);
		%feature("autodoc", "1");
		static		void D0(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P);
		%feature("autodoc", "1");
		static		void D1(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T);
		%feature("autodoc", "1");
		static		void D2(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N);
		%feature("autodoc", "1");
		static		void D3(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3);
		%feature("autodoc", "1");
		static		gp_Vec2d DN(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, const Standard_Integer N);
		%feature("autodoc", "1");
		static		Standard_Real Resolution(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		GeomAbs_CurveType GetType(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Lin2d Line(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Circ2d Circle(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Elips2d Ellipse(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Hypr2d Hyperbola(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Parab2d Parabola(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Handle_Geom2d_BezierCurve Bezier(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Handle_Geom2d_BSplineCurve BSpline(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U0, const Standard_Real U1);

};
%feature("shadow") IntPatch_HCurve2dTool::~IntPatch_HCurve2dTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_HCurve2dTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_Polygo;
class IntPatch_Polygo : public Intf_Polygon2d {
	public:
		%feature("autodoc", "1");
		Standard_Real Error() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Standard_Real DeflectionOverEstimation() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		virtual		void Segment(const Standard_Integer theIndex, gp_Pnt2d & theBegin, gp_Pnt2d & theEnd) const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") IntPatch_Polygo::~IntPatch_Polygo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_Polygo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_PolyLine;
class IntPatch_PolyLine : public IntPatch_Polygo {
	public:
		%feature("autodoc", "1");
		IntPatch_PolyLine();
		%feature("autodoc", "1");
		IntPatch_PolyLine(const Standard_Real InitDefle);
		%feature("autodoc", "1");
		void SetWLine(const Standard_Boolean OnFirst, const Handle_IntPatch_WLine &Line);
		%feature("autodoc", "1");
		void SetRLine(const Standard_Boolean OnFirst, const Handle_IntPatch_RLine &Line);
		%feature("autodoc", "1");
		void ResetError();

};
%feature("shadow") IntPatch_PolyLine::~IntPatch_PolyLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_PolyLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking;
class IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking(const Handle_IntPatch_TheIWLineOfTheIWalking &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_IntPatch_TheIWLineOfTheIWalking & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking {
	Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking GetHandle() {
	return *(Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking*) &$self;
	}
};
%extend IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking::~IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_Line;
class IntPatch_Line : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void SetValue(const Standard_Boolean Uiso1, const Standard_Boolean Viso1, const Standard_Boolean Uiso2, const Standard_Boolean Viso2);
		%feature("autodoc", "1");
		IntPatch_IType ArcType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent() const;
		%feature("autodoc", "1");
		IntSurf_TypeTrans TransitionOnS1() const;
		%feature("autodoc", "1");
		IntSurf_TypeTrans TransitionOnS2() const;
		%feature("autodoc", "1");
		IntSurf_Situation SituationS1() const;
		%feature("autodoc", "1");
		IntSurf_Situation SituationS2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUIsoOnS1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVIsoOnS1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUIsoOnS2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVIsoOnS2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPatch_Line {
	Handle_IntPatch_Line GetHandle() {
	return *(Handle_IntPatch_Line*) &$self;
	}
};
%extend IntPatch_Line {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntPatch_Line::~IntPatch_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_Line {
	void _kill_pointed() {
		delete $self;
	}
};
%extend IntPatch_Line {
	IntPatch_Line () {}
};


%nodefaultctor IntPatch_ALine;
class IntPatch_ALine : public IntPatch_Line {
	public:
		%feature("autodoc", "1");
		IntPatch_ALine(const IntAna_Curve &C, const Standard_Boolean Tang, const IntSurf_TypeTrans Trans1, const IntSurf_TypeTrans Trans2);
		%feature("autodoc", "1");
		IntPatch_ALine(const IntAna_Curve &C, const Standard_Boolean Tang, const IntSurf_Situation Situ1, const IntSurf_Situation Situ2);
		%feature("autodoc", "1");
		IntPatch_ALine(const IntAna_Curve &C, const Standard_Boolean Tang);
		%feature("autodoc", "1");
		void AddVertex(const IntPatch_Point &Pnt);
		%feature("autodoc", "1");
		void Replace(const Standard_Integer Index, const IntPatch_Point &Pnt);
		%feature("autodoc", "1");
		void SetFirstPoint(const Standard_Integer IndFirst);
		%feature("autodoc", "1");
		void SetLastPoint(const Standard_Integer IndLast);
		%feature("autodoc", "1");
		Standard_Real FirstParameter(Standard_Boolean & IsIncluded) const;
		%feature("autodoc", "1");
		Standard_Real LastParameter(Standard_Boolean & IsIncluded) const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real U);
		%feature("autodoc", "1");
		Standard_Boolean D1(const Standard_Real U, gp_Pnt & P, gp_Vec & Du);
		%feature("autodoc","FindParameter(const P) -> Standard_Real");

		Standard_Boolean FindParameter(const gp_Pnt P, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastPoint() const;
		%feature("autodoc", "1");
		const IntPatch_Point & FirstPoint() const;
		%feature("autodoc", "1");
		const IntPatch_Point & LastPoint() const;
		%feature("autodoc", "1");
		Standard_Integer NbVertex() const;
		%feature("autodoc", "1");
		const IntPatch_Point & Vertex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void ComputeVertexParameters(const Standard_Real Tol);
		%feature("autodoc", "1");
		const IntAna_Curve & Curve() const;

};
%extend IntPatch_ALine {
	Handle_IntPatch_ALine GetHandle() {
	return *(Handle_IntPatch_ALine*) &$self;
	}
};
%extend IntPatch_ALine {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntPatch_ALine::~IntPatch_ALine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_ALine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds;
class IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds(const IntPatch_ThePathPointOfTheSOnBounds &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntPatch_ThePathPointOfTheSOnBounds & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds {
	Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds GetHandle() {
	return *(Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds*) &$self;
	}
};
%extend IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds::~IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds;
class IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds(const IntPatch_TheSegmentOfTheSOnBounds &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntPatch_TheSegmentOfTheSOnBounds & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds {
	Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds GetHandle() {
	return *(Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds*) &$self;
	}
};
%extend IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds::~IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_PrmPrmIntersection;
class IntPatch_PrmPrmIntersection {
	public:
		%feature("autodoc", "1");
		IntPatch_PrmPrmIntersection();
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Caro1, const IntPatch_Polyhedron &Polyhedron1, const Handle_Adaptor3d_TopolTool &Domain1, const Handle_Adaptor3d_HSurface &Caro2, const IntPatch_Polyhedron &Polyhedron2, const Handle_Adaptor3d_TopolTool &Domain2, const Standard_Real TolTangency, const Standard_Real Epsilon, const Standard_Real Deflection, const Standard_Real Increment);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Caro1, const IntPatch_Polyhedron &Polyhedron1, const Handle_Adaptor3d_TopolTool &Domain1, const Standard_Real TolTangency, const Standard_Real Epsilon, const Standard_Real Deflection, const Standard_Real Increment);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Caro1, const Handle_Adaptor3d_TopolTool &Domain1, const Handle_Adaptor3d_HSurface &Caro2, const Handle_Adaptor3d_TopolTool &Domain2, const Standard_Real TolTangency, const Standard_Real Epsilon, const Standard_Real Deflection, const Standard_Real Increment, const Standard_Boolean ClearFlag=1);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Caro1, const Handle_Adaptor3d_TopolTool &Domain1, const Handle_Adaptor3d_HSurface &Caro2, const Handle_Adaptor3d_TopolTool &Domain2, const Standard_Real TolTangency, const Standard_Real Epsilon, const Standard_Real Deflection, const Standard_Real Increment, IntSurf_ListOfPntOn2S & ListOfPnts, const Standard_Boolean RestrictLine);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Caro1, const Handle_Adaptor3d_TopolTool &Domain1, const Handle_Adaptor3d_HSurface &Caro2, const Handle_Adaptor3d_TopolTool &Domain2, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real TolTangency, const Standard_Real Epsilon, const Standard_Real Deflection, const Standard_Real Increment);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Caro1, const Handle_Adaptor3d_TopolTool &Domain1, const Standard_Real TolTangency, const Standard_Real Epsilon, const Standard_Real Deflection, const Standard_Real Increment);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Caro1, const Handle_Adaptor3d_TopolTool &Domain1, const Handle_Adaptor3d_HSurface &Caro2, const IntPatch_Polyhedron &Polyhedron2, const Handle_Adaptor3d_TopolTool &Domain2, const Standard_Real TolTangency, const Standard_Real Epsilon, const Standard_Real Deflection, const Standard_Real Increment);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Caro1, const IntPatch_Polyhedron &Polyhedron1, const Handle_Adaptor3d_TopolTool &Domain1, const Handle_Adaptor3d_HSurface &Caro2, const Handle_Adaptor3d_TopolTool &Domain2, const Standard_Real TolTangency, const Standard_Real Epsilon, const Standard_Real Deflection, const Standard_Real Increment);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		const Handle_IntPatch_Line & Line(const Standard_Integer n) const;
		%feature("autodoc", "1");
		Handle_IntPatch_Line NewLine(const Handle_Adaptor3d_HSurface &Caro1, const Handle_Adaptor3d_HSurface &Caro2, const Standard_Integer IndexLine, const Standard_Integer LowPoint, const Standard_Integer HighPoint, const Standard_Integer NbPoints) const;
		%feature("autodoc", "1");
		Standard_Integer GrilleInteger(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz) const;
		%feature("autodoc","IntegerGrille(Standard_Integer tt) -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		void IntegerGrille(const Standard_Integer tt, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer DansGrille(const Standard_Integer t) const;
		%feature("autodoc", "1");
		Standard_Integer NbPointsGrille() const;
		%feature("autodoc", "1");
		void RemplitLin(const Standard_Integer x1, const Standard_Integer y1, const Standard_Integer z1, const Standard_Integer x2, const Standard_Integer y2, const Standard_Integer z2, IntPatch_PrmPrmIntersection_T3Bits & Map) const;
		%feature("autodoc", "1");
		void RemplitTri(const Standard_Integer x1, const Standard_Integer y1, const Standard_Integer z1, const Standard_Integer x2, const Standard_Integer y2, const Standard_Integer z2, const Standard_Integer x3, const Standard_Integer y3, const Standard_Integer z3, IntPatch_PrmPrmIntersection_T3Bits & Map) const;
		%feature("autodoc", "1");
		void Remplit(const Standard_Integer a, const Standard_Integer b, const Standard_Integer c, IntPatch_PrmPrmIntersection_T3Bits & Map) const;
		%feature("autodoc", "1");
		Standard_Integer CodeReject(const Standard_Real x0, const Standard_Real y0, const Standard_Real z0, const Standard_Real x1, const Standard_Real y1, const Standard_Real z1, const Standard_Real x, const Standard_Real y, const Standard_Real z) const;
		%feature("autodoc", "1");
		void PointDepart(Handle_IntSurf_LineOn2S & LineOn2S, const Handle_Adaptor3d_HSurface &S1, const Standard_Integer SU1, const Standard_Integer SV1, const Handle_Adaptor3d_HSurface &S2, const Standard_Integer SU2, const Standard_Integer SV2) const;

};
%feature("shadow") IntPatch_PrmPrmIntersection::~IntPatch_PrmPrmIntersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_PrmPrmIntersection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_TheSurfFunction;
class IntPatch_TheSurfFunction : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		IntPatch_TheSurfFunction();
		%feature("autodoc", "1");
		IntPatch_TheSurfFunction(const Handle_Adaptor3d_HSurface &PS, const IntSurf_Quadric &IS);
		%feature("autodoc", "1");
		IntPatch_TheSurfFunction(const IntSurf_Quadric &IS);
		%feature("autodoc", "1");
		void Set(const Handle_Adaptor3d_HSurface &PS);
		%feature("autodoc", "1");
		void SetImplicitSurface(const IntSurf_Quadric &IS);
		%feature("autodoc", "1");
		void Set(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		const gp_Pnt  Point() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent();
		%feature("autodoc", "1");
		const gp_Vec  Direction3d();
		%feature("autodoc", "1");
		const gp_Dir2d  Direction2d();
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & PSurface() const;
		%feature("autodoc", "1");
		const IntSurf_Quadric & ISurface() const;

};
%feature("shadow") IntPatch_TheSurfFunction::~IntPatch_TheSurfFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_TheSurfFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_TheInt2SOfThePWalkingInter;
class IntPatch_TheInt2SOfThePWalkingInter {
	public:
		%feature("autodoc", "1");
		IntPatch_TheInt2SOfThePWalkingInter();
		%feature("autodoc", "1");
		IntPatch_TheInt2SOfThePWalkingInter(const TColStd_Array1OfReal &Param, const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Standard_Real TolTangency);
		%feature("autodoc", "1");
		IntPatch_TheInt2SOfThePWalkingInter(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Standard_Real TolTangency);
		%feature("autodoc", "1");
		IntImp_ConstIsoparametric Perform(const TColStd_Array1OfReal &Param, math_FunctionSetRoot & Rsnld);
		%feature("autodoc", "1");
		IntImp_ConstIsoparametric Perform(const TColStd_Array1OfReal &Param, math_FunctionSetRoot & Rsnld, const IntImp_ConstIsoparametric ChoixIso);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & Point() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent() const;
		%feature("autodoc", "1");
		const gp_Dir  Direction() const;
		%feature("autodoc", "1");
		const gp_Dir2d  DirectionOnS1() const;
		%feature("autodoc", "1");
		const gp_Dir2d  DirectionOnS2() const;
		%feature("autodoc", "1");
		IntPatch_TheFunctionOfTheInt2SOfThePWalkingInter & Function();

};
%feature("shadow") IntPatch_TheInt2SOfThePWalkingInter::~IntPatch_TheInt2SOfThePWalkingInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_TheInt2SOfThePWalkingInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_ThePWalkingInter;
class IntPatch_ThePWalkingInter {
	public:
		%feature("autodoc", "1");
		IntPatch_ThePWalkingInter(const Handle_Adaptor3d_HSurface &Caro1, const Handle_Adaptor3d_HSurface &Caro2, const Standard_Real TolTangency, const Standard_Real Epsilon, const Standard_Real Deflection, const Standard_Real Increment);
		%feature("autodoc", "1");
		IntPatch_ThePWalkingInter(const Handle_Adaptor3d_HSurface &Caro1, const Handle_Adaptor3d_HSurface &Caro2, const Standard_Real TolTangency, const Standard_Real Epsilon, const Standard_Real Deflection, const Standard_Real Increment, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2);
		%feature("autodoc", "1");
		void Perform(const TColStd_Array1OfReal &ParDep);
		%feature("autodoc", "1");
		void Perform(const TColStd_Array1OfReal &ParDep, const Standard_Real u1min, const Standard_Real v1min, const Standard_Real u2min, const Standard_Real v2min, const Standard_Real u1max, const Standard_Real v1max, const Standard_Real u2max, const Standard_Real v2max);
		%feature("autodoc", "1");
		Standard_Boolean PerformFirstPoint(const TColStd_Array1OfReal &ParDep, IntSurf_PntOn2S & FirstPoint);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IntSurf_LineOn2S & Line() const;
		%feature("autodoc", "1");
		Standard_Boolean TangentAtFirst() const;
		%feature("autodoc", "1");
		Standard_Boolean TangentAtLast() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc","TangentAtLine() -> Standard_Integer");

		const gp_Dir  TangentAtLine(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		IntWalk_StatusDeflection TestDeflection();
		%feature("autodoc", "1");
		Standard_Boolean TestArret(const Standard_Boolean DejaReparti, TColStd_Array1OfReal & Param, IntImp_ConstIsoparametric & ChoixIso);
		%feature("autodoc", "1");
		void RepartirOuDiviser(Standard_Boolean & DejaReparti, IntImp_ConstIsoparametric & ChoixIso, Standard_Boolean & Arrive);
		%feature("autodoc", "1");
		void AddAPoint(Handle_IntSurf_LineOn2S & theLine, const IntSurf_PntOn2S &POn2S);

};
%feature("shadow") IntPatch_ThePWalkingInter::~IntPatch_ThePWalkingInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_ThePWalkingInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_ImpPrmIntersection;
class IntPatch_ImpPrmIntersection {
	public:
		%feature("autodoc", "1");
		IntPatch_ImpPrmIntersection();
		%feature("autodoc", "1");
		IntPatch_ImpPrmIntersection(const Handle_Adaptor3d_HSurface &Surf1, const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_HSurface &Surf2, const Handle_Adaptor3d_TopolTool &D2, const Standard_Real TolArc, const Standard_Real TolTang, const Standard_Real Fleche, const Standard_Real Pas);
		%feature("autodoc", "1");
		void SetStartPoint(const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Surf1, const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_HSurface &Surf2, const Handle_Adaptor3d_TopolTool &D2, const Standard_Real TolArc, const Standard_Real TolTang, const Standard_Real Fleche, const Standard_Real Pas);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer NbPnts() const;
		%feature("autodoc", "1");
		const IntPatch_Point & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		const Handle_IntPatch_Line & Line(const Standard_Integer Index) const;

};
%feature("shadow") IntPatch_ImpPrmIntersection::~IntPatch_ImpPrmIntersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_ImpPrmIntersection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_SequenceNodeOfSequenceOfLine;
class IntPatch_SequenceNodeOfSequenceOfLine : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntPatch_SequenceNodeOfSequenceOfLine(const Handle_IntPatch_Line &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_IntPatch_Line & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPatch_SequenceNodeOfSequenceOfLine {
	Handle_IntPatch_SequenceNodeOfSequenceOfLine GetHandle() {
	return *(Handle_IntPatch_SequenceNodeOfSequenceOfLine*) &$self;
	}
};
%extend IntPatch_SequenceNodeOfSequenceOfLine {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntPatch_SequenceNodeOfSequenceOfLine::~IntPatch_SequenceNodeOfSequenceOfLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_SequenceNodeOfSequenceOfLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_CSFunction;
class IntPatch_CSFunction : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		IntPatch_CSFunction(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor2d_HCurve2d &C, const Handle_Adaptor3d_HSurface &S2);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		const gp_Pnt  Point() const;
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & AuxillarSurface() const;
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & AuxillarCurve() const;

};
%feature("shadow") IntPatch_CSFunction::~IntPatch_CSFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_CSFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_LineConstructor;
class IntPatch_LineConstructor {
	public:
		%feature("autodoc", "1");
		IntPatch_LineConstructor(const Standard_Integer mode);
		%feature("autodoc", "1");
		void Perform(const IntPatch_SequenceOfLine &SL, const Handle_IntPatch_Line &L, const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_TopolTool &D2, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		Handle_IntPatch_Line Line(const Standard_Integer index) const;

};
%feature("shadow") IntPatch_LineConstructor::~IntPatch_LineConstructor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_LineConstructor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_ThePathPointOfTheSOnBounds;
class IntPatch_ThePathPointOfTheSOnBounds {
	public:
		%feature("autodoc", "1");
		IntPatch_ThePathPointOfTheSOnBounds();
		%feature("autodoc", "1");
		IntPatch_ThePathPointOfTheSOnBounds(const gp_Pnt P, const Standard_Real Tol, const Handle_Adaptor3d_HVertex &V, const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Parameter);
		%feature("autodoc", "1");
		IntPatch_ThePathPointOfTheSOnBounds(const gp_Pnt P, const Standard_Real Tol, const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Parameter);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt P, const Standard_Real Tol, const Handle_Adaptor3d_HVertex &V, const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Parameter);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt P, const Standard_Real Tol, const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Parameter);
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean IsNew() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HVertex & Vertex() const;
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & Arc() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;

};
%feature("shadow") IntPatch_ThePathPointOfTheSOnBounds::~IntPatch_ThePathPointOfTheSOnBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_ThePathPointOfTheSOnBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_PrmPrmIntersection_T3Bits;
class IntPatch_PrmPrmIntersection_T3Bits {
	public:
		%feature("autodoc", "1");
		IntPatch_PrmPrmIntersection_T3Bits(const Standard_Integer size);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void Add(const Standard_Integer t);
		%feature("autodoc", "1");
		Standard_Integer Val(const Standard_Integer t) const;
		%feature("autodoc", "1");
		void Raz(const Standard_Integer t);
		%feature("autodoc", "1");
		void ResetAnd();
		%feature("autodoc","And() -> Standard_Integer");

		Standard_Integer And(IntPatch_PrmPrmIntersection_T3Bits & Oth, Standard_Integer &OutValue);

};
%feature("shadow") IntPatch_PrmPrmIntersection_T3Bits::~IntPatch_PrmPrmIntersection_T3Bits %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_PrmPrmIntersection_T3Bits {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_SequenceOfPathPointOfTheSOnBounds;
class IntPatch_SequenceOfPathPointOfTheSOnBounds : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntPatch_SequenceOfPathPointOfTheSOnBounds();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntPatch_SequenceOfPathPointOfTheSOnBounds & Assign(const IntPatch_SequenceOfPathPointOfTheSOnBounds &Other);
		%feature("autodoc", "1");
		const IntPatch_SequenceOfPathPointOfTheSOnBounds & operator=(const IntPatch_SequenceOfPathPointOfTheSOnBounds &Other);
		%feature("autodoc", "1");
		void Append(const IntPatch_ThePathPointOfTheSOnBounds &T);
		%feature("autodoc", "1");
		void Append(IntPatch_SequenceOfPathPointOfTheSOnBounds & S);
		%feature("autodoc", "1");
		void Prepend(const IntPatch_ThePathPointOfTheSOnBounds &T);
		%feature("autodoc", "1");
		void Prepend(IntPatch_SequenceOfPathPointOfTheSOnBounds & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntPatch_ThePathPointOfTheSOnBounds &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntPatch_SequenceOfPathPointOfTheSOnBounds & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntPatch_ThePathPointOfTheSOnBounds &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntPatch_SequenceOfPathPointOfTheSOnBounds & S);
		%feature("autodoc", "1");
		const IntPatch_ThePathPointOfTheSOnBounds & First() const;
		%feature("autodoc", "1");
		const IntPatch_ThePathPointOfTheSOnBounds & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntPatch_SequenceOfPathPointOfTheSOnBounds & S);
		%feature("autodoc", "1");
		const IntPatch_ThePathPointOfTheSOnBounds & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntPatch_ThePathPointOfTheSOnBounds & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntPatch_ThePathPointOfTheSOnBounds &I);
		%feature("autodoc", "1");
		IntPatch_ThePathPointOfTheSOnBounds & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntPatch_ThePathPointOfTheSOnBounds & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntPatch_SequenceOfPathPointOfTheSOnBounds::~IntPatch_SequenceOfPathPointOfTheSOnBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_SequenceOfPathPointOfTheSOnBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_Intersection;
class IntPatch_Intersection {
	public:
		%feature("autodoc", "1");
		IntPatch_Intersection();
		%feature("autodoc", "1");
		IntPatch_Intersection(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_TopolTool &D2, const Standard_Real TolArc, const Standard_Real TolTang);
		%feature("autodoc", "1");
		IntPatch_Intersection(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &D1, const Standard_Real TolArc, const Standard_Real TolTang);
		%feature("autodoc", "1");
		void SetTolerances(const Standard_Real TolArc, const Standard_Real TolTang, const Standard_Real UVMaxStep, const Standard_Real Fleche);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_TopolTool &D2, const Standard_Real TolArc, const Standard_Real TolTang);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_TopolTool &D2, const Standard_Real TolArc, const Standard_Real TolTang, IntSurf_ListOfPntOn2S & LOfPnts, const Standard_Boolean RestrictLine=1);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_TopolTool &D2, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real TolArc, const Standard_Real TolTang);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &D1, const Standard_Real TolArc, const Standard_Real TolTang);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean TangentFaces() const;
		%feature("autodoc", "1");
		Standard_Boolean OppositeFaces() const;
		%feature("autodoc", "1");
		Standard_Integer NbPnts() const;
		%feature("autodoc", "1");
		const IntPatch_Point & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		const Handle_IntPatch_Line & Line(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntPatch_SequenceOfLine & SequenceOfLine() const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Mode, const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_TopolTool &D2) const;

};
%feature("shadow") IntPatch_Intersection::~IntPatch_Intersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_Intersection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_Point;
class IntPatch_Point {
	public:
		%feature("autodoc", "1");
		IntPatch_Point();
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt Pt, const Standard_Real Tol, const Standard_Boolean Tangent);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt Pt);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetParameters(const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real Para);
		%feature("autodoc", "1");
		void SetVertex(const Standard_Boolean OnFirst, const Handle_Adaptor3d_HVertex &V);
		%feature("autodoc", "1");
		void SetArc(const Standard_Boolean OnFirst, const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Param, const IntSurf_Transition &TLine, const IntSurf_Transition &TArc);
		%feature("autodoc", "1");
		void SetMultiple(const Standard_Boolean IsMult);
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnLine() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc","ParametersOnS1() -> [Standard_Real, Standard_Real]");

		void ParametersOnS1(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ParametersOnS2() -> [Standard_Real, Standard_Real]");

		void ParametersOnS2(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMultiple() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnDomS1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVertexOnS1() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HVertex & VertexOnS1() const;
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & ArcOnS1() const;
		%feature("autodoc", "1");
		const IntSurf_Transition & TransitionLineArc1() const;
		%feature("autodoc", "1");
		const IntSurf_Transition & TransitionOnS1() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnArc1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnDomS2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVertexOnS2() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HVertex & VertexOnS2() const;
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & ArcOnS2() const;
		%feature("autodoc", "1");
		const IntSurf_Transition & TransitionLineArc2() const;
		%feature("autodoc", "1");
		const IntSurf_Transition & TransitionOnS2() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnArc2() const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & PntOn2S() const;
		%feature("autodoc","Parameters() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Parameters(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void ReverseTransition();
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") IntPatch_Point::~IntPatch_Point %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_Point {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_PolyArc;
class IntPatch_PolyArc : public IntPatch_Polygo {
	public:
		%feature("autodoc", "1");
		IntPatch_PolyArc(const Handle_Adaptor2d_HCurve2d &A, const Standard_Integer NbSample, const Standard_Real Pfirst, const Standard_Real Plast, const Bnd_Box2d &BoxOtherPolygon);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetOffset(const Standard_Real OffsetX, const Standard_Real OffsetY);

};
%feature("shadow") IntPatch_PolyArc::~IntPatch_PolyArc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_PolyArc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_ImpImpIntersection;
class IntPatch_ImpImpIntersection {
	public:
		%feature("autodoc", "1");
		IntPatch_ImpImpIntersection();
		%feature("autodoc", "1");
		IntPatch_ImpImpIntersection(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_TopolTool &D2, const Standard_Real TolArc, const Standard_Real TolTang);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_TopolTool &D2, const Standard_Real TolArc, const Standard_Real TolTang);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean TangentFaces() const;
		%feature("autodoc", "1");
		Standard_Boolean OppositeFaces() const;
		%feature("autodoc", "1");
		Standard_Integer NbPnts() const;
		%feature("autodoc", "1");
		const IntPatch_Point & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		const Handle_IntPatch_Line & Line(const Standard_Integer Index) const;

};
%feature("shadow") IntPatch_ImpImpIntersection::~IntPatch_ImpImpIntersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_ImpImpIntersection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_PolyhedronTool;
class IntPatch_PolyhedronTool {
	public:
		%feature("autodoc", "1");
		IntPatch_PolyhedronTool();
		%feature("autodoc", "1");
		static		const Bnd_Box & Bounding(const IntPatch_Polyhedron &thePolyh);
		%feature("autodoc", "1");
		static		const Handle_Bnd_HArray1OfBox & ComponentsBounding(const IntPatch_Polyhedron &thePolyh);
		%feature("autodoc", "1");
		static		Standard_Real DeflectionOverEstimation(const IntPatch_Polyhedron &thePolyh);
		%feature("autodoc", "1");
		static		Standard_Integer NbTriangles(const IntPatch_Polyhedron &thePolyh);
		%feature("autodoc","Triangle(const thePolyh, Standard_Integer Index) -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		static		void Triangle(const IntPatch_Polyhedron &thePolyh, const Standard_Integer Index, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		static		const gp_Pnt  Point(const IntPatch_Polyhedron &thePolyh, const Standard_Integer Index);
		%feature("autodoc","TriConnex(const thePolyh, Standard_Integer Triang, Standard_Integer Pivot, Standard_Integer Pedge) -> [Standard_Integer, Standard_Integer]");

		static		Standard_Integer TriConnex(const IntPatch_Polyhedron &thePolyh, const Standard_Integer Triang, const Standard_Integer Pivot, const Standard_Integer Pedge, Standard_Integer &OutValue, Standard_Integer &OutValue);

};
%feature("shadow") IntPatch_PolyhedronTool::~IntPatch_PolyhedronTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_PolyhedronTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_TheSOnBounds;
class IntPatch_TheSOnBounds {
	public:
		%feature("autodoc", "1");
		IntPatch_TheSOnBounds();
		%feature("autodoc", "1");
		void Perform(IntPatch_ArcFunction & F, const Handle_Adaptor3d_TopolTool &Domain, const Standard_Real TolBoundary, const Standard_Real TolTangency);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean AllArcSolution() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntPatch_ThePathPointOfTheSOnBounds & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const IntPatch_TheSegmentOfTheSOnBounds & Segment(const Standard_Integer Index) const;

};
%feature("shadow") IntPatch_TheSOnBounds::~IntPatch_TheSOnBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_TheSOnBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_TheSearchInside;
class IntPatch_TheSearchInside {
	public:
		%feature("autodoc", "1");
		IntPatch_TheSearchInside();
		%feature("autodoc", "1");
		IntPatch_TheSearchInside(IntPatch_TheSurfFunction & F, const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &T, const Standard_Real Epsilon);
		%feature("autodoc", "1");
		void Perform(IntPatch_TheSurfFunction & F, const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &T, const Standard_Real Epsilon);
		%feature("autodoc", "1");
		void Perform(IntPatch_TheSurfFunction & F, const Handle_Adaptor3d_HSurface &Surf, const Standard_Real UStart, const Standard_Real VStart);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntSurf_InteriorPoint & Value(const Standard_Integer Index) const;

};
%feature("shadow") IntPatch_TheSearchInside::~IntPatch_TheSearchInside %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_TheSearchInside {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_TheIWLineOfTheIWalking;
class IntPatch_TheIWLineOfTheIWalking : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IntPatch_TheIWLineOfTheIWalking();
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void Cut(const Standard_Integer Index);
		%feature("autodoc", "1");
		void AddPoint(const IntSurf_PntOn2S &P);
		%feature("autodoc", "1");
		void AddStatusFirst(const Standard_Boolean Closed, const Standard_Boolean HasFirst);
		%feature("autodoc", "1");
		void AddStatusFirst(const Standard_Boolean Closed, const Standard_Boolean HasFirst, const Standard_Integer Index, const IntSurf_PathPoint &P);
		%feature("autodoc", "1");
		void AddStatusFirstLast(const Standard_Boolean Closed, const Standard_Boolean HasFirst, const Standard_Boolean HasLast);
		%feature("autodoc", "1");
		void AddStatusLast(const Standard_Boolean HasLast);
		%feature("autodoc", "1");
		void AddStatusLast(const Standard_Boolean HasLast, const Standard_Integer Index, const IntSurf_PathPoint &P);
		%feature("autodoc", "1");
		void AddIndexPassing(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetTangentVector(const gp_Vec V, const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetTangencyAtBegining(const Standard_Boolean IsTangent);
		%feature("autodoc", "1");
		void SetTangencyAtEnd(const Standard_Boolean IsTangent);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IntSurf_LineOn2S & Line() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastPoint() const;
		%feature("autodoc", "1");
		const IntSurf_PathPoint & FirstPoint() const;
		%feature("autodoc", "1");
		Standard_Integer FirstPointIndex() const;
		%feature("autodoc", "1");
		const IntSurf_PathPoint & LastPoint() const;
		%feature("autodoc", "1");
		Standard_Integer LastPointIndex() const;
		%feature("autodoc", "1");
		Standard_Integer NbPassingPoint() const;
		%feature("autodoc","PassingPoint(Standard_Integer Index) -> [Standard_Integer, Standard_Integer]");

		void PassingPoint(const Standard_Integer Index, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","TangentVector() -> Standard_Integer");

		const gp_Vec  TangentVector(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangentAtBegining() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangentAtEnd() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPatch_TheIWLineOfTheIWalking {
	Handle_IntPatch_TheIWLineOfTheIWalking GetHandle() {
	return *(Handle_IntPatch_TheIWLineOfTheIWalking*) &$self;
	}
};
%extend IntPatch_TheIWLineOfTheIWalking {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntPatch_TheIWLineOfTheIWalking::~IntPatch_TheIWLineOfTheIWalking %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_TheIWLineOfTheIWalking {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_HInterTool;
class IntPatch_HInterTool {
	public:
		%feature("autodoc", "1");
		IntPatch_HInterTool();
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S, const Standard_Real u1, const Standard_Real u2);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S, const Standard_Real v1, const Standard_Real v2);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplePoints(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc","SamplePoint(const S, Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		static		void SamplePoint(const Handle_Adaptor3d_HSurface &S, const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean HasBeenSeen(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesOnArc(const Handle_Adaptor2d_HCurve2d &A);
		%feature("autodoc","Bounds(const C) -> [Standard_Real, Standard_Real]");

		static		void Bounds(const Handle_Adaptor2d_HCurve2d &C, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","Project(const C, const P) -> Standard_Real");

		static		Standard_Boolean Project(const Handle_Adaptor2d_HCurve2d &C, const gp_Pnt2d P, Standard_Real &OutValue, gp_Pnt2d & Ptproj);
		%feature("autodoc", "1");
		static		Standard_Real Tolerance(const Handle_Adaptor3d_HVertex &V, const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Real Parameter(const Handle_Adaptor3d_HVertex &V, const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbPoints(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc","Value(const C, Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		static		void Value(const Handle_Adaptor2d_HCurve2d &C, const Standard_Integer Index, gp_Pnt & Pt, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVertex(const Handle_Adaptor2d_HCurve2d &C, const Standard_Integer Index);
		%feature("autodoc", "1");
		static		void Vertex(const Handle_Adaptor2d_HCurve2d &C, const Standard_Integer Index, Handle_Adaptor3d_HVertex & V);
		%feature("autodoc", "1");
		static		Standard_Integer NbSegments(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc","HasFirstPoint(const C, Standard_Integer Index) -> Standard_Integer");

		static		Standard_Boolean HasFirstPoint(const Handle_Adaptor2d_HCurve2d &C, const Standard_Integer Index, Standard_Integer &OutValue);
		%feature("autodoc","HasLastPoint(const C, Standard_Integer Index) -> Standard_Integer");

		static		Standard_Boolean HasLastPoint(const Handle_Adaptor2d_HCurve2d &C, const Standard_Integer Index, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean IsAllSolution(const Handle_Adaptor2d_HCurve2d &C);

};
%feature("shadow") IntPatch_HInterTool::~IntPatch_HInterTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_HInterTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_SequenceOfLine;
class IntPatch_SequenceOfLine : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntPatch_SequenceOfLine();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntPatch_SequenceOfLine & Assign(const IntPatch_SequenceOfLine &Other);
		%feature("autodoc", "1");
		const IntPatch_SequenceOfLine & operator=(const IntPatch_SequenceOfLine &Other);
		%feature("autodoc", "1");
		void Append(const Handle_IntPatch_Line &T);
		%feature("autodoc", "1");
		void Append(IntPatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_IntPatch_Line &T);
		%feature("autodoc", "1");
		void Prepend(IntPatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_IntPatch_Line &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntPatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_IntPatch_Line &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntPatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		const Handle_IntPatch_Line & First() const;
		%feature("autodoc", "1");
		const Handle_IntPatch_Line & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntPatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		const Handle_IntPatch_Line & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IntPatch_Line & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IntPatch_Line &I);
		%feature("autodoc", "1");
		Handle_IntPatch_Line & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IntPatch_Line & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntPatch_SequenceOfLine::~IntPatch_SequenceOfLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_SequenceOfLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_ArcFunction;
class IntPatch_ArcFunction : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		IntPatch_ArcFunction();
		%feature("autodoc", "1");
		void SetQuadric(const IntSurf_Quadric &Q);
		%feature("autodoc", "1");
		void Set(const Handle_Adaptor2d_HCurve2d &A);
		%feature("autodoc", "1");
		void Set(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer NbSamples() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		const gp_Pnt  Valpoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntSurf_Quadric & Quadric() const;
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & Arc() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & Surface() const;

};
%feature("shadow") IntPatch_ArcFunction::~IntPatch_ArcFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_ArcFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_WLine;
class IntPatch_WLine : public IntPatch_Line {
	public:
		%feature("autodoc", "1");
		IntPatch_WLine(const Handle_IntSurf_LineOn2S &Line, const Standard_Boolean Tang, const IntSurf_TypeTrans Trans1, const IntSurf_TypeTrans Trans2);
		%feature("autodoc", "1");
		IntPatch_WLine(const Handle_IntSurf_LineOn2S &Line, const Standard_Boolean Tang, const IntSurf_Situation Situ1, const IntSurf_Situation Situ2);
		%feature("autodoc", "1");
		IntPatch_WLine(const Handle_IntSurf_LineOn2S &Line, const Standard_Boolean Tang);
		%feature("autodoc", "1");
		void AddVertex(const IntPatch_Point &Pnt);
		%feature("autodoc", "1");
		void SetPoint(const Standard_Integer Index, const IntPatch_Point &Pnt);
		%feature("autodoc", "1");
		void Replace(const Standard_Integer Index, const IntPatch_Point &Pnt);
		%feature("autodoc", "1");
		void SetFirstPoint(const Standard_Integer IndFirst);
		%feature("autodoc", "1");
		void SetLastPoint(const Standard_Integer IndLast);
		%feature("autodoc", "1");
		Standard_Integer NbPnts() const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastPoint() const;
		%feature("autodoc", "1");
		const IntPatch_Point & FirstPoint() const;
		%feature("autodoc", "1");
		const IntPatch_Point & LastPoint() const;
		%feature("autodoc","FirstPoint() -> Standard_Integer");

		const IntPatch_Point & FirstPoint(Standard_Integer &OutValue) const;
		%feature("autodoc","LastPoint() -> Standard_Integer");

		const IntPatch_Point & LastPoint(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbVertex() const;
		%feature("autodoc", "1");
		const IntPatch_Point & Vertex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void ComputeVertexParameters(const Standard_Real Tol);
		%feature("autodoc", "1");
		Handle_IntSurf_LineOn2S Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutSurf1Box(const gp_Pnt2d P1);
		%feature("autodoc", "1");
		Standard_Boolean IsOutSurf2Box(const gp_Pnt2d P1);
		%feature("autodoc", "1");
		Standard_Boolean IsOutBox(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetPeriod(const Standard_Real pu1, const Standard_Real pv1, const Standard_Real pu2, const Standard_Real pv2);
		%feature("autodoc", "1");
		Standard_Real U1Period() const;
		%feature("autodoc", "1");
		Standard_Real V1Period() const;
		%feature("autodoc", "1");
		Standard_Real U2Period() const;
		%feature("autodoc", "1");
		Standard_Real V2Period() const;
		%feature("autodoc", "1");
		void SetArcOnS1(const Handle_Adaptor2d_HCurve2d &A);
		%feature("autodoc", "1");
		Standard_Boolean HasArcOnS1() const;
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & GetArcOnS1() const;
		%feature("autodoc", "1");
		void SetArcOnS2(const Handle_Adaptor2d_HCurve2d &A);
		%feature("autodoc", "1");
		Standard_Boolean HasArcOnS2() const;
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & GetArcOnS2() const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPatch_WLine {
	Handle_IntPatch_WLine GetHandle() {
	return *(Handle_IntPatch_WLine*) &$self;
	}
};
%extend IntPatch_WLine {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntPatch_WLine::~IntPatch_WLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_WLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_ALineToWLine;
class IntPatch_ALineToWLine {
	public:
		%feature("autodoc", "1");
		IntPatch_ALineToWLine(const IntSurf_Quadric &Quad1, const IntSurf_Quadric &Quad2);
		%feature("autodoc", "1");
		IntPatch_ALineToWLine(const IntSurf_Quadric &Quad1, const IntSurf_Quadric &Quad2, const Standard_Real Deflection, const Standard_Real PasMaxUV, const Standard_Integer NbMaxPoints);
		%feature("autodoc", "1");
		void SetTolParam(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real TolParam() const;
		%feature("autodoc", "1");
		void SetTolOpenDomain(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real TolOpenDomain() const;
		%feature("autodoc", "1");
		void SetTolTransition(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real TolTransition() const;
		%feature("autodoc", "1");
		void SetTol3D(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real Tol3D() const;
		%feature("autodoc", "1");
		void SetConstantParameter() const;
		%feature("autodoc", "1");
		void SetUniformAbscissa() const;
		%feature("autodoc", "1");
		void SetUniformDeflection() const;
		%feature("autodoc", "1");
		Handle_IntPatch_WLine MakeWLine(const Handle_IntPatch_ALine &aline) const;
		%feature("autodoc", "1");
		Handle_IntPatch_WLine MakeWLine(const Handle_IntPatch_ALine &aline, const Standard_Real paraminf, const Standard_Real paramsup) const;

};
%feature("shadow") IntPatch_ALineToWLine::~IntPatch_ALineToWLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_ALineToWLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_SequenceOfIWLineOfTheIWalking;
class IntPatch_SequenceOfIWLineOfTheIWalking : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntPatch_SequenceOfIWLineOfTheIWalking();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntPatch_SequenceOfIWLineOfTheIWalking & Assign(const IntPatch_SequenceOfIWLineOfTheIWalking &Other);
		%feature("autodoc", "1");
		const IntPatch_SequenceOfIWLineOfTheIWalking & operator=(const IntPatch_SequenceOfIWLineOfTheIWalking &Other);
		%feature("autodoc", "1");
		void Append(const Handle_IntPatch_TheIWLineOfTheIWalking &T);
		%feature("autodoc", "1");
		void Append(IntPatch_SequenceOfIWLineOfTheIWalking & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_IntPatch_TheIWLineOfTheIWalking &T);
		%feature("autodoc", "1");
		void Prepend(IntPatch_SequenceOfIWLineOfTheIWalking & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_IntPatch_TheIWLineOfTheIWalking &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntPatch_SequenceOfIWLineOfTheIWalking & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_IntPatch_TheIWLineOfTheIWalking &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntPatch_SequenceOfIWLineOfTheIWalking & S);
		%feature("autodoc", "1");
		const Handle_IntPatch_TheIWLineOfTheIWalking & First() const;
		%feature("autodoc", "1");
		const Handle_IntPatch_TheIWLineOfTheIWalking & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntPatch_SequenceOfIWLineOfTheIWalking & S);
		%feature("autodoc", "1");
		const Handle_IntPatch_TheIWLineOfTheIWalking & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IntPatch_TheIWLineOfTheIWalking & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IntPatch_TheIWLineOfTheIWalking &I);
		%feature("autodoc", "1");
		Handle_IntPatch_TheIWLineOfTheIWalking & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IntPatch_TheIWLineOfTheIWalking & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntPatch_SequenceOfIWLineOfTheIWalking::~IntPatch_SequenceOfIWLineOfTheIWalking %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_SequenceOfIWLineOfTheIWalking {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_SequenceOfPoint;
class IntPatch_SequenceOfPoint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntPatch_SequenceOfPoint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntPatch_SequenceOfPoint & Assign(const IntPatch_SequenceOfPoint &Other);
		%feature("autodoc", "1");
		const IntPatch_SequenceOfPoint & operator=(const IntPatch_SequenceOfPoint &Other);
		%feature("autodoc", "1");
		void Append(const IntPatch_Point &T);
		%feature("autodoc", "1");
		void Append(IntPatch_SequenceOfPoint & S);
		%feature("autodoc", "1");
		void Prepend(const IntPatch_Point &T);
		%feature("autodoc", "1");
		void Prepend(IntPatch_SequenceOfPoint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntPatch_Point &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntPatch_SequenceOfPoint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntPatch_Point &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntPatch_SequenceOfPoint & S);
		%feature("autodoc", "1");
		const IntPatch_Point & First() const;
		%feature("autodoc", "1");
		const IntPatch_Point & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntPatch_SequenceOfPoint & S);
		%feature("autodoc", "1");
		const IntPatch_Point & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntPatch_Point & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntPatch_Point &I);
		%feature("autodoc", "1");
		IntPatch_Point & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntPatch_Point & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntPatch_SequenceOfPoint::~IntPatch_SequenceOfPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_SequenceOfPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_GLine;
class IntPatch_GLine : public IntPatch_Line {
	public:
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Lin L, const Standard_Boolean Tang, const IntSurf_TypeTrans Trans1, const IntSurf_TypeTrans Trans2);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Lin L, const Standard_Boolean Tang, const IntSurf_Situation Situ1, const IntSurf_Situation Situ2);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Lin L, const Standard_Boolean Tang);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Circ C, const Standard_Boolean Tang, const IntSurf_TypeTrans Trans1, const IntSurf_TypeTrans Trans2);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Circ C, const Standard_Boolean Tang, const IntSurf_Situation Situ1, const IntSurf_Situation Situ2);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Circ C, const Standard_Boolean Tang);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Elips E, const Standard_Boolean Tang, const IntSurf_TypeTrans Trans1, const IntSurf_TypeTrans Trans2);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Elips E, const Standard_Boolean Tang, const IntSurf_Situation Situ1, const IntSurf_Situation Situ2);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Elips E, const Standard_Boolean Tang);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Parab P, const Standard_Boolean Tang, const IntSurf_TypeTrans Trans1, const IntSurf_TypeTrans Trans2);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Parab P, const Standard_Boolean Tang, const IntSurf_Situation Situ1, const IntSurf_Situation Situ2);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Parab P, const Standard_Boolean Tang);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Hypr H, const Standard_Boolean Tang, const IntSurf_TypeTrans Trans1, const IntSurf_TypeTrans Trans2);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Hypr H, const Standard_Boolean Tang, const IntSurf_Situation Situ1, const IntSurf_Situation Situ2);
		%feature("autodoc", "1");
		IntPatch_GLine(const gp_Hypr H, const Standard_Boolean Tang);
		%feature("autodoc", "1");
		void AddVertex(const IntPatch_Point &Pnt);
		%feature("autodoc", "1");
		void Replace(const Standard_Integer Index, const IntPatch_Point &Pnt);
		%feature("autodoc", "1");
		void SetFirstPoint(const Standard_Integer IndFirst);
		%feature("autodoc", "1");
		void SetLastPoint(const Standard_Integer IndLast);
		%feature("autodoc", "1");
		gp_Lin Line() const;
		%feature("autodoc", "1");
		gp_Circ Circle() const;
		%feature("autodoc", "1");
		gp_Elips Ellipse() const;
		%feature("autodoc", "1");
		gp_Parab Parabola() const;
		%feature("autodoc", "1");
		gp_Hypr Hyperbola() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastPoint() const;
		%feature("autodoc", "1");
		const IntPatch_Point & FirstPoint() const;
		%feature("autodoc", "1");
		const IntPatch_Point & LastPoint() const;
		%feature("autodoc", "1");
		Standard_Integer NbVertex() const;
		%feature("autodoc", "1");
		const IntPatch_Point & Vertex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void ComputeVertexParameters(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPatch_GLine {
	Handle_IntPatch_GLine GetHandle() {
	return *(Handle_IntPatch_GLine*) &$self;
	}
};
%extend IntPatch_GLine {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntPatch_GLine::~IntPatch_GLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_GLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_TheFunctionOfTheInt2SOfThePWalkingInter;
class IntPatch_TheFunctionOfTheInt2SOfThePWalkingInter : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		IntPatch_TheFunctionOfTheInt2SOfThePWalkingInter();
		%feature("autodoc", "1");
		IntPatch_TheFunctionOfTheInt2SOfThePWalkingInter(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		void ComputeParameters(const IntImp_ConstIsoparametric ChoixIso, const TColStd_Array1OfReal &Param, math_Vector & UVap, math_Vector & BornInf, math_Vector & BornSup, math_Vector & Tolerance);
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		gp_Pnt Point() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent(const math_Vector &UVap, TColStd_Array1OfReal & Param, IntImp_ConstIsoparametric & BestChoix);
		%feature("autodoc", "1");
		gp_Dir Direction() const;
		%feature("autodoc", "1");
		gp_Dir2d DirectionOnS1() const;
		%feature("autodoc", "1");
		gp_Dir2d DirectionOnS2() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & AuxillarSurface1() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & AuxillarSurface2() const;

};
%feature("shadow") IntPatch_TheFunctionOfTheInt2SOfThePWalkingInter::~IntPatch_TheFunctionOfTheInt2SOfThePWalkingInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_TheFunctionOfTheInt2SOfThePWalkingInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_CurvIntSurf;
class IntPatch_CurvIntSurf {
	public:
		%feature("autodoc", "1");
		IntPatch_CurvIntSurf(const Standard_Real U, const Standard_Real V, const Standard_Real W, const IntPatch_CSFunction &F, const Standard_Real TolTangency, const Standard_Real MarginCoef=0.0);
		%feature("autodoc", "1");
		IntPatch_CurvIntSurf(const IntPatch_CSFunction &F, const Standard_Real TolTangency);
		%feature("autodoc", "1");
		void Perform(const Standard_Real U, const Standard_Real V, const Standard_Real W, math_FunctionSetRoot & Rsnld, const Standard_Real u0, const Standard_Real v0, const Standard_Real u1, const Standard_Real v1, const Standard_Real w0, const Standard_Real w1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const gp_Pnt  Point() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnCurve() const;
		%feature("autodoc","ParameterOnSurface() -> [Standard_Real, Standard_Real]");

		void ParameterOnSurface(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		IntPatch_CSFunction & Function();

};
%feature("shadow") IntPatch_CurvIntSurf::~IntPatch_CurvIntSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_CurvIntSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_SequenceNodeOfSequenceOfPoint;
class IntPatch_SequenceNodeOfSequenceOfPoint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntPatch_SequenceNodeOfSequenceOfPoint(const IntPatch_Point &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntPatch_Point & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPatch_SequenceNodeOfSequenceOfPoint {
	Handle_IntPatch_SequenceNodeOfSequenceOfPoint GetHandle() {
	return *(Handle_IntPatch_SequenceNodeOfSequenceOfPoint*) &$self;
	}
};
%extend IntPatch_SequenceNodeOfSequenceOfPoint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IntPatch_SequenceNodeOfSequenceOfPoint::~IntPatch_SequenceNodeOfSequenceOfPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_SequenceNodeOfSequenceOfPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_TheInterfPolyhedron;
class IntPatch_TheInterfPolyhedron : public Intf_Interference {
	public:
		%feature("autodoc", "1");
		IntPatch_TheInterfPolyhedron();
		%feature("autodoc", "1");
		IntPatch_TheInterfPolyhedron(const IntPatch_Polyhedron &Obje1, const IntPatch_Polyhedron &Obje2);
		%feature("autodoc", "1");
		IntPatch_TheInterfPolyhedron(const IntPatch_Polyhedron &Obje);
		%feature("autodoc", "1");
		void Perform(const IntPatch_Polyhedron &Obje1, const IntPatch_Polyhedron &Obje2);
		%feature("autodoc", "1");
		void Perform(const IntPatch_Polyhedron &Obje);

};
%feature("shadow") IntPatch_TheInterfPolyhedron::~IntPatch_TheInterfPolyhedron %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_TheInterfPolyhedron {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntPatch_TheSegmentOfTheSOnBounds;
class IntPatch_TheSegmentOfTheSOnBounds {
	public:
		%feature("autodoc", "1");
		IntPatch_TheSegmentOfTheSOnBounds();
		%feature("autodoc", "1");
		void SetValue(const Handle_Adaptor2d_HCurve2d &A);
		%feature("autodoc", "1");
		void SetLimitPoint(const IntPatch_ThePathPointOfTheSOnBounds &V, const Standard_Boolean First);
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstPoint() const;
		%feature("autodoc", "1");
		const IntPatch_ThePathPointOfTheSOnBounds & FirstPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastPoint() const;
		%feature("autodoc", "1");
		const IntPatch_ThePathPointOfTheSOnBounds & LastPoint() const;

};
%feature("shadow") IntPatch_TheSegmentOfTheSOnBounds::~IntPatch_TheSegmentOfTheSOnBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntPatch_TheSegmentOfTheSOnBounds {
	void _kill_pointed() {
		delete $self;
	}
};
