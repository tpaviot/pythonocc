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

%module XmlMPrsStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XmlMPrsStd_renames.i


%include XmlMPrsStd_required_python_modules.i


%include XmlMPrsStd_dependencies.i


%include XmlMPrsStd_headers.i




%nodefaultctor Handle_XmlMPrsStd_PositionDriver;
class Handle_XmlMPrsStd_PositionDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver();
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver(const Handle_XmlMPrsStd_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver(const XmlMPrsStd_PositionDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver & operator=(const Handle_XmlMPrsStd_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_PositionDriver & operator=(const XmlMPrsStd_PositionDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMPrsStd_PositionDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMPrsStd_PositionDriver {
	XmlMPrsStd_PositionDriver* GetObject() {
	return (XmlMPrsStd_PositionDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMPrsStd_PositionDriver::~Handle_XmlMPrsStd_PositionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMPrsStd_PositionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMPrsStd_AISPresentationDriver;
class Handle_XmlMPrsStd_AISPresentationDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver();
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver(const Handle_XmlMPrsStd_AISPresentationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver(const XmlMPrsStd_AISPresentationDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver & operator=(const Handle_XmlMPrsStd_AISPresentationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMPrsStd_AISPresentationDriver & operator=(const XmlMPrsStd_AISPresentationDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMPrsStd_AISPresentationDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMPrsStd_AISPresentationDriver {
	XmlMPrsStd_AISPresentationDriver* GetObject() {
	return (XmlMPrsStd_AISPresentationDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMPrsStd_AISPresentationDriver::~Handle_XmlMPrsStd_AISPresentationDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMPrsStd_AISPresentationDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMPrsStd;
class XmlMPrsStd {
	public:
		%feature("autodoc", "1");
		XmlMPrsStd();
		%feature("autodoc", "1");
		static		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

};
%feature("shadow") XmlMPrsStd::~XmlMPrsStd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMPrsStd {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMPrsStd_AISPresentationDriver;
class XmlMPrsStd_AISPresentationDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMPrsStd_AISPresentationDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMPrsStd_AISPresentationDriver {
	Handle_XmlMPrsStd_AISPresentationDriver GetHandle() {
	return *(Handle_XmlMPrsStd_AISPresentationDriver*) &$self;
	}
};
%extend XmlMPrsStd_AISPresentationDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMPrsStd_AISPresentationDriver::~XmlMPrsStd_AISPresentationDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMPrsStd_AISPresentationDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMPrsStd_PositionDriver;
class XmlMPrsStd_PositionDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMPrsStd_PositionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMPrsStd_PositionDriver {
	Handle_XmlMPrsStd_PositionDriver GetHandle() {
	return *(Handle_XmlMPrsStd_PositionDriver*) &$self;
	}
};
%extend XmlMPrsStd_PositionDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMPrsStd_PositionDriver::~XmlMPrsStd_PositionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMPrsStd_PositionDriver {
	void _kill_pointed() {
		delete $self;
	}
};
