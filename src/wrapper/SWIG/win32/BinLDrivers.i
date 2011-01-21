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

%module BinLDrivers
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinLDrivers_renames.i


%include BinLDrivers_required_python_modules.i


%include BinLDrivers_dependencies.i


%include BinLDrivers_headers.i

typedef NCollection_Vector<BinLDrivers_DocumentSection> BinLDrivers_VectorOfDocumentSection;

enum BinLDrivers_Marker {
	BinLDrivers_ENDATTRLIST,
	BinLDrivers_ENDLABEL,
	};



%nodefaultctor Handle_BinLDrivers_DocumentRetrievalDriver;
class Handle_BinLDrivers_DocumentRetrievalDriver : public Handle_PCDM_RetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_BinLDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_BinLDrivers_DocumentRetrievalDriver(const Handle_BinLDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinLDrivers_DocumentRetrievalDriver(const BinLDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinLDrivers_DocumentRetrievalDriver & operator=(const Handle_BinLDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinLDrivers_DocumentRetrievalDriver & operator=(const BinLDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinLDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinLDrivers_DocumentRetrievalDriver {
	BinLDrivers_DocumentRetrievalDriver* GetObject() {
	return (BinLDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinLDrivers_DocumentRetrievalDriver::~Handle_BinLDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinLDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinLDrivers_DocumentStorageDriver;
class Handle_BinLDrivers_DocumentStorageDriver : public Handle_PCDM_StorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_BinLDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_BinLDrivers_DocumentStorageDriver(const Handle_BinLDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinLDrivers_DocumentStorageDriver(const BinLDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinLDrivers_DocumentStorageDriver & operator=(const Handle_BinLDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinLDrivers_DocumentStorageDriver & operator=(const BinLDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinLDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinLDrivers_DocumentStorageDriver {
	BinLDrivers_DocumentStorageDriver* GetObject() {
	return (BinLDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinLDrivers_DocumentStorageDriver::~Handle_BinLDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinLDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinLDrivers_DocumentStorageDriver;
class BinLDrivers_DocumentStorageDriver : public PCDM_StorageDriver {
	public:
		%feature("autodoc", "1");
		BinLDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString SchemaName() const;
		%feature("autodoc", "1");
		virtual		void Write(const Handle_CDM_Document &theDocument, const TCollection_ExtendedString &theFileName);
		%feature("autodoc", "1");
		Standard_Boolean IsError() const;
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		void AddSection(const TCollection_AsciiString &theName, const Standard_Boolean isPostRead=1);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinLDrivers_DocumentStorageDriver {
	Handle_BinLDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_BinLDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend BinLDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinLDrivers_DocumentStorageDriver::~BinLDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinLDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinLDrivers_DocumentSection;
class BinLDrivers_DocumentSection {
	public:
		%feature("autodoc", "1");
		BinLDrivers_DocumentSection();
		%feature("autodoc", "1");
		BinLDrivers_DocumentSection(const TCollection_AsciiString &theName, const Standard_Boolean isPostRead);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Name() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPostRead() const;
		%feature("autodoc", "1");
		Standard_Size Offset() const;
		%feature("autodoc", "1");
		void SetOffset(const Standard_Size theOffset);
		%feature("autodoc", "1");
		Standard_Size Length() const;
		%feature("autodoc", "1");
		void SetLength(const Standard_Size theLength);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteTOCToString() {
			std::stringstream s;
			self->WriteTOC(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Write(Standard_OStream & theOS, const Standard_Size theOffset);
		%feature("autodoc", "1");
		static		void ReadTOC(BinLDrivers_DocumentSection & theSection, std::istream & theIS);

};
%feature("shadow") BinLDrivers_DocumentSection::~BinLDrivers_DocumentSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinLDrivers_DocumentSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinLDrivers_DocumentRetrievalDriver;
class BinLDrivers_DocumentRetrievalDriver : public PCDM_RetrievalDriver {
	public:
		%feature("autodoc", "1");
		BinLDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		TCollection_ExtendedString SchemaName() const;
		%feature("autodoc", "1");
		virtual		void Make(const Handle_PCDM_Document &PD, const Handle_CDM_Document &TD);
		%feature("autodoc", "1");
		virtual		Handle_CDM_Document CreateDocument();
		%feature("autodoc", "1");
		virtual		void Read(const TCollection_ExtendedString &theFileName, const Handle_CDM_Document &theNewDocument, const Handle_CDM_Application &theApplication);
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinLDrivers_DocumentRetrievalDriver {
	Handle_BinLDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_BinLDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend BinLDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinLDrivers_DocumentRetrievalDriver::~BinLDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinLDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinLDrivers;
class BinLDrivers {
	public:
		%feature("autodoc", "1");
		BinLDrivers();
		%feature("autodoc", "1");
		static		Handle_Standard_Transient Factory(const Standard_GUID &theGUID);
		%feature("autodoc", "1");
		static		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &MsgDrv);
		%feature("autodoc", "1");
		static		TCollection_AsciiString StorageVersion();

};
%feature("shadow") BinLDrivers::~BinLDrivers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinLDrivers {
	void _kill_pointed() {
		delete $self;
	}
};
