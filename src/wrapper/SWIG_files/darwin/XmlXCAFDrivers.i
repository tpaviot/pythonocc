/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module XmlXCAFDrivers
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XmlXCAFDrivers_renames.i


%include XmlXCAFDrivers_required_python_modules.i


%include XmlXCAFDrivers_dependencies.i


%include XmlXCAFDrivers_headers.i




%nodefaultctor Handle_XmlXCAFDrivers_DocumentStorageDriver;
class Handle_XmlXCAFDrivers_DocumentStorageDriver : public Handle_XmlDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver(const Handle_XmlXCAFDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver(const XmlXCAFDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver & operator=(const Handle_XmlXCAFDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentStorageDriver & operator=(const XmlXCAFDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlXCAFDrivers_DocumentStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlXCAFDrivers_DocumentStorageDriver {
	XmlXCAFDrivers_DocumentStorageDriver* GetObject() {
	return (XmlXCAFDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlXCAFDrivers_DocumentStorageDriver::~Handle_XmlXCAFDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlXCAFDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlXCAFDrivers_DocumentRetrievalDriver;
class Handle_XmlXCAFDrivers_DocumentRetrievalDriver : public Handle_XmlDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver(const Handle_XmlXCAFDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver(const XmlXCAFDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver & operator=(const Handle_XmlXCAFDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver & operator=(const XmlXCAFDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlXCAFDrivers_DocumentRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlXCAFDrivers_DocumentRetrievalDriver {
	XmlXCAFDrivers_DocumentRetrievalDriver* GetObject() {
	return (XmlXCAFDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlXCAFDrivers_DocumentRetrievalDriver::~Handle_XmlXCAFDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlXCAFDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlXCAFDrivers_DocumentRetrievalDriver;
class XmlXCAFDrivers_DocumentRetrievalDriver : public XmlDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		XmlXCAFDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlXCAFDrivers_DocumentRetrievalDriver {
	Handle_XmlXCAFDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_XmlXCAFDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend XmlXCAFDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") XmlXCAFDrivers_DocumentRetrievalDriver::~XmlXCAFDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlXCAFDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlXCAFDrivers_DocumentStorageDriver;
class XmlXCAFDrivers_DocumentStorageDriver : public XmlDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		XmlXCAFDrivers_DocumentStorageDriver(const TCollection_ExtendedString &theCopyright);
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlXCAFDrivers_DocumentStorageDriver {
	Handle_XmlXCAFDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_XmlXCAFDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend XmlXCAFDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") XmlXCAFDrivers_DocumentStorageDriver::~XmlXCAFDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlXCAFDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlXCAFDrivers;
class XmlXCAFDrivers {
	public:
		%feature("autodoc", "1");
		XmlXCAFDrivers();
		%feature("autodoc", "1");
		static		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};
%feature("shadow") XmlXCAFDrivers::~XmlXCAFDrivers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlXCAFDrivers {
	void _kill_pointed() {
		delete $self;
	}
};
