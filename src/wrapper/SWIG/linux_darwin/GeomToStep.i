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

%module GeomToStep
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GeomToStep_renames.i


%include GeomToStep_required_python_modules.i


%include GeomToStep_dependencies.i


%include GeomToStep_headers.i




%nodefaultctor GeomToStep_Root;
class GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") GeomToStep_Root::~GeomToStep_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeLine;
class GeomToStep_MakeLine : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeLine(const gp_Lin &L);
		%feature("autodoc", "1");
		GeomToStep_MakeLine(const gp_Lin2d &L);
		%feature("autodoc", "1");
		GeomToStep_MakeLine(const Handle_Geom_Line &C);
		%feature("autodoc", "1");
		GeomToStep_MakeLine(const Handle_Geom2d_Line &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Line & Value() const;

};
%feature("shadow") GeomToStep_MakeLine::~GeomToStep_MakeLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeSurface;
class GeomToStep_MakeSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeSurface(const Handle_Geom_Surface &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Surface & Value() const;

};
%feature("shadow") GeomToStep_MakeSurface::~GeomToStep_MakeSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeSurfaceOfLinearExtrusion;
class GeomToStep_MakeSurfaceOfLinearExtrusion : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeSurfaceOfLinearExtrusion(const Handle_Geom_SurfaceOfLinearExtrusion &CSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_SurfaceOfLinearExtrusion & Value() const;

};
%feature("shadow") GeomToStep_MakeSurfaceOfLinearExtrusion::~GeomToStep_MakeSurfaceOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeSurfaceOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeAxis1Placement;
class GeomToStep_MakeAxis1Placement : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeAxis1Placement(const gp_Ax1 &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis1Placement(const gp_Ax2d &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis1Placement(const Handle_Geom_Axis1Placement &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis1Placement(const Handle_Geom2d_AxisPlacement &A);
		%feature("autodoc", "1");
		const Handle_StepGeom_Axis1Placement & Value() const;

};
%feature("shadow") GeomToStep_MakeAxis1Placement::~GeomToStep_MakeAxis1Placement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeAxis1Placement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeAxis2Placement2d;
class GeomToStep_MakeAxis2Placement2d : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement2d(const gp_Ax2 &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement2d(const gp_Ax22d &A);
		%feature("autodoc", "1");
		const Handle_StepGeom_Axis2Placement2d & Value() const;

};
%feature("shadow") GeomToStep_MakeAxis2Placement2d::~GeomToStep_MakeAxis2Placement2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeAxis2Placement2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeElementarySurface;
class GeomToStep_MakeElementarySurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeElementarySurface(const Handle_Geom_ElementarySurface &S);
		%feature("autodoc", "1");
		const Handle_StepGeom_ElementarySurface & Value() const;

};
%feature("shadow") GeomToStep_MakeElementarySurface::~GeomToStep_MakeElementarySurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeElementarySurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface;
class GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface(const Handle_Geom_BSplineSurface &Bsplin);
		%feature("autodoc", "1");
		const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface & Value() const;

};
%feature("shadow") GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface::~GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeParabola;
class GeomToStep_MakeParabola : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeParabola(const Handle_Geom2d_Parabola &C);
		%feature("autodoc", "1");
		GeomToStep_MakeParabola(const Handle_Geom_Parabola &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Parabola & Value() const;

};
%feature("shadow") GeomToStep_MakeParabola::~GeomToStep_MakeParabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeParabola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeDirection;
class GeomToStep_MakeDirection : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeDirection(const gp_Dir &D);
		%feature("autodoc", "1");
		GeomToStep_MakeDirection(const gp_Dir2d &D);
		%feature("autodoc", "1");
		GeomToStep_MakeDirection(const Handle_Geom_Direction &D);
		%feature("autodoc", "1");
		GeomToStep_MakeDirection(const Handle_Geom2d_Direction &D);
		%feature("autodoc", "1");
		const Handle_StepGeom_Direction & Value() const;

};
%feature("shadow") GeomToStep_MakeDirection::~GeomToStep_MakeDirection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeDirection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeSweptSurface;
class GeomToStep_MakeSweptSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeSweptSurface(const Handle_Geom_SweptSurface &S);
		%feature("autodoc", "1");
		const Handle_StepGeom_SweptSurface & Value() const;

};
%feature("shadow") GeomToStep_MakeSweptSurface::~GeomToStep_MakeSweptSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeSweptSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeSurfaceOfRevolution;
class GeomToStep_MakeSurfaceOfRevolution : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeSurfaceOfRevolution(const Handle_Geom_SurfaceOfRevolution &RevSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_SurfaceOfRevolution & Value() const;

};
%feature("shadow") GeomToStep_MakeSurfaceOfRevolution::~GeomToStep_MakeSurfaceOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeSurfaceOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakePlane;
class GeomToStep_MakePlane : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakePlane(const gp_Pln &P);
		%feature("autodoc", "1");
		GeomToStep_MakePlane(const Handle_Geom_Plane &P);
		%feature("autodoc", "1");
		const Handle_StepGeom_Plane & Value() const;

};
%feature("shadow") GeomToStep_MakePlane::~GeomToStep_MakePlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakePlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeConicalSurface;
class GeomToStep_MakeConicalSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeConicalSurface(const Handle_Geom_ConicalSurface &CSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_ConicalSurface & Value() const;

};
%feature("shadow") GeomToStep_MakeConicalSurface::~GeomToStep_MakeConicalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeConicalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeToroidalSurface;
class GeomToStep_MakeToroidalSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeToroidalSurface(const Handle_Geom_ToroidalSurface &TorSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_ToroidalSurface & Value() const;

};
%feature("shadow") GeomToStep_MakeToroidalSurface::~GeomToStep_MakeToroidalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeToroidalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve;
class GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve(const Handle_Geom_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve(const Handle_Geom2d_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve & Value() const;

};
%feature("shadow") GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve::~GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeHyperbola;
class GeomToStep_MakeHyperbola : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeHyperbola(const Handle_Geom2d_Hyperbola &C);
		%feature("autodoc", "1");
		GeomToStep_MakeHyperbola(const Handle_Geom_Hyperbola &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Hyperbola & Value() const;

};
%feature("shadow") GeomToStep_MakeHyperbola::~GeomToStep_MakeHyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeHyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeAxis2Placement3d;
class GeomToStep_MakeAxis2Placement3d : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement3d();
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement3d(const gp_Ax2 &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement3d(const gp_Ax3 &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement3d(const gp_Trsf &T);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement3d(const Handle_Geom_Axis2Placement &A);
		%feature("autodoc", "1");
		const Handle_StepGeom_Axis2Placement3d & Value() const;

};
%feature("shadow") GeomToStep_MakeAxis2Placement3d::~GeomToStep_MakeAxis2Placement3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeAxis2Placement3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeRectangularTrimmedSurface;
class GeomToStep_MakeRectangularTrimmedSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeRectangularTrimmedSurface(const Handle_Geom_RectangularTrimmedSurface &RTSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_RectangularTrimmedSurface & Value() const;

};
%feature("shadow") GeomToStep_MakeRectangularTrimmedSurface::~GeomToStep_MakeRectangularTrimmedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeRectangularTrimmedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeBSplineSurfaceWithKnots;
class GeomToStep_MakeBSplineSurfaceWithKnots : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineSurfaceWithKnots(const Handle_Geom_BSplineSurface &Bsplin);
		%feature("autodoc", "1");
		const Handle_StepGeom_BSplineSurfaceWithKnots & Value() const;

};
%feature("shadow") GeomToStep_MakeBSplineSurfaceWithKnots::~GeomToStep_MakeBSplineSurfaceWithKnots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeBSplineSurfaceWithKnots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakePolyline;
class GeomToStep_MakePolyline : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakePolyline(const TColgp_Array1OfPnt &P);
		%feature("autodoc", "1");
		GeomToStep_MakePolyline(const TColgp_Array1OfPnt2d &P);
		%feature("autodoc", "1");
		const Handle_StepGeom_Polyline & Value() const;

};
%feature("shadow") GeomToStep_MakePolyline::~GeomToStep_MakePolyline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakePolyline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeCartesianPoint;
class GeomToStep_MakeCartesianPoint : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeCartesianPoint(const gp_Pnt &P);
		%feature("autodoc", "1");
		GeomToStep_MakeCartesianPoint(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		GeomToStep_MakeCartesianPoint(const Handle_Geom_CartesianPoint &P);
		%feature("autodoc", "1");
		GeomToStep_MakeCartesianPoint(const Handle_Geom2d_CartesianPoint &P);
		%feature("autodoc", "1");
		const Handle_StepGeom_CartesianPoint & Value() const;

};
%feature("shadow") GeomToStep_MakeCartesianPoint::~GeomToStep_MakeCartesianPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeCartesianPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeEllipse;
class GeomToStep_MakeEllipse : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeEllipse(const gp_Elips &C);
		%feature("autodoc", "1");
		GeomToStep_MakeEllipse(const Handle_Geom_Ellipse &C);
		%feature("autodoc", "1");
		GeomToStep_MakeEllipse(const Handle_Geom2d_Ellipse &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Ellipse & Value() const;

};
%feature("shadow") GeomToStep_MakeEllipse::~GeomToStep_MakeEllipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeEllipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeSphericalSurface;
class GeomToStep_MakeSphericalSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeSphericalSurface(const Handle_Geom_SphericalSurface &CSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_SphericalSurface & Value() const;

};
%feature("shadow") GeomToStep_MakeSphericalSurface::~GeomToStep_MakeSphericalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeSphericalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeBoundedSurface;
class GeomToStep_MakeBoundedSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBoundedSurface(const Handle_Geom_BoundedSurface &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_BoundedSurface & Value() const;

};
%feature("shadow") GeomToStep_MakeBoundedSurface::~GeomToStep_MakeBoundedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeBoundedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeCircle;
class GeomToStep_MakeCircle : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeCircle(const gp_Circ &C);
		%feature("autodoc", "1");
		GeomToStep_MakeCircle(const Handle_Geom_Circle &C);
		%feature("autodoc", "1");
		GeomToStep_MakeCircle(const Handle_Geom2d_Circle &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Circle & Value() const;

};
%feature("shadow") GeomToStep_MakeCircle::~GeomToStep_MakeCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeCylindricalSurface;
class GeomToStep_MakeCylindricalSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeCylindricalSurface(const Handle_Geom_CylindricalSurface &CSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_CylindricalSurface & Value() const;

};
%feature("shadow") GeomToStep_MakeCylindricalSurface::~GeomToStep_MakeCylindricalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeCylindricalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeBoundedCurve;
class GeomToStep_MakeBoundedCurve : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBoundedCurve(const Handle_Geom_BoundedCurve &C);
		%feature("autodoc", "1");
		GeomToStep_MakeBoundedCurve(const Handle_Geom2d_BoundedCurve &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_BoundedCurve & Value() const;

};
%feature("shadow") GeomToStep_MakeBoundedCurve::~GeomToStep_MakeBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeBSplineCurveWithKnots;
class GeomToStep_MakeBSplineCurveWithKnots : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineCurveWithKnots(const Handle_Geom_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineCurveWithKnots(const Handle_Geom2d_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		const Handle_StepGeom_BSplineCurveWithKnots & Value() const;

};
%feature("shadow") GeomToStep_MakeBSplineCurveWithKnots::~GeomToStep_MakeBSplineCurveWithKnots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeBSplineCurveWithKnots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeConic;
class GeomToStep_MakeConic : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeConic(const Handle_Geom_Conic &C);
		%feature("autodoc", "1");
		GeomToStep_MakeConic(const Handle_Geom2d_Conic &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Conic & Value() const;

};
%feature("shadow") GeomToStep_MakeConic::~GeomToStep_MakeConic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeConic {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeCurve;
class GeomToStep_MakeCurve : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeCurve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		GeomToStep_MakeCurve(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Curve & Value() const;

};
%feature("shadow") GeomToStep_MakeCurve::~GeomToStep_MakeCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToStep_MakeVector;
class GeomToStep_MakeVector : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeVector(const gp_Vec &V);
		%feature("autodoc", "1");
		GeomToStep_MakeVector(const gp_Vec2d &V);
		%feature("autodoc", "1");
		GeomToStep_MakeVector(const Handle_Geom_Vector &V);
		%feature("autodoc", "1");
		GeomToStep_MakeVector(const Handle_Geom2d_Vector &V);
		%feature("autodoc", "1");
		const Handle_StepGeom_Vector & Value() const;

};
%feature("shadow") GeomToStep_MakeVector::~GeomToStep_MakeVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToStep_MakeVector {
	void _kill_pointed() {
		delete $self;
	}
};
