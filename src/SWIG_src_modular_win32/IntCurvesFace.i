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
%module IntCurvesFace

%include IntCurvesFace_renames.i

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

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include IntCurvesFace_dependencies.i


%include IntCurvesFace_headers.i




%nodefaultctor IntCurvesFace_Intersector;
class IntCurvesFace_Intersector {
	public:
		%feature("autodoc", "1");
		IntCurvesFace_Intersector(const TopoDS_Face &F, const Standard_Real aTol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &HCu, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		GeomAbs_SurfaceType SurfaceType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPnt() const;
		%feature("autodoc", "1");
		Standard_Real UParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real VParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real WParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt(const Standard_Integer i) const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition(const Standard_Integer i) const;
		%feature("autodoc", "1");
		TopAbs_State State(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		TopAbs_State ClassifyUVPoint(const gp_Pnt2d &Puv) const;
		%feature("autodoc", "1");
		Bnd_Box Bounding() const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend IntCurvesFace_Intersector {
	~IntCurvesFace_Intersector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntCurvesFace_Intersector\n");}
	}
};


%nodefaultctor IntCurvesFace_ShapeIntersector;
class IntCurvesFace_ShapeIntersector {
	public:
		%feature("autodoc", "1");
		IntCurvesFace_ShapeIntersector();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape &Sh, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		void PerformNearest(const gp_Lin &L, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &HCu, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPnt() const;
		%feature("autodoc", "1");
		Standard_Real UParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real VParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real WParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt(const Standard_Integer i) const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition(const Standard_Integer i) const;
		%feature("autodoc", "1");
		TopAbs_State State(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face(const Standard_Integer i) const;
		%feature("autodoc", "1");
		void SortResult();
		%feature("autodoc", "1");
		void Destroy();

};
%extend IntCurvesFace_ShapeIntersector {
	~IntCurvesFace_ShapeIntersector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IntCurvesFace_ShapeIntersector\n");}
	}
};
