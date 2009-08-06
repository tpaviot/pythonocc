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
%module XCAFDrivers

%include XCAFDrivers_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

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
		Handle_XCAFDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDrivers_DocumentRetrievalDriver {
	XCAFDrivers_DocumentRetrievalDriver* GetObject() {
	return (XCAFDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_XCAFDrivers_DocumentRetrievalDriver {
	~Handle_XCAFDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDrivers_DocumentRetrievalDriver\n");}
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
		Handle_XCAFDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDrivers_DocumentStorageDriver {
	XCAFDrivers_DocumentStorageDriver* GetObject() {
	return (XCAFDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_XCAFDrivers_DocumentStorageDriver {
	~Handle_XCAFDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDrivers_DocumentStorageDriver\n");}
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
%extend XCAFDrivers_DocumentRetrievalDriver {
	~XCAFDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDrivers_DocumentRetrievalDriver\n");}
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
%extend XCAFDrivers_DocumentStorageDriver {
	~XCAFDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor XCAFDrivers;
class XCAFDrivers {
	public:
		%feature("autodoc", "1");
		XCAFDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);

};
%extend XCAFDrivers {
	~XCAFDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDrivers\n");}
	}
};
