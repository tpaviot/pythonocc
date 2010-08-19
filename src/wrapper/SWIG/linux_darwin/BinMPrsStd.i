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

%module BinMPrsStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinMPrsStd_renames.i


%include BinMPrsStd_required_python_modules.i


%include BinMPrsStd_dependencies.i


%include BinMPrsStd_headers.i




%nodefaultctor Handle_BinMPrsStd_PositionDriver;
class Handle_BinMPrsStd_PositionDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver();
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver(const Handle_BinMPrsStd_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver(const BinMPrsStd_PositionDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver & operator=(const Handle_BinMPrsStd_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver & operator=(const BinMPrsStd_PositionDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMPrsStd_PositionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMPrsStd_PositionDriver {
	BinMPrsStd_PositionDriver* GetObject() {
	return (BinMPrsStd_PositionDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMPrsStd_PositionDriver::~Handle_BinMPrsStd_PositionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMPrsStd_PositionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMPrsStd_AISPresentationDriver;
class Handle_BinMPrsStd_AISPresentationDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver();
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver(const Handle_BinMPrsStd_AISPresentationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver(const BinMPrsStd_AISPresentationDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver & operator=(const Handle_BinMPrsStd_AISPresentationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver & operator=(const BinMPrsStd_AISPresentationDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMPrsStd_AISPresentationDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMPrsStd_AISPresentationDriver {
	BinMPrsStd_AISPresentationDriver* GetObject() {
	return (BinMPrsStd_AISPresentationDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMPrsStd_AISPresentationDriver::~Handle_BinMPrsStd_AISPresentationDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMPrsStd_AISPresentationDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMPrsStd;
class BinMPrsStd {
	public:
		%feature("autodoc", "1");
		BinMPrsStd();
		%feature("autodoc", "1");
		static		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

};
%feature("shadow") BinMPrsStd::~BinMPrsStd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMPrsStd {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMPrsStd_AISPresentationDriver;
class BinMPrsStd_AISPresentationDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMPrsStd_AISPresentationDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMPrsStd_AISPresentationDriver {
	Handle_BinMPrsStd_AISPresentationDriver GetHandle() {
	return *(Handle_BinMPrsStd_AISPresentationDriver*) &$self;
	}
};
%extend BinMPrsStd_AISPresentationDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMPrsStd_AISPresentationDriver::~BinMPrsStd_AISPresentationDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMPrsStd_AISPresentationDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMPrsStd_PositionDriver;
class BinMPrsStd_PositionDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMPrsStd_PositionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMPrsStd_PositionDriver {
	Handle_BinMPrsStd_PositionDriver GetHandle() {
	return *(Handle_BinMPrsStd_PositionDriver*) &$self;
	}
};
%extend BinMPrsStd_PositionDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMPrsStd_PositionDriver::~BinMPrsStd_PositionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMPrsStd_PositionDriver {
	void _kill_pointed() {
		delete $self;
	}
};
