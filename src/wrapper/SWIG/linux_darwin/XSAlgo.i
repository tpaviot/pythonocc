/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module XSAlgo

%include XSAlgo_renames.i

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

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include XSAlgo_dependencies.i


%include XSAlgo_headers.i


enum XSAlgo_Caller {
	XSAlgo_DEFAULT,
	XSAlgo_IGES,
	XSAlgo_STEP,
	};



%nodefaultctor Handle_XSAlgo_ToolContainer;
class Handle_XSAlgo_ToolContainer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer();
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer(const Handle_XSAlgo_ToolContainer &aHandle);
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer(const XSAlgo_ToolContainer *anItem);
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer & operator=(const Handle_XSAlgo_ToolContainer &aHandle);
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer & operator=(const XSAlgo_ToolContainer *anItem);
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSAlgo_ToolContainer {
	XSAlgo_ToolContainer* GetObject() {
	return (XSAlgo_ToolContainer*)$self->Access();
	}
};
%extend Handle_XSAlgo_ToolContainer {
	~Handle_XSAlgo_ToolContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XSAlgo_ToolContainer\n");}
	}
};


%nodefaultctor Handle_XSAlgo_AlgoContainer;
class Handle_XSAlgo_AlgoContainer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer();
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer(const Handle_XSAlgo_AlgoContainer &aHandle);
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer(const XSAlgo_AlgoContainer *anItem);
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer & operator=(const Handle_XSAlgo_AlgoContainer &aHandle);
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer & operator=(const XSAlgo_AlgoContainer *anItem);
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSAlgo_AlgoContainer {
	XSAlgo_AlgoContainer* GetObject() {
	return (XSAlgo_AlgoContainer*)$self->Access();
	}
};
%extend Handle_XSAlgo_AlgoContainer {
	~Handle_XSAlgo_AlgoContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XSAlgo_AlgoContainer\n");}
	}
};


%nodefaultctor XSAlgo;
class XSAlgo {
	public:
		%feature("autodoc", "1");
		XSAlgo();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void SetAlgoContainer(const Handle_XSAlgo_AlgoContainer &aContainer);
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer AlgoContainer();

};
%extend XSAlgo {
	~XSAlgo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XSAlgo\n");}
	}
};


%nodefaultctor XSAlgo_ToolContainer;
class XSAlgo_ToolContainer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		XSAlgo_ToolContainer();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSAlgo_ToolContainer {
	Handle_XSAlgo_ToolContainer GetHandle() {
	return *(Handle_XSAlgo_ToolContainer*) &$self;
	}
};
%extend XSAlgo_ToolContainer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XSAlgo_ToolContainer {
	~XSAlgo_ToolContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XSAlgo_ToolContainer\n");}
	}
};
