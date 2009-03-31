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
%module CSLib

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


%include CSLib_dependencies.i


%include CSLib_headers.i


enum CSLib_DerivativeStatus {
	CSLib_Done,
	CSLib_D1uIsNull,
	CSLib_D1vIsNull,
	CSLib_D1IsNull,
	CSLib_D1uD1vRatioIsNull,
	CSLib_D1vD1uRatioIsNull,
	CSLib_D1uIsParallelD1v,
	};

enum CSLib_NormalStatus {
	CSLib_Singular,
	CSLib_Defined,
	CSLib_InfinityOfSolutions,
	CSLib_D1NuIsNull,
	CSLib_D1NvIsNull,
	CSLib_D1NIsNull,
	CSLib_D1NuNvRatioIsNull,
	CSLib_D1NvNuRatioIsNull,
	CSLib_D1NuIsParallelD1Nv,
	};



%nodefaultctor CSLib;
class CSLib {
	public:
		%feature("autodoc", "1");
		CSLib();
		%feature("autodoc", "1");
		void Normal(const gp_Vec &D1U, const gp_Vec &D1V, const Standard_Real SinTol, CSLib_DerivativeStatus & Status, gp_Dir & Normal);
		%feature("autodoc", "1");
		void Normal(const gp_Vec &D1U, const gp_Vec &D1V, const gp_Vec &D2U, const gp_Vec &D2V, const gp_Vec &D2UV, const Standard_Real SinTol, Standard_Boolean & Done, CSLib_NormalStatus & Status, gp_Dir & Normal);
		%feature("autodoc", "1");
		void Normal(const gp_Vec &D1U, const gp_Vec &D1V, const Standard_Real MagTol, CSLib_NormalStatus & Status, gp_Dir & Normal);
		%feature("autodoc", "1");
		void Normal(const Standard_Integer MaxOrder, const TColgp_Array2OfVec &DerNUV, const Standard_Real MagTol, const Standard_Real U, const Standard_Real V, const Standard_Real Umin, const Standard_Real Umax, const Standard_Real Vmin, const Standard_Real Vmax, CSLib_NormalStatus & Status, gp_Dir & Normal, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		gp_Vec DNNUV(const Standard_Integer Nu, const Standard_Integer Nv, const TColgp_Array2OfVec &DerSurf);
		%feature("autodoc", "1");
		gp_Vec DNNUV(const Standard_Integer Nu, const Standard_Integer Nv, const TColgp_Array2OfVec &DerSurf1, const TColgp_Array2OfVec &DerSurf2);
		%feature("autodoc", "1");
		gp_Vec DNNormal(const Standard_Integer Nu, const Standard_Integer Nv, const TColgp_Array2OfVec &DerNUV, const Standard_Integer Iduref=0, const Standard_Integer Idvref=0);

};
%extend CSLib {
	~CSLib() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CSLib\n");}
	}
};

%nodefaultctor CSLib_Class2d;
class CSLib_Class2d {
	public:
		%feature("autodoc", "1");
		CSLib_Class2d(const TColgp_Array1OfPnt2d &TP, const Standard_Real aTolu, const Standard_Real aTolv, const Standard_Real umin, const Standard_Real vmin, const Standard_Real umax, const Standard_Real vmax);
		%feature("autodoc", "1");
		Standard_Integer SiDans(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		Standard_Integer SiDans_OnMode(const gp_Pnt2d &P, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		Standard_Integer InternalSiDans(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		Standard_Integer InternalSiDansOuOn(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		const CSLib_Class2d & Copy(const CSLib_Class2d &Other) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend CSLib_Class2d {
	~CSLib_Class2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CSLib_Class2d\n");}
	}
};

%nodefaultctor CSLib_NormalPolyDef;
class CSLib_NormalPolyDef : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		CSLib_NormalPolyDef(const Standard_Integer k0, const TColStd_Array1OfReal &li);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%extend CSLib_NormalPolyDef {
	~CSLib_NormalPolyDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CSLib_NormalPolyDef\n");}
	}
};