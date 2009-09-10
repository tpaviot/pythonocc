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
%module BinXCAFDrivers

%include BinXCAFDrivers_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

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
		Handle_BinXCAFDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinXCAFDrivers_DocumentStorageDriver {
	BinXCAFDrivers_DocumentStorageDriver* GetObject() {
	return (BinXCAFDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_BinXCAFDrivers_DocumentStorageDriver {
	~Handle_BinXCAFDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinXCAFDrivers_DocumentStorageDriver\n");}
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
		Handle_BinXCAFDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinXCAFDrivers_DocumentRetrievalDriver {
	BinXCAFDrivers_DocumentRetrievalDriver* GetObject() {
	return (BinXCAFDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_BinXCAFDrivers_DocumentRetrievalDriver {
	~Handle_BinXCAFDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinXCAFDrivers_DocumentRetrievalDriver\n");}
	}
};


%nodefaultctor BinXCAFDrivers;
class BinXCAFDrivers {
	public:
		%feature("autodoc", "1");
		BinXCAFDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &theGUID);
		%feature("autodoc", "1");
		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &MsgDrv);

};
%extend BinXCAFDrivers {
	~BinXCAFDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinXCAFDrivers\n");}
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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinXCAFDrivers_DocumentStorageDriver {
	~BinXCAFDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinXCAFDrivers_DocumentStorageDriver\n");}
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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinXCAFDrivers_DocumentRetrievalDriver {
	~BinXCAFDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinXCAFDrivers_DocumentRetrievalDriver\n");}
	}
};
