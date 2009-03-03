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


%include XmlTObjDrivers_dependencies.i


%include XmlTObjDrivers_headers.i




%nodefaultctor Handle_XmlTObjDrivers_XYZDriver;
class Handle_XmlTObjDrivers_XYZDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlTObjDrivers_XYZDriver();
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

%nodefaultctor Handle_XmlTObjDrivers_DocumentRetrievalDriver;
class Handle_XmlTObjDrivers_DocumentRetrievalDriver : public Handle_XmlLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlTObjDrivers_DocumentRetrievalDriver();
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

%nodefaultctor Handle_XmlTObjDrivers_ModelDriver;
class Handle_XmlTObjDrivers_ModelDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlTObjDrivers_ModelDriver();
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

%nodefaultctor Handle_XmlTObjDrivers_DocumentStorageDriver;
class Handle_XmlTObjDrivers_DocumentStorageDriver : public Handle_XmlLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlTObjDrivers_DocumentStorageDriver();
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

%nodefaultctor Handle_XmlTObjDrivers_IntSparseArrayDriver;
class Handle_XmlTObjDrivers_IntSparseArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlTObjDrivers_IntSparseArrayDriver();
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

%nodefaultctor Handle_XmlTObjDrivers_ObjectDriver;
class Handle_XmlTObjDrivers_ObjectDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlTObjDrivers_ObjectDriver();
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

%nodefaultctor Handle_XmlTObjDrivers_ReferenceDriver;
class Handle_XmlTObjDrivers_ReferenceDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlTObjDrivers_ReferenceDriver();
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
		%feature("autodoc", "1");
		virtual		~XmlTObjDrivers_ReferenceDriver();

};
%extend XmlTObjDrivers_ReferenceDriver {
	Handle_XmlTObjDrivers_ReferenceDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_ReferenceDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~XmlTObjDrivers_DocumentRetrievalDriver();

};
%extend XmlTObjDrivers_DocumentRetrievalDriver {
	Handle_XmlTObjDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_DocumentRetrievalDriver*) &$self;
	}
};

%nodefaultctor XmlTObjDrivers;
class XmlTObjDrivers {
	public:
		%feature("autodoc", "1");
		~XmlTObjDrivers();
		%feature("autodoc", "1");
		XmlTObjDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);
		%feature("autodoc", "1");
		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &anMsgDrv);

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
		%feature("autodoc", "1");
		virtual		~XmlTObjDrivers_ModelDriver();

};
%extend XmlTObjDrivers_ModelDriver {
	Handle_XmlTObjDrivers_ModelDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_ModelDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~XmlTObjDrivers_IntSparseArrayDriver();

};
%extend XmlTObjDrivers_IntSparseArrayDriver {
	Handle_XmlTObjDrivers_IntSparseArrayDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_IntSparseArrayDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~XmlTObjDrivers_DocumentStorageDriver();

};
%extend XmlTObjDrivers_DocumentStorageDriver {
	Handle_XmlTObjDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_DocumentStorageDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~XmlTObjDrivers_ObjectDriver();

};
%extend XmlTObjDrivers_ObjectDriver {
	Handle_XmlTObjDrivers_ObjectDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_ObjectDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~XmlTObjDrivers_XYZDriver();

};
%extend XmlTObjDrivers_XYZDriver {
	Handle_XmlTObjDrivers_XYZDriver GetHandle() {
	return *(Handle_XmlTObjDrivers_XYZDriver*) &$self;
	}
};