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
%module GeomToStep

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


%include GeomToStep_dependencies.i


%include GeomToStep_headers.i




%nodefaultctor GeomToStep_Root;
class GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		~GeomToStep_Root();
		%feature("autodoc", "1");
		GeomToStep_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};

%nodefaultctor GeomToStep_MakeLine;
class GeomToStep_MakeLine : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeLine(const gp_Lin &L);
		%feature("autodoc", "1");
		GeomToStep_MakeLine(const gp_Lin2d &L);
		%feature("autodoc", "1");
		GeomToStep_MakeLine(const Handle_Geom_Line &C);
		%feature("autodoc", "1");
		GeomToStep_MakeLine(const Handle_Geom2d_Line &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Line & Value() const;

};
%extend GeomToStep_MakeLine {
	~GeomToStep_MakeLine() {
	printf("Call custom destructor for instance of GeomToStep_MakeLine\n");
	}
};

%nodefaultctor GeomToStep_MakeAxis1Placement;
class GeomToStep_MakeAxis1Placement : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeAxis1Placement(const gp_Ax1 &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis1Placement(const gp_Ax2d &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis1Placement(const Handle_Geom_Axis1Placement &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis1Placement(const Handle_Geom2d_AxisPlacement &A);
		%feature("autodoc", "1");
		const Handle_StepGeom_Axis1Placement & Value() const;

};
%extend GeomToStep_MakeAxis1Placement {
	~GeomToStep_MakeAxis1Placement() {
	printf("Call custom destructor for instance of GeomToStep_MakeAxis1Placement\n");
	}
};

%nodefaultctor GeomToStep_MakePolyline;
class GeomToStep_MakePolyline : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakePolyline(const TColgp_Array1OfPnt &P);
		%feature("autodoc", "1");
		GeomToStep_MakePolyline(const TColgp_Array1OfPnt2d &P);
		%feature("autodoc", "1");
		const Handle_StepGeom_Polyline & Value() const;

};
%extend GeomToStep_MakePolyline {
	~GeomToStep_MakePolyline() {
	printf("Call custom destructor for instance of GeomToStep_MakePolyline\n");
	}
};

%nodefaultctor GeomToStep_MakeElementarySurface;
class GeomToStep_MakeElementarySurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeElementarySurface(const Handle_Geom_ElementarySurface &S);
		%feature("autodoc", "1");
		const Handle_StepGeom_ElementarySurface & Value() const;

};
%extend GeomToStep_MakeElementarySurface {
	~GeomToStep_MakeElementarySurface() {
	printf("Call custom destructor for instance of GeomToStep_MakeElementarySurface\n");
	}
};

%nodefaultctor GeomToStep_MakeParabola;
class GeomToStep_MakeParabola : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeParabola(const Handle_Geom2d_Parabola &C);
		%feature("autodoc", "1");
		GeomToStep_MakeParabola(const Handle_Geom_Parabola &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Parabola & Value() const;

};
%extend GeomToStep_MakeParabola {
	~GeomToStep_MakeParabola() {
	printf("Call custom destructor for instance of GeomToStep_MakeParabola\n");
	}
};

%nodefaultctor GeomToStep_MakeSweptSurface;
class GeomToStep_MakeSweptSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeSweptSurface(const Handle_Geom_SweptSurface &S);
		%feature("autodoc", "1");
		const Handle_StepGeom_SweptSurface & Value() const;

};
%extend GeomToStep_MakeSweptSurface {
	~GeomToStep_MakeSweptSurface() {
	printf("Call custom destructor for instance of GeomToStep_MakeSweptSurface\n");
	}
};

%nodefaultctor GeomToStep_MakeSurfaceOfRevolution;
class GeomToStep_MakeSurfaceOfRevolution : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeSurfaceOfRevolution(const Handle_Geom_SurfaceOfRevolution &RevSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_SurfaceOfRevolution & Value() const;

};
%extend GeomToStep_MakeSurfaceOfRevolution {
	~GeomToStep_MakeSurfaceOfRevolution() {
	printf("Call custom destructor for instance of GeomToStep_MakeSurfaceOfRevolution\n");
	}
};

%nodefaultctor GeomToStep_MakeConicalSurface;
class GeomToStep_MakeConicalSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeConicalSurface(const Handle_Geom_ConicalSurface &CSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_ConicalSurface & Value() const;

};
%extend GeomToStep_MakeConicalSurface {
	~GeomToStep_MakeConicalSurface() {
	printf("Call custom destructor for instance of GeomToStep_MakeConicalSurface\n");
	}
};

%nodefaultctor GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface;
class GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface(const Handle_Geom_BSplineSurface &Bsplin);
		%feature("autodoc", "1");
		const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface & Value() const;

};
%extend GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface {
	~GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface() {
	printf("Call custom destructor for instance of GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface\n");
	}
};

%nodefaultctor GeomToStep_MakeToroidalSurface;
class GeomToStep_MakeToroidalSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeToroidalSurface(const Handle_Geom_ToroidalSurface &TorSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_ToroidalSurface & Value() const;

};
%extend GeomToStep_MakeToroidalSurface {
	~GeomToStep_MakeToroidalSurface() {
	printf("Call custom destructor for instance of GeomToStep_MakeToroidalSurface\n");
	}
};

%nodefaultctor GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve;
class GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve(const Handle_Geom_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve(const Handle_Geom2d_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve & Value() const;

};
%extend GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve {
	~GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve() {
	printf("Call custom destructor for instance of GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve\n");
	}
};

%nodefaultctor GeomToStep_MakeAxis2Placement2d;
class GeomToStep_MakeAxis2Placement2d : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement2d(const gp_Ax2 &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement2d(const gp_Ax22d &A);
		%feature("autodoc", "1");
		const Handle_StepGeom_Axis2Placement2d & Value() const;

};
%extend GeomToStep_MakeAxis2Placement2d {
	~GeomToStep_MakeAxis2Placement2d() {
	printf("Call custom destructor for instance of GeomToStep_MakeAxis2Placement2d\n");
	}
};

%nodefaultctor GeomToStep_MakeHyperbola;
class GeomToStep_MakeHyperbola : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeHyperbola(const Handle_Geom2d_Hyperbola &C);
		%feature("autodoc", "1");
		GeomToStep_MakeHyperbola(const Handle_Geom_Hyperbola &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Hyperbola & Value() const;

};
%extend GeomToStep_MakeHyperbola {
	~GeomToStep_MakeHyperbola() {
	printf("Call custom destructor for instance of GeomToStep_MakeHyperbola\n");
	}
};

%nodefaultctor GeomToStep_MakeAxis2Placement3d;
class GeomToStep_MakeAxis2Placement3d : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement3d();
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement3d(const gp_Ax2 &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement3d(const gp_Ax3 &A);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement3d(const gp_Trsf &T);
		%feature("autodoc", "1");
		GeomToStep_MakeAxis2Placement3d(const Handle_Geom_Axis2Placement &A);
		%feature("autodoc", "1");
		const Handle_StepGeom_Axis2Placement3d & Value() const;

};
%extend GeomToStep_MakeAxis2Placement3d {
	~GeomToStep_MakeAxis2Placement3d() {
	printf("Call custom destructor for instance of GeomToStep_MakeAxis2Placement3d\n");
	}
};

%nodefaultctor GeomToStep_MakeRectangularTrimmedSurface;
class GeomToStep_MakeRectangularTrimmedSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeRectangularTrimmedSurface(const Handle_Geom_RectangularTrimmedSurface &RTSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_RectangularTrimmedSurface & Value() const;

};
%extend GeomToStep_MakeRectangularTrimmedSurface {
	~GeomToStep_MakeRectangularTrimmedSurface() {
	printf("Call custom destructor for instance of GeomToStep_MakeRectangularTrimmedSurface\n");
	}
};

%nodefaultctor GeomToStep_MakeBSplineSurfaceWithKnots;
class GeomToStep_MakeBSplineSurfaceWithKnots : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineSurfaceWithKnots(const Handle_Geom_BSplineSurface &Bsplin);
		%feature("autodoc", "1");
		const Handle_StepGeom_BSplineSurfaceWithKnots & Value() const;

};
%extend GeomToStep_MakeBSplineSurfaceWithKnots {
	~GeomToStep_MakeBSplineSurfaceWithKnots() {
	printf("Call custom destructor for instance of GeomToStep_MakeBSplineSurfaceWithKnots\n");
	}
};

%nodefaultctor GeomToStep_MakeSurfaceOfLinearExtrusion;
class GeomToStep_MakeSurfaceOfLinearExtrusion : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeSurfaceOfLinearExtrusion(const Handle_Geom_SurfaceOfLinearExtrusion &CSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_SurfaceOfLinearExtrusion & Value() const;

};
%extend GeomToStep_MakeSurfaceOfLinearExtrusion {
	~GeomToStep_MakeSurfaceOfLinearExtrusion() {
	printf("Call custom destructor for instance of GeomToStep_MakeSurfaceOfLinearExtrusion\n");
	}
};

%nodefaultctor GeomToStep_MakeCartesianPoint;
class GeomToStep_MakeCartesianPoint : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeCartesianPoint(const gp_Pnt &P);
		%feature("autodoc", "1");
		GeomToStep_MakeCartesianPoint(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		GeomToStep_MakeCartesianPoint(const Handle_Geom_CartesianPoint &P);
		%feature("autodoc", "1");
		GeomToStep_MakeCartesianPoint(const Handle_Geom2d_CartesianPoint &P);
		%feature("autodoc", "1");
		const Handle_StepGeom_CartesianPoint & Value() const;

};
%extend GeomToStep_MakeCartesianPoint {
	~GeomToStep_MakeCartesianPoint() {
	printf("Call custom destructor for instance of GeomToStep_MakeCartesianPoint\n");
	}
};

%nodefaultctor GeomToStep_MakeSurface;
class GeomToStep_MakeSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeSurface(const Handle_Geom_Surface &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Surface & Value() const;

};
%extend GeomToStep_MakeSurface {
	~GeomToStep_MakeSurface() {
	printf("Call custom destructor for instance of GeomToStep_MakeSurface\n");
	}
};

%nodefaultctor GeomToStep_MakeEllipse;
class GeomToStep_MakeEllipse : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeEllipse(const gp_Elips &C);
		%feature("autodoc", "1");
		GeomToStep_MakeEllipse(const Handle_Geom_Ellipse &C);
		%feature("autodoc", "1");
		GeomToStep_MakeEllipse(const Handle_Geom2d_Ellipse &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Ellipse & Value() const;

};
%extend GeomToStep_MakeEllipse {
	~GeomToStep_MakeEllipse() {
	printf("Call custom destructor for instance of GeomToStep_MakeEllipse\n");
	}
};

%nodefaultctor GeomToStep_MakeSphericalSurface;
class GeomToStep_MakeSphericalSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeSphericalSurface(const Handle_Geom_SphericalSurface &CSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_SphericalSurface & Value() const;

};
%extend GeomToStep_MakeSphericalSurface {
	~GeomToStep_MakeSphericalSurface() {
	printf("Call custom destructor for instance of GeomToStep_MakeSphericalSurface\n");
	}
};

%nodefaultctor GeomToStep_MakeBoundedSurface;
class GeomToStep_MakeBoundedSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBoundedSurface(const Handle_Geom_BoundedSurface &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_BoundedSurface & Value() const;

};
%extend GeomToStep_MakeBoundedSurface {
	~GeomToStep_MakeBoundedSurface() {
	printf("Call custom destructor for instance of GeomToStep_MakeBoundedSurface\n");
	}
};

%nodefaultctor GeomToStep_MakePlane;
class GeomToStep_MakePlane : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakePlane(const gp_Pln &P);
		%feature("autodoc", "1");
		GeomToStep_MakePlane(const Handle_Geom_Plane &P);
		%feature("autodoc", "1");
		const Handle_StepGeom_Plane & Value() const;

};
%extend GeomToStep_MakePlane {
	~GeomToStep_MakePlane() {
	printf("Call custom destructor for instance of GeomToStep_MakePlane\n");
	}
};

%nodefaultctor GeomToStep_MakeConic;
class GeomToStep_MakeConic : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeConic(const Handle_Geom_Conic &C);
		%feature("autodoc", "1");
		GeomToStep_MakeConic(const Handle_Geom2d_Conic &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Conic & Value() const;

};
%extend GeomToStep_MakeConic {
	~GeomToStep_MakeConic() {
	printf("Call custom destructor for instance of GeomToStep_MakeConic\n");
	}
};

%nodefaultctor GeomToStep_MakeBoundedCurve;
class GeomToStep_MakeBoundedCurve : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBoundedCurve(const Handle_Geom_BoundedCurve &C);
		%feature("autodoc", "1");
		GeomToStep_MakeBoundedCurve(const Handle_Geom2d_BoundedCurve &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_BoundedCurve & Value() const;

};
%extend GeomToStep_MakeBoundedCurve {
	~GeomToStep_MakeBoundedCurve() {
	printf("Call custom destructor for instance of GeomToStep_MakeBoundedCurve\n");
	}
};

%nodefaultctor GeomToStep_MakeCylindricalSurface;
class GeomToStep_MakeCylindricalSurface : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeCylindricalSurface(const Handle_Geom_CylindricalSurface &CSurf);
		%feature("autodoc", "1");
		const Handle_StepGeom_CylindricalSurface & Value() const;

};
%extend GeomToStep_MakeCylindricalSurface {
	~GeomToStep_MakeCylindricalSurface() {
	printf("Call custom destructor for instance of GeomToStep_MakeCylindricalSurface\n");
	}
};

%nodefaultctor GeomToStep_MakeBSplineCurveWithKnots;
class GeomToStep_MakeBSplineCurveWithKnots : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineCurveWithKnots(const Handle_Geom_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		GeomToStep_MakeBSplineCurveWithKnots(const Handle_Geom2d_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		const Handle_StepGeom_BSplineCurveWithKnots & Value() const;

};
%extend GeomToStep_MakeBSplineCurveWithKnots {
	~GeomToStep_MakeBSplineCurveWithKnots() {
	printf("Call custom destructor for instance of GeomToStep_MakeBSplineCurveWithKnots\n");
	}
};

%nodefaultctor GeomToStep_MakeCircle;
class GeomToStep_MakeCircle : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeCircle(const gp_Circ &C);
		%feature("autodoc", "1");
		GeomToStep_MakeCircle(const Handle_Geom_Circle &C);
		%feature("autodoc", "1");
		GeomToStep_MakeCircle(const Handle_Geom2d_Circle &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Circle & Value() const;

};
%extend GeomToStep_MakeCircle {
	~GeomToStep_MakeCircle() {
	printf("Call custom destructor for instance of GeomToStep_MakeCircle\n");
	}
};

%nodefaultctor GeomToStep_MakeDirection;
class GeomToStep_MakeDirection : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeDirection(const gp_Dir &D);
		%feature("autodoc", "1");
		GeomToStep_MakeDirection(const gp_Dir2d &D);
		%feature("autodoc", "1");
		GeomToStep_MakeDirection(const Handle_Geom_Direction &D);
		%feature("autodoc", "1");
		GeomToStep_MakeDirection(const Handle_Geom2d_Direction &D);
		%feature("autodoc", "1");
		const Handle_StepGeom_Direction & Value() const;

};
%extend GeomToStep_MakeDirection {
	~GeomToStep_MakeDirection() {
	printf("Call custom destructor for instance of GeomToStep_MakeDirection\n");
	}
};

%nodefaultctor GeomToStep_MakeCurve;
class GeomToStep_MakeCurve : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeCurve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		GeomToStep_MakeCurve(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		const Handle_StepGeom_Curve & Value() const;

};
%extend GeomToStep_MakeCurve {
	~GeomToStep_MakeCurve() {
	printf("Call custom destructor for instance of GeomToStep_MakeCurve\n");
	}
};

%nodefaultctor GeomToStep_MakeVector;
class GeomToStep_MakeVector : public GeomToStep_Root {
	public:
		%feature("autodoc", "1");
		GeomToStep_MakeVector(const gp_Vec &V);
		%feature("autodoc", "1");
		GeomToStep_MakeVector(const gp_Vec2d &V);
		%feature("autodoc", "1");
		GeomToStep_MakeVector(const Handle_Geom_Vector &V);
		%feature("autodoc", "1");
		GeomToStep_MakeVector(const Handle_Geom2d_Vector &V);
		%feature("autodoc", "1");
		const Handle_StepGeom_Vector & Value() const;

};
%extend GeomToStep_MakeVector {
	~GeomToStep_MakeVector() {
	printf("Call custom destructor for instance of GeomToStep_MakeVector\n");
	}
};