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
%module Geom2dToIGES

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


%include Geom2dToIGES_dependencies.i


%include Geom2dToIGES_headers.i




%nodefaultctor Geom2dToIGES_Geom2dEntity;
class Geom2dToIGES_Geom2dEntity {
	public:
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dEntity();
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dEntity(const Geom2dToIGES_Geom2dEntity &GE);
		%feature("autodoc", "1");
		void SetModel(const Handle_IGESData_IGESModel &model);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel GetModel() const;
		%feature("autodoc", "1");
		void SetUnit(const Standard_Real unit);
		%feature("autodoc", "1");
		Standard_Real GetUnit() const;

};
%extend Geom2dToIGES_Geom2dEntity {
	~Geom2dToIGES_Geom2dEntity() {
	printf("Call custom destructor for instance of Geom2dToIGES_Geom2dEntity\n");
	}
};

%nodefaultctor Geom2dToIGES_Geom2dCurve;
class Geom2dToIGES_Geom2dCurve : public Geom2dToIGES_Geom2dEntity {
	public:
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dCurve();
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dCurve(const Geom2dToIGES_Geom2dEntity &G2dE);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Transfer2dCurve(const Handle_Geom2d_Curve &start, const Standard_Real Udeb, const Standard_Real Ufin);

};
%extend Geom2dToIGES_Geom2dCurve {
	~Geom2dToIGES_Geom2dCurve() {
	printf("Call custom destructor for instance of Geom2dToIGES_Geom2dCurve\n");
	}
};

%nodefaultctor Geom2dToIGES_Geom2dVector;
class Geom2dToIGES_Geom2dVector : public Geom2dToIGES_Geom2dEntity {
	public:
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dVector();
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dVector(const Geom2dToIGES_Geom2dEntity &G2dE);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Transfer2dVector(const Handle_Geom2d_Vector &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Transfer2dVector(const Handle_Geom2d_VectorWithMagnitude &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Transfer2dVector(const Handle_Geom2d_Direction &start);

};
%extend Geom2dToIGES_Geom2dVector {
	~Geom2dToIGES_Geom2dVector() {
	printf("Call custom destructor for instance of Geom2dToIGES_Geom2dVector\n");
	}
};

%nodefaultctor Geom2dToIGES_Geom2dPoint;
class Geom2dToIGES_Geom2dPoint : public Geom2dToIGES_Geom2dEntity {
	public:
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dPoint();
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dPoint(const Geom2dToIGES_Geom2dEntity &G2dE);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point Transfer2dPoint(const Handle_Geom2d_Point &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point Transfer2dPoint(const Handle_Geom2d_CartesianPoint &start);

};
%extend Geom2dToIGES_Geom2dPoint {
	~Geom2dToIGES_Geom2dPoint() {
	printf("Call custom destructor for instance of Geom2dToIGES_Geom2dPoint\n");
	}
};