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
%module XmlDrivers
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include XmlDrivers_dependencies.i


%include XmlDrivers_headers.i




%nodefaultctor Handle_XmlDrivers_DocumentStorageDriver;
class Handle_XmlDrivers_DocumentStorageDriver : public Handle_XmlLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentStorageDriver(const XmlDrivers_DocumentStorageDriver *aHandle);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentStorageDriver(const XmlDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentStorageDriver & operator=(const XmlDrivers_DocumentStorageDriver *aHandle);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentStorageDriver & operator=(const XmlDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentStorageDriver const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_XmlDrivers_DocumentStorageDriver {
	XmlDrivers_DocumentStorageDriver* GetObject() {
	return (XmlDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlDrivers_DocumentStorageDriver::~Handle_XmlDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlDrivers_DocumentRetrievalDriver;
class Handle_XmlDrivers_DocumentRetrievalDriver : public Handle_XmlLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentRetrievalDriver(const XmlDrivers_DocumentRetrievalDriver *aHandle);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentRetrievalDriver(const XmlDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentRetrievalDriver & operator=(const XmlDrivers_DocumentRetrievalDriver *aHandle);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentRetrievalDriver & operator=(const XmlDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlDrivers_DocumentRetrievalDriver const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_XmlDrivers_DocumentRetrievalDriver {
	XmlDrivers_DocumentRetrievalDriver* GetObject() {
	return (XmlDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlDrivers_DocumentRetrievalDriver::~Handle_XmlDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlDrivers_DocumentStorageDriver;
class XmlDrivers_DocumentStorageDriver : public XmlLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		XmlDrivers_DocumentStorageDriver(const TCollection_ExtendedString &theCopyright);
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const CDM_MessageDriver *theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlDrivers_DocumentStorageDriver {
	Handle_XmlDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_XmlDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend XmlDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlDrivers_DocumentStorageDriver::~XmlDrivers_DocumentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlDrivers_DocumentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlDrivers;
class XmlDrivers {
	public:
		%feature("autodoc", "1");
		XmlDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &theGUID);
		%feature("autodoc", "1");
		Handle_XmlMDF_ADriverTable AttributeDrivers(const CDM_MessageDriver *theMsgDriver);

};
%feature("shadow") XmlDrivers::~XmlDrivers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlDrivers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlDrivers_DocumentRetrievalDriver;
class XmlDrivers_DocumentRetrievalDriver : public XmlLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		XmlDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_XmlMDF_ADriverTable AttributeDrivers(const CDM_MessageDriver *theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlDrivers_DocumentRetrievalDriver {
	Handle_XmlDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_XmlDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend XmlDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlDrivers_DocumentRetrievalDriver::~XmlDrivers_DocumentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlDrivers_DocumentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};
