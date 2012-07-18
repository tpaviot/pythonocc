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

%module BinXCAFDrivers
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinXCAFDrivers_renames.i


%include BinXCAFDrivers_required_python_modules.i


%include BinXCAFDrivers_dependencies.i


%include BinXCAFDrivers_headers.i




%nodefaultctor Handle_BinXCAFDrivers_DocumentStorageDriver;
class Handle_BinXCAFDrivers_DocumentStorageDriver : public Handle_BinDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_BinXCAFDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_BinXCAFDrivers_DocumentStorageDriver(const Handle_BinXCAFDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinXCAFDrivers_DocumentStorageDriver(const BinXCAFDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinXCAFDrivers_DocumentStorageDriver & operator=(const Handle_BinXCAFDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinXCAFDrivers_DocumentStorageDriver & operator=(const BinXCAFDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinXCAFDrivers_DocumentStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinXCAFDrivers_DocumentStorageDriver {
	BinXCAFDrivers_DocumentStorageDriver* GetObject() {
	return (BinXCAFDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinXCAFDrivers_DocumentStorageDriver::~Handle_BinXCAFDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinXCAFDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinXCAFDrivers_DocumentRetrievalDriver;
class Handle_BinXCAFDrivers_DocumentRetrievalDriver : public Handle_BinDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_BinXCAFDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_BinXCAFDrivers_DocumentRetrievalDriver(const Handle_BinXCAFDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinXCAFDrivers_DocumentRetrievalDriver(const BinXCAFDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinXCAFDrivers_DocumentRetrievalDriver & operator=(const Handle_BinXCAFDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinXCAFDrivers_DocumentRetrievalDriver & operator=(const BinXCAFDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinXCAFDrivers_DocumentRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinXCAFDrivers_DocumentRetrievalDriver {
	BinXCAFDrivers_DocumentRetrievalDriver* GetObject() {
	return (BinXCAFDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinXCAFDrivers_DocumentRetrievalDriver::~Handle_BinXCAFDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinXCAFDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinXCAFDrivers_DocumentRetrievalDriver;
class BinXCAFDrivers_DocumentRetrievalDriver : public BinDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		BinXCAFDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinXCAFDrivers_DocumentRetrievalDriver {
	Handle_BinXCAFDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_BinXCAFDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend BinXCAFDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") BinXCAFDrivers_DocumentRetrievalDriver::~BinXCAFDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinXCAFDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinXCAFDrivers;
class BinXCAFDrivers {
	public:
		%feature("autodoc", "1");
		BinXCAFDrivers();
		%feature("autodoc", "1");
		static		Handle_Standard_Transient Factory(const Standard_GUID &theGUID);
		%feature("autodoc", "1");
		static		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &MsgDrv);

};
%feature("shadow") BinXCAFDrivers::~BinXCAFDrivers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinXCAFDrivers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinXCAFDrivers_DocumentStorageDriver;
class BinXCAFDrivers_DocumentStorageDriver : public BinDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		BinXCAFDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinXCAFDrivers_DocumentStorageDriver {
	Handle_BinXCAFDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_BinXCAFDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend BinXCAFDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") BinXCAFDrivers_DocumentStorageDriver::~BinXCAFDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinXCAFDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};
