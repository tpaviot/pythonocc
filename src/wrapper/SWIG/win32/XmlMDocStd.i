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
%module XmlMDocStd

%include XmlMDocStd_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

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
		Handle_XmlMDocStd_XLinkDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDocStd_XLinkDriver {
	XmlMDocStd_XLinkDriver* GetObject() {
	return (XmlMDocStd_XLinkDriver*)$self->Access();
	}
};
%extend Handle_XmlMDocStd_XLinkDriver {
	~Handle_XmlMDocStd_XLinkDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMDocStd_XLinkDriver\n");}
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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMDocStd_XLinkDriver {
	~XmlMDocStd_XLinkDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMDocStd_XLinkDriver\n");}
	}
};


%nodefaultctor XmlMDocStd;
class XmlMDocStd {
	public:
		%feature("autodoc", "1");
		XmlMDocStd();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

};
%extend XmlMDocStd {
	~XmlMDocStd() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMDocStd\n");}
	}
};
