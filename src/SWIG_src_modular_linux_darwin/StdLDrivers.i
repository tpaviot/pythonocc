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
%module StdLDrivers

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


%include StdLDrivers_dependencies.i


%include StdLDrivers_headers.i




%nodefaultctor Handle_StdLDrivers_DocumentStorageDriver;
class Handle_StdLDrivers_DocumentStorageDriver : public Handle_MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentStorageDriver(const Handle_StdLDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentStorageDriver(const StdLDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdLDrivers_DocumentStorageDriver {
	StdLDrivers_DocumentStorageDriver* GetObject() {
	return (StdLDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_StdLDrivers_DocumentStorageDriver {
	~Handle_StdLDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StdLDrivers_DocumentStorageDriver\n");}
	}
};

%nodefaultctor Handle_StdLDrivers_DocumentRetrievalDriver;
class Handle_StdLDrivers_DocumentRetrievalDriver : public Handle_MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentRetrievalDriver(const Handle_StdLDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentRetrievalDriver(const StdLDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdLDrivers_DocumentRetrievalDriver {
	StdLDrivers_DocumentRetrievalDriver* GetObject() {
	return (StdLDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_StdLDrivers_DocumentRetrievalDriver {
	~Handle_StdLDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StdLDrivers_DocumentRetrievalDriver\n");}
	}
};

%nodefaultctor StdLDrivers;
class StdLDrivers {
	public:
		%feature("autodoc", "1");
		StdLDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};
%extend StdLDrivers {
	~StdLDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StdLDrivers\n");}
	}
};

%nodefaultctor StdLDrivers_DocumentStorageDriver;
class StdLDrivers_DocumentStorageDriver : public MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		StdLDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		void Make(const Handle_CDM_Document &aDocument, PCDM_SequenceOfDocument & Documents);
		%feature("autodoc", "1");
		virtual		Handle_MDF_ASDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdLDrivers_DocumentStorageDriver {
	Handle_StdLDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_StdLDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend StdLDrivers_DocumentStorageDriver {
	~StdLDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StdLDrivers_DocumentStorageDriver\n");}
	}
};

%nodefaultctor StdLDrivers_DocumentRetrievalDriver;
class StdLDrivers_DocumentRetrievalDriver : public MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		StdLDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_MDF_ARDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdLDrivers_DocumentRetrievalDriver {
	Handle_StdLDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_StdLDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend StdLDrivers_DocumentRetrievalDriver {
	~StdLDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StdLDrivers_DocumentRetrievalDriver\n");}
	}
};