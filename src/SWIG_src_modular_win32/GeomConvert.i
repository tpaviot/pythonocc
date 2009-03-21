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
%module GeomConvert

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


%include GeomConvert_dependencies.i


%include GeomConvert_headers.i




%nodefaultctor GeomConvert_ApproxCurve;
class GeomConvert_ApproxCurve {
	public:
		%feature("autodoc", "1");
		GeomConvert_ApproxCurve(const Handle_Geom_Curve &Curve, const Standard_Real Tol3d, const GeomAbs_Shape Order, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Standard_Real MaxError() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};
%extend GeomConvert_ApproxCurve {
	~GeomConvert_ApproxCurve() {
	printf("Call custom destructor for instance of GeomConvert_ApproxCurve\n");
	}
};

%nodefaultctor GeomConvert_ApproxSurface;
class GeomConvert_ApproxSurface {
	public:
		%feature("autodoc", "1");
		GeomConvert_ApproxSurface(const Handle_Geom_Surface &Surf, const Standard_Real Tol3d, const GeomAbs_Shape UContinuity, const GeomAbs_Shape VContinuity, const Standard_Integer MaxDegU, const Standard_Integer MaxDegV, const Standard_Integer MaxSegments, const Standard_Integer PrecisCode);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface Surface() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Standard_Real MaxError() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};
%extend GeomConvert_ApproxSurface {
	~GeomConvert_ApproxSurface() {
	printf("Call custom destructor for instance of GeomConvert_ApproxSurface\n");
	}
};

%nodefaultctor GeomConvert_BSplineSurfaceKnotSplitting;
class GeomConvert_BSplineSurfaceKnotSplitting {
	public:
		%feature("autodoc", "1");
		GeomConvert_BSplineSurfaceKnotSplitting(const Handle_Geom_BSplineSurface &BasisSurface, const Standard_Integer UContinuityRange, const Standard_Integer VContinuityRange);
		%feature("autodoc", "1");
		Standard_Integer NbUSplits() const;
		%feature("autodoc", "1");
		Standard_Integer NbVSplits() const;
		%feature("autodoc", "1");
		void Splitting(TColStd_Array1OfInteger & USplit, TColStd_Array1OfInteger & VSplit) const;
		%feature("autodoc", "1");
		Standard_Integer USplitValue(const Standard_Integer UIndex) const;
		%feature("autodoc", "1");
		Standard_Integer VSplitValue(const Standard_Integer VIndex) const;

};
%extend GeomConvert_BSplineSurfaceKnotSplitting {
	~GeomConvert_BSplineSurfaceKnotSplitting() {
	printf("Call custom destructor for instance of GeomConvert_BSplineSurfaceKnotSplitting\n");
	}
};

%nodefaultctor GeomConvert_BSplineCurveKnotSplitting;
class GeomConvert_BSplineCurveKnotSplitting {
	public:
		%feature("autodoc", "1");
		GeomConvert_BSplineCurveKnotSplitting(const Handle_Geom_BSplineCurve &BasisCurve, const Standard_Integer ContinuityRange);
		%feature("autodoc", "1");
		Standard_Integer NbSplits() const;
		%feature("autodoc", "1");
		void Splitting(TColStd_Array1OfInteger & SplitValues) const;
		%feature("autodoc", "1");
		Standard_Integer SplitValue(const Standard_Integer Index) const;

};
%extend GeomConvert_BSplineCurveKnotSplitting {
	~GeomConvert_BSplineCurveKnotSplitting() {
	printf("Call custom destructor for instance of GeomConvert_BSplineCurveKnotSplitting\n");
	}
};

%nodefaultctor GeomConvert;
class GeomConvert {
	public:
		%feature("autodoc", "1");
		GeomConvert();
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve SplitBSplineCurve(const Handle_Geom_BSplineCurve &C, const Standard_Integer FromK1, const Standard_Integer ToK2, const Standard_Boolean SameOrientation=1);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve SplitBSplineCurve(const Handle_Geom_BSplineCurve &C, const Standard_Real FromU1, const Standard_Real ToU2, const Standard_Real ParametricTolerance, const Standard_Boolean SameOrientation=1);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface SplitBSplineSurface(const Handle_Geom_BSplineSurface &S, const Standard_Integer FromUK1, const Standard_Integer ToUK2, const Standard_Integer FromVK1, const Standard_Integer ToVK2, const Standard_Boolean SameUOrientation=1, const Standard_Boolean SameVOrientation=1);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface SplitBSplineSurface(const Handle_Geom_BSplineSurface &S, const Standard_Integer FromK1, const Standard_Integer ToK2, const Standard_Boolean USplit, const Standard_Boolean SameOrientation=1);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface SplitBSplineSurface(const Handle_Geom_BSplineSurface &S, const Standard_Real FromU1, const Standard_Real ToU2, const Standard_Real FromV1, const Standard_Real ToV2, const Standard_Real ParametricTolerance, const Standard_Boolean SameUOrientation=1, const Standard_Boolean SameVOrientation=1);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface SplitBSplineSurface(const Handle_Geom_BSplineSurface &S, const Standard_Real FromParam1, const Standard_Real ToParam2, const Standard_Boolean USplit, const Standard_Real ParametricTolerance, const Standard_Boolean SameOrientation=1);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve CurveToBSplineCurve(const Handle_Geom_Curve &C, const Convert_ParameterisationType Parameterisation=Convert_TgtThetaOver2);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface SurfaceToBSplineSurface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void ConcatG1(TColGeom_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal &ArrayOfToler, Handle_TColGeom_HArray1OfBSplineCurve & ArrayOfConcatenated, const Standard_Boolean ClosedG1Flag, const Standard_Real ClosedTolerance);
		%feature("autodoc", "1");
		void ConcatC1(TColGeom_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal &ArrayOfToler, Handle_TColStd_HArray1OfInteger & ArrayOfIndices, Handle_TColGeom_HArray1OfBSplineCurve & ArrayOfConcatenated, const Standard_Boolean ClosedG1Flag, const Standard_Real ClosedTolerance);
		%feature("autodoc", "1");
		void ConcatC1(TColGeom_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal &ArrayOfToler, Handle_TColStd_HArray1OfInteger & ArrayOfIndices, Handle_TColGeom_HArray1OfBSplineCurve & ArrayOfConcatenated, const Standard_Boolean ClosedG1Flag, const Standard_Real ClosedTolerance, const Standard_Real AngularTolerance);
		%feature("autodoc", "1");
		void C0BSplineToC1BSplineCurve(Handle_Geom_BSplineCurve & BS, const Standard_Real tolerance, const Standard_Real AngularTolerance=9.99999999999999954748111825886258685613938723691e-8);
		%feature("autodoc", "1");
		void C0BSplineToArrayOfC1BSplineCurve(const Handle_Geom_BSplineCurve &BS, Handle_TColGeom_HArray1OfBSplineCurve & tabBS, const Standard_Real tolerance);
		%feature("autodoc", "1");
		void C0BSplineToArrayOfC1BSplineCurve(const Handle_Geom_BSplineCurve &BS, Handle_TColGeom_HArray1OfBSplineCurve & tabBS, const Standard_Real AngularTolerance, const Standard_Real tolerance);

};
%extend GeomConvert {
	~GeomConvert() {
	printf("Call custom destructor for instance of GeomConvert\n");
	}
};

%nodefaultctor GeomConvert_BSplineSurfaceToBezierSurface;
class GeomConvert_BSplineSurfaceToBezierSurface {
	public:
		%feature("autodoc", "1");
		GeomConvert_BSplineSurfaceToBezierSurface(const Handle_Geom_BSplineSurface &BasisSurface);
		%feature("autodoc", "1");
		GeomConvert_BSplineSurfaceToBezierSurface(const Handle_Geom_BSplineSurface &BasisSurface, const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2, const Standard_Real ParametricTolerance);
		%feature("autodoc", "1");
		Handle_Geom_BezierSurface Patch(const Standard_Integer UIndex, const Standard_Integer VIndex);
		%feature("autodoc", "1");
		void Patches(TColGeom_Array2OfBezierSurface & Surfaces);
		%feature("autodoc", "1");
		void UKnots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		void VKnots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		Standard_Integer NbUPatches() const;
		%feature("autodoc", "1");
		Standard_Integer NbVPatches() const;

};
%extend GeomConvert_BSplineSurfaceToBezierSurface {
	~GeomConvert_BSplineSurfaceToBezierSurface() {
	printf("Call custom destructor for instance of GeomConvert_BSplineSurfaceToBezierSurface\n");
	}
};

%nodefaultctor GeomConvert_CompCurveToBSplineCurve;
class GeomConvert_CompCurveToBSplineCurve {
	public:
		%feature("autodoc", "1");
		GeomConvert_CompCurveToBSplineCurve(const Handle_Geom_BoundedCurve &BasisCurve, const Convert_ParameterisationType Parameterisation=Convert_TgtThetaOver2);
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Geom_BoundedCurve &NewCurve, const Standard_Real Tolerance, const Standard_Boolean After=0, const Standard_Boolean WithRatio=1, const Standard_Integer MinM=0);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve BSplineCurve() const;

};
%extend GeomConvert_CompCurveToBSplineCurve {
	~GeomConvert_CompCurveToBSplineCurve() {
	printf("Call custom destructor for instance of GeomConvert_CompCurveToBSplineCurve\n");
	}
};

%nodefaultctor GeomConvert_BSplineCurveToBezierCurve;
class GeomConvert_BSplineCurveToBezierCurve {
	public:
		%feature("autodoc", "1");
		GeomConvert_BSplineCurveToBezierCurve(const Handle_Geom_BSplineCurve &BasisCurve);
		%feature("autodoc", "1");
		GeomConvert_BSplineCurveToBezierCurve(const Handle_Geom_BSplineCurve &BasisCurve, const Standard_Real U1, const Standard_Real U2, const Standard_Real ParametricTolerance);
		%feature("autodoc", "1");
		Handle_Geom_BezierCurve Arc(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Arcs(TColGeom_Array1OfBezierCurve & Curves);
		%feature("autodoc", "1");
		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		Standard_Integer NbArcs() const;

};
%extend GeomConvert_BSplineCurveToBezierCurve {
	~GeomConvert_BSplineCurveToBezierCurve() {
	printf("Call custom destructor for instance of GeomConvert_BSplineCurveToBezierCurve\n");
	}
};

%nodefaultctor GeomConvert_CompBezierSurfacesToBSplineSurface;
class GeomConvert_CompBezierSurfacesToBSplineSurface {
	public:
		%feature("autodoc", "1");
		GeomConvert_CompBezierSurfacesToBSplineSurface(const TColGeom_Array2OfBezierSurface &Beziers);
		%feature("autodoc", "1");
		GeomConvert_CompBezierSurfacesToBSplineSurface(const TColGeom_Array2OfBezierSurface &Beziers, const Standard_Real Tolerance, const Standard_Boolean RemoveKnots=1);
		%feature("autodoc", "1");
		GeomConvert_CompBezierSurfacesToBSplineSurface(const TColGeom_Array2OfBezierSurface &Beziers, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const GeomAbs_Shape UContinuity=GeomAbs_C0, const GeomAbs_Shape VContinuity=GeomAbs_C0, const Standard_Real Tolerance=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		Standard_Integer NbUKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NbUPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbVKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NbVPoles() const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray2OfPnt & Poles() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & UKnots() const;
		%feature("autodoc", "1");
		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & VKnots() const;
		%feature("autodoc", "1");
		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & UMultiplicities() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & VMultiplicities() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%extend GeomConvert_CompBezierSurfacesToBSplineSurface {
	~GeomConvert_CompBezierSurfacesToBSplineSurface() {
	printf("Call custom destructor for instance of GeomConvert_CompBezierSurfacesToBSplineSurface\n");
	}
};