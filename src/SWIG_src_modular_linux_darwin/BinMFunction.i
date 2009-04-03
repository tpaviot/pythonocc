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
%module BinMFunction

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i

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

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
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

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include BinMFunction_dependencies.i


%include BinMFunction_headers.i




%nodefaultctor Handle_BinMFunction_FunctionDriver;
class Handle_BinMFunction_FunctionDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMFunction_FunctionDriver();
		%feature("autodoc", "1");
		Handle_BinMFunction_FunctionDriver(const Handle_BinMFunction_FunctionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMFunction_FunctionDriver(const BinMFunction_FunctionDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMFunction_FunctionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMFunction_FunctionDriver {
	BinMFunction_FunctionDriver* GetObject() {
	return (BinMFunction_FunctionDriver*)$self->Access();
	}
};
%extend Handle_BinMFunction_FunctionDriver {
	~Handle_BinMFunction_FunctionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMFunction_FunctionDriver\n");}
	}
};

%nodefaultctor Handle_BinMFunction_ScopeDriver;
class Handle_BinMFunction_ScopeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMFunction_ScopeDriver();
		%feature("autodoc", "1");
		Handle_BinMFunction_ScopeDriver(const Handle_BinMFunction_ScopeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMFunction_ScopeDriver(const BinMFunction_ScopeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMFunction_ScopeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMFunction_ScopeDriver {
	BinMFunction_ScopeDriver* GetObject() {
	return (BinMFunction_ScopeDriver*)$self->Access();
	}
};
%extend Handle_BinMFunction_ScopeDriver {
	~Handle_BinMFunction_ScopeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMFunction_ScopeDriver\n");}
	}
};

%nodefaultctor Handle_BinMFunction_GraphNodeDriver;
class Handle_BinMFunction_GraphNodeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMFunction_GraphNodeDriver();
		%feature("autodoc", "1");
		Handle_BinMFunction_GraphNodeDriver(const Handle_BinMFunction_GraphNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMFunction_GraphNodeDriver(const BinMFunction_GraphNodeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMFunction_GraphNodeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMFunction_GraphNodeDriver {
	BinMFunction_GraphNodeDriver* GetObject() {
	return (BinMFunction_GraphNodeDriver*)$self->Access();
	}
};
%extend Handle_BinMFunction_GraphNodeDriver {
	~Handle_BinMFunction_GraphNodeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMFunction_GraphNodeDriver\n");}
	}
};

%nodefaultctor BinMFunction_FunctionDriver;
class BinMFunction_FunctionDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMFunction_FunctionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMFunction_FunctionDriver {
	Handle_BinMFunction_FunctionDriver GetHandle() {
	return *(Handle_BinMFunction_FunctionDriver*) &$self;
	}
};
%extend BinMFunction_FunctionDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinMFunction_FunctionDriver {
	~BinMFunction_FunctionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMFunction_FunctionDriver\n");}
	}
};

%nodefaultctor BinMFunction;
class BinMFunction {
	public:
		%feature("autodoc", "1");
		BinMFunction();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &aMsgDrv);

};
%extend BinMFunction {
	~BinMFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMFunction\n");}
	}
};

%nodefaultctor BinMFunction_GraphNodeDriver;
class BinMFunction_GraphNodeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMFunction_GraphNodeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMFunction_GraphNodeDriver {
	Handle_BinMFunction_GraphNodeDriver GetHandle() {
	return *(Handle_BinMFunction_GraphNodeDriver*) &$self;
	}
};
%extend BinMFunction_GraphNodeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinMFunction_GraphNodeDriver {
	~BinMFunction_GraphNodeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMFunction_GraphNodeDriver\n");}
	}
};

%nodefaultctor BinMFunction_ScopeDriver;
class BinMFunction_ScopeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMFunction_ScopeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMFunction_ScopeDriver {
	Handle_BinMFunction_ScopeDriver GetHandle() {
	return *(Handle_BinMFunction_ScopeDriver*) &$self;
	}
};
%extend BinMFunction_ScopeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinMFunction_ScopeDriver {
	~BinMFunction_ScopeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMFunction_ScopeDriver\n");}
	}
};