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
%module Geom2dConvert

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


%include Geom2dConvert_dependencies.i


%include Geom2dConvert_headers.i




%nodefaultctor Geom2dConvert_CompCurveToBSplineCurve;
class Geom2dConvert_CompCurveToBSplineCurve {
	public:
		%feature("autodoc", "1");
		~Geom2dConvert_CompCurveToBSplineCurve();
		%feature("autodoc", "1");
		Geom2dConvert_CompCurveToBSplineCurve(const Handle_Geom2d_BoundedCurve &BasisCurve, const Convert_ParameterisationType Parameterisation=Convert_TgtThetaOver2);
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Geom2d_BoundedCurve &NewCurve, const Standard_Real Tolerance, const Standard_Boolean After=0);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve BSplineCurve() const;

};

%nodefaultctor Geom2dConvert;
class Geom2dConvert {
	public:
		%feature("autodoc", "1");
		~Geom2dConvert();
		%feature("autodoc", "1");
		Geom2dConvert();
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve SplitBSplineCurve(const Handle_Geom2d_BSplineCurve &C, const Standard_Integer FromK1, const Standard_Integer ToK2, const Standard_Boolean SameOrientation=1);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve SplitBSplineCurve(const Handle_Geom2d_BSplineCurve &C, const Standard_Real FromU1, const Standard_Real ToU2, const Standard_Real ParametricTolerance, const Standard_Boolean SameOrientation=1);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve CurveToBSplineCurve(const Handle_Geom2d_Curve &C, const Convert_ParameterisationType Parameterisation=Convert_TgtThetaOver2);
		%feature("autodoc", "1");
		void ConcatG1(TColGeom2d_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal &ArrayOfToler, Handle_TColGeom2d_HArray1OfBSplineCurve & ArrayOfConcatenated, const Standard_Boolean ClosedFlag, const Standard_Real ClosedTolerance);
		%feature("autodoc", "1");
		void ConcatC1(TColGeom2d_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal &ArrayOfToler, Handle_TColStd_HArray1OfInteger & ArrayOfIndices, Handle_TColGeom2d_HArray1OfBSplineCurve & ArrayOfConcatenated, const Standard_Boolean ClosedFlag, const Standard_Real ClosedTolerance);
		%feature("autodoc", "1");
		void ConcatC1(TColGeom2d_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal &ArrayOfToler, Handle_TColStd_HArray1OfInteger & ArrayOfIndices, Handle_TColGeom2d_HArray1OfBSplineCurve & ArrayOfConcatenated, const Standard_Boolean ClosedFlag, const Standard_Real ClosedTolerance, const Standard_Real AngularTolerance);
		%feature("autodoc", "1");
		void C0BSplineToC1BSplineCurve(Handle_Geom2d_BSplineCurve & BS, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void C0BSplineToArrayOfC1BSplineCurve(const Handle_Geom2d_BSplineCurve &BS, Handle_TColGeom2d_HArray1OfBSplineCurve & tabBS, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void C0BSplineToArrayOfC1BSplineCurve(const Handle_Geom2d_BSplineCurve &BS, Handle_TColGeom2d_HArray1OfBSplineCurve & tabBS, const Standard_Real AngularTolerance, const Standard_Real Tolerance);

};

%nodefaultctor Geom2dConvert_BSplineCurveKnotSplitting;
class Geom2dConvert_BSplineCurveKnotSplitting {
	public:
		%feature("autodoc", "1");
		~Geom2dConvert_BSplineCurveKnotSplitting();
		%feature("autodoc", "1");
		Geom2dConvert_BSplineCurveKnotSplitting(const Handle_Geom2d_BSplineCurve &BasisCurve, const Standard_Integer ContinuityRange);
		%feature("autodoc", "1");
		Standard_Integer NbSplits() const;
		%feature("autodoc", "1");
		void Splitting(TColStd_Array1OfInteger & SplitValues) const;
		%feature("autodoc", "1");
		Standard_Integer SplitValue(const Standard_Integer Index) const;

};

%nodefaultctor Geom2dConvert_BSplineCurveToBezierCurve;
class Geom2dConvert_BSplineCurveToBezierCurve {
	public:
		%feature("autodoc", "1");
		~Geom2dConvert_BSplineCurveToBezierCurve();
		%feature("autodoc", "1");
		Geom2dConvert_BSplineCurveToBezierCurve(const Handle_Geom2d_BSplineCurve &BasisCurve);
		%feature("autodoc", "1");
		Geom2dConvert_BSplineCurveToBezierCurve(const Handle_Geom2d_BSplineCurve &BasisCurve, const Standard_Real U1, const Standard_Real U2, const Standard_Real ParametricTolerance);
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve Arc(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Arcs(TColGeom2d_Array1OfBezierCurve & Curves);
		%feature("autodoc", "1");
		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		Standard_Integer NbArcs() const;

};

%nodefaultctor Geom2dConvert_ApproxCurve;
class Geom2dConvert_ApproxCurve {
	public:
		%feature("autodoc", "1");
		~Geom2dConvert_ApproxCurve();
		%feature("autodoc", "1");
		Geom2dConvert_ApproxCurve(const Handle_Geom2d_Curve &Curve, const Standard_Real Tol2d, const GeomAbs_Shape Order, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Standard_Real MaxError() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};