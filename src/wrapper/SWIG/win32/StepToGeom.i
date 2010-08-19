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

%module StepToGeom
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StepToGeom_renames.i


%include StepToGeom_required_python_modules.i


%include StepToGeom_dependencies.i


%include StepToGeom_headers.i




%nodefaultctor StepToGeom_Root;
class StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") StepToGeom_Root::~StepToGeom_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeEllipse2d;
class StepToGeom_MakeEllipse2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeEllipse2d(const Handle_StepGeom_Ellipse &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Ellipse & Value() const;

};
%feature("shadow") StepToGeom_MakeEllipse2d::~StepToGeom_MakeEllipse2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeEllipse2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeTrimmedCurve2d;
class StepToGeom_MakeTrimmedCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTrimmedCurve2d(const Handle_StepGeom_TrimmedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value() const;

};
%feature("shadow") StepToGeom_MakeTrimmedCurve2d::~StepToGeom_MakeTrimmedCurve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeTrimmedCurve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeDirection;
class StepToGeom_MakeDirection : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeDirection(const Handle_StepGeom_Direction &D);
		%feature("autodoc", "1");
		const Handle_Geom_Direction & Value() const;

};
%feature("shadow") StepToGeom_MakeDirection::~StepToGeom_MakeDirection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeDirection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeAxis1Placement;
class StepToGeom_MakeAxis1Placement : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeAxis1Placement(const Handle_StepGeom_Axis1Placement &A);
		%feature("autodoc", "1");
		const Handle_Geom_Axis1Placement & Value() const;

};
%feature("shadow") StepToGeom_MakeAxis1Placement::~StepToGeom_MakeAxis1Placement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeAxis1Placement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakePolyline;
class StepToGeom_MakePolyline : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakePolyline(const Handle_StepGeom_Polyline &PL);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineCurve & Value() const;

};
%feature("shadow") StepToGeom_MakePolyline::~StepToGeom_MakePolyline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakePolyline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakePolyline2d;
class StepToGeom_MakePolyline2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakePolyline2d(const Handle_StepGeom_Polyline &PL);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value() const;

};
%feature("shadow") StepToGeom_MakePolyline2d::~StepToGeom_MakePolyline2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakePolyline2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeConic;
class StepToGeom_MakeConic : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeConic(const Handle_StepGeom_Conic &C);
		%feature("autodoc", "1");
		const Handle_Geom_Conic & Value() const;

};
%feature("shadow") StepToGeom_MakeConic::~StepToGeom_MakeConic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeConic {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeEllipse;
class StepToGeom_MakeEllipse : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeEllipse(const Handle_StepGeom_Ellipse &C);
		%feature("autodoc", "1");
		const Handle_Geom_Ellipse & Value() const;

};
%feature("shadow") StepToGeom_MakeEllipse::~StepToGeom_MakeEllipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeEllipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeToroidalSurface;
class StepToGeom_MakeToroidalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeToroidalSurface(const Handle_StepGeom_ToroidalSurface &TorSurf);
		%feature("autodoc", "1");
		const Handle_Geom_ToroidalSurface & Value() const;

};
%feature("shadow") StepToGeom_MakeToroidalSurface::~StepToGeom_MakeToroidalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeToroidalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeBoundedCurve;
class StepToGeom_MakeBoundedCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedCurve(const Handle_StepGeom_BoundedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom_BoundedCurve & Value() const;

};
%feature("shadow") StepToGeom_MakeBoundedCurve::~StepToGeom_MakeBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeBoundedCurve2d;
class StepToGeom_MakeBoundedCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedCurve2d(const Handle_StepGeom_BoundedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & Value() const;

};
%feature("shadow") StepToGeom_MakeBoundedCurve2d::~StepToGeom_MakeBoundedCurve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeBoundedCurve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeSurface;
class StepToGeom_MakeSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSurface(const Handle_StepGeom_Surface &C);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Value() const;

};
%feature("shadow") StepToGeom_MakeSurface::~StepToGeom_MakeSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeElementarySurface;
class StepToGeom_MakeElementarySurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeElementarySurface(const Handle_StepGeom_ElementarySurface &S);
		%feature("autodoc", "1");
		const Handle_Geom_ElementarySurface & Value() const;

};
%feature("shadow") StepToGeom_MakeElementarySurface::~StepToGeom_MakeElementarySurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeElementarySurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeHyperbola;
class StepToGeom_MakeHyperbola : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeHyperbola(const Handle_StepGeom_Hyperbola &C);
		%feature("autodoc", "1");
		const Handle_Geom_Hyperbola & Value() const;

};
%feature("shadow") StepToGeom_MakeHyperbola::~StepToGeom_MakeHyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeHyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeConicalSurface;
class StepToGeom_MakeConicalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeConicalSurface(const Handle_StepGeom_ConicalSurface &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_ConicalSurface & Value() const;

};
%feature("shadow") StepToGeom_MakeConicalSurface::~StepToGeom_MakeConicalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeConicalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeBoundedSurface;
class StepToGeom_MakeBoundedSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedSurface(const Handle_StepGeom_BoundedSurface &C);
		%feature("autodoc", "1");
		const Handle_Geom_BoundedSurface & Value() const;

};
%feature("shadow") StepToGeom_MakeBoundedSurface::~StepToGeom_MakeBoundedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeBoundedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeVectorWithMagnitude2d;
class StepToGeom_MakeVectorWithMagnitude2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeVectorWithMagnitude2d(const Handle_StepGeom_Vector &V);
		%feature("autodoc", "1");
		const Handle_Geom2d_VectorWithMagnitude & Value() const;

};
%feature("shadow") StepToGeom_MakeVectorWithMagnitude2d::~StepToGeom_MakeVectorWithMagnitude2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeVectorWithMagnitude2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeConic2d;
class StepToGeom_MakeConic2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeConic2d(const Handle_StepGeom_Conic &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Conic & Value() const;

};
%feature("shadow") StepToGeom_MakeConic2d::~StepToGeom_MakeConic2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeConic2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeBSplineSurface;
class StepToGeom_MakeBSplineSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineSurface(const Handle_StepGeom_BSplineSurface &Bsplin);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & Value() const;

};
%feature("shadow") StepToGeom_MakeBSplineSurface::~StepToGeom_MakeBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeSweptSurface;
class StepToGeom_MakeSweptSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSweptSurface(const Handle_StepGeom_SweptSurface &S);
		%feature("autodoc", "1");
		const Handle_Geom_SweptSurface & Value() const;

};
%feature("shadow") StepToGeom_MakeSweptSurface::~StepToGeom_MakeSweptSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeSweptSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeCartesianPoint2d;
class StepToGeom_MakeCartesianPoint2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCartesianPoint2d(const Handle_StepGeom_CartesianPoint &P);
		%feature("autodoc", "1");
		const Handle_Geom2d_CartesianPoint & Value() const;

};
%feature("shadow") StepToGeom_MakeCartesianPoint2d::~StepToGeom_MakeCartesianPoint2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeCartesianPoint2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakePlane;
class StepToGeom_MakePlane : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakePlane(const Handle_StepGeom_Plane &P);
		%feature("autodoc", "1");
		const Handle_Geom_Plane & Value() const;

};
%feature("shadow") StepToGeom_MakePlane::~StepToGeom_MakePlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakePlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeCircle2d;
class StepToGeom_MakeCircle2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCircle2d(const Handle_StepGeom_Circle &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Circle & Value() const;

};
%feature("shadow") StepToGeom_MakeCircle2d::~StepToGeom_MakeCircle2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeCircle2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeLine;
class StepToGeom_MakeLine : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeLine(const Handle_StepGeom_Line &L);
		%feature("autodoc", "1");
		const Handle_Geom_Line & Value() const;

};
%feature("shadow") StepToGeom_MakeLine::~StepToGeom_MakeLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeLine2d;
class StepToGeom_MakeLine2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeLine2d(const Handle_StepGeom_Line &L);
		%feature("autodoc", "1");
		const Handle_Geom2d_Line & Value() const;

};
%feature("shadow") StepToGeom_MakeLine2d::~StepToGeom_MakeLine2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeLine2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeParabola2d;
class StepToGeom_MakeParabola2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeParabola2d(const Handle_StepGeom_Parabola &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Parabola & Value() const;

};
%feature("shadow") StepToGeom_MakeParabola2d::~StepToGeom_MakeParabola2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeParabola2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeAxisPlacement;
class StepToGeom_MakeAxisPlacement : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeAxisPlacement(const Handle_StepGeom_Axis2Placement2d &A);
		%feature("autodoc", "1");
		const Handle_Geom2d_AxisPlacement & Value() const;

};
%feature("shadow") StepToGeom_MakeAxisPlacement::~StepToGeom_MakeAxisPlacement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeAxisPlacement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeParabola;
class StepToGeom_MakeParabola : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeParabola(const Handle_StepGeom_Parabola &C);
		%feature("autodoc", "1");
		const Handle_Geom_Parabola & Value() const;

};
%feature("shadow") StepToGeom_MakeParabola::~StepToGeom_MakeParabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeParabola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeTrimmedCurve;
class StepToGeom_MakeTrimmedCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTrimmedCurve(const Handle_StepGeom_TrimmedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;

};
%feature("shadow") StepToGeom_MakeTrimmedCurve::~StepToGeom_MakeTrimmedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeTrimmedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeSurfaceOfRevolution;
class StepToGeom_MakeSurfaceOfRevolution : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSurfaceOfRevolution(const Handle_StepGeom_SurfaceOfRevolution &RevSurf);
		%feature("autodoc", "1");
		const Handle_Geom_SurfaceOfRevolution & Value() const;

};
%feature("shadow") StepToGeom_MakeSurfaceOfRevolution::~StepToGeom_MakeSurfaceOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeSurfaceOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeCartesianPoint;
class StepToGeom_MakeCartesianPoint : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCartesianPoint(const Handle_StepGeom_CartesianPoint &P);
		%feature("autodoc", "1");
		const Handle_Geom_CartesianPoint & Value() const;

};
%feature("shadow") StepToGeom_MakeCartesianPoint::~StepToGeom_MakeCartesianPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeCartesianPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeHyperbola2d;
class StepToGeom_MakeHyperbola2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeHyperbola2d(const Handle_StepGeom_Hyperbola &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Hyperbola & Value() const;

};
%feature("shadow") StepToGeom_MakeHyperbola2d::~StepToGeom_MakeHyperbola2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeHyperbola2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeVectorWithMagnitude;
class StepToGeom_MakeVectorWithMagnitude : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeVectorWithMagnitude(const Handle_StepGeom_Vector &V);
		%feature("autodoc", "1");
		const Handle_Geom_VectorWithMagnitude & Value() const;

};
%feature("shadow") StepToGeom_MakeVectorWithMagnitude::~StepToGeom_MakeVectorWithMagnitude %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeVectorWithMagnitude {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeBSplineCurve2d;
class StepToGeom_MakeBSplineCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineCurve2d(const Handle_StepGeom_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value() const;

};
%feature("shadow") StepToGeom_MakeBSplineCurve2d::~StepToGeom_MakeBSplineCurve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeBSplineCurve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeSphericalSurface;
class StepToGeom_MakeSphericalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSphericalSurface(const Handle_StepGeom_SphericalSurface &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_SphericalSurface & Value() const;

};
%feature("shadow") StepToGeom_MakeSphericalSurface::~StepToGeom_MakeSphericalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeSphericalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeCurve;
class StepToGeom_MakeCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCurve(const Handle_StepGeom_Curve &C);
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Value() const;

};
%feature("shadow") StepToGeom_MakeCurve::~StepToGeom_MakeCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeTransformation2d;
class StepToGeom_MakeTransformation2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTransformation2d(const Handle_StepGeom_CartesianTransformationOperator2d &CTO);
		%feature("autodoc", "1");
		const gp_Trsf2d & Value() const;

};
%feature("shadow") StepToGeom_MakeTransformation2d::~StepToGeom_MakeTransformation2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeTransformation2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeTransformation3d;
class StepToGeom_MakeTransformation3d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTransformation3d(const Handle_StepGeom_CartesianTransformationOperator3d &CTO);
		%feature("autodoc", "1");
		const gp_Trsf & Value() const;

};
%feature("shadow") StepToGeom_MakeTransformation3d::~StepToGeom_MakeTransformation3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeTransformation3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeBSplineCurve;
class StepToGeom_MakeBSplineCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineCurve(const Handle_StepGeom_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineCurve & Value() const;

};
%feature("shadow") StepToGeom_MakeBSplineCurve::~StepToGeom_MakeBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeRectangularTrimmedSurface;
class StepToGeom_MakeRectangularTrimmedSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeRectangularTrimmedSurface(const Handle_StepGeom_RectangularTrimmedSurface &RTSurf);
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Value() const;

};
%feature("shadow") StepToGeom_MakeRectangularTrimmedSurface::~StepToGeom_MakeRectangularTrimmedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeRectangularTrimmedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeCircle;
class StepToGeom_MakeCircle : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCircle(const Handle_StepGeom_Circle &C);
		%feature("autodoc", "1");
		const Handle_Geom_Circle & Value() const;

};
%feature("shadow") StepToGeom_MakeCircle::~StepToGeom_MakeCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeAxis2Placement;
class StepToGeom_MakeAxis2Placement : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeAxis2Placement(const Handle_StepGeom_Axis2Placement3d &A);
		%feature("autodoc", "1");
		const Handle_Geom_Axis2Placement & Value() const;

};
%feature("shadow") StepToGeom_MakeAxis2Placement::~StepToGeom_MakeAxis2Placement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeAxis2Placement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeCurve2d;
class StepToGeom_MakeCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCurve2d(const Handle_StepGeom_Curve &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Value() const;

};
%feature("shadow") StepToGeom_MakeCurve2d::~StepToGeom_MakeCurve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeCurve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeCylindricalSurface;
class StepToGeom_MakeCylindricalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCylindricalSurface(const Handle_StepGeom_CylindricalSurface &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_CylindricalSurface & Value() const;

};
%feature("shadow") StepToGeom_MakeCylindricalSurface::~StepToGeom_MakeCylindricalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeCylindricalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeSurfaceOfLinearExtrusion;
class StepToGeom_MakeSurfaceOfLinearExtrusion : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSurfaceOfLinearExtrusion(const Handle_StepGeom_SurfaceOfLinearExtrusion &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_SurfaceOfLinearExtrusion & Value() const;

};
%feature("shadow") StepToGeom_MakeSurfaceOfLinearExtrusion::~StepToGeom_MakeSurfaceOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeSurfaceOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToGeom_MakeDirection2d;
class StepToGeom_MakeDirection2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeDirection2d(const Handle_StepGeom_Direction &D);
		%feature("autodoc", "1");
		const Handle_Geom2d_Direction & Value() const;

};
%feature("shadow") StepToGeom_MakeDirection2d::~StepToGeom_MakeDirection2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToGeom_MakeDirection2d {
	void _kill_pointed() {
		delete $self;
	}
};
