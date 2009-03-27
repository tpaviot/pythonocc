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
%module BinDrivers

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


%include BinDrivers_dependencies.i


%include BinDrivers_headers.i


enum BinDrivers_Marker {
	BinDrivers_ENDATTRLIST,
	BinDrivers_ENDLABEL,
	};



%nodefaultctor Handle_BinDrivers_DocumentRetrievalDriver;
class Handle_BinDrivers_DocumentRetrievalDriver : public Handle_BinLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver(const Handle_BinDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver(const BinDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinDrivers_DocumentRetrievalDriver {
	BinDrivers_DocumentRetrievalDriver* GetObject() {
	return (BinDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_BinDrivers_DocumentRetrievalDriver {
	~Handle_BinDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_BinDrivers_DocumentRetrievalDriver\n");}
	}
};

%nodefaultctor Handle_BinDrivers_DocumentStorageDriver;
class Handle_BinDrivers_DocumentStorageDriver : public Handle_BinLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver(const Handle_BinDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver(const BinDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinDrivers_DocumentStorageDriver {
	BinDrivers_DocumentStorageDriver* GetObject() {
	return (BinDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_BinDrivers_DocumentStorageDriver {
	~Handle_BinDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_BinDrivers_DocumentStorageDriver\n");}
	}
};

%nodefaultctor BinDrivers_DocumentStorageDriver;
class BinDrivers_DocumentStorageDriver : public BinLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		BinDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinDrivers_DocumentStorageDriver {
	Handle_BinDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_BinDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend BinDrivers_DocumentStorageDriver {
	~BinDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BinDrivers_DocumentStorageDriver\n");}
	}
};

%nodefaultctor BinDrivers;
class BinDrivers {
	public:
		%feature("autodoc", "1");
		BinDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &theGUID);
		%feature("autodoc", "1");
		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &MsgDrv);
		%feature("autodoc", "1");
		TCollection_AsciiString StorageVersion();

};
%extend BinDrivers {
	~BinDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BinDrivers\n");}
	}
};

%nodefaultctor BinDrivers_DocumentRetrievalDriver;
class BinDrivers_DocumentRetrievalDriver : public BinLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		BinDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinDrivers_DocumentRetrievalDriver {
	Handle_BinDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_BinDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend BinDrivers_DocumentRetrievalDriver {
	~BinDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BinDrivers_DocumentRetrievalDriver\n");}
	}
};