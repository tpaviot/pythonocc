/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module PCDM

%include PCDM_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
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

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


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
		Handle_PCDM_SequenceNodeOfSequenceOfReference();
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfReference(const Handle_PCDM_SequenceNodeOfSequenceOfReference &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfReference(const PCDM_SequenceNodeOfSequenceOfReference *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfReference & operator=(const Handle_PCDM_SequenceNodeOfSequenceOfReference &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfReference & operator=(const PCDM_SequenceNodeOfSequenceOfReference *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfReference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_SequenceNodeOfSequenceOfReference {
	PCDM_SequenceNodeOfSequenceOfReference* GetObject() {
	return (PCDM_SequenceNodeOfSequenceOfReference*)$self->Access();
	}
};
%extend Handle_PCDM_SequenceNodeOfSequenceOfReference {
	~Handle_PCDM_SequenceNodeOfSequenceOfReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_SequenceNodeOfSequenceOfReference\n");}
	}
};


%nodefaultctor Handle_PCDM_Document;
class Handle_PCDM_Document : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PCDM_Document();
		%feature("autodoc", "1");
		Handle_PCDM_Document(const Handle_PCDM_Document &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_Document(const PCDM_Document *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_Document & operator=(const Handle_PCDM_Document &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_Document & operator=(const PCDM_Document *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_Document const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PCDM_Document {
	PCDM_Document* GetObject() {
	return (PCDM_Document*)$self->Access();
	}
};
%extend Handle_PCDM_Document {
	~Handle_PCDM_Document() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_Document\n");}
	}
};


%nodefaultctor Handle_PCDM_SequenceNodeOfSequenceOfDocument;
class Handle_PCDM_SequenceNodeOfSequenceOfDocument : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfDocument();
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfDocument(const Handle_PCDM_SequenceNodeOfSequenceOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfDocument(const PCDM_SequenceNodeOfSequenceOfDocument *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfDocument & operator=(const Handle_PCDM_SequenceNodeOfSequenceOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfDocument & operator=(const PCDM_SequenceNodeOfSequenceOfDocument *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_SequenceNodeOfSequenceOfDocument const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_SequenceNodeOfSequenceOfDocument {
	PCDM_SequenceNodeOfSequenceOfDocument* GetObject() {
	return (PCDM_SequenceNodeOfSequenceOfDocument*)$self->Access();
	}
};
%extend Handle_PCDM_SequenceNodeOfSequenceOfDocument {
	~Handle_PCDM_SequenceNodeOfSequenceOfDocument() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_SequenceNodeOfSequenceOfDocument\n");}
	}
};


%nodefaultctor Handle_PCDM_ReadWriter;
class Handle_PCDM_ReadWriter : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter();
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter(const Handle_PCDM_ReadWriter &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter(const PCDM_ReadWriter *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter & operator=(const Handle_PCDM_ReadWriter &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter & operator=(const PCDM_ReadWriter *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_ReadWriter {
	PCDM_ReadWriter* GetObject() {
	return (PCDM_ReadWriter*)$self->Access();
	}
};
%extend Handle_PCDM_ReadWriter {
	~Handle_PCDM_ReadWriter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_ReadWriter\n");}
	}
};


%nodefaultctor Handle_PCDM_ReadWriter_1;
class Handle_PCDM_ReadWriter_1 : public Handle_PCDM_ReadWriter {
	public:
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter_1();
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter_1(const Handle_PCDM_ReadWriter_1 &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter_1(const PCDM_ReadWriter_1 *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter_1 & operator=(const Handle_PCDM_ReadWriter_1 &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter_1 & operator=(const PCDM_ReadWriter_1 *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_ReadWriter_1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_ReadWriter_1 {
	PCDM_ReadWriter_1* GetObject() {
	return (PCDM_ReadWriter_1*)$self->Access();
	}
};
%extend Handle_PCDM_ReadWriter_1 {
	~Handle_PCDM_ReadWriter_1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_ReadWriter_1\n");}
	}
};


%nodefaultctor Handle_PCDM_Reader;
class Handle_PCDM_Reader : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_PCDM_Reader();
		%feature("autodoc", "1");
		Handle_PCDM_Reader(const Handle_PCDM_Reader &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_Reader(const PCDM_Reader *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_Reader & operator=(const Handle_PCDM_Reader &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_Reader & operator=(const PCDM_Reader *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_Reader const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_Reader {
	PCDM_Reader* GetObject() {
	return (PCDM_Reader*)$self->Access();
	}
};
%extend Handle_PCDM_Reader {
	~Handle_PCDM_Reader() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_Reader\n");}
	}
};


%nodefaultctor Handle_PCDM_RetrievalDriver;
class Handle_PCDM_RetrievalDriver : public Handle_PCDM_Reader {
	public:
		%feature("autodoc", "1");
		Handle_PCDM_RetrievalDriver();
		%feature("autodoc", "1");
		Handle_PCDM_RetrievalDriver(const Handle_PCDM_RetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_RetrievalDriver(const PCDM_RetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_RetrievalDriver & operator=(const Handle_PCDM_RetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_RetrievalDriver & operator=(const PCDM_RetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_RetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_RetrievalDriver {
	PCDM_RetrievalDriver* GetObject() {
	return (PCDM_RetrievalDriver*)$self->Access();
	}
};
%extend Handle_PCDM_RetrievalDriver {
	~Handle_PCDM_RetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_RetrievalDriver\n");}
	}
};


%nodefaultctor Handle_PCDM_Writer;
class Handle_PCDM_Writer : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_PCDM_Writer();
		%feature("autodoc", "1");
		Handle_PCDM_Writer(const Handle_PCDM_Writer &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_Writer(const PCDM_Writer *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_Writer & operator=(const Handle_PCDM_Writer &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_Writer & operator=(const PCDM_Writer *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_Writer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_Writer {
	PCDM_Writer* GetObject() {
	return (PCDM_Writer*)$self->Access();
	}
};
%extend Handle_PCDM_Writer {
	~Handle_PCDM_Writer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_Writer\n");}
	}
};


%nodefaultctor Handle_PCDM_ReferenceIterator;
class Handle_PCDM_ReferenceIterator : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_PCDM_ReferenceIterator();
		%feature("autodoc", "1");
		Handle_PCDM_ReferenceIterator(const Handle_PCDM_ReferenceIterator &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_ReferenceIterator(const PCDM_ReferenceIterator *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_ReferenceIterator & operator=(const Handle_PCDM_ReferenceIterator &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_ReferenceIterator & operator=(const PCDM_ReferenceIterator *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_ReferenceIterator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_ReferenceIterator {
	PCDM_ReferenceIterator* GetObject() {
	return (PCDM_ReferenceIterator*)$self->Access();
	}
};
%extend Handle_PCDM_ReferenceIterator {
	~Handle_PCDM_ReferenceIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_ReferenceIterator\n");}
	}
};


%nodefaultctor Handle_PCDM_StorageDriver;
class Handle_PCDM_StorageDriver : public Handle_PCDM_Writer {
	public:
		%feature("autodoc", "1");
		Handle_PCDM_StorageDriver();
		%feature("autodoc", "1");
		Handle_PCDM_StorageDriver(const Handle_PCDM_StorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_StorageDriver(const PCDM_StorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_StorageDriver & operator=(const Handle_PCDM_StorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_StorageDriver & operator=(const PCDM_StorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_StorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_StorageDriver {
	PCDM_StorageDriver* GetObject() {
	return (PCDM_StorageDriver*)$self->Access();
	}
};
%extend Handle_PCDM_StorageDriver {
	~Handle_PCDM_StorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_StorageDriver\n");}
	}
};


%nodefaultctor Handle_PCDM_DriverError;
class Handle_PCDM_DriverError : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_PCDM_DriverError();
		%feature("autodoc", "1");
		Handle_PCDM_DriverError(const Handle_PCDM_DriverError &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_DriverError(const PCDM_DriverError *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_DriverError & operator=(const Handle_PCDM_DriverError &aHandle);
		%feature("autodoc", "1");
		Handle_PCDM_DriverError & operator=(const PCDM_DriverError *anItem);
		%feature("autodoc", "1");
		Handle_PCDM_DriverError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCDM_DriverError {
	PCDM_DriverError* GetObject() {
	return (PCDM_DriverError*)$self->Access();
	}
};
%extend Handle_PCDM_DriverError {
	~Handle_PCDM_DriverError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCDM_DriverError\n");}
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
%extend PCDM_Reader {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCDM_Reader {
	~PCDM_Reader() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_Reader\n");}
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
%extend PCDM_RetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCDM_RetrievalDriver {
	~PCDM_RetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_RetrievalDriver\n");}
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
%extend PCDM_Writer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCDM_Writer {
	~PCDM_Writer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_Writer\n");}
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

};
%extend PCDM_SequenceNodeOfSequenceOfReference {
	Handle_PCDM_SequenceNodeOfSequenceOfReference GetHandle() {
	return *(Handle_PCDM_SequenceNodeOfSequenceOfReference*) &$self;
	}
};
%extend PCDM_SequenceNodeOfSequenceOfReference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCDM_SequenceNodeOfSequenceOfReference {
	~PCDM_SequenceNodeOfSequenceOfReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_SequenceNodeOfSequenceOfReference\n");}
	}
};


%nodefaultctor PCDM_Reference;
class PCDM_Reference {
	public:
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
%extend PCDM_Reference {
	~PCDM_Reference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_Reference\n");}
	}
};


%nodefaultctor PCDM;
class PCDM {
	public:
		%feature("autodoc", "1");
		PCDM();
		%feature("autodoc", "1");
		Standard_Boolean FindStorageDriver(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		Handle_Storage_Schema Schema(const TCollection_ExtendedString &aSchemaName, const Handle_CDM_Application &anApplication);

};
%extend PCDM {
	~PCDM() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM\n");}
	}
};


%nodefaultctor PCDM_SequenceOfDocument;
class PCDM_SequenceOfDocument : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		PCDM_SequenceOfDocument();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const PCDM_SequenceOfDocument & Assign(const PCDM_SequenceOfDocument &Other);
		%feature("autodoc", "1");
		const PCDM_SequenceOfDocument & operator=(const PCDM_SequenceOfDocument &Other);
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
%extend PCDM_SequenceOfDocument {
	~PCDM_SequenceOfDocument() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_SequenceOfDocument\n");}
	}
};


%nodefaultctor PCDM_SequenceOfReference;
class PCDM_SequenceOfReference : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		PCDM_SequenceOfReference();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const PCDM_SequenceOfReference & Assign(const PCDM_SequenceOfReference &Other);
		%feature("autodoc", "1");
		const PCDM_SequenceOfReference & operator=(const PCDM_SequenceOfReference &Other);
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
%extend PCDM_SequenceOfReference {
	~PCDM_SequenceOfReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_SequenceOfReference\n");}
	}
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

};
%extend PCDM_ReferenceIterator {
	Handle_PCDM_ReferenceIterator GetHandle() {
	return *(Handle_PCDM_ReferenceIterator*) &$self;
	}
};
%extend PCDM_ReferenceIterator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCDM_ReferenceIterator {
	~PCDM_ReferenceIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_ReferenceIterator\n");}
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

};
%extend PCDM_DriverError {
	Handle_PCDM_DriverError GetHandle() {
	return *(Handle_PCDM_DriverError*) &$self;
	}
};
%extend PCDM_DriverError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCDM_DriverError {
	~PCDM_DriverError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_DriverError\n");}
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
%extend PCDM_ReadWriter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCDM_ReadWriter {
	~PCDM_ReadWriter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_ReadWriter\n");}
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

};
%extend PCDM_SequenceNodeOfSequenceOfDocument {
	Handle_PCDM_SequenceNodeOfSequenceOfDocument GetHandle() {
	return *(Handle_PCDM_SequenceNodeOfSequenceOfDocument*) &$self;
	}
};
%extend PCDM_SequenceNodeOfSequenceOfDocument {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCDM_SequenceNodeOfSequenceOfDocument {
	~PCDM_SequenceNodeOfSequenceOfDocument() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_SequenceNodeOfSequenceOfDocument\n");}
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

};
%extend PCDM_ReadWriter_1 {
	Handle_PCDM_ReadWriter_1 GetHandle() {
	return *(Handle_PCDM_ReadWriter_1*) &$self;
	}
};
%extend PCDM_ReadWriter_1 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCDM_ReadWriter_1 {
	~PCDM_ReadWriter_1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_ReadWriter_1\n");}
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

};
%extend PCDM_Document {
	Handle_PCDM_Document GetHandle() {
	return *(Handle_PCDM_Document*) &$self;
	}
};
%extend PCDM_Document {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCDM_Document {
	~PCDM_Document() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCDM_Document\n");}
	}
};
