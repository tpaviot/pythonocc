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
%module BlendFunc

%include BlendFunc_renames.i

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


%include BlendFunc_dependencies.i


%include BlendFunc_headers.i


enum BlendFunc_SectionShape {
	BlendFunc_Rational,
	BlendFunc_QuasiAngular,
	BlendFunc_Polynomial,
	BlendFunc_Linear,
	};



%nodefaultctor BlendFunc;
class BlendFunc {
	public:
		%feature("autodoc", "1");
		void GetShape(const BlendFunc_SectionShape SectShape, const Standard_Real MaxAng, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Convert_ParameterisationType & TypeConv);
		%feature("autodoc", "1");
		void GetMinimalWeights(const BlendFunc_SectionShape SectShape, const Convert_ParameterisationType TConv, const Standard_Real AngleMin, const Standard_Real AngleMax, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		GeomAbs_Shape NextShape(const GeomAbs_Shape S);

};
%extend BlendFunc {
	~BlendFunc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BlendFunc\n");}
	}
};


%nodefaultctor BlendFunc_Tensor;
class BlendFunc_Tensor {
	public:
		%feature("autodoc", "1");
		BlendFunc_Tensor(const Standard_Integer NbRow, const Standard_Integer NbCol, const Standard_Integer NbMat);
		%feature("autodoc", "1");
		void Init(const Standard_Real InitialValue);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat);
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat);
		%feature("autodoc", "1");
		void Multiply(const math_Vector &Right, math_Matrix & Product) const;

};
%extend BlendFunc_Tensor {
	~BlendFunc_Tensor() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BlendFunc_Tensor\n");}
	}
};
