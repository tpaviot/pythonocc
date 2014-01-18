/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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




%nodefaultctor StepToGeom_MakeCircle2d;
class StepToGeom_MakeCircle2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCircle2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Circle &SC, Handle_Geom2d_Circle & CC);

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


%nodefaultctor StepToGeom_MakeEllipse2d;
class StepToGeom_MakeEllipse2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeEllipse2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Ellipse &SC, Handle_Geom2d_Ellipse & CC);

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


%nodefaultctor StepToGeom_MakeDirection;
class StepToGeom_MakeDirection {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeDirection();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Direction &SD, Handle_Geom_Direction & CD);

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
class StepToGeom_MakeAxis1Placement {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeAxis1Placement();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Axis1Placement &SA, Handle_Geom_Axis1Placement & CA);

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


%nodefaultctor StepToGeom_MakePolyline;
class StepToGeom_MakePolyline : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakePolyline();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Polyline &SPL, Handle_Geom_BSplineCurve & CC);

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
class StepToGeom_MakePolyline2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakePolyline2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Polyline &SPL, Handle_Geom2d_BSplineCurve & CC);

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


%nodefaultctor StepToGeom_MakeEllipse;
class StepToGeom_MakeEllipse {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeEllipse();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Ellipse &SC, Handle_Geom_Ellipse & CC);

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
class StepToGeom_MakeToroidalSurface {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeToroidalSurface();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_ToroidalSurface &SS, Handle_Geom_ToroidalSurface & CS);

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
class StepToGeom_MakeBoundedCurve {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedCurve();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_BoundedCurve &SC, Handle_Geom_BoundedCurve & CC);

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


%nodefaultctor StepToGeom_MakeSurface;
class StepToGeom_MakeSurface {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSurface();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Surface &SS, Handle_Geom_Surface & CS);

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


%nodefaultctor StepToGeom_MakeCurve;
class StepToGeom_MakeCurve {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCurve();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Curve &SC, Handle_Geom_Curve & CC);

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


%nodefaultctor StepToGeom_MakeElementarySurface;
class StepToGeom_MakeElementarySurface {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeElementarySurface();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_ElementarySurface &SS, Handle_Geom_ElementarySurface & CS);

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
class StepToGeom_MakeHyperbola {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeHyperbola();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Hyperbola &SC, Handle_Geom_Hyperbola & CC);

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


%nodefaultctor StepToGeom_MakeCartesianPoint2d;
class StepToGeom_MakeCartesianPoint2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCartesianPoint2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_CartesianPoint &SP, Handle_Geom2d_CartesianPoint & CP);

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


%nodefaultctor StepToGeom_MakeTrimmedCurve2d;
class StepToGeom_MakeTrimmedCurve2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTrimmedCurve2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_TrimmedCurve &SC, Handle_Geom2d_BSplineCurve & CC);

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


%nodefaultctor StepToGeom_MakeBoundedSurface;
class StepToGeom_MakeBoundedSurface {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedSurface();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_BoundedSurface &SS, Handle_Geom_BoundedSurface & CS);

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


%nodefaultctor StepToGeom_MakeAxisPlacement;
class StepToGeom_MakeAxisPlacement {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeAxisPlacement();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Axis2Placement2d &SA, Handle_Geom2d_AxisPlacement & CA);

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


%nodefaultctor StepToGeom_MakeTrimmedCurve;
class StepToGeom_MakeTrimmedCurve {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTrimmedCurve();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_TrimmedCurve &SC, Handle_Geom_TrimmedCurve & CC);

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


%nodefaultctor StepToGeom_MakeConic2d;
class StepToGeom_MakeConic2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeConic2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Conic &SC, Handle_Geom2d_Conic & CC);

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


%nodefaultctor StepToGeom_MakeSweptSurface;
class StepToGeom_MakeSweptSurface {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSweptSurface();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_SweptSurface &SS, Handle_Geom_SweptSurface & CS);

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


%nodefaultctor StepToGeom_MakeConic;
class StepToGeom_MakeConic {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeConic();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Conic &SC, Handle_Geom_Conic & CC);

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


%nodefaultctor StepToGeom_MakePlane;
class StepToGeom_MakePlane {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakePlane();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Plane &SP, Handle_Geom_Plane & CP);

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


%nodefaultctor StepToGeom_MakeLine2d;
class StepToGeom_MakeLine2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeLine2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Line &SC, Handle_Geom2d_Line & CC);

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


%nodefaultctor StepToGeom_MakeLine;
class StepToGeom_MakeLine {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeLine();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Line &SC, Handle_Geom_Line & CC);

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


%nodefaultctor StepToGeom_MakeParabola2d;
class StepToGeom_MakeParabola2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeParabola2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Parabola &SC, Handle_Geom2d_Parabola & CC);

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


%nodefaultctor StepToGeom_MakeTransformation3d;
class StepToGeom_MakeTransformation3d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTransformation3d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_CartesianTransformationOperator3d &SCTO, gp_Trsf & CT);

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


%nodefaultctor StepToGeom_MakeBoundedCurve2d;
class StepToGeom_MakeBoundedCurve2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedCurve2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_BoundedCurve &SC, Handle_Geom2d_BoundedCurve & CC);

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


%nodefaultctor StepToGeom_MakeParabola;
class StepToGeom_MakeParabola {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeParabola();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Parabola &SC, Handle_Geom_Parabola & CC);

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


%nodefaultctor StepToGeom_MakeCylindricalSurface;
class StepToGeom_MakeCylindricalSurface {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCylindricalSurface();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_CylindricalSurface &SS, Handle_Geom_CylindricalSurface & CS);

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


%nodefaultctor StepToGeom_MakeSurfaceOfRevolution;
class StepToGeom_MakeSurfaceOfRevolution {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSurfaceOfRevolution();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_SurfaceOfRevolution &SS, Handle_Geom_SurfaceOfRevolution & CS);

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
class StepToGeom_MakeCartesianPoint {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCartesianPoint();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_CartesianPoint &SP, Handle_Geom_CartesianPoint & CP);

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


%nodefaultctor StepToGeom_MakeVectorWithMagnitude;
class StepToGeom_MakeVectorWithMagnitude {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeVectorWithMagnitude();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Vector &SV, Handle_Geom_VectorWithMagnitude & CV);

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
class StepToGeom_MakeBSplineCurve2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineCurve2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_BSplineCurve &SC, Handle_Geom2d_BSplineCurve & CC);

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
class StepToGeom_MakeSphericalSurface {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSphericalSurface();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_SphericalSurface &Surf, Handle_Geom_SphericalSurface & CS);

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


%nodefaultctor StepToGeom_MakeTransformation2d;
class StepToGeom_MakeTransformation2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTransformation2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_CartesianTransformationOperator2d &SCTO, gp_Trsf2d & CT);

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


%nodefaultctor StepToGeom_MakeConicalSurface;
class StepToGeom_MakeConicalSurface {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeConicalSurface();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_ConicalSurface &SS, Handle_Geom_ConicalSurface & CS);

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


%nodefaultctor StepToGeom_MakeBSplineCurve;
class StepToGeom_MakeBSplineCurve {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineCurve();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_BSplineCurve &SC, Handle_Geom_BSplineCurve & CC);

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
class StepToGeom_MakeRectangularTrimmedSurface {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeRectangularTrimmedSurface();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_RectangularTrimmedSurface &SS, Handle_Geom_RectangularTrimmedSurface & CS);

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


%nodefaultctor StepToGeom_MakeBSplineSurface;
class StepToGeom_MakeBSplineSurface {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineSurface();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_BSplineSurface &SS, Handle_Geom_BSplineSurface & CS);

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


%nodefaultctor StepToGeom_MakeHyperbola2d;
class StepToGeom_MakeHyperbola2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeHyperbola2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Hyperbola &SC, Handle_Geom2d_Hyperbola & CC);

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


%nodefaultctor StepToGeom_MakeCircle;
class StepToGeom_MakeCircle {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCircle();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Circle &SC, Handle_Geom_Circle & CC);

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


%nodefaultctor StepToGeom_MakeVectorWithMagnitude2d;
class StepToGeom_MakeVectorWithMagnitude2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeVectorWithMagnitude2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Vector &SV, Handle_Geom2d_VectorWithMagnitude & CV);

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


%nodefaultctor StepToGeom_MakeAxis2Placement;
class StepToGeom_MakeAxis2Placement {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeAxis2Placement();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Axis2Placement3d &SA, Handle_Geom_Axis2Placement & CA);

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
class StepToGeom_MakeCurve2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCurve2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Curve &SC, Handle_Geom2d_Curve & CC);

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


%nodefaultctor StepToGeom_MakeDirection2d;
class StepToGeom_MakeDirection2d {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeDirection2d();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_Direction &SD, Handle_Geom2d_Direction & CD);

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


%nodefaultctor StepToGeom_MakeSurfaceOfLinearExtrusion;
class StepToGeom_MakeSurfaceOfLinearExtrusion {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		static		Standard_Boolean Convert(const Handle_StepGeom_SurfaceOfLinearExtrusion &SS, Handle_Geom_SurfaceOfLinearExtrusion & CS);

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
