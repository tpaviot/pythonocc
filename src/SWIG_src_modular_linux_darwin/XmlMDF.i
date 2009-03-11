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
%module XmlMDF

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


%include XmlMDF_dependencies.i


%include XmlMDF_headers.i




%nodefaultctor Handle_XmlMDF_ADriver;
class Handle_XmlMDF_ADriver : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver();
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver(const Handle_XmlMDF_ADriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver(const XmlMDF_ADriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_ADriver {
	XmlMDF_ADriver* GetObject() {
	return (XmlMDF_ADriver*)$self->Access();
	}
};
%extend Handle_XmlMDF_ADriver {
	~Handle_XmlMDF_ADriver() {
	printf("Call custom destructor for instance of Handle_XmlMDF_ADriver\n");
	}
};

%nodefaultctor Handle_XmlMDF_ReferenceDriver;
class Handle_XmlMDF_ReferenceDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_ReferenceDriver();
		%feature("autodoc", "1");
		Handle_XmlMDF_ReferenceDriver(const Handle_XmlMDF_ReferenceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_ReferenceDriver(const XmlMDF_ReferenceDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_ReferenceDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_ReferenceDriver {
	XmlMDF_ReferenceDriver* GetObject() {
	return (XmlMDF_ReferenceDriver*)$self->Access();
	}
};
%extend Handle_XmlMDF_ReferenceDriver {
	~Handle_XmlMDF_ReferenceDriver() {
	printf("Call custom destructor for instance of Handle_XmlMDF_ReferenceDriver\n");
	}
};

%nodefaultctor Handle_XmlMDF_TagSourceDriver;
class Handle_XmlMDF_TagSourceDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_TagSourceDriver();
		%feature("autodoc", "1");
		Handle_XmlMDF_TagSourceDriver(const Handle_XmlMDF_TagSourceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_TagSourceDriver(const XmlMDF_TagSourceDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_TagSourceDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_TagSourceDriver {
	XmlMDF_TagSourceDriver* GetObject() {
	return (XmlMDF_TagSourceDriver*)$self->Access();
	}
};
%extend Handle_XmlMDF_TagSourceDriver {
	~Handle_XmlMDF_TagSourceDriver() {
	printf("Call custom destructor for instance of Handle_XmlMDF_TagSourceDriver\n");
	}
};

%nodefaultctor Handle_XmlMDF_DataMapNodeOfMapOfDriver;
class Handle_XmlMDF_DataMapNodeOfMapOfDriver : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfMapOfDriver();
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfMapOfDriver(const Handle_XmlMDF_DataMapNodeOfMapOfDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfMapOfDriver(const XmlMDF_DataMapNodeOfMapOfDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfMapOfDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_DataMapNodeOfMapOfDriver {
	XmlMDF_DataMapNodeOfMapOfDriver* GetObject() {
	return (XmlMDF_DataMapNodeOfMapOfDriver*)$self->Access();
	}
};
%extend Handle_XmlMDF_DataMapNodeOfMapOfDriver {
	~Handle_XmlMDF_DataMapNodeOfMapOfDriver() {
	printf("Call custom destructor for instance of Handle_XmlMDF_DataMapNodeOfMapOfDriver\n");
	}
};

%nodefaultctor Handle_XmlMDF_ADriverTable;
class Handle_XmlMDF_ADriverTable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable();
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable(const Handle_XmlMDF_ADriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable(const XmlMDF_ADriverTable *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_ADriverTable {
	XmlMDF_ADriverTable* GetObject() {
	return (XmlMDF_ADriverTable*)$self->Access();
	}
};
%extend Handle_XmlMDF_ADriverTable {
	~Handle_XmlMDF_ADriverTable() {
	printf("Call custom destructor for instance of Handle_XmlMDF_ADriverTable\n");
	}
};

%nodefaultctor Handle_XmlMDF_DataMapNodeOfTypeADriverMap;
class Handle_XmlMDF_DataMapNodeOfTypeADriverMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfTypeADriverMap();
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfTypeADriverMap(const Handle_XmlMDF_DataMapNodeOfTypeADriverMap &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfTypeADriverMap(const XmlMDF_DataMapNodeOfTypeADriverMap *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfTypeADriverMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_DataMapNodeOfTypeADriverMap {
	XmlMDF_DataMapNodeOfTypeADriverMap* GetObject() {
	return (XmlMDF_DataMapNodeOfTypeADriverMap*)$self->Access();
	}
};
%extend Handle_XmlMDF_DataMapNodeOfTypeADriverMap {
	~Handle_XmlMDF_DataMapNodeOfTypeADriverMap() {
	printf("Call custom destructor for instance of Handle_XmlMDF_DataMapNodeOfTypeADriverMap\n");
	}
};

%nodefaultctor XmlMDF;
class XmlMDF {
	public:
		%feature("autodoc", "1");
		~XmlMDF();
		%feature("autodoc", "1");
		XmlMDF();
		%feature("autodoc", "1");
		void FromTo(const Handle_TDF_Data &aSource, XmlObjMgt_Element & aTarget, XmlObjMgt_SRelocationTable & aReloc, const Handle_XmlMDF_ADriverTable &aDrivers);
		%feature("autodoc", "1");
		Standard_Boolean FromTo(const XmlObjMgt_Element &aSource, Handle_TDF_Data & aTarget, XmlObjMgt_RRelocationTable & aReloc, const Handle_XmlMDF_ADriverTable &aDrivers);
		%feature("autodoc", "1");
		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

};

%nodefaultctor XmlMDF_DataMapNodeOfTypeADriverMap;
class XmlMDF_DataMapNodeOfTypeADriverMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XmlMDF_DataMapNodeOfTypeADriverMap(const Handle_Standard_Type &K, const Handle_XmlMDF_ADriver &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_DataMapNodeOfTypeADriverMap {
	Handle_XmlMDF_DataMapNodeOfTypeADriverMap GetHandle() {
	return *(Handle_XmlMDF_DataMapNodeOfTypeADriverMap*) &$self;
	}
};
%extend XmlMDF_DataMapNodeOfTypeADriverMap {
	~XmlMDF_DataMapNodeOfTypeADriverMap() {
	printf("Call custom destructor for instance of XmlMDF_DataMapNodeOfTypeADriverMap\n");
	}
};

%nodefaultctor XmlMDF_ADriver;
class XmlMDF_ADriver : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & TypeName() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &aSource, const Handle_TDF_Attribute &aTarget, XmlObjMgt_RRelocationTable & aRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &aSource, XmlObjMgt_Persistent & aTarget, XmlObjMgt_SRelocationTable & aRelocTable) const;
		%feature("autodoc", "1");
		void WriteMessage(const TCollection_ExtendedString &theMessage) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_ADriver {
	Handle_XmlMDF_ADriver GetHandle() {
	return *(Handle_XmlMDF_ADriver*) &$self;
	}
};
%extend XmlMDF_ADriver {
	~XmlMDF_ADriver() {
	printf("Call custom destructor for instance of XmlMDF_ADriver\n");
	}
};

%nodefaultctor XmlMDF_ReferenceDriver;
class XmlMDF_ReferenceDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDF_ReferenceDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;

};
%extend XmlMDF_ReferenceDriver {
	Handle_XmlMDF_ReferenceDriver GetHandle() {
	return *(Handle_XmlMDF_ReferenceDriver*) &$self;
	}
};
%extend XmlMDF_ReferenceDriver {
	~XmlMDF_ReferenceDriver() {
	printf("Call custom destructor for instance of XmlMDF_ReferenceDriver\n");
	}
};

%nodefaultctor XmlMDF_DataMapNodeOfMapOfDriver;
class XmlMDF_DataMapNodeOfMapOfDriver : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XmlMDF_DataMapNodeOfMapOfDriver(const TCollection_AsciiString &K, const Handle_XmlMDF_ADriver &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_DataMapNodeOfMapOfDriver {
	Handle_XmlMDF_DataMapNodeOfMapOfDriver GetHandle() {
	return *(Handle_XmlMDF_DataMapNodeOfMapOfDriver*) &$self;
	}
};
%extend XmlMDF_DataMapNodeOfMapOfDriver {
	~XmlMDF_DataMapNodeOfMapOfDriver() {
	printf("Call custom destructor for instance of XmlMDF_DataMapNodeOfMapOfDriver\n");
	}
};

%nodefaultctor XmlMDF_TagSourceDriver;
class XmlMDF_TagSourceDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDF_TagSourceDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_TagSourceDriver {
	Handle_XmlMDF_TagSourceDriver GetHandle() {
	return *(Handle_XmlMDF_TagSourceDriver*) &$self;
	}
};
%extend XmlMDF_TagSourceDriver {
	~XmlMDF_TagSourceDriver() {
	printf("Call custom destructor for instance of XmlMDF_TagSourceDriver\n");
	}
};

%nodefaultctor XmlMDF_DataMapIteratorOfMapOfDriver;
class XmlMDF_DataMapIteratorOfMapOfDriver : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XmlMDF_DataMapIteratorOfMapOfDriver();
		%feature("autodoc", "1");
		XmlMDF_DataMapIteratorOfMapOfDriver(const XmlMDF_MapOfDriver &aMap);
		%feature("autodoc", "1");
		void Initialize(const XmlMDF_MapOfDriver &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & Value() const;

};
%extend XmlMDF_DataMapIteratorOfMapOfDriver {
	~XmlMDF_DataMapIteratorOfMapOfDriver() {
	printf("Call custom destructor for instance of XmlMDF_DataMapIteratorOfMapOfDriver\n");
	}
};

%nodefaultctor XmlMDF_ADriverTable;
class XmlMDF_ADriverTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		XmlMDF_ADriverTable();
		%feature("autodoc", "1");
		void AddDriver(const Handle_XmlMDF_ADriver &anHDriver);
		%feature("autodoc", "1");
		const XmlMDF_TypeADriverMap & GetDrivers() const;
		%feature("autodoc", "1");
		Standard_Boolean GetDriver(const Handle_Standard_Type &aType, Handle_XmlMDF_ADriver & anHDriver) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_ADriverTable {
	Handle_XmlMDF_ADriverTable GetHandle() {
	return *(Handle_XmlMDF_ADriverTable*) &$self;
	}
};
%extend XmlMDF_ADriverTable {
	~XmlMDF_ADriverTable() {
	printf("Call custom destructor for instance of XmlMDF_ADriverTable\n");
	}
};

%nodefaultctor XmlMDF_TypeADriverMap;
class XmlMDF_TypeADriverMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XmlMDF_TypeADriverMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XmlMDF_TypeADriverMap & Assign(const XmlMDF_TypeADriverMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Type &K, const Handle_XmlMDF_ADriver &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & Find(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & operator()(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & ChangeFind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & operator()(const Handle_Standard_Type &K);

};
%extend XmlMDF_TypeADriverMap {
	~XmlMDF_TypeADriverMap() {
	printf("Call custom destructor for instance of XmlMDF_TypeADriverMap\n");
	}
};

%nodefaultctor XmlMDF_MapOfDriver;
class XmlMDF_MapOfDriver : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XmlMDF_MapOfDriver(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XmlMDF_MapOfDriver & Assign(const XmlMDF_MapOfDriver &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const Handle_XmlMDF_ADriver &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & operator()(const TCollection_AsciiString &K);

};
%extend XmlMDF_MapOfDriver {
	~XmlMDF_MapOfDriver() {
	printf("Call custom destructor for instance of XmlMDF_MapOfDriver\n");
	}
};

%nodefaultctor XmlMDF_DataMapIteratorOfTypeADriverMap;
class XmlMDF_DataMapIteratorOfTypeADriverMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XmlMDF_DataMapIteratorOfTypeADriverMap();
		%feature("autodoc", "1");
		XmlMDF_DataMapIteratorOfTypeADriverMap(const XmlMDF_TypeADriverMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const XmlMDF_TypeADriverMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & Value() const;

};
%extend XmlMDF_DataMapIteratorOfTypeADriverMap {
	~XmlMDF_DataMapIteratorOfTypeADriverMap() {
	printf("Call custom destructor for instance of XmlMDF_DataMapIteratorOfTypeADriverMap\n");
	}
};