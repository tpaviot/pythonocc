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

%module MNaming
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MNaming_renames.i


%include MNaming_required_python_modules.i


%include MNaming_dependencies.i


%include MNaming_headers.i




%nodefaultctor Handle_MNaming_NamingRetrievalDriver;
class Handle_MNaming_NamingRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MNaming_NamingRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamingRetrievalDriver(const Handle_MNaming_NamingRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamingRetrievalDriver(const MNaming_NamingRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MNaming_NamingRetrievalDriver & operator=(const Handle_MNaming_NamingRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamingRetrievalDriver & operator=(const MNaming_NamingRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MNaming_NamingRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MNaming_NamingRetrievalDriver {
	MNaming_NamingRetrievalDriver* GetObject() {
	return (MNaming_NamingRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MNaming_NamingRetrievalDriver::~Handle_MNaming_NamingRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MNaming_NamingRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MNaming_NamedShapeStorageDriver;
class Handle_MNaming_NamedShapeStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeStorageDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeStorageDriver(const Handle_MNaming_NamedShapeStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeStorageDriver(const MNaming_NamedShapeStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeStorageDriver & operator=(const Handle_MNaming_NamedShapeStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeStorageDriver & operator=(const MNaming_NamedShapeStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MNaming_NamedShapeStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MNaming_NamedShapeStorageDriver {
	MNaming_NamedShapeStorageDriver* GetObject() {
	return (MNaming_NamedShapeStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MNaming_NamedShapeStorageDriver::~Handle_MNaming_NamedShapeStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MNaming_NamedShapeStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MNaming_NamingStorageDriver;
class Handle_MNaming_NamingStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MNaming_NamingStorageDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamingStorageDriver(const Handle_MNaming_NamingStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamingStorageDriver(const MNaming_NamingStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MNaming_NamingStorageDriver & operator=(const Handle_MNaming_NamingStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamingStorageDriver & operator=(const MNaming_NamingStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MNaming_NamingStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MNaming_NamingStorageDriver {
	MNaming_NamingStorageDriver* GetObject() {
	return (MNaming_NamingStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MNaming_NamingStorageDriver::~Handle_MNaming_NamingStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MNaming_NamingStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MNaming_NamedShapeRetrievalDriver;
class Handle_MNaming_NamedShapeRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeRetrievalDriver(const Handle_MNaming_NamedShapeRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeRetrievalDriver(const MNaming_NamedShapeRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeRetrievalDriver & operator=(const Handle_MNaming_NamedShapeRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeRetrievalDriver & operator=(const MNaming_NamedShapeRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MNaming_NamedShapeRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MNaming_NamedShapeRetrievalDriver {
	MNaming_NamedShapeRetrievalDriver* GetObject() {
	return (MNaming_NamedShapeRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MNaming_NamedShapeRetrievalDriver::~Handle_MNaming_NamedShapeRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MNaming_NamedShapeRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MNaming_NamedShapeStorageDriver;
class MNaming_NamedShapeStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MNaming_NamedShapeStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MNaming_NamedShapeStorageDriver {
	Handle_MNaming_NamedShapeStorageDriver GetHandle() {
	return *(Handle_MNaming_NamedShapeStorageDriver*) &$self;
	}
};
%extend MNaming_NamedShapeStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MNaming_NamedShapeStorageDriver::~MNaming_NamedShapeStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MNaming_NamedShapeStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MNaming;
class MNaming {
	public:
		%feature("autodoc", "1");
		MNaming();
		%feature("autodoc", "1");
		static		void AddStorageDrivers(const Handle_MDF_ASDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		static		void AddRetrievalDrivers(const Handle_MDF_ARDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);

};
%feature("shadow") MNaming::~MNaming %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MNaming {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MNaming_NamedShapeRetrievalDriver;
class MNaming_NamedShapeRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MNaming_NamedShapeRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MNaming_NamedShapeRetrievalDriver {
	Handle_MNaming_NamedShapeRetrievalDriver GetHandle() {
	return *(Handle_MNaming_NamedShapeRetrievalDriver*) &$self;
	}
};
%extend MNaming_NamedShapeRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MNaming_NamedShapeRetrievalDriver::~MNaming_NamedShapeRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MNaming_NamedShapeRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MNaming_NamingStorageDriver;
class MNaming_NamingStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MNaming_NamingStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MNaming_NamingStorageDriver {
	Handle_MNaming_NamingStorageDriver GetHandle() {
	return *(Handle_MNaming_NamingStorageDriver*) &$self;
	}
};
%extend MNaming_NamingStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MNaming_NamingStorageDriver::~MNaming_NamingStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MNaming_NamingStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MNaming_NamingRetrievalDriver;
class MNaming_NamingRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MNaming_NamingRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MNaming_NamingRetrievalDriver {
	Handle_MNaming_NamingRetrievalDriver GetHandle() {
	return *(Handle_MNaming_NamingRetrievalDriver*) &$self;
	}
};
%extend MNaming_NamingRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MNaming_NamingRetrievalDriver::~MNaming_NamingRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MNaming_NamingRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};
