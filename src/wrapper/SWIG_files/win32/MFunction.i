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

%module MFunction
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MFunction_renames.i


%include MFunction_required_python_modules.i


%include MFunction_dependencies.i


%include MFunction_headers.i




%nodefaultctor Handle_MFunction_FunctionRetrievalDriver;
class Handle_MFunction_FunctionRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MFunction_FunctionRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MFunction_FunctionRetrievalDriver(const Handle_MFunction_FunctionRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MFunction_FunctionRetrievalDriver(const MFunction_FunctionRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MFunction_FunctionRetrievalDriver & operator=(const Handle_MFunction_FunctionRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MFunction_FunctionRetrievalDriver & operator=(const MFunction_FunctionRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MFunction_FunctionRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MFunction_FunctionRetrievalDriver {
	MFunction_FunctionRetrievalDriver* GetObject() {
	return (MFunction_FunctionRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MFunction_FunctionRetrievalDriver::~Handle_MFunction_FunctionRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MFunction_FunctionRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MFunction_FunctionStorageDriver;
class Handle_MFunction_FunctionStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MFunction_FunctionStorageDriver();
		%feature("autodoc", "1");
		Handle_MFunction_FunctionStorageDriver(const Handle_MFunction_FunctionStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MFunction_FunctionStorageDriver(const MFunction_FunctionStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MFunction_FunctionStorageDriver & operator=(const Handle_MFunction_FunctionStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MFunction_FunctionStorageDriver & operator=(const MFunction_FunctionStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MFunction_FunctionStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MFunction_FunctionStorageDriver {
	MFunction_FunctionStorageDriver* GetObject() {
	return (MFunction_FunctionStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MFunction_FunctionStorageDriver::~Handle_MFunction_FunctionStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MFunction_FunctionStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MFunction_FunctionStorageDriver;
class MFunction_FunctionStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MFunction_FunctionStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
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
%extend MFunction_FunctionStorageDriver {
	Handle_MFunction_FunctionStorageDriver GetHandle() {
	return *(Handle_MFunction_FunctionStorageDriver*) &$self;
	}
};
%extend MFunction_FunctionStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MFunction_FunctionStorageDriver::~MFunction_FunctionStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MFunction_FunctionStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MFunction;
class MFunction {
	public:
		%feature("autodoc", "1");
		MFunction();
		%feature("autodoc", "1");
		static		void AddStorageDrivers(const Handle_MDF_ASDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		static		void AddRetrievalDrivers(const Handle_MDF_ARDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);

};
%feature("shadow") MFunction::~MFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MFunction_FunctionRetrievalDriver;
class MFunction_FunctionRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MFunction_FunctionRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
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
%extend MFunction_FunctionRetrievalDriver {
	Handle_MFunction_FunctionRetrievalDriver GetHandle() {
	return *(Handle_MFunction_FunctionRetrievalDriver*) &$self;
	}
};
%extend MFunction_FunctionRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MFunction_FunctionRetrievalDriver::~MFunction_FunctionRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MFunction_FunctionRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};
