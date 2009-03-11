/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include XmlMFunction_dependencies.i


%include XmlMFunction_headers.i




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
		Handle_XmlMFunction_GraphNodeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMFunction_GraphNodeDriver {
	XmlMFunction_GraphNodeDriver* GetObject() {
	return (XmlMFunction_GraphNodeDriver*)$self->Access();
	}
};
%extend Handle_XmlMFunction_GraphNodeDriver {
	~Handle_XmlMFunction_GraphNodeDriver() {
	printf("Call custom destructor for instance of Handle_XmlMFunction_GraphNodeDriver\n");
	}
};

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
		Handle_XmlMFunction_FunctionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMFunction_FunctionDriver {
	XmlMFunction_FunctionDriver* GetObject() {
	return (XmlMFunction_FunctionDriver*)$self->Access();
	}
};
%extend Handle_XmlMFunction_FunctionDriver {
	~Handle_XmlMFunction_FunctionDriver() {
	printf("Call custom destructor for instance of Handle_XmlMFunction_FunctionDriver\n");
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
		Handle_XmlMFunction_ScopeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMFunction_ScopeDriver {
	XmlMFunction_ScopeDriver* GetObject() {
	return (XmlMFunction_ScopeDriver*)$self->Access();
	}
};
%extend Handle_XmlMFunction_ScopeDriver {
	~Handle_XmlMFunction_ScopeDriver() {
	printf("Call custom destructor for instance of Handle_XmlMFunction_ScopeDriver\n");
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
	~XmlMFunction_ScopeDriver() {
	printf("Call custom destructor for instance of XmlMFunction_ScopeDriver\n");
	}
};

%nodefaultctor XmlMFunction;
class XmlMFunction {
	public:
		%feature("autodoc", "1");
		~XmlMFunction();
		%feature("autodoc", "1");
		XmlMFunction();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

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
	~XmlMFunction_GraphNodeDriver() {
	printf("Call custom destructor for instance of XmlMFunction_GraphNodeDriver\n");
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
	~XmlMFunction_FunctionDriver() {
	printf("Call custom destructor for instance of XmlMFunction_FunctionDriver\n");
	}
};