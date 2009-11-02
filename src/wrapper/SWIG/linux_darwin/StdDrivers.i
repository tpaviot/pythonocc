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
%module StdDrivers

%include StdDrivers_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include StdDrivers_dependencies.i


%include StdDrivers_headers.i




%nodefaultctor Handle_StdDrivers_DocumentStorageDriver;
class Handle_StdDrivers_DocumentStorageDriver : public Handle_MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver(const Handle_StdDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver(const StdDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver & operator=(const Handle_StdDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver & operator=(const StdDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdDrivers_DocumentStorageDriver {
	StdDrivers_DocumentStorageDriver* GetObject() {
	return (StdDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_StdDrivers_DocumentStorageDriver::~Handle_StdDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdDrivers_DocumentRetrievalDriver;
class Handle_StdDrivers_DocumentRetrievalDriver : public Handle_MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver(const Handle_StdDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver(const StdDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver & operator=(const Handle_StdDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver & operator=(const StdDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_StdDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdDrivers_DocumentRetrievalDriver {
	StdDrivers_DocumentRetrievalDriver* GetObject() {
	return (StdDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_StdDrivers_DocumentRetrievalDriver::~Handle_StdDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdDrivers;
class StdDrivers {
	public:
		%feature("autodoc", "1");
		StdDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};
%feature("shadow") StdDrivers::~StdDrivers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdDrivers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdDrivers_DocumentRetrievalDriver;
class StdDrivers_DocumentRetrievalDriver : public MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		StdDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_MDF_ARDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdDrivers_DocumentRetrievalDriver {
	Handle_StdDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_StdDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend StdDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StdDrivers_DocumentRetrievalDriver::~StdDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdDrivers_DocumentStorageDriver;
class StdDrivers_DocumentStorageDriver : public MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		StdDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		void Make(const Handle_CDM_Document &aDocument, PCDM_SequenceOfDocument & Documents);
		%feature("autodoc", "1");
		virtual		Handle_MDF_ASDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdDrivers_DocumentStorageDriver {
	Handle_StdDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_StdDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend StdDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StdDrivers_DocumentStorageDriver::~StdDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};
