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

%module StdLDrivers
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StdLDrivers_renames.i


%include StdLDrivers_required_python_modules.i


%include StdLDrivers_dependencies.i


%include StdLDrivers_headers.i




%nodefaultctor Handle_StdLDrivers_DocumentStorageDriver;
class Handle_StdLDrivers_DocumentStorageDriver : public Handle_MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentStorageDriver(const Handle_StdLDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentStorageDriver(const StdLDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentStorageDriver & operator=(const Handle_StdLDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentStorageDriver & operator=(const StdLDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_StdLDrivers_DocumentStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdLDrivers_DocumentStorageDriver {
	StdLDrivers_DocumentStorageDriver* GetObject() {
	return (StdLDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_StdLDrivers_DocumentStorageDriver::~Handle_StdLDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdLDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdLDrivers_DocumentRetrievalDriver;
class Handle_StdLDrivers_DocumentRetrievalDriver : public Handle_MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentRetrievalDriver(const Handle_StdLDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentRetrievalDriver(const StdLDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentRetrievalDriver & operator=(const Handle_StdLDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdLDrivers_DocumentRetrievalDriver & operator=(const StdLDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_StdLDrivers_DocumentRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdLDrivers_DocumentRetrievalDriver {
	StdLDrivers_DocumentRetrievalDriver* GetObject() {
	return (StdLDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_StdLDrivers_DocumentRetrievalDriver::~Handle_StdLDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdLDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdLDrivers;
class StdLDrivers {
	public:
		%feature("autodoc", "1");
		StdLDrivers();
		%feature("autodoc", "1");
		static		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};
%feature("shadow") StdLDrivers::~StdLDrivers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdLDrivers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdLDrivers_DocumentStorageDriver;
class StdLDrivers_DocumentStorageDriver : public MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		StdLDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		void Make(const Handle_CDM_Document &aDocument, PCDM_SequenceOfDocument & Documents);
		%feature("autodoc", "1");
		virtual		Handle_MDF_ASDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdLDrivers_DocumentStorageDriver {
	Handle_StdLDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_StdLDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend StdLDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdLDrivers_DocumentStorageDriver::~StdLDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdLDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdLDrivers_DocumentRetrievalDriver;
class StdLDrivers_DocumentRetrievalDriver : public MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		StdLDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_MDF_ARDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdLDrivers_DocumentRetrievalDriver {
	Handle_StdLDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_StdLDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend StdLDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdLDrivers_DocumentRetrievalDriver::~StdLDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdLDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};
