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
%module GeomProjLib

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


%include GeomProjLib_dependencies.i


%include GeomProjLib_headers.i




%nodefaultctor GeomProjLib;
class GeomProjLib {
	public:
		%feature("autodoc", "1");
		GeomProjLib();
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Standard_Real First, const Standard_Real Last, const Handle_Geom_Surface &S, const Standard_Real UFirst, const Standard_Real ULast, const Standard_Real VFirst, const Standard_Real VLast, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Standard_Real First, const Standard_Real Last, const Handle_Geom_Surface &S, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Standard_Real First, const Standard_Real Last, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Handle_Geom_Surface &S, const Standard_Real UDeb, const Standard_Real UFin, const Standard_Real VDeb, const Standard_Real VFin);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Handle_Geom_Surface &S, const Standard_Real UDeb, const Standard_Real UFin, const Standard_Real VDeb, const Standard_Real VFin, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_Geom_Curve Project(const Handle_Geom_Curve &C, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		Handle_Geom_Curve ProjectOnPlane(const Handle_Geom_Curve &Curve, const Handle_Geom_Plane &Plane, const gp_Dir &Dir, const Standard_Boolean KeepParametrization);

};
%extend GeomProjLib {
	~GeomProjLib() {
	printf("Call custom destructor for instance of GeomProjLib\n");
	}
};