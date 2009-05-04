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
%module AppCont

%include AppCont_renames.i

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


%include AppCont_dependencies.i


%include AppCont_headers.i




%nodefaultctor AppCont_FitFunction;
class AppCont_FitFunction {
	public:
		%feature("autodoc", "1");
		AppCont_FitFunction(const AppCont_Function &SSP, const Standard_Real U0, const Standard_Real U1, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer Deg, const Standard_Integer NbPoints=24);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value();
		%feature("autodoc", "1");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%extend AppCont_FitFunction {
	~AppCont_FitFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_FitFunction\n");}
	}
};


%nodefaultctor AppCont_FunctionTool2d;
class AppCont_FunctionTool2d {
	public:
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbP2d(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbP3d(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		void Value(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfPnt2d & tabPt);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfVec2d & tabV);
		%feature("autodoc", "1");
		void Value(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt2d);
		%feature("autodoc", "1");
		void Value(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfVec & tabV2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d);

};
%extend AppCont_FunctionTool2d {
	~AppCont_FunctionTool2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_FunctionTool2d\n");}
	}
};


%nodefaultctor AppCont_Function;
class AppCont_Function {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;

};
%extend AppCont_Function {
	~AppCont_Function() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_Function\n");}
	}
};


%nodefaultctor AppCont_FunctionTool;
class AppCont_FunctionTool {
	public:
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const AppCont_Function &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const AppCont_Function &C);
		%feature("autodoc", "1");
		Standard_Integer NbP2d(const AppCont_Function &C);
		%feature("autodoc", "1");
		Standard_Integer NbP3d(const AppCont_Function &C);
		%feature("autodoc", "1");
		void Value(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfVec & tabV);
		%feature("autodoc", "1");
		void Value(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		void Value(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfVec2d & tabV2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d);

};
%extend AppCont_FunctionTool {
	~AppCont_FunctionTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_FunctionTool\n");}
	}
};


%nodefaultctor AppCont_Function2d;
class AppCont_Function2d {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;

};
%extend AppCont_Function2d {
	~AppCont_Function2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_Function2d\n");}
	}
};


%nodefaultctor AppCont_FitFunction2d;
class AppCont_FitFunction2d {
	public:
		%feature("autodoc", "1");
		AppCont_FitFunction2d(const AppCont_Function2d &SSP, const Standard_Real U0, const Standard_Real U1, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer Deg, const Standard_Integer NbPoints=24);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value();
		%feature("autodoc", "1");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%extend AppCont_FitFunction2d {
	~AppCont_FitFunction2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_FitFunction2d\n");}
	}
};
