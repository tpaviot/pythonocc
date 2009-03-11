/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module BinMFunction

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


%include BinMFunction_dependencies.i


%include BinMFunction_headers.i




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
	printf("Call custom destructor for instance of Handle_BinMFunction_ScopeDriver\n");
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
	printf("Call custom destructor for instance of Handle_BinMFunction_GraphNodeDriver\n");
	}
};

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
	printf("Call custom destructor for instance of Handle_BinMFunction_FunctionDriver\n");
	}
};

%nodefaultctor BinMFunction;
class BinMFunction {
	public:
		%feature("autodoc", "1");
		~BinMFunction();
		%feature("autodoc", "1");
		BinMFunction();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &aMsgDrv);

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
	~BinMFunction_FunctionDriver() {
	printf("Call custom destructor for instance of BinMFunction_FunctionDriver\n");
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
	~BinMFunction_ScopeDriver() {
	printf("Call custom destructor for instance of BinMFunction_ScopeDriver\n");
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
	~BinMFunction_GraphNodeDriver() {
	printf("Call custom destructor for instance of BinMFunction_GraphNodeDriver\n");
	}
};