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
%module MDocStd

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


%include MDocStd_dependencies.i


%include MDocStd_headers.i




%nodefaultctor Handle_MDocStd_DocumentStorageDriver;
class Handle_MDocStd_DocumentStorageDriver : public Handle_PCDM_StorageDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MDocStd_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentStorageDriver(const Handle_MDocStd_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentStorageDriver(const MDocStd_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_DocumentStorageDriver {
	MDocStd_DocumentStorageDriver* GetObject() {
	return (MDocStd_DocumentStorageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MDocStd_DocumentRetrievalDriver;
class Handle_MDocStd_DocumentRetrievalDriver : public Handle_PCDM_RetrievalDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MDocStd_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentRetrievalDriver(const Handle_MDocStd_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentRetrievalDriver(const MDocStd_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_DocumentRetrievalDriver {
	MDocStd_DocumentRetrievalDriver* GetObject() {
	return (MDocStd_DocumentRetrievalDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MDocStd_XLinkRetrievalDriver;
class Handle_MDocStd_XLinkRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MDocStd_XLinkRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkRetrievalDriver(const Handle_MDocStd_XLinkRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkRetrievalDriver(const MDocStd_XLinkRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_XLinkRetrievalDriver {
	MDocStd_XLinkRetrievalDriver* GetObject() {
	return (MDocStd_XLinkRetrievalDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MDocStd_XLinkStorageDriver;
class Handle_MDocStd_XLinkStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MDocStd_XLinkStorageDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkStorageDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkStorageDriver(const Handle_MDocStd_XLinkStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkStorageDriver(const MDocStd_XLinkStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_XLinkStorageDriver {
	MDocStd_XLinkStorageDriver* GetObject() {
	return (MDocStd_XLinkStorageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MDocStd_ListNodeOfDocEntryList;
class Handle_MDocStd_ListNodeOfDocEntryList : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_MDocStd_ListNodeOfDocEntryList();
		%feature("autodoc", "1");
		Handle_MDocStd_ListNodeOfDocEntryList();
		%feature("autodoc", "1");
		Handle_MDocStd_ListNodeOfDocEntryList(const Handle_MDocStd_ListNodeOfDocEntryList &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_ListNodeOfDocEntryList(const MDocStd_ListNodeOfDocEntryList *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_ListNodeOfDocEntryList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_ListNodeOfDocEntryList {
	MDocStd_ListNodeOfDocEntryList* GetObject() {
	return (MDocStd_ListNodeOfDocEntryList*)$self->Access();
	}
};

%nodefaultctor Handle_MDocStd_StdMapNodeOfPersistentMap;
class Handle_MDocStd_StdMapNodeOfPersistentMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_MDocStd_StdMapNodeOfPersistentMap();
		%feature("autodoc", "1");
		Handle_MDocStd_StdMapNodeOfPersistentMap();
		%feature("autodoc", "1");
		Handle_MDocStd_StdMapNodeOfPersistentMap(const Handle_MDocStd_StdMapNodeOfPersistentMap &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_StdMapNodeOfPersistentMap(const MDocStd_StdMapNodeOfPersistentMap *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_StdMapNodeOfPersistentMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_StdMapNodeOfPersistentMap {
	MDocStd_StdMapNodeOfPersistentMap* GetObject() {
	return (MDocStd_StdMapNodeOfPersistentMap*)$self->Access();
	}
};

%nodefaultctor MDocStd_StdMapNodeOfPersistentMap;
class MDocStd_StdMapNodeOfPersistentMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MDocStd_StdMapNodeOfPersistentMap(const Handle_Standard_Persistent &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDocStd_StdMapNodeOfPersistentMap();

};
%extend MDocStd_StdMapNodeOfPersistentMap {
	Handle_MDocStd_StdMapNodeOfPersistentMap GetHandle() {
	return *(Handle_MDocStd_StdMapNodeOfPersistentMap*) &$self;
	}
};

%nodefaultctor MDocStd_DocumentRetrievalDriver;
class MDocStd_DocumentRetrievalDriver : public PCDM_RetrievalDriver {
	public:
		%feature("autodoc", "1");
		MDocStd_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		void Paste(const Handle_PDocStd_Document &PDOC, const Handle_TDocStd_Document &TDOC, const Handle_MDF_RRelocationTable &aReloc);
		%feature("autodoc", "1");
		virtual		void Make(const Handle_PCDM_Document &aPCDM, const Handle_CDM_Document &aCDM);
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString SchemaName() const;
		%feature("autodoc", "1");
		virtual		Handle_CDM_Document CreateDocument();
		%feature("autodoc", "1");
		virtual		Handle_MDF_ARDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDocStd_DocumentRetrievalDriver();

};
%extend MDocStd_DocumentRetrievalDriver {
	Handle_MDocStd_DocumentRetrievalDriver GetHandle() {
	return *(Handle_MDocStd_DocumentRetrievalDriver*) &$self;
	}
};

%nodefaultctor MDocStd_XLinkRetrievalDriver;
class MDocStd_XLinkRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDocStd_XLinkRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &aSource, const Handle_TDF_Attribute &aTarget, const Handle_MDF_RRelocationTable &aRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDocStd_XLinkRetrievalDriver();

};
%extend MDocStd_XLinkRetrievalDriver {
	Handle_MDocStd_XLinkRetrievalDriver GetHandle() {
	return *(Handle_MDocStd_XLinkRetrievalDriver*) &$self;
	}
};

%nodefaultctor MDocStd_ListNodeOfDocEntryList;
class MDocStd_ListNodeOfDocEntryList : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MDocStd_ListNodeOfDocEntryList(const TCollection_AsciiString &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDocStd_ListNodeOfDocEntryList();

};
%extend MDocStd_ListNodeOfDocEntryList {
	Handle_MDocStd_ListNodeOfDocEntryList GetHandle() {
	return *(Handle_MDocStd_ListNodeOfDocEntryList*) &$self;
	}
};

%nodefaultctor MDocStd_DocumentStorageDriver;
class MDocStd_DocumentStorageDriver : public PCDM_StorageDriver {
	public:
		%feature("autodoc", "1");
		MDocStd_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		Handle_PCDM_Document CreateDocument();
		%feature("autodoc", "1");
		void Paste(const Handle_TDocStd_Document &TDOC, const Handle_PDocStd_Document &PDOC, const Handle_MDF_SRelocationTable &aReloc);
		%feature("autodoc", "1");
		virtual		Handle_PCDM_Document Make(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString SchemaName() const;
		%feature("autodoc", "1");
		virtual		Handle_MDF_ASDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDocStd_DocumentStorageDriver();

};
%extend MDocStd_DocumentStorageDriver {
	Handle_MDocStd_DocumentStorageDriver GetHandle() {
	return *(Handle_MDocStd_DocumentStorageDriver*) &$self;
	}
};

%nodefaultctor MDocStd_MapIteratorOfPersistentMap;
class MDocStd_MapIteratorOfPersistentMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~MDocStd_MapIteratorOfPersistentMap();
		%feature("autodoc", "1");
		MDocStd_MapIteratorOfPersistentMap();
		%feature("autodoc", "1");
		MDocStd_MapIteratorOfPersistentMap(const MDocStd_PersistentMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const MDocStd_PersistentMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Key() const;

};

%nodefaultctor MDocStd_ListIteratorOfDocEntryList;
class MDocStd_ListIteratorOfDocEntryList {
	public:
		%feature("autodoc", "1");
		~MDocStd_ListIteratorOfDocEntryList();
		%feature("autodoc", "1");
		MDocStd_ListIteratorOfDocEntryList();
		%feature("autodoc", "1");
		MDocStd_ListIteratorOfDocEntryList(const MDocStd_DocEntryList &L);
		%feature("autodoc", "1");
		void Initialize(const MDocStd_DocEntryList &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TCollection_AsciiString & Value() const;

};

%nodefaultctor MDocStd_DocEntryList;
class MDocStd_DocEntryList {
	public:
		%feature("autodoc", "1");
		MDocStd_DocEntryList();
		%feature("autodoc", "1");
		void Assign(const MDocStd_DocEntryList &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MDocStd_DocEntryList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		void Prepend(const TCollection_AsciiString &I, MDocStd_ListIteratorOfDocEntryList & theIt);
		%feature("autodoc", "1");
		void Prepend(MDocStd_DocEntryList & Other);
		%feature("autodoc", "1");
		void Append(const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		void Append(const TCollection_AsciiString &I, MDocStd_ListIteratorOfDocEntryList & theIt);
		%feature("autodoc", "1");
		void Append(MDocStd_DocEntryList & Other);
		%feature("autodoc", "1");
		TCollection_AsciiString & First() const;
		%feature("autodoc", "1");
		TCollection_AsciiString & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(MDocStd_ListIteratorOfDocEntryList & It);
		%feature("autodoc", "1");
		void InsertBefore(const TCollection_AsciiString &I, MDocStd_ListIteratorOfDocEntryList & It);
		%feature("autodoc", "1");
		void InsertBefore(MDocStd_DocEntryList & Other, MDocStd_ListIteratorOfDocEntryList & It);
		%feature("autodoc", "1");
		void InsertAfter(const TCollection_AsciiString &I, MDocStd_ListIteratorOfDocEntryList & It);
		%feature("autodoc", "1");
		void InsertAfter(MDocStd_DocEntryList & Other, MDocStd_ListIteratorOfDocEntryList & It);

};

%nodefaultctor MDocStd_XLinkStorageDriver;
class MDocStd_XLinkStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDocStd_XLinkStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &aSource, const Handle_PDF_Attribute &aTarget, const Handle_MDF_SRelocationTable &aRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDocStd_XLinkStorageDriver();

};
%extend MDocStd_XLinkStorageDriver {
	Handle_MDocStd_XLinkStorageDriver GetHandle() {
	return *(Handle_MDocStd_XLinkStorageDriver*) &$self;
	}
};

%nodefaultctor MDocStd_PersistentMap;
class MDocStd_PersistentMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MDocStd_PersistentMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MDocStd_PersistentMap & Assign(const MDocStd_PersistentMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MDocStd_PersistentMap();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Persistent &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Persistent &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Standard_Persistent &aKey);

};

%nodefaultctor MDocStd;
class MDocStd {
	public:
		%feature("autodoc", "1");
		~MDocStd();
		%feature("autodoc", "1");
		MDocStd();
		%feature("autodoc", "1");
		void AddStorageDrivers(const Handle_MDF_ASDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		void AddRetrievalDrivers(const Handle_MDF_ARDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		void WeightWatcher(const Handle_TDF_Data &aSource, const Handle_MDF_SRelocationTable &aReloc, const MDocStd_DocEntryList &aEntry);
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};