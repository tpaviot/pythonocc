/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

%module XmlLDrivers
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XmlLDrivers_renames.i


%include XmlLDrivers_required_python_modules.i


%include XmlLDrivers_dependencies.i


%include XmlLDrivers_headers.i




%nodefaultctor Handle_XmlLDrivers_DocumentStorageDriver;
class Handle_XmlLDrivers_DocumentStorageDriver : public Handle_PCDM_StorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentStorageDriver(const Handle_XmlLDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentStorageDriver(const XmlLDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentStorageDriver & operator=(const Handle_XmlLDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentStorageDriver & operator=(const XmlLDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlLDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlLDrivers_DocumentStorageDriver {
	XmlLDrivers_DocumentStorageDriver* GetObject() {
	return (XmlLDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlLDrivers_DocumentStorageDriver::~Handle_XmlLDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlLDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef;
class Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef();
		%feature("autodoc", "1");
		Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef(const Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef &aHandle);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef(const XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef *anItem);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef & operator=(const Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef &aHandle);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef & operator=(const XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef {
	XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef* GetObject() {
	return (XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef*)$self->Access();
	}
};
%feature("shadow") Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef::~Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlLDrivers_DocumentRetrievalDriver;
class Handle_XmlLDrivers_DocumentRetrievalDriver : public Handle_PCDM_RetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentRetrievalDriver(const Handle_XmlLDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentRetrievalDriver(const XmlLDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentRetrievalDriver & operator=(const Handle_XmlLDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlLDrivers_DocumentRetrievalDriver & operator=(const XmlLDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlLDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlLDrivers_DocumentRetrievalDriver {
	XmlLDrivers_DocumentRetrievalDriver* GetObject() {
	return (XmlLDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlLDrivers_DocumentRetrievalDriver::~Handle_XmlLDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlLDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlLDrivers_DocumentRetrievalDriver;
class XmlLDrivers_DocumentRetrievalDriver : public PCDM_RetrievalDriver {
	public:
		%feature("autodoc", "1");
		XmlLDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString SchemaName() const;
		%feature("autodoc", "1");
		virtual		void Make(const Handle_PCDM_Document &PD, const Handle_CDM_Document &TD);
		%feature("autodoc", "1");
		virtual		Handle_CDM_Document CreateDocument();
		%feature("autodoc", "1");
		virtual		void Read(const TCollection_ExtendedString &theFileName, const Handle_CDM_Document &theNewDocument, const Handle_CDM_Application &theApplication);
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlLDrivers_DocumentRetrievalDriver {
	Handle_XmlLDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_XmlLDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend XmlLDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlLDrivers_DocumentRetrievalDriver::~XmlLDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlLDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlLDrivers_DocumentStorageDriver;
class XmlLDrivers_DocumentStorageDriver : public PCDM_StorageDriver {
	public:
		%feature("autodoc", "1");
		XmlLDrivers_DocumentStorageDriver(const TCollection_ExtendedString &theCopyright);
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString SchemaName() const;
		%feature("autodoc", "1");
		virtual		void Write(const Handle_CDM_Document &theDocument, const TCollection_ExtendedString &theFileName);
		%feature("autodoc", "1");
		Standard_Boolean IsError() const;
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlLDrivers_DocumentStorageDriver {
	Handle_XmlLDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_XmlLDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend XmlLDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlLDrivers_DocumentStorageDriver::~XmlLDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlLDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlLDrivers_SequenceOfNamespaceDef;
class XmlLDrivers_SequenceOfNamespaceDef : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		XmlLDrivers_SequenceOfNamespaceDef();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const XmlLDrivers_SequenceOfNamespaceDef & Assign(const XmlLDrivers_SequenceOfNamespaceDef &Other);
		%feature("autodoc", "1");
		const XmlLDrivers_SequenceOfNamespaceDef & operator=(const XmlLDrivers_SequenceOfNamespaceDef &Other);
		%feature("autodoc", "1");
		void Append(const XmlLDrivers_NamespaceDef &T);
		%feature("autodoc", "1");
		void Append(XmlLDrivers_SequenceOfNamespaceDef & S);
		%feature("autodoc", "1");
		void Prepend(const XmlLDrivers_NamespaceDef &T);
		%feature("autodoc", "1");
		void Prepend(XmlLDrivers_SequenceOfNamespaceDef & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const XmlLDrivers_NamespaceDef &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, XmlLDrivers_SequenceOfNamespaceDef & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const XmlLDrivers_NamespaceDef &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, XmlLDrivers_SequenceOfNamespaceDef & S);
		%feature("autodoc", "1");
		const XmlLDrivers_NamespaceDef & First() const;
		%feature("autodoc", "1");
		const XmlLDrivers_NamespaceDef & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, XmlLDrivers_SequenceOfNamespaceDef & S);
		%feature("autodoc", "1");
		const XmlLDrivers_NamespaceDef & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const XmlLDrivers_NamespaceDef & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const XmlLDrivers_NamespaceDef &I);
		%feature("autodoc", "1");
		XmlLDrivers_NamespaceDef & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		XmlLDrivers_NamespaceDef & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") XmlLDrivers_SequenceOfNamespaceDef::~XmlLDrivers_SequenceOfNamespaceDef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlLDrivers_SequenceOfNamespaceDef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef;
class XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef(const XmlLDrivers_NamespaceDef &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		XmlLDrivers_NamespaceDef & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef {
	Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef GetHandle() {
	return *(Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef*) &$self;
	}
};
%extend XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef::~XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlLDrivers;
class XmlLDrivers {
	public:
		%feature("autodoc", "1");
		XmlLDrivers();
		%feature("autodoc", "1");
		static		Handle_Standard_Transient Factory(const Standard_GUID &theGUID);
		%feature("autodoc", "1");
		static		TCollection_AsciiString CreationDate();
		%feature("autodoc", "1");
		static		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		static		TCollection_AsciiString StorageVersion();

};
%feature("shadow") XmlLDrivers::~XmlLDrivers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlLDrivers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlLDrivers_NamespaceDef;
class XmlLDrivers_NamespaceDef {
	public:
		%feature("autodoc", "1");
		XmlLDrivers_NamespaceDef();
		%feature("autodoc", "1");
		XmlLDrivers_NamespaceDef(const TCollection_AsciiString &thePrefix, const TCollection_AsciiString &theURI);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Prefix() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & URI() const;

};
%feature("shadow") XmlLDrivers_NamespaceDef::~XmlLDrivers_NamespaceDef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlLDrivers_NamespaceDef {
	void _kill_pointed() {
		delete $self;
	}
};
