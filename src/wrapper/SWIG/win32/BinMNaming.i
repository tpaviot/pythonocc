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

%module BinMNaming
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinMNaming_renames.i


%include BinMNaming_required_python_modules.i


%include BinMNaming_dependencies.i


%include BinMNaming_headers.i




%nodefaultctor Handle_BinMNaming_NamingDriver;
class Handle_BinMNaming_NamingDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMNaming_NamingDriver();
		%feature("autodoc", "1");
		Handle_BinMNaming_NamingDriver(const Handle_BinMNaming_NamingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMNaming_NamingDriver(const BinMNaming_NamingDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMNaming_NamingDriver & operator=(const Handle_BinMNaming_NamingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMNaming_NamingDriver & operator=(const BinMNaming_NamingDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMNaming_NamingDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMNaming_NamingDriver {
	BinMNaming_NamingDriver* GetObject() {
	return (BinMNaming_NamingDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMNaming_NamingDriver::~Handle_BinMNaming_NamingDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMNaming_NamingDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMNaming_NamedShapeDriver;
class Handle_BinMNaming_NamedShapeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMNaming_NamedShapeDriver();
		%feature("autodoc", "1");
		Handle_BinMNaming_NamedShapeDriver(const Handle_BinMNaming_NamedShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMNaming_NamedShapeDriver(const BinMNaming_NamedShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMNaming_NamedShapeDriver & operator=(const Handle_BinMNaming_NamedShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMNaming_NamedShapeDriver & operator=(const BinMNaming_NamedShapeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMNaming_NamedShapeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMNaming_NamedShapeDriver {
	BinMNaming_NamedShapeDriver* GetObject() {
	return (BinMNaming_NamedShapeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMNaming_NamedShapeDriver::~Handle_BinMNaming_NamedShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMNaming_NamedShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMNaming;
class BinMNaming {
	public:
		%feature("autodoc", "1");
		BinMNaming();
		%feature("autodoc", "1");
		static		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &aMsgDrv);

};
%feature("shadow") BinMNaming::~BinMNaming %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMNaming {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMNaming_NamingDriver;
class BinMNaming_NamingDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMNaming_NamingDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMNaming_NamingDriver {
	Handle_BinMNaming_NamingDriver GetHandle() {
	return *(Handle_BinMNaming_NamingDriver*) &$self;
	}
};
%extend BinMNaming_NamingDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMNaming_NamingDriver::~BinMNaming_NamingDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMNaming_NamingDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMNaming_NamedShapeDriver;
class BinMNaming_NamedShapeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMNaming_NamedShapeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadShapeSectionFromString(std::string src) {
			std::stringstream s(src);
			self->ReadShapeSection(s);}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteShapeSectionToString() {
			std::stringstream s;
			self->WriteShapeSection(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFormatNb(const Standard_Integer theFormatNb);
		%feature("autodoc", "1");
		Standard_Integer GetFormatNb() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMNaming_NamedShapeDriver {
	Handle_BinMNaming_NamedShapeDriver GetHandle() {
	return *(Handle_BinMNaming_NamedShapeDriver*) &$self;
	}
};
%extend BinMNaming_NamedShapeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMNaming_NamedShapeDriver::~BinMNaming_NamedShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMNaming_NamedShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};
