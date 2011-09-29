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

%module XmlMDF
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XmlMDF_renames.i


%include XmlMDF_required_python_modules.i


%include XmlMDF_dependencies.i


%include XmlMDF_headers.i




%nodefaultctor Handle_XmlMDF_ADriver;
class Handle_XmlMDF_ADriver : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver();
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver(const Handle_XmlMDF_ADriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver(const XmlMDF_ADriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & operator=(const Handle_XmlMDF_ADriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & operator=(const XmlMDF_ADriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDF_ADriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_ADriver {
	XmlMDF_ADriver* GetObject() {
	return (XmlMDF_ADriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDF_ADriver::~Handle_XmlMDF_ADriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDF_ADriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDF_TagSourceDriver;
class Handle_XmlMDF_TagSourceDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_TagSourceDriver();
		%feature("autodoc", "1");
		Handle_XmlMDF_TagSourceDriver(const Handle_XmlMDF_TagSourceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_TagSourceDriver(const XmlMDF_TagSourceDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_TagSourceDriver & operator=(const Handle_XmlMDF_TagSourceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_TagSourceDriver & operator=(const XmlMDF_TagSourceDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDF_TagSourceDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_TagSourceDriver {
	XmlMDF_TagSourceDriver* GetObject() {
	return (XmlMDF_TagSourceDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDF_TagSourceDriver::~Handle_XmlMDF_TagSourceDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDF_TagSourceDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDF_DataMapNodeOfMapOfDriver;
class Handle_XmlMDF_DataMapNodeOfMapOfDriver : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfMapOfDriver();
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfMapOfDriver(const Handle_XmlMDF_DataMapNodeOfMapOfDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfMapOfDriver(const XmlMDF_DataMapNodeOfMapOfDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfMapOfDriver & operator=(const Handle_XmlMDF_DataMapNodeOfMapOfDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfMapOfDriver & operator=(const XmlMDF_DataMapNodeOfMapOfDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDF_DataMapNodeOfMapOfDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_DataMapNodeOfMapOfDriver {
	XmlMDF_DataMapNodeOfMapOfDriver* GetObject() {
	return (XmlMDF_DataMapNodeOfMapOfDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDF_DataMapNodeOfMapOfDriver::~Handle_XmlMDF_DataMapNodeOfMapOfDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDF_DataMapNodeOfMapOfDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDF_ReferenceDriver;
class Handle_XmlMDF_ReferenceDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_ReferenceDriver();
		%feature("autodoc", "1");
		Handle_XmlMDF_ReferenceDriver(const Handle_XmlMDF_ReferenceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_ReferenceDriver(const XmlMDF_ReferenceDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_ReferenceDriver & operator=(const Handle_XmlMDF_ReferenceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_ReferenceDriver & operator=(const XmlMDF_ReferenceDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDF_ReferenceDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_ReferenceDriver {
	XmlMDF_ReferenceDriver* GetObject() {
	return (XmlMDF_ReferenceDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDF_ReferenceDriver::~Handle_XmlMDF_ReferenceDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDF_ReferenceDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDF_DataMapNodeOfTypeADriverMap;
class Handle_XmlMDF_DataMapNodeOfTypeADriverMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfTypeADriverMap();
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfTypeADriverMap(const Handle_XmlMDF_DataMapNodeOfTypeADriverMap &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfTypeADriverMap(const XmlMDF_DataMapNodeOfTypeADriverMap *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfTypeADriverMap & operator=(const Handle_XmlMDF_DataMapNodeOfTypeADriverMap &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_DataMapNodeOfTypeADriverMap & operator=(const XmlMDF_DataMapNodeOfTypeADriverMap *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDF_DataMapNodeOfTypeADriverMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_DataMapNodeOfTypeADriverMap {
	XmlMDF_DataMapNodeOfTypeADriverMap* GetObject() {
	return (XmlMDF_DataMapNodeOfTypeADriverMap*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDF_DataMapNodeOfTypeADriverMap::~Handle_XmlMDF_DataMapNodeOfTypeADriverMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDF_DataMapNodeOfTypeADriverMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDF_ADriverTable;
class Handle_XmlMDF_ADriverTable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable();
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable(const Handle_XmlMDF_ADriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable(const XmlMDF_ADriverTable *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable & operator=(const Handle_XmlMDF_ADriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable & operator=(const XmlMDF_ADriverTable *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDF_ADriverTable DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDF_ADriverTable {
	XmlMDF_ADriverTable* GetObject() {
	return (XmlMDF_ADriverTable*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDF_ADriverTable::~Handle_XmlMDF_ADriverTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDF_ADriverTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF_DataMapNodeOfTypeADriverMap;
class XmlMDF_DataMapNodeOfTypeADriverMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XmlMDF_DataMapNodeOfTypeADriverMap(const Handle_Standard_Type &K, const Handle_XmlMDF_ADriver &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_DataMapNodeOfTypeADriverMap {
	Handle_XmlMDF_DataMapNodeOfTypeADriverMap GetHandle() {
	return *(Handle_XmlMDF_DataMapNodeOfTypeADriverMap*) &$self;
	}
};
%extend XmlMDF_DataMapNodeOfTypeADriverMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") XmlMDF_DataMapNodeOfTypeADriverMap::~XmlMDF_DataMapNodeOfTypeADriverMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF_DataMapNodeOfTypeADriverMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF_DataMapNodeOfMapOfDriver;
class XmlMDF_DataMapNodeOfMapOfDriver : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XmlMDF_DataMapNodeOfMapOfDriver(const TCollection_AsciiString &K, const Handle_XmlMDF_ADriver &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_DataMapNodeOfMapOfDriver {
	Handle_XmlMDF_DataMapNodeOfMapOfDriver GetHandle() {
	return *(Handle_XmlMDF_DataMapNodeOfMapOfDriver*) &$self;
	}
};
%extend XmlMDF_DataMapNodeOfMapOfDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") XmlMDF_DataMapNodeOfMapOfDriver::~XmlMDF_DataMapNodeOfMapOfDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF_DataMapNodeOfMapOfDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF_TypeADriverMap;
class XmlMDF_TypeADriverMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XmlMDF_TypeADriverMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XmlMDF_TypeADriverMap & Assign(const XmlMDF_TypeADriverMap &Other);
		%feature("autodoc", "1");
		XmlMDF_TypeADriverMap & operator=(const XmlMDF_TypeADriverMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Type &K, const Handle_XmlMDF_ADriver &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & Find(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & operator()(const Handle_Standard_Type &K) const;
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & ChangeFind(const Handle_Standard_Type &K);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & operator()(const Handle_Standard_Type &K);

};
%feature("shadow") XmlMDF_TypeADriverMap::~XmlMDF_TypeADriverMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF_TypeADriverMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF_ADriver;
class XmlMDF_ADriver : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & TypeName() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &aSource, const Handle_TDF_Attribute &aTarget, XmlObjMgt_RRelocationTable & aRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &aSource, XmlObjMgt_Persistent & aTarget, XmlObjMgt_SRelocationTable & aRelocTable) const;
		%feature("autodoc", "1");
		void WriteMessage(const TCollection_ExtendedString &theMessage) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_ADriver {
	Handle_XmlMDF_ADriver GetHandle() {
	return *(Handle_XmlMDF_ADriver*) &$self;
	}
};
%extend XmlMDF_ADriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") XmlMDF_ADriver::~XmlMDF_ADriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF_ADriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF_TagSourceDriver;
class XmlMDF_TagSourceDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDF_TagSourceDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_TagSourceDriver {
	Handle_XmlMDF_TagSourceDriver GetHandle() {
	return *(Handle_XmlMDF_TagSourceDriver*) &$self;
	}
};
%extend XmlMDF_TagSourceDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") XmlMDF_TagSourceDriver::~XmlMDF_TagSourceDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF_TagSourceDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF;
class XmlMDF {
	public:
		%feature("autodoc", "1");
		XmlMDF();
		%feature("autodoc", "1");
		static		void FromTo(const Handle_TDF_Data &aSource, XmlObjMgt_Element & aTarget, XmlObjMgt_SRelocationTable & aReloc, const Handle_XmlMDF_ADriverTable &aDrivers);
		%feature("autodoc", "1");
		static		Standard_Boolean FromTo(const XmlObjMgt_Element &aSource, Handle_TDF_Data & aTarget, XmlObjMgt_RRelocationTable & aReloc, const Handle_XmlMDF_ADriverTable &aDrivers);
		%feature("autodoc", "1");
		static		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

};
%feature("shadow") XmlMDF::~XmlMDF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF_DataMapIteratorOfMapOfDriver;
class XmlMDF_DataMapIteratorOfMapOfDriver : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XmlMDF_DataMapIteratorOfMapOfDriver();
		%feature("autodoc", "1");
		XmlMDF_DataMapIteratorOfMapOfDriver(const XmlMDF_MapOfDriver &aMap);
		%feature("autodoc", "1");
		void Initialize(const XmlMDF_MapOfDriver &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & Value() const;

};
%feature("shadow") XmlMDF_DataMapIteratorOfMapOfDriver::~XmlMDF_DataMapIteratorOfMapOfDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF_DataMapIteratorOfMapOfDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF_MapOfDriver;
class XmlMDF_MapOfDriver : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XmlMDF_MapOfDriver(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XmlMDF_MapOfDriver & Assign(const XmlMDF_MapOfDriver &Other);
		%feature("autodoc", "1");
		XmlMDF_MapOfDriver & operator=(const XmlMDF_MapOfDriver &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const Handle_XmlMDF_ADriver &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriver & operator()(const TCollection_AsciiString &K);

};
%feature("shadow") XmlMDF_MapOfDriver::~XmlMDF_MapOfDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF_MapOfDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF_ADriverTable;
class XmlMDF_ADriverTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		XmlMDF_ADriverTable();
		%feature("autodoc", "1");
		void AddDriver(const Handle_XmlMDF_ADriver &anHDriver);
		%feature("autodoc", "1");
		const XmlMDF_TypeADriverMap & GetDrivers() const;
		%feature("autodoc", "1");
		Standard_Boolean GetDriver(const Handle_Standard_Type &aType, Handle_XmlMDF_ADriver & anHDriver) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_ADriverTable {
	Handle_XmlMDF_ADriverTable GetHandle() {
	return *(Handle_XmlMDF_ADriverTable*) &$self;
	}
};
%extend XmlMDF_ADriverTable {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") XmlMDF_ADriverTable::~XmlMDF_ADriverTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF_ADriverTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF_ReferenceDriver;
class XmlMDF_ReferenceDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDF_ReferenceDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDF_ReferenceDriver {
	Handle_XmlMDF_ReferenceDriver GetHandle() {
	return *(Handle_XmlMDF_ReferenceDriver*) &$self;
	}
};
%extend XmlMDF_ReferenceDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") XmlMDF_ReferenceDriver::~XmlMDF_ReferenceDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF_ReferenceDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDF_DataMapIteratorOfTypeADriverMap;
class XmlMDF_DataMapIteratorOfTypeADriverMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XmlMDF_DataMapIteratorOfTypeADriverMap();
		%feature("autodoc", "1");
		XmlMDF_DataMapIteratorOfTypeADriverMap(const XmlMDF_TypeADriverMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const XmlMDF_TypeADriverMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Type & Key() const;
		%feature("autodoc", "1");
		const Handle_XmlMDF_ADriver & Value() const;

};
%feature("shadow") XmlMDF_DataMapIteratorOfTypeADriverMap::~XmlMDF_DataMapIteratorOfTypeADriverMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDF_DataMapIteratorOfTypeADriverMap {
	void _kill_pointed() {
		delete $self;
	}
};
