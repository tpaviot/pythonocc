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
%module CDF

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


%include CDF_dependencies.i


%include CDF_headers.i


enum CDF_StoreStatus {
	CDF_SS_OK,
	CDF_SS_DriverFailure,
	CDF_SS_WriteFailure,
	CDF_SS_Failure,
	};

enum CDF_RetrievableStatus {
	CDF_RS_OK,
	CDF_RS_AlreadyRetrievedAndModified,
	CDF_RS_AlreadyRetrieved,
	CDF_RS_UnknownDocument,
	CDF_RS_NoDriver,
	CDF_RS_UnknownFileDriver,
	CDF_RS_WrongResource,
	CDF_RS_OpenError,
	CDF_RS_NoVersion,
	CDF_RS_NoModel,
	CDF_RS_NoSchema,
	CDF_RS_NoDocument,
	CDF_RS_ExtensionFailure,
	CDF_RS_WrongStreamMode,
	CDF_RS_FormatFailure,
	CDF_RS_TypeFailure,
	CDF_RS_TypeNotFoundInSchema,
	CDF_RS_UnrecognizedFileFormat,
	CDF_RS_MakeFailure,
	CDF_RS_PermissionDenied,
	CDF_RS_DriverFailure,
	};

enum CDF_StoreSetNameStatus {
	CDF_SSNS_OK,
	CDF_SSNS_ReplacingAnExistentDocument,
	CDF_SSNS_OpenDocument,
	};

enum CDF_TryStoreStatus {
	CDF_TS_OK,
	CDF_TS_NoCurrentDocument,
	CDF_TS_NoDriver,
	CDF_TS_NoSubComponentDriver,
	};

enum CDF_SubComponentStatus {
	CDF_SCS_Consistent,
	CDF_SCS_Unconsistent,
	CDF_SCS_Stored,
	CDF_SCS_Modified,
	};

enum CDF_TypeOfActivation {
	CDF_TOA_New,
	CDF_TOA_Modified,
	CDF_TOA_Unchanged,
	};



%nodefaultctor Handle_CDF_MetaDataDriver;
class Handle_CDF_MetaDataDriver : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriver();
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriver(const Handle_CDF_MetaDataDriver &aHandle);
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriver(const CDF_MetaDataDriver *anItem);
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDF_MetaDataDriver {
	CDF_MetaDataDriver* GetObject() {
	return (CDF_MetaDataDriver*)$self->Access();
	}
};
%extend Handle_CDF_MetaDataDriver {
	~Handle_CDF_MetaDataDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_CDF_MetaDataDriver\n");}
	}
};

%nodefaultctor Handle_CDF_MetaDataDriverError;
class Handle_CDF_MetaDataDriverError : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriverError();
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriverError(const Handle_CDF_MetaDataDriverError &aHandle);
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriverError(const CDF_MetaDataDriverError *anItem);
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriverError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDF_MetaDataDriverError {
	CDF_MetaDataDriverError* GetObject() {
	return (CDF_MetaDataDriverError*)$self->Access();
	}
};
%extend Handle_CDF_MetaDataDriverError {
	~Handle_CDF_MetaDataDriverError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_CDF_MetaDataDriverError\n");}
	}
};

%nodefaultctor Handle_CDF_StoreList;
class Handle_CDF_StoreList : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDF_StoreList();
		%feature("autodoc", "1");
		Handle_CDF_StoreList(const Handle_CDF_StoreList &aHandle);
		%feature("autodoc", "1");
		Handle_CDF_StoreList(const CDF_StoreList *anItem);
		%feature("autodoc", "1");
		Handle_CDF_StoreList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDF_StoreList {
	CDF_StoreList* GetObject() {
	return (CDF_StoreList*)$self->Access();
	}
};
%extend Handle_CDF_StoreList {
	~Handle_CDF_StoreList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_CDF_StoreList\n");}
	}
};

%nodefaultctor Handle_CDF_Directory;
class Handle_CDF_Directory : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDF_Directory();
		%feature("autodoc", "1");
		Handle_CDF_Directory(const Handle_CDF_Directory &aHandle);
		%feature("autodoc", "1");
		Handle_CDF_Directory(const CDF_Directory *anItem);
		%feature("autodoc", "1");
		Handle_CDF_Directory const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDF_Directory {
	CDF_Directory* GetObject() {
	return (CDF_Directory*)$self->Access();
	}
};
%extend Handle_CDF_Directory {
	~Handle_CDF_Directory() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_CDF_Directory\n");}
	}
};

%nodefaultctor Handle_CDF_Application;
class Handle_CDF_Application : public Handle_CDM_Application {
	public:
		%feature("autodoc", "1");
		Handle_CDF_Application();
		%feature("autodoc", "1");
		Handle_CDF_Application(const Handle_CDF_Application &aHandle);
		%feature("autodoc", "1");
		Handle_CDF_Application(const CDF_Application *anItem);
		%feature("autodoc", "1");
		Handle_CDF_Application const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDF_Application {
	CDF_Application* GetObject() {
	return (CDF_Application*)$self->Access();
	}
};
%extend Handle_CDF_Application {
	~Handle_CDF_Application() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_CDF_Application\n");}
	}
};

%nodefaultctor Handle_CDF_MetaDataDriverFactory;
class Handle_CDF_MetaDataDriverFactory : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriverFactory();
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriverFactory(const Handle_CDF_MetaDataDriverFactory &aHandle);
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriverFactory(const CDF_MetaDataDriverFactory *anItem);
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriverFactory const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDF_MetaDataDriverFactory {
	CDF_MetaDataDriverFactory* GetObject() {
	return (CDF_MetaDataDriverFactory*)$self->Access();
	}
};
%extend Handle_CDF_MetaDataDriverFactory {
	~Handle_CDF_MetaDataDriverFactory() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_CDF_MetaDataDriverFactory\n");}
	}
};

%nodefaultctor Handle_CDF_Session;
class Handle_CDF_Session : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDF_Session();
		%feature("autodoc", "1");
		Handle_CDF_Session(const Handle_CDF_Session &aHandle);
		%feature("autodoc", "1");
		Handle_CDF_Session(const CDF_Session *anItem);
		%feature("autodoc", "1");
		Handle_CDF_Session const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDF_Session {
	CDF_Session* GetObject() {
	return (CDF_Session*)$self->Access();
	}
};
%extend Handle_CDF_Session {
	~Handle_CDF_Session() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_CDF_Session\n");}
	}
};

%nodefaultctor CDF_MetaDataDriverError;
class CDF_MetaDataDriverError : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		CDF_MetaDataDriverError();
		%feature("autodoc", "1");
		CDF_MetaDataDriverError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriverError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend CDF_MetaDataDriverError {
	Handle_CDF_MetaDataDriverError GetHandle() {
	return *(Handle_CDF_MetaDataDriverError*) &$self;
	}
};
%extend CDF_MetaDataDriverError {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend CDF_MetaDataDriverError {
	~CDF_MetaDataDriverError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF_MetaDataDriverError\n");}
	}
};

%nodefaultctor CDF;
class CDF {
	public:
		%feature("autodoc", "1");
		CDF();
		%feature("autodoc", "1");
		void GetLicense(const Standard_Integer anApplicationIdentifier);
		%feature("autodoc", "1");
		Standard_Boolean IsAvailable(const Standard_Integer anApplicationIdentifier);

};
%extend CDF {
	~CDF() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF\n");}
	}
};

%nodefaultctor CDF_Application;
class CDF_Application : public CDM_Application {
	public:
		%feature("autodoc", "1");
		Handle_CDF_Application Load(const Standard_GUID &aGUID);
		%feature("autodoc", "1");
		void Open(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		CDM_CanCloseStatus CanClose(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		void Close(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		Handle_CDM_Document Retrieve(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName, const Standard_Boolean UseStorageConfiguration=1);
		%feature("autodoc", "1");
		Handle_CDM_Document Retrieve(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName, const TCollection_ExtendedString &aVersion, const Standard_Boolean UseStorageConfiguration=1);
		%feature("autodoc", "1");
		CDF_RetrievableStatus CanRetrieve(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName);
		%feature("autodoc", "1");
		CDF_RetrievableStatus CanRetrieve(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName, const TCollection_ExtendedString &aVersion);
		%feature("autodoc", "1");
		virtual		void Formats(TColStd_SequenceOfExtendedString & Formats);
		%feature("autodoc", "1");
		CDF_RetrievableStatus GetRetrieveStatus() const;
		%feature("autodoc", "1");
		Standard_Boolean FindReader(const TCollection_ExtendedString &aFileName);
		%feature("autodoc", "1");
		Handle_PCDM_Reader Reader(const TCollection_ExtendedString &aFileName);
		%feature("autodoc", "1");
		Standard_Boolean FindReaderFromFormat(const TCollection_ExtendedString &aFormat);
		%feature("autodoc", "1");
		Handle_PCDM_Reader ReaderFromFormat(const TCollection_ExtendedString &aFormat);
		%feature("autodoc", "1");
		Standard_Boolean Format(const TCollection_ExtendedString &aFileName, TCollection_ExtendedString & theFormat);
		%feature("autodoc", "1");
		Standard_ExtString DefaultFolder();
		%feature("autodoc", "1");
		Standard_Boolean SetDefaultFolder(const Standard_ExtString aFolder);
		%feature("autodoc", "1");
		Standard_ExtString DefaultExtension();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend CDF_Application {
	Handle_CDF_Application GetHandle() {
	return *(Handle_CDF_Application*) &$self;
	}
};
%extend CDF_Application {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend CDF_Application {
	~CDF_Application() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF_Application\n");}
	}
};

%nodefaultctor CDF_Timer;
class CDF_Timer {
	public:
		%feature("autodoc", "1");
		CDF_Timer();
		%feature("autodoc", "1");
		void ShowAndRestart(const char * aMessage);
		%feature("autodoc", "1");
		void ShowAndStop(const char * aMessage);
		%feature("autodoc", "1");
		Standard_Boolean MustShow();

};
%extend CDF_Timer {
	~CDF_Timer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF_Timer\n");}
	}
};

%nodefaultctor CDF_StoreList;
class CDF_StoreList : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		CDF_StoreList(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		Standard_Boolean IsConsistent() const;
		%feature("autodoc", "1");
		CDF_StoreStatus Store(Handle_CDM_MetaData & aMetaData, TCollection_ExtendedString & aStatusAssociatedText);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_CDM_Document Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend CDF_StoreList {
	Handle_CDF_StoreList GetHandle() {
	return *(Handle_CDF_StoreList*) &$self;
	}
};
%extend CDF_StoreList {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend CDF_StoreList {
	~CDF_StoreList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF_StoreList\n");}
	}
};

%nodefaultctor CDF_MetaDataDriver;
class CDF_MetaDataDriver : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasVersionCapability();
		%feature("autodoc", "1");
		virtual		void CreateDependsOn(const Handle_CDM_MetaData &aFirstData, const Handle_CDM_MetaData &aSecondData);
		%feature("autodoc", "1");
		virtual		void CreateReference(const Handle_CDM_MetaData &aFrom, const Handle_CDM_MetaData &aTo, const Standard_Integer aReferenceIdentifier, const Standard_Integer aToDocumentVersion);
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasVersion(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName);
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString BuildFileName(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString SetName(const Handle_CDM_Document &aDocument, const TCollection_ExtendedString &aName);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Find(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName, const TCollection_ExtendedString &aVersion);
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasReadPermission(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName, const TCollection_ExtendedString &aVersion);
		%feature("autodoc", "1");
		virtual		Handle_CDM_MetaData MetaData(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName, const TCollection_ExtendedString &aVersion);
		%feature("autodoc", "1");
		virtual		Handle_CDM_MetaData LastVersion(const Handle_CDM_MetaData &aMetaData);
		%feature("autodoc", "1");
		virtual		Handle_CDM_MetaData CreateMetaData(const Handle_CDM_Document &aDocument, const TCollection_ExtendedString &aFileName);
		%feature("autodoc", "1");
		virtual		Standard_Boolean FindFolder(const TCollection_ExtendedString &aFolder);
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString DefaultFolder();
		%feature("autodoc", "1");
		virtual		Handle_PCDM_ReferenceIterator ReferenceIterator();
		%feature("autodoc", "1");
		Standard_Boolean Find(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName);
		%feature("autodoc", "1");
		Handle_CDM_MetaData MetaData(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend CDF_MetaDataDriver {
	Handle_CDF_MetaDataDriver GetHandle() {
	return *(Handle_CDF_MetaDataDriver*) &$self;
	}
};
%extend CDF_MetaDataDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend CDF_MetaDataDriver {
	~CDF_MetaDataDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF_MetaDataDriver\n");}
	}
};

%nodefaultctor CDF_MetaDataDriverFactory;
class CDF_MetaDataDriverFactory : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		virtual		Handle_CDF_MetaDataDriver Build() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend CDF_MetaDataDriverFactory {
	Handle_CDF_MetaDataDriverFactory GetHandle() {
	return *(Handle_CDF_MetaDataDriverFactory*) &$self;
	}
};
%extend CDF_MetaDataDriverFactory {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend CDF_MetaDataDriverFactory {
	~CDF_MetaDataDriverFactory() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF_MetaDataDriverFactory\n");}
	}
};

%nodefaultctor CDF_Directory;
class CDF_Directory : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		CDF_Directory();
		%feature("autodoc", "1");
		void Add(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		void Remove(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_CDM_Document &aDocument) const;
		%feature("autodoc", "1");
		Handle_CDM_Document Last();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend CDF_Directory {
	Handle_CDF_Directory GetHandle() {
	return *(Handle_CDF_Directory*) &$self;
	}
};
%extend CDF_Directory {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend CDF_Directory {
	~CDF_Directory() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF_Directory\n");}
	}
};

%nodefaultctor CDF_Session;
class CDF_Session : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		CDF_Session();
		%feature("autodoc", "1");
		Standard_Boolean Exists();
		%feature("autodoc", "1");
		Handle_CDF_Session CurrentSession();
		%feature("autodoc", "1");
		Handle_CDF_Directory Directory() const;
		%feature("autodoc", "1");
		Standard_Boolean HasCurrentApplication() const;
		%feature("autodoc", "1");
		Handle_CDF_Application CurrentApplication() const;
		%feature("autodoc", "1");
		void SetCurrentApplication(const Handle_CDF_Application &anApplication);
		%feature("autodoc", "1");
		void UnsetCurrentApplication();
		%feature("autodoc", "1");
		Handle_CDF_MetaDataDriver MetaDataDriver() const;
		%feature("autodoc", "1");
		void LoadDriver();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend CDF_Session {
	Handle_CDF_Session GetHandle() {
	return *(Handle_CDF_Session*) &$self;
	}
};
%extend CDF_Session {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend CDF_Session {
	~CDF_Session() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF_Session\n");}
	}
};

%nodefaultctor CDF_DirectoryIterator;
class CDF_DirectoryIterator {
	public:
		%feature("autodoc", "1");
		CDF_DirectoryIterator();
		%feature("autodoc", "1");
		CDF_DirectoryIterator(const Handle_CDF_Directory &aDirectory);
		%feature("autodoc", "1");
		Standard_Boolean MoreDocument();
		%feature("autodoc", "1");
		void NextDocument();
		%feature("autodoc", "1");
		Handle_CDM_Document Document();

};
%extend CDF_DirectoryIterator {
	~CDF_DirectoryIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF_DirectoryIterator\n");}
	}
};

%nodefaultctor CDF_Store;
class CDF_Store {
	public:
		%feature("autodoc", "1");
		CDF_Store(const Handle_CDM_Document &aDocument);
		%feature("autodoc", "1");
		CDF_TryStoreStatus Check();
		%feature("autodoc", "1");
		Standard_ExtString LastName() const;
		%feature("autodoc", "1");
		Standard_ExtString Folder() const;
		%feature("autodoc", "1");
		Standard_ExtString Name() const;
		%feature("autodoc", "1");
		Standard_Boolean IsStored() const;
		%feature("autodoc", "1");
		Standard_Boolean IsModified() const;
		%feature("autodoc", "1");
		Standard_Boolean CurrentIsConsistent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsConsistent() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAPreviousVersion() const;
		%feature("autodoc", "1");
		Standard_ExtString PreviousVersion() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMainDocument() const;
		%feature("autodoc", "1");
		Standard_Boolean SetFolder(const TCollection_ExtendedString &aFolder);
		%feature("autodoc", "1");
		CDF_StoreSetNameStatus SetName(const Standard_ExtString aName);
		%feature("autodoc", "1");
		void SetComment(const Standard_ExtString aComment);
		%feature("autodoc", "1");
		Standard_ExtString Comment() const;
		%feature("autodoc", "1");
		CDF_StoreSetNameStatus RecheckName();
		%feature("autodoc", "1");
		Standard_Boolean SetPreviousVersion(const Standard_ExtString aPreviousVersion);
		%feature("autodoc", "1");
		void Realize();
		%feature("autodoc", "1");
		Standard_ExtString Path() const;
		%feature("autodoc", "1");
		Standard_ExtString MetaDataPath() const;
		%feature("autodoc", "1");
		Standard_ExtString Description() const;
		%feature("autodoc", "1");
		void InitComponent();
		%feature("autodoc", "1");
		Standard_Boolean MoreComponent() const;
		%feature("autodoc", "1");
		void NextComponent();
		%feature("autodoc", "1");
		void SetCurrent();
		%feature("autodoc", "1");
		Standard_ExtString Component() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSubComponents() const;
		%feature("autodoc", "1");
		CDF_SubComponentStatus SubComponentStatus(const Standard_ExtString aPresentation) const;
		%feature("autodoc", "1");
		void SetCurrent(const Standard_ExtString aPresentation);
		%feature("autodoc", "1");
		void SetMain();
		%feature("autodoc", "1");
		CDF_StoreStatus StoreStatus() const;
		%feature("autodoc", "1");
		Standard_ExtString AssociatedStatusText() const;
		%feature("autodoc", "1");
		CDF_StoreSetNameStatus SetName(const TCollection_ExtendedString &aName);
		%feature("autodoc", "1");
		Standard_Boolean SetFolder(const Standard_ExtString aFolder);

};
%extend CDF_Store {
	~CDF_Store() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of CDF_Store\n");}
	}
};