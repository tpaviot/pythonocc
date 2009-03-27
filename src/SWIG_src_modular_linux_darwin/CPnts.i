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
%module CPnts

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


%include CPnts_dependencies.i


%include CPnts_headers.i




%nodefaultctor CPnts_UniformDeflection;
class CPnts_UniformDeflection {
	public:
		%feature("autodoc", "1");
		CPnts_UniformDeflection();
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		Standard_Boolean IsAllDone() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		gp_Pnt Point() const;

};
%extend CPnts_UniformDeflection {
	~CPnts_UniformDeflection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of CPnts_UniformDeflection\n");}
	}
};

%nodefaultctor CPnts_MyGaussFunction;
class CPnts_MyGaussFunction : public math_Function {
	public:
		%feature("autodoc", "1");
		CPnts_MyGaussFunction();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);

};
%extend CPnts_MyGaussFunction {
	~CPnts_MyGaussFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of CPnts_MyGaussFunction\n");}
	}
};

%nodefaultctor CPnts_AbscissaPoint;
class CPnts_AbscissaPoint {
	public:
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor3d_Curve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor2d_Curve2d &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint();
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor3d_Curve &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Resolution);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor2d_Curve2d &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Resolution);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor3d_Curve &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor2d_Curve2d &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void AdvPerform(const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real P);

};
%extend CPnts_AbscissaPoint {
	~CPnts_AbscissaPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of CPnts_AbscissaPoint\n");}
	}
};

%nodefaultctor CPnts_MyRootFunction;
class CPnts_MyRootFunction : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		CPnts_MyRootFunction();
		%feature("autodoc", "1");
		void Init(const Standard_Real X0, const Standard_Real L);
		%feature("autodoc", "1");
		void Init(const Standard_Real X0, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%extend CPnts_MyRootFunction {
	~CPnts_MyRootFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of CPnts_MyRootFunction\n");}
	}
};