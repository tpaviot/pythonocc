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
%module BinMXCAFDoc

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


%include BinMXCAFDoc_dependencies.i


%include BinMXCAFDoc_headers.i




%nodefaultctor Handle_BinMXCAFDoc_LayerToolDriver;
class Handle_BinMXCAFDoc_LayerToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LayerToolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LayerToolDriver(const Handle_BinMXCAFDoc_LayerToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LayerToolDriver(const BinMXCAFDoc_LayerToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LayerToolDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_LayerToolDriver {
	BinMXCAFDoc_LayerToolDriver* GetObject() {
	return (BinMXCAFDoc_LayerToolDriver*)$self->Access();
	}
};
%extend Handle_BinMXCAFDoc_LayerToolDriver {
	~Handle_BinMXCAFDoc_LayerToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMXCAFDoc_LayerToolDriver\n");}
	}
};

%nodefaultctor Handle_BinMXCAFDoc_VolumeDriver;
class Handle_BinMXCAFDoc_VolumeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_VolumeDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_VolumeDriver(const Handle_BinMXCAFDoc_VolumeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_VolumeDriver(const BinMXCAFDoc_VolumeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_VolumeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_VolumeDriver {
	BinMXCAFDoc_VolumeDriver* GetObject() {
	return (BinMXCAFDoc_VolumeDriver*)$self->Access();
	}
};
%extend Handle_BinMXCAFDoc_VolumeDriver {
	~Handle_BinMXCAFDoc_VolumeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMXCAFDoc_VolumeDriver\n");}
	}
};

%nodefaultctor Handle_BinMXCAFDoc_ShapeToolDriver;
class Handle_BinMXCAFDoc_ShapeToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ShapeToolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ShapeToolDriver(const Handle_BinMXCAFDoc_ShapeToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ShapeToolDriver(const BinMXCAFDoc_ShapeToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ShapeToolDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_ShapeToolDriver {
	BinMXCAFDoc_ShapeToolDriver* GetObject() {
	return (BinMXCAFDoc_ShapeToolDriver*)$self->Access();
	}
};
%extend Handle_BinMXCAFDoc_ShapeToolDriver {
	~Handle_BinMXCAFDoc_ShapeToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMXCAFDoc_ShapeToolDriver\n");}
	}
};

%nodefaultctor Handle_BinMXCAFDoc_CentroidDriver;
class Handle_BinMXCAFDoc_CentroidDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_CentroidDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_CentroidDriver(const Handle_BinMXCAFDoc_CentroidDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_CentroidDriver(const BinMXCAFDoc_CentroidDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_CentroidDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_CentroidDriver {
	BinMXCAFDoc_CentroidDriver* GetObject() {
	return (BinMXCAFDoc_CentroidDriver*)$self->Access();
	}
};
%extend Handle_BinMXCAFDoc_CentroidDriver {
	~Handle_BinMXCAFDoc_CentroidDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMXCAFDoc_CentroidDriver\n");}
	}
};

%nodefaultctor Handle_BinMXCAFDoc_ColorDriver;
class Handle_BinMXCAFDoc_ColorDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorDriver(const Handle_BinMXCAFDoc_ColorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorDriver(const BinMXCAFDoc_ColorDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_ColorDriver {
	BinMXCAFDoc_ColorDriver* GetObject() {
	return (BinMXCAFDoc_ColorDriver*)$self->Access();
	}
};
%extend Handle_BinMXCAFDoc_ColorDriver {
	~Handle_BinMXCAFDoc_ColorDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMXCAFDoc_ColorDriver\n");}
	}
};

%nodefaultctor Handle_BinMXCAFDoc_LocationDriver;
class Handle_BinMXCAFDoc_LocationDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LocationDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LocationDriver(const Handle_BinMXCAFDoc_LocationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LocationDriver(const BinMXCAFDoc_LocationDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LocationDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_LocationDriver {
	BinMXCAFDoc_LocationDriver* GetObject() {
	return (BinMXCAFDoc_LocationDriver*)$self->Access();
	}
};
%extend Handle_BinMXCAFDoc_LocationDriver {
	~Handle_BinMXCAFDoc_LocationDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMXCAFDoc_LocationDriver\n");}
	}
};

%nodefaultctor Handle_BinMXCAFDoc_AreaDriver;
class Handle_BinMXCAFDoc_AreaDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_AreaDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_AreaDriver(const Handle_BinMXCAFDoc_AreaDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_AreaDriver(const BinMXCAFDoc_AreaDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_AreaDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_AreaDriver {
	BinMXCAFDoc_AreaDriver* GetObject() {
	return (BinMXCAFDoc_AreaDriver*)$self->Access();
	}
};
%extend Handle_BinMXCAFDoc_AreaDriver {
	~Handle_BinMXCAFDoc_AreaDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMXCAFDoc_AreaDriver\n");}
	}
};

%nodefaultctor Handle_BinMXCAFDoc_ColorToolDriver;
class Handle_BinMXCAFDoc_ColorToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorToolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorToolDriver(const Handle_BinMXCAFDoc_ColorToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorToolDriver(const BinMXCAFDoc_ColorToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorToolDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_ColorToolDriver {
	BinMXCAFDoc_ColorToolDriver* GetObject() {
	return (BinMXCAFDoc_ColorToolDriver*)$self->Access();
	}
};
%extend Handle_BinMXCAFDoc_ColorToolDriver {
	~Handle_BinMXCAFDoc_ColorToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMXCAFDoc_ColorToolDriver\n");}
	}
};

%nodefaultctor Handle_BinMXCAFDoc_GraphNodeDriver;
class Handle_BinMXCAFDoc_GraphNodeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_GraphNodeDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_GraphNodeDriver(const Handle_BinMXCAFDoc_GraphNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_GraphNodeDriver(const BinMXCAFDoc_GraphNodeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_GraphNodeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_GraphNodeDriver {
	BinMXCAFDoc_GraphNodeDriver* GetObject() {
	return (BinMXCAFDoc_GraphNodeDriver*)$self->Access();
	}
};
%extend Handle_BinMXCAFDoc_GraphNodeDriver {
	~Handle_BinMXCAFDoc_GraphNodeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMXCAFDoc_GraphNodeDriver\n");}
	}
};

%nodefaultctor Handle_BinMXCAFDoc_DocumentToolDriver;
class Handle_BinMXCAFDoc_DocumentToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DocumentToolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DocumentToolDriver(const Handle_BinMXCAFDoc_DocumentToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DocumentToolDriver(const BinMXCAFDoc_DocumentToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DocumentToolDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_DocumentToolDriver {
	BinMXCAFDoc_DocumentToolDriver* GetObject() {
	return (BinMXCAFDoc_DocumentToolDriver*)$self->Access();
	}
};
%extend Handle_BinMXCAFDoc_DocumentToolDriver {
	~Handle_BinMXCAFDoc_DocumentToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMXCAFDoc_DocumentToolDriver\n");}
	}
};

%nodefaultctor BinMXCAFDoc_VolumeDriver;
class BinMXCAFDoc_VolumeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_VolumeDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_VolumeDriver {
	Handle_BinMXCAFDoc_VolumeDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_VolumeDriver*) &$self;
	}
};
%extend BinMXCAFDoc_VolumeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend BinMXCAFDoc_VolumeDriver {
	~BinMXCAFDoc_VolumeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc_VolumeDriver\n");}
	}
};

%nodefaultctor BinMXCAFDoc_GraphNodeDriver;
class BinMXCAFDoc_GraphNodeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_GraphNodeDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_GraphNodeDriver {
	Handle_BinMXCAFDoc_GraphNodeDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_GraphNodeDriver*) &$self;
	}
};
%extend BinMXCAFDoc_GraphNodeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend BinMXCAFDoc_GraphNodeDriver {
	~BinMXCAFDoc_GraphNodeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc_GraphNodeDriver\n");}
	}
};

%nodefaultctor BinMXCAFDoc_ColorToolDriver;
class BinMXCAFDoc_ColorToolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_ColorToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_ColorToolDriver {
	Handle_BinMXCAFDoc_ColorToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_ColorToolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_ColorToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend BinMXCAFDoc_ColorToolDriver {
	~BinMXCAFDoc_ColorToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc_ColorToolDriver\n");}
	}
};

%nodefaultctor BinMXCAFDoc_ShapeToolDriver;
class BinMXCAFDoc_ShapeToolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_ShapeToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_ShapeToolDriver {
	Handle_BinMXCAFDoc_ShapeToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_ShapeToolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_ShapeToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend BinMXCAFDoc_ShapeToolDriver {
	~BinMXCAFDoc_ShapeToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc_ShapeToolDriver\n");}
	}
};

%nodefaultctor BinMXCAFDoc_LayerToolDriver;
class BinMXCAFDoc_LayerToolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_LayerToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_LayerToolDriver {
	Handle_BinMXCAFDoc_LayerToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_LayerToolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_LayerToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend BinMXCAFDoc_LayerToolDriver {
	~BinMXCAFDoc_LayerToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc_LayerToolDriver\n");}
	}
};

%nodefaultctor BinMXCAFDoc_LocationDriver;
class BinMXCAFDoc_LocationDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_LocationDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		Standard_Boolean Translate(const BinObjMgt_Persistent &theSource, TopLoc_Location & theLoc, BinObjMgt_RRelocationTable & theMap);
		%feature("autodoc", "1");
		void Translate(const TopLoc_Location &theLoc, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theMap);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_LocationDriver {
	Handle_BinMXCAFDoc_LocationDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_LocationDriver*) &$self;
	}
};
%extend BinMXCAFDoc_LocationDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend BinMXCAFDoc_LocationDriver {
	~BinMXCAFDoc_LocationDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc_LocationDriver\n");}
	}
};

%nodefaultctor BinMXCAFDoc_CentroidDriver;
class BinMXCAFDoc_CentroidDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_CentroidDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_CentroidDriver {
	Handle_BinMXCAFDoc_CentroidDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_CentroidDriver*) &$self;
	}
};
%extend BinMXCAFDoc_CentroidDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend BinMXCAFDoc_CentroidDriver {
	~BinMXCAFDoc_CentroidDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc_CentroidDriver\n");}
	}
};

%nodefaultctor BinMXCAFDoc_ColorDriver;
class BinMXCAFDoc_ColorDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_ColorDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_ColorDriver {
	Handle_BinMXCAFDoc_ColorDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_ColorDriver*) &$self;
	}
};
%extend BinMXCAFDoc_ColorDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend BinMXCAFDoc_ColorDriver {
	~BinMXCAFDoc_ColorDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc_ColorDriver\n");}
	}
};

%nodefaultctor BinMXCAFDoc;
class BinMXCAFDoc {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &theMsgDrv);

};
%extend BinMXCAFDoc {
	~BinMXCAFDoc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc\n");}
	}
};

%nodefaultctor BinMXCAFDoc_DocumentToolDriver;
class BinMXCAFDoc_DocumentToolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_DocumentToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_DocumentToolDriver {
	Handle_BinMXCAFDoc_DocumentToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_DocumentToolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_DocumentToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend BinMXCAFDoc_DocumentToolDriver {
	~BinMXCAFDoc_DocumentToolDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc_DocumentToolDriver\n");}
	}
};

%nodefaultctor BinMXCAFDoc_AreaDriver;
class BinMXCAFDoc_AreaDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_AreaDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_AreaDriver {
	Handle_BinMXCAFDoc_AreaDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_AreaDriver*) &$self;
	}
};
%extend BinMXCAFDoc_AreaDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend BinMXCAFDoc_AreaDriver {
	~BinMXCAFDoc_AreaDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMXCAFDoc_AreaDriver\n");}
	}
};