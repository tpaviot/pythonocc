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

%module MDocStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MDocStd_renames.i


%include MDocStd_required_python_modules.i


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
		static		Handle_MDocStd_DocumentStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

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
		static		Handle_MDocStd_DocumentRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

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
		static		Handle_MDocStd_XLinkRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

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
		static		Handle_MDocStd_XLinkStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

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


%nodefaultctor MDocStd;
class MDocStd {
	public:
		%feature("autodoc", "1");
		MDocStd();
		%feature("autodoc", "1");
		static		void AddStorageDrivers(const Handle_MDF_ASDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		static		void AddRetrievalDrivers(const Handle_MDF_ARDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		static		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

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
	return $self->HashCode(2147483647);
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
	return $self->HashCode(2147483647);
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
	return $self->HashCode(2147483647);
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
	return $self->HashCode(2147483647);
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
