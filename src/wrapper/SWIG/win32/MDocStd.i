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
%module MDocStd

%include MDocStd_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include MDocStd_dependencies.i


%include MDocStd_headers.i




%nodefaultctor Handle_MDocStd_DocumentStorageDriver;
class Handle_MDocStd_DocumentStorageDriver : public Handle_PCDM_StorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentStorageDriver(const Handle_MDocStd_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentStorageDriver(const MDocStd_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentStorageDriver & operator=(const Handle_MDocStd_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentStorageDriver & operator=(const MDocStd_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_DocumentStorageDriver {
	MDocStd_DocumentStorageDriver* GetObject() {
	return (MDocStd_DocumentStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDocStd_DocumentStorageDriver::~Handle_MDocStd_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDocStd_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDocStd_DocumentRetrievalDriver;
class Handle_MDocStd_DocumentRetrievalDriver : public Handle_PCDM_RetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentRetrievalDriver(const Handle_MDocStd_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentRetrievalDriver(const MDocStd_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentRetrievalDriver & operator=(const Handle_MDocStd_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentRetrievalDriver & operator=(const MDocStd_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_DocumentRetrievalDriver {
	MDocStd_DocumentRetrievalDriver* GetObject() {
	return (MDocStd_DocumentRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDocStd_DocumentRetrievalDriver::~Handle_MDocStd_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDocStd_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDocStd_XLinkRetrievalDriver;
class Handle_MDocStd_XLinkRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkRetrievalDriver(const Handle_MDocStd_XLinkRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkRetrievalDriver(const MDocStd_XLinkRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkRetrievalDriver & operator=(const Handle_MDocStd_XLinkRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkRetrievalDriver & operator=(const MDocStd_XLinkRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_XLinkRetrievalDriver {
	MDocStd_XLinkRetrievalDriver* GetObject() {
	return (MDocStd_XLinkRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDocStd_XLinkRetrievalDriver::~Handle_MDocStd_XLinkRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDocStd_XLinkRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDocStd_XLinkStorageDriver;
class Handle_MDocStd_XLinkStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkStorageDriver();
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkStorageDriver(const Handle_MDocStd_XLinkStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkStorageDriver(const MDocStd_XLinkStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkStorageDriver & operator=(const Handle_MDocStd_XLinkStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkStorageDriver & operator=(const MDocStd_XLinkStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_XLinkStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_XLinkStorageDriver {
	MDocStd_XLinkStorageDriver* GetObject() {
	return (MDocStd_XLinkStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDocStd_XLinkStorageDriver::~Handle_MDocStd_XLinkStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDocStd_XLinkStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDocStd_ListNodeOfDocEntryList;
class Handle_MDocStd_ListNodeOfDocEntryList : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MDocStd_ListNodeOfDocEntryList();
		%feature("autodoc", "1");
		Handle_MDocStd_ListNodeOfDocEntryList(const Handle_MDocStd_ListNodeOfDocEntryList &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_ListNodeOfDocEntryList(const MDocStd_ListNodeOfDocEntryList *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_ListNodeOfDocEntryList & operator=(const Handle_MDocStd_ListNodeOfDocEntryList &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_ListNodeOfDocEntryList & operator=(const MDocStd_ListNodeOfDocEntryList *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_ListNodeOfDocEntryList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_ListNodeOfDocEntryList {
	MDocStd_ListNodeOfDocEntryList* GetObject() {
	return (MDocStd_ListNodeOfDocEntryList*)$self->Access();
	}
};
%feature("shadow") Handle_MDocStd_ListNodeOfDocEntryList::~Handle_MDocStd_ListNodeOfDocEntryList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDocStd_ListNodeOfDocEntryList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDocStd_StdMapNodeOfPersistentMap;
class Handle_MDocStd_StdMapNodeOfPersistentMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MDocStd_StdMapNodeOfPersistentMap();
		%feature("autodoc", "1");
		Handle_MDocStd_StdMapNodeOfPersistentMap(const Handle_MDocStd_StdMapNodeOfPersistentMap &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_StdMapNodeOfPersistentMap(const MDocStd_StdMapNodeOfPersistentMap *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_StdMapNodeOfPersistentMap & operator=(const Handle_MDocStd_StdMapNodeOfPersistentMap &aHandle);
		%feature("autodoc", "1");
		Handle_MDocStd_StdMapNodeOfPersistentMap & operator=(const MDocStd_StdMapNodeOfPersistentMap *anItem);
		%feature("autodoc", "1");
		Handle_MDocStd_StdMapNodeOfPersistentMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDocStd_StdMapNodeOfPersistentMap {
	MDocStd_StdMapNodeOfPersistentMap* GetObject() {
	return (MDocStd_StdMapNodeOfPersistentMap*)$self->Access();
	}
};
%feature("shadow") Handle_MDocStd_StdMapNodeOfPersistentMap::~Handle_MDocStd_StdMapNodeOfPersistentMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDocStd_StdMapNodeOfPersistentMap {
	void _kill_pointed() {
		delete $self;
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

};
%extend MDocStd_StdMapNodeOfPersistentMap {
	Handle_MDocStd_StdMapNodeOfPersistentMap GetHandle() {
	return *(Handle_MDocStd_StdMapNodeOfPersistentMap*) &$self;
	}
};
%extend MDocStd_StdMapNodeOfPersistentMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MDocStd_StdMapNodeOfPersistentMap::~MDocStd_StdMapNodeOfPersistentMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd_StdMapNodeOfPersistentMap {
	void _kill_pointed() {
		delete $self;
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

};
%extend MDocStd_DocumentRetrievalDriver {
	Handle_MDocStd_DocumentRetrievalDriver GetHandle() {
	return *(Handle_MDocStd_DocumentRetrievalDriver*) &$self;
	}
};
%extend MDocStd_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MDocStd_DocumentRetrievalDriver::~MDocStd_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
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

};
%extend MDocStd_XLinkRetrievalDriver {
	Handle_MDocStd_XLinkRetrievalDriver GetHandle() {
	return *(Handle_MDocStd_XLinkRetrievalDriver*) &$self;
	}
};
%extend MDocStd_XLinkRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MDocStd_XLinkRetrievalDriver::~MDocStd_XLinkRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd_XLinkRetrievalDriver {
	void _kill_pointed() {
		delete $self;
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

};
%extend MDocStd_ListNodeOfDocEntryList {
	Handle_MDocStd_ListNodeOfDocEntryList GetHandle() {
	return *(Handle_MDocStd_ListNodeOfDocEntryList*) &$self;
	}
};
%extend MDocStd_ListNodeOfDocEntryList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MDocStd_ListNodeOfDocEntryList::~MDocStd_ListNodeOfDocEntryList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd_ListNodeOfDocEntryList {
	void _kill_pointed() {
		delete $self;
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

};
%extend MDocStd_DocumentStorageDriver {
	Handle_MDocStd_DocumentStorageDriver GetHandle() {
	return *(Handle_MDocStd_DocumentStorageDriver*) &$self;
	}
};
%extend MDocStd_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MDocStd_DocumentStorageDriver::~MDocStd_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDocStd_MapIteratorOfPersistentMap;
class MDocStd_MapIteratorOfPersistentMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MDocStd_MapIteratorOfPersistentMap();
		%feature("autodoc", "1");
		MDocStd_MapIteratorOfPersistentMap(const MDocStd_PersistentMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const MDocStd_PersistentMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Key() const;

};
%feature("shadow") MDocStd_MapIteratorOfPersistentMap::~MDocStd_MapIteratorOfPersistentMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd_MapIteratorOfPersistentMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDocStd_ListIteratorOfDocEntryList;
class MDocStd_ListIteratorOfDocEntryList {
	public:
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
%feature("shadow") MDocStd_ListIteratorOfDocEntryList::~MDocStd_ListIteratorOfDocEntryList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd_ListIteratorOfDocEntryList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDocStd_DocEntryList;
class MDocStd_DocEntryList {
	public:
		%feature("autodoc", "1");
		MDocStd_DocEntryList();
		%feature("autodoc", "1");
		void Assign(const MDocStd_DocEntryList &Other);
		%feature("autodoc", "1");
		void operator=(const MDocStd_DocEntryList &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
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
%feature("shadow") MDocStd_DocEntryList::~MDocStd_DocEntryList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd_DocEntryList {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend MDocStd_XLinkStorageDriver {
	Handle_MDocStd_XLinkStorageDriver GetHandle() {
	return *(Handle_MDocStd_XLinkStorageDriver*) &$self;
	}
};
%extend MDocStd_XLinkStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MDocStd_XLinkStorageDriver::~MDocStd_XLinkStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd_XLinkStorageDriver {
	void _kill_pointed() {
		delete $self;
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
		MDocStd_PersistentMap & operator=(const MDocStd_PersistentMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Persistent &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Persistent &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Standard_Persistent &aKey);

};
%feature("shadow") MDocStd_PersistentMap::~MDocStd_PersistentMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd_PersistentMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDocStd;
class MDocStd {
	public:
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
%feature("shadow") MDocStd::~MDocStd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDocStd {
	void _kill_pointed() {
		delete $self;
	}
};
