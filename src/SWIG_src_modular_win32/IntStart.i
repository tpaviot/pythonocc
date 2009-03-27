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
%module IntStart

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
%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include IntStart_dependencies.i


%include IntStart_headers.i




%nodefaultctor Handle_IntStart_SITopolTool;
class Handle_IntStart_SITopolTool : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IntStart_SITopolTool();
		%feature("autodoc", "1");
		Handle_IntStart_SITopolTool(const Handle_IntStart_SITopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_IntStart_SITopolTool(const IntStart_SITopolTool *anItem);
		%feature("autodoc", "1");
		Handle_IntStart_SITopolTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntStart_SITopolTool {
	IntStart_SITopolTool* GetObject() {
	return (IntStart_SITopolTool*)$self->Access();
	}
};
%extend Handle_IntStart_SITopolTool {
	~Handle_IntStart_SITopolTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IntStart_SITopolTool\n");}
	}
};

%nodefaultctor IntStart_SITopolTool;
class IntStart_SITopolTool : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_State Classify(const gp_Pnt2d &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntStart_SITopolTool {
	Handle_IntStart_SITopolTool GetHandle() {
	return *(Handle_IntStart_SITopolTool*) &$self;
	}
};
%extend IntStart_SITopolTool {
	~IntStart_SITopolTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IntStart_SITopolTool\n");}
	}
};