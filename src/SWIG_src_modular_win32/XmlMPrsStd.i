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
%module XmlMPrsStd

%include XmlMPrsStd_renames.i

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


%include XmlMPrsStd_dependencies.i


%include XmlMPrsStd_headers.i




%nodefaultctor Handle_XmlMPrsStd_PositionDriver;
class Handle_XmlMPrsStd_PositionDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver();
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver(const Handle_XmlMPrsStd_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver(const XmlMPrsStd_PositionDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver & operator=(const Handle_XmlMPrsStd_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver & operator=(const XmlMPrsStd_PositionDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMPrsStd_PositionDriver {
	XmlMPrsStd_PositionDriver* GetObject() {
	return (XmlMPrsStd_PositionDriver*)$self->Access();
	}
};
%extend Handle_XmlMPrsStd_PositionDriver {
	~Handle_XmlMPrsStd_PositionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMPrsStd_PositionDriver\n");}
	}
};


%nodefaultctor Handle_XmlMPrsStd_AISPresentationDriver;
class Handle_XmlMPrsStd_AISPresentationDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver();
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver(const Handle_XmlMPrsStd_AISPresentationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver(const XmlMPrsStd_AISPresentationDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver & operator=(const Handle_XmlMPrsStd_AISPresentationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver & operator=(const XmlMPrsStd_AISPresentationDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMPrsStd_AISPresentationDriver {
	XmlMPrsStd_AISPresentationDriver* GetObject() {
	return (XmlMPrsStd_AISPresentationDriver*)$self->Access();
	}
};
%extend Handle_XmlMPrsStd_AISPresentationDriver {
	~Handle_XmlMPrsStd_AISPresentationDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMPrsStd_AISPresentationDriver\n");}
	}
};


%nodefaultctor XmlMPrsStd;
class XmlMPrsStd {
	public:
		%feature("autodoc", "1");
		XmlMPrsStd();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

};
%extend XmlMPrsStd {
	~XmlMPrsStd() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMPrsStd\n");}
	}
};


%nodefaultctor XmlMPrsStd_AISPresentationDriver;
class XmlMPrsStd_AISPresentationDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMPrsStd_AISPresentationDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMPrsStd_AISPresentationDriver {
	Handle_XmlMPrsStd_AISPresentationDriver GetHandle() {
	return *(Handle_XmlMPrsStd_AISPresentationDriver*) &$self;
	}
};
%extend XmlMPrsStd_AISPresentationDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMPrsStd_AISPresentationDriver {
	~XmlMPrsStd_AISPresentationDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMPrsStd_AISPresentationDriver\n");}
	}
};


%nodefaultctor XmlMPrsStd_PositionDriver;
class XmlMPrsStd_PositionDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMPrsStd_PositionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMPrsStd_PositionDriver {
	Handle_XmlMPrsStd_PositionDriver GetHandle() {
	return *(Handle_XmlMPrsStd_PositionDriver*) &$self;
	}
};
%extend XmlMPrsStd_PositionDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMPrsStd_PositionDriver {
	~XmlMPrsStd_PositionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMPrsStd_PositionDriver\n");}
	}
};
