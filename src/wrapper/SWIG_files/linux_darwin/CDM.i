/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module CDM
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include CDM_renames.i


%include CDM_required_python_modules.i


%include CDM_dependencies.i


%include CDM_headers.i

typedef TColStd_DataMapOfStringInteger CDM_NamesDirectory;
typedef CDM_Document * CDM_DocumentPointer;

enum CDM_CanCloseStatus {
	CDM_CCS_OK,
	CDM_CCS_NotOpen,
	CDM_CCS_UnstoredReferenced,
	CDM_CCS_ModifiedReferenced,
	CDM_CCS_ReferenceRejection,
	};



%nodefaultctor Handle_CDM_StdMapNodeOfMapOfDocument;
class Handle_CDM_StdMapNodeOfMapOfDocument : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_CDM_StdMapNodeOfMapOfDocument();
		%feature("autodoc", "1");
		Handle_CDM_StdMapNodeOfMapOfDocument(const Handle_CDM_StdMapNodeOfMapOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_StdMapNodeOfMapOfDocument(const CDM_StdMapNodeOfMapOfDocument *anItem);
		%feature("autodoc", "1");
		Handle_CDM_StdMapNodeOfMapOfDocument & operator=(const Handle_CDM_StdMapNodeOfMapOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_StdMapNodeOfMapOfDocument & operator=(const CDM_StdMapNodeOfMapOfDocument *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_StdMapNodeOfMapOfDocument DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_StdMapNodeOfMapOfDocument {
	CDM_StdMapNodeOfMapOfDocument* GetObject() {
	return (CDM_StdMapNodeOfMapOfDocument*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_StdMapNodeOfMapOfDocument::~Handle_CDM_StdMapNodeOfMapOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_StdMapNodeOfMapOfDocument {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_MessageDriver;
class Handle_CDM_MessageDriver : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDM_MessageDriver();
		%feature("autodoc", "1");
		Handle_CDM_MessageDriver(const Handle_CDM_MessageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_MessageDriver(const CDM_MessageDriver *anItem);
		%feature("autodoc", "1");
		Handle_CDM_MessageDriver & operator=(const Handle_CDM_MessageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_MessageDriver & operator=(const CDM_MessageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_MessageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_MessageDriver {
	CDM_MessageDriver* GetObject() {
	return (CDM_MessageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_MessageDriver::~Handle_CDM_MessageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_MessageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_DataMapNodeOfPresentationDirectory;
class Handle_CDM_DataMapNodeOfPresentationDirectory : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfPresentationDirectory();
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfPresentationDirectory(const Handle_CDM_DataMapNodeOfPresentationDirectory &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfPresentationDirectory(const CDM_DataMapNodeOfPresentationDirectory *anItem);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfPresentationDirectory & operator=(const Handle_CDM_DataMapNodeOfPresentationDirectory &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfPresentationDirectory & operator=(const CDM_DataMapNodeOfPresentationDirectory *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_DataMapNodeOfPresentationDirectory DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_DataMapNodeOfPresentationDirectory {
	CDM_DataMapNodeOfPresentationDirectory* GetObject() {
	return (CDM_DataMapNodeOfPresentationDirectory*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_DataMapNodeOfPresentationDirectory::~Handle_CDM_DataMapNodeOfPresentationDirectory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_DataMapNodeOfPresentationDirectory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_Reference;
class Handle_CDM_Reference : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDM_Reference();
		%feature("autodoc", "1");
		Handle_CDM_Reference(const Handle_CDM_Reference &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_Reference(const CDM_Reference *anItem);
		%feature("autodoc", "1");
		Handle_CDM_Reference & operator=(const Handle_CDM_Reference &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_Reference & operator=(const CDM_Reference *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_Reference DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_Reference {
	CDM_Reference* GetObject() {
	return (CDM_Reference*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_Reference::~Handle_CDM_Reference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_Reference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_COutMessageDriver;
class Handle_CDM_COutMessageDriver : public Handle_CDM_MessageDriver {
	public:
		%feature("autodoc", "1");
		Handle_CDM_COutMessageDriver();
		%feature("autodoc", "1");
		Handle_CDM_COutMessageDriver(const Handle_CDM_COutMessageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_COutMessageDriver(const CDM_COutMessageDriver *anItem);
		%feature("autodoc", "1");
		Handle_CDM_COutMessageDriver & operator=(const Handle_CDM_COutMessageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_COutMessageDriver & operator=(const CDM_COutMessageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_COutMessageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_COutMessageDriver {
	CDM_COutMessageDriver* GetObject() {
	return (CDM_COutMessageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_COutMessageDriver::~Handle_CDM_COutMessageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_COutMessageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_NullMessageDriver;
class Handle_CDM_NullMessageDriver : public Handle_CDM_MessageDriver {
	public:
		%feature("autodoc", "1");
		Handle_CDM_NullMessageDriver();
		%feature("autodoc", "1");
		Handle_CDM_NullMessageDriver(const Handle_CDM_NullMessageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_NullMessageDriver(const CDM_NullMessageDriver *anItem);
		%feature("autodoc", "1");
		Handle_CDM_NullMessageDriver & operator=(const Handle_CDM_NullMessageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_NullMessageDriver & operator=(const CDM_NullMessageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_NullMessageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_NullMessageDriver {
	CDM_NullMessageDriver* GetObject() {
	return (CDM_NullMessageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_NullMessageDriver::~Handle_CDM_NullMessageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_NullMessageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_Document;
class Handle_CDM_Document : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDM_Document();
		%feature("autodoc", "1");
		Handle_CDM_Document(const Handle_CDM_Document &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_Document(const CDM_Document *anItem);
		%feature("autodoc", "1");
		Handle_CDM_Document & operator=(const Handle_CDM_Document &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_Document & operator=(const CDM_Document *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_Document DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_Document {
	CDM_Document* GetObject() {
	return (CDM_Document*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_Document::~Handle_CDM_Document %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_Document {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_DataMapNodeOfMetaDataLookUpTable;
class Handle_CDM_DataMapNodeOfMetaDataLookUpTable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfMetaDataLookUpTable();
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfMetaDataLookUpTable(const Handle_CDM_DataMapNodeOfMetaDataLookUpTable &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfMetaDataLookUpTable(const CDM_DataMapNodeOfMetaDataLookUpTable *anItem);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfMetaDataLookUpTable & operator=(const Handle_CDM_DataMapNodeOfMetaDataLookUpTable &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_DataMapNodeOfMetaDataLookUpTable & operator=(const CDM_DataMapNodeOfMetaDataLookUpTable *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_DataMapNodeOfMetaDataLookUpTable DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_DataMapNodeOfMetaDataLookUpTable {
	CDM_DataMapNodeOfMetaDataLookUpTable* GetObject() {
	return (CDM_DataMapNodeOfMetaDataLookUpTable*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_DataMapNodeOfMetaDataLookUpTable::~Handle_CDM_DataMapNodeOfMetaDataLookUpTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_DataMapNodeOfMetaDataLookUpTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_ListNodeOfListOfDocument;
class Handle_CDM_ListNodeOfListOfDocument : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfDocument();
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfDocument(const Handle_CDM_ListNodeOfListOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfDocument(const CDM_ListNodeOfListOfDocument *anItem);
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfDocument & operator=(const Handle_CDM_ListNodeOfListOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfDocument & operator=(const CDM_ListNodeOfListOfDocument *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_ListNodeOfListOfDocument DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_ListNodeOfListOfDocument {
	CDM_ListNodeOfListOfDocument* GetObject() {
	return (CDM_ListNodeOfListOfDocument*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_ListNodeOfListOfDocument::~Handle_CDM_ListNodeOfListOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_ListNodeOfListOfDocument {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_ListNodeOfListOfReferences;
class Handle_CDM_ListNodeOfListOfReferences : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfReferences();
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfReferences(const Handle_CDM_ListNodeOfListOfReferences &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfReferences(const CDM_ListNodeOfListOfReferences *anItem);
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfReferences & operator=(const Handle_CDM_ListNodeOfListOfReferences &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_ListNodeOfListOfReferences & operator=(const CDM_ListNodeOfListOfReferences *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_ListNodeOfListOfReferences DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_ListNodeOfListOfReferences {
	CDM_ListNodeOfListOfReferences* GetObject() {
	return (CDM_ListNodeOfListOfReferences*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_ListNodeOfListOfReferences::~Handle_CDM_ListNodeOfListOfReferences %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_ListNodeOfListOfReferences {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_StackNodeOfStackOfDocument;
class Handle_CDM_StackNodeOfStackOfDocument : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_CDM_StackNodeOfStackOfDocument();
		%feature("autodoc", "1");
		Handle_CDM_StackNodeOfStackOfDocument(const Handle_CDM_StackNodeOfStackOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_StackNodeOfStackOfDocument(const CDM_StackNodeOfStackOfDocument *anItem);
		%feature("autodoc", "1");
		Handle_CDM_StackNodeOfStackOfDocument & operator=(const Handle_CDM_StackNodeOfStackOfDocument &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_StackNodeOfStackOfDocument & operator=(const CDM_StackNodeOfStackOfDocument *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_StackNodeOfStackOfDocument DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_StackNodeOfStackOfDocument {
	CDM_StackNodeOfStackOfDocument* GetObject() {
	return (CDM_StackNodeOfStackOfDocument*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_StackNodeOfStackOfDocument::~Handle_CDM_StackNodeOfStackOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_StackNodeOfStackOfDocument {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_MetaData;
class Handle_CDM_MetaData : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDM_MetaData();
		%feature("autodoc", "1");
		Handle_CDM_MetaData(const Handle_CDM_MetaData &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_MetaData(const CDM_MetaData *anItem);
		%feature("autodoc", "1");
		Handle_CDM_MetaData & operator=(const Handle_CDM_MetaData &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_MetaData & operator=(const CDM_MetaData *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_MetaData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_MetaData {
	CDM_MetaData* GetObject() {
	return (CDM_MetaData*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_MetaData::~Handle_CDM_MetaData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_MetaData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_CDM_Application;
class Handle_CDM_Application : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_CDM_Application();
		%feature("autodoc", "1");
		Handle_CDM_Application(const Handle_CDM_Application &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_Application(const CDM_Application *anItem);
		%feature("autodoc", "1");
		Handle_CDM_Application & operator=(const Handle_CDM_Application &aHandle);
		%feature("autodoc", "1");
		Handle_CDM_Application & operator=(const CDM_Application *anItem);
		%feature("autodoc", "1");
		static		Handle_CDM_Application DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CDM_Application {
	CDM_Application* GetObject() {
	return (CDM_Application*)$self->Access();
	}
};
%feature("shadow") Handle_CDM_Application::~Handle_CDM_Application %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CDM_Application {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_ListIteratorOfListOfDocument;
class CDM_ListIteratorOfListOfDocument {
	public:
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
%feature("shadow") CDM_ListIteratorOfListOfDocument::~CDM_ListIteratorOfListOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_ListIteratorOfListOfDocument {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend CDM_DataMapNodeOfPresentationDirectory {
	Handle_CDM_DataMapNodeOfPresentationDirectory GetHandle() {
	return *(Handle_CDM_DataMapNodeOfPresentationDirectory*) &$self;
	}
};
%extend CDM_DataMapNodeOfPresentationDirectory {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_DataMapNodeOfPresentationDirectory::~CDM_DataMapNodeOfPresentationDirectory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_DataMapNodeOfPresentationDirectory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_ListIteratorOfListOfReferences;
class CDM_ListIteratorOfListOfReferences {
	public:
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
%feature("shadow") CDM_ListIteratorOfListOfReferences::~CDM_ListIteratorOfListOfReferences %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_ListIteratorOfListOfReferences {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_ReferenceIterator;
class CDM_ReferenceIterator {
	public:
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
%feature("shadow") CDM_ReferenceIterator::~CDM_ReferenceIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_ReferenceIterator {
	void _kill_pointed() {
		delete $self;
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
%extend CDM_Application {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_Application::~CDM_Application %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_Application {
	void _kill_pointed() {
		delete $self;
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
		void operator=(const CDM_ListOfReferences &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
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
%feature("shadow") CDM_ListOfReferences::~CDM_ListOfReferences %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_ListOfReferences {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_DataMapIteratorOfPresentationDirectory;
class CDM_DataMapIteratorOfPresentationDirectory : public TCollection_BasicMapIterator {
	public:
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
%feature("shadow") CDM_DataMapIteratorOfPresentationDirectory::~CDM_DataMapIteratorOfPresentationDirectory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_DataMapIteratorOfPresentationDirectory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_DataMapIteratorOfMetaDataLookUpTable;
class CDM_DataMapIteratorOfMetaDataLookUpTable : public TCollection_BasicMapIterator {
	public:
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
%feature("shadow") CDM_DataMapIteratorOfMetaDataLookUpTable::~CDM_DataMapIteratorOfMetaDataLookUpTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_DataMapIteratorOfMetaDataLookUpTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_MetaData;
class CDM_MetaData : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		static		Handle_CDM_MetaData LookUp(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName, const TCollection_ExtendedString &aPath, const TCollection_ExtendedString &aFileName, const Standard_Boolean ReadOnly);
		%feature("autodoc", "1");
		static		Handle_CDM_MetaData LookUp(const TCollection_ExtendedString &aFolder, const TCollection_ExtendedString &aName, const TCollection_ExtendedString &aPath, const TCollection_ExtendedString &aVersion, const TCollection_ExtendedString &aFileName, const Standard_Boolean ReadOnly);
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
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
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

};
%extend CDM_MetaData {
	Handle_CDM_MetaData GetHandle() {
	return *(Handle_CDM_MetaData*) &$self;
	}
};
%extend CDM_MetaData {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_MetaData::~CDM_MetaData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_MetaData {
	void _kill_pointed() {
		delete $self;
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
		void operator=(const CDM_ListOfDocument &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
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
%feature("shadow") CDM_ListOfDocument::~CDM_ListOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_ListOfDocument {
	void _kill_pointed() {
		delete $self;
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

};
%extend CDM_StdMapNodeOfMapOfDocument {
	Handle_CDM_StdMapNodeOfMapOfDocument GetHandle() {
	return *(Handle_CDM_StdMapNodeOfMapOfDocument*) &$self;
	}
};
%extend CDM_StdMapNodeOfMapOfDocument {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_StdMapNodeOfMapOfDocument::~CDM_StdMapNodeOfMapOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_StdMapNodeOfMapOfDocument {
	void _kill_pointed() {
		delete $self;
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
%extend CDM_MessageDriver {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_MessageDriver::~CDM_MessageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_MessageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_COutMessageDriver;
class CDM_COutMessageDriver : public CDM_MessageDriver {
	public:
		%feature("autodoc", "1");
		CDM_COutMessageDriver();

};
%extend CDM_COutMessageDriver {
	Handle_CDM_COutMessageDriver GetHandle() {
	return *(Handle_CDM_COutMessageDriver*) &$self;
	}
};
%extend CDM_COutMessageDriver {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_COutMessageDriver::~CDM_COutMessageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_COutMessageDriver {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend CDM_StackNodeOfStackOfDocument {
	Handle_CDM_StackNodeOfStackOfDocument GetHandle() {
	return *(Handle_CDM_StackNodeOfStackOfDocument*) &$self;
	}
};
%extend CDM_StackNodeOfStackOfDocument {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_StackNodeOfStackOfDocument::~CDM_StackNodeOfStackOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_StackNodeOfStackOfDocument {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_NullMessageDriver;
class CDM_NullMessageDriver : public CDM_MessageDriver {
	public:
		%feature("autodoc", "1");
		CDM_NullMessageDriver();
		%feature("autodoc", "1");
		virtual		void Write(const Standard_ExtString aString);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend CDM_NullMessageDriver {
	Handle_CDM_NullMessageDriver GetHandle() {
	return *(Handle_CDM_NullMessageDriver*) &$self;
	}
};
%extend CDM_NullMessageDriver {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_NullMessageDriver::~CDM_NullMessageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_NullMessageDriver {
	void _kill_pointed() {
		delete $self;
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
		CDM_MetaDataLookUpTable & operator=(const CDM_MetaDataLookUpTable &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
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
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_ExtendedString &K);

};
%feature("shadow") CDM_MetaDataLookUpTable::~CDM_MetaDataLookUpTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_MetaDataLookUpTable {
	void _kill_pointed() {
		delete $self;
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
		CDM_PresentationDirectory & operator=(const CDM_PresentationDirectory &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
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
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_ExtendedString &K);

};
%feature("shadow") CDM_PresentationDirectory::~CDM_PresentationDirectory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_PresentationDirectory {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend CDM_DataMapNodeOfMetaDataLookUpTable {
	Handle_CDM_DataMapNodeOfMetaDataLookUpTable GetHandle() {
	return *(Handle_CDM_DataMapNodeOfMetaDataLookUpTable*) &$self;
	}
};
%extend CDM_DataMapNodeOfMetaDataLookUpTable {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_DataMapNodeOfMetaDataLookUpTable::~CDM_DataMapNodeOfMetaDataLookUpTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_DataMapNodeOfMetaDataLookUpTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_StackIteratorOfStackOfDocument;
class CDM_StackIteratorOfStackOfDocument {
	public:
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
%feature("shadow") CDM_StackIteratorOfStackOfDocument::~CDM_StackIteratorOfStackOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_StackIteratorOfStackOfDocument {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_MapIteratorOfMapOfDocument;
class CDM_MapIteratorOfMapOfDocument : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		CDM_MapIteratorOfMapOfDocument();
		%feature("autodoc", "1");
		CDM_MapIteratorOfMapOfDocument(const CDM_MapOfDocument &aMap);
		%feature("autodoc", "1");
		void Initialize(const CDM_MapOfDocument &aMap);
		%feature("autodoc", "1");
		const Handle_CDM_Document & Key() const;

};
%feature("shadow") CDM_MapIteratorOfMapOfDocument::~CDM_MapIteratorOfMapOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_MapIteratorOfMapOfDocument {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend CDM_ListNodeOfListOfReferences {
	Handle_CDM_ListNodeOfListOfReferences GetHandle() {
	return *(Handle_CDM_ListNodeOfListOfReferences*) &$self;
	}
};
%extend CDM_ListNodeOfListOfReferences {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_ListNodeOfListOfReferences::~CDM_ListNodeOfListOfReferences %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_ListNodeOfListOfReferences {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_DocumentHasher;
class CDM_DocumentHasher {
	public:
		%feature("autodoc", "1");
		CDM_DocumentHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Handle_CDM_Document &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Handle_CDM_Document &K1, const Handle_CDM_Document &K2);

};
%feature("shadow") CDM_DocumentHasher::~CDM_DocumentHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_DocumentHasher {
	void _kill_pointed() {
		delete $self;
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
		CDM_MapOfDocument & operator=(const CDM_MapOfDocument &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_CDM_Document &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_CDM_Document &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_CDM_Document &aKey);

};
%feature("shadow") CDM_MapOfDocument::~CDM_MapOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_MapOfDocument {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend CDM_ListNodeOfListOfDocument {
	Handle_CDM_ListNodeOfListOfDocument GetHandle() {
	return *(Handle_CDM_ListNodeOfListOfDocument*) &$self;
	}
};
%extend CDM_ListNodeOfListOfDocument {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_ListNodeOfListOfDocument::~CDM_ListNodeOfListOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_ListNodeOfListOfDocument {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CDM_StackOfDocument;
class CDM_StackOfDocument {
	public:
		%feature("autodoc", "1");
		CDM_StackOfDocument();
		%feature("autodoc", "1");
		const CDM_StackOfDocument & Assign(const CDM_StackOfDocument &Other);
		%feature("autodoc", "1");
		const CDM_StackOfDocument & operator=(const CDM_StackOfDocument &Other);
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
		Handle_CDM_Document & ChangeTop();

};
%feature("shadow") CDM_StackOfDocument::~CDM_StackOfDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_StackOfDocument {
	void _kill_pointed() {
		delete $self;
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

};
%extend CDM_Reference {
	Handle_CDM_Reference GetHandle() {
	return *(Handle_CDM_Reference*) &$self;
	}
};
%extend CDM_Reference {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") CDM_Reference::~CDM_Reference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CDM_Reference {
	void _kill_pointed() {
		delete $self;
	}
};
