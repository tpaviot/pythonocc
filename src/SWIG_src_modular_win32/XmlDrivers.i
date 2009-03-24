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
%module XmlDrivers

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
%{#include <cstdlib>%}
%{#include <iostream>%}
%{#include <string>%}
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


%include XmlDrivers_dependencies.i


%include XmlDrivers_headers.i




%nodefaultctor Handle_XmlDrivers_DocumentStorageDriver;
class Handle_XmlDrivers_DocumentStorageDriver : public Handle_XmlLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentStorageDriver(const Handle_XmlDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentStorageDriver(const XmlDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlDrivers_DocumentStorageDriver {
	XmlDrivers_DocumentStorageDriver* GetObject() {
	return (XmlDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_XmlDrivers_DocumentStorageDriver {
	~Handle_XmlDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_XmlDrivers_DocumentStorageDriver\n");}
	}
};

%nodefaultctor Handle_XmlDrivers_DocumentRetrievalDriver;
class Handle_XmlDrivers_DocumentRetrievalDriver : public Handle_XmlLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentRetrievalDriver(const Handle_XmlDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentRetrievalDriver(const XmlDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlDrivers_DocumentRetrievalDriver {
	XmlDrivers_DocumentRetrievalDriver* GetObject() {
	return (XmlDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_XmlDrivers_DocumentRetrievalDriver {
	~Handle_XmlDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_XmlDrivers_DocumentRetrievalDriver\n");}
	}
};

%nodefaultctor XmlDrivers_DocumentStorageDriver;
class XmlDrivers_DocumentStorageDriver : public XmlLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		XmlDrivers_DocumentStorageDriver(const TCollection_ExtendedString &theCopyright);
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlDrivers_DocumentStorageDriver {
	Handle_XmlDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_XmlDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend XmlDrivers_DocumentStorageDriver {
	~XmlDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlDrivers_DocumentStorageDriver\n");}
	}
};

%nodefaultctor XmlDrivers;
class XmlDrivers {
	public:
		%feature("autodoc", "1");
		XmlDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &theGUID);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);

};
%extend XmlDrivers {
	~XmlDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlDrivers\n");}
	}
};

%nodefaultctor XmlDrivers_DocumentRetrievalDriver;
class XmlDrivers_DocumentRetrievalDriver : public XmlLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		XmlDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlDrivers_DocumentRetrievalDriver {
	Handle_XmlDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_XmlDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend XmlDrivers_DocumentRetrievalDriver {
	~XmlDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlDrivers_DocumentRetrievalDriver\n");}
	}
};