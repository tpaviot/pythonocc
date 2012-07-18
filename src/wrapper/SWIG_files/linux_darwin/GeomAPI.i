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

%module GeomAPI
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GeomAPI_renames.i


%include GeomAPI_required_python_modules.i


%include GeomAPI_dependencies.i


%include GeomAPI_headers.i




%nodefaultctor GeomAPI_Interpolate;
class GeomAPI_Interpolate {
	public:
		%feature("autodoc", "1");
		GeomAPI_Interpolate(const Handle_TColgp_HArray1OfPnt &Points, const Standard_Boolean PeriodicFlag, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GeomAPI_Interpolate(const Handle_TColgp_HArray1OfPnt &Points, const Handle_TColStd_HArray1OfReal &Parameters, const Standard_Boolean PeriodicFlag, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Load(const gp_Vec InitialTangent, const gp_Vec FinalTangent, const Standard_Boolean Scale=1);
		%feature("autodoc", "1");
		void Load(const TColgp_Array1OfVec &Tangents, const Handle_TColStd_HArray1OfBoolean &TangentFlags, const Standard_Boolean Scale=1);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		const Handle_Geom_BSplineCurve & Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") GeomAPI_Interpolate::~GeomAPI_Interpolate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI_Interpolate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAPI_ProjectPointOnSurf;
class GeomAPI_ProjectPointOnSurf {
	public:
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf();
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf(const gp_Pnt P, const Handle_Geom_Surface &Surface);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf(const gp_Pnt P, const Handle_Geom_Surface &Surface, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf(const gp_Pnt P, const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf(const gp_Pnt P, const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup);
		%feature("autodoc", "1");
		void Init(const gp_Pnt P, const Handle_Geom_Surface &Surface, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Init(const gp_Pnt P, const Handle_Geom_Surface &Surface);
		%feature("autodoc", "1");
		void Init(const gp_Pnt P, const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Init(const gp_Pnt P, const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer Index) const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt NearestPoint() const;
		%feature("autodoc","LowerDistanceParameters() -> [Standard_Real, Standard_Real]");

		void LowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtPS & Extrema() const;

};
%feature("shadow") GeomAPI_ProjectPointOnSurf::~GeomAPI_ProjectPointOnSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI_ProjectPointOnSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAPI_ExtremaCurveSurface;
class GeomAPI_ExtremaCurveSurface {
	public:
		%feature("autodoc", "1");
		GeomAPI_ExtremaCurveSurface();
		%feature("autodoc", "1");
		GeomAPI_ExtremaCurveSurface(const Handle_Geom_Curve &Curve, const Handle_Geom_Surface &Surface);
		%feature("autodoc", "1");
		GeomAPI_ExtremaCurveSurface(const Handle_Geom_Curve &Curve, const Handle_Geom_Surface &Surface, const Quantity_Parameter Wmin, const Quantity_Parameter Wmax, const Quantity_Parameter Umin, const Quantity_Parameter Umax, const Quantity_Parameter Vmin, const Quantity_Parameter Vmax);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &Curve, const Handle_Geom_Surface &Surface);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &Curve, const Handle_Geom_Surface &Surface, const Quantity_Parameter Wmin, const Quantity_Parameter Wmax, const Quantity_Parameter Umin, const Quantity_Parameter Umax, const Quantity_Parameter Vmin, const Quantity_Parameter Vmax);
		%feature("autodoc", "1");
		Standard_Integer NbExtrema() const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer Index, gp_Pnt & P1, gp_Pnt & P2) const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void NearestPoints(gp_Pnt & PC, gp_Pnt & PS) const;
		%feature("autodoc","LowerDistanceParameters() -> [Standard_Real, Standard_Real, Standard_Real]");

		void LowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtCS & Extrema() const;

};
%feature("shadow") GeomAPI_ExtremaCurveSurface::~GeomAPI_ExtremaCurveSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI_ExtremaCurveSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAPI_ProjectPointOnCurve;
class GeomAPI_ProjectPointOnCurve {
	public:
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnCurve();
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnCurve(const gp_Pnt P, const Handle_Geom_Curve &Curve);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnCurve(const gp_Pnt P, const Handle_Geom_Curve &Curve, const Quantity_Parameter Umin, const Quantity_Parameter Usup);
		%feature("autodoc", "1");
		void Init(const gp_Pnt P, const Handle_Geom_Curve &Curve);
		%feature("autodoc", "1");
		void Init(const gp_Pnt P, const Handle_Geom_Curve &Curve, const Quantity_Parameter Umin, const Quantity_Parameter Usup);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &Curve, const Quantity_Parameter Umin, const Quantity_Parameter Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt P);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Quantity_Parameter Parameter(const Standard_Integer Index) const;
		%feature("autodoc","Parameter(Standard_Integer Index) -> Standard_Real");

		void Parameter(const Standard_Integer Index, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt NearestPoint() const;
		%feature("autodoc", "1");
		Quantity_Parameter LowerDistanceParameter() const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtPC & Extrema() const;

};
%feature("shadow") GeomAPI_ProjectPointOnCurve::~GeomAPI_ProjectPointOnCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI_ProjectPointOnCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAPI_PointsToBSpline;
class GeomAPI_PointsToBSpline {
	public:
		%feature("autodoc", "1");
		GeomAPI_PointsToBSpline();
		%feature("autodoc", "1");
		GeomAPI_PointsToBSpline(const TColgp_Array1OfPnt &Points, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		GeomAPI_PointsToBSpline(const TColgp_Array1OfPnt &Points, const Approx_ParametrizationType ParType, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		GeomAPI_PointsToBSpline(const TColgp_Array1OfPnt &Points, const TColStd_Array1OfReal &Parameters, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		GeomAPI_PointsToBSpline(const TColgp_Array1OfPnt &Points, const Standard_Real Weight1, const Standard_Real Weight2, const Standard_Real Weight3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &Points, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &Points, const Approx_ParametrizationType ParType, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &Points, const TColStd_Array1OfReal &Parameters, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &Points, const Standard_Real Weight1, const Standard_Real Weight2, const Standard_Real Weight3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineCurve & Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") GeomAPI_PointsToBSpline::~GeomAPI_PointsToBSpline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI_PointsToBSpline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAPI_ExtremaSurfaceSurface;
class GeomAPI_ExtremaSurfaceSurface {
	public:
		%feature("autodoc", "1");
		GeomAPI_ExtremaSurfaceSurface();
		%feature("autodoc", "1");
		GeomAPI_ExtremaSurfaceSurface(const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2);
		%feature("autodoc", "1");
		GeomAPI_ExtremaSurfaceSurface(const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const Quantity_Parameter U1min, const Quantity_Parameter U1max, const Quantity_Parameter V1min, const Quantity_Parameter V1max, const Quantity_Parameter U2min, const Quantity_Parameter U2max, const Quantity_Parameter V2min, const Quantity_Parameter V2max);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const Quantity_Parameter U1min, const Quantity_Parameter U1max, const Quantity_Parameter V1min, const Quantity_Parameter V1max, const Quantity_Parameter U2min, const Quantity_Parameter U2max, const Quantity_Parameter V2min, const Quantity_Parameter V2max);
		%feature("autodoc", "1");
		Standard_Integer NbExtrema() const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer Index, gp_Pnt & P1, gp_Pnt & P2) const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void NearestPoints(gp_Pnt & P1, gp_Pnt & P2) const;
		%feature("autodoc","LowerDistanceParameters() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void LowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtSS & Extrema() const;

};
%feature("shadow") GeomAPI_ExtremaSurfaceSurface::~GeomAPI_ExtremaSurfaceSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI_ExtremaSurfaceSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAPI_PointsToBSplineSurface;
class GeomAPI_PointsToBSplineSurface {
	public:
		%feature("autodoc", "1");
		GeomAPI_PointsToBSplineSurface();
		%feature("autodoc", "1");
		GeomAPI_PointsToBSplineSurface(const TColgp_Array2OfPnt &Points, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		GeomAPI_PointsToBSplineSurface(const TColgp_Array2OfPnt &Points, const Approx_ParametrizationType ParType, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		GeomAPI_PointsToBSplineSurface(const TColgp_Array2OfPnt &Points, const Standard_Real Weight1, const Standard_Real Weight2, const Standard_Real Weight3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		GeomAPI_PointsToBSplineSurface(const TColStd_Array2OfReal &ZPoints, const Standard_Real X0, const Standard_Real dX, const Standard_Real Y0, const Standard_Real dY, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array2OfPnt &Points, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		void Interpolate(const TColgp_Array2OfPnt &Points);
		%feature("autodoc", "1");
		void Interpolate(const TColgp_Array2OfPnt &Points, const Approx_ParametrizationType ParType);
		%feature("autodoc", "1");
		void Init(const TColStd_Array2OfReal &ZPoints, const Standard_Real X0, const Standard_Real dX, const Standard_Real Y0, const Standard_Real dY, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		void Interpolate(const TColStd_Array2OfReal &ZPoints, const Standard_Real X0, const Standard_Real dX, const Standard_Real Y0, const Standard_Real dY);
		%feature("autodoc", "1");
		void Init(const TColgp_Array2OfPnt &Points, const Approx_ParametrizationType ParType, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array2OfPnt &Points, const Standard_Real Weight1, const Standard_Real Weight2, const Standard_Real Weight3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.00000000000000002081668171172168513294309377670288085938e-3);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & Surface() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") GeomAPI_PointsToBSplineSurface::~GeomAPI_PointsToBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI_PointsToBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAPI;
class GeomAPI {
	public:
		%feature("autodoc", "1");
		GeomAPI();
		%feature("autodoc", "1");
		static		Handle_Geom2d_Curve To2d(const Handle_Geom_Curve &C, const gp_Pln P);
		%feature("autodoc", "1");
		static		Handle_Geom_Curve To3d(const Handle_Geom2d_Curve &C, const gp_Pln P);

};
%feature("shadow") GeomAPI::~GeomAPI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAPI_ExtremaCurveCurve;
class GeomAPI_ExtremaCurveCurve {
	public:
		%feature("autodoc", "1");
		GeomAPI_ExtremaCurveCurve();
		%feature("autodoc", "1");
		GeomAPI_ExtremaCurveCurve(const Handle_Geom_Curve &C1, const Handle_Geom_Curve &C2);
		%feature("autodoc", "1");
		GeomAPI_ExtremaCurveCurve(const Handle_Geom_Curve &C1, const Handle_Geom_Curve &C2, const Quantity_Parameter U1min, const Quantity_Parameter U1max, const Quantity_Parameter U2min, const Quantity_Parameter U2max);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C1, const Handle_Geom_Curve &C2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C1, const Handle_Geom_Curve &C2, const Quantity_Parameter U1min, const Quantity_Parameter U1max, const Quantity_Parameter U2min, const Quantity_Parameter U2max);
		%feature("autodoc", "1");
		Standard_Integer NbExtrema() const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer Index, gp_Pnt & P1, gp_Pnt & P2) const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void NearestPoints(gp_Pnt & P1, gp_Pnt & P2) const;
		%feature("autodoc","LowerDistanceParameters() -> [Standard_Real, Standard_Real]");

		void LowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtCC & Extrema() const;
		%feature("autodoc", "1");
		Standard_Boolean TotalNearestPoints(gp_Pnt & P1, gp_Pnt & P2);
		%feature("autodoc","TotalLowerDistanceParameters() -> [Standard_Real, Standard_Real]");

		Standard_Boolean TotalLowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Quantity_Length TotalLowerDistance();

};
%feature("shadow") GeomAPI_ExtremaCurveCurve::~GeomAPI_ExtremaCurveCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI_ExtremaCurveCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAPI_IntCS;
class GeomAPI_IntCS {
	public:
		%feature("autodoc", "1");
		GeomAPI_IntCS();
		%feature("autodoc", "1");
		GeomAPI_IntCS(const Handle_Geom_Curve &C, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom_Curve &C, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const gp_Pnt  Point(const Standard_Integer Index) const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		Handle_Geom_Curve Segment(const Standard_Integer Index) const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") GeomAPI_IntCS::~GeomAPI_IntCS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI_IntCS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAPI_IntSS;
class GeomAPI_IntSS {
	public:
		%feature("autodoc", "1");
		GeomAPI_IntSS();
		%feature("autodoc", "1");
		GeomAPI_IntSS(const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Line(const Standard_Integer I) const;

};
%feature("shadow") GeomAPI_IntSS::~GeomAPI_IntSS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAPI_IntSS {
	void _kill_pointed() {
		delete $self;
	}
};
