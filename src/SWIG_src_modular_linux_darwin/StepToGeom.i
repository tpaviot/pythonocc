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
%module StepToGeom

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i

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


%include StepToGeom_dependencies.i


%include StepToGeom_headers.i




%nodefaultctor StepToGeom_Root;
class StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%extend StepToGeom_Root {
	~StepToGeom_Root() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_Root\n");}
	}
};

%nodefaultctor StepToGeom_MakeTrimmedCurve2d;
class StepToGeom_MakeTrimmedCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTrimmedCurve2d(const Handle_StepGeom_TrimmedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value() const;

};
%extend StepToGeom_MakeTrimmedCurve2d {
	~StepToGeom_MakeTrimmedCurve2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeTrimmedCurve2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeParabola;
class StepToGeom_MakeParabola : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeParabola(const Handle_StepGeom_Parabola &C);
		%feature("autodoc", "1");
		const Handle_Geom_Parabola & Value() const;

};
%extend StepToGeom_MakeParabola {
	~StepToGeom_MakeParabola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeParabola\n");}
	}
};

%nodefaultctor StepToGeom_MakePolyline;
class StepToGeom_MakePolyline : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakePolyline(const Handle_StepGeom_Polyline &PL);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineCurve & Value() const;

};
%extend StepToGeom_MakePolyline {
	~StepToGeom_MakePolyline() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakePolyline\n");}
	}
};

%nodefaultctor StepToGeom_MakePolyline2d;
class StepToGeom_MakePolyline2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakePolyline2d(const Handle_StepGeom_Polyline &PL);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value() const;

};
%extend StepToGeom_MakePolyline2d {
	~StepToGeom_MakePolyline2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakePolyline2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeAxis1Placement;
class StepToGeom_MakeAxis1Placement : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeAxis1Placement(const Handle_StepGeom_Axis1Placement &A);
		%feature("autodoc", "1");
		const Handle_Geom_Axis1Placement & Value() const;

};
%extend StepToGeom_MakeAxis1Placement {
	~StepToGeom_MakeAxis1Placement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeAxis1Placement\n");}
	}
};

%nodefaultctor StepToGeom_MakeBoundedCurve2d;
class StepToGeom_MakeBoundedCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedCurve2d(const Handle_StepGeom_BoundedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & Value() const;

};
%extend StepToGeom_MakeBoundedCurve2d {
	~StepToGeom_MakeBoundedCurve2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeBoundedCurve2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeSweptSurface;
class StepToGeom_MakeSweptSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSweptSurface(const Handle_StepGeom_SweptSurface &S);
		%feature("autodoc", "1");
		const Handle_Geom_SweptSurface & Value() const;

};
%extend StepToGeom_MakeSweptSurface {
	~StepToGeom_MakeSweptSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeSweptSurface\n");}
	}
};

%nodefaultctor StepToGeom_MakeElementarySurface;
class StepToGeom_MakeElementarySurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeElementarySurface(const Handle_StepGeom_ElementarySurface &S);
		%feature("autodoc", "1");
		const Handle_Geom_ElementarySurface & Value() const;

};
%extend StepToGeom_MakeElementarySurface {
	~StepToGeom_MakeElementarySurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeElementarySurface\n");}
	}
};

%nodefaultctor StepToGeom_MakeHyperbola;
class StepToGeom_MakeHyperbola : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeHyperbola(const Handle_StepGeom_Hyperbola &C);
		%feature("autodoc", "1");
		const Handle_Geom_Hyperbola & Value() const;

};
%extend StepToGeom_MakeHyperbola {
	~StepToGeom_MakeHyperbola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeHyperbola\n");}
	}
};

%nodefaultctor StepToGeom_MakeSurface;
class StepToGeom_MakeSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSurface(const Handle_StepGeom_Surface &C);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Value() const;

};
%extend StepToGeom_MakeSurface {
	~StepToGeom_MakeSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeSurface\n");}
	}
};

%nodefaultctor StepToGeom_MakeConicalSurface;
class StepToGeom_MakeConicalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeConicalSurface(const Handle_StepGeom_ConicalSurface &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_ConicalSurface & Value() const;

};
%extend StepToGeom_MakeConicalSurface {
	~StepToGeom_MakeConicalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeConicalSurface\n");}
	}
};

%nodefaultctor StepToGeom_MakeConic;
class StepToGeom_MakeConic : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeConic(const Handle_StepGeom_Conic &C);
		%feature("autodoc", "1");
		const Handle_Geom_Conic & Value() const;

};
%extend StepToGeom_MakeConic {
	~StepToGeom_MakeConic() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeConic\n");}
	}
};

%nodefaultctor StepToGeom_MakeBoundedSurface;
class StepToGeom_MakeBoundedSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedSurface(const Handle_StepGeom_BoundedSurface &C);
		%feature("autodoc", "1");
		const Handle_Geom_BoundedSurface & Value() const;

};
%extend StepToGeom_MakeBoundedSurface {
	~StepToGeom_MakeBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeBoundedSurface\n");}
	}
};

%nodefaultctor StepToGeom_MakeCartesianPoint2d;
class StepToGeom_MakeCartesianPoint2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCartesianPoint2d(const Handle_StepGeom_CartesianPoint &P);
		%feature("autodoc", "1");
		const Handle_Geom2d_CartesianPoint & Value() const;

};
%extend StepToGeom_MakeCartesianPoint2d {
	~StepToGeom_MakeCartesianPoint2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeCartesianPoint2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeBSplineSurface;
class StepToGeom_MakeBSplineSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineSurface(const Handle_StepGeom_BSplineSurface &Bsplin);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & Value() const;

};
%extend StepToGeom_MakeBSplineSurface {
	~StepToGeom_MakeBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeBSplineSurface\n");}
	}
};

%nodefaultctor StepToGeom_MakeConic2d;
class StepToGeom_MakeConic2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeConic2d(const Handle_StepGeom_Conic &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Conic & Value() const;

};
%extend StepToGeom_MakeConic2d {
	~StepToGeom_MakeConic2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeConic2d\n");}
	}
};

%nodefaultctor StepToGeom_MakePlane;
class StepToGeom_MakePlane : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakePlane(const Handle_StepGeom_Plane &P);
		%feature("autodoc", "1");
		const Handle_Geom_Plane & Value() const;

};
%extend StepToGeom_MakePlane {
	~StepToGeom_MakePlane() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakePlane\n");}
	}
};

%nodefaultctor StepToGeom_MakeCircle2d;
class StepToGeom_MakeCircle2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCircle2d(const Handle_StepGeom_Circle &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Circle & Value() const;

};
%extend StepToGeom_MakeCircle2d {
	~StepToGeom_MakeCircle2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeCircle2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeLine;
class StepToGeom_MakeLine : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeLine(const Handle_StepGeom_Line &L);
		%feature("autodoc", "1");
		const Handle_Geom_Line & Value() const;

};
%extend StepToGeom_MakeLine {
	~StepToGeom_MakeLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeLine\n");}
	}
};

%nodefaultctor StepToGeom_MakeCurve;
class StepToGeom_MakeCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCurve(const Handle_StepGeom_Curve &C);
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Value() const;

};
%extend StepToGeom_MakeCurve {
	~StepToGeom_MakeCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeCurve\n");}
	}
};

%nodefaultctor StepToGeom_MakeLine2d;
class StepToGeom_MakeLine2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeLine2d(const Handle_StepGeom_Line &L);
		%feature("autodoc", "1");
		const Handle_Geom2d_Line & Value() const;

};
%extend StepToGeom_MakeLine2d {
	~StepToGeom_MakeLine2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeLine2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeParabola2d;
class StepToGeom_MakeParabola2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeParabola2d(const Handle_StepGeom_Parabola &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Parabola & Value() const;

};
%extend StepToGeom_MakeParabola2d {
	~StepToGeom_MakeParabola2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeParabola2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeAxisPlacement;
class StepToGeom_MakeAxisPlacement : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeAxisPlacement(const Handle_StepGeom_Axis2Placement2d &A);
		%feature("autodoc", "1");
		const Handle_Geom2d_AxisPlacement & Value() const;

};
%extend StepToGeom_MakeAxisPlacement {
	~StepToGeom_MakeAxisPlacement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeAxisPlacement\n");}
	}
};

%nodefaultctor StepToGeom_MakeVectorWithMagnitude2d;
class StepToGeom_MakeVectorWithMagnitude2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeVectorWithMagnitude2d(const Handle_StepGeom_Vector &V);
		%feature("autodoc", "1");
		const Handle_Geom2d_VectorWithMagnitude & Value() const;

};
%extend StepToGeom_MakeVectorWithMagnitude2d {
	~StepToGeom_MakeVectorWithMagnitude2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeVectorWithMagnitude2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeEllipse2d;
class StepToGeom_MakeEllipse2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeEllipse2d(const Handle_StepGeom_Ellipse &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Ellipse & Value() const;

};
%extend StepToGeom_MakeEllipse2d {
	~StepToGeom_MakeEllipse2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeEllipse2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeTrimmedCurve;
class StepToGeom_MakeTrimmedCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTrimmedCurve(const Handle_StepGeom_TrimmedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;

};
%extend StepToGeom_MakeTrimmedCurve {
	~StepToGeom_MakeTrimmedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeTrimmedCurve\n");}
	}
};

%nodefaultctor StepToGeom_MakeSurfaceOfRevolution;
class StepToGeom_MakeSurfaceOfRevolution : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSurfaceOfRevolution(const Handle_StepGeom_SurfaceOfRevolution &RevSurf);
		%feature("autodoc", "1");
		const Handle_Geom_SurfaceOfRevolution & Value() const;

};
%extend StepToGeom_MakeSurfaceOfRevolution {
	~StepToGeom_MakeSurfaceOfRevolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeSurfaceOfRevolution\n");}
	}
};

%nodefaultctor StepToGeom_MakeCartesianPoint;
class StepToGeom_MakeCartesianPoint : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCartesianPoint(const Handle_StepGeom_CartesianPoint &P);
		%feature("autodoc", "1");
		const Handle_Geom_CartesianPoint & Value() const;

};
%extend StepToGeom_MakeCartesianPoint {
	~StepToGeom_MakeCartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeCartesianPoint\n");}
	}
};

%nodefaultctor StepToGeom_MakeBSplineCurve2d;
class StepToGeom_MakeBSplineCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineCurve2d(const Handle_StepGeom_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value() const;

};
%extend StepToGeom_MakeBSplineCurve2d {
	~StepToGeom_MakeBSplineCurve2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeBSplineCurve2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeSphericalSurface;
class StepToGeom_MakeSphericalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSphericalSurface(const Handle_StepGeom_SphericalSurface &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_SphericalSurface & Value() const;

};
%extend StepToGeom_MakeSphericalSurface {
	~StepToGeom_MakeSphericalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeSphericalSurface\n");}
	}
};

%nodefaultctor StepToGeom_MakeTransformation2d;
class StepToGeom_MakeTransformation2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTransformation2d(const Handle_StepGeom_CartesianTransformationOperator2d &CTO);
		%feature("autodoc", "1");
		const gp_Trsf2d & Value() const;

};
%extend StepToGeom_MakeTransformation2d {
	~StepToGeom_MakeTransformation2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeTransformation2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeTransformation3d;
class StepToGeom_MakeTransformation3d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeTransformation3d(const Handle_StepGeom_CartesianTransformationOperator3d &CTO);
		%feature("autodoc", "1");
		const gp_Trsf & Value() const;

};
%extend StepToGeom_MakeTransformation3d {
	~StepToGeom_MakeTransformation3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeTransformation3d\n");}
	}
};

%nodefaultctor StepToGeom_MakeBSplineCurve;
class StepToGeom_MakeBSplineCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineCurve(const Handle_StepGeom_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineCurve & Value() const;

};
%extend StepToGeom_MakeBSplineCurve {
	~StepToGeom_MakeBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeBSplineCurve\n");}
	}
};

%nodefaultctor StepToGeom_MakeRectangularTrimmedSurface;
class StepToGeom_MakeRectangularTrimmedSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeRectangularTrimmedSurface(const Handle_StepGeom_RectangularTrimmedSurface &RTSurf);
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Value() const;

};
%extend StepToGeom_MakeRectangularTrimmedSurface {
	~StepToGeom_MakeRectangularTrimmedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeRectangularTrimmedSurface\n");}
	}
};

%nodefaultctor StepToGeom_MakeDirection;
class StepToGeom_MakeDirection : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeDirection(const Handle_StepGeom_Direction &D);
		%feature("autodoc", "1");
		const Handle_Geom_Direction & Value() const;

};
%extend StepToGeom_MakeDirection {
	~StepToGeom_MakeDirection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeDirection\n");}
	}
};

%nodefaultctor StepToGeom_MakeCircle;
class StepToGeom_MakeCircle : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCircle(const Handle_StepGeom_Circle &C);
		%feature("autodoc", "1");
		const Handle_Geom_Circle & Value() const;

};
%extend StepToGeom_MakeCircle {
	~StepToGeom_MakeCircle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeCircle\n");}
	}
};

%nodefaultctor StepToGeom_MakeEllipse;
class StepToGeom_MakeEllipse : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeEllipse(const Handle_StepGeom_Ellipse &C);
		%feature("autodoc", "1");
		const Handle_Geom_Ellipse & Value() const;

};
%extend StepToGeom_MakeEllipse {
	~StepToGeom_MakeEllipse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeEllipse\n");}
	}
};

%nodefaultctor StepToGeom_MakeBoundedCurve;
class StepToGeom_MakeBoundedCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedCurve(const Handle_StepGeom_BoundedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom_BoundedCurve & Value() const;

};
%extend StepToGeom_MakeBoundedCurve {
	~StepToGeom_MakeBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeBoundedCurve\n");}
	}
};

%nodefaultctor StepToGeom_MakeVectorWithMagnitude;
class StepToGeom_MakeVectorWithMagnitude : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeVectorWithMagnitude(const Handle_StepGeom_Vector &V);
		%feature("autodoc", "1");
		const Handle_Geom_VectorWithMagnitude & Value() const;

};
%extend StepToGeom_MakeVectorWithMagnitude {
	~StepToGeom_MakeVectorWithMagnitude() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeVectorWithMagnitude\n");}
	}
};

%nodefaultctor StepToGeom_MakeHyperbola2d;
class StepToGeom_MakeHyperbola2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeHyperbola2d(const Handle_StepGeom_Hyperbola &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Hyperbola & Value() const;

};
%extend StepToGeom_MakeHyperbola2d {
	~StepToGeom_MakeHyperbola2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeHyperbola2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeAxis2Placement;
class StepToGeom_MakeAxis2Placement : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeAxis2Placement(const Handle_StepGeom_Axis2Placement3d &A);
		%feature("autodoc", "1");
		const Handle_Geom_Axis2Placement & Value() const;

};
%extend StepToGeom_MakeAxis2Placement {
	~StepToGeom_MakeAxis2Placement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeAxis2Placement\n");}
	}
};

%nodefaultctor StepToGeom_MakeCurve2d;
class StepToGeom_MakeCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCurve2d(const Handle_StepGeom_Curve &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Value() const;

};
%extend StepToGeom_MakeCurve2d {
	~StepToGeom_MakeCurve2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeCurve2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeToroidalSurface;
class StepToGeom_MakeToroidalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeToroidalSurface(const Handle_StepGeom_ToroidalSurface &TorSurf);
		%feature("autodoc", "1");
		const Handle_Geom_ToroidalSurface & Value() const;

};
%extend StepToGeom_MakeToroidalSurface {
	~StepToGeom_MakeToroidalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeToroidalSurface\n");}
	}
};

%nodefaultctor StepToGeom_MakeCylindricalSurface;
class StepToGeom_MakeCylindricalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeCylindricalSurface(const Handle_StepGeom_CylindricalSurface &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_CylindricalSurface & Value() const;

};
%extend StepToGeom_MakeCylindricalSurface {
	~StepToGeom_MakeCylindricalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeCylindricalSurface\n");}
	}
};

%nodefaultctor StepToGeom_MakeDirection2d;
class StepToGeom_MakeDirection2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeDirection2d(const Handle_StepGeom_Direction &D);
		%feature("autodoc", "1");
		const Handle_Geom2d_Direction & Value() const;

};
%extend StepToGeom_MakeDirection2d {
	~StepToGeom_MakeDirection2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeDirection2d\n");}
	}
};

%nodefaultctor StepToGeom_MakeSurfaceOfLinearExtrusion;
class StepToGeom_MakeSurfaceOfLinearExtrusion : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		StepToGeom_MakeSurfaceOfLinearExtrusion(const Handle_StepGeom_SurfaceOfLinearExtrusion &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_SurfaceOfLinearExtrusion & Value() const;

};
%extend StepToGeom_MakeSurfaceOfLinearExtrusion {
	~StepToGeom_MakeSurfaceOfLinearExtrusion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToGeom_MakeSurfaceOfLinearExtrusion\n");}
	}
};