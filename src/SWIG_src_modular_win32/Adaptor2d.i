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
%module Adaptor2d

%include Adaptor2d_renames.i

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


%include Adaptor2d_dependencies.i


%include Adaptor2d_headers.i

typedef Adaptor2d_Curve2d * Adaptor2d_Curve2dPtr;



%nodefaultctor Handle_Adaptor2d_HCurve2d;
class Handle_Adaptor2d_HCurve2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d();
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d(const Handle_Adaptor2d_HCurve2d &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d(const Adaptor2d_HCurve2d *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d & operator=(const Handle_Adaptor2d_HCurve2d &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d & operator=(const Adaptor2d_HCurve2d *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor2d_HCurve2d {
	Adaptor2d_HCurve2d* GetObject() {
	return (Adaptor2d_HCurve2d*)$self->Access();
	}
};
%extend Handle_Adaptor2d_HCurve2d {
	~Handle_Adaptor2d_HCurve2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Adaptor2d_HCurve2d\n");}
	}
};


%nodefaultctor Handle_Adaptor2d_HLine2d;
class Handle_Adaptor2d_HLine2d : public Handle_Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor2d_HLine2d();
		%feature("autodoc", "1");
		Handle_Adaptor2d_HLine2d(const Handle_Adaptor2d_HLine2d &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HLine2d(const Adaptor2d_HLine2d *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HLine2d & operator=(const Handle_Adaptor2d_HLine2d &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HLine2d & operator=(const Adaptor2d_HLine2d *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HLine2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor2d_HLine2d {
	Adaptor2d_HLine2d* GetObject() {
	return (Adaptor2d_HLine2d*)$self->Access();
	}
};
%extend Handle_Adaptor2d_HLine2d {
	~Handle_Adaptor2d_HLine2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Adaptor2d_HLine2d\n");}
	}
};


%nodefaultctor Adaptor2d_Curve2d;
class Adaptor2d_Curve2d {
	public:
		%feature("autodoc", "1");
		Adaptor2d_Curve2d();
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor2d_HCurve2d Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec2d DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		virtual		gp_Lin2d Line() const;
		%feature("autodoc", "1");
		virtual		gp_Circ2d Circle() const;
		%feature("autodoc", "1");
		virtual		gp_Elips2d Ellipse() const;
		%feature("autodoc", "1");
		virtual		gp_Hypr2d Hyperbola() const;
		%feature("autodoc", "1");
		virtual		gp_Parab2d Parabola() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_BSplineCurve BSpline() const;

};
%extend Adaptor2d_Curve2d {
	~Adaptor2d_Curve2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Adaptor2d_Curve2d\n");}
	}
};


%nodefaultctor Adaptor2d_Line2d;
class Adaptor2d_Line2d : public Adaptor2d_Curve2d {
	public:
		%feature("autodoc", "1");
		Adaptor2d_Line2d();
		%feature("autodoc", "1");
		Adaptor2d_Line2d(const gp_Pnt2d &P, const gp_Dir2d &D, const Standard_Real UFirst, const Standard_Real ULast);
		%feature("autodoc", "1");
		void Load(const gp_Lin2d &L);
		%feature("autodoc", "1");
		void Load(const gp_Lin2d &L, const Standard_Real UFirst, const Standard_Real ULast);
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value(const Standard_Real X) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real X, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real X, gp_Pnt2d & P, gp_Vec2d & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real X, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real X, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;

};
%extend Adaptor2d_Line2d {
	~Adaptor2d_Line2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Adaptor2d_Line2d\n");}
	}
};


%nodefaultctor Adaptor2d_HCurve2d;
class Adaptor2d_HCurve2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Adaptor2d_Curve2d & Curve2d() const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Real Period() const;
		%feature("autodoc", "1");
		gp_Pnt2d Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		void D0(const Standard_Real U, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;
		%feature("autodoc", "1");
		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		void D3(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;
		%feature("autodoc", "1");
		gp_Vec2d DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		gp_Lin2d Line() const;
		%feature("autodoc", "1");
		gp_Circ2d Circle() const;
		%feature("autodoc", "1");
		gp_Elips2d Ellipse() const;
		%feature("autodoc", "1");
		gp_Hypr2d Hyperbola() const;
		%feature("autodoc", "1");
		gp_Parab2d Parabola() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_BSplineCurve BSpline() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Adaptor2d_HCurve2d {
	Handle_Adaptor2d_HCurve2d GetHandle() {
	return *(Handle_Adaptor2d_HCurve2d*) &$self;
	}
};
%extend Adaptor2d_HCurve2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Adaptor2d_HCurve2d {
	~Adaptor2d_HCurve2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Adaptor2d_HCurve2d\n");}
	}
};


%nodefaultctor Adaptor2d_HLine2d;
class Adaptor2d_HLine2d : public Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		Adaptor2d_HLine2d();
		%feature("autodoc", "1");
		Adaptor2d_HLine2d(const Adaptor2d_Line2d &C);
		%feature("autodoc", "1");
		void Set(const Adaptor2d_Line2d &C);
		%feature("autodoc", "1");
		virtual		const Adaptor2d_Curve2d & Curve2d() const;
		%feature("autodoc", "1");
		Adaptor2d_Line2d & ChangeCurve2d();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Adaptor2d_HLine2d {
	Handle_Adaptor2d_HLine2d GetHandle() {
	return *(Handle_Adaptor2d_HLine2d*) &$self;
	}
};
%extend Adaptor2d_HLine2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Adaptor2d_HLine2d {
	~Adaptor2d_HLine2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Adaptor2d_HLine2d\n");}
	}
};
