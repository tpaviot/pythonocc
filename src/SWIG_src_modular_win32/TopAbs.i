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
%module TopAbs

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


%include TopAbs_dependencies.i


%include TopAbs_headers.i


enum TopAbs_ShapeEnum {
	TopAbs_COMPOUND,
	TopAbs_COMPSOLID,
	TopAbs_SOLID,
	TopAbs_SHELL,
	TopAbs_FACE,
	TopAbs_WIRE,
	TopAbs_EDGE,
	TopAbs_VERTEX,
	TopAbs_SHAPE,
	};

enum TopAbs_Orientation {
	TopAbs_FORWARD,
	TopAbs_REVERSED,
	TopAbs_INTERNAL,
	TopAbs_EXTERNAL,
	};

enum TopAbs_State {
	TopAbs_IN,
	TopAbs_OUT,
	TopAbs_ON,
	TopAbs_UNKNOWN,
	};



%nodefaultctor TopAbs;
class TopAbs {
	public:
		%feature("autodoc", "1");
		TopAbs();
		%feature("autodoc", "1");
		TopAbs_Orientation Compose(const TopAbs_Orientation Or1, const TopAbs_Orientation Or2);
		%feature("autodoc", "1");
		TopAbs_Orientation Reverse(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		TopAbs_Orientation Complement(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TopAbs_ShapeEnum SE, Standard_OStream & S);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TopAbs_Orientation Or, Standard_OStream & S);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TopAbs_State St, Standard_OStream & S);

};
%extend TopAbs {
	~TopAbs() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TopAbs\n");}
	}
};