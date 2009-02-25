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
%module PCDM

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


%include PCDM_dependencies.i


%include PCDM_headers.i

typedef Storage_BaseDriver * PCDM_BaseDriverPointer;

enum PCDM_ReaderStatus {
	PCDM_RS_OK,
	PCDM_RS_NoDriver,
	PCDM_RS_UnknownFileDriver,
	PCDM_RS_OpenError,
	PCDM_RS_NoVersion,
	PCDM_RS_NoSchema,
	PCDM_RS_NoDocument,
	PCDM_RS_ExtensionFailure,
	PCDM_RS_WrongStreamMode,
	PCDM_RS_FormatFailure,
	PCDM_RS_TypeFailure,
	PCDM_RS_TypeNotFoundInSchema,
	PCDM_RS_UnrecognizedFileFormat,
	PCDM_RS_MakeFailure,
	PCDM_RS_PermissionDenied,
	PCDM_RS_DriverFailure,
	};

enum PCDM_TypeOfFileDriver {
	PCDM_TOFD_File,
	PCDM_TOFD_CmpFile,
	PCDM_TOFD_Unknown,
	};



%nodefaultctor Handle_PCDM_SequenceNodeOfSequenceOfReference;
class Handle_PCDM_SequenceNodeOfSequenceOfReference : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_SequenceNodeOfSequenceOfReference();
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfReference();
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfReference(const Handle_PCDM_SequenceNodeOfSequenceOfReference &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfReference(const PCDM_SequenceNodeOfSequenceOfReference *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfReference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_SequenceNodeOfSequenceOfReference {
	PCDM_SequenceNodeOfSequenceOfReference* GetObject() {
	return (PCDM_SequenceNodeOfSequenceOfReference*)$self->Access();
	}
};

%nodefaultctor Handle_PCDM_Document;
class Handle_PCDM_Document : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_Document();
		%feature("autodoc", "1");
		Handle_PCDM_Document();
		%feature("autodoc", "1");
		Handle_PCDM_Document(const Handle_PCDM_Document &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_Document(const PCDM_Document *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_Document const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PCDM_Document {
	PCDM_Document* GetObject() {
	return (PCDM_Document*)$self->Access();
	}
};

%nodefaultctor Handle_PCDM_SequenceNodeOfSequenceOfDocument;
class Handle_PCDM_SequenceNodeOfSequenceOfDocument : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_SequenceNodeOfSequenceOfDocument();
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfDocument();
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfDocument(const Handle_PCDM_SequenceNodeOfSequenceOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfDocument(const PCDM_SequenceNodeOfSequenceOfDocument *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfDocument const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_SequenceNodeOfSequenceOfDocument {
	PCDM_SequenceNodeOfSequenceOfDocument* GetObject() {
	return (PCDM_SequenceNodeOfSequenceOfDocument*)$self->Access();
	}
};

%nodefaultctor Handle_PCDM_ReadWriter;
class Handle_PCDM_ReadWriter : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_ReadWriter();
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter();
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter(const Handle_PCDM_ReadWriter &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter(const PCDM_ReadWriter *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_ReadWriter {
	PCDM_ReadWriter* GetObject() {
	return (PCDM_ReadWriter*)$self->Access();
	}
};

%nodefaultctor Handle_PCDM_ReadWriter_1;
class Handle_PCDM_ReadWriter_1 : public Handle_PCDM_ReadWriter {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_ReadWriter_1();
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter_1();
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter_1(const Handle_PCDM_ReadWriter_1 &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter_1(const PCDM_ReadWriter_1 *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter_1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_ReadWriter_1 {
	PCDM_ReadWriter_1* GetObject() {
	return (PCDM_ReadWriter_1*)$self->Access();
	}
};

%nodefaultctor Handle_PCDM_Reader;
class Handle_PCDM_Reader : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_Reader();
		%feature("autodoc", "1");
		Handle_PCDM_Reader();
		%feature("autodoc", "1");
		Handle_PCDM_Reader(const Handle_PCDM_Reader &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_Reader(const PCDM_Reader *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_Reader const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_Reader {
	PCDM_Reader* GetObject() {
	return (PCDM_Reader*)$self->Access();
	}
};

%nodefaultctor Handle_PCDM_RetrievalDriver;
class Handle_PCDM_RetrievalDriver : public Handle_PCDM_Reader {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_RetrievalDriver();
		%feature("autodoc", "1");
		Handle_PCDM_RetrievalDriver();
		%feature("autodoc", "1");
		Handle_PCDM_RetrievalDriver(const Handle_PCDM_RetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_RetrievalDriver(const PCDM_RetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_RetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_RetrievalDriver {
	PCDM_RetrievalDriver* GetObject() {
	return (PCDM_RetrievalDriver*)$self->Access();
	}
};

%nodefaultctor Handle_PCDM_Writer;
class Handle_PCDM_Writer : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_Writer();
		%feature("autodoc", "1");
		Handle_PCDM_Writer();
		%feature("autodoc", "1");
		Handle_PCDM_Writer(const Handle_PCDM_Writer &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_Writer(const PCDM_Writer *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_Writer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_Writer {
	PCDM_Writer* GetObject() {
	return (PCDM_Writer*)$self->Access();
	}
};

%nodefaultctor Handle_PCDM_ReferenceIterator;
class Handle_PCDM_ReferenceIterator : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_ReferenceIterator();
		%feature("autodoc", "1");
		Handle_PCDM_ReferenceIterator();
		%feature("autodoc", "1");
		Handle_PCDM_ReferenceIterator(const Handle_PCDM_ReferenceIterator &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_ReferenceIterator(const PCDM_ReferenceIterator *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_ReferenceIterator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_ReferenceIterator {
	PCDM_ReferenceIterator* GetObject() {
	return (PCDM_ReferenceIterator*)$self->Access();
	}
};

%nodefaultctor Handle_PCDM_StorageDriver;
class Handle_PCDM_StorageDriver : public Handle_PCDM_Writer {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_StorageDriver();
		%feature("autodoc", "1");
		Handle_PCDM_StorageDriver();
		%feature("autodoc", "1");
		Handle_PCDM_StorageDriver(const Handle_PCDM_StorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_StorageDriver(const PCDM_StorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_StorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_StorageDriver {
	PCDM_StorageDriver* GetObject() {
	return (PCDM_StorageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_PCDM_DriverError;
class Handle_PCDM_DriverError : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		~Handle_PCDM_DriverError();
		%feature("autodoc", "1");
		Handle_PCDM_DriverError();
		%feature("autodoc", "1");
		Handle_PCDM_DriverError(const Handle_PCDM_DriverError &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_DriverError(const PCDM_DriverError *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_DriverError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_DriverError {
	PCDM_DriverError* GetObject() {
	return (PCDM_DriverError*)$self->Access();
	}
};

%nodefaultctor PCDM_Reader;
class PCDM_Reader : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		virtual		Handle_CDM_Document CreateDocument();
		%feature("autodoc", "1");
		virtual		void Read(const TCollection_ExtendedString &aFileName, const Handle_CDM_Document &aNewDocument, const Handle_CDM_Application &anApplication);
		%feature("autodoc", "1");
		PCDM_ReaderStatus GetStatus() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PCDM_Reader {
	Handle_PCDM_Reader GetHandle() {
	return *(Handle_PCDM_Reader*) &$self;
	}
};

%nodefaultctor PCDM_RetrievalDriver;
class PCDM_RetrievalDriver : public PCDM_Reader {
	public:
		%feature("autodoc", "1");
		virtual		void Make(const Handle_PCDM_Document &aPCDM, const Handle_CDM_Document &aNewDocument);
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString SchemaName() const;
		%feature("autodoc", "1");
		virtual		void LoadExtensions(const Handle_Storage_Schema &aSchema, const TColStd_SequenceOfExtendedString &Extensions, const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		void RaiseIfUnknownTypes(const Handle_Storage_Schema &aSchema, const TCollection_ExtendedString &aFileName);
		%feature("autodoc", "1");
		Standard_Integer DocumentVersion(const TCollection_ExtendedString &aFileName, const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		Standard_Integer ReferenceCounter(const TCollection_ExtendedString &aFileName, const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		void SetFormat(const TCollection_ExtendedString &aformat);
		%feature("autodoc", "1");
		TCollection_ExtendedString GetFormat() const;

};
%extend PCDM_RetrievalDriver {
	Handle_PCDM_RetrievalDriver GetHandle() {
	return *(Handle_PCDM_RetrievalDriver*) &$self;
	}
};

%nodefaultctor PCDM_Writer;
class PCDM_Writer : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		virtual		void Write(const Handle_CDM_Document &aDocument, const TCollection_ExtendedString &aFileName);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PCDM_Writer {
	Handle_PCDM_Writer GetHandle() {
	return *(Handle_PCDM_Writer*) &$self;
	}
};

%nodefaultctor PCDM_SequenceNodeOfSequenceOfReference;
class PCDM_SequenceNodeOfSequenceOfReference : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		PCDM_SequenceNodeOfSequenceOfReference(const PCDM_Reference &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		PCDM_Reference & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PCDM_SequenceNodeOfSequenceOfReference();

};
%extend PCDM_SequenceNodeOfSequenceOfReference {
	Handle_PCDM_SequenceNodeOfSequenceOfReference GetHandle() {
	return *(Handle_PCDM_SequenceNodeOfSequenceOfReference*) &$self;
	}
};

%nodefaultctor PCDM_Reference;
class PCDM_Reference {
	public:
		%feature("autodoc", "1");
		~PCDM_Reference();
		%feature("autodoc", "1");
		PCDM_Reference();
		%feature("autodoc", "1");
		PCDM_Reference(const Standard_Integer aReferenceIdentifier, const TCollection_ExtendedString &aFileName, const Standard_Integer aDocumentVersion);
		%feature("autodoc", "1");
		Standard_Integer ReferenceIdentifier() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString FileName() const;
		%feature("autodoc", "1");
		Standard_Integer DocumentVersion() const;

};

%nodefaultctor PCDM;
class PCDM {
	public:
		%feature("autodoc", "1");
		~PCDM();
		%feature("autodoc", "1");
		PCDM();
		%feature("autodoc", "1");
		Standard_Boolean FindStorageDriver(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		Handle_Storage_Schema Schema(const TCollection_ExtendedString &aSchemaName, const Handle_CDM_Application &anApplication);

};

%nodefaultctor PCDM_SequenceOfDocument;
class PCDM_SequenceOfDocument : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		PCDM_SequenceOfDocument();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~PCDM_SequenceOfDocument();
		%feature("autodoc", "1");
		const PCDM_SequenceOfDocument & Assign(const PCDM_SequenceOfDocument &Other);
		%feature("autodoc", "1");
		void Append(const Handle_PCDM_Document &T);
		%feature("autodoc", "1");
		void Append(PCDM_SequenceOfDocument & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_PCDM_Document &T);
		%feature("autodoc", "1");
		void Prepend(PCDM_SequenceOfDocument & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PCDM_Document &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, PCDM_SequenceOfDocument & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PCDM_Document &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, PCDM_SequenceOfDocument & S);
		%feature("autodoc", "1");
		const Handle_PCDM_Document & First() const;
		%feature("autodoc", "1");
		const Handle_PCDM_Document & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, PCDM_SequenceOfDocument & S);
		%feature("autodoc", "1");
		const Handle_PCDM_Document & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_PCDM_Document & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PCDM_Document &I);
		%feature("autodoc", "1");
		Handle_PCDM_Document & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_PCDM_Document & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor PCDM_SequenceOfReference;
class PCDM_SequenceOfReference : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		PCDM_SequenceOfReference();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~PCDM_SequenceOfReference();
		%feature("autodoc", "1");
		const PCDM_SequenceOfReference & Assign(const PCDM_SequenceOfReference &Other);
		%feature("autodoc", "1");
		void Append(const PCDM_Reference &T);
		%feature("autodoc", "1");
		void Append(PCDM_SequenceOfReference & S);
		%feature("autodoc", "1");
		void Prepend(const PCDM_Reference &T);
		%feature("autodoc", "1");
		void Prepend(PCDM_SequenceOfReference & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const PCDM_Reference &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, PCDM_SequenceOfReference & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const PCDM_Reference &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, PCDM_SequenceOfReference & S);
		%feature("autodoc", "1");
		const PCDM_Reference & First() const;
		%feature("autodoc", "1");
		const PCDM_Reference & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, PCDM_SequenceOfReference & S);
		%feature("autodoc", "1");
		const PCDM_Reference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const PCDM_Reference & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const PCDM_Reference &I);
		%feature("autodoc", "1");
		PCDM_Reference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		PCDM_Reference & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor PCDM_ReferenceIterator;
class PCDM_ReferenceIterator : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		PCDM_ReferenceIterator(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		void LoadReferences(const Handle_CDM_Document &aDocument, const Handle_CDM_MetaData &aMetaData, const Handle_CDM_Application &anApplication, const Standard_Boolean UseStorageConfiguration);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_CDM_MetaData &aMetaData);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PCDM_ReferenceIterator();

};
%extend PCDM_ReferenceIterator {
	Handle_PCDM_ReferenceIterator GetHandle() {
	return *(Handle_PCDM_ReferenceIterator*) &$self;
	}
};

%nodefaultctor PCDM_DriverError;
class PCDM_DriverError : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		PCDM_DriverError();
		%feature("autodoc", "1");
		PCDM_DriverError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_PCDM_DriverError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PCDM_DriverError();

};
%extend PCDM_DriverError {
	Handle_PCDM_DriverError GetHandle() {
	return *(Handle_PCDM_DriverError*) &$self;
	}
};

%nodefaultctor PCDM_ReadWriter;
class PCDM_ReadWriter : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Version() const;
		%feature("autodoc", "1");
		virtual		void WriteReferenceCounter(const Handle_Storage_Data &aData, const Handle_CDM_Document &aDocument) const;
		%feature("autodoc", "1");
		virtual		void WriteReferences(const Handle_Storage_Data &aData, const Handle_CDM_Document &aDocument, const TCollection_ExtendedString &theReferencerFileName) const;
		%feature("autodoc", "1");
		virtual		void WriteExtensions(const Handle_Storage_Data &aData, const Handle_CDM_Document &aDocument) const;
		%feature("autodoc", "1");
		virtual		void WriteVersion(const Handle_Storage_Data &aData, const Handle_CDM_Document &aDocument) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ReadReferenceCounter(const TCollection_ExtendedString &theFileName, const Handle_CDM_MessageDriver &theMsgDriver) const;
		%feature("autodoc", "1");
		virtual		void ReadReferences(const TCollection_ExtendedString &aFileName, PCDM_SequenceOfReference & theReferences, const Handle_CDM_MessageDriver &theMsgDriver) const;
		%feature("autodoc", "1");
		virtual		void ReadExtensions(const TCollection_ExtendedString &aFileName, TColStd_SequenceOfExtendedString & theExtensions, const Handle_CDM_MessageDriver &theMsgDriver) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ReadDocumentVersion(const TCollection_ExtendedString &aFileName, const Handle_CDM_MessageDriver &theMsgDriver) const;
		%feature("autodoc", "1");
		void Open(Storage_BaseDriver & aDriver, const TCollection_ExtendedString &aFileName, const Storage_OpenMode anOpenMode);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter Reader(const TCollection_ExtendedString &aFileName);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter Writer();
		%feature("autodoc", "1");
		void WriteFileFormat(const Handle_Storage_Data &aData, const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		TCollection_ExtendedString FileFormat(const TCollection_ExtendedString &aFileName);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PCDM_ReadWriter {
	Handle_PCDM_ReadWriter GetHandle() {
	return *(Handle_PCDM_ReadWriter*) &$self;
	}
};

%nodefaultctor PCDM_SequenceNodeOfSequenceOfDocument;
class PCDM_SequenceNodeOfSequenceOfDocument : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		PCDM_SequenceNodeOfSequenceOfDocument(const Handle_PCDM_Document &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_PCDM_Document & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PCDM_SequenceNodeOfSequenceOfDocument();

};
%extend PCDM_SequenceNodeOfSequenceOfDocument {
	Handle_PCDM_SequenceNodeOfSequenceOfDocument GetHandle() {
	return *(Handle_PCDM_SequenceNodeOfSequenceOfDocument*) &$self;
	}
};

%nodefaultctor PCDM_ReadWriter_1;
class PCDM_ReadWriter_1 : public PCDM_ReadWriter {
	public:
		%feature("autodoc", "1");
		PCDM_ReadWriter_1();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Version() const;
		%feature("autodoc", "1");
		virtual		void WriteReferenceCounter(const Handle_Storage_Data &aData, const Handle_CDM_Document &aDocument) const;
		%feature("autodoc", "1");
		virtual		void WriteReferences(const Handle_Storage_Data &aData, const Handle_CDM_Document &aDocument, const TCollection_ExtendedString &theReferencerFileName) const;
		%feature("autodoc", "1");
		virtual		void WriteExtensions(const Handle_Storage_Data &aData, const Handle_CDM_Document &aDocument) const;
		%feature("autodoc", "1");
		virtual		void WriteVersion(const Handle_Storage_Data &aData, const Handle_CDM_Document &aDocument) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ReadReferenceCounter(const TCollection_ExtendedString &aFileName, const Handle_CDM_MessageDriver &theMsgDriver) const;
		%feature("autodoc", "1");
		virtual		void ReadReferences(const TCollection_ExtendedString &aFileName, PCDM_SequenceOfReference & theReferences, const Handle_CDM_MessageDriver &theMsgDriver) const;
		%feature("autodoc", "1");
		virtual		void ReadExtensions(const TCollection_ExtendedString &aFileName, TColStd_SequenceOfExtendedString & theExtensions, const Handle_CDM_MessageDriver &theMsgDriver) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ReadDocumentVersion(const TCollection_ExtendedString &aFileName, const Handle_CDM_MessageDriver &theMsgDriver) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PCDM_ReadWriter_1();

};
%extend PCDM_ReadWriter_1 {
	Handle_PCDM_ReadWriter_1 GetHandle() {
	return *(Handle_PCDM_ReadWriter_1*) &$self;
	}
};

%nodefaultctor PCDM_Document;
class PCDM_Document : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PCDM_Document(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PCDM_Document();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PCDM_Document();

};
%extend PCDM_Document {
	Handle_PCDM_Document GetHandle() {
	return *(Handle_PCDM_Document*) &$self;
	}
};