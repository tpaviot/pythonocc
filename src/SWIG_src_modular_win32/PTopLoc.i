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
%module PTopLoc

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
	printf("Call custom destructor for instance of Handle_PTopLoc_Datum3D\n");
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
	printf("Call custom destructor for instance of Handle_PTopLoc_ItemLocation\n");
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
	~PTopLoc_ItemLocation() {
	printf("Call custom destructor for instance of PTopLoc_ItemLocation\n");
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
	~PTopLoc_Datum3D() {
	printf("Call custom destructor for instance of PTopLoc_Datum3D\n");
	}
};

%nodefaultctor PTopLoc_Location;
class PTopLoc_Location {
	public:
		%feature("autodoc", "1");
		~PTopLoc_Location();
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