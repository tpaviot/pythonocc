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
%module XmlMXCAFDoc

%include XmlMXCAFDoc_renames.i

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


%include XmlMXCAFDoc_dependencies.i


%include XmlMXCAFDoc_headers.i




%nodefaultctor Handle_XmlMXCAFDoc_LocationDriver;
class Handle_XmlMXCAFDoc_LocationDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_LocationDriver();
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_LocationDriver(const Handle_XmlMXCAFDoc_LocationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_LocationDriver(const XmlMXCAFDoc_LocationDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_LocationDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMXCAFDoc_LocationDriver {
	XmlMXCAFDoc_LocationDriver* GetObject() {
	return (XmlMXCAFDoc_LocationDriver*)$self->Access();
	}
};
%extend Handle_XmlMXCAFDoc_LocationDriver {
	~Handle_XmlMXCAFDoc_LocationDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMXCAFDoc_LocationDriver\n");}
	}
};


%nodefaultctor Handle_XmlMXCAFDoc_ColorToolDriver;
class Handle_XmlMXCAFDoc_ColorToolDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ColorToolDriver();
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ColorToolDriver(const Handle_XmlMXCAFDoc_ColorToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ColorToolDriver(const XmlMXCAFDoc_ColorToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ColorToolDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMXCAFDoc_ColorToolDriver {
	XmlMXCAFDoc_ColorToolDriver* GetObject() {
	return (XmlMXCAFDoc_ColorToolDriver*)$self->Access();
	}
};
%extend Handle_XmlMXCAFDoc_ColorToolDriver {
	~Handle_XmlMXCAFDoc_ColorToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMXCAFDoc_ColorToolDriver\n");}
	}
};


%nodefaultctor Handle_XmlMXCAFDoc_CentroidDriver;
class Handle_XmlMXCAFDoc_CentroidDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_CentroidDriver();
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_CentroidDriver(const Handle_XmlMXCAFDoc_CentroidDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_CentroidDriver(const XmlMXCAFDoc_CentroidDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_CentroidDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMXCAFDoc_CentroidDriver {
	XmlMXCAFDoc_CentroidDriver* GetObject() {
	return (XmlMXCAFDoc_CentroidDriver*)$self->Access();
	}
};
%extend Handle_XmlMXCAFDoc_CentroidDriver {
	~Handle_XmlMXCAFDoc_CentroidDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMXCAFDoc_CentroidDriver\n");}
	}
};


%nodefaultctor Handle_XmlMXCAFDoc_VolumeDriver;
class Handle_XmlMXCAFDoc_VolumeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_VolumeDriver();
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_VolumeDriver(const Handle_XmlMXCAFDoc_VolumeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_VolumeDriver(const XmlMXCAFDoc_VolumeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_VolumeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMXCAFDoc_VolumeDriver {
	XmlMXCAFDoc_VolumeDriver* GetObject() {
	return (XmlMXCAFDoc_VolumeDriver*)$self->Access();
	}
};
%extend Handle_XmlMXCAFDoc_VolumeDriver {
	~Handle_XmlMXCAFDoc_VolumeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMXCAFDoc_VolumeDriver\n");}
	}
};


%nodefaultctor Handle_XmlMXCAFDoc_DocumentToolDriver;
class Handle_XmlMXCAFDoc_DocumentToolDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_DocumentToolDriver();
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_DocumentToolDriver(const Handle_XmlMXCAFDoc_DocumentToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_DocumentToolDriver(const XmlMXCAFDoc_DocumentToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_DocumentToolDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMXCAFDoc_DocumentToolDriver {
	XmlMXCAFDoc_DocumentToolDriver* GetObject() {
	return (XmlMXCAFDoc_DocumentToolDriver*)$self->Access();
	}
};
%extend Handle_XmlMXCAFDoc_DocumentToolDriver {
	~Handle_XmlMXCAFDoc_DocumentToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMXCAFDoc_DocumentToolDriver\n");}
	}
};


%nodefaultctor Handle_XmlMXCAFDoc_ColorDriver;
class Handle_XmlMXCAFDoc_ColorDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ColorDriver();
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ColorDriver(const Handle_XmlMXCAFDoc_ColorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ColorDriver(const XmlMXCAFDoc_ColorDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ColorDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMXCAFDoc_ColorDriver {
	XmlMXCAFDoc_ColorDriver* GetObject() {
	return (XmlMXCAFDoc_ColorDriver*)$self->Access();
	}
};
%extend Handle_XmlMXCAFDoc_ColorDriver {
	~Handle_XmlMXCAFDoc_ColorDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMXCAFDoc_ColorDriver\n");}
	}
};


%nodefaultctor Handle_XmlMXCAFDoc_GraphNodeDriver;
class Handle_XmlMXCAFDoc_GraphNodeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_GraphNodeDriver();
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_GraphNodeDriver(const Handle_XmlMXCAFDoc_GraphNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_GraphNodeDriver(const XmlMXCAFDoc_GraphNodeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_GraphNodeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMXCAFDoc_GraphNodeDriver {
	XmlMXCAFDoc_GraphNodeDriver* GetObject() {
	return (XmlMXCAFDoc_GraphNodeDriver*)$self->Access();
	}
};
%extend Handle_XmlMXCAFDoc_GraphNodeDriver {
	~Handle_XmlMXCAFDoc_GraphNodeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMXCAFDoc_GraphNodeDriver\n");}
	}
};


%nodefaultctor Handle_XmlMXCAFDoc_LayerToolDriver;
class Handle_XmlMXCAFDoc_LayerToolDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_LayerToolDriver();
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_LayerToolDriver(const Handle_XmlMXCAFDoc_LayerToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_LayerToolDriver(const XmlMXCAFDoc_LayerToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_LayerToolDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMXCAFDoc_LayerToolDriver {
	XmlMXCAFDoc_LayerToolDriver* GetObject() {
	return (XmlMXCAFDoc_LayerToolDriver*)$self->Access();
	}
};
%extend Handle_XmlMXCAFDoc_LayerToolDriver {
	~Handle_XmlMXCAFDoc_LayerToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMXCAFDoc_LayerToolDriver\n");}
	}
};


%nodefaultctor Handle_XmlMXCAFDoc_ShapeToolDriver;
class Handle_XmlMXCAFDoc_ShapeToolDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ShapeToolDriver();
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ShapeToolDriver(const Handle_XmlMXCAFDoc_ShapeToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ShapeToolDriver(const XmlMXCAFDoc_ShapeToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_ShapeToolDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMXCAFDoc_ShapeToolDriver {
	XmlMXCAFDoc_ShapeToolDriver* GetObject() {
	return (XmlMXCAFDoc_ShapeToolDriver*)$self->Access();
	}
};
%extend Handle_XmlMXCAFDoc_ShapeToolDriver {
	~Handle_XmlMXCAFDoc_ShapeToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMXCAFDoc_ShapeToolDriver\n");}
	}
};


%nodefaultctor Handle_XmlMXCAFDoc_AreaDriver;
class Handle_XmlMXCAFDoc_AreaDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_AreaDriver();
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_AreaDriver(const Handle_XmlMXCAFDoc_AreaDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_AreaDriver(const XmlMXCAFDoc_AreaDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMXCAFDoc_AreaDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMXCAFDoc_AreaDriver {
	XmlMXCAFDoc_AreaDriver* GetObject() {
	return (XmlMXCAFDoc_AreaDriver*)$self->Access();
	}
};
%extend Handle_XmlMXCAFDoc_AreaDriver {
	~Handle_XmlMXCAFDoc_AreaDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMXCAFDoc_AreaDriver\n");}
	}
};


%nodefaultctor XmlMXCAFDoc_DocumentToolDriver;
class XmlMXCAFDoc_DocumentToolDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMXCAFDoc_DocumentToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, XmlObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, XmlObjMgt_Persistent & theTarget, XmlObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMXCAFDoc_DocumentToolDriver {
	Handle_XmlMXCAFDoc_DocumentToolDriver GetHandle() {
	return *(Handle_XmlMXCAFDoc_DocumentToolDriver*) &$self;
	}
};
%extend XmlMXCAFDoc_DocumentToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMXCAFDoc_DocumentToolDriver {
	~XmlMXCAFDoc_DocumentToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc_DocumentToolDriver\n");}
	}
};


%nodefaultctor XmlMXCAFDoc_LocationDriver;
class XmlMXCAFDoc_LocationDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMXCAFDoc_LocationDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		void Translate(const TopLoc_Location &theLoc, XmlObjMgt_Element & theParent, XmlObjMgt_SRelocationTable & theMap);
		%feature("autodoc", "1");
		Standard_Boolean Translate(const XmlObjMgt_Element &theParent, TopLoc_Location & theLoc, XmlObjMgt_RRelocationTable & theMap);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMXCAFDoc_LocationDriver {
	Handle_XmlMXCAFDoc_LocationDriver GetHandle() {
	return *(Handle_XmlMXCAFDoc_LocationDriver*) &$self;
	}
};
%extend XmlMXCAFDoc_LocationDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMXCAFDoc_LocationDriver {
	~XmlMXCAFDoc_LocationDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc_LocationDriver\n");}
	}
};


%nodefaultctor XmlMXCAFDoc_ColorDriver;
class XmlMXCAFDoc_ColorDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMXCAFDoc_ColorDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMXCAFDoc_ColorDriver {
	Handle_XmlMXCAFDoc_ColorDriver GetHandle() {
	return *(Handle_XmlMXCAFDoc_ColorDriver*) &$self;
	}
};
%extend XmlMXCAFDoc_ColorDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMXCAFDoc_ColorDriver {
	~XmlMXCAFDoc_ColorDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc_ColorDriver\n");}
	}
};


%nodefaultctor XmlMXCAFDoc;
class XmlMXCAFDoc {
	public:
		%feature("autodoc", "1");
		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &anMsgDrv);

};
%extend XmlMXCAFDoc {
	~XmlMXCAFDoc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc\n");}
	}
};


%nodefaultctor XmlMXCAFDoc_VolumeDriver;
class XmlMXCAFDoc_VolumeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMXCAFDoc_VolumeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMXCAFDoc_VolumeDriver {
	Handle_XmlMXCAFDoc_VolumeDriver GetHandle() {
	return *(Handle_XmlMXCAFDoc_VolumeDriver*) &$self;
	}
};
%extend XmlMXCAFDoc_VolumeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMXCAFDoc_VolumeDriver {
	~XmlMXCAFDoc_VolumeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc_VolumeDriver\n");}
	}
};


%nodefaultctor XmlMXCAFDoc_ColorToolDriver;
class XmlMXCAFDoc_ColorToolDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMXCAFDoc_ColorToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, XmlObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, XmlObjMgt_Persistent & theTarget, XmlObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMXCAFDoc_ColorToolDriver {
	Handle_XmlMXCAFDoc_ColorToolDriver GetHandle() {
	return *(Handle_XmlMXCAFDoc_ColorToolDriver*) &$self;
	}
};
%extend XmlMXCAFDoc_ColorToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMXCAFDoc_ColorToolDriver {
	~XmlMXCAFDoc_ColorToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc_ColorToolDriver\n");}
	}
};


%nodefaultctor XmlMXCAFDoc_GraphNodeDriver;
class XmlMXCAFDoc_GraphNodeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMXCAFDoc_GraphNodeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMXCAFDoc_GraphNodeDriver {
	Handle_XmlMXCAFDoc_GraphNodeDriver GetHandle() {
	return *(Handle_XmlMXCAFDoc_GraphNodeDriver*) &$self;
	}
};
%extend XmlMXCAFDoc_GraphNodeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMXCAFDoc_GraphNodeDriver {
	~XmlMXCAFDoc_GraphNodeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc_GraphNodeDriver\n");}
	}
};


%nodefaultctor XmlMXCAFDoc_LayerToolDriver;
class XmlMXCAFDoc_LayerToolDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMXCAFDoc_LayerToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, XmlObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, XmlObjMgt_Persistent & theTarget, XmlObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMXCAFDoc_LayerToolDriver {
	Handle_XmlMXCAFDoc_LayerToolDriver GetHandle() {
	return *(Handle_XmlMXCAFDoc_LayerToolDriver*) &$self;
	}
};
%extend XmlMXCAFDoc_LayerToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMXCAFDoc_LayerToolDriver {
	~XmlMXCAFDoc_LayerToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc_LayerToolDriver\n");}
	}
};


%nodefaultctor XmlMXCAFDoc_ShapeToolDriver;
class XmlMXCAFDoc_ShapeToolDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMXCAFDoc_ShapeToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, XmlObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, XmlObjMgt_Persistent & theTarget, XmlObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMXCAFDoc_ShapeToolDriver {
	Handle_XmlMXCAFDoc_ShapeToolDriver GetHandle() {
	return *(Handle_XmlMXCAFDoc_ShapeToolDriver*) &$self;
	}
};
%extend XmlMXCAFDoc_ShapeToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMXCAFDoc_ShapeToolDriver {
	~XmlMXCAFDoc_ShapeToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc_ShapeToolDriver\n");}
	}
};


%nodefaultctor XmlMXCAFDoc_AreaDriver;
class XmlMXCAFDoc_AreaDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMXCAFDoc_AreaDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMXCAFDoc_AreaDriver {
	Handle_XmlMXCAFDoc_AreaDriver GetHandle() {
	return *(Handle_XmlMXCAFDoc_AreaDriver*) &$self;
	}
};
%extend XmlMXCAFDoc_AreaDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMXCAFDoc_AreaDriver {
	~XmlMXCAFDoc_AreaDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc_AreaDriver\n");}
	}
};


%nodefaultctor XmlMXCAFDoc_CentroidDriver;
class XmlMXCAFDoc_CentroidDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMXCAFDoc_CentroidDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMXCAFDoc_CentroidDriver {
	Handle_XmlMXCAFDoc_CentroidDriver GetHandle() {
	return *(Handle_XmlMXCAFDoc_CentroidDriver*) &$self;
	}
};
%extend XmlMXCAFDoc_CentroidDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMXCAFDoc_CentroidDriver {
	~XmlMXCAFDoc_CentroidDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMXCAFDoc_CentroidDriver\n");}
	}
};
