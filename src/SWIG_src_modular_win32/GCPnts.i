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
along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

*/
%module GCPnts

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


%include GCPnts_dependencies.i


%include GCPnts_headers.i


enum GCPnts_AbscissaType {
	GCPnts_LengthParametrized,
	GCPnts_Parametrized,
	GCPnts_AbsComposite,
	};

enum GCPnts_DeflectionType {
	GCPnts_Linear,
	GCPnts_Circular,
	GCPnts_Curved,
	GCPnts_DefComposite,
	};



%nodefaultctor GCPnts_TangentialDeflection;
class GCPnts_TangentialDeflection {
	public:
		%feature("autodoc", "1");
		~GCPnts_TangentialDeflection();
		%feature("autodoc", "1");
		GCPnts_TangentialDeflection();
		%feature("autodoc", "1");
		GCPnts_TangentialDeflection(const Adaptor3d_Curve &C, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		GCPnts_TangentialDeflection(const Adaptor3d_Curve &C, const Standard_Real FirstParameter, const Standard_Real LastParameter, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		GCPnts_TangentialDeflection(const Adaptor2d_Curve2d &C, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		GCPnts_TangentialDeflection(const Adaptor2d_Curve2d &C, const Standard_Real FirstParameter, const Standard_Real LastParameter, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real FirstParameter, const Standard_Real LastParameter, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real FirstParameter, const Standard_Real LastParameter, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer I) const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Integer I) const;

};

%nodefaultctor GCPnts_UniformAbscissa;
class GCPnts_UniformAbscissa {
	public:
		%feature("autodoc", "1");
		~GCPnts_UniformAbscissa();
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa();
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Abscissa() const;

};

%nodefaultctor GCPnts_UniformDeflection;
class GCPnts_UniformDeflection {
	public:
		%feature("autodoc", "1");
		~GCPnts_UniformDeflection();
		%feature("autodoc", "1");
		GCPnts_UniformDeflection();
		%feature("autodoc", "1");
		GCPnts_UniformDeflection(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		GCPnts_UniformDeflection(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		GCPnts_UniformDeflection(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		GCPnts_UniformDeflection(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Deflection() const;

};

%nodefaultctor GCPnts_AbscissaPoint;
class GCPnts_AbscissaPoint {
	public:
		%feature("autodoc", "1");
		~GCPnts_AbscissaPoint();
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor3d_Curve & C);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor2d_Curve2d & C);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor3d_Curve & C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor2d_Curve2d & C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor3d_Curve & C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor2d_Curve2d & C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor3d_Curve & C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor2d_Curve2d & C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint();
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U0);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(const Standard_Real Tol, Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U0);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(const Standard_Real Tol, Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U0);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U0);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Tol);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;

};

%nodefaultctor GCPnts_QuasiUniformAbscissa;
class GCPnts_QuasiUniformAbscissa {
	public:
		%feature("autodoc", "1");
		~GCPnts_QuasiUniformAbscissa();
		%feature("autodoc", "1");
		GCPnts_QuasiUniformAbscissa();
		%feature("autodoc", "1");
		GCPnts_QuasiUniformAbscissa(Adaptor3d_Curve & C, const Standard_Integer NbPoints);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformAbscissa(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Integer NbPoints);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer Index) const;

};

%nodefaultctor GCPnts_QuasiUniformDeflection;
class GCPnts_QuasiUniformDeflection {
	public:
		%feature("autodoc", "1");
		~GCPnts_QuasiUniformDeflection();
		%feature("autodoc", "1");
		GCPnts_QuasiUniformDeflection();
		%feature("autodoc", "1");
		GCPnts_QuasiUniformDeflection(Adaptor3d_Curve & C, const Standard_Real Deflection, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformDeflection(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformDeflection(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformDeflection(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Deflection, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Deflection() const;

};