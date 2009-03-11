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
%module BndLib

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


%include BndLib_dependencies.i


%include BndLib_headers.i




%nodefaultctor BndLib_AddSurface;
class BndLib_AddSurface {
	public:
		%feature("autodoc", "1");
		~BndLib_AddSurface();
		%feature("autodoc", "1");
		BndLib_AddSurface();
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Surface &S, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);

};

%nodefaultctor BndLib_Add3dCurve;
class BndLib_Add3dCurve {
	public:
		%feature("autodoc", "1");
		~BndLib_Add3dCurve();
		%feature("autodoc", "1");
		BndLib_Add3dCurve();
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Curve &C, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol, Bnd_Box & B);

};

%nodefaultctor BndLib;
class BndLib {
	public:
		%feature("autodoc", "1");
		~BndLib();
		%feature("autodoc", "1");
		BndLib();
		%feature("autodoc", "1");
		void Add(const gp_Lin &L, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Lin2d &L, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ &C, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ2d &C, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ2d &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips &C, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips2d &C, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips2d &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Parab &P, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Parab2d &P, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Hypr &H, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Hypr2d &H, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Cylinder &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Cylinder &S, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Cone &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Cone &S, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Sphere &S, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Sphere &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Torus &P, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Torus &P, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);

};

%nodefaultctor BndLib_Add2dCurve;
class BndLib_Add2dCurve {
	public:
		%feature("autodoc", "1");
		~BndLib_Add2dCurve();
		%feature("autodoc", "1");
		BndLib_Add2dCurve();
		%feature("autodoc", "1");
		void Add(const Adaptor2d_Curve2d &C, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol, Bnd_Box2d & B);

};