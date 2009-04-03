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
%module StepGeom

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


%include StepGeom_dependencies.i


%include StepGeom_headers.i


enum StepGeom_KnotType {
	StepGeom_ktUniformKnots,
	StepGeom_ktUnspecified,
	StepGeom_ktQuasiUniformKnots,
	StepGeom_ktPiecewiseBezierKnots,
	};

enum StepGeom_BSplineCurveForm {
	StepGeom_bscfPolylineForm,
	StepGeom_bscfCircularArc,
	StepGeom_bscfEllipticArc,
	StepGeom_bscfParabolicArc,
	StepGeom_bscfHyperbolicArc,
	StepGeom_bscfUnspecified,
	};

enum StepGeom_TrimmingPreference {
	StepGeom_tpCartesian,
	StepGeom_tpParameter,
	StepGeom_tpUnspecified,
	};

enum StepGeom_PreferredSurfaceCurveRepresentation {
	StepGeom_pscrCurve3d,
	StepGeom_pscrPcurveS1,
	StepGeom_pscrPcurveS2,
	};

enum StepGeom_BSplineSurfaceForm {
	StepGeom_bssfPlaneSurf,
	StepGeom_bssfCylindricalSurf,
	StepGeom_bssfConicalSurf,
	StepGeom_bssfSphericalSurf,
	StepGeom_bssfToroidalSurf,
	StepGeom_bssfSurfOfRevolution,
	StepGeom_bssfRuledSurf,
	StepGeom_bssfGeneralisedCone,
	StepGeom_bssfQuadricSurf,
	StepGeom_bssfSurfOfLinearExtrusion,
	StepGeom_bssfUnspecified,
	};

enum StepGeom_TransitionCode {
	StepGeom_tcDiscontinuous,
	StepGeom_tcContinuous,
	StepGeom_tcContSameGradient,
	StepGeom_tcContSameGradientSameCurvature,
	};



%nodefaultctor Handle_StepGeom_GeometricRepresentationItem;
class Handle_StepGeom_GeometricRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationItem(const Handle_StepGeom_GeometricRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationItem(const StepGeom_GeometricRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_GeometricRepresentationItem {
	StepGeom_GeometricRepresentationItem* GetObject() {
	return (StepGeom_GeometricRepresentationItem*)$self->Access();
	}
};
%extend Handle_StepGeom_GeometricRepresentationItem {
	~Handle_StepGeom_GeometricRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_GeometricRepresentationItem\n");}
	}
};

%nodefaultctor Handle_StepGeom_Surface;
class Handle_StepGeom_Surface : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Surface();
		%feature("autodoc", "1");
		Handle_StepGeom_Surface(const Handle_StepGeom_Surface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface(const StepGeom_Surface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Surface {
	StepGeom_Surface* GetObject() {
	return (StepGeom_Surface*)$self->Access();
	}
};
%extend Handle_StepGeom_Surface {
	~Handle_StepGeom_Surface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Surface\n");}
	}
};

%nodefaultctor Handle_StepGeom_SurfaceReplica;
class Handle_StepGeom_SurfaceReplica : public Handle_StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceReplica();
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceReplica(const Handle_StepGeom_SurfaceReplica &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceReplica(const StepGeom_SurfaceReplica *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceReplica const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_SurfaceReplica {
	StepGeom_SurfaceReplica* GetObject() {
	return (StepGeom_SurfaceReplica*)$self->Access();
	}
};
%extend Handle_StepGeom_SurfaceReplica {
	~Handle_StepGeom_SurfaceReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_SurfaceReplica\n");}
	}
};

%nodefaultctor Handle_StepGeom_Curve;
class Handle_StepGeom_Curve : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Curve();
		%feature("autodoc", "1");
		Handle_StepGeom_Curve(const Handle_StepGeom_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve(const StepGeom_Curve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Curve {
	StepGeom_Curve* GetObject() {
	return (StepGeom_Curve*)$self->Access();
	}
};
%extend Handle_StepGeom_Curve {
	~Handle_StepGeom_Curve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Curve\n");}
	}
};

%nodefaultctor Handle_StepGeom_SurfaceCurve;
class Handle_StepGeom_SurfaceCurve : public Handle_StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceCurve(const Handle_StepGeom_SurfaceCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceCurve(const StepGeom_SurfaceCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_SurfaceCurve {
	StepGeom_SurfaceCurve* GetObject() {
	return (StepGeom_SurfaceCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_SurfaceCurve {
	~Handle_StepGeom_SurfaceCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_SurfaceCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_BoundedCurve;
class Handle_StepGeom_BoundedCurve : public Handle_StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BoundedCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_BoundedCurve(const Handle_StepGeom_BoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BoundedCurve(const StepGeom_BoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BoundedCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BoundedCurve {
	StepGeom_BoundedCurve* GetObject() {
	return (StepGeom_BoundedCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_BoundedCurve {
	~Handle_StepGeom_BoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BoundedCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_CompositeCurve;
class Handle_StepGeom_CompositeCurve : public Handle_StepGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurve(const Handle_StepGeom_CompositeCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurve(const StepGeom_CompositeCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_CompositeCurve {
	StepGeom_CompositeCurve* GetObject() {
	return (StepGeom_CompositeCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_CompositeCurve {
	~Handle_StepGeom_CompositeCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_CompositeCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_CompositeCurveOnSurface;
class Handle_StepGeom_CompositeCurveOnSurface : public Handle_StepGeom_CompositeCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveOnSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveOnSurface(const Handle_StepGeom_CompositeCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveOnSurface(const StepGeom_CompositeCurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_CompositeCurveOnSurface {
	StepGeom_CompositeCurveOnSurface* GetObject() {
	return (StepGeom_CompositeCurveOnSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_CompositeCurveOnSurface {
	~Handle_StepGeom_CompositeCurveOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_CompositeCurveOnSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_BoundaryCurve;
class Handle_StepGeom_BoundaryCurve : public Handle_StepGeom_CompositeCurveOnSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BoundaryCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_BoundaryCurve(const Handle_StepGeom_BoundaryCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BoundaryCurve(const StepGeom_BoundaryCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BoundaryCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BoundaryCurve {
	StepGeom_BoundaryCurve* GetObject() {
	return (StepGeom_BoundaryCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_BoundaryCurve {
	~Handle_StepGeom_BoundaryCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BoundaryCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_OuterBoundaryCurve;
class Handle_StepGeom_OuterBoundaryCurve : public Handle_StepGeom_BoundaryCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_OuterBoundaryCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_OuterBoundaryCurve(const Handle_StepGeom_OuterBoundaryCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_OuterBoundaryCurve(const StepGeom_OuterBoundaryCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_OuterBoundaryCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_OuterBoundaryCurve {
	StepGeom_OuterBoundaryCurve* GetObject() {
	return (StepGeom_OuterBoundaryCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_OuterBoundaryCurve {
	~Handle_StepGeom_OuterBoundaryCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_OuterBoundaryCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_Point;
class Handle_StepGeom_Point : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Point();
		%feature("autodoc", "1");
		Handle_StepGeom_Point(const Handle_StepGeom_Point &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Point(const StepGeom_Point *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Point const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Point {
	StepGeom_Point* GetObject() {
	return (StepGeom_Point*)$self->Access();
	}
};
%extend Handle_StepGeom_Point {
	~Handle_StepGeom_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Point\n");}
	}
};

%nodefaultctor Handle_StepGeom_DegeneratePcurve;
class Handle_StepGeom_DegeneratePcurve : public Handle_StepGeom_Point {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_DegeneratePcurve();
		%feature("autodoc", "1");
		Handle_StepGeom_DegeneratePcurve(const Handle_StepGeom_DegeneratePcurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_DegeneratePcurve(const StepGeom_DegeneratePcurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_DegeneratePcurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_DegeneratePcurve {
	StepGeom_DegeneratePcurve* GetObject() {
	return (StepGeom_DegeneratePcurve*)$self->Access();
	}
};
%extend Handle_StepGeom_DegeneratePcurve {
	~Handle_StepGeom_DegeneratePcurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_DegeneratePcurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_EvaluatedDegeneratePcurve;
class Handle_StepGeom_EvaluatedDegeneratePcurve : public Handle_StepGeom_DegeneratePcurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_EvaluatedDegeneratePcurve();
		%feature("autodoc", "1");
		Handle_StepGeom_EvaluatedDegeneratePcurve(const Handle_StepGeom_EvaluatedDegeneratePcurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_EvaluatedDegeneratePcurve(const StepGeom_EvaluatedDegeneratePcurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_EvaluatedDegeneratePcurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_EvaluatedDegeneratePcurve {
	StepGeom_EvaluatedDegeneratePcurve* GetObject() {
	return (StepGeom_EvaluatedDegeneratePcurve*)$self->Access();
	}
};
%extend Handle_StepGeom_EvaluatedDegeneratePcurve {
	~Handle_StepGeom_EvaluatedDegeneratePcurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_EvaluatedDegeneratePcurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_BoundedSurface;
class Handle_StepGeom_BoundedSurface : public Handle_StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BoundedSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_BoundedSurface(const Handle_StepGeom_BoundedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BoundedSurface(const StepGeom_BoundedSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BoundedSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BoundedSurface {
	StepGeom_BoundedSurface* GetObject() {
	return (StepGeom_BoundedSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_BoundedSurface {
	~Handle_StepGeom_BoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BoundedSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_BSplineSurface;
class Handle_StepGeom_BSplineSurface : public Handle_StepGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurface(const Handle_StepGeom_BSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurface(const StepGeom_BSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BSplineSurface {
	StepGeom_BSplineSurface* GetObject() {
	return (StepGeom_BSplineSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_BSplineSurface {
	~Handle_StepGeom_BSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BSplineSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_RationalBSplineSurface;
class Handle_StepGeom_RationalBSplineSurface : public Handle_StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineSurface(const Handle_StepGeom_RationalBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineSurface(const StepGeom_RationalBSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_RationalBSplineSurface {
	StepGeom_RationalBSplineSurface* GetObject() {
	return (StepGeom_RationalBSplineSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_RationalBSplineSurface {
	~Handle_StepGeom_RationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_RationalBSplineSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_HArray2OfCartesianPoint;
class Handle_StepGeom_HArray2OfCartesianPoint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_HArray2OfCartesianPoint();
		%feature("autodoc", "1");
		Handle_StepGeom_HArray2OfCartesianPoint(const Handle_StepGeom_HArray2OfCartesianPoint &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray2OfCartesianPoint(const StepGeom_HArray2OfCartesianPoint *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray2OfCartesianPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_HArray2OfCartesianPoint {
	StepGeom_HArray2OfCartesianPoint* GetObject() {
	return (StepGeom_HArray2OfCartesianPoint*)$self->Access();
	}
};
%extend Handle_StepGeom_HArray2OfCartesianPoint {
	~Handle_StepGeom_HArray2OfCartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_HArray2OfCartesianPoint\n");}
	}
};

%nodefaultctor Handle_StepGeom_PointOnSurface;
class Handle_StepGeom_PointOnSurface : public Handle_StepGeom_Point {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_PointOnSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_PointOnSurface(const Handle_StepGeom_PointOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_PointOnSurface(const StepGeom_PointOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_PointOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_PointOnSurface {
	StepGeom_PointOnSurface* GetObject() {
	return (StepGeom_PointOnSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_PointOnSurface {
	~Handle_StepGeom_PointOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_PointOnSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_BSplineCurve;
class Handle_StepGeom_BSplineCurve : public Handle_StepGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurve(const Handle_StepGeom_BSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurve(const StepGeom_BSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BSplineCurve {
	StepGeom_BSplineCurve* GetObject() {
	return (StepGeom_BSplineCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_BSplineCurve {
	~Handle_StepGeom_BSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BSplineCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_BezierCurveAndRationalBSplineCurve;
class Handle_StepGeom_BezierCurveAndRationalBSplineCurve : public Handle_StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BezierCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_BezierCurveAndRationalBSplineCurve(const Handle_StepGeom_BezierCurveAndRationalBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BezierCurveAndRationalBSplineCurve(const StepGeom_BezierCurveAndRationalBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BezierCurveAndRationalBSplineCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BezierCurveAndRationalBSplineCurve {
	StepGeom_BezierCurveAndRationalBSplineCurve* GetObject() {
	return (StepGeom_BezierCurveAndRationalBSplineCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_BezierCurveAndRationalBSplineCurve {
	~Handle_StepGeom_BezierCurveAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BezierCurveAndRationalBSplineCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_QuasiUniformCurve;
class Handle_StepGeom_QuasiUniformCurve : public Handle_StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformCurve(const Handle_StepGeom_QuasiUniformCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformCurve(const StepGeom_QuasiUniformCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_QuasiUniformCurve {
	StepGeom_QuasiUniformCurve* GetObject() {
	return (StepGeom_QuasiUniformCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_QuasiUniformCurve {
	~Handle_StepGeom_QuasiUniformCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_QuasiUniformCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_IntersectionCurve;
class Handle_StepGeom_IntersectionCurve : public Handle_StepGeom_SurfaceCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_IntersectionCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_IntersectionCurve(const Handle_StepGeom_IntersectionCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_IntersectionCurve(const StepGeom_IntersectionCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_IntersectionCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_IntersectionCurve {
	StepGeom_IntersectionCurve* GetObject() {
	return (StepGeom_IntersectionCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_IntersectionCurve {
	~Handle_StepGeom_IntersectionCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_IntersectionCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_HArray1OfCompositeCurveSegment;
class Handle_StepGeom_HArray1OfCompositeCurveSegment : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCompositeCurveSegment();
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCompositeCurveSegment(const Handle_StepGeom_HArray1OfCompositeCurveSegment &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCompositeCurveSegment(const StepGeom_HArray1OfCompositeCurveSegment *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCompositeCurveSegment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_HArray1OfCompositeCurveSegment {
	StepGeom_HArray1OfCompositeCurveSegment* GetObject() {
	return (StepGeom_HArray1OfCompositeCurveSegment*)$self->Access();
	}
};
%extend Handle_StepGeom_HArray1OfCompositeCurveSegment {
	~Handle_StepGeom_HArray1OfCompositeCurveSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_HArray1OfCompositeCurveSegment\n");}
	}
};

%nodefaultctor Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext;
class Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext : public Handle_StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext();
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext(const Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext(const StepGeom_GeometricRepresentationContextAndParametricRepresentationContext *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext {
	StepGeom_GeometricRepresentationContextAndParametricRepresentationContext* GetObject() {
	return (StepGeom_GeometricRepresentationContextAndParametricRepresentationContext*)$self->Access();
	}
};
%extend Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext {
	~Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext\n");}
	}
};

%nodefaultctor Handle_StepGeom_OffsetSurface;
class Handle_StepGeom_OffsetSurface : public Handle_StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_OffsetSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_OffsetSurface(const Handle_StepGeom_OffsetSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_OffsetSurface(const StepGeom_OffsetSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_OffsetSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_OffsetSurface {
	StepGeom_OffsetSurface* GetObject() {
	return (StepGeom_OffsetSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_OffsetSurface {
	~Handle_StepGeom_OffsetSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_OffsetSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_Conic;
class Handle_StepGeom_Conic : public Handle_StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Conic();
		%feature("autodoc", "1");
		Handle_StepGeom_Conic(const Handle_StepGeom_Conic &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Conic(const StepGeom_Conic *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Conic const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Conic {
	StepGeom_Conic* GetObject() {
	return (StepGeom_Conic*)$self->Access();
	}
};
%extend Handle_StepGeom_Conic {
	~Handle_StepGeom_Conic() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Conic\n");}
	}
};

%nodefaultctor Handle_StepGeom_Circle;
class Handle_StepGeom_Circle : public Handle_StepGeom_Conic {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Circle();
		%feature("autodoc", "1");
		Handle_StepGeom_Circle(const Handle_StepGeom_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Circle(const StepGeom_Circle *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Circle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Circle {
	StepGeom_Circle* GetObject() {
	return (StepGeom_Circle*)$self->Access();
	}
};
%extend Handle_StepGeom_Circle {
	~Handle_StepGeom_Circle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Circle\n");}
	}
};

%nodefaultctor Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext;
class Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext : public Handle_StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext();
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext(const Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext(const StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext {
	StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext* GetObject() {
	return (StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext*)$self->Access();
	}
};
%extend Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext {
	~Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext\n");}
	}
};

%nodefaultctor Handle_StepGeom_SurfaceCurveAndBoundedCurve;
class Handle_StepGeom_SurfaceCurveAndBoundedCurve : public Handle_StepGeom_SurfaceCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceCurveAndBoundedCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceCurveAndBoundedCurve(const Handle_StepGeom_SurfaceCurveAndBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceCurveAndBoundedCurve(const StepGeom_SurfaceCurveAndBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceCurveAndBoundedCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_SurfaceCurveAndBoundedCurve {
	StepGeom_SurfaceCurveAndBoundedCurve* GetObject() {
	return (StepGeom_SurfaceCurveAndBoundedCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_SurfaceCurveAndBoundedCurve {
	~Handle_StepGeom_SurfaceCurveAndBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_SurfaceCurveAndBoundedCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_CartesianTransformationOperator;
class Handle_StepGeom_CartesianTransformationOperator : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator();
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator(const Handle_StepGeom_CartesianTransformationOperator &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator(const StepGeom_CartesianTransformationOperator *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_CartesianTransformationOperator {
	StepGeom_CartesianTransformationOperator* GetObject() {
	return (StepGeom_CartesianTransformationOperator*)$self->Access();
	}
};
%extend Handle_StepGeom_CartesianTransformationOperator {
	~Handle_StepGeom_CartesianTransformationOperator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_CartesianTransformationOperator\n");}
	}
};

%nodefaultctor Handle_StepGeom_CartesianTransformationOperator2d;
class Handle_StepGeom_CartesianTransformationOperator2d : public Handle_StepGeom_CartesianTransformationOperator {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator2d();
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator2d(const Handle_StepGeom_CartesianTransformationOperator2d &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator2d(const StepGeom_CartesianTransformationOperator2d *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_CartesianTransformationOperator2d {
	StepGeom_CartesianTransformationOperator2d* GetObject() {
	return (StepGeom_CartesianTransformationOperator2d*)$self->Access();
	}
};
%extend Handle_StepGeom_CartesianTransformationOperator2d {
	~Handle_StepGeom_CartesianTransformationOperator2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_CartesianTransformationOperator2d\n");}
	}
};

%nodefaultctor Handle_StepGeom_Direction;
class Handle_StepGeom_Direction : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Direction();
		%feature("autodoc", "1");
		Handle_StepGeom_Direction(const Handle_StepGeom_Direction &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Direction(const StepGeom_Direction *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Direction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Direction {
	StepGeom_Direction* GetObject() {
	return (StepGeom_Direction*)$self->Access();
	}
};
%extend Handle_StepGeom_Direction {
	~Handle_StepGeom_Direction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Direction\n");}
	}
};

%nodefaultctor Handle_StepGeom_Placement;
class Handle_StepGeom_Placement : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Placement();
		%feature("autodoc", "1");
		Handle_StepGeom_Placement(const Handle_StepGeom_Placement &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Placement(const StepGeom_Placement *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Placement const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Placement {
	StepGeom_Placement* GetObject() {
	return (StepGeom_Placement*)$self->Access();
	}
};
%extend Handle_StepGeom_Placement {
	~Handle_StepGeom_Placement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Placement\n");}
	}
};

%nodefaultctor Handle_StepGeom_Axis2Placement2d;
class Handle_StepGeom_Axis2Placement2d : public Handle_StepGeom_Placement {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement2d();
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement2d(const Handle_StepGeom_Axis2Placement2d &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement2d(const StepGeom_Axis2Placement2d *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Axis2Placement2d {
	StepGeom_Axis2Placement2d* GetObject() {
	return (StepGeom_Axis2Placement2d*)$self->Access();
	}
};
%extend Handle_StepGeom_Axis2Placement2d {
	~Handle_StepGeom_Axis2Placement2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Axis2Placement2d\n");}
	}
};

%nodefaultctor Handle_StepGeom_ElementarySurface;
class Handle_StepGeom_ElementarySurface : public Handle_StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_ElementarySurface();
		%feature("autodoc", "1");
		Handle_StepGeom_ElementarySurface(const Handle_StepGeom_ElementarySurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_ElementarySurface(const StepGeom_ElementarySurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_ElementarySurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_ElementarySurface {
	StepGeom_ElementarySurface* GetObject() {
	return (StepGeom_ElementarySurface*)$self->Access();
	}
};
%extend Handle_StepGeom_ElementarySurface {
	~Handle_StepGeom_ElementarySurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_ElementarySurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_SphericalSurface;
class Handle_StepGeom_SphericalSurface : public Handle_StepGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_SphericalSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_SphericalSurface(const Handle_StepGeom_SphericalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_SphericalSurface(const StepGeom_SphericalSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_SphericalSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_SphericalSurface {
	StepGeom_SphericalSurface* GetObject() {
	return (StepGeom_SphericalSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_SphericalSurface {
	~Handle_StepGeom_SphericalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_SphericalSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_Polyline;
class Handle_StepGeom_Polyline : public Handle_StepGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Polyline();
		%feature("autodoc", "1");
		Handle_StepGeom_Polyline(const Handle_StepGeom_Polyline &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Polyline(const StepGeom_Polyline *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Polyline const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Polyline {
	StepGeom_Polyline* GetObject() {
	return (StepGeom_Polyline*)$self->Access();
	}
};
%extend Handle_StepGeom_Polyline {
	~Handle_StepGeom_Polyline() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Polyline\n");}
	}
};

%nodefaultctor Handle_StepGeom_HArray1OfTrimmingSelect;
class Handle_StepGeom_HArray1OfTrimmingSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfTrimmingSelect();
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfTrimmingSelect(const Handle_StepGeom_HArray1OfTrimmingSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfTrimmingSelect(const StepGeom_HArray1OfTrimmingSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfTrimmingSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_HArray1OfTrimmingSelect {
	StepGeom_HArray1OfTrimmingSelect* GetObject() {
	return (StepGeom_HArray1OfTrimmingSelect*)$self->Access();
	}
};
%extend Handle_StepGeom_HArray1OfTrimmingSelect {
	~Handle_StepGeom_HArray1OfTrimmingSelect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_HArray1OfTrimmingSelect\n");}
	}
};

%nodefaultctor Handle_StepGeom_RectangularCompositeSurface;
class Handle_StepGeom_RectangularCompositeSurface : public Handle_StepGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_RectangularCompositeSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_RectangularCompositeSurface(const Handle_StepGeom_RectangularCompositeSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_RectangularCompositeSurface(const StepGeom_RectangularCompositeSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_RectangularCompositeSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_RectangularCompositeSurface {
	StepGeom_RectangularCompositeSurface* GetObject() {
	return (StepGeom_RectangularCompositeSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_RectangularCompositeSurface {
	~Handle_StepGeom_RectangularCompositeSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_RectangularCompositeSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_BSplineCurveWithKnots;
class Handle_StepGeom_BSplineCurveWithKnots : public Handle_StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurveWithKnots();
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurveWithKnots(const Handle_StepGeom_BSplineCurveWithKnots &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurveWithKnots(const StepGeom_BSplineCurveWithKnots *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurveWithKnots const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BSplineCurveWithKnots {
	StepGeom_BSplineCurveWithKnots* GetObject() {
	return (StepGeom_BSplineCurveWithKnots*)$self->Access();
	}
};
%extend Handle_StepGeom_BSplineCurveWithKnots {
	~Handle_StepGeom_BSplineCurveWithKnots() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BSplineCurveWithKnots\n");}
	}
};

%nodefaultctor Handle_StepGeom_Pcurve;
class Handle_StepGeom_Pcurve : public Handle_StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Pcurve();
		%feature("autodoc", "1");
		Handle_StepGeom_Pcurve(const Handle_StepGeom_Pcurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Pcurve(const StepGeom_Pcurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Pcurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Pcurve {
	StepGeom_Pcurve* GetObject() {
	return (StepGeom_Pcurve*)$self->Access();
	}
};
%extend Handle_StepGeom_Pcurve {
	~Handle_StepGeom_Pcurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Pcurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_SeamCurve;
class Handle_StepGeom_SeamCurve : public Handle_StepGeom_SurfaceCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_SeamCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_SeamCurve(const Handle_StepGeom_SeamCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_SeamCurve(const StepGeom_SeamCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_SeamCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_SeamCurve {
	StepGeom_SeamCurve* GetObject() {
	return (StepGeom_SeamCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_SeamCurve {
	~Handle_StepGeom_SeamCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_SeamCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_HArray2OfSurfacePatch;
class Handle_StepGeom_HArray2OfSurfacePatch : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_HArray2OfSurfacePatch();
		%feature("autodoc", "1");
		Handle_StepGeom_HArray2OfSurfacePatch(const Handle_StepGeom_HArray2OfSurfacePatch &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray2OfSurfacePatch(const StepGeom_HArray2OfSurfacePatch *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray2OfSurfacePatch const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_HArray2OfSurfacePatch {
	StepGeom_HArray2OfSurfacePatch* GetObject() {
	return (StepGeom_HArray2OfSurfacePatch*)$self->Access();
	}
};
%extend Handle_StepGeom_HArray2OfSurfacePatch {
	~Handle_StepGeom_HArray2OfSurfacePatch() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_HArray2OfSurfacePatch\n");}
	}
};

%nodefaultctor Handle_StepGeom_CartesianTransformationOperator3d;
class Handle_StepGeom_CartesianTransformationOperator3d : public Handle_StepGeom_CartesianTransformationOperator {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator3d();
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator3d(const Handle_StepGeom_CartesianTransformationOperator3d &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator3d(const StepGeom_CartesianTransformationOperator3d *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_CartesianTransformationOperator3d {
	StepGeom_CartesianTransformationOperator3d* GetObject() {
	return (StepGeom_CartesianTransformationOperator3d*)$self->Access();
	}
};
%extend Handle_StepGeom_CartesianTransformationOperator3d {
	~Handle_StepGeom_CartesianTransformationOperator3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_CartesianTransformationOperator3d\n");}
	}
};

%nodefaultctor Handle_StepGeom_HArray1OfCartesianPoint;
class Handle_StepGeom_HArray1OfCartesianPoint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCartesianPoint();
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCartesianPoint(const Handle_StepGeom_HArray1OfCartesianPoint &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCartesianPoint(const StepGeom_HArray1OfCartesianPoint *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCartesianPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_HArray1OfCartesianPoint {
	StepGeom_HArray1OfCartesianPoint* GetObject() {
	return (StepGeom_HArray1OfCartesianPoint*)$self->Access();
	}
};
%extend Handle_StepGeom_HArray1OfCartesianPoint {
	~Handle_StepGeom_HArray1OfCartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_HArray1OfCartesianPoint\n");}
	}
};

%nodefaultctor Handle_StepGeom_HArray1OfPcurveOrSurface;
class Handle_StepGeom_HArray1OfPcurveOrSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfPcurveOrSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfPcurveOrSurface(const Handle_StepGeom_HArray1OfPcurveOrSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfPcurveOrSurface(const StepGeom_HArray1OfPcurveOrSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfPcurveOrSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_HArray1OfPcurveOrSurface {
	StepGeom_HArray1OfPcurveOrSurface* GetObject() {
	return (StepGeom_HArray1OfPcurveOrSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_HArray1OfPcurveOrSurface {
	~Handle_StepGeom_HArray1OfPcurveOrSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_HArray1OfPcurveOrSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_Hyperbola;
class Handle_StepGeom_Hyperbola : public Handle_StepGeom_Conic {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Hyperbola();
		%feature("autodoc", "1");
		Handle_StepGeom_Hyperbola(const Handle_StepGeom_Hyperbola &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Hyperbola(const StepGeom_Hyperbola *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Hyperbola const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Hyperbola {
	StepGeom_Hyperbola* GetObject() {
	return (StepGeom_Hyperbola*)$self->Access();
	}
};
%extend Handle_StepGeom_Hyperbola {
	~Handle_StepGeom_Hyperbola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Hyperbola\n");}
	}
};

%nodefaultctor Handle_StepGeom_TrimmedCurve;
class Handle_StepGeom_TrimmedCurve : public Handle_StepGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_TrimmedCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_TrimmedCurve(const Handle_StepGeom_TrimmedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_TrimmedCurve(const StepGeom_TrimmedCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_TrimmedCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_TrimmedCurve {
	StepGeom_TrimmedCurve* GetObject() {
	return (StepGeom_TrimmedCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_TrimmedCurve {
	~Handle_StepGeom_TrimmedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_TrimmedCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_UniformSurface;
class Handle_StepGeom_UniformSurface : public Handle_StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_UniformSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_UniformSurface(const Handle_StepGeom_UniformSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_UniformSurface(const StepGeom_UniformSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_UniformSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_UniformSurface {
	StepGeom_UniformSurface* GetObject() {
	return (StepGeom_UniformSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_UniformSurface {
	~Handle_StepGeom_UniformSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_UniformSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_HArray1OfCurve;
class Handle_StepGeom_HArray1OfCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCurve(const Handle_StepGeom_HArray1OfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCurve(const StepGeom_HArray1OfCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_HArray1OfCurve {
	StepGeom_HArray1OfCurve* GetObject() {
	return (StepGeom_HArray1OfCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_HArray1OfCurve {
	~Handle_StepGeom_HArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_HArray1OfCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_Axis1Placement;
class Handle_StepGeom_Axis1Placement : public Handle_StepGeom_Placement {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement();
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement(const Handle_StepGeom_Axis1Placement &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement(const StepGeom_Axis1Placement *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Axis1Placement {
	StepGeom_Axis1Placement* GetObject() {
	return (StepGeom_Axis1Placement*)$self->Access();
	}
};
%extend Handle_StepGeom_Axis1Placement {
	~Handle_StepGeom_Axis1Placement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Axis1Placement\n");}
	}
};

%nodefaultctor Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve;
class Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve : public Handle_StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve(const Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve(const StepGeom_QuasiUniformCurveAndRationalBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve {
	StepGeom_QuasiUniformCurveAndRationalBSplineCurve* GetObject() {
	return (StepGeom_QuasiUniformCurveAndRationalBSplineCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve {
	~Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_SurfacePatch;
class Handle_StepGeom_SurfacePatch : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_SurfacePatch();
		%feature("autodoc", "1");
		Handle_StepGeom_SurfacePatch(const Handle_StepGeom_SurfacePatch &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfacePatch(const StepGeom_SurfacePatch *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfacePatch const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_SurfacePatch {
	StepGeom_SurfacePatch* GetObject() {
	return (StepGeom_SurfacePatch*)$self->Access();
	}
};
%extend Handle_StepGeom_SurfacePatch {
	~Handle_StepGeom_SurfacePatch() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_SurfacePatch\n");}
	}
};

%nodefaultctor Handle_StepGeom_SweptSurface;
class Handle_StepGeom_SweptSurface : public Handle_StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_SweptSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_SweptSurface(const Handle_StepGeom_SweptSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_SweptSurface(const StepGeom_SweptSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_SweptSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_SweptSurface {
	StepGeom_SweptSurface* GetObject() {
	return (StepGeom_SweptSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_SweptSurface {
	~Handle_StepGeom_SweptSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_SweptSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
class Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve : public Handle_StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve(const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve(const StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve {
	StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve* GetObject() {
	return (StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve {
	~Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_UniformCurve;
class Handle_StepGeom_UniformCurve : public Handle_StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_UniformCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_UniformCurve(const Handle_StepGeom_UniformCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_UniformCurve(const StepGeom_UniformCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_UniformCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_UniformCurve {
	StepGeom_UniformCurve* GetObject() {
	return (StepGeom_UniformCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_UniformCurve {
	~Handle_StepGeom_UniformCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_UniformCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_ToroidalSurface;
class Handle_StepGeom_ToroidalSurface : public Handle_StepGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_ToroidalSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_ToroidalSurface(const Handle_StepGeom_ToroidalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_ToroidalSurface(const StepGeom_ToroidalSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_ToroidalSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_ToroidalSurface {
	StepGeom_ToroidalSurface* GetObject() {
	return (StepGeom_ToroidalSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_ToroidalSurface {
	~Handle_StepGeom_ToroidalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_ToroidalSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_BSplineSurfaceWithKnots;
class Handle_StepGeom_BSplineSurfaceWithKnots : public Handle_StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurfaceWithKnots();
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurfaceWithKnots(const Handle_StepGeom_BSplineSurfaceWithKnots &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurfaceWithKnots(const StepGeom_BSplineSurfaceWithKnots *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurfaceWithKnots const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BSplineSurfaceWithKnots {
	StepGeom_BSplineSurfaceWithKnots* GetObject() {
	return (StepGeom_BSplineSurfaceWithKnots*)$self->Access();
	}
};
%extend Handle_StepGeom_BSplineSurfaceWithKnots {
	~Handle_StepGeom_BSplineSurfaceWithKnots() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BSplineSurfaceWithKnots\n");}
	}
};

%nodefaultctor Handle_StepGeom_CompositeCurveSegment;
class Handle_StepGeom_CompositeCurveSegment : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveSegment();
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveSegment(const Handle_StepGeom_CompositeCurveSegment &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveSegment(const StepGeom_CompositeCurveSegment *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveSegment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_CompositeCurveSegment {
	StepGeom_CompositeCurveSegment* GetObject() {
	return (StepGeom_CompositeCurveSegment*)$self->Access();
	}
};
%extend Handle_StepGeom_CompositeCurveSegment {
	~Handle_StepGeom_CompositeCurveSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_CompositeCurveSegment\n");}
	}
};

%nodefaultctor Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface;
class Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface : public Handle_StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface(const Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface(const StepGeom_BezierSurfaceAndRationalBSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface {
	StepGeom_BezierSurfaceAndRationalBSplineSurface* GetObject() {
	return (StepGeom_BezierSurfaceAndRationalBSplineSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface {
	~Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_OffsetCurve3d;
class Handle_StepGeom_OffsetCurve3d : public Handle_StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_OffsetCurve3d();
		%feature("autodoc", "1");
		Handle_StepGeom_OffsetCurve3d(const Handle_StepGeom_OffsetCurve3d &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_OffsetCurve3d(const StepGeom_OffsetCurve3d *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_OffsetCurve3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_OffsetCurve3d {
	StepGeom_OffsetCurve3d* GetObject() {
	return (StepGeom_OffsetCurve3d*)$self->Access();
	}
};
%extend Handle_StepGeom_OffsetCurve3d {
	~Handle_StepGeom_OffsetCurve3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_OffsetCurve3d\n");}
	}
};

%nodefaultctor Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
class Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx : public Handle_StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx();
		%feature("autodoc", "1");
		Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx(const Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx(const StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {
	StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx* GetObject() {
	return (StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx*)$self->Access();
	}
};
%extend Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {
	~Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx\n");}
	}
};

%nodefaultctor Handle_StepGeom_PointOnCurve;
class Handle_StepGeom_PointOnCurve : public Handle_StepGeom_Point {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_PointOnCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_PointOnCurve(const Handle_StepGeom_PointOnCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_PointOnCurve(const StepGeom_PointOnCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_PointOnCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_PointOnCurve {
	StepGeom_PointOnCurve* GetObject() {
	return (StepGeom_PointOnCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_PointOnCurve {
	~Handle_StepGeom_PointOnCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_PointOnCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
class Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface : public Handle_StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface(const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface(const StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface {
	StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface* GetObject() {
	return (StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface {
	~Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_Vector;
class Handle_StepGeom_Vector : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Vector();
		%feature("autodoc", "1");
		Handle_StepGeom_Vector(const Handle_StepGeom_Vector &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Vector(const StepGeom_Vector *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Vector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Vector {
	StepGeom_Vector* GetObject() {
	return (StepGeom_Vector*)$self->Access();
	}
};
%extend Handle_StepGeom_Vector {
	~Handle_StepGeom_Vector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Vector\n");}
	}
};

%nodefaultctor Handle_StepGeom_ConicalSurface;
class Handle_StepGeom_ConicalSurface : public Handle_StepGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_ConicalSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_ConicalSurface(const Handle_StepGeom_ConicalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_ConicalSurface(const StepGeom_ConicalSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_ConicalSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_ConicalSurface {
	StepGeom_ConicalSurface* GetObject() {
	return (StepGeom_ConicalSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_ConicalSurface {
	~Handle_StepGeom_ConicalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_ConicalSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_ReparametrisedCompositeCurveSegment;
class Handle_StepGeom_ReparametrisedCompositeCurveSegment : public Handle_StepGeom_CompositeCurveSegment {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_ReparametrisedCompositeCurveSegment();
		%feature("autodoc", "1");
		Handle_StepGeom_ReparametrisedCompositeCurveSegment(const Handle_StepGeom_ReparametrisedCompositeCurveSegment &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_ReparametrisedCompositeCurveSegment(const StepGeom_ReparametrisedCompositeCurveSegment *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_ReparametrisedCompositeCurveSegment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_ReparametrisedCompositeCurveSegment {
	StepGeom_ReparametrisedCompositeCurveSegment* GetObject() {
	return (StepGeom_ReparametrisedCompositeCurveSegment*)$self->Access();
	}
};
%extend Handle_StepGeom_ReparametrisedCompositeCurveSegment {
	~Handle_StepGeom_ReparametrisedCompositeCurveSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_ReparametrisedCompositeCurveSegment\n");}
	}
};

%nodefaultctor Handle_StepGeom_HArray1OfSurfaceBoundary;
class Handle_StepGeom_HArray1OfSurfaceBoundary : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfSurfaceBoundary();
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfSurfaceBoundary(const Handle_StepGeom_HArray1OfSurfaceBoundary &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfSurfaceBoundary(const StepGeom_HArray1OfSurfaceBoundary *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfSurfaceBoundary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_HArray1OfSurfaceBoundary {
	StepGeom_HArray1OfSurfaceBoundary* GetObject() {
	return (StepGeom_HArray1OfSurfaceBoundary*)$self->Access();
	}
};
%extend Handle_StepGeom_HArray1OfSurfaceBoundary {
	~Handle_StepGeom_HArray1OfSurfaceBoundary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_HArray1OfSurfaceBoundary\n");}
	}
};

%nodefaultctor Handle_StepGeom_RationalBSplineCurve;
class Handle_StepGeom_RationalBSplineCurve : public Handle_StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineCurve(const Handle_StepGeom_RationalBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineCurve(const StepGeom_RationalBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_RationalBSplineCurve {
	StepGeom_RationalBSplineCurve* GetObject() {
	return (StepGeom_RationalBSplineCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_RationalBSplineCurve {
	~Handle_StepGeom_RationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_RationalBSplineCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_Parabola;
class Handle_StepGeom_Parabola : public Handle_StepGeom_Conic {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Parabola();
		%feature("autodoc", "1");
		Handle_StepGeom_Parabola(const Handle_StepGeom_Parabola &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Parabola(const StepGeom_Parabola *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Parabola const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Parabola {
	StepGeom_Parabola* GetObject() {
	return (StepGeom_Parabola*)$self->Access();
	}
};
%extend Handle_StepGeom_Parabola {
	~Handle_StepGeom_Parabola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Parabola\n");}
	}
};

%nodefaultctor Handle_StepGeom_OrientedSurface;
class Handle_StepGeom_OrientedSurface : public Handle_StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_OrientedSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_OrientedSurface(const Handle_StepGeom_OrientedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_OrientedSurface(const StepGeom_OrientedSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_OrientedSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_OrientedSurface {
	StepGeom_OrientedSurface* GetObject() {
	return (StepGeom_OrientedSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_OrientedSurface {
	~Handle_StepGeom_OrientedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_OrientedSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_QuasiUniformSurface;
class Handle_StepGeom_QuasiUniformSurface : public Handle_StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformSurface(const Handle_StepGeom_QuasiUniformSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformSurface(const StepGeom_QuasiUniformSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_QuasiUniformSurface {
	StepGeom_QuasiUniformSurface* GetObject() {
	return (StepGeom_QuasiUniformSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_QuasiUniformSurface {
	~Handle_StepGeom_QuasiUniformSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_QuasiUniformSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_CartesianPoint;
class Handle_StepGeom_CartesianPoint : public Handle_StepGeom_Point {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint();
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint(const Handle_StepGeom_CartesianPoint &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint(const StepGeom_CartesianPoint *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_CartesianPoint {
	StepGeom_CartesianPoint* GetObject() {
	return (StepGeom_CartesianPoint*)$self->Access();
	}
};
%extend Handle_StepGeom_CartesianPoint {
	~Handle_StepGeom_CartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_CartesianPoint\n");}
	}
};

%nodefaultctor Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface;
class Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface : public Handle_StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface(const Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface(const StepGeom_UniformSurfaceAndRationalBSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface {
	StepGeom_UniformSurfaceAndRationalBSplineSurface* GetObject() {
	return (StepGeom_UniformSurfaceAndRationalBSplineSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface {
	~Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_RectangularTrimmedSurface;
class Handle_StepGeom_RectangularTrimmedSurface : public Handle_StepGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_RectangularTrimmedSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_RectangularTrimmedSurface(const Handle_StepGeom_RectangularTrimmedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_RectangularTrimmedSurface(const StepGeom_RectangularTrimmedSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_RectangularTrimmedSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_RectangularTrimmedSurface {
	StepGeom_RectangularTrimmedSurface* GetObject() {
	return (StepGeom_RectangularTrimmedSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_RectangularTrimmedSurface {
	~Handle_StepGeom_RectangularTrimmedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_RectangularTrimmedSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_DegenerateToroidalSurface;
class Handle_StepGeom_DegenerateToroidalSurface : public Handle_StepGeom_ToroidalSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_DegenerateToroidalSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_DegenerateToroidalSurface(const Handle_StepGeom_DegenerateToroidalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_DegenerateToroidalSurface(const StepGeom_DegenerateToroidalSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_DegenerateToroidalSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_DegenerateToroidalSurface {
	StepGeom_DegenerateToroidalSurface* GetObject() {
	return (StepGeom_DegenerateToroidalSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_DegenerateToroidalSurface {
	~Handle_StepGeom_DegenerateToroidalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_DegenerateToroidalSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_CylindricalSurface;
class Handle_StepGeom_CylindricalSurface : public Handle_StepGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_CylindricalSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_CylindricalSurface(const Handle_StepGeom_CylindricalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_CylindricalSurface(const StepGeom_CylindricalSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_CylindricalSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_CylindricalSurface {
	StepGeom_CylindricalSurface* GetObject() {
	return (StepGeom_CylindricalSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_CylindricalSurface {
	~Handle_StepGeom_CylindricalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_CylindricalSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_Axis2Placement3d;
class Handle_StepGeom_Axis2Placement3d : public Handle_StepGeom_Placement {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d();
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d(const Handle_StepGeom_Axis2Placement3d &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d(const StepGeom_Axis2Placement3d *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Axis2Placement3d {
	StepGeom_Axis2Placement3d* GetObject() {
	return (StepGeom_Axis2Placement3d*)$self->Access();
	}
};
%extend Handle_StepGeom_Axis2Placement3d {
	~Handle_StepGeom_Axis2Placement3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Axis2Placement3d\n");}
	}
};

%nodefaultctor Handle_StepGeom_SurfaceOfLinearExtrusion;
class Handle_StepGeom_SurfaceOfLinearExtrusion : public Handle_StepGeom_SweptSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceOfLinearExtrusion(const Handle_StepGeom_SurfaceOfLinearExtrusion &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceOfLinearExtrusion(const StepGeom_SurfaceOfLinearExtrusion *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceOfLinearExtrusion const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_SurfaceOfLinearExtrusion {
	StepGeom_SurfaceOfLinearExtrusion* GetObject() {
	return (StepGeom_SurfaceOfLinearExtrusion*)$self->Access();
	}
};
%extend Handle_StepGeom_SurfaceOfLinearExtrusion {
	~Handle_StepGeom_SurfaceOfLinearExtrusion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_SurfaceOfLinearExtrusion\n");}
	}
};

%nodefaultctor Handle_StepGeom_Plane;
class Handle_StepGeom_Plane : public Handle_StepGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Plane();
		%feature("autodoc", "1");
		Handle_StepGeom_Plane(const Handle_StepGeom_Plane &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Plane(const StepGeom_Plane *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Plane const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Plane {
	StepGeom_Plane* GetObject() {
	return (StepGeom_Plane*)$self->Access();
	}
};
%extend Handle_StepGeom_Plane {
	~Handle_StepGeom_Plane() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Plane\n");}
	}
};

%nodefaultctor Handle_StepGeom_PointReplica;
class Handle_StepGeom_PointReplica : public Handle_StepGeom_Point {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_PointReplica();
		%feature("autodoc", "1");
		Handle_StepGeom_PointReplica(const Handle_StepGeom_PointReplica &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_PointReplica(const StepGeom_PointReplica *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_PointReplica const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_PointReplica {
	StepGeom_PointReplica* GetObject() {
	return (StepGeom_PointReplica*)$self->Access();
	}
};
%extend Handle_StepGeom_PointReplica {
	~Handle_StepGeom_PointReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_PointReplica\n");}
	}
};

%nodefaultctor Handle_StepGeom_BezierCurve;
class Handle_StepGeom_BezierCurve : public Handle_StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BezierCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_BezierCurve(const Handle_StepGeom_BezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BezierCurve(const StepGeom_BezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BezierCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BezierCurve {
	StepGeom_BezierCurve* GetObject() {
	return (StepGeom_BezierCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_BezierCurve {
	~Handle_StepGeom_BezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BezierCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_SurfaceOfRevolution;
class Handle_StepGeom_SurfaceOfRevolution : public Handle_StepGeom_SweptSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceOfRevolution();
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceOfRevolution(const Handle_StepGeom_SurfaceOfRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceOfRevolution(const StepGeom_SurfaceOfRevolution *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceOfRevolution const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_SurfaceOfRevolution {
	StepGeom_SurfaceOfRevolution* GetObject() {
	return (StepGeom_SurfaceOfRevolution*)$self->Access();
	}
};
%extend Handle_StepGeom_SurfaceOfRevolution {
	~Handle_StepGeom_SurfaceOfRevolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_SurfaceOfRevolution\n");}
	}
};

%nodefaultctor Handle_StepGeom_TrimmingMember;
class Handle_StepGeom_TrimmingMember : public Handle_StepData_SelectReal {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_TrimmingMember();
		%feature("autodoc", "1");
		Handle_StepGeom_TrimmingMember(const Handle_StepGeom_TrimmingMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_TrimmingMember(const StepGeom_TrimmingMember *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_TrimmingMember const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_TrimmingMember {
	StepGeom_TrimmingMember* GetObject() {
	return (StepGeom_TrimmingMember*)$self->Access();
	}
};
%extend Handle_StepGeom_TrimmingMember {
	~Handle_StepGeom_TrimmingMember() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_TrimmingMember\n");}
	}
};

%nodefaultctor Handle_StepGeom_HArray1OfBoundaryCurve;
class Handle_StepGeom_HArray1OfBoundaryCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfBoundaryCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfBoundaryCurve(const Handle_StepGeom_HArray1OfBoundaryCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfBoundaryCurve(const StepGeom_HArray1OfBoundaryCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfBoundaryCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_HArray1OfBoundaryCurve {
	StepGeom_HArray1OfBoundaryCurve* GetObject() {
	return (StepGeom_HArray1OfBoundaryCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_HArray1OfBoundaryCurve {
	~Handle_StepGeom_HArray1OfBoundaryCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_HArray1OfBoundaryCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_BezierSurface;
class Handle_StepGeom_BezierSurface : public Handle_StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_BezierSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_BezierSurface(const Handle_StepGeom_BezierSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_BezierSurface(const StepGeom_BezierSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_BezierSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_BezierSurface {
	StepGeom_BezierSurface* GetObject() {
	return (StepGeom_BezierSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_BezierSurface {
	~Handle_StepGeom_BezierSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_BezierSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_CurveBoundedSurface;
class Handle_StepGeom_CurveBoundedSurface : public Handle_StepGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_CurveBoundedSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_CurveBoundedSurface(const Handle_StepGeom_CurveBoundedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_CurveBoundedSurface(const StepGeom_CurveBoundedSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_CurveBoundedSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_CurveBoundedSurface {
	StepGeom_CurveBoundedSurface* GetObject() {
	return (StepGeom_CurveBoundedSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_CurveBoundedSurface {
	~Handle_StepGeom_CurveBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_CurveBoundedSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_CurveReplica;
class Handle_StepGeom_CurveReplica : public Handle_StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_CurveReplica();
		%feature("autodoc", "1");
		Handle_StepGeom_CurveReplica(const Handle_StepGeom_CurveReplica &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_CurveReplica(const StepGeom_CurveReplica *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_CurveReplica const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_CurveReplica {
	StepGeom_CurveReplica* GetObject() {
	return (StepGeom_CurveReplica*)$self->Access();
	}
};
%extend Handle_StepGeom_CurveReplica {
	~Handle_StepGeom_CurveReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_CurveReplica\n");}
	}
};

%nodefaultctor Handle_StepGeom_UniformCurveAndRationalBSplineCurve;
class Handle_StepGeom_UniformCurveAndRationalBSplineCurve : public Handle_StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_UniformCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_UniformCurveAndRationalBSplineCurve(const Handle_StepGeom_UniformCurveAndRationalBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_UniformCurveAndRationalBSplineCurve(const StepGeom_UniformCurveAndRationalBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_UniformCurveAndRationalBSplineCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_UniformCurveAndRationalBSplineCurve {
	StepGeom_UniformCurveAndRationalBSplineCurve* GetObject() {
	return (StepGeom_UniformCurveAndRationalBSplineCurve*)$self->Access();
	}
};
%extend Handle_StepGeom_UniformCurveAndRationalBSplineCurve {
	~Handle_StepGeom_UniformCurveAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_UniformCurveAndRationalBSplineCurve\n");}
	}
};

%nodefaultctor Handle_StepGeom_Ellipse;
class Handle_StepGeom_Ellipse : public Handle_StepGeom_Conic {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Ellipse();
		%feature("autodoc", "1");
		Handle_StepGeom_Ellipse(const Handle_StepGeom_Ellipse &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Ellipse(const StepGeom_Ellipse *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Ellipse const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Ellipse {
	StepGeom_Ellipse* GetObject() {
	return (StepGeom_Ellipse*)$self->Access();
	}
};
%extend Handle_StepGeom_Ellipse {
	~Handle_StepGeom_Ellipse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Ellipse\n");}
	}
};

%nodefaultctor Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface;
class Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface : public Handle_StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface(const Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface(const StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface {
	StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface* GetObject() {
	return (StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface*)$self->Access();
	}
};
%extend Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface {
	~Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface\n");}
	}
};

%nodefaultctor Handle_StepGeom_GeometricRepresentationContext;
class Handle_StepGeom_GeometricRepresentationContext : public Handle_StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContext();
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContext(const Handle_StepGeom_GeometricRepresentationContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContext(const StepGeom_GeometricRepresentationContext *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_GeometricRepresentationContext {
	StepGeom_GeometricRepresentationContext* GetObject() {
	return (StepGeom_GeometricRepresentationContext*)$self->Access();
	}
};
%extend Handle_StepGeom_GeometricRepresentationContext {
	~Handle_StepGeom_GeometricRepresentationContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_GeometricRepresentationContext\n");}
	}
};

%nodefaultctor Handle_StepGeom_Line;
class Handle_StepGeom_Line : public Handle_StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_StepGeom_Line();
		%feature("autodoc", "1");
		Handle_StepGeom_Line(const Handle_StepGeom_Line &aHandle);
		%feature("autodoc", "1");
		Handle_StepGeom_Line(const StepGeom_Line *anItem);
		%feature("autodoc", "1");
		Handle_StepGeom_Line const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepGeom_Line {
	StepGeom_Line* GetObject() {
	return (StepGeom_Line*)$self->Access();
	}
};
%extend Handle_StepGeom_Line {
	~Handle_StepGeom_Line() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepGeom_Line\n");}
	}
};

%nodefaultctor StepGeom_GeometricRepresentationItem;
class StepGeom_GeometricRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepGeom_GeometricRepresentationItem();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_GeometricRepresentationItem {
	Handle_StepGeom_GeometricRepresentationItem GetHandle() {
	return *(Handle_StepGeom_GeometricRepresentationItem*) &$self;
	}
};
%extend StepGeom_GeometricRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_GeometricRepresentationItem {
	~StepGeom_GeometricRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_GeometricRepresentationItem\n");}
	}
};

%nodefaultctor StepGeom_Surface;
class StepGeom_Surface : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepGeom_Surface();

};
%extend StepGeom_Surface {
	Handle_StepGeom_Surface GetHandle() {
	return *(Handle_StepGeom_Surface*) &$self;
	}
};
%extend StepGeom_Surface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Surface {
	~StepGeom_Surface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Surface\n");}
	}
};

%nodefaultctor StepGeom_ElementarySurface;
class StepGeom_ElementarySurface : public StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		StepGeom_ElementarySurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis2Placement3d &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d Position() const;

};
%extend StepGeom_ElementarySurface {
	Handle_StepGeom_ElementarySurface GetHandle() {
	return *(Handle_StepGeom_ElementarySurface*) &$self;
	}
};
%extend StepGeom_ElementarySurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_ElementarySurface {
	~StepGeom_ElementarySurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_ElementarySurface\n");}
	}
};

%nodefaultctor StepGeom_HArray1OfCompositeCurveSegment;
class StepGeom_HArray1OfCompositeCurveSegment : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_HArray1OfCompositeCurveSegment(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_HArray1OfCompositeCurveSegment(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepGeom_CompositeCurveSegment &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_CompositeCurveSegment &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepGeom_CompositeCurveSegment &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_CompositeCurveSegment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveSegment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepGeom_Array1OfCompositeCurveSegment & Array1() const;
		%feature("autodoc", "1");
		StepGeom_Array1OfCompositeCurveSegment & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_HArray1OfCompositeCurveSegment {
	Handle_StepGeom_HArray1OfCompositeCurveSegment GetHandle() {
	return *(Handle_StepGeom_HArray1OfCompositeCurveSegment*) &$self;
	}
};
%extend StepGeom_HArray1OfCompositeCurveSegment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_HArray1OfCompositeCurveSegment {
	~StepGeom_HArray1OfCompositeCurveSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_HArray1OfCompositeCurveSegment\n");}
	}
};

%nodefaultctor StepGeom_Point;
class StepGeom_Point : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepGeom_Point();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Point {
	Handle_StepGeom_Point GetHandle() {
	return *(Handle_StepGeom_Point*) &$self;
	}
};
%extend StepGeom_Point {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Point {
	~StepGeom_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Point\n");}
	}
};

%nodefaultctor StepGeom_PointOnCurve;
class StepGeom_PointOnCurve : public StepGeom_Point {
	public:
		%feature("autodoc", "1");
		StepGeom_PointOnCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Curve &aBasisCurve, const Standard_Real aPointParameter);
		%feature("autodoc", "1");
		void SetBasisCurve(const Handle_StepGeom_Curve &aBasisCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve BasisCurve() const;
		%feature("autodoc", "1");
		void SetPointParameter(const Standard_Real aPointParameter);
		%feature("autodoc", "1");
		Standard_Real PointParameter() const;

};
%extend StepGeom_PointOnCurve {
	Handle_StepGeom_PointOnCurve GetHandle() {
	return *(Handle_StepGeom_PointOnCurve*) &$self;
	}
};
%extend StepGeom_PointOnCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_PointOnCurve {
	~StepGeom_PointOnCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_PointOnCurve\n");}
	}
};

%nodefaultctor StepGeom_Placement;
class StepGeom_Placement : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepGeom_Placement();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CartesianPoint &aLocation);
		%feature("autodoc", "1");
		void SetLocation(const Handle_StepGeom_CartesianPoint &aLocation);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint Location() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Placement {
	Handle_StepGeom_Placement GetHandle() {
	return *(Handle_StepGeom_Placement*) &$self;
	}
};
%extend StepGeom_Placement {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Placement {
	~StepGeom_Placement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Placement\n");}
	}
};

%nodefaultctor StepGeom_BoundedSurface;
class StepGeom_BoundedSurface : public StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		StepGeom_BoundedSurface();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_BoundedSurface {
	Handle_StepGeom_BoundedSurface GetHandle() {
	return *(Handle_StepGeom_BoundedSurface*) &$self;
	}
};
%extend StepGeom_BoundedSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BoundedSurface {
	~StepGeom_BoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BoundedSurface\n");}
	}
};

%nodefaultctor StepGeom_BSplineSurface;
class StepGeom_BSplineSurface : public StepGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_BSplineSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		void SetUDegree(const Standard_Integer aUDegree);
		%feature("autodoc", "1");
		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		void SetVDegree(const Standard_Integer aVDegree);
		%feature("autodoc", "1");
		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		void SetControlPointsList(const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray2OfCartesianPoint ControlPointsList() const;
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint ControlPointsListValue(const Standard_Integer num1, const Standard_Integer num2) const;
		%feature("autodoc", "1");
		Standard_Integer NbControlPointsListI() const;
		%feature("autodoc", "1");
		Standard_Integer NbControlPointsListJ() const;
		%feature("autodoc", "1");
		void SetSurfaceForm(const StepGeom_BSplineSurfaceForm aSurfaceForm);
		%feature("autodoc", "1");
		StepGeom_BSplineSurfaceForm SurfaceForm() const;
		%feature("autodoc", "1");
		void SetUClosed(const StepData_Logical aUClosed);
		%feature("autodoc", "1");
		StepData_Logical UClosed() const;
		%feature("autodoc", "1");
		void SetVClosed(const StepData_Logical aVClosed);
		%feature("autodoc", "1");
		StepData_Logical VClosed() const;
		%feature("autodoc", "1");
		void SetSelfIntersect(const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		StepData_Logical SelfIntersect() const;

};
%extend StepGeom_BSplineSurface {
	Handle_StepGeom_BSplineSurface GetHandle() {
	return *(Handle_StepGeom_BSplineSurface*) &$self;
	}
};
%extend StepGeom_BSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BSplineSurface {
	~StepGeom_BSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BSplineSurface\n");}
	}
};

%nodefaultctor StepGeom_UniformSurface;
class StepGeom_UniformSurface : public StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_UniformSurface();

};
%extend StepGeom_UniformSurface {
	Handle_StepGeom_UniformSurface GetHandle() {
	return *(Handle_StepGeom_UniformSurface*) &$self;
	}
};
%extend StepGeom_UniformSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_UniformSurface {
	~StepGeom_UniformSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_UniformSurface\n");}
	}
};

%nodefaultctor StepGeom_HArray1OfSurfaceBoundary;
class StepGeom_HArray1OfSurfaceBoundary : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_HArray1OfSurfaceBoundary(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_HArray1OfSurfaceBoundary(const Standard_Integer Low, const Standard_Integer Up, const StepGeom_SurfaceBoundary &V);
		%feature("autodoc", "1");
		void Init(const StepGeom_SurfaceBoundary &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepGeom_SurfaceBoundary &Value);
		%feature("autodoc", "1");
		const StepGeom_SurfaceBoundary & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepGeom_SurfaceBoundary & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepGeom_Array1OfSurfaceBoundary & Array1() const;
		%feature("autodoc", "1");
		StepGeom_Array1OfSurfaceBoundary & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_HArray1OfSurfaceBoundary {
	Handle_StepGeom_HArray1OfSurfaceBoundary GetHandle() {
	return *(Handle_StepGeom_HArray1OfSurfaceBoundary*) &$self;
	}
};
%extend StepGeom_HArray1OfSurfaceBoundary {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_HArray1OfSurfaceBoundary {
	~StepGeom_HArray1OfSurfaceBoundary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_HArray1OfSurfaceBoundary\n");}
	}
};

%nodefaultctor StepGeom_CompositeCurveSegment;
class StepGeom_CompositeCurveSegment : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_CompositeCurveSegment();
		%feature("autodoc", "1");
		virtual		void Init(const StepGeom_TransitionCode aTransition, const Standard_Boolean aSameSense, const Handle_StepGeom_Curve &aParentCurve);
		%feature("autodoc", "1");
		void SetTransition(const StepGeom_TransitionCode aTransition);
		%feature("autodoc", "1");
		StepGeom_TransitionCode Transition() const;
		%feature("autodoc", "1");
		void SetSameSense(const Standard_Boolean aSameSense);
		%feature("autodoc", "1");
		Standard_Boolean SameSense() const;
		%feature("autodoc", "1");
		void SetParentCurve(const Handle_StepGeom_Curve &aParentCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve ParentCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_CompositeCurveSegment {
	Handle_StepGeom_CompositeCurveSegment GetHandle() {
	return *(Handle_StepGeom_CompositeCurveSegment*) &$self;
	}
};
%extend StepGeom_CompositeCurveSegment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_CompositeCurveSegment {
	~StepGeom_CompositeCurveSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CompositeCurveSegment\n");}
	}
};

%nodefaultctor StepGeom_GeometricRepresentationContextAndParametricRepresentationContext;
class StepGeom_GeometricRepresentationContextAndParametricRepresentationContext : public StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		StepGeom_GeometricRepresentationContextAndParametricRepresentationContext();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Handle_StepGeom_GeometricRepresentationContext &aGeometricRepresentationContext, const Handle_StepRepr_ParametricRepresentationContext &aParametricRepresentationContext);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Standard_Integer aCoordinateSpaceDimension);
		%feature("autodoc", "1");
		void SetGeometricRepresentationContext(const Handle_StepGeom_GeometricRepresentationContext &aGeometricRepresentationContext);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContext GeometricRepresentationContext() const;
		%feature("autodoc", "1");
		void SetParametricRepresentationContext(const Handle_StepRepr_ParametricRepresentationContext &aParametricRepresentationContext);
		%feature("autodoc", "1");
		Handle_StepRepr_ParametricRepresentationContext ParametricRepresentationContext() const;
		%feature("autodoc", "1");
		void SetCoordinateSpaceDimension(const Standard_Integer aCoordinateSpaceDimension);
		%feature("autodoc", "1");
		Standard_Integer CoordinateSpaceDimension() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_GeometricRepresentationContextAndParametricRepresentationContext {
	Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext GetHandle() {
	return *(Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext*) &$self;
	}
};
%extend StepGeom_GeometricRepresentationContextAndParametricRepresentationContext {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_GeometricRepresentationContextAndParametricRepresentationContext {
	~StepGeom_GeometricRepresentationContextAndParametricRepresentationContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_GeometricRepresentationContextAndParametricRepresentationContext\n");}
	}
};

%nodefaultctor StepGeom_Plane;
class StepGeom_Plane : public StepGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		StepGeom_Plane();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Plane {
	Handle_StepGeom_Plane GetHandle() {
	return *(Handle_StepGeom_Plane*) &$self;
	}
};
%extend StepGeom_Plane {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Plane {
	~StepGeom_Plane() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Plane\n");}
	}
};

%nodefaultctor StepGeom_Curve;
class StepGeom_Curve : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepGeom_Curve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Curve {
	Handle_StepGeom_Curve GetHandle() {
	return *(Handle_StepGeom_Curve*) &$self;
	}
};
%extend StepGeom_Curve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Curve {
	~StepGeom_Curve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Curve\n");}
	}
};

%nodefaultctor StepGeom_BoundedCurve;
class StepGeom_BoundedCurve : public StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		StepGeom_BoundedCurve();

};
%extend StepGeom_BoundedCurve {
	Handle_StepGeom_BoundedCurve GetHandle() {
	return *(Handle_StepGeom_BoundedCurve*) &$self;
	}
};
%extend StepGeom_BoundedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BoundedCurve {
	~StepGeom_BoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BoundedCurve\n");}
	}
};

%nodefaultctor StepGeom_CompositeCurve;
class StepGeom_CompositeCurve : public StepGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_CompositeCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_HArray1OfCompositeCurveSegment &aSegments, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		void SetSegments(const Handle_StepGeom_HArray1OfCompositeCurveSegment &aSegments);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCompositeCurveSegment Segments() const;
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveSegment SegmentsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		void SetSelfIntersect(const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		StepData_Logical SelfIntersect() const;

};
%extend StepGeom_CompositeCurve {
	Handle_StepGeom_CompositeCurve GetHandle() {
	return *(Handle_StepGeom_CompositeCurve*) &$self;
	}
};
%extend StepGeom_CompositeCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_CompositeCurve {
	~StepGeom_CompositeCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CompositeCurve\n");}
	}
};

%nodefaultctor StepGeom_CompositeCurveOnSurface;
class StepGeom_CompositeCurveOnSurface : public StepGeom_CompositeCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_CompositeCurveOnSurface();

};
%extend StepGeom_CompositeCurveOnSurface {
	Handle_StepGeom_CompositeCurveOnSurface GetHandle() {
	return *(Handle_StepGeom_CompositeCurveOnSurface*) &$self;
	}
};
%extend StepGeom_CompositeCurveOnSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_CompositeCurveOnSurface {
	~StepGeom_CompositeCurveOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CompositeCurveOnSurface\n");}
	}
};

%nodefaultctor StepGeom_BoundaryCurve;
class StepGeom_BoundaryCurve : public StepGeom_CompositeCurveOnSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_BoundaryCurve();

};
%extend StepGeom_BoundaryCurve {
	Handle_StepGeom_BoundaryCurve GetHandle() {
	return *(Handle_StepGeom_BoundaryCurve*) &$self;
	}
};
%extend StepGeom_BoundaryCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BoundaryCurve {
	~StepGeom_BoundaryCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BoundaryCurve\n");}
	}
};

%nodefaultctor StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
class StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface : public StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect, const Handle_StepGeom_BSplineSurfaceWithKnots &aBSplineSurfaceWithKnots, const Handle_StepGeom_RationalBSplineSurface &aRationalBSplineSurface);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray1OfInteger &aUMultiplicities, const Handle_TColStd_HArray1OfInteger &aVMultiplicities, const Handle_TColStd_HArray1OfReal &aUKnots, const Handle_TColStd_HArray1OfReal &aVKnots, const StepGeom_KnotType aKnotSpec, const Handle_TColStd_HArray2OfReal &aWeightsData);
		%feature("autodoc", "1");
		void SetBSplineSurfaceWithKnots(const Handle_StepGeom_BSplineSurfaceWithKnots &aBSplineSurfaceWithKnots);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineSurfaceWithKnots BSplineSurfaceWithKnots() const;
		%feature("autodoc", "1");
		void SetRationalBSplineSurface(const Handle_StepGeom_RationalBSplineSurface &aRationalBSplineSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineSurface RationalBSplineSurface() const;
		%feature("autodoc", "1");
		void SetUMultiplicities(const Handle_TColStd_HArray1OfInteger &aUMultiplicities);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger UMultiplicities() const;
		%feature("autodoc", "1");
		Standard_Integer UMultiplicitiesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUMultiplicities() const;
		%feature("autodoc", "1");
		void SetVMultiplicities(const Handle_TColStd_HArray1OfInteger &aVMultiplicities);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger VMultiplicities() const;
		%feature("autodoc", "1");
		Standard_Integer VMultiplicitiesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbVMultiplicities() const;
		%feature("autodoc", "1");
		void SetUKnots(const Handle_TColStd_HArray1OfReal &aUKnots);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal UKnots() const;
		%feature("autodoc", "1");
		Standard_Real UKnotsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUKnots() const;
		%feature("autodoc", "1");
		void SetVKnots(const Handle_TColStd_HArray1OfReal &aVKnots);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal VKnots() const;
		%feature("autodoc", "1");
		Standard_Real VKnotsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbVKnots() const;
		%feature("autodoc", "1");
		void SetKnotSpec(const StepGeom_KnotType aKnotSpec);
		%feature("autodoc", "1");
		StepGeom_KnotType KnotSpec() const;
		%feature("autodoc", "1");
		void SetWeightsData(const Handle_TColStd_HArray2OfReal &aWeightsData);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal WeightsData() const;
		%feature("autodoc", "1");
		Standard_Real WeightsDataValue(const Standard_Integer num1, const Standard_Integer num2) const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsDataI() const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsDataJ() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface {
	Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface GetHandle() {
	return *(Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface*) &$self;
	}
};
%extend StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface {
	~StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface\n");}
	}
};

%nodefaultctor StepGeom_PointReplica;
class StepGeom_PointReplica : public StepGeom_Point {
	public:
		%feature("autodoc", "1");
		StepGeom_PointReplica();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Point &aParentPt, const Handle_StepGeom_CartesianTransformationOperator &aTransformation);
		%feature("autodoc", "1");
		void SetParentPt(const Handle_StepGeom_Point &aParentPt);
		%feature("autodoc", "1");
		Handle_StepGeom_Point ParentPt() const;
		%feature("autodoc", "1");
		void SetTransformation(const Handle_StepGeom_CartesianTransformationOperator &aTransformation);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator Transformation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_PointReplica {
	Handle_StepGeom_PointReplica GetHandle() {
	return *(Handle_StepGeom_PointReplica*) &$self;
	}
};
%extend StepGeom_PointReplica {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_PointReplica {
	~StepGeom_PointReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_PointReplica\n");}
	}
};

%nodefaultctor StepGeom_PcurveOrSurface;
class StepGeom_PcurveOrSurface : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepGeom_PcurveOrSurface();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepGeom_Pcurve Pcurve() const;
		%feature("autodoc", "1");
		Handle_StepGeom_Surface Surface() const;

};
%extend StepGeom_PcurveOrSurface {
	~StepGeom_PcurveOrSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_PcurveOrSurface\n");}
	}
};

%nodefaultctor StepGeom_SphericalSurface;
class StepGeom_SphericalSurface : public StepGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		StepGeom_SphericalSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition, const Standard_Real aRadius);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_SphericalSurface {
	Handle_StepGeom_SphericalSurface GetHandle() {
	return *(Handle_StepGeom_SphericalSurface*) &$self;
	}
};
%extend StepGeom_SphericalSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_SphericalSurface {
	~StepGeom_SphericalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_SphericalSurface\n");}
	}
};

%nodefaultctor StepGeom_BSplineCurve;
class StepGeom_BSplineCurve : public StepGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_BSplineCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		void SetDegree(const Standard_Integer aDegree);
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		void SetControlPointsList(const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCartesianPoint ControlPointsList() const;
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint ControlPointsListValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbControlPointsList() const;
		%feature("autodoc", "1");
		void SetCurveForm(const StepGeom_BSplineCurveForm aCurveForm);
		%feature("autodoc", "1");
		StepGeom_BSplineCurveForm CurveForm() const;
		%feature("autodoc", "1");
		void SetClosedCurve(const StepData_Logical aClosedCurve);
		%feature("autodoc", "1");
		StepData_Logical ClosedCurve() const;
		%feature("autodoc", "1");
		void SetSelfIntersect(const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		StepData_Logical SelfIntersect() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_BSplineCurve {
	Handle_StepGeom_BSplineCurve GetHandle() {
	return *(Handle_StepGeom_BSplineCurve*) &$self;
	}
};
%extend StepGeom_BSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BSplineCurve {
	~StepGeom_BSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BSplineCurve\n");}
	}
};

%nodefaultctor StepGeom_BSplineCurveWithKnots;
class StepGeom_BSplineCurveWithKnots : public StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_BSplineCurveWithKnots();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray1OfInteger &aKnotMultiplicities, const Handle_TColStd_HArray1OfReal &aKnots, const StepGeom_KnotType aKnotSpec);
		%feature("autodoc", "1");
		void SetKnotMultiplicities(const Handle_TColStd_HArray1OfInteger &aKnotMultiplicities);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger KnotMultiplicities() const;
		%feature("autodoc", "1");
		Standard_Integer KnotMultiplicitiesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnotMultiplicities() const;
		%feature("autodoc", "1");
		void SetKnots(const Handle_TColStd_HArray1OfReal &aKnots);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Knots() const;
		%feature("autodoc", "1");
		Standard_Real KnotsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void SetKnotSpec(const StepGeom_KnotType aKnotSpec);
		%feature("autodoc", "1");
		StepGeom_KnotType KnotSpec() const;

};
%extend StepGeom_BSplineCurveWithKnots {
	Handle_StepGeom_BSplineCurveWithKnots GetHandle() {
	return *(Handle_StepGeom_BSplineCurveWithKnots*) &$self;
	}
};
%extend StepGeom_BSplineCurveWithKnots {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BSplineCurveWithKnots {
	~StepGeom_BSplineCurveWithKnots() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BSplineCurveWithKnots\n");}
	}
};

%nodefaultctor StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
class StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve : public StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect, const Handle_StepGeom_BSplineCurveWithKnots &aBSplineCurveWithKnots, const Handle_StepGeom_RationalBSplineCurve &aRationalBSplineCurve);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray1OfInteger &aKnotMultiplicities, const Handle_TColStd_HArray1OfReal &aKnots, const StepGeom_KnotType aKnotSpec, const Handle_TColStd_HArray1OfReal &aWeightsData);
		%feature("autodoc", "1");
		void SetBSplineCurveWithKnots(const Handle_StepGeom_BSplineCurveWithKnots &aBSplineCurveWithKnots);
		%feature("autodoc", "1");
		Handle_StepGeom_BSplineCurveWithKnots BSplineCurveWithKnots() const;
		%feature("autodoc", "1");
		void SetRationalBSplineCurve(const Handle_StepGeom_RationalBSplineCurve &aRationalBSplineCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineCurve RationalBSplineCurve() const;
		%feature("autodoc", "1");
		void SetKnotMultiplicities(const Handle_TColStd_HArray1OfInteger &aKnotMultiplicities);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger KnotMultiplicities() const;
		%feature("autodoc", "1");
		Standard_Integer KnotMultiplicitiesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnotMultiplicities() const;
		%feature("autodoc", "1");
		void SetKnots(const Handle_TColStd_HArray1OfReal &aKnots);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Knots() const;
		%feature("autodoc", "1");
		Standard_Real KnotsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void SetKnotSpec(const StepGeom_KnotType aKnotSpec);
		%feature("autodoc", "1");
		StepGeom_KnotType KnotSpec() const;
		%feature("autodoc", "1");
		void SetWeightsData(const Handle_TColStd_HArray1OfReal &aWeightsData);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal WeightsData() const;
		%feature("autodoc", "1");
		Standard_Real WeightsDataValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve {
	Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve GetHandle() {
	return *(Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve*) &$self;
	}
};
%extend StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve {
	~StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve\n");}
	}
};

%nodefaultctor StepGeom_CartesianTransformationOperator;
class StepGeom_CartesianTransformationOperator : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepGeom_CartesianTransformationOperator();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasAaxis1, const Handle_StepGeom_Direction &aAxis1, const Standard_Boolean hasAaxis2, const Handle_StepGeom_Direction &aAxis2, const Handle_StepGeom_CartesianPoint &aLocalOrigin, const Standard_Boolean hasAscale, const Standard_Real aScale);
		%feature("autodoc", "1");
		void SetAxis1(const Handle_StepGeom_Direction &aAxis1);
		%feature("autodoc", "1");
		void UnSetAxis1();
		%feature("autodoc", "1");
		Handle_StepGeom_Direction Axis1() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAxis1() const;
		%feature("autodoc", "1");
		void SetAxis2(const Handle_StepGeom_Direction &aAxis2);
		%feature("autodoc", "1");
		void UnSetAxis2();
		%feature("autodoc", "1");
		Handle_StepGeom_Direction Axis2() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAxis2() const;
		%feature("autodoc", "1");
		void SetLocalOrigin(const Handle_StepGeom_CartesianPoint &aLocalOrigin);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint LocalOrigin() const;
		%feature("autodoc", "1");
		void SetScale(const Standard_Real aScale);
		%feature("autodoc", "1");
		void UnSetScale();
		%feature("autodoc", "1");
		Standard_Real Scale() const;
		%feature("autodoc", "1");
		Standard_Boolean HasScale() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_CartesianTransformationOperator {
	Handle_StepGeom_CartesianTransformationOperator GetHandle() {
	return *(Handle_StepGeom_CartesianTransformationOperator*) &$self;
	}
};
%extend StepGeom_CartesianTransformationOperator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_CartesianTransformationOperator {
	~StepGeom_CartesianTransformationOperator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CartesianTransformationOperator\n");}
	}
};

%nodefaultctor StepGeom_Pcurve;
class StepGeom_Pcurve : public StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		StepGeom_Pcurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBasisSurface, const Handle_StepRepr_DefinitionalRepresentation &aReferenceToCurve);
		%feature("autodoc", "1");
		void SetBasisSurface(const Handle_StepGeom_Surface &aBasisSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		void SetReferenceToCurve(const Handle_StepRepr_DefinitionalRepresentation &aReferenceToCurve);
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation ReferenceToCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Pcurve {
	Handle_StepGeom_Pcurve GetHandle() {
	return *(Handle_StepGeom_Pcurve*) &$self;
	}
};
%extend StepGeom_Pcurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Pcurve {
	~StepGeom_Pcurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Pcurve\n");}
	}
};

%nodefaultctor StepGeom_VectorOrDirection;
class StepGeom_VectorOrDirection : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepGeom_VectorOrDirection();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepGeom_Vector Vector() const;
		%feature("autodoc", "1");
		Handle_StepGeom_Direction Direction() const;

};
%extend StepGeom_VectorOrDirection {
	~StepGeom_VectorOrDirection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_VectorOrDirection\n");}
	}
};

%nodefaultctor StepGeom_Array1OfTrimmingSelect;
class StepGeom_Array1OfTrimmingSelect {
	public:
		%feature("autodoc", "1");
		StepGeom_Array1OfTrimmingSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_Array1OfTrimmingSelect(const StepGeom_TrimmingSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepGeom_TrimmingSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepGeom_Array1OfTrimmingSelect & Assign(const StepGeom_Array1OfTrimmingSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepGeom_TrimmingSelect &Value);
		%feature("autodoc", "1");
		const StepGeom_TrimmingSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepGeom_TrimmingSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepGeom_TrimmingSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepGeom_TrimmingSelect & operator()(const Standard_Integer Index);

};
%extend StepGeom_Array1OfTrimmingSelect {
	~StepGeom_Array1OfTrimmingSelect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Array1OfTrimmingSelect\n");}
	}
};

%nodefaultctor StepGeom_Array1OfBoundaryCurve;
class StepGeom_Array1OfBoundaryCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_Array1OfBoundaryCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_Array1OfBoundaryCurve(const Handle_StepGeom_BoundaryCurve &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_BoundaryCurve &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepGeom_Array1OfBoundaryCurve & Assign(const StepGeom_Array1OfBoundaryCurve &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepGeom_BoundaryCurve &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_BoundaryCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepGeom_BoundaryCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepGeom_BoundaryCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepGeom_BoundaryCurve & operator()(const Standard_Integer Index);

};
%extend StepGeom_Array1OfBoundaryCurve {
	~StepGeom_Array1OfBoundaryCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Array1OfBoundaryCurve\n");}
	}
};

%nodefaultctor StepGeom_Polyline;
class StepGeom_Polyline : public StepGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_Polyline();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_HArray1OfCartesianPoint &aPoints);
		%feature("autodoc", "1");
		void SetPoints(const Handle_StepGeom_HArray1OfCartesianPoint &aPoints);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCartesianPoint Points() const;
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint PointsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Polyline {
	Handle_StepGeom_Polyline GetHandle() {
	return *(Handle_StepGeom_Polyline*) &$self;
	}
};
%extend StepGeom_Polyline {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Polyline {
	~StepGeom_Polyline() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Polyline\n");}
	}
};

%nodefaultctor StepGeom_CurveBoundedSurface;
class StepGeom_CurveBoundedSurface : public StepGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_CurveBoundedSurface();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepGeom_Surface &aBasisSurface, const Handle_StepGeom_HArray1OfSurfaceBoundary &aBoundaries, const Standard_Boolean aImplicitOuter);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		void SetBasisSurface(const Handle_StepGeom_Surface &BasisSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfSurfaceBoundary Boundaries() const;
		%feature("autodoc", "1");
		void SetBoundaries(const Handle_StepGeom_HArray1OfSurfaceBoundary &Boundaries);
		%feature("autodoc", "1");
		Standard_Boolean ImplicitOuter() const;
		%feature("autodoc", "1");
		void SetImplicitOuter(const Standard_Boolean ImplicitOuter);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_CurveBoundedSurface {
	Handle_StepGeom_CurveBoundedSurface GetHandle() {
	return *(Handle_StepGeom_CurveBoundedSurface*) &$self;
	}
};
%extend StepGeom_CurveBoundedSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_CurveBoundedSurface {
	~StepGeom_CurveBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CurveBoundedSurface\n");}
	}
};

%nodefaultctor StepGeom_BSplineSurfaceWithKnots;
class StepGeom_BSplineSurfaceWithKnots : public StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_BSplineSurfaceWithKnots();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray1OfInteger &aUMultiplicities, const Handle_TColStd_HArray1OfInteger &aVMultiplicities, const Handle_TColStd_HArray1OfReal &aUKnots, const Handle_TColStd_HArray1OfReal &aVKnots, const StepGeom_KnotType aKnotSpec);
		%feature("autodoc", "1");
		void SetUMultiplicities(const Handle_TColStd_HArray1OfInteger &aUMultiplicities);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger UMultiplicities() const;
		%feature("autodoc", "1");
		Standard_Integer UMultiplicitiesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUMultiplicities() const;
		%feature("autodoc", "1");
		void SetVMultiplicities(const Handle_TColStd_HArray1OfInteger &aVMultiplicities);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger VMultiplicities() const;
		%feature("autodoc", "1");
		Standard_Integer VMultiplicitiesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbVMultiplicities() const;
		%feature("autodoc", "1");
		void SetUKnots(const Handle_TColStd_HArray1OfReal &aUKnots);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal UKnots() const;
		%feature("autodoc", "1");
		Standard_Real UKnotsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUKnots() const;
		%feature("autodoc", "1");
		void SetVKnots(const Handle_TColStd_HArray1OfReal &aVKnots);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal VKnots() const;
		%feature("autodoc", "1");
		Standard_Real VKnotsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbVKnots() const;
		%feature("autodoc", "1");
		void SetKnotSpec(const StepGeom_KnotType aKnotSpec);
		%feature("autodoc", "1");
		StepGeom_KnotType KnotSpec() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_BSplineSurfaceWithKnots {
	Handle_StepGeom_BSplineSurfaceWithKnots GetHandle() {
	return *(Handle_StepGeom_BSplineSurfaceWithKnots*) &$self;
	}
};
%extend StepGeom_BSplineSurfaceWithKnots {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BSplineSurfaceWithKnots {
	~StepGeom_BSplineSurfaceWithKnots() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BSplineSurfaceWithKnots\n");}
	}
};

%nodefaultctor StepGeom_SurfaceCurve;
class StepGeom_SurfaceCurve : public StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		StepGeom_SurfaceCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Curve &aCurve3d, const Handle_StepGeom_HArray1OfPcurveOrSurface &aAssociatedGeometry, const StepGeom_PreferredSurfaceCurveRepresentation aMasterRepresentation);
		%feature("autodoc", "1");
		void SetCurve3d(const Handle_StepGeom_Curve &aCurve3d);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve Curve3d() const;
		%feature("autodoc", "1");
		void SetAssociatedGeometry(const Handle_StepGeom_HArray1OfPcurveOrSurface &aAssociatedGeometry);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfPcurveOrSurface AssociatedGeometry() const;
		%feature("autodoc", "1");
		StepGeom_PcurveOrSurface AssociatedGeometryValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbAssociatedGeometry() const;
		%feature("autodoc", "1");
		void SetMasterRepresentation(const StepGeom_PreferredSurfaceCurveRepresentation aMasterRepresentation);
		%feature("autodoc", "1");
		StepGeom_PreferredSurfaceCurveRepresentation MasterRepresentation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_SurfaceCurve {
	Handle_StepGeom_SurfaceCurve GetHandle() {
	return *(Handle_StepGeom_SurfaceCurve*) &$self;
	}
};
%extend StepGeom_SurfaceCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_SurfaceCurve {
	~StepGeom_SurfaceCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_SurfaceCurve\n");}
	}
};

%nodefaultctor StepGeom_SurfaceCurveAndBoundedCurve;
class StepGeom_SurfaceCurveAndBoundedCurve : public StepGeom_SurfaceCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_SurfaceCurveAndBoundedCurve();
		%feature("autodoc", "1");
		Handle_StepGeom_BoundedCurve & BoundedCurve();

};
%extend StepGeom_SurfaceCurveAndBoundedCurve {
	Handle_StepGeom_SurfaceCurveAndBoundedCurve GetHandle() {
	return *(Handle_StepGeom_SurfaceCurveAndBoundedCurve*) &$self;
	}
};
%extend StepGeom_SurfaceCurveAndBoundedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_SurfaceCurveAndBoundedCurve {
	~StepGeom_SurfaceCurveAndBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_SurfaceCurveAndBoundedCurve\n");}
	}
};

%nodefaultctor StepGeom_OrientedSurface;
class StepGeom_OrientedSurface : public StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		StepGeom_OrientedSurface();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean Orientation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_OrientedSurface {
	Handle_StepGeom_OrientedSurface GetHandle() {
	return *(Handle_StepGeom_OrientedSurface*) &$self;
	}
};
%extend StepGeom_OrientedSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_OrientedSurface {
	~StepGeom_OrientedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_OrientedSurface\n");}
	}
};

%nodefaultctor StepGeom_PointOnSurface;
class StepGeom_PointOnSurface : public StepGeom_Point {
	public:
		%feature("autodoc", "1");
		StepGeom_PointOnSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBasisSurface, const Standard_Real aPointParameterU, const Standard_Real aPointParameterV);
		%feature("autodoc", "1");
		void SetBasisSurface(const Handle_StepGeom_Surface &aBasisSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		void SetPointParameterU(const Standard_Real aPointParameterU);
		%feature("autodoc", "1");
		Standard_Real PointParameterU() const;
		%feature("autodoc", "1");
		void SetPointParameterV(const Standard_Real aPointParameterV);
		%feature("autodoc", "1");
		Standard_Real PointParameterV() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_PointOnSurface {
	Handle_StepGeom_PointOnSurface GetHandle() {
	return *(Handle_StepGeom_PointOnSurface*) &$self;
	}
};
%extend StepGeom_PointOnSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_PointOnSurface {
	~StepGeom_PointOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_PointOnSurface\n");}
	}
};

%nodefaultctor StepGeom_TrimmedCurve;
class StepGeom_TrimmedCurve : public StepGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_TrimmedCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Curve &aBasisCurve, const Handle_StepGeom_HArray1OfTrimmingSelect &aTrim1, const Handle_StepGeom_HArray1OfTrimmingSelect &aTrim2, const Standard_Boolean aSenseAgreement, const StepGeom_TrimmingPreference aMasterRepresentation);
		%feature("autodoc", "1");
		void SetBasisCurve(const Handle_StepGeom_Curve &aBasisCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve BasisCurve() const;
		%feature("autodoc", "1");
		void SetTrim1(const Handle_StepGeom_HArray1OfTrimmingSelect &aTrim1);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfTrimmingSelect Trim1() const;
		%feature("autodoc", "1");
		StepGeom_TrimmingSelect Trim1Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbTrim1() const;
		%feature("autodoc", "1");
		void SetTrim2(const Handle_StepGeom_HArray1OfTrimmingSelect &aTrim2);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfTrimmingSelect Trim2() const;
		%feature("autodoc", "1");
		StepGeom_TrimmingSelect Trim2Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbTrim2() const;
		%feature("autodoc", "1");
		void SetSenseAgreement(const Standard_Boolean aSenseAgreement);
		%feature("autodoc", "1");
		Standard_Boolean SenseAgreement() const;
		%feature("autodoc", "1");
		void SetMasterRepresentation(const StepGeom_TrimmingPreference aMasterRepresentation);
		%feature("autodoc", "1");
		StepGeom_TrimmingPreference MasterRepresentation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_TrimmedCurve {
	Handle_StepGeom_TrimmedCurve GetHandle() {
	return *(Handle_StepGeom_TrimmedCurve*) &$self;
	}
};
%extend StepGeom_TrimmedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_TrimmedCurve {
	~StepGeom_TrimmedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_TrimmedCurve\n");}
	}
};

%nodefaultctor StepGeom_SurfaceBoundary;
class StepGeom_SurfaceBoundary : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepGeom_SurfaceBoundary();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepGeom_BoundaryCurve BoundaryCurve() const;
		%feature("autodoc", "1");
		Handle_StepGeom_DegeneratePcurve DegeneratePcurve() const;

};
%extend StepGeom_SurfaceBoundary {
	~StepGeom_SurfaceBoundary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_SurfaceBoundary\n");}
	}
};

%nodefaultctor StepGeom_Conic;
class StepGeom_Conic : public StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		StepGeom_Conic();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepGeom_Axis2Placement &aPosition);
		%feature("autodoc", "1");
		void SetPosition(const StepGeom_Axis2Placement &aPosition);
		%feature("autodoc", "1");
		StepGeom_Axis2Placement Position() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Conic {
	Handle_StepGeom_Conic GetHandle() {
	return *(Handle_StepGeom_Conic*) &$self;
	}
};
%extend StepGeom_Conic {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Conic {
	~StepGeom_Conic() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Conic\n");}
	}
};

%nodefaultctor StepGeom_Circle;
class StepGeom_Circle : public StepGeom_Conic {
	public:
		%feature("autodoc", "1");
		StepGeom_Circle();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepGeom_Axis2Placement &aPosition, const Standard_Real aRadius);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;

};
%extend StepGeom_Circle {
	Handle_StepGeom_Circle GetHandle() {
	return *(Handle_StepGeom_Circle*) &$self;
	}
};
%extend StepGeom_Circle {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Circle {
	~StepGeom_Circle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Circle\n");}
	}
};

%nodefaultctor StepGeom_DegeneratePcurve;
class StepGeom_DegeneratePcurve : public StepGeom_Point {
	public:
		%feature("autodoc", "1");
		StepGeom_DegeneratePcurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBasisSurface, const Handle_StepRepr_DefinitionalRepresentation &aReferenceToCurve);
		%feature("autodoc", "1");
		void SetBasisSurface(const Handle_StepGeom_Surface &aBasisSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		void SetReferenceToCurve(const Handle_StepRepr_DefinitionalRepresentation &aReferenceToCurve);
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation ReferenceToCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_DegeneratePcurve {
	Handle_StepGeom_DegeneratePcurve GetHandle() {
	return *(Handle_StepGeom_DegeneratePcurve*) &$self;
	}
};
%extend StepGeom_DegeneratePcurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_DegeneratePcurve {
	~StepGeom_DegeneratePcurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_DegeneratePcurve\n");}
	}
};

%nodefaultctor StepGeom_Array1OfCartesianPoint;
class StepGeom_Array1OfCartesianPoint {
	public:
		%feature("autodoc", "1");
		StepGeom_Array1OfCartesianPoint(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_Array1OfCartesianPoint(const Handle_StepGeom_CartesianPoint &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_CartesianPoint &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepGeom_Array1OfCartesianPoint & Assign(const StepGeom_Array1OfCartesianPoint &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepGeom_CartesianPoint &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_CartesianPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepGeom_CartesianPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint & operator()(const Standard_Integer Index);

};
%extend StepGeom_Array1OfCartesianPoint {
	~StepGeom_Array1OfCartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Array1OfCartesianPoint\n");}
	}
};

%nodefaultctor StepGeom_ReparametrisedCompositeCurveSegment;
class StepGeom_ReparametrisedCompositeCurveSegment : public StepGeom_CompositeCurveSegment {
	public:
		%feature("autodoc", "1");
		StepGeom_ReparametrisedCompositeCurveSegment();
		%feature("autodoc", "1");
		virtual		void Init(const StepGeom_TransitionCode aTransition, const Standard_Boolean aSameSense, const Handle_StepGeom_Curve &aParentCurve);
		%feature("autodoc", "1");
		virtual		void Init(const StepGeom_TransitionCode aTransition, const Standard_Boolean aSameSense, const Handle_StepGeom_Curve &aParentCurve, const Standard_Real aParamLength);
		%feature("autodoc", "1");
		void SetParamLength(const Standard_Real aParamLength);
		%feature("autodoc", "1");
		Standard_Real ParamLength() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_ReparametrisedCompositeCurveSegment {
	Handle_StepGeom_ReparametrisedCompositeCurveSegment GetHandle() {
	return *(Handle_StepGeom_ReparametrisedCompositeCurveSegment*) &$self;
	}
};
%extend StepGeom_ReparametrisedCompositeCurveSegment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_ReparametrisedCompositeCurveSegment {
	~StepGeom_ReparametrisedCompositeCurveSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_ReparametrisedCompositeCurveSegment\n");}
	}
};

%nodefaultctor StepGeom_RectangularCompositeSurface;
class StepGeom_RectangularCompositeSurface : public StepGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_RectangularCompositeSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_HArray2OfSurfacePatch &aSegments);
		%feature("autodoc", "1");
		void SetSegments(const Handle_StepGeom_HArray2OfSurfacePatch &aSegments);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray2OfSurfacePatch Segments() const;
		%feature("autodoc", "1");
		Handle_StepGeom_SurfacePatch SegmentsValue(const Standard_Integer num1, const Standard_Integer num2) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegmentsI() const;
		%feature("autodoc", "1");
		Standard_Integer NbSegmentsJ() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_RectangularCompositeSurface {
	Handle_StepGeom_RectangularCompositeSurface GetHandle() {
	return *(Handle_StepGeom_RectangularCompositeSurface*) &$self;
	}
};
%extend StepGeom_RectangularCompositeSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_RectangularCompositeSurface {
	~StepGeom_RectangularCompositeSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_RectangularCompositeSurface\n");}
	}
};

%nodefaultctor StepGeom_HArray1OfCurve;
class StepGeom_HArray1OfCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_HArray1OfCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_HArray1OfCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepGeom_Curve &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_Curve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepGeom_Curve &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepGeom_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepGeom_Array1OfCurve & Array1() const;
		%feature("autodoc", "1");
		StepGeom_Array1OfCurve & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_HArray1OfCurve {
	Handle_StepGeom_HArray1OfCurve GetHandle() {
	return *(Handle_StepGeom_HArray1OfCurve*) &$self;
	}
};
%extend StepGeom_HArray1OfCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_HArray1OfCurve {
	~StepGeom_HArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_HArray1OfCurve\n");}
	}
};

%nodefaultctor StepGeom_OuterBoundaryCurve;
class StepGeom_OuterBoundaryCurve : public StepGeom_BoundaryCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_OuterBoundaryCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_OuterBoundaryCurve {
	Handle_StepGeom_OuterBoundaryCurve GetHandle() {
	return *(Handle_StepGeom_OuterBoundaryCurve*) &$self;
	}
};
%extend StepGeom_OuterBoundaryCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_OuterBoundaryCurve {
	~StepGeom_OuterBoundaryCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_OuterBoundaryCurve\n");}
	}
};

%nodefaultctor StepGeom_BezierCurveAndRationalBSplineCurve;
class StepGeom_BezierCurveAndRationalBSplineCurve : public StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_BezierCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect, const Handle_StepGeom_BezierCurve &aBezierCurve, const Handle_StepGeom_RationalBSplineCurve &aRationalBSplineCurve);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray1OfReal &aWeightsData);
		%feature("autodoc", "1");
		void SetBezierCurve(const Handle_StepGeom_BezierCurve &aBezierCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_BezierCurve BezierCurve() const;
		%feature("autodoc", "1");
		void SetRationalBSplineCurve(const Handle_StepGeom_RationalBSplineCurve &aRationalBSplineCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineCurve RationalBSplineCurve() const;
		%feature("autodoc", "1");
		void SetWeightsData(const Handle_TColStd_HArray1OfReal &aWeightsData);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal WeightsData() const;
		%feature("autodoc", "1");
		Standard_Real WeightsDataValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_BezierCurveAndRationalBSplineCurve {
	Handle_StepGeom_BezierCurveAndRationalBSplineCurve GetHandle() {
	return *(Handle_StepGeom_BezierCurveAndRationalBSplineCurve*) &$self;
	}
};
%extend StepGeom_BezierCurveAndRationalBSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BezierCurveAndRationalBSplineCurve {
	~StepGeom_BezierCurveAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BezierCurveAndRationalBSplineCurve\n");}
	}
};

%nodefaultctor StepGeom_Array1OfCurve;
class StepGeom_Array1OfCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_Array1OfCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_Array1OfCurve(const Handle_StepGeom_Curve &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_Curve &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepGeom_Array1OfCurve & Assign(const StepGeom_Array1OfCurve &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepGeom_Curve &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepGeom_Curve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepGeom_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve & operator()(const Standard_Integer Index);

};
%extend StepGeom_Array1OfCurve {
	~StepGeom_Array1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Array1OfCurve\n");}
	}
};

%nodefaultctor StepGeom_Array2OfCartesianPoint;
class StepGeom_Array2OfCartesianPoint {
	public:
		%feature("autodoc", "1");
		StepGeom_Array2OfCartesianPoint(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		StepGeom_Array2OfCartesianPoint(const Handle_StepGeom_CartesianPoint &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_CartesianPoint &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const StepGeom_Array2OfCartesianPoint & Assign(const StepGeom_Array2OfCartesianPoint &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_StepGeom_CartesianPoint &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_CartesianPoint & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Handle_StepGeom_CartesianPoint & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend StepGeom_Array2OfCartesianPoint {
	~StepGeom_Array2OfCartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Array2OfCartesianPoint\n");}
	}
};

%nodefaultctor StepGeom_Axis1Placement;
class StepGeom_Axis1Placement : public StepGeom_Placement {
	public:
		%feature("autodoc", "1");
		StepGeom_Axis1Placement();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CartesianPoint &aLocation);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CartesianPoint &aLocation, const Standard_Boolean hasAaxis, const Handle_StepGeom_Direction &aAxis);
		%feature("autodoc", "1");
		void SetAxis(const Handle_StepGeom_Direction &aAxis);
		%feature("autodoc", "1");
		void UnSetAxis();
		%feature("autodoc", "1");
		Handle_StepGeom_Direction Axis() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Axis1Placement {
	Handle_StepGeom_Axis1Placement GetHandle() {
	return *(Handle_StepGeom_Axis1Placement*) &$self;
	}
};
%extend StepGeom_Axis1Placement {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Axis1Placement {
	~StepGeom_Axis1Placement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Axis1Placement\n");}
	}
};

%nodefaultctor StepGeom_BezierSurfaceAndRationalBSplineSurface;
class StepGeom_BezierSurfaceAndRationalBSplineSurface : public StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_BezierSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect, const Handle_StepGeom_BezierSurface &aBezierSurface, const Handle_StepGeom_RationalBSplineSurface &aRationalBSplineSurface);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray2OfReal &aWeightsData);
		%feature("autodoc", "1");
		void SetBezierSurface(const Handle_StepGeom_BezierSurface &aBezierSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_BezierSurface BezierSurface() const;
		%feature("autodoc", "1");
		void SetRationalBSplineSurface(const Handle_StepGeom_RationalBSplineSurface &aRationalBSplineSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineSurface RationalBSplineSurface() const;
		%feature("autodoc", "1");
		void SetWeightsData(const Handle_TColStd_HArray2OfReal &aWeightsData);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal WeightsData() const;
		%feature("autodoc", "1");
		Standard_Real WeightsDataValue(const Standard_Integer num1, const Standard_Integer num2) const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsDataI() const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsDataJ() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_BezierSurfaceAndRationalBSplineSurface {
	Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface GetHandle() {
	return *(Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface*) &$self;
	}
};
%extend StepGeom_BezierSurfaceAndRationalBSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BezierSurfaceAndRationalBSplineSurface {
	~StepGeom_BezierSurfaceAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BezierSurfaceAndRationalBSplineSurface\n");}
	}
};

%nodefaultctor StepGeom_SweptSurface;
class StepGeom_SweptSurface : public StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		StepGeom_SweptSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Curve &aSweptCurve);
		%feature("autodoc", "1");
		void SetSweptCurve(const Handle_StepGeom_Curve &aSweptCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve SweptCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_SweptSurface {
	Handle_StepGeom_SweptSurface GetHandle() {
	return *(Handle_StepGeom_SweptSurface*) &$self;
	}
};
%extend StepGeom_SweptSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_SweptSurface {
	~StepGeom_SweptSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_SweptSurface\n");}
	}
};

%nodefaultctor StepGeom_CurveOnSurface;
class StepGeom_CurveOnSurface : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepGeom_CurveOnSurface();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepGeom_Pcurve Pcurve() const;
		%feature("autodoc", "1");
		Handle_StepGeom_SurfaceCurve SurfaceCurve() const;
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveOnSurface CompositeCurveOnSurface() const;

};
%extend StepGeom_CurveOnSurface {
	~StepGeom_CurveOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CurveOnSurface\n");}
	}
};

%nodefaultctor StepGeom_RationalBSplineCurve;
class StepGeom_RationalBSplineCurve : public StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_RationalBSplineCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray1OfReal &aWeightsData);
		%feature("autodoc", "1");
		void SetWeightsData(const Handle_TColStd_HArray1OfReal &aWeightsData);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal WeightsData() const;
		%feature("autodoc", "1");
		Standard_Real WeightsDataValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_RationalBSplineCurve {
	Handle_StepGeom_RationalBSplineCurve GetHandle() {
	return *(Handle_StepGeom_RationalBSplineCurve*) &$self;
	}
};
%extend StepGeom_RationalBSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_RationalBSplineCurve {
	~StepGeom_RationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_RationalBSplineCurve\n");}
	}
};

%nodefaultctor StepGeom_SeamCurve;
class StepGeom_SeamCurve : public StepGeom_SurfaceCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_SeamCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_SeamCurve {
	Handle_StepGeom_SeamCurve GetHandle() {
	return *(Handle_StepGeom_SeamCurve*) &$self;
	}
};
%extend StepGeom_SeamCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_SeamCurve {
	~StepGeom_SeamCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_SeamCurve\n");}
	}
};

%nodefaultctor StepGeom_QuasiUniformCurveAndRationalBSplineCurve;
class StepGeom_QuasiUniformCurveAndRationalBSplineCurve : public StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_QuasiUniformCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect, const Handle_StepGeom_QuasiUniformCurve &aQuasiUniformCurve, const Handle_StepGeom_RationalBSplineCurve &aRationalBSplineCurve);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray1OfReal &aWeightsData);
		%feature("autodoc", "1");
		void SetQuasiUniformCurve(const Handle_StepGeom_QuasiUniformCurve &aQuasiUniformCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformCurve QuasiUniformCurve() const;
		%feature("autodoc", "1");
		void SetRationalBSplineCurve(const Handle_StepGeom_RationalBSplineCurve &aRationalBSplineCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineCurve RationalBSplineCurve() const;
		%feature("autodoc", "1");
		void SetWeightsData(const Handle_TColStd_HArray1OfReal &aWeightsData);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal WeightsData() const;
		%feature("autodoc", "1");
		Standard_Real WeightsDataValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_QuasiUniformCurveAndRationalBSplineCurve {
	Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve GetHandle() {
	return *(Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve*) &$self;
	}
};
%extend StepGeom_QuasiUniformCurveAndRationalBSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_QuasiUniformCurveAndRationalBSplineCurve {
	~StepGeom_QuasiUniformCurveAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_QuasiUniformCurveAndRationalBSplineCurve\n");}
	}
};

%nodefaultctor StepGeom_Hyperbola;
class StepGeom_Hyperbola : public StepGeom_Conic {
	public:
		%feature("autodoc", "1");
		StepGeom_Hyperbola();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepGeom_Axis2Placement &aPosition);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepGeom_Axis2Placement &aPosition, const Standard_Real aSemiAxis, const Standard_Real aSemiImagAxis);
		%feature("autodoc", "1");
		void SetSemiAxis(const Standard_Real aSemiAxis);
		%feature("autodoc", "1");
		Standard_Real SemiAxis() const;
		%feature("autodoc", "1");
		void SetSemiImagAxis(const Standard_Real aSemiImagAxis);
		%feature("autodoc", "1");
		Standard_Real SemiImagAxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Hyperbola {
	Handle_StepGeom_Hyperbola GetHandle() {
	return *(Handle_StepGeom_Hyperbola*) &$self;
	}
};
%extend StepGeom_Hyperbola {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Hyperbola {
	~StepGeom_Hyperbola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Hyperbola\n");}
	}
};

%nodefaultctor StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface;
class StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface : public StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect, const Handle_StepGeom_QuasiUniformSurface &aQuasiUniformSurface, const Handle_StepGeom_RationalBSplineSurface &aRationalBSplineSurface);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray2OfReal &aWeightsData);
		%feature("autodoc", "1");
		void SetQuasiUniformSurface(const Handle_StepGeom_QuasiUniformSurface &aQuasiUniformSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_QuasiUniformSurface QuasiUniformSurface() const;
		%feature("autodoc", "1");
		void SetRationalBSplineSurface(const Handle_StepGeom_RationalBSplineSurface &aRationalBSplineSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineSurface RationalBSplineSurface() const;
		%feature("autodoc", "1");
		void SetWeightsData(const Handle_TColStd_HArray2OfReal &aWeightsData);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal WeightsData() const;
		%feature("autodoc", "1");
		Standard_Real WeightsDataValue(const Standard_Integer num1, const Standard_Integer num2) const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsDataI() const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsDataJ() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface {
	Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface GetHandle() {
	return *(Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface*) &$self;
	}
};
%extend StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface {
	~StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface\n");}
	}
};

%nodefaultctor StepGeom_Array1OfCompositeCurveSegment;
class StepGeom_Array1OfCompositeCurveSegment {
	public:
		%feature("autodoc", "1");
		StepGeom_Array1OfCompositeCurveSegment(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_Array1OfCompositeCurveSegment(const Handle_StepGeom_CompositeCurveSegment &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_CompositeCurveSegment &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepGeom_Array1OfCompositeCurveSegment & Assign(const StepGeom_Array1OfCompositeCurveSegment &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepGeom_CompositeCurveSegment &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_CompositeCurveSegment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepGeom_CompositeCurveSegment & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveSegment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepGeom_CompositeCurveSegment & operator()(const Standard_Integer Index);

};
%extend StepGeom_Array1OfCompositeCurveSegment {
	~StepGeom_Array1OfCompositeCurveSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Array1OfCompositeCurveSegment\n");}
	}
};

%nodefaultctor StepGeom_HArray1OfTrimmingSelect;
class StepGeom_HArray1OfTrimmingSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_HArray1OfTrimmingSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_HArray1OfTrimmingSelect(const Standard_Integer Low, const Standard_Integer Up, const StepGeom_TrimmingSelect &V);
		%feature("autodoc", "1");
		void Init(const StepGeom_TrimmingSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepGeom_TrimmingSelect &Value);
		%feature("autodoc", "1");
		const StepGeom_TrimmingSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepGeom_TrimmingSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepGeom_Array1OfTrimmingSelect & Array1() const;
		%feature("autodoc", "1");
		StepGeom_Array1OfTrimmingSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_HArray1OfTrimmingSelect {
	Handle_StepGeom_HArray1OfTrimmingSelect GetHandle() {
	return *(Handle_StepGeom_HArray1OfTrimmingSelect*) &$self;
	}
};
%extend StepGeom_HArray1OfTrimmingSelect {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_HArray1OfTrimmingSelect {
	~StepGeom_HArray1OfTrimmingSelect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_HArray1OfTrimmingSelect\n");}
	}
};

%nodefaultctor StepGeom_TrimmingSelect;
class StepGeom_TrimmingSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepGeom_TrimmingSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &ent) const;
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint CartesianPoint() const;
		%feature("autodoc", "1");
		void SetParameterValue(const Standard_Real aParameterValue);
		%feature("autodoc", "1");
		Standard_Real ParameterValue() const;

};
%extend StepGeom_TrimmingSelect {
	~StepGeom_TrimmingSelect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_TrimmingSelect\n");}
	}
};

%nodefaultctor StepGeom_SurfaceReplica;
class StepGeom_SurfaceReplica : public StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		StepGeom_SurfaceReplica();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aParentSurface, const Handle_StepGeom_CartesianTransformationOperator3d &aTransformation);
		%feature("autodoc", "1");
		void SetParentSurface(const Handle_StepGeom_Surface &aParentSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface ParentSurface() const;
		%feature("autodoc", "1");
		void SetTransformation(const Handle_StepGeom_CartesianTransformationOperator3d &aTransformation);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator3d Transformation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_SurfaceReplica {
	Handle_StepGeom_SurfaceReplica GetHandle() {
	return *(Handle_StepGeom_SurfaceReplica*) &$self;
	}
};
%extend StepGeom_SurfaceReplica {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_SurfaceReplica {
	~StepGeom_SurfaceReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_SurfaceReplica\n");}
	}
};

%nodefaultctor StepGeom_ConicalSurface;
class StepGeom_ConicalSurface : public StepGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		StepGeom_ConicalSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition, const Standard_Real aRadius, const Standard_Real aSemiAngle);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		void SetSemiAngle(const Standard_Real aSemiAngle);
		%feature("autodoc", "1");
		Standard_Real SemiAngle() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_ConicalSurface {
	Handle_StepGeom_ConicalSurface GetHandle() {
	return *(Handle_StepGeom_ConicalSurface*) &$self;
	}
};
%extend StepGeom_ConicalSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_ConicalSurface {
	~StepGeom_ConicalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_ConicalSurface\n");}
	}
};

%nodefaultctor StepGeom_SurfaceOfLinearExtrusion;
class StepGeom_SurfaceOfLinearExtrusion : public StepGeom_SweptSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_SurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Curve &aSweptCurve);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Curve &aSweptCurve, const Handle_StepGeom_Vector &aExtrusionAxis);
		%feature("autodoc", "1");
		void SetExtrusionAxis(const Handle_StepGeom_Vector &aExtrusionAxis);
		%feature("autodoc", "1");
		Handle_StepGeom_Vector ExtrusionAxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_SurfaceOfLinearExtrusion {
	Handle_StepGeom_SurfaceOfLinearExtrusion GetHandle() {
	return *(Handle_StepGeom_SurfaceOfLinearExtrusion*) &$self;
	}
};
%extend StepGeom_SurfaceOfLinearExtrusion {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_SurfaceOfLinearExtrusion {
	~StepGeom_SurfaceOfLinearExtrusion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_SurfaceOfLinearExtrusion\n");}
	}
};

%nodefaultctor StepGeom_Parabola;
class StepGeom_Parabola : public StepGeom_Conic {
	public:
		%feature("autodoc", "1");
		StepGeom_Parabola();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepGeom_Axis2Placement &aPosition);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepGeom_Axis2Placement &aPosition, const Standard_Real aFocalDist);
		%feature("autodoc", "1");
		void SetFocalDist(const Standard_Real aFocalDist);
		%feature("autodoc", "1");
		Standard_Real FocalDist() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Parabola {
	Handle_StepGeom_Parabola GetHandle() {
	return *(Handle_StepGeom_Parabola*) &$self;
	}
};
%extend StepGeom_Parabola {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Parabola {
	~StepGeom_Parabola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Parabola\n");}
	}
};

%nodefaultctor StepGeom_SurfaceOfRevolution;
class StepGeom_SurfaceOfRevolution : public StepGeom_SweptSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_SurfaceOfRevolution();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Curve &aSweptCurve);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Curve &aSweptCurve, const Handle_StepGeom_Axis1Placement &aAxisPosition);
		%feature("autodoc", "1");
		void SetAxisPosition(const Handle_StepGeom_Axis1Placement &aAxisPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement AxisPosition() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_SurfaceOfRevolution {
	Handle_StepGeom_SurfaceOfRevolution GetHandle() {
	return *(Handle_StepGeom_SurfaceOfRevolution*) &$self;
	}
};
%extend StepGeom_SurfaceOfRevolution {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_SurfaceOfRevolution {
	~StepGeom_SurfaceOfRevolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_SurfaceOfRevolution\n");}
	}
};

%nodefaultctor StepGeom_TrimmingMember;
class StepGeom_TrimmingMember : public StepData_SelectReal {
	public:
		%feature("autodoc", "1");
		StepGeom_TrimmingMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		Standard_CString Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_TrimmingMember {
	Handle_StepGeom_TrimmingMember GetHandle() {
	return *(Handle_StepGeom_TrimmingMember*) &$self;
	}
};
%extend StepGeom_TrimmingMember {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_TrimmingMember {
	~StepGeom_TrimmingMember() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_TrimmingMember\n");}
	}
};

%nodefaultctor StepGeom_CurveReplica;
class StepGeom_CurveReplica : public StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		StepGeom_CurveReplica();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Curve &aParentCurve, const Handle_StepGeom_CartesianTransformationOperator &aTransformation);
		%feature("autodoc", "1");
		void SetParentCurve(const Handle_StepGeom_Curve &aParentCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve ParentCurve() const;
		%feature("autodoc", "1");
		void SetTransformation(const Handle_StepGeom_CartesianTransformationOperator &aTransformation);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator Transformation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_CurveReplica {
	Handle_StepGeom_CurveReplica GetHandle() {
	return *(Handle_StepGeom_CurveReplica*) &$self;
	}
};
%extend StepGeom_CurveReplica {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_CurveReplica {
	~StepGeom_CurveReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CurveReplica\n");}
	}
};

%nodefaultctor StepGeom_CylindricalSurface;
class StepGeom_CylindricalSurface : public StepGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		StepGeom_CylindricalSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition, const Standard_Real aRadius);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_CylindricalSurface {
	Handle_StepGeom_CylindricalSurface GetHandle() {
	return *(Handle_StepGeom_CylindricalSurface*) &$self;
	}
};
%extend StepGeom_CylindricalSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_CylindricalSurface {
	~StepGeom_CylindricalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CylindricalSurface\n");}
	}
};

%nodefaultctor StepGeom_CartesianTransformationOperator2d;
class StepGeom_CartesianTransformationOperator2d : public StepGeom_CartesianTransformationOperator {
	public:
		%feature("autodoc", "1");
		StepGeom_CartesianTransformationOperator2d();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_CartesianTransformationOperator2d {
	Handle_StepGeom_CartesianTransformationOperator2d GetHandle() {
	return *(Handle_StepGeom_CartesianTransformationOperator2d*) &$self;
	}
};
%extend StepGeom_CartesianTransformationOperator2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_CartesianTransformationOperator2d {
	~StepGeom_CartesianTransformationOperator2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CartesianTransformationOperator2d\n");}
	}
};

%nodefaultctor StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
class StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx : public StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Handle_StepGeom_GeometricRepresentationContext &aGeometricRepresentationCtx, const Handle_StepRepr_GlobalUnitAssignedContext &aGlobalUnitAssignedCtx, const Handle_StepRepr_GlobalUncertaintyAssignedContext &aGlobalUncertaintyAssignedCtx);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Standard_Integer aCoordinateSpaceDimension, const Handle_StepBasic_HArray1OfNamedUnit &aUnits, const Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit &anUncertainty);
		%feature("autodoc", "1");
		void SetGeometricRepresentationContext(const Handle_StepGeom_GeometricRepresentationContext &aGeometricRepresentationContext);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContext GeometricRepresentationContext() const;
		%feature("autodoc", "1");
		void SetGlobalUnitAssignedContext(const Handle_StepRepr_GlobalUnitAssignedContext &aGlobalUnitAssignedContext);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext GlobalUnitAssignedContext() const;
		%feature("autodoc", "1");
		void SetGlobalUncertaintyAssignedContext(const Handle_StepRepr_GlobalUncertaintyAssignedContext &aGlobalUncertaintyAssignedCtx);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUncertaintyAssignedContext GlobalUncertaintyAssignedContext() const;
		%feature("autodoc", "1");
		void SetCoordinateSpaceDimension(const Standard_Integer aCoordinateSpaceDimension);
		%feature("autodoc", "1");
		Standard_Integer CoordinateSpaceDimension() const;
		%feature("autodoc", "1");
		void SetUnits(const Handle_StepBasic_HArray1OfNamedUnit &aUnits);
		%feature("autodoc", "1");
		Handle_StepBasic_HArray1OfNamedUnit Units() const;
		%feature("autodoc", "1");
		Handle_StepBasic_NamedUnit UnitsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUnits() const;
		%feature("autodoc", "1");
		void SetUncertainty(const Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit &aUncertainty);
		%feature("autodoc", "1");
		Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit Uncertainty() const;
		%feature("autodoc", "1");
		Handle_StepBasic_UncertaintyMeasureWithUnit UncertaintyValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUncertainty() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {
	Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx GetHandle() {
	return *(Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx*) &$self;
	}
};
%extend StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {
	~StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx\n");}
	}
};

%nodefaultctor StepGeom_Ellipse;
class StepGeom_Ellipse : public StepGeom_Conic {
	public:
		%feature("autodoc", "1");
		StepGeom_Ellipse();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepGeom_Axis2Placement &aPosition);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepGeom_Axis2Placement &aPosition, const Standard_Real aSemiAxis1, const Standard_Real aSemiAxis2);
		%feature("autodoc", "1");
		void SetSemiAxis1(const Standard_Real aSemiAxis1);
		%feature("autodoc", "1");
		Standard_Real SemiAxis1() const;
		%feature("autodoc", "1");
		void SetSemiAxis2(const Standard_Real aSemiAxis2);
		%feature("autodoc", "1");
		Standard_Real SemiAxis2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Ellipse {
	Handle_StepGeom_Ellipse GetHandle() {
	return *(Handle_StepGeom_Ellipse*) &$self;
	}
};
%extend StepGeom_Ellipse {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Ellipse {
	~StepGeom_Ellipse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Ellipse\n");}
	}
};

%nodefaultctor StepGeom_HArray2OfSurfacePatch;
class StepGeom_HArray2OfSurfacePatch : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_HArray2OfSurfacePatch(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		StepGeom_HArray2OfSurfacePatch(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_StepGeom_SurfacePatch &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_SurfacePatch &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_StepGeom_SurfacePatch &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_SurfacePatch & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_StepGeom_SurfacePatch & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const StepGeom_Array2OfSurfacePatch & Array2() const;
		%feature("autodoc", "1");
		StepGeom_Array2OfSurfacePatch & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_HArray2OfSurfacePatch {
	Handle_StepGeom_HArray2OfSurfacePatch GetHandle() {
	return *(Handle_StepGeom_HArray2OfSurfacePatch*) &$self;
	}
};
%extend StepGeom_HArray2OfSurfacePatch {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_HArray2OfSurfacePatch {
	~StepGeom_HArray2OfSurfacePatch() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_HArray2OfSurfacePatch\n");}
	}
};

%nodefaultctor StepGeom_QuasiUniformSurface;
class StepGeom_QuasiUniformSurface : public StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_QuasiUniformSurface();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_QuasiUniformSurface {
	Handle_StepGeom_QuasiUniformSurface GetHandle() {
	return *(Handle_StepGeom_QuasiUniformSurface*) &$self;
	}
};
%extend StepGeom_QuasiUniformSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_QuasiUniformSurface {
	~StepGeom_QuasiUniformSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_QuasiUniformSurface\n");}
	}
};

%nodefaultctor StepGeom_RationalBSplineSurface;
class StepGeom_RationalBSplineSurface : public StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_RationalBSplineSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray2OfReal &aWeightsData);
		%feature("autodoc", "1");
		void SetWeightsData(const Handle_TColStd_HArray2OfReal &aWeightsData);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal WeightsData() const;
		%feature("autodoc", "1");
		Standard_Real WeightsDataValue(const Standard_Integer num1, const Standard_Integer num2) const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsDataI() const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsDataJ() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_RationalBSplineSurface {
	Handle_StepGeom_RationalBSplineSurface GetHandle() {
	return *(Handle_StepGeom_RationalBSplineSurface*) &$self;
	}
};
%extend StepGeom_RationalBSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_RationalBSplineSurface {
	~StepGeom_RationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_RationalBSplineSurface\n");}
	}
};

%nodefaultctor StepGeom_UniformCurveAndRationalBSplineCurve;
class StepGeom_UniformCurveAndRationalBSplineCurve : public StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_UniformCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect, const Handle_StepGeom_UniformCurve &aUniformCurve, const Handle_StepGeom_RationalBSplineCurve &aRationalBSplineCurve);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aDegree, const Handle_StepGeom_HArray1OfCartesianPoint &aControlPointsList, const StepGeom_BSplineCurveForm aCurveForm, const StepData_Logical aClosedCurve, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray1OfReal &aWeightsData);
		%feature("autodoc", "1");
		void SetUniformCurve(const Handle_StepGeom_UniformCurve &aUniformCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_UniformCurve UniformCurve() const;
		%feature("autodoc", "1");
		void SetRationalBSplineCurve(const Handle_StepGeom_RationalBSplineCurve &aRationalBSplineCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineCurve RationalBSplineCurve() const;
		%feature("autodoc", "1");
		void SetWeightsData(const Handle_TColStd_HArray1OfReal &aWeightsData);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal WeightsData() const;
		%feature("autodoc", "1");
		Standard_Real WeightsDataValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_UniformCurveAndRationalBSplineCurve {
	Handle_StepGeom_UniformCurveAndRationalBSplineCurve GetHandle() {
	return *(Handle_StepGeom_UniformCurveAndRationalBSplineCurve*) &$self;
	}
};
%extend StepGeom_UniformCurveAndRationalBSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_UniformCurveAndRationalBSplineCurve {
	~StepGeom_UniformCurveAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_UniformCurveAndRationalBSplineCurve\n");}
	}
};

%nodefaultctor StepGeom_Array2OfSurfacePatch;
class StepGeom_Array2OfSurfacePatch {
	public:
		%feature("autodoc", "1");
		StepGeom_Array2OfSurfacePatch(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		StepGeom_Array2OfSurfacePatch(const Handle_StepGeom_SurfacePatch &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_SurfacePatch &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const StepGeom_Array2OfSurfacePatch & Assign(const StepGeom_Array2OfSurfacePatch &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_StepGeom_SurfacePatch &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_SurfacePatch & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Handle_StepGeom_SurfacePatch & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_StepGeom_SurfacePatch & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Handle_StepGeom_SurfacePatch & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend StepGeom_Array2OfSurfacePatch {
	~StepGeom_Array2OfSurfacePatch() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Array2OfSurfacePatch\n");}
	}
};

%nodefaultctor StepGeom_HArray2OfCartesianPoint;
class StepGeom_HArray2OfCartesianPoint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_HArray2OfCartesianPoint(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		StepGeom_HArray2OfCartesianPoint(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_StepGeom_CartesianPoint &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_CartesianPoint &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_StepGeom_CartesianPoint &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_CartesianPoint & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const StepGeom_Array2OfCartesianPoint & Array2() const;
		%feature("autodoc", "1");
		StepGeom_Array2OfCartesianPoint & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_HArray2OfCartesianPoint {
	Handle_StepGeom_HArray2OfCartesianPoint GetHandle() {
	return *(Handle_StepGeom_HArray2OfCartesianPoint*) &$self;
	}
};
%extend StepGeom_HArray2OfCartesianPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_HArray2OfCartesianPoint {
	~StepGeom_HArray2OfCartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_HArray2OfCartesianPoint\n");}
	}
};

%nodefaultctor StepGeom_HArray1OfCartesianPoint;
class StepGeom_HArray1OfCartesianPoint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_HArray1OfCartesianPoint(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_HArray1OfCartesianPoint(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepGeom_CartesianPoint &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_CartesianPoint &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepGeom_CartesianPoint &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_CartesianPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepGeom_Array1OfCartesianPoint & Array1() const;
		%feature("autodoc", "1");
		StepGeom_Array1OfCartesianPoint & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_HArray1OfCartesianPoint {
	Handle_StepGeom_HArray1OfCartesianPoint GetHandle() {
	return *(Handle_StepGeom_HArray1OfCartesianPoint*) &$self;
	}
};
%extend StepGeom_HArray1OfCartesianPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_HArray1OfCartesianPoint {
	~StepGeom_HArray1OfCartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_HArray1OfCartesianPoint\n");}
	}
};

%nodefaultctor StepGeom_QuasiUniformCurve;
class StepGeom_QuasiUniformCurve : public StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_QuasiUniformCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_QuasiUniformCurve {
	Handle_StepGeom_QuasiUniformCurve GetHandle() {
	return *(Handle_StepGeom_QuasiUniformCurve*) &$self;
	}
};
%extend StepGeom_QuasiUniformCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_QuasiUniformCurve {
	~StepGeom_QuasiUniformCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_QuasiUniformCurve\n");}
	}
};

%nodefaultctor StepGeom_SurfacePatch;
class StepGeom_SurfacePatch : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_SurfacePatch();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepGeom_BoundedSurface &aParentSurface, const StepGeom_TransitionCode aUTransition, const StepGeom_TransitionCode aVTransition, const Standard_Boolean aUSense, const Standard_Boolean aVSense);
		%feature("autodoc", "1");
		void SetParentSurface(const Handle_StepGeom_BoundedSurface &aParentSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_BoundedSurface ParentSurface() const;
		%feature("autodoc", "1");
		void SetUTransition(const StepGeom_TransitionCode aUTransition);
		%feature("autodoc", "1");
		StepGeom_TransitionCode UTransition() const;
		%feature("autodoc", "1");
		void SetVTransition(const StepGeom_TransitionCode aVTransition);
		%feature("autodoc", "1");
		StepGeom_TransitionCode VTransition() const;
		%feature("autodoc", "1");
		void SetUSense(const Standard_Boolean aUSense);
		%feature("autodoc", "1");
		Standard_Boolean USense() const;
		%feature("autodoc", "1");
		void SetVSense(const Standard_Boolean aVSense);
		%feature("autodoc", "1");
		Standard_Boolean VSense() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_SurfacePatch {
	Handle_StepGeom_SurfacePatch GetHandle() {
	return *(Handle_StepGeom_SurfacePatch*) &$self;
	}
};
%extend StepGeom_SurfacePatch {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_SurfacePatch {
	~StepGeom_SurfacePatch() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_SurfacePatch\n");}
	}
};

%nodefaultctor StepGeom_EvaluatedDegeneratePcurve;
class StepGeom_EvaluatedDegeneratePcurve : public StepGeom_DegeneratePcurve {
	public:
		%feature("autodoc", "1");
		StepGeom_EvaluatedDegeneratePcurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBasisSurface, const Handle_StepRepr_DefinitionalRepresentation &aReferenceToCurve);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBasisSurface, const Handle_StepRepr_DefinitionalRepresentation &aReferenceToCurve, const Handle_StepGeom_CartesianPoint &aEquivalentPoint);
		%feature("autodoc", "1");
		void SetEquivalentPoint(const Handle_StepGeom_CartesianPoint &aEquivalentPoint);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint EquivalentPoint() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_EvaluatedDegeneratePcurve {
	Handle_StepGeom_EvaluatedDegeneratePcurve GetHandle() {
	return *(Handle_StepGeom_EvaluatedDegeneratePcurve*) &$self;
	}
};
%extend StepGeom_EvaluatedDegeneratePcurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_EvaluatedDegeneratePcurve {
	~StepGeom_EvaluatedDegeneratePcurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_EvaluatedDegeneratePcurve\n");}
	}
};

%nodefaultctor StepGeom_Vector;
class StepGeom_Vector : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepGeom_Vector();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Direction &aOrientation, const Standard_Real aMagnitude);
		%feature("autodoc", "1");
		void SetOrientation(const Handle_StepGeom_Direction &aOrientation);
		%feature("autodoc", "1");
		Handle_StepGeom_Direction Orientation() const;
		%feature("autodoc", "1");
		void SetMagnitude(const Standard_Real aMagnitude);
		%feature("autodoc", "1");
		Standard_Real Magnitude() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Vector {
	Handle_StepGeom_Vector GetHandle() {
	return *(Handle_StepGeom_Vector*) &$self;
	}
};
%extend StepGeom_Vector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Vector {
	~StepGeom_Vector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Vector\n");}
	}
};

%nodefaultctor StepGeom_Axis2Placement2d;
class StepGeom_Axis2Placement2d : public StepGeom_Placement {
	public:
		%feature("autodoc", "1");
		StepGeom_Axis2Placement2d();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CartesianPoint &aLocation);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CartesianPoint &aLocation, const Standard_Boolean hasArefDirection, const Handle_StepGeom_Direction &aRefDirection);
		%feature("autodoc", "1");
		void SetRefDirection(const Handle_StepGeom_Direction &aRefDirection);
		%feature("autodoc", "1");
		void UnSetRefDirection();
		%feature("autodoc", "1");
		Handle_StepGeom_Direction RefDirection() const;
		%feature("autodoc", "1");
		Standard_Boolean HasRefDirection() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Axis2Placement2d {
	Handle_StepGeom_Axis2Placement2d GetHandle() {
	return *(Handle_StepGeom_Axis2Placement2d*) &$self;
	}
};
%extend StepGeom_Axis2Placement2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Axis2Placement2d {
	~StepGeom_Axis2Placement2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Axis2Placement2d\n");}
	}
};

%nodefaultctor StepGeom_BezierSurface;
class StepGeom_BezierSurface : public StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_BezierSurface();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_BezierSurface {
	Handle_StepGeom_BezierSurface GetHandle() {
	return *(Handle_StepGeom_BezierSurface*) &$self;
	}
};
%extend StepGeom_BezierSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BezierSurface {
	~StepGeom_BezierSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BezierSurface\n");}
	}
};

%nodefaultctor StepGeom_ToroidalSurface;
class StepGeom_ToroidalSurface : public StepGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		StepGeom_ToroidalSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition, const Standard_Real aMajorRadius, const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real aMajorRadius);
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_ToroidalSurface {
	Handle_StepGeom_ToroidalSurface GetHandle() {
	return *(Handle_StepGeom_ToroidalSurface*) &$self;
	}
};
%extend StepGeom_ToroidalSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_ToroidalSurface {
	~StepGeom_ToroidalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_ToroidalSurface\n");}
	}
};

%nodefaultctor StepGeom_Axis2Placement3d;
class StepGeom_Axis2Placement3d : public StepGeom_Placement {
	public:
		%feature("autodoc", "1");
		StepGeom_Axis2Placement3d();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CartesianPoint &aLocation);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CartesianPoint &aLocation, const Standard_Boolean hasAaxis, const Handle_StepGeom_Direction &aAxis, const Standard_Boolean hasArefDirection, const Handle_StepGeom_Direction &aRefDirection);
		%feature("autodoc", "1");
		void SetAxis(const Handle_StepGeom_Direction &aAxis);
		%feature("autodoc", "1");
		void UnSetAxis();
		%feature("autodoc", "1");
		Handle_StepGeom_Direction Axis() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAxis() const;
		%feature("autodoc", "1");
		void SetRefDirection(const Handle_StepGeom_Direction &aRefDirection);
		%feature("autodoc", "1");
		void UnSetRefDirection();
		%feature("autodoc", "1");
		Handle_StepGeom_Direction RefDirection() const;
		%feature("autodoc", "1");
		Standard_Boolean HasRefDirection() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Axis2Placement3d {
	Handle_StepGeom_Axis2Placement3d GetHandle() {
	return *(Handle_StepGeom_Axis2Placement3d*) &$self;
	}
};
%extend StepGeom_Axis2Placement3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Axis2Placement3d {
	~StepGeom_Axis2Placement3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Axis2Placement3d\n");}
	}
};

%nodefaultctor StepGeom_CartesianPoint;
class StepGeom_CartesianPoint : public StepGeom_Point {
	public:
		%feature("autodoc", "1");
		StepGeom_CartesianPoint();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TColStd_HArray1OfReal &aCoordinates);
		%feature("autodoc", "1");
		void Init2D(const Handle_TCollection_HAsciiString &aName, const Standard_Real X, const Standard_Real Y);
		%feature("autodoc", "1");
		void Init3D(const Handle_TCollection_HAsciiString &aName, const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		void SetCoordinates(const Handle_TColStd_HArray1OfReal &aCoordinates);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Coordinates() const;
		%feature("autodoc", "1");
		Standard_Real CoordinatesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbCoordinates() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_CartesianPoint {
	Handle_StepGeom_CartesianPoint GetHandle() {
	return *(Handle_StepGeom_CartesianPoint*) &$self;
	}
};
%extend StepGeom_CartesianPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_CartesianPoint {
	~StepGeom_CartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CartesianPoint\n");}
	}
};

%nodefaultctor StepGeom_Line;
class StepGeom_Line : public StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		StepGeom_Line();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CartesianPoint &aPnt, const Handle_StepGeom_Vector &aDir);
		%feature("autodoc", "1");
		void SetPnt(const Handle_StepGeom_CartesianPoint &aPnt);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint Pnt() const;
		%feature("autodoc", "1");
		void SetDir(const Handle_StepGeom_Vector &aDir);
		%feature("autodoc", "1");
		Handle_StepGeom_Vector Dir() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Line {
	Handle_StepGeom_Line GetHandle() {
	return *(Handle_StepGeom_Line*) &$self;
	}
};
%extend StepGeom_Line {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Line {
	~StepGeom_Line() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Line\n");}
	}
};

%nodefaultctor StepGeom_OffsetCurve3d;
class StepGeom_OffsetCurve3d : public StepGeom_Curve {
	public:
		%feature("autodoc", "1");
		StepGeom_OffsetCurve3d();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Curve &aBasisCurve, const Standard_Real aDistance, const StepData_Logical aSelfIntersect, const Handle_StepGeom_Direction &aRefDirection);
		%feature("autodoc", "1");
		void SetBasisCurve(const Handle_StepGeom_Curve &aBasisCurve);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve BasisCurve() const;
		%feature("autodoc", "1");
		void SetDistance(const Standard_Real aDistance);
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		void SetSelfIntersect(const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		StepData_Logical SelfIntersect() const;
		%feature("autodoc", "1");
		void SetRefDirection(const Handle_StepGeom_Direction &aRefDirection);
		%feature("autodoc", "1");
		Handle_StepGeom_Direction RefDirection() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_OffsetCurve3d {
	Handle_StepGeom_OffsetCurve3d GetHandle() {
	return *(Handle_StepGeom_OffsetCurve3d*) &$self;
	}
};
%extend StepGeom_OffsetCurve3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_OffsetCurve3d {
	~StepGeom_OffsetCurve3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_OffsetCurve3d\n");}
	}
};

%nodefaultctor StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext;
class StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext : public StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Handle_StepGeom_GeometricRepresentationContext &aGeometricRepresentationContext, const Handle_StepRepr_GlobalUnitAssignedContext &aGlobalUnitAssignedContext);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Standard_Integer aCoordinateSpaceDimension, const Handle_StepBasic_HArray1OfNamedUnit &aUnits);
		%feature("autodoc", "1");
		void SetGeometricRepresentationContext(const Handle_StepGeom_GeometricRepresentationContext &aGeometricRepresentationContext);
		%feature("autodoc", "1");
		Handle_StepGeom_GeometricRepresentationContext GeometricRepresentationContext() const;
		%feature("autodoc", "1");
		void SetGlobalUnitAssignedContext(const Handle_StepRepr_GlobalUnitAssignedContext &aGlobalUnitAssignedContext);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext GlobalUnitAssignedContext() const;
		%feature("autodoc", "1");
		void SetCoordinateSpaceDimension(const Standard_Integer aCoordinateSpaceDimension);
		%feature("autodoc", "1");
		Standard_Integer CoordinateSpaceDimension() const;
		%feature("autodoc", "1");
		void SetUnits(const Handle_StepBasic_HArray1OfNamedUnit &aUnits);
		%feature("autodoc", "1");
		Handle_StepBasic_HArray1OfNamedUnit Units() const;
		%feature("autodoc", "1");
		Handle_StepBasic_NamedUnit UnitsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUnits() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext {
	Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext GetHandle() {
	return *(Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext*) &$self;
	}
};
%extend StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext {
	~StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext\n");}
	}
};

%nodefaultctor StepGeom_HArray1OfBoundaryCurve;
class StepGeom_HArray1OfBoundaryCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_HArray1OfBoundaryCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_HArray1OfBoundaryCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepGeom_BoundaryCurve &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepGeom_BoundaryCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepGeom_BoundaryCurve &Value);
		%feature("autodoc", "1");
		const Handle_StepGeom_BoundaryCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepGeom_BoundaryCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepGeom_Array1OfBoundaryCurve & Array1() const;
		%feature("autodoc", "1");
		StepGeom_Array1OfBoundaryCurve & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_HArray1OfBoundaryCurve {
	Handle_StepGeom_HArray1OfBoundaryCurve GetHandle() {
	return *(Handle_StepGeom_HArray1OfBoundaryCurve*) &$self;
	}
};
%extend StepGeom_HArray1OfBoundaryCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_HArray1OfBoundaryCurve {
	~StepGeom_HArray1OfBoundaryCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_HArray1OfBoundaryCurve\n");}
	}
};

%nodefaultctor StepGeom_IntersectionCurve;
class StepGeom_IntersectionCurve : public StepGeom_SurfaceCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_IntersectionCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_IntersectionCurve {
	Handle_StepGeom_IntersectionCurve GetHandle() {
	return *(Handle_StepGeom_IntersectionCurve*) &$self;
	}
};
%extend StepGeom_IntersectionCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_IntersectionCurve {
	~StepGeom_IntersectionCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_IntersectionCurve\n");}
	}
};

%nodefaultctor StepGeom_UniformSurfaceAndRationalBSplineSurface;
class StepGeom_UniformSurfaceAndRationalBSplineSurface : public StepGeom_BSplineSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_UniformSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect, const Handle_StepGeom_UniformSurface &aUniformSurface, const Handle_StepGeom_RationalBSplineSurface &aRationalBSplineSurface);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aUDegree, const Standard_Integer aVDegree, const Handle_StepGeom_HArray2OfCartesianPoint &aControlPointsList, const StepGeom_BSplineSurfaceForm aSurfaceForm, const StepData_Logical aUClosed, const StepData_Logical aVClosed, const StepData_Logical aSelfIntersect, const Handle_TColStd_HArray2OfReal &aWeightsData);
		%feature("autodoc", "1");
		void SetUniformSurface(const Handle_StepGeom_UniformSurface &aUniformSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_UniformSurface UniformSurface() const;
		%feature("autodoc", "1");
		void SetRationalBSplineSurface(const Handle_StepGeom_RationalBSplineSurface &aRationalBSplineSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_RationalBSplineSurface RationalBSplineSurface() const;
		%feature("autodoc", "1");
		void SetWeightsData(const Handle_TColStd_HArray2OfReal &aWeightsData);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal WeightsData() const;
		%feature("autodoc", "1");
		Standard_Real WeightsDataValue(const Standard_Integer num1, const Standard_Integer num2) const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsDataI() const;
		%feature("autodoc", "1");
		Standard_Integer NbWeightsDataJ() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_UniformSurfaceAndRationalBSplineSurface {
	Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface GetHandle() {
	return *(Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface*) &$self;
	}
};
%extend StepGeom_UniformSurfaceAndRationalBSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_UniformSurfaceAndRationalBSplineSurface {
	~StepGeom_UniformSurfaceAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_UniformSurfaceAndRationalBSplineSurface\n");}
	}
};

%nodefaultctor StepGeom_Array1OfSurfaceBoundary;
class StepGeom_Array1OfSurfaceBoundary {
	public:
		%feature("autodoc", "1");
		StepGeom_Array1OfSurfaceBoundary(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_Array1OfSurfaceBoundary(const StepGeom_SurfaceBoundary &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepGeom_SurfaceBoundary &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepGeom_Array1OfSurfaceBoundary & Assign(const StepGeom_Array1OfSurfaceBoundary &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepGeom_SurfaceBoundary &Value);
		%feature("autodoc", "1");
		const StepGeom_SurfaceBoundary & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepGeom_SurfaceBoundary & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepGeom_SurfaceBoundary & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepGeom_SurfaceBoundary & operator()(const Standard_Integer Index);

};
%extend StepGeom_Array1OfSurfaceBoundary {
	~StepGeom_Array1OfSurfaceBoundary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Array1OfSurfaceBoundary\n");}
	}
};

%nodefaultctor StepGeom_UniformCurve;
class StepGeom_UniformCurve : public StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_UniformCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_UniformCurve {
	Handle_StepGeom_UniformCurve GetHandle() {
	return *(Handle_StepGeom_UniformCurve*) &$self;
	}
};
%extend StepGeom_UniformCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_UniformCurve {
	~StepGeom_UniformCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_UniformCurve\n");}
	}
};

%nodefaultctor StepGeom_HArray1OfPcurveOrSurface;
class StepGeom_HArray1OfPcurveOrSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepGeom_HArray1OfPcurveOrSurface(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_HArray1OfPcurveOrSurface(const Standard_Integer Low, const Standard_Integer Up, const StepGeom_PcurveOrSurface &V);
		%feature("autodoc", "1");
		void Init(const StepGeom_PcurveOrSurface &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepGeom_PcurveOrSurface &Value);
		%feature("autodoc", "1");
		const StepGeom_PcurveOrSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepGeom_PcurveOrSurface & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepGeom_Array1OfPcurveOrSurface & Array1() const;
		%feature("autodoc", "1");
		StepGeom_Array1OfPcurveOrSurface & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_HArray1OfPcurveOrSurface {
	Handle_StepGeom_HArray1OfPcurveOrSurface GetHandle() {
	return *(Handle_StepGeom_HArray1OfPcurveOrSurface*) &$self;
	}
};
%extend StepGeom_HArray1OfPcurveOrSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_HArray1OfPcurveOrSurface {
	~StepGeom_HArray1OfPcurveOrSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_HArray1OfPcurveOrSurface\n");}
	}
};

%nodefaultctor StepGeom_Direction;
class StepGeom_Direction : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepGeom_Direction();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TColStd_HArray1OfReal &aDirectionRatios);
		%feature("autodoc", "1");
		void SetDirectionRatios(const Handle_TColStd_HArray1OfReal &aDirectionRatios);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal DirectionRatios() const;
		%feature("autodoc", "1");
		Standard_Real DirectionRatiosValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbDirectionRatios() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_Direction {
	Handle_StepGeom_Direction GetHandle() {
	return *(Handle_StepGeom_Direction*) &$self;
	}
};
%extend StepGeom_Direction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_Direction {
	~StepGeom_Direction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Direction\n");}
	}
};

%nodefaultctor StepGeom_GeometricRepresentationContext;
class StepGeom_GeometricRepresentationContext : public StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		StepGeom_GeometricRepresentationContext();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Standard_Integer aCoordinateSpaceDimension);
		%feature("autodoc", "1");
		void SetCoordinateSpaceDimension(const Standard_Integer aCoordinateSpaceDimension);
		%feature("autodoc", "1");
		Standard_Integer CoordinateSpaceDimension() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_GeometricRepresentationContext {
	Handle_StepGeom_GeometricRepresentationContext GetHandle() {
	return *(Handle_StepGeom_GeometricRepresentationContext*) &$self;
	}
};
%extend StepGeom_GeometricRepresentationContext {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_GeometricRepresentationContext {
	~StepGeom_GeometricRepresentationContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_GeometricRepresentationContext\n");}
	}
};

%nodefaultctor StepGeom_BezierCurve;
class StepGeom_BezierCurve : public StepGeom_BSplineCurve {
	public:
		%feature("autodoc", "1");
		StepGeom_BezierCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_BezierCurve {
	Handle_StepGeom_BezierCurve GetHandle() {
	return *(Handle_StepGeom_BezierCurve*) &$self;
	}
};
%extend StepGeom_BezierCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_BezierCurve {
	~StepGeom_BezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_BezierCurve\n");}
	}
};

%nodefaultctor StepGeom_Axis2Placement;
class StepGeom_Axis2Placement : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepGeom_Axis2Placement();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement2d Axis2Placement2d() const;
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d Axis2Placement3d() const;

};
%extend StepGeom_Axis2Placement {
	~StepGeom_Axis2Placement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Axis2Placement\n");}
	}
};

%nodefaultctor StepGeom_RectangularTrimmedSurface;
class StepGeom_RectangularTrimmedSurface : public StepGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_RectangularTrimmedSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBasisSurface, const Standard_Real aU1, const Standard_Real aU2, const Standard_Real aV1, const Standard_Real aV2, const Standard_Boolean aUsense, const Standard_Boolean aVsense);
		%feature("autodoc", "1");
		void SetBasisSurface(const Handle_StepGeom_Surface &aBasisSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		void SetU1(const Standard_Real aU1);
		%feature("autodoc", "1");
		Standard_Real U1() const;
		%feature("autodoc", "1");
		void SetU2(const Standard_Real aU2);
		%feature("autodoc", "1");
		Standard_Real U2() const;
		%feature("autodoc", "1");
		void SetV1(const Standard_Real aV1);
		%feature("autodoc", "1");
		Standard_Real V1() const;
		%feature("autodoc", "1");
		void SetV2(const Standard_Real aV2);
		%feature("autodoc", "1");
		Standard_Real V2() const;
		%feature("autodoc", "1");
		void SetUsense(const Standard_Boolean aUsense);
		%feature("autodoc", "1");
		Standard_Boolean Usense() const;
		%feature("autodoc", "1");
		void SetVsense(const Standard_Boolean aVsense);
		%feature("autodoc", "1");
		Standard_Boolean Vsense() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_RectangularTrimmedSurface {
	Handle_StepGeom_RectangularTrimmedSurface GetHandle() {
	return *(Handle_StepGeom_RectangularTrimmedSurface*) &$self;
	}
};
%extend StepGeom_RectangularTrimmedSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_RectangularTrimmedSurface {
	~StepGeom_RectangularTrimmedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_RectangularTrimmedSurface\n");}
	}
};

%nodefaultctor StepGeom_DegenerateToroidalSurface;
class StepGeom_DegenerateToroidalSurface : public StepGeom_ToroidalSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_DegenerateToroidalSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition, const Standard_Real aMajorRadius, const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition, const Standard_Real aMajorRadius, const Standard_Real aMinorRadius, const Standard_Boolean aSelectOuter);
		%feature("autodoc", "1");
		void SetSelectOuter(const Standard_Boolean aSelectOuter);
		%feature("autodoc", "1");
		Standard_Boolean SelectOuter() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_DegenerateToroidalSurface {
	Handle_StepGeom_DegenerateToroidalSurface GetHandle() {
	return *(Handle_StepGeom_DegenerateToroidalSurface*) &$self;
	}
};
%extend StepGeom_DegenerateToroidalSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_DegenerateToroidalSurface {
	~StepGeom_DegenerateToroidalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_DegenerateToroidalSurface\n");}
	}
};

%nodefaultctor StepGeom_Array1OfPcurveOrSurface;
class StepGeom_Array1OfPcurveOrSurface {
	public:
		%feature("autodoc", "1");
		StepGeom_Array1OfPcurveOrSurface(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepGeom_Array1OfPcurveOrSurface(const StepGeom_PcurveOrSurface &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepGeom_PcurveOrSurface &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepGeom_Array1OfPcurveOrSurface & Assign(const StepGeom_Array1OfPcurveOrSurface &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepGeom_PcurveOrSurface &Value);
		%feature("autodoc", "1");
		const StepGeom_PcurveOrSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepGeom_PcurveOrSurface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepGeom_PcurveOrSurface & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepGeom_PcurveOrSurface & operator()(const Standard_Integer Index);

};
%extend StepGeom_Array1OfPcurveOrSurface {
	~StepGeom_Array1OfPcurveOrSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_Array1OfPcurveOrSurface\n");}
	}
};

%nodefaultctor StepGeom_CartesianTransformationOperator3d;
class StepGeom_CartesianTransformationOperator3d : public StepGeom_CartesianTransformationOperator {
	public:
		%feature("autodoc", "1");
		StepGeom_CartesianTransformationOperator3d();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasAaxis1, const Handle_StepGeom_Direction &aAxis1, const Standard_Boolean hasAaxis2, const Handle_StepGeom_Direction &aAxis2, const Handle_StepGeom_CartesianPoint &aLocalOrigin, const Standard_Boolean hasAscale, const Standard_Real aScale);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasAaxis1, const Handle_StepGeom_Direction &aAxis1, const Standard_Boolean hasAaxis2, const Handle_StepGeom_Direction &aAxis2, const Handle_StepGeom_CartesianPoint &aLocalOrigin, const Standard_Boolean hasAscale, const Standard_Real aScale, const Standard_Boolean hasAaxis3, const Handle_StepGeom_Direction &aAxis3);
		%feature("autodoc", "1");
		void SetAxis3(const Handle_StepGeom_Direction &aAxis3);
		%feature("autodoc", "1");
		void UnSetAxis3();
		%feature("autodoc", "1");
		Handle_StepGeom_Direction Axis3() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAxis3() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_CartesianTransformationOperator3d {
	Handle_StepGeom_CartesianTransformationOperator3d GetHandle() {
	return *(Handle_StepGeom_CartesianTransformationOperator3d*) &$self;
	}
};
%extend StepGeom_CartesianTransformationOperator3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_CartesianTransformationOperator3d {
	~StepGeom_CartesianTransformationOperator3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_CartesianTransformationOperator3d\n");}
	}
};

%nodefaultctor StepGeom_OffsetSurface;
class StepGeom_OffsetSurface : public StepGeom_Surface {
	public:
		%feature("autodoc", "1");
		StepGeom_OffsetSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBasisSurface, const Standard_Real aDistance, const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		void SetBasisSurface(const Handle_StepGeom_Surface &aBasisSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		void SetDistance(const Standard_Real aDistance);
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		void SetSelfIntersect(const StepData_Logical aSelfIntersect);
		%feature("autodoc", "1");
		StepData_Logical SelfIntersect() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepGeom_OffsetSurface {
	Handle_StepGeom_OffsetSurface GetHandle() {
	return *(Handle_StepGeom_OffsetSurface*) &$self;
	}
};
%extend StepGeom_OffsetSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepGeom_OffsetSurface {
	~StepGeom_OffsetSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepGeom_OffsetSurface\n");}
	}
};