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

%module XCAFDrivers
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XCAFDrivers_renames.i


%include XCAFDrivers_required_python_modules.i


%include XCAFDrivers_dependencies.i


%include XCAFDrivers_headers.i




%nodefaultctor Handle_XCAFDrivers_DocumentRetrievalDriver;
class Handle_XCAFDrivers_DocumentRetrievalDriver : public Handle_MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver(const Handle_XCAFDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver(const XCAFDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver & operator=(const Handle_XCAFDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentRetrievalDriver & operator=(const XCAFDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XCAFDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDrivers_DocumentRetrievalDriver {
	XCAFDrivers_DocumentRetrievalDriver* GetObject() {
	return (XCAFDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XCAFDrivers_DocumentRetrievalDriver::~Handle_XCAFDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XCAFDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XCAFDrivers_DocumentStorageDriver;
class Handle_XCAFDrivers_DocumentStorageDriver : public Handle_MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver(const Handle_XCAFDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver(const XCAFDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver & operator=(const Handle_XCAFDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDrivers_DocumentStorageDriver & operator=(const XCAFDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XCAFDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDrivers_DocumentStorageDriver {
	XCAFDrivers_DocumentStorageDriver* GetObject() {
	return (XCAFDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XCAFDrivers_DocumentStorageDriver::~Handle_XCAFDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XCAFDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFDrivers_DocumentRetrievalDriver;
class XCAFDrivers_DocumentRetrievalDriver : public MDocStd_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		XCAFDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_MDF_ARDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDrivers_DocumentRetrievalDriver {
	Handle_XCAFDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_XCAFDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend XCAFDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XCAFDrivers_DocumentRetrievalDriver::~XCAFDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFDrivers_DocumentStorageDriver;
class XCAFDrivers_DocumentStorageDriver : public MDocStd_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		XCAFDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		Handle_MDF_ASDriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDrivers_DocumentStorageDriver {
	Handle_XCAFDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_XCAFDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend XCAFDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XCAFDrivers_DocumentStorageDriver::~XCAFDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFDrivers;
class XCAFDrivers {
	public:
		%feature("autodoc", "1");
		XCAFDrivers();
		%feature("autodoc", "1");
		static		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};
%feature("shadow") XCAFDrivers::~XCAFDrivers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFDrivers {
	void _kill_pointed() {
		delete $self;
	}
};
