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
%module CDM

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


%include CDM_dependencies.i


%include CDM_headers.i

typedef CDM_Document * CDM_DocumentPointer;

enum CDM_CanCloseStatus {
	CDM_CCS_OK,
	CDM_CCS_NotOpen,
	CDM_CCS_UnstoredReferenced,
	CDM_CCS_ModifiedReferenced,
	CDM_CCS_ReferenceRejection,
	};



%nodefaultctor Handle_CDM_Reference;
class Handle_CDM_Reference : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_Reference();
		%feature("autodoc", "1");
		Handle_CDM_Reference();
		%feature("autodoc", "1");
		Handle_CDM_Reference(const Handle_CDM_Reference &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_Reference(const CDM_Reference *anItem);
		%feature("autodoc", "1");
		Handle_CDM_Reference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_Reference {
	CDM_Reference* GetObject() {
	return (CDM_Reference*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_StackNodeOfStackOfDocument;
class Handle_CDM_StackNodeOfStackOfDocument : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_StackNodeOfStackOfDocument();
		%feature("autodoc", "1");
		Handle_CDM_StackNodeOfStackOfDocument();
		%feature("autodoc", "1");
		Handle_CDM_StackNodeOfStackOfDocument(const Handle_CDM_StackNodeOfStackOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_StackNodeOfStackOfDocument(const CDM_StackNodeOfStackOfDocument *anItem);
		%feature("autodoc", "1");
		Handle_CDM_StackNodeOfStackOfDocument const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_StackNodeOfStackOfDocument {
	CDM_StackNodeOfStackOfDocument* GetObject() {
	return (CDM_StackNodeOfStackOfDocument*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_Application;
class Handle_CDM_Application : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_Application();
		%feature("autodoc", "1");
		Handle_CDM_Application();
		%feature("autodoc", "1");
		Handle_CDM_Application(const Handle_CDM_Application &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_Application(const CDM_Application *anItem);
		%feature("autodoc", "1");
		Handle_CDM_Application const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_Application {
	CDM_Application* GetObject() {
	return (CDM_Application*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_MessageDriver;
class Handle_CDM_MessageDriver : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_MessageDriver();
		%feature("autodoc", "1");
		Handle_CDM_MessageDriver();
		%feature("autodoc", "1");
		Handle_CDM_MessageDriver(const Handle_CDM_MessageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_MessageDriver(const CDM_MessageDriver *anItem);
		%feature("autodoc", "1");
		Handle_CDM_MessageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_MessageDriver {
	CDM_MessageDriver* GetObject() {
	return (CDM_MessageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_COutMessageDriver;
class Handle_CDM_COutMessageDriver : public Handle_CDM_MessageDriver {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_COutMessageDriver();
		%feature("autodoc", "1");
		Handle_CDM_COutMessageDriver();
		%feature("autodoc", "1");
		Handle_CDM_COutMessageDriver(const Handle_CDM_COutMessageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_COutMessageDriver(const CDM_COutMessageDriver *anItem);
		%feature("autodoc", "1");
		Handle_CDM_COutMessageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_COutMessageDriver {
	CDM_COutMessageDriver* GetObject() {
	return (CDM_COutMessageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_DataMapNodeOfNamesDirectory;
class Handle_CDM_DataMapNodeOfNamesDirectory : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_DataMapNodeOfNamesDirectory();
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfNamesDirectory();
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfNamesDirectory(const Handle_CDM_DataMapNodeOfNamesDirectory &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfNamesDirectory(const CDM_DataMapNodeOfNamesDirectory *anItem);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfNamesDirectory const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_DataMapNodeOfNamesDirectory {
	CDM_DataMapNodeOfNamesDirectory* GetObject() {
	return (CDM_DataMapNodeOfNamesDirectory*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_StdMapNodeOfMapOfDocument;
class Handle_CDM_StdMapNodeOfMapOfDocument : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_StdMapNodeOfMapOfDocument();
		%feature("autodoc", "1");
		Handle_CDM_StdMapNodeOfMapOfDocument();
		%feature("autodoc", "1");
		Handle_CDM_StdMapNodeOfMapOfDocument(const Handle_CDM_StdMapNodeOfMapOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_StdMapNodeOfMapOfDocument(const CDM_StdMapNodeOfMapOfDocument *anItem);
		%feature("autodoc", "1");
		Handle_CDM_StdMapNodeOfMapOfDocument const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_StdMapNodeOfMapOfDocument {
	CDM_StdMapNodeOfMapOfDocument* GetObject() {
	return (CDM_StdMapNodeOfMapOfDocument*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_DataMapNodeOfMetaDataLookUpTable;
class Handle_CDM_DataMapNodeOfMetaDataLookUpTable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_DataMapNodeOfMetaDataLookUpTable();
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfMetaDataLookUpTable();
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfMetaDataLookUpTable(const Handle_CDM_DataMapNodeOfMetaDataLookUpTable &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfMetaDataLookUpTable(const CDM_DataMapNodeOfMetaDataLookUpTable *anItem);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfMetaDataLookUpTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_DataMapNodeOfMetaDataLookUpTable {
	CDM_DataMapNodeOfMetaDataLookUpTable* GetObject() {
	return (CDM_DataMapNodeOfMetaDataLookUpTable*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_Document;
class Handle_CDM_Document : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_Document();
		%feature("autodoc", "1");
		Handle_CDM_Document();
		%feature("autodoc", "1");
		Handle_CDM_Document(const Handle_CDM_Document &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_Document(const CDM_Document *anItem);
		%feature("autodoc", "1");
		Handle_CDM_Document const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_Document {
	CDM_Document* GetObject() {
	return (CDM_Document*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_MetaData;
class Handle_CDM_MetaData : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_MetaData();
		%feature("autodoc", "1");
		Handle_CDM_MetaData();
		%feature("autodoc", "1");
		Handle_CDM_MetaData(const Handle_CDM_MetaData &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_MetaData(const CDM_MetaData *anItem);
		%feature("autodoc", "1");
		Handle_CDM_MetaData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_MetaData {
	CDM_MetaData* GetObject() {
	return (CDM_MetaData*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_NullMessageDriver;
class Handle_CDM_NullMessageDriver : public Handle_CDM_MessageDriver {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_NullMessageDriver();
		%feature("autodoc", "1");
		Handle_CDM_NullMessageDriver();
		%feature("autodoc", "1");
		Handle_CDM_NullMessageDriver(const Handle_CDM_NullMessageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_NullMessageDriver(const CDM_NullMessageDriver *anItem);
		%feature("autodoc", "1");
		Handle_CDM_NullMessageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_NullMessageDriver {
	CDM_NullMessageDriver* GetObject() {
	return (CDM_NullMessageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_DataMapNodeOfPresentationDirectory;
class Handle_CDM_DataMapNodeOfPresentationDirectory : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_DataMapNodeOfPresentationDirectory();
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfPresentationDirectory();
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfPresentationDirectory(const Handle_CDM_DataMapNodeOfPresentationDirectory &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfPresentationDirectory(const CDM_DataMapNodeOfPresentationDirectory *anItem);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfPresentationDirectory const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_DataMapNodeOfPresentationDirectory {
	CDM_DataMapNodeOfPresentationDirectory* GetObject() {
	return (CDM_DataMapNodeOfPresentationDirectory*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_ListNodeOfListOfDocument;
class Handle_CDM_ListNodeOfListOfDocument : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_ListNodeOfListOfDocument();
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfDocument();
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfDocument(const Handle_CDM_ListNodeOfListOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfDocument(const CDM_ListNodeOfListOfDocument *anItem);
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfDocument const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_ListNodeOfListOfDocument {
	CDM_ListNodeOfListOfDocument* GetObject() {
	return (CDM_ListNodeOfListOfDocument*)$self->Access();
	}
};

%nodefaultctor Handle_CDM_ListNodeOfListOfReferences;
class Handle_CDM_ListNodeOfListOfReferences : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_CDM_ListNodeOfListOfReferences();
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfReferences();
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfReferences(const Handle_CDM_ListNodeOfListOfReferences &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfReferences(const CDM_ListNodeOfListOfReferences *anItem);
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfReferences const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_ListNodeOfListOfReferences {
	CDM_ListNodeOfListOfReferences* GetObject() {
	return (CDM_ListNodeOfListOfReferences*)$self->Access();
	}
};

%nodefaultctor CDM_ListOfDocument;
class CDM_ListOfDocument {
	public:
		%feature("autodoc", "1");
		CDM_ListOfDocument();
		%feature("autodoc", "1");
		void Assign(const CDM_ListOfDocument &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~CDM_ListOfDocument();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_CDM_Document &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_CDM_Document &I, CDM_ListIteratorOfListOfDocument & theIt);
		%feature("autodoc", "1");
		void Prepend(CDM_ListOfDocument & Other);
		%feature("autodoc", "1");
		void Append(const Handle_CDM_Document &I);
		%feature("autodoc", "1");
		void Append(const Handle_CDM_Document &I, CDM_ListIteratorOfListOfDocument & theIt);
		%feature("autodoc", "1");
		void Append(CDM_ListOfDocument & Other);
		%feature("autodoc", "1");
		Handle_CDM_Document & First() const;
		%feature("autodoc", "1");
		Handle_CDM_Document & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(CDM_ListIteratorOfListOfDocument & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_CDM_Document &I, CDM_ListIteratorOfListOfDocument & It);
		%feature("autodoc", "1");
		void InsertBefore(CDM_ListOfDocument & Other, CDM_ListIteratorOfListOfDocument & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_CDM_Document &I, CDM_ListIteratorOfListOfDocument & It);
		%feature("autodoc", "1");
		void InsertAfter(CDM_ListOfDocument & Other, CDM_ListIteratorOfListOfDocument & It);

};

%nodefaultctor CDM_ListIteratorOfListOfReferences;
class CDM_ListIteratorOfListOfReferences {
	public:
		%feature("autodoc", "1");
		~CDM_ListIteratorOfListOfReferences();
		%feature("autodoc", "1");
		CDM_ListIteratorOfListOfReferences();
		%feature("autodoc", "1");
		CDM_ListIteratorOfListOfReferences(const CDM_ListOfReferences &L);
		%feature("autodoc", "1");
		void Initialize(const CDM_ListOfReferences &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_CDM_Reference & Value() const;

};

%nodefaultctor CDM_ListNodeOfListOfReferences;
class CDM_ListNodeOfListOfReferences : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		CDM_ListNodeOfListOfReferences(const Handle_CDM_Reference &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_CDM_Reference & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~CDM_ListNodeOfListOfReferences();

};
%extend CDM_ListNodeOfListOfReferences {
	Handle_CDM_ListNodeOfListOfReferences GetHandle() {
	return *(Handle_CDM_ListNodeOfListOfReferences*) &$self;
	}
};

%nodefaultctor CDM_PresentationDirectory;
class CDM_PresentationDirectory : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		CDM_PresentationDirectory(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		CDM_PresentationDirectory & Assign(const CDM_PresentationDirectory &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~CDM_PresentationDirectory();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Handle_CDM_Document &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Handle_CDM_Document & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Handle_CDM_Document & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Handle_CDM_Document & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Handle_CDM_Document & operator()(const TCollection_ExtendedString &K);

};

%nodefaultctor CDM_DataMapNodeOfPresentationDirectory;
class CDM_DataMapNodeOfPresentationDirectory : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		CDM_DataMapNodeOfPresentationDirectory(const TCollection_ExtendedString &K, const Handle_CDM_Document &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Handle_CDM_Document & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~CDM_DataMapNodeOfPresentationDirectory();

};
%extend CDM_DataMapNodeOfPresentationDirectory {
	Handle_CDM_DataMapNodeOfPresentationDirectory GetHandle() {
	return *(Handle_CDM_DataMapNodeOfPresentationDirectory*) &$self;
	}
};

%nodefaultctor CDM_StdMapNodeOfMapOfDocument;
class CDM_StdMapNodeOfMapOfDocument : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		CDM_StdMapNodeOfMapOfDocument(const Handle_CDM_Document &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_CDM_Document & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~CDM_StdMapNodeOfMapOfDocument();

};
%extend CDM_StdMapNodeOfMapOfDocument {
	Handle_CDM_StdMapNodeOfMapOfDocument GetHandle() {
	return *(Handle_CDM_StdMapNodeOfMapOfDocument*) &$self;
	}
};

%nodefaultctor CDM_MapOfDocument;
class CDM_MapOfDocument : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		CDM_MapOfDocument(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		CDM_MapOfDocument & Assign(const CDM_MapOfDocument &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~CDM_MapOfDocument();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_CDM_Document &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_CDM_Document &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_CDM_Document &aKey);

};

%nodefaultctor CDM_NamesDirectory;
class CDM_NamesDirectory : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		CDM_NamesDirectory(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		CDM_NamesDirectory & Assign(const CDM_NamesDirectory &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~CDM_NamesDirectory();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const TCollection_ExtendedString &K);

};

%nodefaultctor CDM_StackNodeOfStackOfDocument;
class CDM_StackNodeOfStackOfDocument : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		CDM_StackNodeOfStackOfDocument(const Handle_CDM_Document &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_CDM_Document & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~CDM_StackNodeOfStackOfDocument();

};
%extend CDM_StackNodeOfStackOfDocument {
	Handle_CDM_StackNodeOfStackOfDocument GetHandle() {
	return *(Handle_CDM_StackNodeOfStackOfDocument*) &$self;
	}
};

%nodefaultctor CDM_MessageDriver;
class CDM_MessageDriver : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		virtual		void Write(const Standard_ExtString aString);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend CDM_MessageDriver {
	Handle_CDM_MessageDriver GetHandle() {
	return *(Handle_CDM_MessageDriver*) &$self;
	}
};

%nodefaultctor CDM_NullMessageDriver;
class CDM_NullMessageDriver : public CDM_MessageDriver {
	public:
		%feature("autodoc", "1");
		CDM_NullMessageDriver();
		%feature("autodoc", "1");
		virtual		~CDM_NullMessageDriver();

};
%extend CDM_NullMessageDriver {
	Handle_CDM_NullMessageDriver GetHandle() {
	return *(Handle_CDM_NullMessageDriver*) &$self;
	}
};

%nodefaultctor CDM_DataMapIteratorOfNamesDirectory;
class CDM_DataMapIteratorOfNamesDirectory : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~CDM_DataMapIteratorOfNamesDirectory();
		%feature("autodoc", "1");
		CDM_DataMapIteratorOfNamesDirectory();
		%feature("autodoc", "1");
		CDM_DataMapIteratorOfNamesDirectory(const CDM_NamesDirectory &aMap);
		%feature("autodoc", "1");
		void Initialize(const CDM_NamesDirectory &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};

%nodefaultctor CDM_ListIteratorOfListOfDocument;
class CDM_ListIteratorOfListOfDocument {
	public:
		%feature("autodoc", "1");
		~CDM_ListIteratorOfListOfDocument();
		%feature("autodoc", "1");
		CDM_ListIteratorOfListOfDocument();
		%feature("autodoc", "1");
		CDM_ListIteratorOfListOfDocument(const CDM_ListOfDocument &L);
		%feature("autodoc", "1");
		void Initialize(const CDM_ListOfDocument &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_CDM_Document & Value() const;

};

%nodefaultctor CDM_DataMapNodeOfMetaDataLookUpTable;
class CDM_DataMapNodeOfMetaDataLookUpTable : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		CDM_DataMapNodeOfMetaDataLookUpTable(const TCollection_ExtendedString &K, const Handle_CDM_MetaData &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Handle_CDM_MetaData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~CDM_DataMapNodeOfMetaDataLookUpTable();

};
%extend CDM_DataMapNodeOfMetaDataLookUpTable {
	Handle_CDM_DataMapNodeOfMetaDataLookUpTable GetHandle() {
	return *(Handle_CDM_DataMapNodeOfMetaDataLookUpTable*) &$self;
	}
};

%nodefaultctor CDM_Application;
class CDM_Application : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		virtual		Handle_Resource_Manager Resources();
		%feature("autodoc", "1");
		virtual		Handle_CDM_MessageDriver MessageDriver();
		%feature("autodoc", "1");
		virtual		void BeginOfUpdate(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		virtual		void EndOfUpdate(const Handle_CDM_Document &aDocument, const Standard_Boolean Status, const TCollection_ExtendedString &ErrorString);
		%feature("autodoc", "1");
		void Write(const Standard_ExtString aString);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend CDM_Application {
	Handle_CDM_Application GetHandle() {
	return *(Handle_CDM_Application*) &$self;
	}
};

%nodefaultctor CDM_MetaDataLookUpTable;
class CDM_MetaDataLookUpTable : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		CDM_MetaDataLookUpTable(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		CDM_MetaDataLookUpTable & Assign(const CDM_MetaDataLookUpTable &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~CDM_MetaDataLookUpTable();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Handle_CDM_MetaData &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Handle_CDM_MetaData & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Handle_CDM_MetaData & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Handle_CDM_MetaData & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Handle_CDM_MetaData & operator()(const TCollection_ExtendedString &K);

};

%nodefaultctor CDM_StackIteratorOfStackOfDocument;
class CDM_StackIteratorOfStackOfDocument {
	public:
		%feature("autodoc", "1");
		~CDM_StackIteratorOfStackOfDocument();
		%feature("autodoc", "1");
		CDM_StackIteratorOfStackOfDocument();
		%feature("autodoc", "1");
		CDM_StackIteratorOfStackOfDocument(const CDM_StackOfDocument &S);
		%feature("autodoc", "1");
		void Initialize(const CDM_StackOfDocument &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_CDM_Document & Value() const;

};

%nodefaultctor CDM_ListNodeOfListOfDocument;
class CDM_ListNodeOfListOfDocument : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		CDM_ListNodeOfListOfDocument(const Handle_CDM_Document &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_CDM_Document & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~CDM_ListNodeOfListOfDocument();

};
%extend CDM_ListNodeOfListOfDocument {
	Handle_CDM_ListNodeOfListOfDocument GetHandle() {
	return *(Handle_CDM_ListNodeOfListOfDocument*) &$self;
	}
};

%nodefaultctor CDM_ListOfReferences;
class CDM_ListOfReferences {
	public:
		%feature("autodoc", "1");
		CDM_ListOfReferences();
		%feature("autodoc", "1");
		void Assign(const CDM_ListOfReferences &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~CDM_ListOfReferences();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_CDM_Reference &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_CDM_Reference &I, CDM_ListIteratorOfListOfReferences & theIt);
		%feature("autodoc", "1");
		void Prepend(CDM_ListOfReferences & Other);
		%feature("autodoc", "1");
		void Append(const Handle_CDM_Reference &I);
		%feature("autodoc", "1");
		void Append(const Handle_CDM_Reference &I, CDM_ListIteratorOfListOfReferences & theIt);
		%feature("autodoc", "1");
		void Append(CDM_ListOfReferences & Other);
		%feature("autodoc", "1");
		Handle_CDM_Reference & First() const;
		%feature("autodoc", "1");
		Handle_CDM_Reference & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(CDM_ListIteratorOfListOfReferences & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_CDM_Reference &I, CDM_ListIteratorOfListOfReferences & It);
		%feature("autodoc", "1");
		void InsertBefore(CDM_ListOfReferences & Other, CDM_ListIteratorOfListOfReferences & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_CDM_Reference &I, CDM_ListIteratorOfListOfReferences & It);
		%feature("autodoc", "1");
		void InsertAfter(CDM_ListOfReferences & Other, CDM_ListIteratorOfListOfReferences & It);

};

%nodefaultctor CDM_DataMapNodeOfNamesDirectory;
class CDM_DataMapNodeOfNamesDirectory : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		CDM_DataMapNodeOfNamesDirectory(const TCollection_ExtendedString &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~CDM_DataMapNodeOfNamesDirectory();

};
%extend CDM_DataMapNodeOfNamesDirectory {
	Handle_CDM_DataMapNodeOfNamesDirectory GetHandle() {
	return *(Handle_CDM_DataMapNodeOfNamesDirectory*) &$self;
	}
};

%nodefaultctor CDM_DataMapIteratorOfPresentationDirectory;
class CDM_DataMapIteratorOfPresentationDirectory : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~CDM_DataMapIteratorOfPresentationDirectory();
		%feature("autodoc", "1");
		CDM_DataMapIteratorOfPresentationDirectory();
		%feature("autodoc", "1");
		CDM_DataMapIteratorOfPresentationDirectory(const CDM_PresentationDirectory &aMap);
		%feature("autodoc", "1");
		void Initialize(const CDM_PresentationDirectory &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Handle_CDM_Document & Value() const;

};

%nodefaultctor CDM_DataMapIteratorOfMetaDataLookUpTable;
class CDM_DataMapIteratorOfMetaDataLookUpTable : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~CDM_DataMapIteratorOfMetaDataLookUpTable();
		%feature("autodoc", "1");
		CDM_DataMapIteratorOfMetaDataLookUpTable();
		%feature("autodoc", "1");
		CDM_DataMapIteratorOfMetaDataLookUpTable(const CDM_MetaDataLookUpTable &aMap);
		%feature("autodoc", "1");
		void Initialize(const CDM_MetaDataLookUpTable &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Handle_CDM_MetaData & Value() const;

};

%nodefaultctor CDM_DocumentHasher;
class CDM_DocumentHasher {
	public:
		%feature("autodoc", "1");
		~CDM_DocumentHasher();
		%feature("autodoc", "1");
		CDM_DocumentHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Handle_CDM_Document &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Handle_CDM_Document &K1, const Handle_CDM_Document &K2);

};

%nodefaultctor CDM_COutMessageDriver;
class CDM_COutMessageDriver : public CDM_MessageDriver {
	public:
		%feature("autodoc", "1");
		CDM_COutMessageDriver();
		%feature("autodoc", "1");
		virtual		void Write(const Standard_ExtString aString);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~CDM_COutMessageDriver();

};
%extend CDM_COutMessageDriver {
	Handle_CDM_COutMessageDriver GetHandle() {
	return *(Handle_CDM_COutMessageDriver*) &$self;
	}
};

%nodefaultctor CDM_MapIteratorOfMapOfDocument;
class CDM_MapIteratorOfMapOfDocument : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~CDM_MapIteratorOfMapOfDocument();
		%feature("autodoc", "1");
		CDM_MapIteratorOfMapOfDocument();
		%feature("autodoc", "1");
		CDM_MapIteratorOfMapOfDocument(const CDM_MapOfDocument &aMap);
		%feature("autodoc", "1");
		void Initialize(const CDM_MapOfDocument &aMap);
		%feature("autodoc", "1");
		const Handle_CDM_Document & Key() const;

};

%nodefaultctor CDM_StackOfDocument;
class CDM_StackOfDocument {
	public:
		%feature("autodoc", "1");
		CDM_StackOfDocument();
		%feature("autodoc", "1");
		const CDM_StackOfDocument & Assign(const CDM_StackOfDocument &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Handle_CDM_Document & Top() const;
		%feature("autodoc", "1");
		void Push(const Handle_CDM_Document &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~CDM_StackOfDocument();
		%feature("autodoc", "1");
		Handle_CDM_Document & ChangeTop();

};

%nodefaultctor CDM_ReferenceIterator;
class CDM_ReferenceIterator {
	public:
		%feature("autodoc", "1");
		~CDM_ReferenceIterator();
		%feature("autodoc", "1");
		CDM_ReferenceIterator(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_CDM_Document Document() const;
		%feature("autodoc", "1");
		Standard_Integer ReferenceIdentifier() const;
		%feature("autodoc", "1");
		Standard_Integer DocumentVersion() const;

};

%nodefaultctor CDM_MetaData;
class CDM_MetaData : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDM_MetaData LookUp(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName, const TCollection_ExtendedString &aPath, const TCollection_ExtendedString &aFileName, const Standard_Boolean ReadOnly);
		%feature("autodoc", "1");
		Handle_CDM_MetaData LookUp(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName, const TCollection_ExtendedString &aPath, const TCollection_ExtendedString &aVersion, const TCollection_ExtendedString &aFileName, const Standard_Boolean ReadOnly);
		%feature("autodoc", "1");
		Standard_Boolean IsRetrieved() const;
		%feature("autodoc", "1");
		Handle_CDM_Document Document() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString Folder() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString Name() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString Version() const;
		%feature("autodoc", "1");
		Standard_Boolean HasVersion() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString FileName() const;
		%feature("autodoc", "1");
		Standard_OStream & Print(Standard_OStream & anOStream) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString Path() const;
		%feature("autodoc", "1");
		void UnsetDocument();
		%feature("autodoc", "1");
		Standard_Boolean IsReadOnly() const;
		%feature("autodoc", "1");
		void SetIsReadOnly();
		%feature("autodoc", "1");
		void UnsetIsReadOnly();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~CDM_MetaData();

};
%extend CDM_MetaData {
	Handle_CDM_MetaData GetHandle() {
	return *(Handle_CDM_MetaData*) &$self;
	}
};

%nodefaultctor CDM_Reference;
class CDM_Reference : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDM_Document FromDocument();
		%feature("autodoc", "1");
		Handle_CDM_Document ToDocument();
		%feature("autodoc", "1");
		Standard_Integer ReferenceIdentifier();
		%feature("autodoc", "1");
		Standard_Integer DocumentVersion() const;
		%feature("autodoc", "1");
		Standard_Boolean IsReadOnly() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~CDM_Reference();

};
%extend CDM_Reference {
	Handle_CDM_Reference GetHandle() {
	return *(Handle_CDM_Reference*) &$self;
	}
};