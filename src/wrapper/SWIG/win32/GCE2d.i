/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module GCE2d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GCE2d_renames.i


%include GCE2d_required_python_modules.i


%include GCE2d_dependencies.i


%include GCE2d_headers.i




%nodefaultctor GCE2d_Root;
class GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gce_ErrorType Status() const;

};
%feature("shadow") GCE2d_Root::~GCE2d_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeLine;
class GCE2d_MakeLine : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Ax2d &A);
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Lin2d &L);
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Pnt2d &P, const gp_Dir2d &V);
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Lin2d &Lin, const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Lin2d &Lin, const Standard_Real Dist);
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		const Handle_Geom2d_Line & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Line & Operator() const;

};
%feature("shadow") GCE2d_MakeLine::~GCE2d_MakeLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeMirror;
class GCE2d_MakeMirror {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeMirror(const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		GCE2d_MakeMirror(const gp_Ax2d &Axis);
		%feature("autodoc", "1");
		GCE2d_MakeMirror(const gp_Lin2d &Line);
		%feature("autodoc", "1");
		GCE2d_MakeMirror(const gp_Pnt2d &Point, const gp_Dir2d &Direc);
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Operator() const;

};
%feature("shadow") GCE2d_MakeMirror::~GCE2d_MakeMirror %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeMirror {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeArcOfCircle;
class GCE2d_MakeArcOfCircle : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeArcOfCircle(const gp_Circ2d &Circ, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfCircle(const gp_Circ2d &Circ, const gp_Pnt2d &P, const Standard_Real Alpha, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfCircle(const gp_Circ2d &Circ, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfCircle(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const gp_Pnt2d &P3);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfCircle(const gp_Pnt2d &P1, const gp_Vec2d &V, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Operator() const;

};
%feature("shadow") GCE2d_MakeArcOfCircle::~GCE2d_MakeArcOfCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeArcOfCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeParabola;
class GCE2d_MakeParabola : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Parab2d &Prb);
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Ax22d &Axis, const Standard_Real Focal);
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Ax2d &MirrorAxis, const Standard_Real Focal, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Ax22d &D, const gp_Pnt2d &F);
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Ax2d &D, const gp_Pnt2d &F, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Pnt2d &S1, const gp_Pnt2d &O);
		%feature("autodoc", "1");
		const Handle_Geom2d_Parabola & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Parabola & Operator() const;

};
%feature("shadow") GCE2d_MakeParabola::~GCE2d_MakeParabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeParabola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeScale;
class GCE2d_MakeScale {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeScale(const gp_Pnt2d &Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Operator() const;

};
%feature("shadow") GCE2d_MakeScale::~GCE2d_MakeScale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeScale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeHyperbola;
class GCE2d_MakeHyperbola : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeHyperbola(const gp_Hypr2d &H);
		%feature("autodoc", "1");
		GCE2d_MakeHyperbola(const gp_Ax2d &MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GCE2d_MakeHyperbola(const gp_Ax22d &Axis, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		GCE2d_MakeHyperbola(const gp_Pnt2d &S1, const gp_Pnt2d &S2, const gp_Pnt2d &Center);
		%feature("autodoc", "1");
		const Handle_Geom2d_Hyperbola & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Hyperbola & Operator() const;

};
%feature("shadow") GCE2d_MakeHyperbola::~GCE2d_MakeHyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeHyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeArcOfHyperbola;
class GCE2d_MakeArcOfHyperbola : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeArcOfHyperbola(const gp_Hypr2d &Hypr, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfHyperbola(const gp_Hypr2d &Hypr, const gp_Pnt2d &P, const Standard_Real Alpha, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfHyperbola(const gp_Hypr2d &Hypr, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Operator() const;

};
%feature("shadow") GCE2d_MakeArcOfHyperbola::~GCE2d_MakeArcOfHyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeArcOfHyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeSegment;
class GCE2d_MakeSegment : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeSegment(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		GCE2d_MakeSegment(const gp_Pnt2d &P1, const gp_Dir2d &V, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		GCE2d_MakeSegment(const gp_Lin2d &Line, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		GCE2d_MakeSegment(const gp_Lin2d &Line, const gp_Pnt2d &Point, const Standard_Real Ulast);
		%feature("autodoc", "1");
		GCE2d_MakeSegment(const gp_Lin2d &Line, const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Operator() const;

};
%feature("shadow") GCE2d_MakeSegment::~GCE2d_MakeSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeEllipse;
class GCE2d_MakeEllipse : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeEllipse(const gp_Elips2d &E);
		%feature("autodoc", "1");
		GCE2d_MakeEllipse(const gp_Ax2d &MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeEllipse(const gp_Ax22d &Axis, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		GCE2d_MakeEllipse(const gp_Pnt2d &S1, const gp_Pnt2d &S2, const gp_Pnt2d &Center);
		%feature("autodoc", "1");
		const Handle_Geom2d_Ellipse & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Ellipse & Operator() const;

};
%feature("shadow") GCE2d_MakeEllipse::~GCE2d_MakeEllipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeEllipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeArcOfParabola;
class GCE2d_MakeArcOfParabola : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeArcOfParabola(const gp_Parab2d &Parab, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfParabola(const gp_Parab2d &Parab, const gp_Pnt2d &P, const Standard_Real Alpha, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfParabola(const gp_Parab2d &Parab, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Operator() const;

};
%feature("shadow") GCE2d_MakeArcOfParabola::~GCE2d_MakeArcOfParabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeArcOfParabola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeCircle;
class GCE2d_MakeCircle : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Circ2d &C);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Ax2d &A, const Standard_Real Radius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Ax22d &A, const Standard_Real Radius);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Circ2d &Circ, const Standard_Real Dist);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Circ2d &Circ, const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const gp_Pnt2d &P3);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Pnt2d &P, const Standard_Real Radius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Pnt2d &Center, const gp_Pnt2d &Point, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const Handle_Geom2d_Circle & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Circle & Operator() const;

};
%feature("shadow") GCE2d_MakeCircle::~GCE2d_MakeCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeRotation;
class GCE2d_MakeRotation {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeRotation(const gp_Pnt2d &Point, const Standard_Real Angle);
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Operator() const;

};
%feature("shadow") GCE2d_MakeRotation::~GCE2d_MakeRotation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeRotation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeArcOfEllipse;
class GCE2d_MakeArcOfEllipse : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeArcOfEllipse(const gp_Elips2d &Elips, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfEllipse(const gp_Elips2d &Elips, const gp_Pnt2d &P, const Standard_Real Alpha, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfEllipse(const gp_Elips2d &Elips, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Operator() const;

};
%feature("shadow") GCE2d_MakeArcOfEllipse::~GCE2d_MakeArcOfEllipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeArcOfEllipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GCE2d_MakeTranslation;
class GCE2d_MakeTranslation {
	public:
		%feature("autodoc", "1");
		GCE2d_MakeTranslation(const gp_Vec2d &Vect);
		%feature("autodoc", "1");
		GCE2d_MakeTranslation(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2);
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Operator() const;

};
%feature("shadow") GCE2d_MakeTranslation::~GCE2d_MakeTranslation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GCE2d_MakeTranslation {
	void _kill_pointed() {
		delete $self;
	}
};
