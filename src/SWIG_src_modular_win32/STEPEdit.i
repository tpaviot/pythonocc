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
%module STEPEdit

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


%include STEPEdit_dependencies.i


%include STEPEdit_headers.i




%nodefaultctor Handle_STEPEdit_EditSDR;
class Handle_STEPEdit_EditSDR : public Handle_IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		Handle_STEPEdit_EditSDR();
		%feature("autodoc", "1");
		Handle_STEPEdit_EditSDR(const Handle_STEPEdit_EditSDR &aHandle);
		%feature("autodoc", "1");
		Handle_STEPEdit_EditSDR(const STEPEdit_EditSDR *anItem);
		%feature("autodoc", "1");
		Handle_STEPEdit_EditSDR const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPEdit_EditSDR {
	STEPEdit_EditSDR* GetObject() {
	return (STEPEdit_EditSDR*)$self->Access();
	}
};
%extend Handle_STEPEdit_EditSDR {
	~Handle_STEPEdit_EditSDR() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_STEPEdit_EditSDR\n");}
	}
};

%nodefaultctor Handle_STEPEdit_EditContext;
class Handle_STEPEdit_EditContext : public Handle_IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		Handle_STEPEdit_EditContext();
		%feature("autodoc", "1");
		Handle_STEPEdit_EditContext(const Handle_STEPEdit_EditContext &aHandle);
		%feature("autodoc", "1");
		Handle_STEPEdit_EditContext(const STEPEdit_EditContext *anItem);
		%feature("autodoc", "1");
		Handle_STEPEdit_EditContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPEdit_EditContext {
	STEPEdit_EditContext* GetObject() {
	return (STEPEdit_EditContext*)$self->Access();
	}
};
%extend Handle_STEPEdit_EditContext {
	~Handle_STEPEdit_EditContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_STEPEdit_EditContext\n");}
	}
};

%nodefaultctor STEPEdit;
class STEPEdit {
	public:
		%feature("autodoc", "1");
		STEPEdit();
		%feature("autodoc", "1");
		Handle_Interface_Protocol Protocol();
		%feature("autodoc", "1");
		Handle_StepData_StepModel NewModel();
		%feature("autodoc", "1");
		Handle_IFSelect_Signature SignType();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignature NewSelectSDR();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignature NewSelectPlacedItem();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignature NewSelectShapeRepr();

};
%extend STEPEdit {
	~STEPEdit() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of STEPEdit\n");}
	}
};

%nodefaultctor STEPEdit_EditContext;
class STEPEdit_EditContext : public IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		STEPEdit_EditContext();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_IFSelect_EditForm &form) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString StringValue(const Handle_IFSelect_EditForm &form, const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Apply(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Load(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPEdit_EditContext {
	Handle_STEPEdit_EditContext GetHandle() {
	return *(Handle_STEPEdit_EditContext*) &$self;
	}
};
%extend STEPEdit_EditContext {
	~STEPEdit_EditContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of STEPEdit_EditContext\n");}
	}
};

%nodefaultctor STEPEdit_EditSDR;
class STEPEdit_EditSDR : public IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		STEPEdit_EditSDR();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_IFSelect_EditForm &form) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString StringValue(const Handle_IFSelect_EditForm &form, const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Apply(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Load(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPEdit_EditSDR {
	Handle_STEPEdit_EditSDR GetHandle() {
	return *(Handle_STEPEdit_EditSDR*) &$self;
	}
};
%extend STEPEdit_EditSDR {
	~STEPEdit_EditSDR() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of STEPEdit_EditSDR\n");}
	}
};