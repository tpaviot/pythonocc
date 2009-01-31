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
%module Geom2dAdaptor

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


%include Geom2dAdaptor_dependencies.i


%include Geom2dAdaptor_headers.i




%nodefaultctor Handle_Geom2dAdaptor_GHCurve;
class Handle_Geom2dAdaptor_GHCurve : public Handle_Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		~Handle_Geom2dAdaptor_GHCurve();
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_GHCurve();
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_GHCurve(const Handle_Geom2dAdaptor_GHCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_GHCurve(const Geom2dAdaptor_GHCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_GHCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2dAdaptor_GHCurve {
	Geom2dAdaptor_GHCurve* GetObject() {
	return (Geom2dAdaptor_GHCurve*)$self->Access();
	}
};

%nodefaultctor Handle_Geom2dAdaptor_HCurve;
class Handle_Geom2dAdaptor_HCurve : public Handle_Geom2dAdaptor_GHCurve {
	public:
		%feature("autodoc", "1");
		~Handle_Geom2dAdaptor_HCurve();
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_HCurve();
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_HCurve(const Handle_Geom2dAdaptor_HCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_HCurve(const Geom2dAdaptor_HCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_HCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2dAdaptor_HCurve {
	Geom2dAdaptor_HCurve* GetObject() {
	return (Geom2dAdaptor_HCurve*)$self->Access();
	}
};

%nodefaultctor Geom2dAdaptor;
class Geom2dAdaptor {
	public:
		%feature("autodoc", "1");
		~Geom2dAdaptor();
		%feature("autodoc", "1");
		Geom2dAdaptor();
		%feature("autodoc", "1");
		Handle_Geom2d_Curve MakeCurve(const Adaptor2d_Curve2d &HC);

};

%nodefaultctor Geom2dAdaptor_Curve;
class Geom2dAdaptor_Curve : public Adaptor2d_Curve2d {
	public:
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve();
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve(const Handle_Geom2d_Curve &C, const Standard_Real UFirst, const Standard_Real ULast);
		%feature("autodoc", "1");
		void Load(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void Load(const Handle_Geom2d_Curve &C, const Standard_Real UFirst, const Standard_Real ULast);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Curve() const;
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
		virtual		Standard_Real Resolution(const Standard_Real Ruv) const;
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
		%feature("autodoc", "1");
		virtual		~Geom2dAdaptor_Curve();

};

%nodefaultctor Geom2dAdaptor_GHCurve;
class Geom2dAdaptor_GHCurve : public Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		Geom2dAdaptor_GHCurve();
		%feature("autodoc", "1");
		Geom2dAdaptor_GHCurve(const Geom2dAdaptor_Curve &C);
		%feature("autodoc", "1");
		void Set(const Geom2dAdaptor_Curve &C);
		%feature("autodoc", "1");
		virtual		const Adaptor2d_Curve2d & Curve2d() const;
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve & ChangeCurve2d();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Geom2dAdaptor_GHCurve();

};
%extend Geom2dAdaptor_GHCurve {
	Handle_Geom2dAdaptor_GHCurve GetHandle() {
	return *(Handle_Geom2dAdaptor_GHCurve*) &$self;
	}
};

%nodefaultctor Geom2dAdaptor_HCurve;
class Geom2dAdaptor_HCurve : public Geom2dAdaptor_GHCurve {
	public:
		%feature("autodoc", "1");
		Geom2dAdaptor_HCurve();
		%feature("autodoc", "1");
		Geom2dAdaptor_HCurve(const Geom2dAdaptor_Curve &AS);
		%feature("autodoc", "1");
		Geom2dAdaptor_HCurve(const Handle_Geom2d_Curve &S);
		%feature("autodoc", "1");
		Geom2dAdaptor_HCurve(const Handle_Geom2d_Curve &S, const Standard_Real UFirst, const Standard_Real ULast);
		%feature("autodoc", "1");
		virtual		~Geom2dAdaptor_HCurve();

};
%extend Geom2dAdaptor_HCurve {
	Handle_Geom2dAdaptor_HCurve GetHandle() {
	return *(Handle_Geom2dAdaptor_HCurve*) &$self;
	}
};