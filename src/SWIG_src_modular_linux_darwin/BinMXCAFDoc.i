/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
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


%include BinMXCAFDoc_dependencies.i


%include BinMXCAFDoc_headers.i




%nodefaultctor Handle_BinMXCAFDoc_VolumeDriver;
class Handle_BinMXCAFDoc_VolumeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMXCAFDoc_VolumeDriver();
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

%nodefaultctor Handle_BinMXCAFDoc_ColorToolDriver;
class Handle_BinMXCAFDoc_ColorToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMXCAFDoc_ColorToolDriver();
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

%nodefaultctor Handle_BinMXCAFDoc_LayerToolDriver;
class Handle_BinMXCAFDoc_LayerToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMXCAFDoc_LayerToolDriver();
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

%nodefaultctor Handle_BinMXCAFDoc_LocationDriver;
class Handle_BinMXCAFDoc_LocationDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMXCAFDoc_LocationDriver();
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

%nodefaultctor Handle_BinMXCAFDoc_ShapeToolDriver;
class Handle_BinMXCAFDoc_ShapeToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMXCAFDoc_ShapeToolDriver();
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

%nodefaultctor Handle_BinMXCAFDoc_ColorDriver;
class Handle_BinMXCAFDoc_ColorDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMXCAFDoc_ColorDriver();
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

%nodefaultctor Handle_BinMXCAFDoc_DocumentToolDriver;
class Handle_BinMXCAFDoc_DocumentToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMXCAFDoc_DocumentToolDriver();
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

%nodefaultctor Handle_BinMXCAFDoc_AreaDriver;
class Handle_BinMXCAFDoc_AreaDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMXCAFDoc_AreaDriver();
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

%nodefaultctor Handle_BinMXCAFDoc_CentroidDriver;
class Handle_BinMXCAFDoc_CentroidDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMXCAFDoc_CentroidDriver();
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

%nodefaultctor Handle_BinMXCAFDoc_GraphNodeDriver;
class Handle_BinMXCAFDoc_GraphNodeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMXCAFDoc_GraphNodeDriver();
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
		%feature("autodoc", "1");
		virtual		~BinMXCAFDoc_VolumeDriver();

};
%extend BinMXCAFDoc_VolumeDriver {
	Handle_BinMXCAFDoc_VolumeDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_VolumeDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BinMXCAFDoc_ColorToolDriver();

};
%extend BinMXCAFDoc_ColorToolDriver {
	Handle_BinMXCAFDoc_ColorToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_ColorToolDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BinMXCAFDoc_LayerToolDriver();

};
%extend BinMXCAFDoc_LayerToolDriver {
	Handle_BinMXCAFDoc_LayerToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_LayerToolDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BinMXCAFDoc_DocumentToolDriver();

};
%extend BinMXCAFDoc_DocumentToolDriver {
	Handle_BinMXCAFDoc_DocumentToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_DocumentToolDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BinMXCAFDoc_GraphNodeDriver();

};
%extend BinMXCAFDoc_GraphNodeDriver {
	Handle_BinMXCAFDoc_GraphNodeDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_GraphNodeDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BinMXCAFDoc_AreaDriver();

};
%extend BinMXCAFDoc_AreaDriver {
	Handle_BinMXCAFDoc_AreaDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_AreaDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BinMXCAFDoc_CentroidDriver();

};
%extend BinMXCAFDoc_CentroidDriver {
	Handle_BinMXCAFDoc_CentroidDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_CentroidDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BinMXCAFDoc_ColorDriver();

};
%extend BinMXCAFDoc_ColorDriver {
	Handle_BinMXCAFDoc_ColorDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_ColorDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BinMXCAFDoc_LocationDriver();

};
%extend BinMXCAFDoc_LocationDriver {
	Handle_BinMXCAFDoc_LocationDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_LocationDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BinMXCAFDoc_ShapeToolDriver();

};
%extend BinMXCAFDoc_ShapeToolDriver {
	Handle_BinMXCAFDoc_ShapeToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_ShapeToolDriver*) &$self;
	}
};

%nodefaultctor BinMXCAFDoc;
class BinMXCAFDoc {
	public:
		%feature("autodoc", "1");
		~BinMXCAFDoc();
		%feature("autodoc", "1");
		BinMXCAFDoc();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &theMsgDrv);

};