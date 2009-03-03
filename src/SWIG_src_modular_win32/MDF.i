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
%module MDF

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


%include MDF_dependencies.i


%include MDF_headers.i




%nodefaultctor Handle_MDF_ARDriverHSequence;
class Handle_MDF_ARDriverHSequence : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_ARDriverHSequence();
		%feature("autodoc", "1");
		Handle_MDF_ARDriverHSequence();
		%feature("autodoc", "1");
		Handle_MDF_ARDriverHSequence(const Handle_MDF_ARDriverHSequence &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_ARDriverHSequence(const MDF_ARDriverHSequence *anItem);
		%feature("autodoc", "1");
		Handle_MDF_ARDriverHSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_ARDriverHSequence {
	MDF_ARDriverHSequence* GetObject() {
	return (MDF_ARDriverHSequence*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_ARDriverTable;
class Handle_MDF_ARDriverTable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_ARDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_ARDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_ARDriverTable(const Handle_MDF_ARDriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_ARDriverTable(const MDF_ARDriverTable *anItem);
		%feature("autodoc", "1");
		Handle_MDF_ARDriverTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_ARDriverTable {
	MDF_ARDriverTable* GetObject() {
	return (MDF_ARDriverTable*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_ListNodeOfDriverListOfARDriverTable;
class Handle_MDF_ListNodeOfDriverListOfARDriverTable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_ListNodeOfDriverListOfARDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_ListNodeOfDriverListOfARDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_ListNodeOfDriverListOfARDriverTable(const Handle_MDF_ListNodeOfDriverListOfARDriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_ListNodeOfDriverListOfARDriverTable(const MDF_ListNodeOfDriverListOfARDriverTable *anItem);
		%feature("autodoc", "1");
		Handle_MDF_ListNodeOfDriverListOfARDriverTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_ListNodeOfDriverListOfARDriverTable {
	MDF_ListNodeOfDriverListOfARDriverTable* GetObject() {
	return (MDF_ListNodeOfDriverListOfARDriverTable*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable;
class Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable(const Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable(const MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable *anItem);
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable {
	MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable* GetObject() {
	return (MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_ASDriver;
class Handle_MDF_ASDriver : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_ASDriver();
		%feature("autodoc", "1");
		Handle_MDF_ASDriver();
		%feature("autodoc", "1");
		Handle_MDF_ASDriver(const Handle_MDF_ASDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_ASDriver(const MDF_ASDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDF_ASDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_ASDriver {
	MDF_ASDriver* GetObject() {
	return (MDF_ASDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_ReferenceStorageDriver;
class Handle_MDF_ReferenceStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_ReferenceStorageDriver();
		%feature("autodoc", "1");
		Handle_MDF_ReferenceStorageDriver();
		%feature("autodoc", "1");
		Handle_MDF_ReferenceStorageDriver(const Handle_MDF_ReferenceStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_ReferenceStorageDriver(const MDF_ReferenceStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDF_ReferenceStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_ReferenceStorageDriver {
	MDF_ReferenceStorageDriver* GetObject() {
	return (MDF_ReferenceStorageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_ARDriver;
class Handle_MDF_ARDriver : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_ARDriver();
		%feature("autodoc", "1");
		Handle_MDF_ARDriver();
		%feature("autodoc", "1");
		Handle_MDF_ARDriver(const Handle_MDF_ARDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_ARDriver(const MDF_ARDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDF_ARDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_ARDriver {
	MDF_ARDriver* GetObject() {
	return (MDF_ARDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_ReferenceRetrievalDriver;
class Handle_MDF_ReferenceRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_ReferenceRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDF_ReferenceRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDF_ReferenceRetrievalDriver(const Handle_MDF_ReferenceRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_ReferenceRetrievalDriver(const MDF_ReferenceRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDF_ReferenceRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_ReferenceRetrievalDriver {
	MDF_ReferenceRetrievalDriver* GetObject() {
	return (MDF_ReferenceRetrievalDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_TagSourceRetrievalDriver;
class Handle_MDF_TagSourceRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_TagSourceRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDF_TagSourceRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDF_TagSourceRetrievalDriver(const Handle_MDF_TagSourceRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_TagSourceRetrievalDriver(const MDF_TagSourceRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDF_TagSourceRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_TagSourceRetrievalDriver {
	MDF_TagSourceRetrievalDriver* GetObject() {
	return (MDF_TagSourceRetrievalDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_ASDriverTable;
class Handle_MDF_ASDriverTable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_ASDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_ASDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_ASDriverTable(const Handle_MDF_ASDriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_ASDriverTable(const MDF_ASDriverTable *anItem);
		%feature("autodoc", "1");
		Handle_MDF_ASDriverTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_ASDriverTable {
	MDF_ASDriverTable* GetObject() {
	return (MDF_ASDriverTable*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_RRelocationTable;
class Handle_MDF_RRelocationTable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_RRelocationTable();
		%feature("autodoc", "1");
		Handle_MDF_RRelocationTable();
		%feature("autodoc", "1");
		Handle_MDF_RRelocationTable(const Handle_MDF_RRelocationTable &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_RRelocationTable(const MDF_RRelocationTable *anItem);
		%feature("autodoc", "1");
		Handle_MDF_RRelocationTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_RRelocationTable {
	MDF_RRelocationTable* GetObject() {
	return (MDF_RRelocationTable*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_ListNodeOfDriverListOfASDriverTable;
class Handle_MDF_ListNodeOfDriverListOfASDriverTable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_ListNodeOfDriverListOfASDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_ListNodeOfDriverListOfASDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_ListNodeOfDriverListOfASDriverTable(const Handle_MDF_ListNodeOfDriverListOfASDriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_ListNodeOfDriverListOfASDriverTable(const MDF_ListNodeOfDriverListOfASDriverTable *anItem);
		%feature("autodoc", "1");
		Handle_MDF_ListNodeOfDriverListOfASDriverTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_ListNodeOfDriverListOfASDriverTable {
	MDF_ListNodeOfDriverListOfASDriverTable* GetObject() {
	return (MDF_ListNodeOfDriverListOfASDriverTable*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_ASDriverHSequence;
class Handle_MDF_ASDriverHSequence : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_ASDriverHSequence();
		%feature("autodoc", "1");
		Handle_MDF_ASDriverHSequence();
		%feature("autodoc", "1");
		Handle_MDF_ASDriverHSequence(const Handle_MDF_ASDriverHSequence &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_ASDriverHSequence(const MDF_ASDriverHSequence *anItem);
		%feature("autodoc", "1");
		Handle_MDF_ASDriverHSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_ASDriverHSequence {
	MDF_ASDriverHSequence* GetObject() {
	return (MDF_ASDriverHSequence*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_DataMapNodeOfTypeASDriverMap;
class Handle_MDF_DataMapNodeOfTypeASDriverMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_DataMapNodeOfTypeASDriverMap();
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeASDriverMap();
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeASDriverMap(const Handle_MDF_DataMapNodeOfTypeASDriverMap &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeASDriverMap(const MDF_DataMapNodeOfTypeASDriverMap *anItem);
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeASDriverMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_DataMapNodeOfTypeASDriverMap {
	MDF_DataMapNodeOfTypeASDriverMap* GetObject() {
	return (MDF_DataMapNodeOfTypeASDriverMap*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_DataMapNodeOfTypeARDriverMap;
class Handle_MDF_DataMapNodeOfTypeARDriverMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_DataMapNodeOfTypeARDriverMap();
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeARDriverMap();
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeARDriverMap(const Handle_MDF_DataMapNodeOfTypeARDriverMap &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeARDriverMap(const MDF_DataMapNodeOfTypeARDriverMap *anItem);
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeARDriverMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_DataMapNodeOfTypeARDriverMap {
	MDF_DataMapNodeOfTypeARDriverMap* GetObject() {
	return (MDF_DataMapNodeOfTypeARDriverMap*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_SRelocationTable;
class Handle_MDF_SRelocationTable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_SRelocationTable();
		%feature("autodoc", "1");
		Handle_MDF_SRelocationTable();
		%feature("autodoc", "1");
		Handle_MDF_SRelocationTable(const Handle_MDF_SRelocationTable &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_SRelocationTable(const MDF_SRelocationTable *anItem);
		%feature("autodoc", "1");
		Handle_MDF_SRelocationTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_SRelocationTable {
	MDF_SRelocationTable* GetObject() {
	return (MDF_SRelocationTable*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_SequenceNodeOfARDriverSequence;
class Handle_MDF_SequenceNodeOfARDriverSequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_SequenceNodeOfARDriverSequence();
		%feature("autodoc", "1");
		Handle_MDF_SequenceNodeOfARDriverSequence();
		%feature("autodoc", "1");
		Handle_MDF_SequenceNodeOfARDriverSequence(const Handle_MDF_SequenceNodeOfARDriverSequence &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_SequenceNodeOfARDriverSequence(const MDF_SequenceNodeOfARDriverSequence *anItem);
		%feature("autodoc", "1");
		Handle_MDF_SequenceNodeOfARDriverSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_SequenceNodeOfARDriverSequence {
	MDF_SequenceNodeOfARDriverSequence* GetObject() {
	return (MDF_SequenceNodeOfARDriverSequence*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable;
class Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable();
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable(const Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable(const MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable *anItem);
		%feature("autodoc", "1");
		Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable {
	MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable* GetObject() {
	return (MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_TagSourceStorageDriver;
class Handle_MDF_TagSourceStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_TagSourceStorageDriver();
		%feature("autodoc", "1");
		Handle_MDF_TagSourceStorageDriver();
		%feature("autodoc", "1");
		Handle_MDF_TagSourceStorageDriver(const Handle_MDF_TagSourceStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_TagSourceStorageDriver(const MDF_TagSourceStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDF_TagSourceStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_TagSourceStorageDriver {
	MDF_TagSourceStorageDriver* GetObject() {
	return (MDF_TagSourceStorageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MDF_SequenceNodeOfASDriverSequence;
class Handle_MDF_SequenceNodeOfASDriverSequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_MDF_SequenceNodeOfASDriverSequence();
		%feature("autodoc", "1");
		Handle_MDF_SequenceNodeOfASDriverSequence();
		%feature("autodoc", "1");
		Handle_MDF_SequenceNodeOfASDriverSequence(const Handle_MDF_SequenceNodeOfASDriverSequence &aHandle);
		%feature("autodoc", "1");
		Handle_MDF_SequenceNodeOfASDriverSequence(const MDF_SequenceNodeOfASDriverSequence *anItem);
		%feature("autodoc", "1");
		Handle_MDF_SequenceNodeOfASDriverSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDF_SequenceNodeOfASDriverSequence {
	MDF_SequenceNodeOfASDriverSequence* GetObject() {
	return (MDF_SequenceNodeOfASDriverSequence*)$self->Access();
	}
};

%nodefaultctor MDF_DataMapNodeOfTypeARDriverMap;
class MDF_DataMapNodeOfTypeARDriverMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MDF_DataMapNodeOfTypeARDriverMap(const Handle_Standard_Type &K, const Handle_MDF_ARDriver &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_DataMapNodeOfTypeARDriverMap();

};
%extend MDF_DataMapNodeOfTypeARDriverMap {
	Handle_MDF_DataMapNodeOfTypeARDriverMap GetHandle() {
	return *(Handle_MDF_DataMapNodeOfTypeARDriverMap*) &$self;
	}
};

%nodefaultctor MDF_DataMapIteratorOfTypeDriverListMapOfASDriverTable;
class MDF_DataMapIteratorOfTypeDriverListMapOfASDriverTable : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~MDF_DataMapIteratorOfTypeDriverListMapOfASDriverTable();
		%feature("autodoc", "1");
		MDF_DataMapIteratorOfTypeDriverListMapOfASDriverTable();
		%feature("autodoc", "1");
		MDF_DataMapIteratorOfTypeDriverListMapOfASDriverTable(const MDF_TypeDriverListMapOfASDriverTable &aMap);
		%feature("autodoc", "1");
		void Initialize(const MDF_TypeDriverListMapOfASDriverTable &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		const MDF_DriverListOfASDriverTable & Value() const;

};

%nodefaultctor MDF_ASDriver;
class MDF_ASDriver : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &aSource, const Handle_PDF_Attribute &aTarget, const Handle_MDF_SRelocationTable &aRelocTable) const;
		%feature("autodoc", "1");
		void WriteMessage(const TCollection_ExtendedString &theMessage) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDF_ASDriver {
	Handle_MDF_ASDriver GetHandle() {
	return *(Handle_MDF_ASDriver*) &$self;
	}
};

%nodefaultctor MDF_TagSourceStorageDriver;
class MDF_TagSourceStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDF_TagSourceStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		~MDF_TagSourceStorageDriver();

};
%extend MDF_TagSourceStorageDriver {
	Handle_MDF_TagSourceStorageDriver GetHandle() {
	return *(Handle_MDF_TagSourceStorageDriver*) &$self;
	}
};

%nodefaultctor MDF_ListNodeOfDriverListOfARDriverTable;
class MDF_ListNodeOfDriverListOfARDriverTable : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MDF_ListNodeOfDriverListOfARDriverTable(const Handle_MDF_ARDriver &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_ListNodeOfDriverListOfARDriverTable();

};
%extend MDF_ListNodeOfDriverListOfARDriverTable {
	Handle_MDF_ListNodeOfDriverListOfARDriverTable GetHandle() {
	return *(Handle_MDF_ListNodeOfDriverListOfARDriverTable*) &$self;
	}
};

%nodefaultctor MDF_DriverListOfARDriverTable;
class MDF_DriverListOfARDriverTable {
	public:
		%feature("autodoc", "1");
		MDF_DriverListOfARDriverTable();
		%feature("autodoc", "1");
		void Assign(const MDF_DriverListOfARDriverTable &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MDF_DriverListOfARDriverTable();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_MDF_ARDriver &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_MDF_ARDriver &I, MDF_ListIteratorOfDriverListOfARDriverTable & theIt);
		%feature("autodoc", "1");
		void Prepend(MDF_DriverListOfARDriverTable & Other);
		%feature("autodoc", "1");
		void Append(const Handle_MDF_ARDriver &I);
		%feature("autodoc", "1");
		void Append(const Handle_MDF_ARDriver &I, MDF_ListIteratorOfDriverListOfARDriverTable & theIt);
		%feature("autodoc", "1");
		void Append(MDF_DriverListOfARDriverTable & Other);
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & First() const;
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(MDF_ListIteratorOfDriverListOfARDriverTable & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_MDF_ARDriver &I, MDF_ListIteratorOfDriverListOfARDriverTable & It);
		%feature("autodoc", "1");
		void InsertBefore(MDF_DriverListOfARDriverTable & Other, MDF_ListIteratorOfDriverListOfARDriverTable & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_MDF_ARDriver &I, MDF_ListIteratorOfDriverListOfARDriverTable & It);
		%feature("autodoc", "1");
		void InsertAfter(MDF_DriverListOfARDriverTable & Other, MDF_ListIteratorOfDriverListOfARDriverTable & It);

};

%nodefaultctor MDF;
class MDF {
	public:
		%feature("autodoc", "1");
		~MDF();
		%feature("autodoc", "1");
		MDF();
		%feature("autodoc", "1");
		void FromTo(const Handle_TDF_Data &aSource, Handle_PDF_Data & aTarget, const Handle_MDF_ASDriverTable &aDriverTable, const Handle_MDF_SRelocationTable &aReloc, const Standard_Integer aVersion=0);
		%feature("autodoc", "1");
		void FromTo(const Handle_PDF_Data &aSource, Handle_TDF_Data & aTarget, const Handle_MDF_ARDriverTable &aDriverTable, const Handle_MDF_RRelocationTable &aReloc);
		%feature("autodoc", "1");
		void AddStorageDrivers(const Handle_MDF_ASDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		void AddRetrievalDrivers(const Handle_MDF_ARDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);

};

%nodefaultctor MDF_DataMapIteratorOfTypeARDriverMap;
class MDF_DataMapIteratorOfTypeARDriverMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~MDF_DataMapIteratorOfTypeARDriverMap();
		%feature("autodoc", "1");
		MDF_DataMapIteratorOfTypeARDriverMap();
		%feature("autodoc", "1");
		MDF_DataMapIteratorOfTypeARDriverMap(const MDF_TypeARDriverMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const MDF_TypeARDriverMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		const Handle_MDF_ARDriver & Value() const;

};

%nodefaultctor MDF_DataMapNodeOfTypeASDriverMap;
class MDF_DataMapNodeOfTypeASDriverMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MDF_DataMapNodeOfTypeASDriverMap(const Handle_Standard_Type &K, const Handle_MDF_ASDriver &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_DataMapNodeOfTypeASDriverMap();

};
%extend MDF_DataMapNodeOfTypeASDriverMap {
	Handle_MDF_DataMapNodeOfTypeASDriverMap GetHandle() {
	return *(Handle_MDF_DataMapNodeOfTypeASDriverMap*) &$self;
	}
};

%nodefaultctor MDF_TypeARDriverMap;
class MDF_TypeARDriverMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MDF_TypeARDriverMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MDF_TypeARDriverMap & Assign(const MDF_TypeARDriverMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MDF_TypeARDriverMap();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Type &K, const Handle_MDF_ARDriver &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		const Handle_MDF_ARDriver & Find(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		const Handle_MDF_ARDriver & operator()(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & ChangeFind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & operator()(const Handle_Standard_Type &K);

};

%nodefaultctor MDF_ARDriver;
class MDF_ARDriver : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &aSource, const Handle_TDF_Attribute &aTarget, const Handle_MDF_RRelocationTable &aRelocTable) const;
		%feature("autodoc", "1");
		void WriteMessage(const TCollection_ExtendedString &theMessage) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDF_ARDriver {
	Handle_MDF_ARDriver GetHandle() {
	return *(Handle_MDF_ARDriver*) &$self;
	}
};

%nodefaultctor MDF_TagSourceRetrievalDriver;
class MDF_TagSourceRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDF_TagSourceRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		~MDF_TagSourceRetrievalDriver();

};
%extend MDF_TagSourceRetrievalDriver {
	Handle_MDF_TagSourceRetrievalDriver GetHandle() {
	return *(Handle_MDF_TagSourceRetrievalDriver*) &$self;
	}
};

%nodefaultctor MDF_ASDriverTable;
class MDF_ASDriverTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MDF_ASDriverTable();
		%feature("autodoc", "1");
		void SetDriver(const Handle_MDF_ASDriver &anHDriver);
		%feature("autodoc", "1");
		void SetDrivers(const Handle_MDF_ASDriverHSequence &aDriverHSeq);
		%feature("autodoc", "1");
		const MDF_TypeASDriverMap & GetDrivers(const Standard_Integer aVersion=0);
		%feature("autodoc", "1");
		Standard_Boolean GetDriver(const Handle_Standard_Type &aType, Handle_MDF_ASDriver & anHDriver, const Standard_Integer aVersion=0) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_ASDriverTable();

};
%extend MDF_ASDriverTable {
	Handle_MDF_ASDriverTable GetHandle() {
	return *(Handle_MDF_ASDriverTable*) &$self;
	}
};

%nodefaultctor MDF_ListIteratorOfDriverListOfASDriverTable;
class MDF_ListIteratorOfDriverListOfASDriverTable {
	public:
		%feature("autodoc", "1");
		~MDF_ListIteratorOfDriverListOfASDriverTable();
		%feature("autodoc", "1");
		MDF_ListIteratorOfDriverListOfASDriverTable();
		%feature("autodoc", "1");
		MDF_ListIteratorOfDriverListOfASDriverTable(const MDF_DriverListOfASDriverTable &L);
		%feature("autodoc", "1");
		void Initialize(const MDF_DriverListOfASDriverTable &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & Value() const;

};

%nodefaultctor MDF_ARDriverTable;
class MDF_ARDriverTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MDF_ARDriverTable();
		%feature("autodoc", "1");
		void SetDriver(const Handle_MDF_ARDriver &anHDriver);
		%feature("autodoc", "1");
		void SetDrivers(const Handle_MDF_ARDriverHSequence &aDriverHSeq);
		%feature("autodoc", "1");
		const MDF_TypeARDriverMap & GetDrivers(const Standard_Integer aVersion=0);
		%feature("autodoc", "1");
		Standard_Boolean GetDriver(const Handle_Standard_Type &aType, Handle_MDF_ARDriver & anHDriver, const Standard_Integer aVersion=0) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_ARDriverTable();

};
%extend MDF_ARDriverTable {
	Handle_MDF_ARDriverTable GetHandle() {
	return *(Handle_MDF_ARDriverTable*) &$self;
	}
};

%nodefaultctor MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable;
class MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable(const Handle_Standard_Type &K, const MDF_DriverListOfARDriverTable &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		MDF_DriverListOfARDriverTable & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable();

};
%extend MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable {
	Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable GetHandle() {
	return *(Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable*) &$self;
	}
};

%nodefaultctor MDF_DriverListOfASDriverTable;
class MDF_DriverListOfASDriverTable {
	public:
		%feature("autodoc", "1");
		MDF_DriverListOfASDriverTable();
		%feature("autodoc", "1");
		void Assign(const MDF_DriverListOfASDriverTable &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MDF_DriverListOfASDriverTable();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_MDF_ASDriver &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_MDF_ASDriver &I, MDF_ListIteratorOfDriverListOfASDriverTable & theIt);
		%feature("autodoc", "1");
		void Prepend(MDF_DriverListOfASDriverTable & Other);
		%feature("autodoc", "1");
		void Append(const Handle_MDF_ASDriver &I);
		%feature("autodoc", "1");
		void Append(const Handle_MDF_ASDriver &I, MDF_ListIteratorOfDriverListOfASDriverTable & theIt);
		%feature("autodoc", "1");
		void Append(MDF_DriverListOfASDriverTable & Other);
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & First() const;
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(MDF_ListIteratorOfDriverListOfASDriverTable & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_MDF_ASDriver &I, MDF_ListIteratorOfDriverListOfASDriverTable & It);
		%feature("autodoc", "1");
		void InsertBefore(MDF_DriverListOfASDriverTable & Other, MDF_ListIteratorOfDriverListOfASDriverTable & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_MDF_ASDriver &I, MDF_ListIteratorOfDriverListOfASDriverTable & It);
		%feature("autodoc", "1");
		void InsertAfter(MDF_DriverListOfASDriverTable & Other, MDF_ListIteratorOfDriverListOfASDriverTable & It);

};

%nodefaultctor MDF_ListNodeOfDriverListOfASDriverTable;
class MDF_ListNodeOfDriverListOfASDriverTable : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MDF_ListNodeOfDriverListOfASDriverTable(const Handle_MDF_ASDriver &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_ListNodeOfDriverListOfASDriverTable();

};
%extend MDF_ListNodeOfDriverListOfASDriverTable {
	Handle_MDF_ListNodeOfDriverListOfASDriverTable GetHandle() {
	return *(Handle_MDF_ListNodeOfDriverListOfASDriverTable*) &$self;
	}
};

%nodefaultctor MDF_ReferenceStorageDriver;
class MDF_ReferenceStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDF_ReferenceStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_ReferenceStorageDriver();

};
%extend MDF_ReferenceStorageDriver {
	Handle_MDF_ReferenceStorageDriver GetHandle() {
	return *(Handle_MDF_ReferenceStorageDriver*) &$self;
	}
};

%nodefaultctor MDF_DataMapIteratorOfTypeDriverListMapOfARDriverTable;
class MDF_DataMapIteratorOfTypeDriverListMapOfARDriverTable : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~MDF_DataMapIteratorOfTypeDriverListMapOfARDriverTable();
		%feature("autodoc", "1");
		MDF_DataMapIteratorOfTypeDriverListMapOfARDriverTable();
		%feature("autodoc", "1");
		MDF_DataMapIteratorOfTypeDriverListMapOfARDriverTable(const MDF_TypeDriverListMapOfARDriverTable &aMap);
		%feature("autodoc", "1");
		void Initialize(const MDF_TypeDriverListMapOfARDriverTable &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		const MDF_DriverListOfARDriverTable & Value() const;

};

%nodefaultctor MDF_SRelocationTable;
class MDF_SRelocationTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MDF_SRelocationTable(const Standard_Boolean theSelfRelocation=0);
		%feature("autodoc", "1");
		void SetSelfRelocation(const Standard_Boolean theStatus=1);
		%feature("autodoc", "1");
		Standard_Boolean IsSelfRelocation() const;
		%feature("autodoc", "1");
		void SetRelocation(const Handle_TDF_Attribute &aSourceAttribute, const Handle_PDF_Attribute &aTargetAttribute);
		%feature("autodoc", "1");
		Standard_Boolean HasRelocation(const Handle_TDF_Attribute &aSourceAttribute, Handle_PDF_Attribute & aTargetAttribute);
		%feature("autodoc", "1");
		void SetOtherRelocation(const Handle_Standard_Transient &aSource, const Handle_Standard_Persistent &aTarget);
		%feature("autodoc", "1");
		Standard_Boolean HasOtherRelocation(const Handle_Standard_Transient &aSource, Handle_Standard_Persistent & aTarget);
		%feature("autodoc", "1");
		PTColStd_TransientPersistentMap & AttributeTable();
		%feature("autodoc", "1");
		PTColStd_TransientPersistentMap & OtherTable();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_SRelocationTable();

};
%extend MDF_SRelocationTable {
	Handle_MDF_SRelocationTable GetHandle() {
	return *(Handle_MDF_SRelocationTable*) &$self;
	}
};

%nodefaultctor MDF_TypeDriverListMapOfARDriverTable;
class MDF_TypeDriverListMapOfARDriverTable : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MDF_TypeDriverListMapOfARDriverTable(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MDF_TypeDriverListMapOfARDriverTable & Assign(const MDF_TypeDriverListMapOfARDriverTable &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MDF_TypeDriverListMapOfARDriverTable();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Type &K, const MDF_DriverListOfARDriverTable &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		const MDF_DriverListOfARDriverTable & Find(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		const MDF_DriverListOfARDriverTable & operator()(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		MDF_DriverListOfARDriverTable & ChangeFind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		MDF_DriverListOfARDriverTable & operator()(const Handle_Standard_Type &K);

};

%nodefaultctor MDF_ListIteratorOfDriverListOfARDriverTable;
class MDF_ListIteratorOfDriverListOfARDriverTable {
	public:
		%feature("autodoc", "1");
		~MDF_ListIteratorOfDriverListOfARDriverTable();
		%feature("autodoc", "1");
		MDF_ListIteratorOfDriverListOfARDriverTable();
		%feature("autodoc", "1");
		MDF_ListIteratorOfDriverListOfARDriverTable(const MDF_DriverListOfARDriverTable &L);
		%feature("autodoc", "1");
		void Initialize(const MDF_DriverListOfARDriverTable &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & Value() const;

};

%nodefaultctor MDF_SequenceNodeOfARDriverSequence;
class MDF_SequenceNodeOfARDriverSequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MDF_SequenceNodeOfARDriverSequence(const Handle_MDF_ARDriver &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_SequenceNodeOfARDriverSequence();

};
%extend MDF_SequenceNodeOfARDriverSequence {
	Handle_MDF_SequenceNodeOfARDriverSequence GetHandle() {
	return *(Handle_MDF_SequenceNodeOfARDriverSequence*) &$self;
	}
};

%nodefaultctor MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable;
class MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable(const Handle_Standard_Type &K, const MDF_DriverListOfASDriverTable &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		MDF_DriverListOfASDriverTable & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable();

};
%extend MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable {
	Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable GetHandle() {
	return *(Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable*) &$self;
	}
};

%nodefaultctor MDF_ASDriverHSequence;
class MDF_ASDriverHSequence : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MDF_ASDriverHSequence();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_MDF_ASDriver &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_MDF_ASDriverHSequence &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_MDF_ASDriver &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_MDF_ASDriverHSequence &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_MDF_ASDriver &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_MDF_ASDriverHSequence &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_MDF_ASDriver &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_MDF_ASDriverHSequence &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_MDF_ASDriverHSequence Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_MDF_ASDriver &anItem);
		%feature("autodoc", "1");
		const Handle_MDF_ASDriver & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const MDF_ASDriverSequence & Sequence() const;
		%feature("autodoc", "1");
		MDF_ASDriverSequence & ChangeSequence();
		%feature("autodoc", "1");
		Handle_MDF_ASDriverHSequence ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_ASDriverHSequence();

};
%extend MDF_ASDriverHSequence {
	Handle_MDF_ASDriverHSequence GetHandle() {
	return *(Handle_MDF_ASDriverHSequence*) &$self;
	}
};

%nodefaultctor MDF_Tool;
class MDF_Tool {
	public:
		%feature("autodoc", "1");
		~MDF_Tool();
		%feature("autodoc", "1");
		MDF_Tool();
		%feature("autodoc", "1");
		void WriteLabels(const Handle_TDF_Data &aSource, const Handle_PDF_Data &aTarget, const MDF_TypeASDriverMap &aDriverMap, const Handle_MDF_SRelocationTable &aReloc);
		%feature("autodoc", "1");
		void WriteLabels(const TDF_Label &aSourceLab, const Handle_PColStd_HArray1OfInteger &theLabels, const Handle_PDF_HAttributeArray1 &theAttributes, const MDF_TypeASDriverMap &aDriverMap, const Handle_MDF_SRelocationTable &aReloc, Standard_Integer & labAlloc, Standard_Integer & attAlloc);
		%feature("autodoc", "1");
		void WriteAttributes(const MDF_TypeASDriverMap &aDriverMap, const Handle_MDF_SRelocationTable &aReloc);
		%feature("autodoc", "1");
		void ReadLabels(const Handle_PDF_Data &aSource, const Handle_TDF_Data &aTarget, const MDF_TypeARDriverMap &aDriverMap, const Handle_MDF_RRelocationTable &aReloc);
		%feature("autodoc", "1");
		void ReadLabels(TDF_Label & anIns, const Handle_PColStd_HArray1OfInteger &theLabels, const Handle_PDF_HAttributeArray1 &theAttributes, const MDF_TypeARDriverMap &aDriverMap, const Handle_MDF_RRelocationTable &aReloc, Standard_Integer & labRead, Standard_Integer & attRead);
		%feature("autodoc", "1");
		void ReadAttributes(const MDF_TypeARDriverMap &aDriverMap, const Handle_MDF_RRelocationTable &aReloc);

};

%nodefaultctor MDF_ReferenceRetrievalDriver;
class MDF_ReferenceRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDF_ReferenceRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_ReferenceRetrievalDriver();

};
%extend MDF_ReferenceRetrievalDriver {
	Handle_MDF_ReferenceRetrievalDriver GetHandle() {
	return *(Handle_MDF_ReferenceRetrievalDriver*) &$self;
	}
};

%nodefaultctor MDF_TypeDriverListMapOfASDriverTable;
class MDF_TypeDriverListMapOfASDriverTable : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MDF_TypeDriverListMapOfASDriverTable(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MDF_TypeDriverListMapOfASDriverTable & Assign(const MDF_TypeDriverListMapOfASDriverTable &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MDF_TypeDriverListMapOfASDriverTable();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Type &K, const MDF_DriverListOfASDriverTable &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		const MDF_DriverListOfASDriverTable & Find(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		const MDF_DriverListOfASDriverTable & operator()(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		MDF_DriverListOfASDriverTable & ChangeFind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		MDF_DriverListOfASDriverTable & operator()(const Handle_Standard_Type &K);

};

%nodefaultctor MDF_ASDriverSequence;
class MDF_ASDriverSequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MDF_ASDriverSequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MDF_ASDriverSequence();
		%feature("autodoc", "1");
		const MDF_ASDriverSequence & Assign(const MDF_ASDriverSequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_MDF_ASDriver &T);
		%feature("autodoc", "1");
		void Append(MDF_ASDriverSequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_MDF_ASDriver &T);
		%feature("autodoc", "1");
		void Prepend(MDF_ASDriverSequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_MDF_ASDriver &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MDF_ASDriverSequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_MDF_ASDriver &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MDF_ASDriverSequence & S);
		%feature("autodoc", "1");
		const Handle_MDF_ASDriver & First() const;
		%feature("autodoc", "1");
		const Handle_MDF_ASDriver & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MDF_ASDriverSequence & S);
		%feature("autodoc", "1");
		const Handle_MDF_ASDriver & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_MDF_ASDriver & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MDF_ASDriver &I);
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor MDF_SequenceNodeOfASDriverSequence;
class MDF_SequenceNodeOfASDriverSequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MDF_SequenceNodeOfASDriverSequence(const Handle_MDF_ASDriver &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_SequenceNodeOfASDriverSequence();

};
%extend MDF_SequenceNodeOfASDriverSequence {
	Handle_MDF_SequenceNodeOfASDriverSequence GetHandle() {
	return *(Handle_MDF_SequenceNodeOfASDriverSequence*) &$self;
	}
};

%nodefaultctor MDF_TypeASDriverMap;
class MDF_TypeASDriverMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MDF_TypeASDriverMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MDF_TypeASDriverMap & Assign(const MDF_TypeASDriverMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MDF_TypeASDriverMap();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Type &K, const Handle_MDF_ASDriver &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		const Handle_MDF_ASDriver & Find(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		const Handle_MDF_ASDriver & operator()(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & ChangeFind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		Handle_MDF_ASDriver & operator()(const Handle_Standard_Type &K);

};

%nodefaultctor MDF_RRelocationTable;
class MDF_RRelocationTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MDF_RRelocationTable(const Standard_Boolean theSelfRelocation=0);
		%feature("autodoc", "1");
		void SetSelfRelocation(const Standard_Boolean theStatus=1);
		%feature("autodoc", "1");
		Standard_Boolean IsSelfRelocation() const;
		%feature("autodoc", "1");
		void SetRelocation(const Handle_PDF_Attribute &aSourceAttribute, const Handle_TDF_Attribute &aTargetAttribute);
		%feature("autodoc", "1");
		Standard_Boolean HasRelocation(const Handle_PDF_Attribute &aSourceAttribute, Handle_TDF_Attribute & aTargetAttribute);
		%feature("autodoc", "1");
		void SetOtherRelocation(const Handle_Standard_Persistent &aSource, const Handle_Standard_Transient &aTarget);
		%feature("autodoc", "1");
		Standard_Boolean HasOtherRelocation(const Handle_Standard_Persistent &aSource, Handle_Standard_Transient & aTarget);
		%feature("autodoc", "1");
		PTColStd_PersistentTransientMap & AttributeTable();
		%feature("autodoc", "1");
		PTColStd_PersistentTransientMap & OtherTable();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_RRelocationTable();

};
%extend MDF_RRelocationTable {
	Handle_MDF_RRelocationTable GetHandle() {
	return *(Handle_MDF_RRelocationTable*) &$self;
	}
};

%nodefaultctor MDF_ARDriverSequence;
class MDF_ARDriverSequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MDF_ARDriverSequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MDF_ARDriverSequence();
		%feature("autodoc", "1");
		const MDF_ARDriverSequence & Assign(const MDF_ARDriverSequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_MDF_ARDriver &T);
		%feature("autodoc", "1");
		void Append(MDF_ARDriverSequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_MDF_ARDriver &T);
		%feature("autodoc", "1");
		void Prepend(MDF_ARDriverSequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_MDF_ARDriver &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MDF_ARDriverSequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_MDF_ARDriver &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MDF_ARDriverSequence & S);
		%feature("autodoc", "1");
		const Handle_MDF_ARDriver & First() const;
		%feature("autodoc", "1");
		const Handle_MDF_ARDriver & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MDF_ARDriverSequence & S);
		%feature("autodoc", "1");
		const Handle_MDF_ARDriver & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_MDF_ARDriver & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MDF_ARDriver &I);
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor MDF_ARDriverHSequence;
class MDF_ARDriverHSequence : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MDF_ARDriverHSequence();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_MDF_ARDriver &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_MDF_ARDriverHSequence &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_MDF_ARDriver &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_MDF_ARDriverHSequence &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_MDF_ARDriver &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_MDF_ARDriverHSequence &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_MDF_ARDriver &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_MDF_ARDriverHSequence &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_MDF_ARDriverHSequence Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_MDF_ARDriver &anItem);
		%feature("autodoc", "1");
		const Handle_MDF_ARDriver & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_MDF_ARDriver & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const MDF_ARDriverSequence & Sequence() const;
		%feature("autodoc", "1");
		MDF_ARDriverSequence & ChangeSequence();
		%feature("autodoc", "1");
		Handle_MDF_ARDriverHSequence ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MDF_ARDriverHSequence();

};
%extend MDF_ARDriverHSequence {
	Handle_MDF_ARDriverHSequence GetHandle() {
	return *(Handle_MDF_ARDriverHSequence*) &$self;
	}
};

%nodefaultctor MDF_DataMapIteratorOfTypeASDriverMap;
class MDF_DataMapIteratorOfTypeASDriverMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~MDF_DataMapIteratorOfTypeASDriverMap();
		%feature("autodoc", "1");
		MDF_DataMapIteratorOfTypeASDriverMap();
		%feature("autodoc", "1");
		MDF_DataMapIteratorOfTypeASDriverMap(const MDF_TypeASDriverMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const MDF_TypeASDriverMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		const Handle_MDF_ASDriver & Value() const;

};