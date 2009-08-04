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
%module XCAFDrivers

%include XCAFDrivers_renames.i

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


%include XCAFDrivers_dependencies.i


%include XCAFDrivers_headers.i




%nodefaultctor Handle_XCAFDrivers_DocumentRetrievalDriver;
class Handle_XCAFDrivers_DocumentRetrievalDriver : public Handle_MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver(const Handle_XCAFDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver(const XCAFDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver & operator=(const Handle_XCAFDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver & operator=(const XCAFDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDrivers_DocumentRetrievalDriver {
	XCAFDrivers_DocumentRetrievalDriver* GetObject() {
	return (XCAFDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_XCAFDrivers_DocumentRetrievalDriver {
	~Handle_XCAFDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDrivers_DocumentRetrievalDriver\n");}
	}
};


%nodefaultctor Handle_XCAFDrivers_DocumentStorageDriver;
class Handle_XCAFDrivers_DocumentStorageDriver : public Handle_MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver(const Handle_XCAFDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver(const XCAFDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver & operator=(const Handle_XCAFDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver & operator=(const XCAFDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDrivers_DocumentStorageDriver {
	XCAFDrivers_DocumentStorageDriver* GetObject() {
	return (XCAFDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_XCAFDrivers_DocumentStorageDriver {
	~Handle_XCAFDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor XCAFDrivers_DocumentRetrievalDriver;
class XCAFDrivers_DocumentRetrievalDriver : public MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		XCAFDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_MDF_ARDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDrivers_DocumentRetrievalDriver {
	Handle_XCAFDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_XCAFDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend XCAFDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDrivers_DocumentRetrievalDriver {
	~XCAFDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDrivers_DocumentRetrievalDriver\n");}
	}
};


%nodefaultctor XCAFDrivers_DocumentStorageDriver;
class XCAFDrivers_DocumentStorageDriver : public MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		XCAFDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		Handle_MDF_ASDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDrivers_DocumentStorageDriver {
	Handle_XCAFDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_XCAFDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend XCAFDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDrivers_DocumentStorageDriver {
	~XCAFDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor XCAFDrivers;
class XCAFDrivers {
	public:
		%feature("autodoc", "1");
		XCAFDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};
%extend XCAFDrivers {
	~XCAFDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDrivers\n");}
	}
};
