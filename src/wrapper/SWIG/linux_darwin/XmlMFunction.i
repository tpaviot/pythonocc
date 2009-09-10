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
%module XmlMFunction

%include XmlMFunction_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XmlMFunction_dependencies.i


%include XmlMFunction_headers.i




%nodefaultctor Handle_XmlMFunction_FunctionDriver;
class Handle_XmlMFunction_FunctionDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMFunction_FunctionDriver();
		%feature("autodoc", "1");
		Handle_XmlMFunction_FunctionDriver(const Handle_XmlMFunction_FunctionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMFunction_FunctionDriver(const XmlMFunction_FunctionDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMFunction_FunctionDriver & operator=(const Handle_XmlMFunction_FunctionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMFunction_FunctionDriver & operator=(const XmlMFunction_FunctionDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMFunction_FunctionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMFunction_FunctionDriver {
	XmlMFunction_FunctionDriver* GetObject() {
	return (XmlMFunction_FunctionDriver*)$self->Access();
	}
};
%extend Handle_XmlMFunction_FunctionDriver {
	~Handle_XmlMFunction_FunctionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMFunction_FunctionDriver\n");}
	}
};


%nodefaultctor Handle_XmlMFunction_GraphNodeDriver;
class Handle_XmlMFunction_GraphNodeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMFunction_GraphNodeDriver();
		%feature("autodoc", "1");
		Handle_XmlMFunction_GraphNodeDriver(const Handle_XmlMFunction_GraphNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMFunction_GraphNodeDriver(const XmlMFunction_GraphNodeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMFunction_GraphNodeDriver & operator=(const Handle_XmlMFunction_GraphNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMFunction_GraphNodeDriver & operator=(const XmlMFunction_GraphNodeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMFunction_GraphNodeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMFunction_GraphNodeDriver {
	XmlMFunction_GraphNodeDriver* GetObject() {
	return (XmlMFunction_GraphNodeDriver*)$self->Access();
	}
};
%extend Handle_XmlMFunction_GraphNodeDriver {
	~Handle_XmlMFunction_GraphNodeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMFunction_GraphNodeDriver\n");}
	}
};


%nodefaultctor Handle_XmlMFunction_ScopeDriver;
class Handle_XmlMFunction_ScopeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMFunction_ScopeDriver();
		%feature("autodoc", "1");
		Handle_XmlMFunction_ScopeDriver(const Handle_XmlMFunction_ScopeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMFunction_ScopeDriver(const XmlMFunction_ScopeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMFunction_ScopeDriver & operator=(const Handle_XmlMFunction_ScopeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMFunction_ScopeDriver & operator=(const XmlMFunction_ScopeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMFunction_ScopeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMFunction_ScopeDriver {
	XmlMFunction_ScopeDriver* GetObject() {
	return (XmlMFunction_ScopeDriver*)$self->Access();
	}
};
%extend Handle_XmlMFunction_ScopeDriver {
	~Handle_XmlMFunction_ScopeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XmlMFunction_ScopeDriver\n");}
	}
};


%nodefaultctor XmlMFunction_ScopeDriver;
class XmlMFunction_ScopeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMFunction_ScopeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMFunction_ScopeDriver {
	Handle_XmlMFunction_ScopeDriver GetHandle() {
	return *(Handle_XmlMFunction_ScopeDriver*) &$self;
	}
};
%extend XmlMFunction_ScopeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMFunction_ScopeDriver {
	~XmlMFunction_ScopeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMFunction_ScopeDriver\n");}
	}
};


%nodefaultctor XmlMFunction;
class XmlMFunction {
	public:
		%feature("autodoc", "1");
		XmlMFunction();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

};
%extend XmlMFunction {
	~XmlMFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMFunction\n");}
	}
};


%nodefaultctor XmlMFunction_GraphNodeDriver;
class XmlMFunction_GraphNodeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMFunction_GraphNodeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMFunction_GraphNodeDriver {
	Handle_XmlMFunction_GraphNodeDriver GetHandle() {
	return *(Handle_XmlMFunction_GraphNodeDriver*) &$self;
	}
};
%extend XmlMFunction_GraphNodeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMFunction_GraphNodeDriver {
	~XmlMFunction_GraphNodeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMFunction_GraphNodeDriver\n");}
	}
};


%nodefaultctor XmlMFunction_FunctionDriver;
class XmlMFunction_FunctionDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMFunction_FunctionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMFunction_FunctionDriver {
	Handle_XmlMFunction_FunctionDriver GetHandle() {
	return *(Handle_XmlMFunction_FunctionDriver*) &$self;
	}
};
%extend XmlMFunction_FunctionDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XmlMFunction_FunctionDriver {
	~XmlMFunction_FunctionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XmlMFunction_FunctionDriver\n");}
	}
};
