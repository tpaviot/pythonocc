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
%module XmlTObjDrivers

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


%include XmlTObjDrivers_dependencies.i


%include XmlTObjDrivers_headers.i




%nodefaultctor Handle_XmlTObjDrivers_XYZDriver;
class Handle_XmlTObjDrivers_XYZDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_XYZDriver();
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_XYZDriver(const Handle_XmlTObjDrivers_XYZDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_XYZDriver(const XmlTObjDrivers_XYZDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_XYZDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlTObjDrivers_XYZDriver {
	XmlTObjDrivers_XYZDriver* GetObject() {
	return (XmlTObjDrivers_XYZDriver*)$self->Access();
	}
};
%extend Handle_XmlTObjDrivers_XYZDriver {
	~Handle_XmlTObjDrivers_XYZDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_XmlTObjDrivers_XYZDriver\n");}
	}
};

%nodefaultctor Handle_XmlTObjDrivers_DocumentStorageDriver;
class Handle_XmlTObjDrivers_DocumentStorageDriver : public Handle_XmlLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_DocumentStorageDriver(const Handle_XmlTObjDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_DocumentStorageDriver(const XmlTObjDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlTObjDrivers_DocumentStorageDriver {
	XmlTObjDrivers_DocumentStorageDriver* GetObject() {
	return (XmlTObjDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_XmlTObjDrivers_DocumentStorageDriver {
	~Handle_XmlTObjDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_XmlTObjDrivers_DocumentStorageDriver\n");}
	}
};

%nodefaultctor Handle_XmlTObjDrivers_DocumentRetrievalDriver;
class Handle_XmlTObjDrivers_DocumentRetrievalDriver : public Handle_XmlLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_DocumentRetrievalDriver(const Handle_XmlTObjDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_DocumentRetrievalDriver(const XmlTObjDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlTObjDrivers_DocumentRetrievalDriver {
	XmlTObjDrivers_DocumentRetrievalDriver* GetObject() {
	return (XmlTObjDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_XmlTObjDrivers_DocumentRetrievalDriver {
	~Handle_XmlTObjDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_XmlTObjDrivers_DocumentRetrievalDriver\n");}
	}
};

%nodefaultctor Handle_XmlTObjDrivers_ObjectDriver;
class Handle_XmlTObjDrivers_ObjectDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ObjectDriver();
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ObjectDriver(const Handle_XmlTObjDrivers_ObjectDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ObjectDriver(const XmlTObjDrivers_ObjectDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ObjectDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlTObjDrivers_ObjectDriver {
	XmlTObjDrivers_ObjectDriver* GetObject() {
	return (XmlTObjDrivers_ObjectDriver*)$self->Access();
	}
};
%extend Handle_XmlTObjDrivers_ObjectDriver {
	~Handle_XmlTObjDrivers_ObjectDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_XmlTObjDrivers_ObjectDriver\n");}
	}
};

%nodefaultctor Handle_XmlTObjDrivers_ReferenceDriver;
class Handle_XmlTObjDrivers_ReferenceDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ReferenceDriver();
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ReferenceDriver(const Handle_XmlTObjDrivers_ReferenceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ReferenceDriver(const XmlTObjDrivers_ReferenceDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ReferenceDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlTObjDrivers_ReferenceDriver {
	XmlTObjDrivers_ReferenceDriver* GetObject() {
	return (XmlTObjDrivers_ReferenceDriver*)$self->Access();
	}
};
%extend Handle_XmlTObjDrivers_ReferenceDriver {
	~Handle_XmlTObjDrivers_ReferenceDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_XmlTObjDrivers_ReferenceDriver\n");}
	}
};

%nodefaultctor Handle_XmlTObjDrivers_IntSparseArrayDriver;
class Handle_XmlTObjDrivers_IntSparseArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_IntSparseArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_IntSparseArrayDriver(const Handle_XmlTObjDrivers_IntSparseArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_IntSparseArrayDriver(const XmlTObjDrivers_IntSparseArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_IntSparseArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlTObjDrivers_IntSparseArrayDriver {
	XmlTObjDrivers_IntSparseArrayDriver* GetObject() {
	return (XmlTObjDrivers_IntSparseArrayDriver*)$self->Access();
	}
};
%extend Handle_XmlTObjDrivers_IntSparseArrayDriver {
	~Handle_XmlTObjDrivers_IntSparseArrayDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_XmlTObjDrivers_IntSparseArrayDriver\n");}
	}
};

%nodefaultctor Handle_XmlTObjDrivers_ModelDriver;
class Handle_XmlTObjDrivers_ModelDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ModelDriver();
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ModelDriver(const Handle_XmlTObjDrivers_ModelDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ModelDriver(const XmlTObjDrivers_ModelDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlTObjDrivers_ModelDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlTObjDrivers_ModelDriver {
	XmlTObjDrivers_ModelDriver* GetObject() {
	return (XmlTObjDrivers_ModelDriver*)$self->Access();
	}
};
%extend Handle_XmlTObjDrivers_ModelDriver {
	~Handle_XmlTObjDrivers_ModelDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_XmlTObjDrivers_ModelDriver\n");}
	}
};

%nodefaultctor XmlTObjDrivers_IntSparseArrayDriver;
class XmlTObjDrivers_IntSparseArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlTObjDrivers_IntSparseArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, XmlObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, XmlObjMgt_Persistent & theTarget, XmlObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlTObjDrivers_IntSparseArrayDriver {
	Handle_XmlTObjDrivers_IntSparseArrayDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_IntSparseArrayDriver*) &$self;
	}
};
%extend XmlTObjDrivers_IntSparseArrayDriver {
	~XmlTObjDrivers_IntSparseArrayDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlTObjDrivers_IntSparseArrayDriver\n");}
	}
};

%nodefaultctor XmlTObjDrivers_DocumentRetrievalDriver;
class XmlTObjDrivers_DocumentRetrievalDriver : public XmlLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		XmlTObjDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlTObjDrivers_DocumentRetrievalDriver {
	Handle_XmlTObjDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend XmlTObjDrivers_DocumentRetrievalDriver {
	~XmlTObjDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlTObjDrivers_DocumentRetrievalDriver\n");}
	}
};

%nodefaultctor XmlTObjDrivers_XYZDriver;
class XmlTObjDrivers_XYZDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlTObjDrivers_XYZDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlTObjDrivers_XYZDriver {
	Handle_XmlTObjDrivers_XYZDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_XYZDriver*) &$self;
	}
};
%extend XmlTObjDrivers_XYZDriver {
	~XmlTObjDrivers_XYZDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlTObjDrivers_XYZDriver\n");}
	}
};

%nodefaultctor XmlTObjDrivers_ReferenceDriver;
class XmlTObjDrivers_ReferenceDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlTObjDrivers_ReferenceDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlTObjDrivers_ReferenceDriver {
	Handle_XmlTObjDrivers_ReferenceDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_ReferenceDriver*) &$self;
	}
};
%extend XmlTObjDrivers_ReferenceDriver {
	~XmlTObjDrivers_ReferenceDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlTObjDrivers_ReferenceDriver\n");}
	}
};

%nodefaultctor XmlTObjDrivers_DocumentStorageDriver;
class XmlTObjDrivers_DocumentStorageDriver : public XmlLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		XmlTObjDrivers_DocumentStorageDriver(const TCollection_ExtendedString &theCopyright);
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlTObjDrivers_DocumentStorageDriver {
	Handle_XmlTObjDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend XmlTObjDrivers_DocumentStorageDriver {
	~XmlTObjDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlTObjDrivers_DocumentStorageDriver\n");}
	}
};

%nodefaultctor XmlTObjDrivers_ModelDriver;
class XmlTObjDrivers_ModelDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlTObjDrivers_ModelDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlTObjDrivers_ModelDriver {
	Handle_XmlTObjDrivers_ModelDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_ModelDriver*) &$self;
	}
};
%extend XmlTObjDrivers_ModelDriver {
	~XmlTObjDrivers_ModelDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlTObjDrivers_ModelDriver\n");}
	}
};

%nodefaultctor XmlTObjDrivers_ObjectDriver;
class XmlTObjDrivers_ObjectDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlTObjDrivers_ObjectDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlTObjDrivers_ObjectDriver {
	Handle_XmlTObjDrivers_ObjectDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_ObjectDriver*) &$self;
	}
};
%extend XmlTObjDrivers_ObjectDriver {
	~XmlTObjDrivers_ObjectDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlTObjDrivers_ObjectDriver\n");}
	}
};

%nodefaultctor XmlTObjDrivers;
class XmlTObjDrivers {
	public:
		%feature("autodoc", "1");
		XmlTObjDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);
		%feature("autodoc", "1");
		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &anMsgDrv);

};
%extend XmlTObjDrivers {
	~XmlTObjDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of XmlTObjDrivers\n");}
	}
};