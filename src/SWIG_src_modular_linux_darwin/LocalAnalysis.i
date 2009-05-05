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
%module LocalAnalysis

%include LocalAnalysis_renames.i

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


%include LocalAnalysis_dependencies.i


%include LocalAnalysis_headers.i


enum LocalAnalysis_StatusErrorType {
	LocalAnalysis_NullFirstDerivative,
	LocalAnalysis_NullSecondDerivative,
	LocalAnalysis_TangentNotDefined,
	LocalAnalysis_NormalNotDefined,
	LocalAnalysis_CurvatureNotDefined,
	};



%nodefaultctor LocalAnalysis_SurfaceContinuity;
class LocalAnalysis_SurfaceContinuity {
	public:
		%feature("autodoc", "1");
		LocalAnalysis_SurfaceContinuity(const Handle_Geom_Surface &Surf1, const Standard_Real u1, const Standard_Real v1, const Handle_Geom_Surface &Surf2, const Standard_Real u2, const Standard_Real v2, const GeomAbs_Shape Order, const Standard_Real EpsNul=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC0=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC2=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsG1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Percent=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Maxlen=10000);
		%feature("autodoc", "1");
		LocalAnalysis_SurfaceContinuity(const Handle_Geom2d_Curve &curv1, const Handle_Geom2d_Curve &curv2, const Standard_Real U, const Handle_Geom_Surface &Surf1, const Handle_Geom_Surface &Surf2, const GeomAbs_Shape Order, const Standard_Real EpsNul=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC0=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC2=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsG1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Percent=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Maxlen=10000);
		%feature("autodoc", "1");
		LocalAnalysis_SurfaceContinuity(const Standard_Real EpsNul=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC0=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC2=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsG1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Percent=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Maxlen=10000);
		%feature("autodoc", "1");
		void ComputeAnalysis(GeomLProp_SLProps & Surf1, GeomLProp_SLProps & Surf2, const GeomAbs_Shape Order);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		GeomAbs_Shape ContinuityStatus() const;
		%feature("autodoc", "1");
		LocalAnalysis_StatusErrorType StatusError() const;
		%feature("autodoc", "1");
		Standard_Real C0Value() const;
		%feature("autodoc", "1");
		Standard_Real C1UAngle() const;
		%feature("autodoc", "1");
		Standard_Real C1URatio() const;
		%feature("autodoc", "1");
		Standard_Real C1VAngle() const;
		%feature("autodoc", "1");
		Standard_Real C1VRatio() const;
		%feature("autodoc", "1");
		Standard_Real C2UAngle() const;
		%feature("autodoc", "1");
		Standard_Real C2URatio() const;
		%feature("autodoc", "1");
		Standard_Real C2VAngle() const;
		%feature("autodoc", "1");
		Standard_Real C2VRatio() const;
		%feature("autodoc", "1");
		Standard_Real G1Angle() const;
		%feature("autodoc", "1");
		Standard_Real G2CurvatureGap() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC0() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsG1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsG2() const;

};
%extend LocalAnalysis_SurfaceContinuity {
	~LocalAnalysis_SurfaceContinuity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocalAnalysis_SurfaceContinuity\n");}
	}
};


%nodefaultctor LocalAnalysis;
class LocalAnalysis {
	public:
		%feature("autodoc", "1");
		LocalAnalysis();
		%feature("autodoc", "1");
		void Dump(const LocalAnalysis_SurfaceContinuity &surfconti, Standard_OStream & o);
		%feature("autodoc", "1");
		void Dump(const LocalAnalysis_CurveContinuity &curvconti, Standard_OStream & o);

};
%extend LocalAnalysis {
	~LocalAnalysis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocalAnalysis\n");}
	}
};


%nodefaultctor LocalAnalysis_CurveContinuity;
class LocalAnalysis_CurveContinuity {
	public:
		%feature("autodoc", "1");
		LocalAnalysis_CurveContinuity(const Handle_Geom_Curve &Curv1, const Standard_Real u1, const Handle_Geom_Curve &Curv2, const Standard_Real u2, const GeomAbs_Shape Order, const Standard_Real EpsNul=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC0=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC2=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsG1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsG2=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Percent=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Maxlen=10000);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		LocalAnalysis_StatusErrorType StatusError() const;
		%feature("autodoc", "1");
		GeomAbs_Shape ContinuityStatus() const;
		%feature("autodoc", "1");
		Standard_Real C0Value() const;
		%feature("autodoc", "1");
		Standard_Real C1Angle() const;
		%feature("autodoc", "1");
		Standard_Real C1Ratio() const;
		%feature("autodoc", "1");
		Standard_Real C2Angle() const;
		%feature("autodoc", "1");
		Standard_Real C2Ratio() const;
		%feature("autodoc", "1");
		Standard_Real G1Angle() const;
		%feature("autodoc", "1");
		Standard_Real G2Angle() const;
		%feature("autodoc", "1");
		Standard_Real G2CurvatureVariation() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC0() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsG1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsG2() const;

};
%extend LocalAnalysis_CurveContinuity {
	~LocalAnalysis_CurveContinuity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocalAnalysis_CurveContinuity\n");}
	}
};
