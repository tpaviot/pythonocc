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
%module StdDrivers

%include StdDrivers_renames.i

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


%include StdDrivers_dependencies.i


%include StdDrivers_headers.i




%nodefaultctor Handle_StdDrivers_DocumentStorageDriver;
class Handle_StdDrivers_DocumentStorageDriver : public Handle_MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver(const Handle_StdDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver(const StdDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver & operator=(const Handle_StdDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver & operator=(const StdDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdDrivers_DocumentStorageDriver {
	StdDrivers_DocumentStorageDriver* GetObject() {
	return (StdDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_StdDrivers_DocumentStorageDriver {
	~Handle_StdDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StdDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor Handle_StdDrivers_DocumentRetrievalDriver;
class Handle_StdDrivers_DocumentRetrievalDriver : public Handle_MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver(const Handle_StdDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver(const StdDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver & operator=(const Handle_StdDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver & operator=(const StdDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdDrivers_DocumentRetrievalDriver {
	StdDrivers_DocumentRetrievalDriver* GetObject() {
	return (StdDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_StdDrivers_DocumentRetrievalDriver {
	~Handle_StdDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StdDrivers_DocumentRetrievalDriver\n");}
	}
};


%nodefaultctor StdDrivers;
class StdDrivers {
	public:
		%feature("autodoc", "1");
		StdDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};
%extend StdDrivers {
	~StdDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StdDrivers\n");}
	}
};


%nodefaultctor StdDrivers_DocumentStorageDriver;
class StdDrivers_DocumentStorageDriver : public MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		StdDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		void Make(const Handle_CDM_Document &aDocument, PCDM_SequenceOfDocument & Documents);
		%feature("autodoc", "1");
		virtual		Handle_MDF_ASDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdDrivers_DocumentStorageDriver {
	Handle_StdDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_StdDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend StdDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StdDrivers_DocumentStorageDriver {
	~StdDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StdDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor StdDrivers_DocumentRetrievalDriver;
class StdDrivers_DocumentRetrievalDriver : public MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		StdDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_MDF_ARDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdDrivers_DocumentRetrievalDriver {
	Handle_StdDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_StdDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend StdDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StdDrivers_DocumentRetrievalDriver {
	~StdDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StdDrivers_DocumentRetrievalDriver\n");}
	}
};
