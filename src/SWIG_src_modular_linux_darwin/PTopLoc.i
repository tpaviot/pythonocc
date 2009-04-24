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
%module PTopLoc

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


%include PTopLoc_dependencies.i


%include PTopLoc_headers.i




%nodefaultctor Handle_PTopLoc_Datum3D;
class Handle_PTopLoc_Datum3D : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D();
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D(const Handle_PTopLoc_Datum3D &aHandle);
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D(const PTopLoc_Datum3D *anItem);
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopLoc_Datum3D {
	PTopLoc_Datum3D* GetObject() {
	return (PTopLoc_Datum3D*)$self->Access();
	}
};
%extend Handle_PTopLoc_Datum3D {
	~Handle_PTopLoc_Datum3D() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PTopLoc_Datum3D\n");}
	}
};


%nodefaultctor Handle_PTopLoc_ItemLocation;
class Handle_PTopLoc_ItemLocation : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation();
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation(const Handle_PTopLoc_ItemLocation &aHandle);
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation(const PTopLoc_ItemLocation *anItem);
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopLoc_ItemLocation {
	PTopLoc_ItemLocation* GetObject() {
	return (PTopLoc_ItemLocation*)$self->Access();
	}
};
%extend Handle_PTopLoc_ItemLocation {
	~Handle_PTopLoc_ItemLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PTopLoc_ItemLocation\n");}
	}
};


%nodefaultctor PTopLoc_Datum3D;
class PTopLoc_Datum3D : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PTopLoc_Datum3D(const gp_Trsf &T);
		%feature("autodoc", "1");
		gp_Trsf Transformation() const;
		%feature("autodoc", "1");
		PTopLoc_Datum3D();
		%feature("autodoc", "1");
		PTopLoc_Datum3D(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Trsf & _CSFDB_GetPTopLoc_Datum3DmyTrsf() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopLoc_Datum3D {
	Handle_PTopLoc_Datum3D GetHandle() {
	return *(Handle_PTopLoc_Datum3D*) &$self;
	}
};
%extend PTopLoc_Datum3D {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PTopLoc_Datum3D {
	~PTopLoc_Datum3D() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PTopLoc_Datum3D\n");}
	}
};


%nodefaultctor PTopLoc_Location;
class PTopLoc_Location {
	public:
		%feature("autodoc", "1");
		PTopLoc_Location();
		%feature("autodoc", "1");
		PTopLoc_Location(const Handle_PTopLoc_Datum3D &D, const Standard_Integer P, const PTopLoc_Location &N);
		%feature("autodoc", "1");
		Standard_Boolean IsIdentity() const;
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D Datum3D() const;
		%feature("autodoc", "1");
		Standard_Integer Power() const;
		%feature("autodoc", "1");
		PTopLoc_Location Next() const;
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation _CSFDB_GetPTopLoc_LocationmyData() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopLoc_LocationmyData(const Handle_PTopLoc_ItemLocation &p);

};
%extend PTopLoc_Location {
	~PTopLoc_Location() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PTopLoc_Location\n");}
	}
};


%nodefaultctor PTopLoc_ItemLocation;
class PTopLoc_ItemLocation : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PTopLoc_ItemLocation(const Handle_PTopLoc_Datum3D &D, const Standard_Integer P, const PTopLoc_Location &N);
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D Datum3D() const;
		%feature("autodoc", "1");
		Standard_Integer Power() const;
		%feature("autodoc", "1");
		PTopLoc_Location Next() const;
		%feature("autodoc", "1");
		PTopLoc_ItemLocation();
		%feature("autodoc", "1");
		PTopLoc_ItemLocation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D _CSFDB_GetPTopLoc_ItemLocationmyDatum() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopLoc_ItemLocationmyDatum(const Handle_PTopLoc_Datum3D &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPTopLoc_ItemLocationmyPower() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopLoc_ItemLocationmyPower(const Standard_Integer p);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPTopLoc_ItemLocationmyNext() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopLoc_ItemLocation {
	Handle_PTopLoc_ItemLocation GetHandle() {
	return *(Handle_PTopLoc_ItemLocation*) &$self;
	}
};
%extend PTopLoc_ItemLocation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PTopLoc_ItemLocation {
	~PTopLoc_ItemLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PTopLoc_ItemLocation\n");}
	}
};
