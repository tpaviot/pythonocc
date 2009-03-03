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
%module TDocStd

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


%include TDocStd_dependencies.i


%include TDocStd_headers.i

typedef TDocStd_XLink * TDocStd_XLinkPtr;



%nodefaultctor Handle_TDocStd_ApplicationDelta;
class Handle_TDocStd_ApplicationDelta : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_ApplicationDelta();
		%feature("autodoc", "1");
		Handle_TDocStd_ApplicationDelta();
		%feature("autodoc", "1");
		Handle_TDocStd_ApplicationDelta(const Handle_TDocStd_ApplicationDelta &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_ApplicationDelta(const TDocStd_ApplicationDelta *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_ApplicationDelta const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_ApplicationDelta {
	TDocStd_ApplicationDelta* GetObject() {
	return (TDocStd_ApplicationDelta*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_XLinkRoot;
class Handle_TDocStd_XLinkRoot : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_XLinkRoot();
		%feature("autodoc", "1");
		Handle_TDocStd_XLinkRoot();
		%feature("autodoc", "1");
		Handle_TDocStd_XLinkRoot(const Handle_TDocStd_XLinkRoot &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_XLinkRoot(const TDocStd_XLinkRoot *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_XLinkRoot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_XLinkRoot {
	TDocStd_XLinkRoot* GetObject() {
	return (TDocStd_XLinkRoot*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_Owner;
class Handle_TDocStd_Owner : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_Owner();
		%feature("autodoc", "1");
		Handle_TDocStd_Owner();
		%feature("autodoc", "1");
		Handle_TDocStd_Owner(const Handle_TDocStd_Owner &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_Owner(const TDocStd_Owner *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_Owner const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_Owner {
	TDocStd_Owner* GetObject() {
	return (TDocStd_Owner*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta;
class Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta();
		%feature("autodoc", "1");
		Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta();
		%feature("autodoc", "1");
		Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta(const Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta(const TDocStd_SequenceNodeOfSequenceOfApplicationDelta *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta {
	TDocStd_SequenceNodeOfSequenceOfApplicationDelta* GetObject() {
	return (TDocStd_SequenceNodeOfSequenceOfApplicationDelta*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_Document;
class Handle_TDocStd_Document : public Handle_CDM_Document {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_Document();
		%feature("autodoc", "1");
		Handle_TDocStd_Document();
		%feature("autodoc", "1");
		Handle_TDocStd_Document(const Handle_TDocStd_Document &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_Document(const TDocStd_Document *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_Document const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_Document {
	TDocStd_Document* GetObject() {
	return (TDocStd_Document*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_MultiTransactionManager;
class Handle_TDocStd_MultiTransactionManager : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_MultiTransactionManager();
		%feature("autodoc", "1");
		Handle_TDocStd_MultiTransactionManager();
		%feature("autodoc", "1");
		Handle_TDocStd_MultiTransactionManager(const Handle_TDocStd_MultiTransactionManager &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_MultiTransactionManager(const TDocStd_MultiTransactionManager *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_MultiTransactionManager const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_MultiTransactionManager {
	TDocStd_MultiTransactionManager* GetObject() {
	return (TDocStd_MultiTransactionManager*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_SequenceNodeOfSequenceOfDocument;
class Handle_TDocStd_SequenceNodeOfSequenceOfDocument : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_SequenceNodeOfSequenceOfDocument();
		%feature("autodoc", "1");
		Handle_TDocStd_SequenceNodeOfSequenceOfDocument();
		%feature("autodoc", "1");
		Handle_TDocStd_SequenceNodeOfSequenceOfDocument(const Handle_TDocStd_SequenceNodeOfSequenceOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_SequenceNodeOfSequenceOfDocument(const TDocStd_SequenceNodeOfSequenceOfDocument *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_SequenceNodeOfSequenceOfDocument const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_SequenceNodeOfSequenceOfDocument {
	TDocStd_SequenceNodeOfSequenceOfDocument* GetObject() {
	return (TDocStd_SequenceNodeOfSequenceOfDocument*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_Modified;
class Handle_TDocStd_Modified : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_Modified();
		%feature("autodoc", "1");
		Handle_TDocStd_Modified();
		%feature("autodoc", "1");
		Handle_TDocStd_Modified(const Handle_TDocStd_Modified &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_Modified(const TDocStd_Modified *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_Modified const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_Modified {
	TDocStd_Modified* GetObject() {
	return (TDocStd_Modified*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_XLink;
class Handle_TDocStd_XLink : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_XLink();
		%feature("autodoc", "1");
		Handle_TDocStd_XLink();
		%feature("autodoc", "1");
		Handle_TDocStd_XLink(const Handle_TDocStd_XLink &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_XLink(const TDocStd_XLink *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_XLink const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_XLink {
	TDocStd_XLink* GetObject() {
	return (TDocStd_XLink*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_CompoundDelta;
class Handle_TDocStd_CompoundDelta : public Handle_TDF_Delta {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_CompoundDelta();
		%feature("autodoc", "1");
		Handle_TDocStd_CompoundDelta();
		%feature("autodoc", "1");
		Handle_TDocStd_CompoundDelta(const Handle_TDocStd_CompoundDelta &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_CompoundDelta(const TDocStd_CompoundDelta *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_CompoundDelta const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_CompoundDelta {
	TDocStd_CompoundDelta* GetObject() {
	return (TDocStd_CompoundDelta*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap;
class Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap();
		%feature("autodoc", "1");
		Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap();
		%feature("autodoc", "1");
		Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap(const Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap(const TDocStd_DataMapNodeOfLabelIDMapDataMap *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap {
	TDocStd_DataMapNodeOfLabelIDMapDataMap* GetObject() {
	return (TDocStd_DataMapNodeOfLabelIDMapDataMap*)$self->Access();
	}
};

%nodefaultctor Handle_TDocStd_Application;
class Handle_TDocStd_Application : public Handle_CDF_Application {
	public:
		%feature("autodoc", "1");
		~Handle_TDocStd_Application();
		%feature("autodoc", "1");
		Handle_TDocStd_Application();
		%feature("autodoc", "1");
		Handle_TDocStd_Application(const Handle_TDocStd_Application &aHandle);
		%feature("autodoc", "1");
		Handle_TDocStd_Application(const TDocStd_Application *anItem);
		%feature("autodoc", "1");
		Handle_TDocStd_Application const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDocStd_Application {
	TDocStd_Application* GetObject() {
	return (TDocStd_Application*)$self->Access();
	}
};

%nodefaultctor TDocStd_SequenceNodeOfSequenceOfApplicationDelta;
class TDocStd_SequenceNodeOfSequenceOfApplicationDelta : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TDocStd_SequenceNodeOfSequenceOfApplicationDelta(const Handle_TDocStd_ApplicationDelta &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TDocStd_ApplicationDelta & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_SequenceNodeOfSequenceOfApplicationDelta();

};
%extend TDocStd_SequenceNodeOfSequenceOfApplicationDelta {
	Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta GetHandle() {
	return *(Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta*) &$self;
	}
};

%nodefaultctor TDocStd_Owner;
class TDocStd_Owner : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		void SetDocument(const Handle_TDF_Data &indata, const Handle_TDocStd_Document &doc);
		%feature("autodoc", "1");
		Handle_TDocStd_Document GetDocument(const Handle_TDF_Data &ofdata);
		%feature("autodoc", "1");
		TDocStd_Owner();
		%feature("autodoc", "1");
		void SetDocument(const Handle_TDocStd_Document &document);
		%feature("autodoc", "1");
		Handle_TDocStd_Document GetDocument() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		Standard_OStream & Dump(Standard_OStream & anOS) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_Owner();

};
%extend TDocStd_Owner {
	Handle_TDocStd_Owner GetHandle() {
	return *(Handle_TDocStd_Owner*) &$self;
	}
};

%nodefaultctor TDocStd_PathParser;
class TDocStd_PathParser {
	public:
		%feature("autodoc", "1");
		~TDocStd_PathParser();
		%feature("autodoc", "1");
		TDocStd_PathParser(const TCollection_ExtendedString &path);
		%feature("autodoc", "1");
		void Parse();
		%feature("autodoc", "1");
		TCollection_ExtendedString Trek() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString Name() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString Extension() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString Path() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;

};

%nodefaultctor TDocStd_CompoundDelta;
class TDocStd_CompoundDelta : public TDF_Delta {
	public:
		%feature("autodoc", "1");
		TDocStd_CompoundDelta();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_CompoundDelta();

};
%extend TDocStd_CompoundDelta {
	Handle_TDocStd_CompoundDelta GetHandle() {
	return *(Handle_TDocStd_CompoundDelta*) &$self;
	}
};

%nodefaultctor TDocStd_DataMapNodeOfLabelIDMapDataMap;
class TDocStd_DataMapNodeOfLabelIDMapDataMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDocStd_DataMapNodeOfLabelIDMapDataMap(const TDF_Label &K, const TDF_IDMap &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TDF_Label & Key() const;
		%feature("autodoc", "1");
		TDF_IDMap & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_DataMapNodeOfLabelIDMapDataMap();

};
%extend TDocStd_DataMapNodeOfLabelIDMapDataMap {
	Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap GetHandle() {
	return *(Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap*) &$self;
	}
};

%nodefaultctor TDocStd_XLinkRoot;
class TDocStd_XLinkRoot : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDocStd_XLinkRoot Set(const Handle_TDF_Data &aDF);
		%feature("autodoc", "1");
		void Insert(const TDocStd_XLinkPtr &anXLinkPtr);
		%feature("autodoc", "1");
		void Remove(const TDocStd_XLinkPtr &anXLinkPtr);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute BackupCopy() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &anAttribute);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &intoAttribute, const Handle_TDF_RelocationTable &aRelocationTable) const;
		%feature("autodoc", "1");
		virtual		Standard_OStream & Dump(Standard_OStream & anOS) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_XLinkRoot();

};
%extend TDocStd_XLinkRoot {
	Handle_TDocStd_XLinkRoot GetHandle() {
	return *(Handle_TDocStd_XLinkRoot*) &$self;
	}
};

%nodefaultctor TDocStd_DataMapIteratorOfLabelIDMapDataMap;
class TDocStd_DataMapIteratorOfLabelIDMapDataMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TDocStd_DataMapIteratorOfLabelIDMapDataMap();
		%feature("autodoc", "1");
		TDocStd_DataMapIteratorOfLabelIDMapDataMap();
		%feature("autodoc", "1");
		TDocStd_DataMapIteratorOfLabelIDMapDataMap(const TDocStd_LabelIDMapDataMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDocStd_LabelIDMapDataMap &aMap);
		%feature("autodoc", "1");
		const TDF_Label & Key() const;
		%feature("autodoc", "1");
		const TDF_IDMap & Value() const;

};

%nodefaultctor TDocStd_XLinkTool;
class TDocStd_XLinkTool {
	public:
		%feature("autodoc", "1");
		~TDocStd_XLinkTool();
		%feature("autodoc", "1");
		TDocStd_XLinkTool();
		%feature("autodoc", "1");
		void CopyWithLink(const TDF_Label &intarget, const TDF_Label &fromsource);
		%feature("autodoc", "1");
		void UpdateLink(const TDF_Label &L);
		%feature("autodoc", "1");
		void Copy(const TDF_Label &intarget, const TDF_Label &fromsource);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Handle_TDF_DataSet DataSet() const;
		%feature("autodoc", "1");
		Handle_TDF_RelocationTable RelocationTable() const;

};

%nodefaultctor TDocStd_Document;
class TDocStd_Document : public CDM_Document {
	public:
		%feature("autodoc", "1");
		Handle_TDocStd_Document Get(const TDF_Label &L);
		%feature("autodoc", "1");
		TDocStd_Document(const TCollection_ExtendedString &astorageformat);
		%feature("autodoc", "1");
		Standard_Boolean IsSaved() const;
		%feature("autodoc", "1");
		Standard_Boolean IsChanged() const;
		%feature("autodoc", "1");
		void SetSaved();
		%feature("autodoc", "1");
		void SetSavedTime(const Standard_Integer theTime);
		%feature("autodoc", "1");
		Standard_Integer GetSavedTime() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString GetName() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString GetPath() const;
		%feature("autodoc", "1");
		void SetData(const Handle_TDF_Data &data);
		%feature("autodoc", "1");
		Handle_TDF_Data GetData() const;
		%feature("autodoc", "1");
		TDF_Label Main() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsValid() const;
		%feature("autodoc", "1");
		void SetModified(const TDF_Label &L);
		%feature("autodoc", "1");
		void PurgeModified();
		%feature("autodoc", "1");
		const TDF_LabelMap & GetModified() const;
		%feature("autodoc", "1");
		void NewCommand();
		%feature("autodoc", "1");
		Standard_Boolean HasOpenCommand() const;
		%feature("autodoc", "1");
		void OpenCommand();
		%feature("autodoc", "1");
		Standard_Boolean CommitCommand();
		%feature("autodoc", "1");
		void AbortCommand();
		%feature("autodoc", "1");
		Standard_Integer GetUndoLimit() const;
		%feature("autodoc", "1");
		void SetUndoLimit(const Standard_Integer L);
		%feature("autodoc", "1");
		void ClearUndos();
		%feature("autodoc", "1");
		void ClearRedos();
		%feature("autodoc", "1");
		Standard_Integer GetAvailableUndos() const;
		%feature("autodoc", "1");
		Standard_Boolean Undo();
		%feature("autodoc", "1");
		Standard_Integer GetAvailableRedos() const;
		%feature("autodoc", "1");
		Standard_Boolean Redo();
		%feature("autodoc", "1");
		const TDF_DeltaList & GetUndos() const;
		%feature("autodoc", "1");
		const TDF_DeltaList & GetRedos() const;
		%feature("autodoc", "1");
		void RemoveFirstUndo();
		%feature("autodoc", "1");
		Standard_Boolean InitDeltaCompaction();
		%feature("autodoc", "1");
		Standard_Boolean PerformDeltaCompaction();
		%feature("autodoc", "1");
		void UpdateReferences(const TCollection_AsciiString &aDocEntry);
		%feature("autodoc", "1");
		void Recompute();
		%feature("autodoc", "1");
		virtual		void Update(const Handle_CDM_Document &aToDocument, const Standard_Integer aReferenceIdentifier, const Standard_Address aModifContext);
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString StorageFormat() const;
		%feature("autodoc", "1");
		virtual		void ChangeStorageFormat(const TCollection_ExtendedString &newStorageFormat);
		%feature("autodoc", "1");
		void SetNestedTransactionMode(const Standard_Boolean isAllowed=1);
		%feature("autodoc", "1");
		Standard_Boolean IsNestedTransactionMode() const;
		%feature("autodoc", "1");
		void SetModificationMode(const Standard_Boolean theTransactionOnly);
		%feature("autodoc", "1");
		Standard_Boolean ModificationMode() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_Document();

};
%extend TDocStd_Document {
	Handle_TDocStd_Document GetHandle() {
	return *(Handle_TDocStd_Document*) &$self;
	}
};

%nodefaultctor TDocStd_SequenceOfApplicationDelta;
class TDocStd_SequenceOfApplicationDelta : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TDocStd_SequenceOfApplicationDelta();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TDocStd_SequenceOfApplicationDelta();
		%feature("autodoc", "1");
		const TDocStd_SequenceOfApplicationDelta & Assign(const TDocStd_SequenceOfApplicationDelta &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TDocStd_ApplicationDelta &T);
		%feature("autodoc", "1");
		void Append(TDocStd_SequenceOfApplicationDelta & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TDocStd_ApplicationDelta &T);
		%feature("autodoc", "1");
		void Prepend(TDocStd_SequenceOfApplicationDelta & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TDocStd_ApplicationDelta &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TDocStd_SequenceOfApplicationDelta & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TDocStd_ApplicationDelta &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TDocStd_SequenceOfApplicationDelta & S);
		%feature("autodoc", "1");
		const Handle_TDocStd_ApplicationDelta & First() const;
		%feature("autodoc", "1");
		const Handle_TDocStd_ApplicationDelta & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TDocStd_SequenceOfApplicationDelta & S);
		%feature("autodoc", "1");
		const Handle_TDocStd_ApplicationDelta & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TDocStd_ApplicationDelta & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TDocStd_ApplicationDelta &I);
		%feature("autodoc", "1");
		Handle_TDocStd_ApplicationDelta & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TDocStd_ApplicationDelta & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor TDocStd_LabelIDMapDataMap;
class TDocStd_LabelIDMapDataMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDocStd_LabelIDMapDataMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDocStd_LabelIDMapDataMap & Assign(const TDocStd_LabelIDMapDataMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TDocStd_LabelIDMapDataMap();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TDF_Label &K, const TDF_IDMap &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TDF_Label &K);
		%feature("autodoc", "1");
		const TDF_IDMap & Find(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const TDF_IDMap & operator()(const TDF_Label &K) const;
		%feature("autodoc", "1");
		TDF_IDMap & ChangeFind(const TDF_Label &K);
		%feature("autodoc", "1");
		TDF_IDMap & operator()(const TDF_Label &K);

};

%nodefaultctor TDocStd_XLinkIterator;
class TDocStd_XLinkIterator {
	public:
		%feature("autodoc", "1");
		~TDocStd_XLinkIterator();
		%feature("autodoc", "1");
		TDocStd_XLinkIterator();
		%feature("autodoc", "1");
		TDocStd_XLinkIterator(const Handle_TDocStd_Document &D);
		%feature("autodoc", "1");
		void Initialize(const Handle_TDocStd_Document &D);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TDocStd_XLink * Value() const;

};

%nodefaultctor TDocStd;
class TDocStd {
	public:
		%feature("autodoc", "1");
		~TDocStd();
		%feature("autodoc", "1");
		TDocStd();
		%feature("autodoc", "1");
		void IDList(TDF_IDList & anIDList);

};

%nodefaultctor TDocStd_SequenceNodeOfSequenceOfDocument;
class TDocStd_SequenceNodeOfSequenceOfDocument : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TDocStd_SequenceNodeOfSequenceOfDocument(const Handle_TDocStd_Document &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TDocStd_Document & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_SequenceNodeOfSequenceOfDocument();

};
%extend TDocStd_SequenceNodeOfSequenceOfDocument {
	Handle_TDocStd_SequenceNodeOfSequenceOfDocument GetHandle() {
	return *(Handle_TDocStd_SequenceNodeOfSequenceOfDocument*) &$self;
	}
};

%nodefaultctor TDocStd_Modified;
class TDocStd_Modified : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty(const TDF_Label &access);
		%feature("autodoc", "1");
		Standard_Boolean Add(const TDF_Label &alabel);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TDF_Label &alabel);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TDF_Label &alabel);
		%feature("autodoc", "1");
		const TDF_LabelMap & Get(const TDF_Label &access);
		%feature("autodoc", "1");
		void Clear(const TDF_Label &access);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDocStd_Modified();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean AddLabel(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean RemoveLabel(const TDF_Label &L);
		%feature("autodoc", "1");
		const TDF_LabelMap & Get() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		Standard_OStream & Dump(Standard_OStream & anOS) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_Modified();

};
%extend TDocStd_Modified {
	Handle_TDocStd_Modified GetHandle() {
	return *(Handle_TDocStd_Modified*) &$self;
	}
};

%nodefaultctor TDocStd_XLink;
class TDocStd_XLink : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDocStd_XLink Set(const TDF_Label &atLabel);
		%feature("autodoc", "1");
		TDocStd_XLink();
		%feature("autodoc", "1");
		Handle_TDF_Reference Update();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		void DocumentEntry(const TCollection_AsciiString &aDocEntry);
		%feature("autodoc", "1");
		const TCollection_AsciiString & DocumentEntry() const;
		%feature("autodoc", "1");
		void LabelEntry(const TDF_Label &aLabel);
		%feature("autodoc", "1");
		void LabelEntry(const TCollection_AsciiString &aLabEntry);
		%feature("autodoc", "1");
		const TCollection_AsciiString & LabelEntry() const;
		%feature("autodoc", "1");
		virtual		void AfterAddition();
		%feature("autodoc", "1");
		virtual		void BeforeRemoval();
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeforeUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AfterUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute BackupCopy() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &anAttribute);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &intoAttribute, const Handle_TDF_RelocationTable &aRelocationTable) const;
		%feature("autodoc", "1");
		virtual		Standard_OStream & Dump(Standard_OStream & anOS) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_XLink();

};
%extend TDocStd_XLink {
	Handle_TDocStd_XLink GetHandle() {
	return *(Handle_TDocStd_XLink*) &$self;
	}
};

%nodefaultctor TDocStd_MultiTransactionManager;
class TDocStd_MultiTransactionManager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDocStd_MultiTransactionManager();
		%feature("autodoc", "1");
		void SetUndoLimit(const Standard_Integer theLimit);
		%feature("autodoc", "1");
		Standard_Integer GetUndoLimit() const;
		%feature("autodoc", "1");
		void Undo();
		%feature("autodoc", "1");
		void Redo();
		%feature("autodoc", "1");
		const TDocStd_SequenceOfApplicationDelta & GetAvailableUndos() const;
		%feature("autodoc", "1");
		const TDocStd_SequenceOfApplicationDelta & GetAvailableRedos() const;
		%feature("autodoc", "1");
		void OpenCommand();
		%feature("autodoc", "1");
		void AbortCommand();
		%feature("autodoc", "1");
		Standard_Boolean CommitCommand();
		%feature("autodoc", "1");
		Standard_Boolean CommitCommand(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		Standard_Boolean HasOpenCommand() const;
		%feature("autodoc", "1");
		void RemoveLastUndo();
		%feature("autodoc", "1");
		void DumpTransaction(Standard_OStream & theOS) const;
		%feature("autodoc", "1");
		void AddDocument(const Handle_TDocStd_Document &theDoc);
		%feature("autodoc", "1");
		void RemoveDocument(const Handle_TDocStd_Document &theDoc);
		%feature("autodoc", "1");
		const TDocStd_SequenceOfDocument & Documents() const;
		%feature("autodoc", "1");
		void SetNestedTransactionMode(const Standard_Boolean isAllowed=1);
		%feature("autodoc", "1");
		Standard_Boolean IsNestedTransactionMode() const;
		%feature("autodoc", "1");
		void SetModificationMode(const Standard_Boolean theTransactionOnly);
		%feature("autodoc", "1");
		Standard_Boolean ModificationMode() const;
		%feature("autodoc", "1");
		void ClearUndos();
		%feature("autodoc", "1");
		void ClearRedos();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_MultiTransactionManager();

};
%extend TDocStd_MultiTransactionManager {
	Handle_TDocStd_MultiTransactionManager GetHandle() {
	return *(Handle_TDocStd_MultiTransactionManager*) &$self;
	}
};

%nodefaultctor TDocStd_Application;
class TDocStd_Application : public CDF_Application {
	public:
		%feature("autodoc", "1");
		Standard_Boolean IsDriverLoaded() const;
		%feature("autodoc", "1");
		virtual		Handle_Resource_Manager Resources();
		%feature("autodoc", "1");
		virtual		Standard_CString ResourcesName();
		%feature("autodoc", "1");
		Standard_Integer NbDocuments() const;
		%feature("autodoc", "1");
		void GetDocument(const Standard_Integer index, Handle_TDocStd_Document & aDoc) const;
		%feature("autodoc", "1");
		virtual		void Formats(TColStd_SequenceOfExtendedString & Formats);
		%feature("autodoc", "1");
		virtual		void NewDocument(const TCollection_ExtendedString &format, Handle_TDocStd_Document & aDoc);
		%feature("autodoc", "1");
		virtual		void InitDocument(const Handle_TDocStd_Document &aDoc) const;
		%feature("autodoc", "1");
		void Close(const Handle_TDocStd_Document &aDoc);
		%feature("autodoc", "1");
		Standard_Integer IsInSession(const TCollection_ExtendedString &path) const;
		%feature("autodoc", "1");
		CDF_RetrievableStatus Open(const TCollection_ExtendedString &path, Handle_TDocStd_Document & aDoc);
		%feature("autodoc", "1");
		CDF_StoreStatus SaveAs(const Handle_TDocStd_Document &aDoc, const TCollection_ExtendedString &path);
		%feature("autodoc", "1");
		CDF_StoreStatus Save(const Handle_TDocStd_Document &aDoc);
		%feature("autodoc", "1");
		CDF_StoreStatus SaveAs(const Handle_TDocStd_Document &aDoc, const TCollection_ExtendedString &path, TCollection_ExtendedString & theStatusMessage);
		%feature("autodoc", "1");
		CDF_StoreStatus Save(const Handle_TDocStd_Document &aDoc, TCollection_ExtendedString & theStatusMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDocStd_Application {
	Handle_TDocStd_Application GetHandle() {
	return *(Handle_TDocStd_Application*) &$self;
	}
};

%nodefaultctor TDocStd_ApplicationDelta;
class TDocStd_ApplicationDelta : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDocStd_ApplicationDelta();
		%feature("autodoc", "1");
		TDocStd_SequenceOfDocument & GetDocuments();
		%feature("autodoc", "1");
		const TCollection_ExtendedString & GetName() const;
		%feature("autodoc", "1");
		void SetName(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void Dump(Standard_OStream & anOS) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TDocStd_ApplicationDelta();

};
%extend TDocStd_ApplicationDelta {
	Handle_TDocStd_ApplicationDelta GetHandle() {
	return *(Handle_TDocStd_ApplicationDelta*) &$self;
	}
};

%nodefaultctor TDocStd_SequenceOfDocument;
class TDocStd_SequenceOfDocument : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TDocStd_SequenceOfDocument();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TDocStd_SequenceOfDocument();
		%feature("autodoc", "1");
		const TDocStd_SequenceOfDocument & Assign(const TDocStd_SequenceOfDocument &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TDocStd_Document &T);
		%feature("autodoc", "1");
		void Append(TDocStd_SequenceOfDocument & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TDocStd_Document &T);
		%feature("autodoc", "1");
		void Prepend(TDocStd_SequenceOfDocument & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TDocStd_Document &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TDocStd_SequenceOfDocument & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TDocStd_Document &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TDocStd_SequenceOfDocument & S);
		%feature("autodoc", "1");
		const Handle_TDocStd_Document & First() const;
		%feature("autodoc", "1");
		const Handle_TDocStd_Document & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TDocStd_SequenceOfDocument & S);
		%feature("autodoc", "1");
		const Handle_TDocStd_Document & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TDocStd_Document & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TDocStd_Document &I);
		%feature("autodoc", "1");
		Handle_TDocStd_Document & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TDocStd_Document & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor TDocStd_Context;
class TDocStd_Context {
	public:
		%feature("autodoc", "1");
		~TDocStd_Context();
		%feature("autodoc", "1");
		TDocStd_Context();
		%feature("autodoc", "1");
		void SetModifiedReferences(const Standard_Boolean Mod);
		%feature("autodoc", "1");
		Standard_Boolean ModifiedReferences() const;

};