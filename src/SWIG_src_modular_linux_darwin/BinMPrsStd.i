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
%module BinMPrsStd

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


%include BinMPrsStd_dependencies.i


%include BinMPrsStd_headers.i




%nodefaultctor Handle_BinMPrsStd_PositionDriver;
class Handle_BinMPrsStd_PositionDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver();
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver(const Handle_BinMPrsStd_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver(const BinMPrsStd_PositionDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMPrsStd_PositionDriver {
	BinMPrsStd_PositionDriver* GetObject() {
	return (BinMPrsStd_PositionDriver*)$self->Access();
	}
};
%extend Handle_BinMPrsStd_PositionDriver {
	~Handle_BinMPrsStd_PositionDriver() {
	printf("Call custom destructor for instance of Handle_BinMPrsStd_PositionDriver\n");
	}
};

%nodefaultctor Handle_BinMPrsStd_AISPresentationDriver;
class Handle_BinMPrsStd_AISPresentationDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver();
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver(const Handle_BinMPrsStd_AISPresentationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver(const BinMPrsStd_AISPresentationDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMPrsStd_AISPresentationDriver {
	BinMPrsStd_AISPresentationDriver* GetObject() {
	return (BinMPrsStd_AISPresentationDriver*)$self->Access();
	}
};
%extend Handle_BinMPrsStd_AISPresentationDriver {
	~Handle_BinMPrsStd_AISPresentationDriver() {
	printf("Call custom destructor for instance of Handle_BinMPrsStd_AISPresentationDriver\n");
	}
};

%nodefaultctor BinMPrsStd;
class BinMPrsStd {
	public:
		%feature("autodoc", "1");
		~BinMPrsStd();
		%feature("autodoc", "1");
		BinMPrsStd();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

};

%nodefaultctor BinMPrsStd_AISPresentationDriver;
class BinMPrsStd_AISPresentationDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMPrsStd_AISPresentationDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMPrsStd_AISPresentationDriver {
	Handle_BinMPrsStd_AISPresentationDriver GetHandle() {
	return *(Handle_BinMPrsStd_AISPresentationDriver*) &$self;
	}
};
%extend BinMPrsStd_AISPresentationDriver {
	~BinMPrsStd_AISPresentationDriver() {
	printf("Call custom destructor for instance of BinMPrsStd_AISPresentationDriver\n");
	}
};

%nodefaultctor BinMPrsStd_PositionDriver;
class BinMPrsStd_PositionDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMPrsStd_PositionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMPrsStd_PositionDriver {
	Handle_BinMPrsStd_PositionDriver GetHandle() {
	return *(Handle_BinMPrsStd_PositionDriver*) &$self;
	}
};
%extend BinMPrsStd_PositionDriver {
	~BinMPrsStd_PositionDriver() {
	printf("Call custom destructor for instance of BinMPrsStd_PositionDriver\n");
	}
};