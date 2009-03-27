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
%module MMgt

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


%include MMgt_dependencies.i


%include MMgt_headers.i




%nodefaultctor Handle_MMgt_TShared;
class Handle_MMgt_TShared : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_MMgt_TShared();
		%feature("autodoc", "1");
		Handle_MMgt_TShared(const Handle_MMgt_TShared &aHandle);
		%feature("autodoc", "1");
		Handle_MMgt_TShared(const MMgt_TShared *anItem);
		%feature("autodoc", "1");
		Handle_MMgt_TShared const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MMgt_TShared {
	MMgt_TShared* GetObject() {
	return (MMgt_TShared*)$self->Access();
	}
};
%extend Handle_MMgt_TShared {
	~Handle_MMgt_TShared() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MMgt_TShared\n");}
	}
};

%nodefaultctor MMgt_TShared;
class MMgt_TShared : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		MMgt_TShared();
		%feature("autodoc", "1");
		virtual		void Delete() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MMgt_TShared {
	Handle_MMgt_TShared GetHandle() {
	return *(Handle_MMgt_TShared*) &$self;
	}
};
%extend MMgt_TShared {
	~MMgt_TShared() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MMgt_TShared\n");}
	}
};

%nodefaultctor MMgt_StackManager;
class MMgt_StackManager {
	public:
		%feature("autodoc", "1");
		MMgt_StackManager();
		%feature("autodoc", "1");
		Standard_Address Allocate(const Standard_Integer size);
		%feature("autodoc", "1");
		void Free(Standard_Address & aStack, const Standard_Integer aSize);
		%feature("autodoc", "1");
		MMgt_StackManager ShallowCopy() const;
		%feature("autodoc", "1");
		void ShallowDump(Standard_OStream & S) const;
		%feature("autodoc", "1");
		void Destructor();

};
%extend MMgt_StackManager {
	~MMgt_StackManager() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MMgt_StackManager\n");}
	}
};