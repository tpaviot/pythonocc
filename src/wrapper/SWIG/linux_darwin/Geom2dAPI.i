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

%module Geom2dAPI
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Geom2dAPI_renames.i


%include Geom2dAPI_required_python_modules.i


%include Geom2dAPI_dependencies.i


%include Geom2dAPI_headers.i




%nodefaultctor Geom2dAPI_InterCurveCurve;
class Geom2dAPI_InterCurveCurve {
	public:
		%feature("autodoc", "1");
		Geom2dAPI_InterCurveCurve();
		%feature("autodoc", "1");
		Geom2dAPI_InterCurveCurve(const Handle_Geom2d_Curve &C1, const Handle_Geom2d_Curve &C2, const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-7);
		%feature("autodoc", "1");
		Geom2dAPI_InterCurveCurve(const Handle_Geom2d_Curve &C1, const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-7);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C1, const Handle_Geom2d_Curve &C2, const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-7);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C1, const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-7);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		gp_Pnt2d Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		void Segment(const Standard_Integer Index, Handle_Geom2d_Curve & Curve1, Handle_Geom2d_Curve & Curve2) const;
		%feature("autodoc", "1");
		void Segment(const Standard_Integer Index, Handle_Geom2d_Curve & Curve1) const;
		%feature("autodoc", "1");
		const Geom2dInt_GInter & Intersector() const;

};
%feature("shadow") Geom2dAPI_InterCurveCurve::~Geom2dAPI_InterCurveCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dAPI_InterCurveCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dAPI_PointsToBSpline;
class Geom2dAPI_PointsToBSpline {
	public:
		%feature("autodoc", "1");
		Geom2dAPI_PointsToBSpline();
		%feature("autodoc", "1");
		Geom2dAPI_PointsToBSpline(const TColgp_Array1OfPnt2d &Points, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol2D=9.99999999999999954748111825886258685613938723691e-7);
		%feature("autodoc", "1");
		Geom2dAPI_PointsToBSpline(const TColStd_Array1OfReal &YValues, const Standard_Real X0, const Standard_Real DX, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol2D=9.99999999999999954748111825886258685613938723691e-7);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt2d &Points, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol2D=9.99999999999999954748111825886258685613938723691e-7);
		%feature("autodoc", "1");
		void Init(const TColStd_Array1OfReal &YValues, const Standard_Real X0, const Standard_Real DX, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol2D=9.99999999999999954748111825886258685613938723691e-7);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Curve() const;

};
%feature("shadow") Geom2dAPI_PointsToBSpline::~Geom2dAPI_PointsToBSpline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dAPI_PointsToBSpline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dAPI_ProjectPointOnCurve;
class Geom2dAPI_ProjectPointOnCurve {
	public:
		%feature("autodoc", "1");
		Geom2dAPI_ProjectPointOnCurve();
		%feature("autodoc", "1");
		Geom2dAPI_ProjectPointOnCurve(const gp_Pnt2d &P, const Handle_Geom2d_Curve &Curve);
		%feature("autodoc", "1");
		Geom2dAPI_ProjectPointOnCurve(const gp_Pnt2d &P, const Handle_Geom2d_Curve &Curve, const Quantity_Parameter Umin, const Quantity_Parameter Usup);
		%feature("autodoc", "1");
		void Init(const gp_Pnt2d &P, const Handle_Geom2d_Curve &Curve);
		%feature("autodoc", "1");
		void Init(const gp_Pnt2d &P, const Handle_Geom2d_Curve &Curve, const Quantity_Parameter Umin, const Quantity_Parameter Usup);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		gp_Pnt2d Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Quantity_Parameter Parameter(const Standard_Integer Index) const;
		%feature("autodoc","Parameter(Standard_Integer Index) -> Standard_Real");

		void Parameter(const Standard_Integer Index, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt2d NearestPoint() const;
		%feature("autodoc", "1");
		Quantity_Parameter LowerDistanceParameter() const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtPC2d & Extrema() const;

};
%feature("shadow") Geom2dAPI_ProjectPointOnCurve::~Geom2dAPI_ProjectPointOnCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dAPI_ProjectPointOnCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dAPI_Interpolate;
class Geom2dAPI_Interpolate {
	public:
		%feature("autodoc", "1");
		Geom2dAPI_Interpolate(const Handle_TColgp_HArray1OfPnt2d &Points, const Standard_Boolean PeriodicFlag, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dAPI_Interpolate(const Handle_TColgp_HArray1OfPnt2d &Points, const Handle_TColStd_HArray1OfReal &Parameters, const Standard_Boolean PeriodicFlag, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Load(const gp_Vec2d &InitialTangent, const gp_Vec2d &FinalTangent);
		%feature("autodoc", "1");
		void Load(const TColgp_Array1OfVec2d &Tangents, const Handle_TColStd_HArray1OfBoolean &TangentFlags);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") Geom2dAPI_Interpolate::~Geom2dAPI_Interpolate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dAPI_Interpolate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dAPI_ExtremaCurveCurve;
class Geom2dAPI_ExtremaCurveCurve {
	public:
		%feature("autodoc", "1");
		Geom2dAPI_ExtremaCurveCurve(const Handle_Geom2d_Curve &C1, const Handle_Geom2d_Curve &C2, const Quantity_Parameter U1min, const Quantity_Parameter U1max, const Quantity_Parameter U2min, const Quantity_Parameter U2max);
		%feature("autodoc", "1");
		Standard_Integer NbExtrema() const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer Index, gp_Pnt2d & P1, gp_Pnt2d & P2) const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void NearestPoints(gp_Pnt2d & P1, gp_Pnt2d & P2) const;
		%feature("autodoc","LowerDistanceParameters() -> [Standard_Real, Standard_Real]");

		void LowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtCC2d & Extrema() const;

};
%feature("shadow") Geom2dAPI_ExtremaCurveCurve::~Geom2dAPI_ExtremaCurveCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dAPI_ExtremaCurveCurve {
	void _kill_pointed() {
		delete $self;
	}
};
