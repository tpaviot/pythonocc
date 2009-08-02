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
%module GccIter

%include GccIter_renames.i

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


%include GccIter_dependencies.i


%include GccIter_headers.i


enum GccIter_Type1 {
	GccIter_CuCuCu,
	GccIter_CiCuCu,
	GccIter_CiCiCu,
	GccIter_CiLiCu,
	GccIter_LiLiCu,
	GccIter_LiCuCu,
	};

enum GccIter_Type2 {
	GccIter_CuCuOnCu,
	GccIter_CiCuOnCu,
	GccIter_LiCuOnCu,
	GccIter_CuPtOnCu,
	GccIter_CuCuOnLi,
	GccIter_CiCuOnLi,
	GccIter_LiCuOnLi,
	GccIter_CuPtOnLi,
	GccIter_CuCuOnCi,
	GccIter_CiCuOnCi,
	GccIter_LiCuOnCi,
	GccIter_CuPtOnCi,
	};

enum GccIter_Type3 {
	GccIter_CuCu,
	GccIter_CiCu,
	};



%nodefaultctor Handle_GccIter_IsParallel;
class Handle_GccIter_IsParallel : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel();
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel(const Handle_GccIter_IsParallel &aHandle);
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel(const GccIter_IsParallel *anItem);
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel & operator=(const Handle_GccIter_IsParallel &aHandle);
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel & operator=(const GccIter_IsParallel *anItem);
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccIter_IsParallel {
	GccIter_IsParallel* GetObject() {
	return (GccIter_IsParallel*)$self->Access();
	}
};
%extend Handle_GccIter_IsParallel {
	~Handle_GccIter_IsParallel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GccIter_IsParallel\n");}
	}
};


%nodefaultctor GccIter_IsParallel;
class GccIter_IsParallel : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		GccIter_IsParallel();
		%feature("autodoc", "1");
		GccIter_IsParallel(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccIter_IsParallel {
	Handle_GccIter_IsParallel GetHandle() {
	return *(Handle_GccIter_IsParallel*) &$self;
	}
};
%extend GccIter_IsParallel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GccIter_IsParallel {
	~GccIter_IsParallel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccIter_IsParallel\n");}
	}
};
