/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module GeomAbs

%include GeomAbs_renames.i

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


%include GeomAbs_dependencies.i


%include GeomAbs_headers.i


enum GeomAbs_SurfaceType {
	GeomAbs_Plane,
	GeomAbs_Cylinder,
	GeomAbs_Cone,
	GeomAbs_Sphere,
	GeomAbs_Torus,
	GeomAbs_BezierSurface,
	GeomAbs_BSplineSurface,
	GeomAbs_SurfaceOfRevolution,
	GeomAbs_SurfaceOfExtrusion,
	GeomAbs_OffsetSurface,
	GeomAbs_OtherSurface,
	};

enum GeomAbs_JoinType {
	GeomAbs_Arc,
	GeomAbs_Tangent,
	GeomAbs_Intersection,
	};

enum GeomAbs_Shape {
	GeomAbs_C0,
	GeomAbs_G1,
	GeomAbs_C1,
	GeomAbs_G2,
	GeomAbs_C2,
	GeomAbs_C3,
	GeomAbs_CN,
	};

enum GeomAbs_CurveForm {
	GeomAbs_PolylineForm,
	GeomAbs_CircularForm,
	GeomAbs_EllipticForm,
	GeomAbs_HyperbolicForm,
	GeomAbs_ParabolicForm,
	GeomAbs_OtherCurveForm,
	};

enum GeomAbs_IsoType {
	GeomAbs_IsoU,
	GeomAbs_IsoV,
	GeomAbs_NoneIso,
	};

enum GeomAbs_BSplKnotDistribution {
	GeomAbs_NonUniform,
	GeomAbs_Uniform,
	GeomAbs_QuasiUniform,
	GeomAbs_PiecewiseBezier,
	};

enum GeomAbs_UVSense {
	GeomAbs_SameUV,
	GeomAbs_SameU,
	GeomAbs_SameV,
	GeomAbs_OppositeUV,
	};

enum GeomAbs_SurfaceForm {
	GeomAbs_PlanarForm,
	GeomAbs_ConicalForm,
	GeomAbs_CylindricalForm,
	GeomAbs_ToroidalForm,
	GeomAbs_SphericalForm,
	GeomAbs_RevolutionForm,
	GeomAbs_RuledForm,
	GeomAbs_QuadricForm,
	GeomAbs_OtherSurfaceForm,
	};

enum GeomAbs_CurveType {
	GeomAbs_Line,
	GeomAbs_Circle,
	GeomAbs_Ellipse,
	GeomAbs_Hyperbola,
	GeomAbs_Parabola,
	GeomAbs_BezierCurve,
	GeomAbs_BSplineCurve,
	GeomAbs_OtherCurve,
	};

