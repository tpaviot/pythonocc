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
%module XmlXCAFDrivers

%include XmlXCAFDrivers_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

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
		Handle_XmlXCAFDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlXCAFDrivers_DocumentStorageDriver {
	XmlXCAFDrivers_DocumentStorageDriver* GetObject() {
	return (XmlXCAFDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_XmlXCAFDrivers_DocumentStorageDriver {
	~Handle_XmlXCAFDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlXCAFDrivers_DocumentStorageDriver\n");}
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
		Handle_XmlXCAFDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlXCAFDrivers_DocumentRetrievalDriver {
	XmlXCAFDrivers_DocumentRetrievalDriver* GetObject() {
	return (XmlXCAFDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_XmlXCAFDrivers_DocumentRetrievalDriver {
	~Handle_XmlXCAFDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlXCAFDrivers_DocumentRetrievalDriver\n");}
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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlXCAFDrivers_DocumentRetrievalDriver {
	~XmlXCAFDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlXCAFDrivers_DocumentRetrievalDriver\n");}
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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlXCAFDrivers_DocumentStorageDriver {
	~XmlXCAFDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlXCAFDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor XmlXCAFDrivers;
class XmlXCAFDrivers {
	public:
		%feature("autodoc", "1");
		XmlXCAFDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};
%extend XmlXCAFDrivers {
	~XmlXCAFDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlXCAFDrivers\n");}
	}
};
