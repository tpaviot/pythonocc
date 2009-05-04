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
%module BinMNaming

%include BinMNaming_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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


%include BinMNaming_dependencies.i


%include BinMNaming_headers.i




%nodefaultctor Handle_BinMNaming_NamingDriver;
class Handle_BinMNaming_NamingDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMNaming_NamingDriver();
		%feature("autodoc", "1");
		Handle_BinMNaming_NamingDriver(const Handle_BinMNaming_NamingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMNaming_NamingDriver(const BinMNaming_NamingDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMNaming_NamingDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMNaming_NamingDriver {
	BinMNaming_NamingDriver* GetObject() {
	return (BinMNaming_NamingDriver*)$self->Access();
	}
};
%extend Handle_BinMNaming_NamingDriver {
	~Handle_BinMNaming_NamingDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMNaming_NamingDriver\n");}
	}
};


%nodefaultctor Handle_BinMNaming_NamedShapeDriver;
class Handle_BinMNaming_NamedShapeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMNaming_NamedShapeDriver();
		%feature("autodoc", "1");
		Handle_BinMNaming_NamedShapeDriver(const Handle_BinMNaming_NamedShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMNaming_NamedShapeDriver(const BinMNaming_NamedShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMNaming_NamedShapeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMNaming_NamedShapeDriver {
	BinMNaming_NamedShapeDriver* GetObject() {
	return (BinMNaming_NamedShapeDriver*)$self->Access();
	}
};
%extend Handle_BinMNaming_NamedShapeDriver {
	~Handle_BinMNaming_NamedShapeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinMNaming_NamedShapeDriver\n");}
	}
};


%nodefaultctor BinMNaming;
class BinMNaming {
	public:
		%feature("autodoc", "1");
		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &aMsgDrv);

};
%extend BinMNaming {
	~BinMNaming() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMNaming\n");}
	}
};


%nodefaultctor BinMNaming_NamedShapeDriver;
class BinMNaming_NamedShapeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMNaming_NamedShapeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		%extend{
			void ReadShapeSectionFromString(std::string src) {
			std::stringstream s(src);
			self->ReadShapeSection(s);}
		};
		%feature("autodoc", "1");
		%extend{
			std::string WriteShapeSectionToString() {
			std::stringstream s;
			self->WriteShapeSection(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFormatNb(const Standard_Integer theFormatNb);
		%feature("autodoc", "1");
		Standard_Integer GetFormatNb() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMNaming_NamedShapeDriver {
	Handle_BinMNaming_NamedShapeDriver GetHandle() {
	return *(Handle_BinMNaming_NamedShapeDriver*) &$self;
	}
};
%extend BinMNaming_NamedShapeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinMNaming_NamedShapeDriver {
	~BinMNaming_NamedShapeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMNaming_NamedShapeDriver\n");}
	}
};


%nodefaultctor BinMNaming_NamingDriver;
class BinMNaming_NamingDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMNaming_NamingDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMNaming_NamingDriver {
	Handle_BinMNaming_NamingDriver GetHandle() {
	return *(Handle_BinMNaming_NamingDriver*) &$self;
	}
};
%extend BinMNaming_NamingDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinMNaming_NamingDriver {
	~BinMNaming_NamingDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinMNaming_NamingDriver\n");}
	}
};
