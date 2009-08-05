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
%module BinDrivers

%include BinDrivers_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinDrivers_dependencies.i


%include BinDrivers_headers.i


enum BinDrivers_Marker {
	BinDrivers_ENDATTRLIST,
	BinDrivers_ENDLABEL,
	};



%nodefaultctor Handle_BinDrivers_DocumentRetrievalDriver;
class Handle_BinDrivers_DocumentRetrievalDriver : public Handle_BinLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver(const Handle_BinDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver(const BinDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver & operator=(const Handle_BinDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver & operator=(const BinDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinDrivers_DocumentRetrievalDriver {
	BinDrivers_DocumentRetrievalDriver* GetObject() {
	return (BinDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_BinDrivers_DocumentRetrievalDriver {
	~Handle_BinDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinDrivers_DocumentRetrievalDriver\n");}
	}
};


%nodefaultctor Handle_BinDrivers_DocumentStorageDriver;
class Handle_BinDrivers_DocumentStorageDriver : public Handle_BinLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver(const Handle_BinDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver(const BinDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver & operator=(const Handle_BinDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver & operator=(const BinDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinDrivers_DocumentStorageDriver {
	BinDrivers_DocumentStorageDriver* GetObject() {
	return (BinDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_BinDrivers_DocumentStorageDriver {
	~Handle_BinDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor BinDrivers_DocumentStorageDriver;
class BinDrivers_DocumentStorageDriver : public BinLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		BinDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinDrivers_DocumentStorageDriver {
	Handle_BinDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_BinDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend BinDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinDrivers_DocumentStorageDriver {
	~BinDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor BinDrivers;
class BinDrivers {
	public:
		%feature("autodoc", "1");
		BinDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &theGUID);
		%feature("autodoc", "1");
		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &MsgDrv);
		%feature("autodoc", "1");
		TCollection_AsciiString StorageVersion();

};
%extend BinDrivers {
	~BinDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinDrivers\n");}
	}
};


%nodefaultctor BinDrivers_DocumentRetrievalDriver;
class BinDrivers_DocumentRetrievalDriver : public BinLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		BinDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinDrivers_DocumentRetrievalDriver {
	Handle_BinDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_BinDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend BinDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinDrivers_DocumentRetrievalDriver {
	~BinDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinDrivers_DocumentRetrievalDriver\n");}
	}
};
