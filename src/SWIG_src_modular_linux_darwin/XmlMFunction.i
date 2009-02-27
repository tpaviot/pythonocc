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
		~Handle_XmlMFunction_GraphNodeDriver();
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

%nodefaultctor Handle_XmlMFunction_FunctionDriver;
class Handle_XmlMFunction_FunctionDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMFunction_FunctionDriver();
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

%nodefaultctor Handle_XmlMFunction_ScopeDriver;
class Handle_XmlMFunction_ScopeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMFunction_ScopeDriver();
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
		%feature("autodoc", "1");
		virtual		~XmlMFunction_ScopeDriver();

};
%extend XmlMFunction_ScopeDriver {
	Handle_XmlMFunction_ScopeDriver GetHandle() {
	return *(Handle_XmlMFunction_ScopeDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~XmlMFunction_GraphNodeDriver();

};
%extend XmlMFunction_GraphNodeDriver {
	Handle_XmlMFunction_GraphNodeDriver GetHandle() {
	return *(Handle_XmlMFunction_GraphNodeDriver*) &$self;
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
		%feature("autodoc", "1");
		virtual		~XmlMFunction_FunctionDriver();

};
%extend XmlMFunction_FunctionDriver {
	Handle_XmlMFunction_FunctionDriver GetHandle() {
	return *(Handle_XmlMFunction_FunctionDriver*) &$self;
	}
};