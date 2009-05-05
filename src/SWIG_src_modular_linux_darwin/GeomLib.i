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
%module GeomLib

%include GeomLib_renames.i

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


%include GeomLib_dependencies.i


%include GeomLib_headers.i

typedef GeomLib_DenominatorMultiplier * GeomLib_DenominatorMultiplierPtr;

enum GeomLib_InterpolationErrors {
	GeomLib_NoError,
	GeomLib_NotEnoughtPoints,
	GeomLib_DegreeSmallerThan3,
	GeomLib_InversionProblem,
	};



%nodefaultctor GeomLib_DenominatorMultiplier;
class GeomLib_DenominatorMultiplier {
	public:
		%feature("autodoc", "1");
		GeomLib_DenominatorMultiplier(const Handle_Geom_BSplineSurface &Surface, const TColStd_Array1OfReal &KnotVector);
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Real UParameter, const Standard_Real VParameter) const;

};
%extend GeomLib_DenominatorMultiplier {
	~GeomLib_DenominatorMultiplier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib_DenominatorMultiplier\n");}
	}
};


%nodefaultctor GeomLib_Tool;
class GeomLib_Tool {
	public:
		%feature("autodoc", "1");
		GeomLib_Tool();
		%feature("autodoc", "1");
		Standard_Boolean Parameter(const Handle_Geom_Curve &Curve, const gp_Pnt &Point, const Standard_Real Tolerance, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean Parameters(const Handle_Geom_Surface &Surface, const gp_Pnt &Point, const Standard_Real Tolerance, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean Parameter(const Handle_Geom2d_Curve &Curve, const gp_Pnt2d &Point, const Standard_Real Tolerance, Standard_Real &OutValue);

};
%extend GeomLib_Tool {
	~GeomLib_Tool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib_Tool\n");}
	}
};


%nodefaultctor GeomLib_LogSample;
class GeomLib_LogSample : public math_FunctionSample {
	public:
		%feature("autodoc", "1");
		GeomLib_LogSample(const Standard_Real A, const Standard_Real B, const Standard_Integer N);
		%feature("autodoc", "1");
		virtual		Standard_Real GetParameter(const Standard_Integer Index) const;

};
%extend GeomLib_LogSample {
	~GeomLib_LogSample() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib_LogSample\n");}
	}
};


%nodefaultctor GeomLib_Interpolate;
class GeomLib_Interpolate {
	public:
		%feature("autodoc", "1");
		GeomLib_Interpolate(const Standard_Integer Degree, const Standard_Integer NumPoints, const TColgp_Array1OfPnt &Points, const TColStd_Array1OfReal &Parameters);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		GeomLib_InterpolationErrors Error() const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve Curve() const;

};
%extend GeomLib_Interpolate {
	~GeomLib_Interpolate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib_Interpolate\n");}
	}
};


%nodefaultctor GeomLib_IsPlanarSurface;
class GeomLib_IsPlanarSurface {
	public:
		%feature("autodoc", "1");
		GeomLib_IsPlanarSurface(const Handle_Geom_Surface &S, const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-8);
		%feature("autodoc", "1");
		Standard_Boolean IsPlanar() const;
		%feature("autodoc", "1");
		const gp_Pln & Plan() const;

};
%extend GeomLib_IsPlanarSurface {
	~GeomLib_IsPlanarSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib_IsPlanarSurface\n");}
	}
};


%nodefaultctor GeomLib_PolyFunc;
class GeomLib_PolyFunc : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		GeomLib_PolyFunc(const math_Vector &Coeffs);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%extend GeomLib_PolyFunc {
	~GeomLib_PolyFunc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib_PolyFunc\n");}
	}
};


%nodefaultctor GeomLib_CheckBSplineCurve;
class GeomLib_CheckBSplineCurve {
	public:
		%feature("autodoc", "1");
		GeomLib_CheckBSplineCurve(const Handle_Geom_BSplineCurve &Curve, const Standard_Real Tolerance, const Standard_Real AngularTolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void NeedTangentFix(Standard_Boolean & FirstFlag, Standard_Boolean & SecondFlag) const;
		%feature("autodoc", "1");
		void FixTangent(const Standard_Boolean FirstFlag, const Standard_Boolean LastFlag);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve FixedTangent(const Standard_Boolean FirstFlag, const Standard_Boolean LastFlag);

};
%extend GeomLib_CheckBSplineCurve {
	~GeomLib_CheckBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib_CheckBSplineCurve\n");}
	}
};


%nodefaultctor GeomLib_MakeCurvefromApprox;
class GeomLib_MakeCurvefromApprox {
	public:
		%feature("autodoc", "1");
		GeomLib_MakeCurvefromApprox(const AdvApprox_ApproxAFunction &Approx);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer Nb1DSpaces() const;
		%feature("autodoc", "1");
		Standard_Integer Nb2DSpaces() const;
		%feature("autodoc", "1");
		Standard_Integer Nb3DSpaces() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve2d(const Standard_Integer Index2d) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve2dFromTwo1d(const Standard_Integer Index1d, const Standard_Integer Index2d) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve2d(const Standard_Integer Index1d, const Standard_Integer Index2d) const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve Curve(const Standard_Integer Index3d) const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve Curve(const Standard_Integer Index1D, const Standard_Integer Index3D) const;

};
%extend GeomLib_MakeCurvefromApprox {
	~GeomLib_MakeCurvefromApprox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib_MakeCurvefromApprox\n");}
	}
};


%nodefaultctor GeomLib_Array1OfMat;
class GeomLib_Array1OfMat {
	public:
		%feature("autodoc", "1");
		GeomLib_Array1OfMat(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GeomLib_Array1OfMat(const gp_Mat &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Mat &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const GeomLib_Array1OfMat & Assign(const GeomLib_Array1OfMat &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Mat &Value);
		%feature("autodoc", "1");
		const gp_Mat & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Mat & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Mat & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Mat & operator()(const Standard_Integer Index);

};
%extend GeomLib_Array1OfMat {
	~GeomLib_Array1OfMat() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib_Array1OfMat\n");}
	}
};


%nodefaultctor GeomLib;
class GeomLib {
	public:
		%feature("autodoc", "1");
		GeomLib();
		%feature("autodoc", "1");
		Handle_Geom_Curve To3d(const gp_Ax2 &Position, const Handle_Geom2d_Curve &Curve2d);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve GTransform(const Handle_Geom2d_Curve &Curve, const gp_GTrsf2d &GTrsf);
		%feature("autodoc", "1");
		void SameRange(const Standard_Real Tolerance, const Handle_Geom2d_Curve &Curve2dPtr, const Standard_Real First, const Standard_Real Last, const Standard_Real RequestedFirst, const Standard_Real RequestedLast, Handle_Geom2d_Curve & NewCurve2dPtr);
		%feature("autodoc", "1");
		void BuildCurve3d(const Standard_Real Tolerance, Adaptor3d_CurveOnSurface & CurvePtr, const Standard_Real FirstParameter, const Standard_Real LastParameter, Handle_Geom_Curve & NewCurvePtr, Standard_Real &OutValue, Standard_Real &OutValue, const GeomAbs_Shape Continuity=GeomAbs_C1, const Standard_Integer MaxDegree=14, const Standard_Integer MaxSegment=30);
		%feature("autodoc", "1");
		void AdjustExtremity(Handle_Geom_BoundedCurve & Curve, const gp_Pnt &P1, const gp_Pnt &P2, const gp_Vec &T1, const gp_Vec &T2);
		%feature("autodoc", "1");
		void ExtendCurveToPoint(Handle_Geom_BoundedCurve & Curve, const gp_Pnt &Point, const Standard_Integer Cont, const Standard_Boolean After);
		%feature("autodoc", "1");
		void ExtendSurfByLength(Handle_Geom_BoundedSurface & Surf, const Standard_Real Length, const Standard_Integer Cont, const Standard_Boolean InU, const Standard_Boolean After);
		%feature("autodoc", "1");
		void AxeOfInertia(const TColgp_Array1OfPnt &Points, gp_Ax2 & Axe, Standard_Boolean & IsSingular, const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-8);
		%feature("autodoc", "1");
		void Inertia(const TColgp_Array1OfPnt &Points, gp_Pnt & Bary, gp_Dir & XDir, gp_Dir & YDir, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void RemovePointsFromArray(const Standard_Integer NumPoints, const TColStd_Array1OfReal &InParameters, Handle_TColStd_HArray1OfReal & OutParameters);
		%feature("autodoc", "1");
		void DensifyArray1OfReal(const Standard_Integer MinNumPoints, const TColStd_Array1OfReal &InParameters, Handle_TColStd_HArray1OfReal & OutParameters);
		%feature("autodoc", "1");
		void FuseIntervals(const TColStd_Array1OfReal &Interval1, const TColStd_Array1OfReal &Interval2, TColStd_SequenceOfReal & Fusion, const Standard_Real Confusion=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		void EvalMaxParametricDistance(const Adaptor3d_Curve &Curve, const Adaptor3d_Curve &AReferenceCurve, const Standard_Real Tolerance, const TColStd_Array1OfReal &Parameters, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void EvalMaxDistanceAlongParameter(const Adaptor3d_Curve &Curve, const Adaptor3d_Curve &AReferenceCurve, const Standard_Real Tolerance, const TColStd_Array1OfReal &Parameters, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void CancelDenominatorDerivative(Handle_Geom_BSplineSurface & BSurf, const Standard_Boolean UDirection, const Standard_Boolean VDirection);
		%feature("autodoc", "1");
		Standard_Integer NormEstim(const Handle_Geom_Surface &S, const gp_Pnt2d &UV, const Standard_Real Tol, gp_Dir & N);

};
%extend GeomLib {
	~GeomLib() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib\n");}
	}
};


%nodefaultctor GeomLib_Check2dBSplineCurve;
class GeomLib_Check2dBSplineCurve {
	public:
		%feature("autodoc", "1");
		GeomLib_Check2dBSplineCurve(const Handle_Geom2d_BSplineCurve &Curve, const Standard_Real Tolerance, const Standard_Real AngularTolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void NeedTangentFix(Standard_Boolean & FirstFlag, Standard_Boolean & SecondFlag) const;
		%feature("autodoc", "1");
		void FixTangent(const Standard_Boolean FirstFlag, const Standard_Boolean LastFlag);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve FixedTangent(const Standard_Boolean FirstFlag, const Standard_Boolean LastFlag);

};
%extend GeomLib_Check2dBSplineCurve {
	~GeomLib_Check2dBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomLib_Check2dBSplineCurve\n");}
	}
};
