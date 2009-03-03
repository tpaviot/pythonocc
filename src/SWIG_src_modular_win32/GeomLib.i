/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module GeomLib

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


%include GeomLib_dependencies.i


%include GeomLib_headers.i

typedef GeomLib_DenominatorMultiplier * GeomLib_DenominatorMultiplierPtr;

enum GeomLib_InterpolationErrors {
	GeomLib_NoError,
	GeomLib_NotEnoughtPoints,
	GeomLib_DegreeSmallerThan3,
	GeomLib_InversionProblem,
	};



%nodefaultctor GeomLib_LogSample;
class GeomLib_LogSample : public math_FunctionSample {
	public:
		%feature("autodoc", "1");
		~GeomLib_LogSample();
		%feature("autodoc", "1");
		GeomLib_LogSample(const Standard_Real A, const Standard_Real B, const Standard_Integer N);
		%feature("autodoc", "1");
		virtual		Standard_Real GetParameter(const Standard_Integer Index) const;

};

%nodefaultctor GeomLib_DenominatorMultiplier;
class GeomLib_DenominatorMultiplier {
	public:
		%feature("autodoc", "1");
		~GeomLib_DenominatorMultiplier();
		%feature("autodoc", "1");
		GeomLib_DenominatorMultiplier(const Handle_Geom_BSplineSurface &Surface, const TColStd_Array1OfReal &KnotVector);
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Real UParameter, const Standard_Real VParameter) const;

};

%nodefaultctor GeomLib_Tool;
class GeomLib_Tool {
	public:
		%feature("autodoc", "1");
		~GeomLib_Tool();
		%feature("autodoc", "1");
		GeomLib_Tool();
		%feature("autodoc", "1");
		Standard_Boolean Parameter(const Handle_Geom_Curve &Curve, const gp_Pnt &Point, const Standard_Real Tolerance, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean Parameters(const Handle_Geom_Surface &Surface, const gp_Pnt &Point, const Standard_Real Tolerance, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean Parameter(const Handle_Geom2d_Curve &Curve, const gp_Pnt2d &Point, const Standard_Real Tolerance, Standard_Real &OutValue);

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
		~GeomLib_Array1OfMat();
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
		%feature("autodoc", "1");
		virtual		~GeomLib_PolyFunc();

};

%nodefaultctor GeomLib_Interpolate;
class GeomLib_Interpolate {
	public:
		%feature("autodoc", "1");
		~GeomLib_Interpolate();
		%feature("autodoc", "1");
		GeomLib_Interpolate(const Standard_Integer Degree, const Standard_Integer NumPoints, const TColgp_Array1OfPnt &Points, const TColStd_Array1OfReal &Parameters);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		GeomLib_InterpolationErrors Error() const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve Curve() const;

};

%nodefaultctor GeomLib_MakeCurvefromApprox;
class GeomLib_MakeCurvefromApprox {
	public:
		%feature("autodoc", "1");
		~GeomLib_MakeCurvefromApprox();
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

%nodefaultctor GeomLib_IsPlanarSurface;
class GeomLib_IsPlanarSurface {
	public:
		%feature("autodoc", "1");
		~GeomLib_IsPlanarSurface();
		%feature("autodoc", "1");
		GeomLib_IsPlanarSurface(const Handle_Geom_Surface &S, const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-8);
		%feature("autodoc", "1");
		Standard_Boolean IsPlanar() const;
		%feature("autodoc", "1");
		const gp_Pln & Plan() const;

};

%nodefaultctor GeomLib_Check2dBSplineCurve;
class GeomLib_Check2dBSplineCurve {
	public:
		%feature("autodoc", "1");
		~GeomLib_Check2dBSplineCurve();
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

%nodefaultctor GeomLib;
class GeomLib {
	public:
		%feature("autodoc", "1");
		~GeomLib();
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

%nodefaultctor GeomLib_CheckBSplineCurve;
class GeomLib_CheckBSplineCurve {
	public:
		%feature("autodoc", "1");
		~GeomLib_CheckBSplineCurve();
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