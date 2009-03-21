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
%module XmlLDrivers

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


%include XmlLDrivers_dependencies.i


%include XmlLDrivers_headers.i




%nodefaultctor Handle_XmlLDrivers_DocumentStorageDriver;
class Handle_XmlLDrivers_DocumentStorageDriver : public Handle_PCDM_StorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentStorageDriver(const Handle_XmlLDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentStorageDriver(const XmlLDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlLDrivers_DocumentStorageDriver {
	XmlLDrivers_DocumentStorageDriver* GetObject() {
	return (XmlLDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_XmlLDrivers_DocumentStorageDriver {
	~Handle_XmlLDrivers_DocumentStorageDriver() {
	printf("Call custom destructor for instance of Handle_XmlLDrivers_DocumentStorageDriver\n");
	}
};

%nodefaultctor Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef;
class Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef();
		%feature("autodoc", "1");
		Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef(const Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef &aHandle);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef(const XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef *anItem);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef {
	XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef* GetObject() {
	return (XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef*)$self->Access();
	}
};
%extend Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef {
	~Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef() {
	printf("Call custom destructor for instance of Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef\n");
	}
};

%nodefaultctor Handle_XmlLDrivers_DocumentRetrievalDriver;
class Handle_XmlLDrivers_DocumentRetrievalDriver : public Handle_PCDM_RetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentRetrievalDriver(const Handle_XmlLDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentRetrievalDriver(const XmlLDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlLDrivers_DocumentRetrievalDriver {
	XmlLDrivers_DocumentRetrievalDriver* GetObject() {
	return (XmlLDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_XmlLDrivers_DocumentRetrievalDriver {
	~Handle_XmlLDrivers_DocumentRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_XmlLDrivers_DocumentRetrievalDriver\n");
	}
};

%nodefaultctor XmlLDrivers_DocumentRetrievalDriver;
class XmlLDrivers_DocumentRetrievalDriver : public PCDM_RetrievalDriver {
	public:
		%feature("autodoc", "1");
		XmlLDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString SchemaName() const;
		%feature("autodoc", "1");
		virtual		void Make(const Handle_PCDM_Document &PD, const Handle_CDM_Document &TD);
		%feature("autodoc", "1");
		virtual		Handle_CDM_Document CreateDocument();
		%feature("autodoc", "1");
		virtual		void Read(const TCollection_ExtendedString &theFileName, const Handle_CDM_Document &theNewDocument, const Handle_CDM_Application &theApplication);
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlLDrivers_DocumentRetrievalDriver {
	Handle_XmlLDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_XmlLDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend XmlLDrivers_DocumentRetrievalDriver {
	~XmlLDrivers_DocumentRetrievalDriver() {
	printf("Call custom destructor for instance of XmlLDrivers_DocumentRetrievalDriver\n");
	}
};

%nodefaultctor XmlLDrivers_DocumentStorageDriver;
class XmlLDrivers_DocumentStorageDriver : public PCDM_StorageDriver {
	public:
		%feature("autodoc", "1");
		XmlLDrivers_DocumentStorageDriver(const TCollection_ExtendedString &theCopyright);
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString SchemaName() const;
		%feature("autodoc", "1");
		virtual		void Write(const Handle_CDM_Document &theDocument, const TCollection_ExtendedString &theFileName);
		%feature("autodoc", "1");
		Standard_Boolean IsError() const;
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlLDrivers_DocumentStorageDriver {
	Handle_XmlLDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_XmlLDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend XmlLDrivers_DocumentStorageDriver {
	~XmlLDrivers_DocumentStorageDriver() {
	printf("Call custom destructor for instance of XmlLDrivers_DocumentStorageDriver\n");
	}
};

%nodefaultctor XmlLDrivers_SequenceOfNamespaceDef;
class XmlLDrivers_SequenceOfNamespaceDef : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		XmlLDrivers_SequenceOfNamespaceDef();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~XmlLDrivers_SequenceOfNamespaceDef();
		%feature("autodoc", "1");
		const XmlLDrivers_SequenceOfNamespaceDef & Assign(const XmlLDrivers_SequenceOfNamespaceDef &Other);
		%feature("autodoc", "1");
		void Append(const XmlLDrivers_NamespaceDef &T);
		%feature("autodoc", "1");
		void Append(XmlLDrivers_SequenceOfNamespaceDef & S);
		%feature("autodoc", "1");
		void Prepend(const XmlLDrivers_NamespaceDef &T);
		%feature("autodoc", "1");
		void Prepend(XmlLDrivers_SequenceOfNamespaceDef & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const XmlLDrivers_NamespaceDef &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, XmlLDrivers_SequenceOfNamespaceDef & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const XmlLDrivers_NamespaceDef &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, XmlLDrivers_SequenceOfNamespaceDef & S);
		%feature("autodoc", "1");
		const XmlLDrivers_NamespaceDef & First() const;
		%feature("autodoc", "1");
		const XmlLDrivers_NamespaceDef & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, XmlLDrivers_SequenceOfNamespaceDef & S);
		%feature("autodoc", "1");
		const XmlLDrivers_NamespaceDef & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const XmlLDrivers_NamespaceDef & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const XmlLDrivers_NamespaceDef &I);
		%feature("autodoc", "1");
		XmlLDrivers_NamespaceDef & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		XmlLDrivers_NamespaceDef & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend XmlLDrivers_SequenceOfNamespaceDef {
	~XmlLDrivers_SequenceOfNamespaceDef() {
	printf("Call custom destructor for instance of XmlLDrivers_SequenceOfNamespaceDef\n");
	}
};

%nodefaultctor XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef;
class XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef(const XmlLDrivers_NamespaceDef &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		XmlLDrivers_NamespaceDef & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef {
	Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef GetHandle() {
	return *(Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef*) &$self;
	}
};
%extend XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef {
	~XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef() {
	printf("Call custom destructor for instance of XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef\n");
	}
};

%nodefaultctor XmlLDrivers;
class XmlLDrivers {
	public:
		%feature("autodoc", "1");
		XmlLDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &theGUID);
		%feature("autodoc", "1");
		TCollection_AsciiString CreationDate();
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		TCollection_AsciiString StorageVersion();

};
%extend XmlLDrivers {
	~XmlLDrivers() {
	printf("Call custom destructor for instance of XmlLDrivers\n");
	}
};

%nodefaultctor XmlLDrivers_NamespaceDef;
class XmlLDrivers_NamespaceDef {
	public:
		%feature("autodoc", "1");
		~XmlLDrivers_NamespaceDef();
		%feature("autodoc", "1");
		XmlLDrivers_NamespaceDef();
		%feature("autodoc", "1");
		XmlLDrivers_NamespaceDef(const TCollection_AsciiString &thePrefix, const TCollection_AsciiString &theURI);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Prefix() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & URI() const;

};
%extend XmlLDrivers_NamespaceDef {
	~XmlLDrivers_NamespaceDef() {
	printf("Call custom destructor for instance of XmlLDrivers_NamespaceDef\n");
	}
};