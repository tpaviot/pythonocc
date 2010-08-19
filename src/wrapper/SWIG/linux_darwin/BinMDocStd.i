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

%module BinMDocStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinMDocStd_renames.i


%include BinMDocStd_required_python_modules.i


%include BinMDocStd_dependencies.i


%include BinMDocStd_headers.i




%nodefaultctor Handle_BinMDocStd_XLinkDriver;
class Handle_BinMDocStd_XLinkDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDocStd_XLinkDriver();
		%feature("autodoc", "1");
		Handle_BinMDocStd_XLinkDriver(const Handle_BinMDocStd_XLinkDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDocStd_XLinkDriver(const BinMDocStd_XLinkDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDocStd_XLinkDriver & operator=(const Handle_BinMDocStd_XLinkDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDocStd_XLinkDriver & operator=(const BinMDocStd_XLinkDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDocStd_XLinkDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDocStd_XLinkDriver {
	BinMDocStd_XLinkDriver* GetObject() {
	return (BinMDocStd_XLinkDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDocStd_XLinkDriver::~Handle_BinMDocStd_XLinkDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDocStd_XLinkDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDocStd;
class BinMDocStd {
	public:
		%feature("autodoc", "1");
		BinMDocStd();
		%feature("autodoc", "1");
		static		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &aMsgDrv);

};
%feature("shadow") BinMDocStd::~BinMDocStd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDocStd {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDocStd_XLinkDriver;
class BinMDocStd_XLinkDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDocStd_XLinkDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDocStd_XLinkDriver {
	Handle_BinMDocStd_XLinkDriver GetHandle() {
	return *(Handle_BinMDocStd_XLinkDriver*) &$self;
	}
};
%extend BinMDocStd_XLinkDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDocStd_XLinkDriver::~BinMDocStd_XLinkDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDocStd_XLinkDriver {
	void _kill_pointed() {
		delete $self;
	}
};
