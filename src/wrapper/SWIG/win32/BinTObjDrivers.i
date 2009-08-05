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
%module BinTObjDrivers

%include BinTObjDrivers_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinTObjDrivers_dependencies.i


%include BinTObjDrivers_headers.i




%nodefaultctor Handle_BinTObjDrivers_ModelDriver;
class Handle_BinTObjDrivers_ModelDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ModelDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ModelDriver(const Handle_BinTObjDrivers_ModelDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ModelDriver(const BinTObjDrivers_ModelDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ModelDriver & operator=(const Handle_BinTObjDrivers_ModelDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ModelDriver & operator=(const BinTObjDrivers_ModelDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ModelDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_ModelDriver {
	BinTObjDrivers_ModelDriver* GetObject() {
	return (BinTObjDrivers_ModelDriver*)$self->Access();
	}
};
%extend Handle_BinTObjDrivers_ModelDriver {
	~Handle_BinTObjDrivers_ModelDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinTObjDrivers_ModelDriver\n");}
	}
};


%nodefaultctor Handle_BinTObjDrivers_DocumentRetrievalDriver;
class Handle_BinTObjDrivers_DocumentRetrievalDriver : public Handle_BinLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentRetrievalDriver(const Handle_BinTObjDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentRetrievalDriver(const BinTObjDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentRetrievalDriver & operator=(const Handle_BinTObjDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentRetrievalDriver & operator=(const BinTObjDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_DocumentRetrievalDriver {
	BinTObjDrivers_DocumentRetrievalDriver* GetObject() {
	return (BinTObjDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_BinTObjDrivers_DocumentRetrievalDriver {
	~Handle_BinTObjDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinTObjDrivers_DocumentRetrievalDriver\n");}
	}
};


%nodefaultctor Handle_BinTObjDrivers_ObjectDriver;
class Handle_BinTObjDrivers_ObjectDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ObjectDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ObjectDriver(const Handle_BinTObjDrivers_ObjectDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ObjectDriver(const BinTObjDrivers_ObjectDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ObjectDriver & operator=(const Handle_BinTObjDrivers_ObjectDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ObjectDriver & operator=(const BinTObjDrivers_ObjectDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ObjectDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_ObjectDriver {
	BinTObjDrivers_ObjectDriver* GetObject() {
	return (BinTObjDrivers_ObjectDriver*)$self->Access();
	}
};
%extend Handle_BinTObjDrivers_ObjectDriver {
	~Handle_BinTObjDrivers_ObjectDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinTObjDrivers_ObjectDriver\n");}
	}
};


%nodefaultctor Handle_BinTObjDrivers_IntSparseArrayDriver;
class Handle_BinTObjDrivers_IntSparseArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_IntSparseArrayDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_IntSparseArrayDriver(const Handle_BinTObjDrivers_IntSparseArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_IntSparseArrayDriver(const BinTObjDrivers_IntSparseArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_IntSparseArrayDriver & operator=(const Handle_BinTObjDrivers_IntSparseArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_IntSparseArrayDriver & operator=(const BinTObjDrivers_IntSparseArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_IntSparseArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_IntSparseArrayDriver {
	BinTObjDrivers_IntSparseArrayDriver* GetObject() {
	return (BinTObjDrivers_IntSparseArrayDriver*)$self->Access();
	}
};
%extend Handle_BinTObjDrivers_IntSparseArrayDriver {
	~Handle_BinTObjDrivers_IntSparseArrayDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinTObjDrivers_IntSparseArrayDriver\n");}
	}
};


%nodefaultctor Handle_BinTObjDrivers_ReferenceDriver;
class Handle_BinTObjDrivers_ReferenceDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ReferenceDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ReferenceDriver(const Handle_BinTObjDrivers_ReferenceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ReferenceDriver(const BinTObjDrivers_ReferenceDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ReferenceDriver & operator=(const Handle_BinTObjDrivers_ReferenceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ReferenceDriver & operator=(const BinTObjDrivers_ReferenceDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ReferenceDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_ReferenceDriver {
	BinTObjDrivers_ReferenceDriver* GetObject() {
	return (BinTObjDrivers_ReferenceDriver*)$self->Access();
	}
};
%extend Handle_BinTObjDrivers_ReferenceDriver {
	~Handle_BinTObjDrivers_ReferenceDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinTObjDrivers_ReferenceDriver\n");}
	}
};


%nodefaultctor Handle_BinTObjDrivers_XYZDriver;
class Handle_BinTObjDrivers_XYZDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_XYZDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_XYZDriver(const Handle_BinTObjDrivers_XYZDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_XYZDriver(const BinTObjDrivers_XYZDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_XYZDriver & operator=(const Handle_BinTObjDrivers_XYZDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_XYZDriver & operator=(const BinTObjDrivers_XYZDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_XYZDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_XYZDriver {
	BinTObjDrivers_XYZDriver* GetObject() {
	return (BinTObjDrivers_XYZDriver*)$self->Access();
	}
};
%extend Handle_BinTObjDrivers_XYZDriver {
	~Handle_BinTObjDrivers_XYZDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinTObjDrivers_XYZDriver\n");}
	}
};


%nodefaultctor Handle_BinTObjDrivers_DocumentStorageDriver;
class Handle_BinTObjDrivers_DocumentStorageDriver : public Handle_BinLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentStorageDriver(const Handle_BinTObjDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentStorageDriver(const BinTObjDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentStorageDriver & operator=(const Handle_BinTObjDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentStorageDriver & operator=(const BinTObjDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_DocumentStorageDriver {
	BinTObjDrivers_DocumentStorageDriver* GetObject() {
	return (BinTObjDrivers_DocumentStorageDriver*)$self->Access();
	}
};
%extend Handle_BinTObjDrivers_DocumentStorageDriver {
	~Handle_BinTObjDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinTObjDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor BinTObjDrivers_ObjectDriver;
class BinTObjDrivers_ObjectDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_ObjectDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinTObjDrivers_ObjectDriver {
	Handle_BinTObjDrivers_ObjectDriver GetHandle() {
	return *(Handle_BinTObjDrivers_ObjectDriver*) &$self;
	}
};
%extend BinTObjDrivers_ObjectDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinTObjDrivers_ObjectDriver {
	~BinTObjDrivers_ObjectDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTObjDrivers_ObjectDriver\n");}
	}
};


%nodefaultctor BinTObjDrivers_ReferenceDriver;
class BinTObjDrivers_ReferenceDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_ReferenceDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinTObjDrivers_ReferenceDriver {
	Handle_BinTObjDrivers_ReferenceDriver GetHandle() {
	return *(Handle_BinTObjDrivers_ReferenceDriver*) &$self;
	}
};
%extend BinTObjDrivers_ReferenceDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinTObjDrivers_ReferenceDriver {
	~BinTObjDrivers_ReferenceDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTObjDrivers_ReferenceDriver\n");}
	}
};


%nodefaultctor BinTObjDrivers_DocumentRetrievalDriver;
class BinTObjDrivers_DocumentRetrievalDriver : public BinLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinTObjDrivers_DocumentRetrievalDriver {
	Handle_BinTObjDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_BinTObjDrivers_DocumentRetrievalDriver*) &$self;
	}
};
%extend BinTObjDrivers_DocumentRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinTObjDrivers_DocumentRetrievalDriver {
	~BinTObjDrivers_DocumentRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTObjDrivers_DocumentRetrievalDriver\n");}
	}
};


%nodefaultctor BinTObjDrivers;
class BinTObjDrivers {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);
		%feature("autodoc", "1");
		void AddDrivers(const Handle_BinMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &aMsgDrv);

};
%extend BinTObjDrivers {
	~BinTObjDrivers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTObjDrivers\n");}
	}
};


%nodefaultctor BinTObjDrivers_DocumentStorageDriver;
class BinTObjDrivers_DocumentStorageDriver : public BinLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinTObjDrivers_DocumentStorageDriver {
	Handle_BinTObjDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_BinTObjDrivers_DocumentStorageDriver*) &$self;
	}
};
%extend BinTObjDrivers_DocumentStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinTObjDrivers_DocumentStorageDriver {
	~BinTObjDrivers_DocumentStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTObjDrivers_DocumentStorageDriver\n");}
	}
};


%nodefaultctor BinTObjDrivers_XYZDriver;
class BinTObjDrivers_XYZDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_XYZDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinTObjDrivers_XYZDriver {
	Handle_BinTObjDrivers_XYZDriver GetHandle() {
	return *(Handle_BinTObjDrivers_XYZDriver*) &$self;
	}
};
%extend BinTObjDrivers_XYZDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinTObjDrivers_XYZDriver {
	~BinTObjDrivers_XYZDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTObjDrivers_XYZDriver\n");}
	}
};


%nodefaultctor BinTObjDrivers_IntSparseArrayDriver;
class BinTObjDrivers_IntSparseArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_IntSparseArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinTObjDrivers_IntSparseArrayDriver {
	Handle_BinTObjDrivers_IntSparseArrayDriver GetHandle() {
	return *(Handle_BinTObjDrivers_IntSparseArrayDriver*) &$self;
	}
};
%extend BinTObjDrivers_IntSparseArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinTObjDrivers_IntSparseArrayDriver {
	~BinTObjDrivers_IntSparseArrayDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTObjDrivers_IntSparseArrayDriver\n");}
	}
};


%nodefaultctor BinTObjDrivers_ModelDriver;
class BinTObjDrivers_ModelDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_ModelDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinTObjDrivers_ModelDriver {
	Handle_BinTObjDrivers_ModelDriver GetHandle() {
	return *(Handle_BinTObjDrivers_ModelDriver*) &$self;
	}
};
%extend BinTObjDrivers_ModelDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinTObjDrivers_ModelDriver {
	~BinTObjDrivers_ModelDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTObjDrivers_ModelDriver\n");}
	}
};
