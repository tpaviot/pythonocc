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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module PDF
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PDF_renames.i


%include PDF_required_python_modules.i


%include PDF_dependencies.i


%include PDF_headers.i




%nodefaultctor Handle_PDF_Attribute;
class Handle_PDF_Attribute : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PDF_Attribute();
		%feature("autodoc", "1");
		Handle_PDF_Attribute(const Handle_PDF_Attribute &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_Attribute(const PDF_Attribute *anItem);
		%feature("autodoc", "1");
		Handle_PDF_Attribute & operator=(const Handle_PDF_Attribute &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_Attribute & operator=(const PDF_Attribute *anItem);
		%feature("autodoc", "1");
		static		Handle_PDF_Attribute const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_Attribute {
	PDF_Attribute* GetObject() {
	return (PDF_Attribute*)$self->Access();
	}
};
%feature("shadow") Handle_PDF_Attribute::~Handle_PDF_Attribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PDF_Attribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PDF_TagSource;
class Handle_PDF_TagSource : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PDF_TagSource();
		%feature("autodoc", "1");
		Handle_PDF_TagSource(const Handle_PDF_TagSource &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_TagSource(const PDF_TagSource *anItem);
		%feature("autodoc", "1");
		Handle_PDF_TagSource & operator=(const Handle_PDF_TagSource &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_TagSource & operator=(const PDF_TagSource *anItem);
		%feature("autodoc", "1");
		static		Handle_PDF_TagSource const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_TagSource {
	PDF_TagSource* GetObject() {
	return (PDF_TagSource*)$self->Access();
	}
};
%feature("shadow") Handle_PDF_TagSource::~Handle_PDF_TagSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PDF_TagSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PDF_Reference;
class Handle_PDF_Reference : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PDF_Reference();
		%feature("autodoc", "1");
		Handle_PDF_Reference(const Handle_PDF_Reference &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_Reference(const PDF_Reference *anItem);
		%feature("autodoc", "1");
		Handle_PDF_Reference & operator=(const Handle_PDF_Reference &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_Reference & operator=(const PDF_Reference *anItem);
		%feature("autodoc", "1");
		static		Handle_PDF_Reference const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_Reference {
	PDF_Reference* GetObject() {
	return (PDF_Reference*)$self->Access();
	}
};
%feature("shadow") Handle_PDF_Reference::~Handle_PDF_Reference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PDF_Reference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PDF_HAttributeArray1;
class Handle_PDF_HAttributeArray1 : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1();
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1(const Handle_PDF_HAttributeArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1(const PDF_HAttributeArray1 *anItem);
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1 & operator=(const Handle_PDF_HAttributeArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1 & operator=(const PDF_HAttributeArray1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PDF_HAttributeArray1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_HAttributeArray1 {
	PDF_HAttributeArray1* GetObject() {
	return (PDF_HAttributeArray1*)$self->Access();
	}
};
%feature("shadow") Handle_PDF_HAttributeArray1::~Handle_PDF_HAttributeArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PDF_HAttributeArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1;
class Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1();
		%feature("autodoc", "1");
		Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1(const Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1(const PDF_VArrayNodeOfFieldOfHAttributeArray1 *anItem);
		%feature("autodoc", "1");
		Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 & operator=(const Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 & operator=(const PDF_VArrayNodeOfFieldOfHAttributeArray1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 {
	PDF_VArrayNodeOfFieldOfHAttributeArray1* GetObject() {
	return (PDF_VArrayNodeOfFieldOfHAttributeArray1*)$self->Access();
	}
};
%feature("shadow") Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1::~Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PDF_Data;
class Handle_PDF_Data : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PDF_Data();
		%feature("autodoc", "1");
		Handle_PDF_Data(const Handle_PDF_Data &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_Data(const PDF_Data *anItem);
		%feature("autodoc", "1");
		Handle_PDF_Data & operator=(const Handle_PDF_Data &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_Data & operator=(const PDF_Data *anItem);
		%feature("autodoc", "1");
		static		Handle_PDF_Data const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_Data {
	PDF_Data* GetObject() {
	return (PDF_Data*)$self->Access();
	}
};
%feature("shadow") Handle_PDF_Data::~Handle_PDF_Data %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PDF_Data {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PDF_Attribute;
class PDF_Attribute : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PDF_Attribute(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PDF_Attribute();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PDF_Attribute {
	Handle_PDF_Attribute GetHandle() {
	return *(Handle_PDF_Attribute*) &$self;
	}
};
%extend PDF_Attribute {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PDF_Attribute::~PDF_Attribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PDF_Attribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PDF_TagSource;
class PDF_TagSource : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PDF_TagSource();
		%feature("autodoc", "1");
		PDF_TagSource(const Standard_Integer V);
		%feature("autodoc", "1");
		Standard_Integer Get() const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer V);
		%feature("autodoc", "1");
		PDF_TagSource(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPDF_TagSourcemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_TagSourcemyValue(const Standard_Integer p);

};
%extend PDF_TagSource {
	Handle_PDF_TagSource GetHandle() {
	return *(Handle_PDF_TagSource*) &$self;
	}
};
%extend PDF_TagSource {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PDF_TagSource::~PDF_TagSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PDF_TagSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PDF_Reference;
class PDF_Reference : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PDF_Reference();
		%feature("autodoc", "1");
		PDF_Reference(const Handle_PCollection_HAsciiString &V);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString ReferencedLabel() const;
		%feature("autodoc", "1");
		void ReferencedLabel(const Handle_PCollection_HAsciiString &V);
		%feature("autodoc", "1");
		PDF_Reference(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPDF_ReferencemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_ReferencemyValue(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PDF_Reference {
	Handle_PDF_Reference GetHandle() {
	return *(Handle_PDF_Reference*) &$self;
	}
};
%extend PDF_Reference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PDF_Reference::~PDF_Reference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PDF_Reference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PDF_VArrayNodeOfFieldOfHAttributeArray1;
class PDF_VArrayNodeOfFieldOfHAttributeArray1 : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PDF_VArrayNodeOfFieldOfHAttributeArray1();
		%feature("autodoc", "1");
		PDF_VArrayNodeOfFieldOfHAttributeArray1(const Handle_PDF_Attribute &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PDF_Attribute &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PDF_VArrayNodeOfFieldOfHAttributeArray1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PDF_Attribute _CSFDB_GetPDF_VArrayNodeOfFieldOfHAttributeArray1myValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_VArrayNodeOfFieldOfHAttributeArray1myValue(const Handle_PDF_Attribute &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PDF_VArrayNodeOfFieldOfHAttributeArray1 {
	Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 GetHandle() {
	return *(Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1*) &$self;
	}
};
%extend PDF_VArrayNodeOfFieldOfHAttributeArray1 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PDF_VArrayNodeOfFieldOfHAttributeArray1::~PDF_VArrayNodeOfFieldOfHAttributeArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PDF_VArrayNodeOfFieldOfHAttributeArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PDF_Data;
class PDF_Data : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PDF_Data();
		%feature("autodoc", "1");
		PDF_Data(const Standard_Integer aVersionNumber);
		%feature("autodoc", "1");
		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		void Labels(const Handle_PColStd_HArray1OfInteger &theLabels);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger Labels() const;
		%feature("autodoc", "1");
		void Attributes(const Handle_PDF_HAttributeArray1 &theAttributes);
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1 Attributes() const;
		%feature("autodoc", "1");
		PDF_Data(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPDF_DatamyVersion() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_DatamyVersion(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger _CSFDB_GetPDF_DatamyLabels() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_DatamyLabels(const Handle_PColStd_HArray1OfInteger &p);
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1 _CSFDB_GetPDF_DatamyAttributes() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_DatamyAttributes(const Handle_PDF_HAttributeArray1 &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PDF_Data {
	Handle_PDF_Data GetHandle() {
	return *(Handle_PDF_Data*) &$self;
	}
};
%extend PDF_Data {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PDF_Data::~PDF_Data %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PDF_Data {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PDF_HAttributeArray1;
class PDF_HAttributeArray1 : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PDF_HAttributeArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PDF_HAttributeArray1(const Standard_Integer Low, const Standard_Integer Up, const Handle_PDF_Attribute &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PDF_Attribute &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PDF_Attribute Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PDF_HAttributeArray1();
		%feature("autodoc", "1");
		PDF_HAttributeArray1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPDF_HAttributeArray1LowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_HAttributeArray1LowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPDF_HAttributeArray1UpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_HAttributeArray1UpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PDF_FieldOfHAttributeArray1 & _CSFDB_GetPDF_HAttributeArray1Data() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PDF_HAttributeArray1 {
	Handle_PDF_HAttributeArray1 GetHandle() {
	return *(Handle_PDF_HAttributeArray1*) &$self;
	}
};
%extend PDF_HAttributeArray1 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PDF_HAttributeArray1::~PDF_HAttributeArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PDF_HAttributeArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PDF_FieldOfHAttributeArray1;
class PDF_FieldOfHAttributeArray1 : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PDF_FieldOfHAttributeArray1();
		%feature("autodoc", "1");
		PDF_FieldOfHAttributeArray1(const Standard_Integer Size);
		%feature("autodoc", "1");
		PDF_FieldOfHAttributeArray1(const PDF_FieldOfHAttributeArray1 &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PDF_FieldOfHAttributeArray1 &Other);
		%feature("autodoc", "1");
		void operator=(const PDF_FieldOfHAttributeArray1 &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PDF_Attribute &Value);
		%feature("autodoc", "1");
		Handle_PDF_Attribute & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PDF_Attribute & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PDF_FieldOfHAttributeArray1::~PDF_FieldOfHAttributeArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PDF_FieldOfHAttributeArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PDF_VArrayTNodeOfFieldOfHAttributeArray1;
class PDF_VArrayTNodeOfFieldOfHAttributeArray1 {
	public:
		%feature("autodoc", "1");
		PDF_VArrayTNodeOfFieldOfHAttributeArray1();
		%feature("autodoc", "1");
		PDF_VArrayTNodeOfFieldOfHAttributeArray1(const Handle_PDF_Attribute &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PDF_Attribute &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PDF_VArrayTNodeOfFieldOfHAttributeArray1::~PDF_VArrayTNodeOfFieldOfHAttributeArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PDF_VArrayTNodeOfFieldOfHAttributeArray1 {
	void _kill_pointed() {
		delete $self;
	}
};
