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
%module XmlXCAFDrivers

%include XmlXCAFDrivers_renames.i

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


%include XmlXCAFDrivers_dependencies.i


%include XmlXCAFDrivers_headers.i




%nodefaultctor Handle_XmlXCAFDrivers_DocumentRetrievalDriver;
class Handle_XmlXCAFDrivers_DocumentRetrievalDriver : public Handle_XmlDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver(const Handle_XmlXCAFDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver(const XmlXCAFDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver & operator=(const Handle_XmlXCAFDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver & operator=(const XmlXCAFDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlXCAFDrivers_DocumentRetrievalDriver {
	XmlXCAFDrivers_DocumentRetrievalDriver* GetObject() {
	return (XmlXCAFDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_XmlXCAFDrivers_DocumentRetrievalDriver {
	~Handle_XmlXCAFDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlXCAFDrivers_DocumentRetrievalDriver\n");}
	}
};


%nodefaultctor Handle_XmlXCAFDrivers_DocumentStorageDriver;
class Handle_XmlXCAFDrivers_DocumentStorageDriver : public Handle_XmlDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver(const Handle_XmlXCAFDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver(const XmlXCAFDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver & operator=(const Handle_XmlXCAFDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver & operator=(const XmlXCAFDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlXCAFDrivers_DocumentStorageDriver {
	XmlXCAFDrivers_DocumentStorageDriver* GetObject() {
	return (XmlXCAFDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_XmlXCAFDrivers_DocumentStorageDriver {
	~Handle_XmlXCAFDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlXCAFDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor XmlXCAFDrivers_DocumentRetrievalDriver;
class XmlXCAFDrivers_DocumentRetrievalDriver : public XmlDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		XmlXCAFDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlXCAFDrivers_DocumentRetrievalDriver {
	Handle_XmlXCAFDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_XmlXCAFDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend XmlXCAFDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlXCAFDrivers_DocumentRetrievalDriver {
	~XmlXCAFDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlXCAFDrivers_DocumentRetrievalDriver\n");}
	}
};


%nodefaultctor XmlXCAFDrivers_DocumentStorageDriver;
class XmlXCAFDrivers_DocumentStorageDriver : public XmlDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		XmlXCAFDrivers_DocumentStorageDriver(const TCollection_ExtendedString &theCopyright);
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlXCAFDrivers_DocumentStorageDriver {
	Handle_XmlXCAFDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_XmlXCAFDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend XmlXCAFDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlXCAFDrivers_DocumentStorageDriver {
	~XmlXCAFDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlXCAFDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor XmlXCAFDrivers;
class XmlXCAFDrivers {
	public:
		%feature("autodoc", "1");
		XmlXCAFDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};
%extend XmlXCAFDrivers {
	~XmlXCAFDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlXCAFDrivers\n");}
	}
};
