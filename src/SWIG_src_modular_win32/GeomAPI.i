/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

*/
%module GeomAPI

%include GeomAPI_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include GeomAPI_dependencies.i


%include GeomAPI_headers.i




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
		%feature("autodoc", "1");
		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void NearestPoints(gp_Pnt & P1, gp_Pnt & P2) const;
		%feature("autodoc", "1");
		void LowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtSS & Extrema() const;

};
%extend GeomAPI_ExtremaSurfaceSurface {
	~GeomAPI_ExtremaSurfaceSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI_ExtremaSurfaceSurface\n");}
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
		const gp_Pnt & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		Handle_Geom_Curve Segment(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%extend GeomAPI_IntCS {
	~GeomAPI_IntCS() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI_IntCS\n");}
	}
};


%nodefaultctor GeomAPI_Interpolate;
class GeomAPI_Interpolate {
	public:
		%feature("autodoc", "1");
		GeomAPI_Interpolate(const Handle_TColgp_HArray1OfPnt &Points, const Standard_Boolean PeriodicFlag, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GeomAPI_Interpolate(const Handle_TColgp_HArray1OfPnt &Points, const Handle_TColStd_HArray1OfReal &Parameters, const Standard_Boolean PeriodicFlag, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Load(const gp_Vec &InitialTangent, const gp_Vec &FinalTangent, const Standard_Boolean Scale=1);
		%feature("autodoc", "1");
		void Load(const TColgp_Array1OfVec &Tangents, const Handle_TColStd_HArray1OfBoolean &TangentFlags, const Standard_Boolean Scale=1);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		const Handle_Geom_BSplineCurve & Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%extend GeomAPI_Interpolate {
	~GeomAPI_Interpolate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI_Interpolate\n");}
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
		%feature("autodoc", "1");
		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void NearestPoints(gp_Pnt & P1, gp_Pnt & P2) const;
		%feature("autodoc", "1");
		void LowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtCC & Extrema() const;
		%feature("autodoc", "1");
		Standard_Boolean TotalNearestPoints(gp_Pnt & P1, gp_Pnt & P2);
		%feature("autodoc", "1");
		Standard_Boolean TotalLowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Quantity_Length TotalLowerDistance();

};
%extend GeomAPI_ExtremaCurveCurve {
	~GeomAPI_ExtremaCurveCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI_ExtremaCurveCurve\n");}
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
		%feature("autodoc", "1");
		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void NearestPoints(gp_Pnt & PC, gp_Pnt & PS) const;
		%feature("autodoc", "1");
		void LowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtCS & Extrema() const;

};
%extend GeomAPI_ExtremaCurveSurface {
	~GeomAPI_ExtremaCurveSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI_ExtremaCurveSurface\n");}
	}
};


%nodefaultctor GeomAPI_ProjectPointOnCurve;
class GeomAPI_ProjectPointOnCurve {
	public:
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnCurve();
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnCurve(const gp_Pnt &P, const Handle_Geom_Curve &Curve);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnCurve(const gp_Pnt &P, const Handle_Geom_Curve &Curve, const Quantity_Parameter Umin, const Quantity_Parameter Usup);
		%feature("autodoc", "1");
		void Init(const gp_Pnt &P, const Handle_Geom_Curve &Curve);
		%feature("autodoc", "1");
		void Init(const gp_Pnt &P, const Handle_Geom_Curve &Curve, const Quantity_Parameter Umin, const Quantity_Parameter Usup);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &Curve, const Quantity_Parameter Umin, const Quantity_Parameter Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Quantity_Parameter Parameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
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
%extend GeomAPI_ProjectPointOnCurve {
	~GeomAPI_ProjectPointOnCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI_ProjectPointOnCurve\n");}
	}
};


%nodefaultctor GeomAPI_PointsToBSpline;
class GeomAPI_PointsToBSpline {
	public:
		%feature("autodoc", "1");
		GeomAPI_PointsToBSpline();
		%feature("autodoc", "1");
		GeomAPI_PointsToBSpline(const TColgp_Array1OfPnt &Points, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		GeomAPI_PointsToBSpline(const TColgp_Array1OfPnt &Points, const TColStd_Array1OfReal &Parameters, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &Points, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &Points, const TColStd_Array1OfReal &Parameters, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineCurve & Curve() const;

};
%extend GeomAPI_PointsToBSpline {
	~GeomAPI_PointsToBSpline() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI_PointsToBSpline\n");}
	}
};


%nodefaultctor GeomAPI_ProjectPointOnSurf;
class GeomAPI_ProjectPointOnSurf {
	public:
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf();
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf(const gp_Pnt &P, const Handle_Geom_Surface &Surface);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf(const gp_Pnt &P, const Handle_Geom_Surface &Surface, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf(const gp_Pnt &P, const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf(const gp_Pnt &P, const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup);
		%feature("autodoc", "1");
		void Init(const gp_Pnt &P, const Handle_Geom_Surface &Surface, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Init(const gp_Pnt &P, const Handle_Geom_Surface &Surface);
		%feature("autodoc", "1");
		void Init(const gp_Pnt &P, const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Init(const gp_Pnt &P, const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &Surface, const Quantity_Parameter Umin, const Quantity_Parameter Usup, const Quantity_Parameter Vmin, const Quantity_Parameter Vsup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt NearestPoint() const;
		%feature("autodoc", "1");
		void LowerDistanceParameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtPS & Extrema() const;

};
%extend GeomAPI_ProjectPointOnSurf {
	~GeomAPI_ProjectPointOnSurf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI_ProjectPointOnSurf\n");}
	}
};


%nodefaultctor GeomAPI_PointsToBSplineSurface;
class GeomAPI_PointsToBSplineSurface {
	public:
		%feature("autodoc", "1");
		GeomAPI_PointsToBSplineSurface();
		%feature("autodoc", "1");
		GeomAPI_PointsToBSplineSurface(const TColgp_Array2OfPnt &Points, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		GeomAPI_PointsToBSplineSurface(const TColStd_Array2OfReal &ZPoints, const Standard_Real X0, const Standard_Real dX, const Standard_Real Y0, const Standard_Real dY, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array2OfPnt &Points, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		void Interpolate(const TColgp_Array2OfPnt &Points);
		%feature("autodoc", "1");
		void Init(const TColStd_Array2OfReal &ZPoints, const Standard_Real X0, const Standard_Real dX, const Standard_Real Y0, const Standard_Real dY, const Standard_Integer DegMin=3, const Standard_Integer DegMax=8, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Real Tol3D=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		void Interpolate(const TColStd_Array2OfReal &ZPoints, const Standard_Real X0, const Standard_Real dX, const Standard_Real Y0, const Standard_Real dY);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & Surface() const;

};
%extend GeomAPI_PointsToBSplineSurface {
	~GeomAPI_PointsToBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI_PointsToBSplineSurface\n");}
	}
};


%nodefaultctor GeomAPI;
class GeomAPI {
	public:
		%feature("autodoc", "1");
		GeomAPI();
		%feature("autodoc", "1");
		Handle_Geom2d_Curve To2d(const Handle_Geom_Curve &C, const gp_Pln &P);
		%feature("autodoc", "1");
		Handle_Geom_Curve To3d(const Handle_Geom2d_Curve &C, const gp_Pln &P);

};
%extend GeomAPI {
	~GeomAPI() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI\n");}
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
%extend GeomAPI_IntSS {
	~GeomAPI_IntSS() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomAPI_IntSS\n");}
	}
};
