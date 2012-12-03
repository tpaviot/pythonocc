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

%module XmlMDocStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XmlMDocStd_renames.i


%include XmlMDocStd_required_python_modules.i


%include XmlMDocStd_dependencies.i


%include XmlMDocStd_headers.i




%nodefaultctor Handle_XmlMDocStd_XLinkDriver;
class Handle_XmlMDocStd_XLinkDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDocStd_XLinkDriver();
		%feature("autodoc", "1");
		Handle_XmlMDocStd_XLinkDriver(const Handle_XmlMDocStd_XLinkDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDocStd_XLinkDriver(const XmlMDocStd_XLinkDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDocStd_XLinkDriver & operator=(const Handle_XmlMDocStd_XLinkDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDocStd_XLinkDriver & operator=(const XmlMDocStd_XLinkDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDocStd_XLinkDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDocStd_XLinkDriver {
	XmlMDocStd_XLinkDriver* GetObject() {
	return (XmlMDocStd_XLinkDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDocStd_XLinkDriver::~Handle_XmlMDocStd_XLinkDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDocStd_XLinkDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDocStd;
class XmlMDocStd {
	public:
		%feature("autodoc", "1");
		XmlMDocStd();
		%feature("autodoc", "1");
		static		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

};
%feature("shadow") XmlMDocStd::~XmlMDocStd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDocStd {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDocStd_XLinkDriver;
class XmlMDocStd_XLinkDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDocStd_XLinkDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDocStd_XLinkDriver {
	Handle_XmlMDocStd_XLinkDriver GetHandle() {
	return *(Handle_XmlMDocStd_XLinkDriver*) &$self;
	}
};
%extend XmlMDocStd_XLinkDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") XmlMDocStd_XLinkDriver::~XmlMDocStd_XLinkDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDocStd_XLinkDriver {
	void _kill_pointed() {
		delete $self;
	}
};
