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
%module StepToGeom

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


%include StepToGeom_dependencies.i


%include StepToGeom_headers.i




%nodefaultctor StepToGeom_Root;
class StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_Root();
		%feature("autodoc", "1");
		StepToGeom_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};

%nodefaultctor StepToGeom_MakeEllipse2d;
class StepToGeom_MakeEllipse2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeEllipse2d();
		%feature("autodoc", "1");
		StepToGeom_MakeEllipse2d(const Handle_StepGeom_Ellipse &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Ellipse & Value() const;

};

%nodefaultctor StepToGeom_MakeTrimmedCurve2d;
class StepToGeom_MakeTrimmedCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeTrimmedCurve2d();
		%feature("autodoc", "1");
		StepToGeom_MakeTrimmedCurve2d(const Handle_StepGeom_TrimmedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value() const;

};

%nodefaultctor StepToGeom_MakeDirection;
class StepToGeom_MakeDirection : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeDirection();
		%feature("autodoc", "1");
		StepToGeom_MakeDirection(const Handle_StepGeom_Direction &D);
		%feature("autodoc", "1");
		const Handle_Geom_Direction & Value() const;

};

%nodefaultctor StepToGeom_MakeAxis1Placement;
class StepToGeom_MakeAxis1Placement : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeAxis1Placement();
		%feature("autodoc", "1");
		StepToGeom_MakeAxis1Placement(const Handle_StepGeom_Axis1Placement &A);
		%feature("autodoc", "1");
		const Handle_Geom_Axis1Placement & Value() const;

};

%nodefaultctor StepToGeom_MakePolyline;
class StepToGeom_MakePolyline : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakePolyline();
		%feature("autodoc", "1");
		StepToGeom_MakePolyline(const Handle_StepGeom_Polyline &PL);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineCurve & Value() const;

};

%nodefaultctor StepToGeom_MakePolyline2d;
class StepToGeom_MakePolyline2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakePolyline2d();
		%feature("autodoc", "1");
		StepToGeom_MakePolyline2d(const Handle_StepGeom_Polyline &PL);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value() const;

};

%nodefaultctor StepToGeom_MakeConic;
class StepToGeom_MakeConic : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeConic();
		%feature("autodoc", "1");
		StepToGeom_MakeConic(const Handle_StepGeom_Conic &C);
		%feature("autodoc", "1");
		const Handle_Geom_Conic & Value() const;

};

%nodefaultctor StepToGeom_MakeEllipse;
class StepToGeom_MakeEllipse : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeEllipse();
		%feature("autodoc", "1");
		StepToGeom_MakeEllipse(const Handle_StepGeom_Ellipse &C);
		%feature("autodoc", "1");
		const Handle_Geom_Ellipse & Value() const;

};

%nodefaultctor StepToGeom_MakeToroidalSurface;
class StepToGeom_MakeToroidalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeToroidalSurface();
		%feature("autodoc", "1");
		StepToGeom_MakeToroidalSurface(const Handle_StepGeom_ToroidalSurface &TorSurf);
		%feature("autodoc", "1");
		const Handle_Geom_ToroidalSurface & Value() const;

};

%nodefaultctor StepToGeom_MakeBoundedCurve;
class StepToGeom_MakeBoundedCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeBoundedCurve();
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedCurve(const Handle_StepGeom_BoundedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom_BoundedCurve & Value() const;

};

%nodefaultctor StepToGeom_MakeBoundedCurve2d;
class StepToGeom_MakeBoundedCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeBoundedCurve2d();
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedCurve2d(const Handle_StepGeom_BoundedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & Value() const;

};

%nodefaultctor StepToGeom_MakeSurface;
class StepToGeom_MakeSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeSurface();
		%feature("autodoc", "1");
		StepToGeom_MakeSurface(const Handle_StepGeom_Surface &C);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Value() const;

};

%nodefaultctor StepToGeom_MakeElementarySurface;
class StepToGeom_MakeElementarySurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeElementarySurface();
		%feature("autodoc", "1");
		StepToGeom_MakeElementarySurface(const Handle_StepGeom_ElementarySurface &S);
		%feature("autodoc", "1");
		const Handle_Geom_ElementarySurface & Value() const;

};

%nodefaultctor StepToGeom_MakeHyperbola;
class StepToGeom_MakeHyperbola : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeHyperbola();
		%feature("autodoc", "1");
		StepToGeom_MakeHyperbola(const Handle_StepGeom_Hyperbola &C);
		%feature("autodoc", "1");
		const Handle_Geom_Hyperbola & Value() const;

};

%nodefaultctor StepToGeom_MakeConicalSurface;
class StepToGeom_MakeConicalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeConicalSurface();
		%feature("autodoc", "1");
		StepToGeom_MakeConicalSurface(const Handle_StepGeom_ConicalSurface &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_ConicalSurface & Value() const;

};

%nodefaultctor StepToGeom_MakeBoundedSurface;
class StepToGeom_MakeBoundedSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeBoundedSurface();
		%feature("autodoc", "1");
		StepToGeom_MakeBoundedSurface(const Handle_StepGeom_BoundedSurface &C);
		%feature("autodoc", "1");
		const Handle_Geom_BoundedSurface & Value() const;

};

%nodefaultctor StepToGeom_MakeVectorWithMagnitude2d;
class StepToGeom_MakeVectorWithMagnitude2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeVectorWithMagnitude2d();
		%feature("autodoc", "1");
		StepToGeom_MakeVectorWithMagnitude2d(const Handle_StepGeom_Vector &V);
		%feature("autodoc", "1");
		const Handle_Geom2d_VectorWithMagnitude & Value() const;

};

%nodefaultctor StepToGeom_MakeConic2d;
class StepToGeom_MakeConic2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeConic2d();
		%feature("autodoc", "1");
		StepToGeom_MakeConic2d(const Handle_StepGeom_Conic &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Conic & Value() const;

};

%nodefaultctor StepToGeom_MakeBSplineSurface;
class StepToGeom_MakeBSplineSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeBSplineSurface();
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineSurface(const Handle_StepGeom_BSplineSurface &Bsplin);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & Value() const;

};

%nodefaultctor StepToGeom_MakeSweptSurface;
class StepToGeom_MakeSweptSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeSweptSurface();
		%feature("autodoc", "1");
		StepToGeom_MakeSweptSurface(const Handle_StepGeom_SweptSurface &S);
		%feature("autodoc", "1");
		const Handle_Geom_SweptSurface & Value() const;

};

%nodefaultctor StepToGeom_MakeCartesianPoint2d;
class StepToGeom_MakeCartesianPoint2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeCartesianPoint2d();
		%feature("autodoc", "1");
		StepToGeom_MakeCartesianPoint2d(const Handle_StepGeom_CartesianPoint &P);
		%feature("autodoc", "1");
		const Handle_Geom2d_CartesianPoint & Value() const;

};

%nodefaultctor StepToGeom_MakePlane;
class StepToGeom_MakePlane : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakePlane();
		%feature("autodoc", "1");
		StepToGeom_MakePlane(const Handle_StepGeom_Plane &P);
		%feature("autodoc", "1");
		const Handle_Geom_Plane & Value() const;

};

%nodefaultctor StepToGeom_MakeCircle2d;
class StepToGeom_MakeCircle2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeCircle2d();
		%feature("autodoc", "1");
		StepToGeom_MakeCircle2d(const Handle_StepGeom_Circle &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Circle & Value() const;

};

%nodefaultctor StepToGeom_MakeLine;
class StepToGeom_MakeLine : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeLine();
		%feature("autodoc", "1");
		StepToGeom_MakeLine(const Handle_StepGeom_Line &L);
		%feature("autodoc", "1");
		const Handle_Geom_Line & Value() const;

};

%nodefaultctor StepToGeom_MakeLine2d;
class StepToGeom_MakeLine2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeLine2d();
		%feature("autodoc", "1");
		StepToGeom_MakeLine2d(const Handle_StepGeom_Line &L);
		%feature("autodoc", "1");
		const Handle_Geom2d_Line & Value() const;

};

%nodefaultctor StepToGeom_MakeParabola2d;
class StepToGeom_MakeParabola2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeParabola2d();
		%feature("autodoc", "1");
		StepToGeom_MakeParabola2d(const Handle_StepGeom_Parabola &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Parabola & Value() const;

};

%nodefaultctor StepToGeom_MakeAxisPlacement;
class StepToGeom_MakeAxisPlacement : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeAxisPlacement();
		%feature("autodoc", "1");
		StepToGeom_MakeAxisPlacement(const Handle_StepGeom_Axis2Placement2d &A);
		%feature("autodoc", "1");
		const Handle_Geom2d_AxisPlacement & Value() const;

};

%nodefaultctor StepToGeom_MakeParabola;
class StepToGeom_MakeParabola : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeParabola();
		%feature("autodoc", "1");
		StepToGeom_MakeParabola(const Handle_StepGeom_Parabola &C);
		%feature("autodoc", "1");
		const Handle_Geom_Parabola & Value() const;

};

%nodefaultctor StepToGeom_MakeTrimmedCurve;
class StepToGeom_MakeTrimmedCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeTrimmedCurve();
		%feature("autodoc", "1");
		StepToGeom_MakeTrimmedCurve(const Handle_StepGeom_TrimmedCurve &C);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;

};

%nodefaultctor StepToGeom_MakeSurfaceOfRevolution;
class StepToGeom_MakeSurfaceOfRevolution : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeSurfaceOfRevolution();
		%feature("autodoc", "1");
		StepToGeom_MakeSurfaceOfRevolution(const Handle_StepGeom_SurfaceOfRevolution &RevSurf);
		%feature("autodoc", "1");
		const Handle_Geom_SurfaceOfRevolution & Value() const;

};

%nodefaultctor StepToGeom_MakeCartesianPoint;
class StepToGeom_MakeCartesianPoint : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeCartesianPoint();
		%feature("autodoc", "1");
		StepToGeom_MakeCartesianPoint(const Handle_StepGeom_CartesianPoint &P);
		%feature("autodoc", "1");
		const Handle_Geom_CartesianPoint & Value() const;

};

%nodefaultctor StepToGeom_MakeHyperbola2d;
class StepToGeom_MakeHyperbola2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeHyperbola2d();
		%feature("autodoc", "1");
		StepToGeom_MakeHyperbola2d(const Handle_StepGeom_Hyperbola &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Hyperbola & Value() const;

};

%nodefaultctor StepToGeom_MakeVectorWithMagnitude;
class StepToGeom_MakeVectorWithMagnitude : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeVectorWithMagnitude();
		%feature("autodoc", "1");
		StepToGeom_MakeVectorWithMagnitude(const Handle_StepGeom_Vector &V);
		%feature("autodoc", "1");
		const Handle_Geom_VectorWithMagnitude & Value() const;

};

%nodefaultctor StepToGeom_MakeBSplineCurve2d;
class StepToGeom_MakeBSplineCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeBSplineCurve2d();
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineCurve2d(const Handle_StepGeom_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value() const;

};

%nodefaultctor StepToGeom_MakeSphericalSurface;
class StepToGeom_MakeSphericalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeSphericalSurface();
		%feature("autodoc", "1");
		StepToGeom_MakeSphericalSurface(const Handle_StepGeom_SphericalSurface &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_SphericalSurface & Value() const;

};

%nodefaultctor StepToGeom_MakeCurve;
class StepToGeom_MakeCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeCurve();
		%feature("autodoc", "1");
		StepToGeom_MakeCurve(const Handle_StepGeom_Curve &C);
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Value() const;

};

%nodefaultctor StepToGeom_MakeTransformation2d;
class StepToGeom_MakeTransformation2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeTransformation2d();
		%feature("autodoc", "1");
		StepToGeom_MakeTransformation2d(const Handle_StepGeom_CartesianTransformationOperator2d &CTO);
		%feature("autodoc", "1");
		const gp_Trsf2d & Value() const;

};

%nodefaultctor StepToGeom_MakeTransformation3d;
class StepToGeom_MakeTransformation3d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeTransformation3d();
		%feature("autodoc", "1");
		StepToGeom_MakeTransformation3d(const Handle_StepGeom_CartesianTransformationOperator3d &CTO);
		%feature("autodoc", "1");
		const gp_Trsf & Value() const;

};

%nodefaultctor StepToGeom_MakeBSplineCurve;
class StepToGeom_MakeBSplineCurve : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeBSplineCurve();
		%feature("autodoc", "1");
		StepToGeom_MakeBSplineCurve(const Handle_StepGeom_BSplineCurve &Bsplin);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineCurve & Value() const;

};

%nodefaultctor StepToGeom_MakeRectangularTrimmedSurface;
class StepToGeom_MakeRectangularTrimmedSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeRectangularTrimmedSurface();
		%feature("autodoc", "1");
		StepToGeom_MakeRectangularTrimmedSurface(const Handle_StepGeom_RectangularTrimmedSurface &RTSurf);
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Value() const;

};

%nodefaultctor StepToGeom_MakeCircle;
class StepToGeom_MakeCircle : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeCircle();
		%feature("autodoc", "1");
		StepToGeom_MakeCircle(const Handle_StepGeom_Circle &C);
		%feature("autodoc", "1");
		const Handle_Geom_Circle & Value() const;

};

%nodefaultctor StepToGeom_MakeAxis2Placement;
class StepToGeom_MakeAxis2Placement : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeAxis2Placement();
		%feature("autodoc", "1");
		StepToGeom_MakeAxis2Placement(const Handle_StepGeom_Axis2Placement3d &A);
		%feature("autodoc", "1");
		const Handle_Geom_Axis2Placement & Value() const;

};

%nodefaultctor StepToGeom_MakeCurve2d;
class StepToGeom_MakeCurve2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeCurve2d();
		%feature("autodoc", "1");
		StepToGeom_MakeCurve2d(const Handle_StepGeom_Curve &C);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Value() const;

};

%nodefaultctor StepToGeom_MakeCylindricalSurface;
class StepToGeom_MakeCylindricalSurface : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeCylindricalSurface();
		%feature("autodoc", "1");
		StepToGeom_MakeCylindricalSurface(const Handle_StepGeom_CylindricalSurface &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_CylindricalSurface & Value() const;

};

%nodefaultctor StepToGeom_MakeSurfaceOfLinearExtrusion;
class StepToGeom_MakeSurfaceOfLinearExtrusion : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeSurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		StepToGeom_MakeSurfaceOfLinearExtrusion(const Handle_StepGeom_SurfaceOfLinearExtrusion &Surf);
		%feature("autodoc", "1");
		const Handle_Geom_SurfaceOfLinearExtrusion & Value() const;

};

%nodefaultctor StepToGeom_MakeDirection2d;
class StepToGeom_MakeDirection2d : public StepToGeom_Root {
	public:
		%feature("autodoc", "1");
		~StepToGeom_MakeDirection2d();
		%feature("autodoc", "1");
		StepToGeom_MakeDirection2d(const Handle_StepGeom_Direction &D);
		%feature("autodoc", "1");
		const Handle_Geom2d_Direction & Value() const;

};