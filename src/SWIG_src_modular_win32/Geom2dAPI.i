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
%module Geom2dAPI

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

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
%extend Geom2dAPI_InterCurveCurve {
	~Geom2dAPI_InterCurveCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dAPI_InterCurveCurve\n");}
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
%extend Geom2dAPI_PointsToBSpline {
	~Geom2dAPI_PointsToBSpline() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dAPI_PointsToBSpline\n");}
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
%extend Geom2dAPI_Interpolate {
	~Geom2dAPI_Interpolate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dAPI_Interpolate\n");}
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
		%feature("autodoc", "1");
		void Parameter(const Standard_Integer Index, Quantity_Parameter & U) const;
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
%extend Geom2dAPI_ProjectPointOnCurve {
	~Geom2dAPI_ProjectPointOnCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dAPI_ProjectPointOnCurve\n");}
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
		%feature("autodoc", "1");
		void Parameters(const Standard_Integer Index, Quantity_Parameter & U1, Quantity_Parameter & U2) const;
		%feature("autodoc", "1");
		Quantity_Length Distance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void NearestPoints(gp_Pnt2d & P1, gp_Pnt2d & P2) const;
		%feature("autodoc", "1");
		void LowerDistanceParameters(Quantity_Parameter & U1, Quantity_Parameter & U2) const;
		%feature("autodoc", "1");
		Quantity_Length LowerDistance() const;
		%feature("autodoc", "1");
		const Extrema_ExtCC2d & Extrema() const;

};
%extend Geom2dAPI_ExtremaCurveCurve {
	~Geom2dAPI_ExtremaCurveCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dAPI_ExtremaCurveCurve\n");}
	}
};