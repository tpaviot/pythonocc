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

%module GC
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GC_renames.i


%include GC_required_python_modules.i


%include GC_dependencies.i


%include GC_headers.i




%nodefaultctor GC_Root;
class GC_Root {
	public:
		%feature("autodoc", "1");
		GC_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gce_ErrorType Status() const;

};
%feature("shadow") GC_Root::~GC_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeEllipse;
class GC_MakeEllipse : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeEllipse(const gp_Elips E);
		%feature("autodoc", "1");
		GC_MakeEllipse(const gp_Ax2 A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		GC_MakeEllipse(const gp_Pnt S1, const gp_Pnt S2, const gp_Pnt Center);
		%feature("autodoc", "1");
		const Handle_Geom_Ellipse & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Ellipse & Operator() const;

};
%feature("shadow") GC_MakeEllipse::~GC_MakeEllipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeEllipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeConicalSurface;
class GC_MakeConicalSurface : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Ax2 A2, const Standard_Real Ang, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Cone C);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Cone Cone, const gp_Pnt Point);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Cone Cone, const Standard_Real Dist);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3, const gp_Pnt P4);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Ax1 Axis, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Lin Axis, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Pnt P1, const gp_Pnt P2, const Standard_Real R1, const Standard_Real R2);
		%feature("autodoc", "1");
		const Handle_Geom_ConicalSurface & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_ConicalSurface & Operator() const;

};
%feature("shadow") GC_MakeConicalSurface::~GC_MakeConicalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeConicalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeHyperbola;
class GC_MakeHyperbola : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeHyperbola(const gp_Hypr H);
		%feature("autodoc", "1");
		GC_MakeHyperbola(const gp_Ax2 A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		GC_MakeHyperbola(const gp_Pnt S1, const gp_Pnt S2, const gp_Pnt Center);
		%feature("autodoc", "1");
		const Handle_Geom_Hyperbola & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Hyperbola & Operator() const;

};
%feature("shadow") GC_MakeHyperbola::~GC_MakeHyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeHyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeArcOfCircle;
class GC_MakeArcOfCircle : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeArcOfCircle(const gp_Circ Circ, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfCircle(const gp_Circ Circ, const gp_Pnt P, const Standard_Real Alpha, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfCircle(const gp_Circ Circ, const gp_Pnt P1, const gp_Pnt P2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfCircle(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3);
		%feature("autodoc", "1");
		GC_MakeArcOfCircle(const gp_Pnt P1, const gp_Vec V, const gp_Pnt P2);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Operator() const;

};
%feature("shadow") GC_MakeArcOfCircle::~GC_MakeArcOfCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeArcOfCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeLine;
class GC_MakeLine : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeLine(const gp_Ax1 A1);
		%feature("autodoc", "1");
		GC_MakeLine(const gp_Lin L);
		%feature("autodoc", "1");
		GC_MakeLine(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		GC_MakeLine(const gp_Lin Lin, const gp_Pnt Point);
		%feature("autodoc", "1");
		GC_MakeLine(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		const Handle_Geom_Line & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Line & Operator() const;

};
%feature("shadow") GC_MakeLine::~GC_MakeLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeTrimmedCone;
class GC_MakeTrimmedCone : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeTrimmedCone(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3, const gp_Pnt P4);
		%feature("autodoc", "1");
		GC_MakeTrimmedCone(const gp_Pnt P1, const gp_Pnt P2, const Standard_Real R1, const Standard_Real R2);
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Operator() const;

};
%feature("shadow") GC_MakeTrimmedCone::~GC_MakeTrimmedCone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeTrimmedCone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeScale;
class GC_MakeScale {
	public:
		%feature("autodoc", "1");
		GC_MakeScale(const gp_Pnt Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Operator() const;

};
%feature("shadow") GC_MakeScale::~GC_MakeScale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeScale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeCircle;
class GC_MakeCircle : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Circ C);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Ax2 A2, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Circ Circ, const Standard_Real Dist);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Circ Circ, const gp_Pnt Point);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Pnt Center, const gp_Dir Norm, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Pnt Center, const gp_Pnt PtAxis, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Ax1 Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		const Handle_Geom_Circle & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Circle & Operator() const;

};
%feature("shadow") GC_MakeCircle::~GC_MakeCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeArcOfHyperbola;
class GC_MakeArcOfHyperbola : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeArcOfHyperbola(const gp_Hypr Hypr, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfHyperbola(const gp_Hypr Hypr, const gp_Pnt P, const Standard_Real Alpha, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfHyperbola(const gp_Hypr Hypr, const gp_Pnt P1, const gp_Pnt P2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Operator() const;

};
%feature("shadow") GC_MakeArcOfHyperbola::~GC_MakeArcOfHyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeArcOfHyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakePlane;
class GC_MakePlane : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Ax2 A2);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Pln Pl);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		GC_MakePlane(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Pln Pln, const gp_Pnt Point);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Pln Pln, const Standard_Real Dist);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Ax1 Axis);
		%feature("autodoc", "1");
		const Handle_Geom_Plane & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Plane & Operator() const;

};
%feature("shadow") GC_MakePlane::~GC_MakePlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakePlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeSegment;
class GC_MakeSegment : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeSegment(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		GC_MakeSegment(const gp_Lin Line, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		GC_MakeSegment(const gp_Lin Line, const gp_Pnt Point, const Standard_Real Ulast);
		%feature("autodoc", "1");
		GC_MakeSegment(const gp_Lin Line, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Operator() const;

};
%feature("shadow") GC_MakeSegment::~GC_MakeSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeMirror;
class GC_MakeMirror {
	public:
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Pnt Point);
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Ax1 Axis);
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Lin Line);
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Pnt Point, const gp_Dir Direc);
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Pln Plane);
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Ax2 Plane);
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Operator() const;

};
%feature("shadow") GC_MakeMirror::~GC_MakeMirror %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeMirror {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeTranslation;
class GC_MakeTranslation {
	public:
		%feature("autodoc", "1");
		GC_MakeTranslation(const gp_Vec Vect);
		%feature("autodoc", "1");
		GC_MakeTranslation(const gp_Pnt Point1, const gp_Pnt Point2);
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Operator() const;

};
%feature("shadow") GC_MakeTranslation::~GC_MakeTranslation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeTranslation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeRotation;
class GC_MakeRotation {
	public:
		%feature("autodoc", "1");
		GC_MakeRotation(const gp_Lin Line, const Standard_Real Angle);
		%feature("autodoc", "1");
		GC_MakeRotation(const gp_Ax1 Axis, const Standard_Real Angle);
		%feature("autodoc", "1");
		GC_MakeRotation(const gp_Pnt Point, const gp_Dir Direc, const Standard_Real Angle);
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Operator() const;

};
%feature("shadow") GC_MakeRotation::~GC_MakeRotation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeRotation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeTrimmedCylinder;
class GC_MakeTrimmedCylinder : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeTrimmedCylinder(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3);
		%feature("autodoc", "1");
		GC_MakeTrimmedCylinder(const gp_Circ Circ, const Standard_Real Height);
		%feature("autodoc", "1");
		GC_MakeTrimmedCylinder(const gp_Ax1 A1, const Standard_Real Radius, const Standard_Real Height);
		%feature("autodoc", "1");
		GC_MakeTrimmedCylinder(const gp_Cylinder Cyl, const gp_Pnt P, const Standard_Real Height);
		%feature("autodoc", "1");
		GC_MakeTrimmedCylinder(const gp_Cylinder Cyl, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Operator() const;

};
%feature("shadow") GC_MakeTrimmedCylinder::~GC_MakeTrimmedCylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeTrimmedCylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeCylindricalSurface;
class GC_MakeCylindricalSurface : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Ax2 A2, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Cylinder C);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Cylinder Cyl, const gp_Pnt Point);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Cylinder Cyl, const Standard_Real Dist);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Ax1 Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Circ Circ);
		%feature("autodoc", "1");
		const Handle_Geom_CylindricalSurface & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_CylindricalSurface & Operator() const;

};
%feature("shadow") GC_MakeCylindricalSurface::~GC_MakeCylindricalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeCylindricalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeArcOfEllipse;
class GC_MakeArcOfEllipse : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeArcOfEllipse(const gp_Elips Elips, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfEllipse(const gp_Elips Elips, const gp_Pnt P, const Standard_Real Alpha, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfEllipse(const gp_Elips Elips, const gp_Pnt P1, const gp_Pnt P2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Operator() const;

};
%feature("shadow") GC_MakeArcOfEllipse::~GC_MakeArcOfEllipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeArcOfEllipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GC_MakeArcOfParabola;
class GC_MakeArcOfParabola : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeArcOfParabola(const gp_Parab Parab, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfParabola(const gp_Parab Parab, const gp_Pnt P, const Standard_Real Alpha, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfParabola(const gp_Parab Parab, const gp_Pnt P1, const gp_Pnt P2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Operator() const;

};
%feature("shadow") GC_MakeArcOfParabola::~GC_MakeArcOfParabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GC_MakeArcOfParabola {
	void _kill_pointed() {
		delete $self;
	}
};
