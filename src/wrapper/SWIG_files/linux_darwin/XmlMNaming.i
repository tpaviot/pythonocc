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

%module XmlMNaming
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XmlMNaming_renames.i


%include XmlMNaming_required_python_modules.i


%include XmlMNaming_dependencies.i


%include XmlMNaming_headers.i




%nodefaultctor Handle_XmlMNaming_NamingDriver;
class Handle_XmlMNaming_NamingDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamingDriver();
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamingDriver(const Handle_XmlMNaming_NamingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamingDriver(const XmlMNaming_NamingDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamingDriver & operator=(const Handle_XmlMNaming_NamingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamingDriver & operator=(const XmlMNaming_NamingDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMNaming_NamingDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMNaming_NamingDriver {
	XmlMNaming_NamingDriver* GetObject() {
	return (XmlMNaming_NamingDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMNaming_NamingDriver::~Handle_XmlMNaming_NamingDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMNaming_NamingDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMNaming_NamedShapeDriver;
class Handle_XmlMNaming_NamedShapeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamedShapeDriver();
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamedShapeDriver(const Handle_XmlMNaming_NamedShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamedShapeDriver(const XmlMNaming_NamedShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamedShapeDriver & operator=(const Handle_XmlMNaming_NamedShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMNaming_NamedShapeDriver & operator=(const XmlMNaming_NamedShapeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMNaming_NamedShapeDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMNaming_NamedShapeDriver {
	XmlMNaming_NamedShapeDriver* GetObject() {
	return (XmlMNaming_NamedShapeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMNaming_NamedShapeDriver::~Handle_XmlMNaming_NamedShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMNaming_NamedShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMNaming_NamedShapeDriver;
class XmlMNaming_NamedShapeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMNaming_NamedShapeDriver(const Handle_CDM_MessageDriver &aMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, XmlObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, XmlObjMgt_Persistent & theTarget, XmlObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		void ReadShapeSection(const XmlObjMgt_Element &anElement);
		%feature("autodoc", "1");
		void WriteShapeSection(XmlObjMgt_Element & anElement);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		TopTools_LocationSet & GetShapesLocations();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMNaming_NamedShapeDriver {
	Handle_XmlMNaming_NamedShapeDriver GetHandle() {
	return *(Handle_XmlMNaming_NamedShapeDriver*) &$self;
	}
};
%extend XmlMNaming_NamedShapeDriver {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") XmlMNaming_NamedShapeDriver::~XmlMNaming_NamedShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMNaming_NamedShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMNaming_Array1OfShape1;
class XmlMNaming_Array1OfShape1 {
	public:
		%feature("autodoc", "1");
		XmlMNaming_Array1OfShape1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		XmlMNaming_Array1OfShape1(const XmlObjMgt_Element &theParent, const XmlObjMgt_DOMString &theName);
		%feature("autodoc", "1");
		void CreateArrayElement(XmlObjMgt_Element & theParent, const XmlObjMgt_DOMString &theName);
		%feature("autodoc", "1");
		const XmlObjMgt_Element & Element() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, XmlObjMgt_Element & Value);
		%feature("autodoc", "1");
		XmlObjMgt_Element Value(const Standard_Integer Index) const;

};
%feature("shadow") XmlMNaming_Array1OfShape1::~XmlMNaming_Array1OfShape1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMNaming_Array1OfShape1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMNaming_Shape1;
class XmlMNaming_Shape1 {
	public:
		%feature("autodoc", "1");
		XmlMNaming_Shape1(XmlObjMgt_Document & Doc);
		%feature("autodoc", "1");
		XmlMNaming_Shape1(const XmlObjMgt_Element &E);
		%feature("autodoc", "1");
		const XmlObjMgt_Element & Element() const;
		%feature("autodoc", "1");
		XmlObjMgt_Element & Element();
		%feature("autodoc", "1");
		Standard_Integer TShapeId() const;
		%feature("autodoc", "1");
		Standard_Integer LocId() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void SetShape(const Standard_Integer ID, const Standard_Integer LocID, const TopAbs_Orientation Orient);
		%feature("autodoc", "1");
		void SetVertex(const TopoDS_Shape theVertex);
		%feature("autodoc", "1");
		XmlMNaming_Shape1();
		%feature("autodoc", "1");
		XmlObjMgt_Element _CSFDB_GetXmlMNaming_Shape1myElement() const;
		%feature("autodoc", "1");
		void _CSFDB_SetXmlMNaming_Shape1myElement(const XmlObjMgt_Element p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetXmlMNaming_Shape1myTShapeID() const;
		%feature("autodoc", "1");
		void _CSFDB_SetXmlMNaming_Shape1myTShapeID(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetXmlMNaming_Shape1myLocID() const;
		%feature("autodoc", "1");
		void _CSFDB_SetXmlMNaming_Shape1myLocID(const Standard_Integer p);
		%feature("autodoc", "1");
		TopAbs_Orientation _CSFDB_GetXmlMNaming_Shape1myOrientation() const;
		%feature("autodoc", "1");
		void _CSFDB_SetXmlMNaming_Shape1myOrientation(const TopAbs_Orientation p);

};
%feature("shadow") XmlMNaming_Shape1::~XmlMNaming_Shape1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMNaming_Shape1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMNaming_NamingDriver;
class XmlMNaming_NamingDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMNaming_NamingDriver(const Handle_CDM_MessageDriver &aMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, XmlObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, XmlObjMgt_Persistent & theTarget, XmlObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMNaming_NamingDriver {
	Handle_XmlMNaming_NamingDriver GetHandle() {
	return *(Handle_XmlMNaming_NamingDriver*) &$self;
	}
};
%extend XmlMNaming_NamingDriver {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") XmlMNaming_NamingDriver::~XmlMNaming_NamingDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMNaming_NamingDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMNaming;
class XmlMNaming {
	public:
		%feature("autodoc", "1");
		XmlMNaming();
		%feature("autodoc", "1");
		static		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &aMessageDriver);
		%feature("autodoc", "1");
		static		void SetDocumentVersion(const Standard_Integer DocVersion);
		%feature("autodoc", "1");
		static		Standard_Integer DocumentVersion();

};
%feature("shadow") XmlMNaming::~XmlMNaming %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMNaming {
	void _kill_pointed() {
		delete $self;
	}
};
