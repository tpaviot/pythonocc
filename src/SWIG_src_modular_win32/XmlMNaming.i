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
%module XmlMNaming

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


%include XmlMNaming_dependencies.i


%include XmlMNaming_headers.i




%nodefaultctor Handle_XmlMNaming_NamingDriver;
class Handle_XmlMNaming_NamingDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamingDriver();
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamingDriver(const Handle_XmlMNaming_NamingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamingDriver(const XmlMNaming_NamingDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamingDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMNaming_NamingDriver {
	XmlMNaming_NamingDriver* GetObject() {
	return (XmlMNaming_NamingDriver*)$self->Access();
	}
};
%extend Handle_XmlMNaming_NamingDriver {
	~Handle_XmlMNaming_NamingDriver() {
	printf("Call custom destructor for instance of Handle_XmlMNaming_NamingDriver\n");
	}
};

%nodefaultctor Handle_XmlMNaming_NamedShapeDriver;
class Handle_XmlMNaming_NamedShapeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamedShapeDriver();
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamedShapeDriver(const Handle_XmlMNaming_NamedShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamedShapeDriver(const XmlMNaming_NamedShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamedShapeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMNaming_NamedShapeDriver {
	XmlMNaming_NamedShapeDriver* GetObject() {
	return (XmlMNaming_NamedShapeDriver*)$self->Access();
	}
};
%extend Handle_XmlMNaming_NamedShapeDriver {
	~Handle_XmlMNaming_NamedShapeDriver() {
	printf("Call custom destructor for instance of Handle_XmlMNaming_NamedShapeDriver\n");
	}
};

%nodefaultctor XmlMNaming_NamedShapeDriver;
class XmlMNaming_NamedShapeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMNaming_NamedShapeDriver(const Handle_CDM_MessageDriver &aMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, XmlObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, XmlObjMgt_Persistent & theTarget, XmlObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		void ReadShapeSection(const XmlObjMgt_Element &anElement);
		%feature("autodoc", "1");
		void WriteShapeSection(XmlObjMgt_Element & anElement);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMNaming_NamedShapeDriver {
	Handle_XmlMNaming_NamedShapeDriver GetHandle() {
	return *(Handle_XmlMNaming_NamedShapeDriver*) &$self;
	}
};
%extend XmlMNaming_NamedShapeDriver {
	~XmlMNaming_NamedShapeDriver() {
	printf("Call custom destructor for instance of XmlMNaming_NamedShapeDriver\n");
	}
};

%nodefaultctor XmlMNaming_Array1OfShape1;
class XmlMNaming_Array1OfShape1 {
	public:
		%feature("autodoc", "1");
		~XmlMNaming_Array1OfShape1();
		%feature("autodoc", "1");
		XmlMNaming_Array1OfShape1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		XmlMNaming_Array1OfShape1(const XmlObjMgt_Element &theParent, const XmlObjMgt_DOMString &theName);
		%feature("autodoc", "1");
		void CreateArrayElement(XmlObjMgt_Element & theParent, const XmlObjMgt_DOMString &theName);
		%feature("autodoc", "1");
		const XmlObjMgt_Element & Element() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, XmlObjMgt_Element & Value);
		%feature("autodoc", "1");
		XmlObjMgt_Element Value(const Standard_Integer Index) const;

};

%nodefaultctor XmlMNaming_Shape1;
class XmlMNaming_Shape1 {
	public:
		%feature("autodoc", "1");
		~XmlMNaming_Shape1();
		%feature("autodoc", "1");
		XmlMNaming_Shape1(XmlObjMgt_Document & Doc);
		%feature("autodoc", "1");
		XmlMNaming_Shape1(const XmlObjMgt_Element &E);
		%feature("autodoc", "1");
		const XmlObjMgt_Element & Element() const;
		%feature("autodoc", "1");
		XmlObjMgt_Element & Element();
		%feature("autodoc", "1");
		Standard_Integer TShapeId() const;
		%feature("autodoc", "1");
		Standard_Integer LocId() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void SetShape(const Standard_Integer ID, const Standard_Integer LocID, const TopAbs_Orientation Orient);
		%feature("autodoc", "1");
		void SetVertex(const TopoDS_Shape &theVertex);
		%feature("autodoc", "1");
		XmlMNaming_Shape1();
		%feature("autodoc", "1");
		XmlObjMgt_Element _CSFDB_GetXmlMNaming_Shape1myElement() const;
		%feature("autodoc", "1");
		void _CSFDB_SetXmlMNaming_Shape1myElement(const XmlObjMgt_Element p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetXmlMNaming_Shape1myTShapeID() const;
		%feature("autodoc", "1");
		void _CSFDB_SetXmlMNaming_Shape1myTShapeID(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetXmlMNaming_Shape1myLocID() const;
		%feature("autodoc", "1");
		void _CSFDB_SetXmlMNaming_Shape1myLocID(const Standard_Integer p);
		%feature("autodoc", "1");
		TopAbs_Orientation _CSFDB_GetXmlMNaming_Shape1myOrientation() const;
		%feature("autodoc", "1");
		void _CSFDB_SetXmlMNaming_Shape1myOrientation(const TopAbs_Orientation p);

};

%nodefaultctor XmlMNaming_NamingDriver;
class XmlMNaming_NamingDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMNaming_NamingDriver(const Handle_CDM_MessageDriver &aMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, XmlObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, XmlObjMgt_Persistent & theTarget, XmlObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMNaming_NamingDriver {
	Handle_XmlMNaming_NamingDriver GetHandle() {
	return *(Handle_XmlMNaming_NamingDriver*) &$self;
	}
};
%extend XmlMNaming_NamingDriver {
	~XmlMNaming_NamingDriver() {
	printf("Call custom destructor for instance of XmlMNaming_NamingDriver\n");
	}
};

%nodefaultctor XmlMNaming;
class XmlMNaming {
	public:
		%feature("autodoc", "1");
		~XmlMNaming();
		%feature("autodoc", "1");
		XmlMNaming();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &aMessageDriver);

};