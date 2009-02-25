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
%module PGeom

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


%include PGeom_dependencies.i


%include PGeom_headers.i




%nodefaultctor Handle_PGeom_Geometry;
class Handle_PGeom_Geometry : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Geometry();
		%feature("autodoc", "1");
		Handle_PGeom_Geometry();
		%feature("autodoc", "1");
		Handle_PGeom_Geometry(const Handle_PGeom_Geometry &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Geometry(const PGeom_Geometry *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Geometry const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Geometry {
	PGeom_Geometry* GetObject() {
	return (PGeom_Geometry*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Surface;
class Handle_PGeom_Surface : public Handle_PGeom_Geometry {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Surface();
		%feature("autodoc", "1");
		Handle_PGeom_Surface();
		%feature("autodoc", "1");
		Handle_PGeom_Surface(const Handle_PGeom_Surface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Surface(const PGeom_Surface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Surface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Surface {
	PGeom_Surface* GetObject() {
	return (PGeom_Surface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_BoundedSurface;
class Handle_PGeom_BoundedSurface : public Handle_PGeom_Surface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_BoundedSurface();
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface();
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface(const Handle_PGeom_BoundedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface(const PGeom_BoundedSurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_BoundedSurface {
	PGeom_BoundedSurface* GetObject() {
	return (PGeom_BoundedSurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Curve;
class Handle_PGeom_Curve : public Handle_PGeom_Geometry {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Curve();
		%feature("autodoc", "1");
		Handle_PGeom_Curve();
		%feature("autodoc", "1");
		Handle_PGeom_Curve(const Handle_PGeom_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Curve(const PGeom_Curve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Curve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Curve {
	PGeom_Curve* GetObject() {
	return (PGeom_Curve*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_BoundedCurve;
class Handle_PGeom_BoundedCurve : public Handle_PGeom_Curve {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_BoundedCurve();
		%feature("autodoc", "1");
		Handle_PGeom_BoundedCurve();
		%feature("autodoc", "1");
		Handle_PGeom_BoundedCurve(const Handle_PGeom_BoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_BoundedCurve(const PGeom_BoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_BoundedCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_BoundedCurve {
	PGeom_BoundedCurve* GetObject() {
	return (PGeom_BoundedCurve*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_TrimmedCurve;
class Handle_PGeom_TrimmedCurve : public Handle_PGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_TrimmedCurve();
		%feature("autodoc", "1");
		Handle_PGeom_TrimmedCurve();
		%feature("autodoc", "1");
		Handle_PGeom_TrimmedCurve(const Handle_PGeom_TrimmedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_TrimmedCurve(const PGeom_TrimmedCurve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_TrimmedCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_TrimmedCurve {
	PGeom_TrimmedCurve* GetObject() {
	return (PGeom_TrimmedCurve*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Transformation;
class Handle_PGeom_Transformation : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Transformation();
		%feature("autodoc", "1");
		Handle_PGeom_Transformation();
		%feature("autodoc", "1");
		Handle_PGeom_Transformation(const Handle_PGeom_Transformation &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Transformation(const PGeom_Transformation *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Transformation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Transformation {
	PGeom_Transformation* GetObject() {
	return (PGeom_Transformation*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Point;
class Handle_PGeom_Point : public Handle_PGeom_Geometry {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Point();
		%feature("autodoc", "1");
		Handle_PGeom_Point();
		%feature("autodoc", "1");
		Handle_PGeom_Point(const Handle_PGeom_Point &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Point(const PGeom_Point *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Point const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Point {
	PGeom_Point* GetObject() {
	return (PGeom_Point*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_CartesianPoint;
class Handle_PGeom_CartesianPoint : public Handle_PGeom_Point {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_CartesianPoint();
		%feature("autodoc", "1");
		Handle_PGeom_CartesianPoint();
		%feature("autodoc", "1");
		Handle_PGeom_CartesianPoint(const Handle_PGeom_CartesianPoint &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_CartesianPoint(const PGeom_CartesianPoint *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_CartesianPoint const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_CartesianPoint {
	PGeom_CartesianPoint* GetObject() {
	return (PGeom_CartesianPoint*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Conic;
class Handle_PGeom_Conic : public Handle_PGeom_Curve {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Conic();
		%feature("autodoc", "1");
		Handle_PGeom_Conic();
		%feature("autodoc", "1");
		Handle_PGeom_Conic(const Handle_PGeom_Conic &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Conic(const PGeom_Conic *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Conic const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Conic {
	PGeom_Conic* GetObject() {
	return (PGeom_Conic*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Parabola;
class Handle_PGeom_Parabola : public Handle_PGeom_Conic {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Parabola();
		%feature("autodoc", "1");
		Handle_PGeom_Parabola();
		%feature("autodoc", "1");
		Handle_PGeom_Parabola(const Handle_PGeom_Parabola &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Parabola(const PGeom_Parabola *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Parabola const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Parabola {
	PGeom_Parabola* GetObject() {
	return (PGeom_Parabola*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_AxisPlacement;
class Handle_PGeom_AxisPlacement : public Handle_PGeom_Geometry {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_AxisPlacement();
		%feature("autodoc", "1");
		Handle_PGeom_AxisPlacement();
		%feature("autodoc", "1");
		Handle_PGeom_AxisPlacement(const Handle_PGeom_AxisPlacement &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_AxisPlacement(const PGeom_AxisPlacement *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_AxisPlacement const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_AxisPlacement {
	PGeom_AxisPlacement* GetObject() {
	return (PGeom_AxisPlacement*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_SweptSurface;
class Handle_PGeom_SweptSurface : public Handle_PGeom_Surface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_SweptSurface();
		%feature("autodoc", "1");
		Handle_PGeom_SweptSurface();
		%feature("autodoc", "1");
		Handle_PGeom_SweptSurface(const Handle_PGeom_SweptSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_SweptSurface(const PGeom_SweptSurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_SweptSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_SweptSurface {
	PGeom_SweptSurface* GetObject() {
	return (PGeom_SweptSurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_BSplineSurface;
class Handle_PGeom_BSplineSurface : public Handle_PGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_BSplineSurface();
		%feature("autodoc", "1");
		Handle_PGeom_BSplineSurface();
		%feature("autodoc", "1");
		Handle_PGeom_BSplineSurface(const Handle_PGeom_BSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_BSplineSurface(const PGeom_BSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_BSplineSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_BSplineSurface {
	PGeom_BSplineSurface* GetObject() {
	return (PGeom_BSplineSurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_BezierSurface;
class Handle_PGeom_BezierSurface : public Handle_PGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_BezierSurface();
		%feature("autodoc", "1");
		Handle_PGeom_BezierSurface();
		%feature("autodoc", "1");
		Handle_PGeom_BezierSurface(const Handle_PGeom_BezierSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_BezierSurface(const PGeom_BezierSurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_BezierSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_BezierSurface {
	PGeom_BezierSurface* GetObject() {
	return (PGeom_BezierSurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Circle;
class Handle_PGeom_Circle : public Handle_PGeom_Conic {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Circle();
		%feature("autodoc", "1");
		Handle_PGeom_Circle();
		%feature("autodoc", "1");
		Handle_PGeom_Circle(const Handle_PGeom_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Circle(const PGeom_Circle *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Circle const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Circle {
	PGeom_Circle* GetObject() {
	return (PGeom_Circle*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_BSplineCurve;
class Handle_PGeom_BSplineCurve : public Handle_PGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_BSplineCurve();
		%feature("autodoc", "1");
		Handle_PGeom_BSplineCurve();
		%feature("autodoc", "1");
		Handle_PGeom_BSplineCurve(const Handle_PGeom_BSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_BSplineCurve(const PGeom_BSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_BSplineCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_BSplineCurve {
	PGeom_BSplineCurve* GetObject() {
	return (PGeom_BSplineCurve*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_ElementarySurface;
class Handle_PGeom_ElementarySurface : public Handle_PGeom_Surface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_ElementarySurface();
		%feature("autodoc", "1");
		Handle_PGeom_ElementarySurface();
		%feature("autodoc", "1");
		Handle_PGeom_ElementarySurface(const Handle_PGeom_ElementarySurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_ElementarySurface(const PGeom_ElementarySurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_ElementarySurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_ElementarySurface {
	PGeom_ElementarySurface* GetObject() {
	return (PGeom_ElementarySurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_CylindricalSurface;
class Handle_PGeom_CylindricalSurface : public Handle_PGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_CylindricalSurface();
		%feature("autodoc", "1");
		Handle_PGeom_CylindricalSurface();
		%feature("autodoc", "1");
		Handle_PGeom_CylindricalSurface(const Handle_PGeom_CylindricalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_CylindricalSurface(const PGeom_CylindricalSurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_CylindricalSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_CylindricalSurface {
	PGeom_CylindricalSurface* GetObject() {
	return (PGeom_CylindricalSurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Line;
class Handle_PGeom_Line : public Handle_PGeom_Curve {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Line();
		%feature("autodoc", "1");
		Handle_PGeom_Line();
		%feature("autodoc", "1");
		Handle_PGeom_Line(const Handle_PGeom_Line &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Line(const PGeom_Line *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Line const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Line {
	PGeom_Line* GetObject() {
	return (PGeom_Line*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Plane;
class Handle_PGeom_Plane : public Handle_PGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Plane();
		%feature("autodoc", "1");
		Handle_PGeom_Plane();
		%feature("autodoc", "1");
		Handle_PGeom_Plane(const Handle_PGeom_Plane &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Plane(const PGeom_Plane *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Plane const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Plane {
	PGeom_Plane* GetObject() {
	return (PGeom_Plane*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Hyperbola;
class Handle_PGeom_Hyperbola : public Handle_PGeom_Conic {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Hyperbola();
		%feature("autodoc", "1");
		Handle_PGeom_Hyperbola();
		%feature("autodoc", "1");
		Handle_PGeom_Hyperbola(const Handle_PGeom_Hyperbola &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Hyperbola(const PGeom_Hyperbola *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Hyperbola const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Hyperbola {
	PGeom_Hyperbola* GetObject() {
	return (PGeom_Hyperbola*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Vector;
class Handle_PGeom_Vector : public Handle_PGeom_Geometry {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Vector();
		%feature("autodoc", "1");
		Handle_PGeom_Vector();
		%feature("autodoc", "1");
		Handle_PGeom_Vector(const Handle_PGeom_Vector &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Vector(const PGeom_Vector *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Vector const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Vector {
	PGeom_Vector* GetObject() {
	return (PGeom_Vector*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Direction;
class Handle_PGeom_Direction : public Handle_PGeom_Vector {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Direction();
		%feature("autodoc", "1");
		Handle_PGeom_Direction();
		%feature("autodoc", "1");
		Handle_PGeom_Direction(const Handle_PGeom_Direction &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Direction(const PGeom_Direction *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Direction const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Direction {
	PGeom_Direction* GetObject() {
	return (PGeom_Direction*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_OffsetSurface;
class Handle_PGeom_OffsetSurface : public Handle_PGeom_Surface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_OffsetSurface();
		%feature("autodoc", "1");
		Handle_PGeom_OffsetSurface();
		%feature("autodoc", "1");
		Handle_PGeom_OffsetSurface(const Handle_PGeom_OffsetSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_OffsetSurface(const PGeom_OffsetSurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_OffsetSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_OffsetSurface {
	PGeom_OffsetSurface* GetObject() {
	return (PGeom_OffsetSurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_SurfaceOfRevolution;
class Handle_PGeom_SurfaceOfRevolution : public Handle_PGeom_SweptSurface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_SurfaceOfRevolution();
		%feature("autodoc", "1");
		Handle_PGeom_SurfaceOfRevolution();
		%feature("autodoc", "1");
		Handle_PGeom_SurfaceOfRevolution(const Handle_PGeom_SurfaceOfRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_SurfaceOfRevolution(const PGeom_SurfaceOfRevolution *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_SurfaceOfRevolution const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_SurfaceOfRevolution {
	PGeom_SurfaceOfRevolution* GetObject() {
	return (PGeom_SurfaceOfRevolution*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_ToroidalSurface;
class Handle_PGeom_ToroidalSurface : public Handle_PGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_ToroidalSurface();
		%feature("autodoc", "1");
		Handle_PGeom_ToroidalSurface();
		%feature("autodoc", "1");
		Handle_PGeom_ToroidalSurface(const Handle_PGeom_ToroidalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_ToroidalSurface(const PGeom_ToroidalSurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_ToroidalSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_ToroidalSurface {
	PGeom_ToroidalSurface* GetObject() {
	return (PGeom_ToroidalSurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_VectorWithMagnitude;
class Handle_PGeom_VectorWithMagnitude : public Handle_PGeom_Vector {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_VectorWithMagnitude();
		%feature("autodoc", "1");
		Handle_PGeom_VectorWithMagnitude();
		%feature("autodoc", "1");
		Handle_PGeom_VectorWithMagnitude(const Handle_PGeom_VectorWithMagnitude &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_VectorWithMagnitude(const PGeom_VectorWithMagnitude *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_VectorWithMagnitude const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_VectorWithMagnitude {
	PGeom_VectorWithMagnitude* GetObject() {
	return (PGeom_VectorWithMagnitude*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_OffsetCurve;
class Handle_PGeom_OffsetCurve : public Handle_PGeom_Curve {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_OffsetCurve();
		%feature("autodoc", "1");
		Handle_PGeom_OffsetCurve();
		%feature("autodoc", "1");
		Handle_PGeom_OffsetCurve(const Handle_PGeom_OffsetCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_OffsetCurve(const PGeom_OffsetCurve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_OffsetCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_OffsetCurve {
	PGeom_OffsetCurve* GetObject() {
	return (PGeom_OffsetCurve*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_SurfaceOfLinearExtrusion;
class Handle_PGeom_SurfaceOfLinearExtrusion : public Handle_PGeom_SweptSurface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_SurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		Handle_PGeom_SurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		Handle_PGeom_SurfaceOfLinearExtrusion(const Handle_PGeom_SurfaceOfLinearExtrusion &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_SurfaceOfLinearExtrusion(const PGeom_SurfaceOfLinearExtrusion *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_SurfaceOfLinearExtrusion const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_SurfaceOfLinearExtrusion {
	PGeom_SurfaceOfLinearExtrusion* GetObject() {
	return (PGeom_SurfaceOfLinearExtrusion*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Ellipse;
class Handle_PGeom_Ellipse : public Handle_PGeom_Conic {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Ellipse();
		%feature("autodoc", "1");
		Handle_PGeom_Ellipse();
		%feature("autodoc", "1");
		Handle_PGeom_Ellipse(const Handle_PGeom_Ellipse &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Ellipse(const PGeom_Ellipse *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Ellipse const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Ellipse {
	PGeom_Ellipse* GetObject() {
	return (PGeom_Ellipse*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_SphericalSurface;
class Handle_PGeom_SphericalSurface : public Handle_PGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_SphericalSurface();
		%feature("autodoc", "1");
		Handle_PGeom_SphericalSurface();
		%feature("autodoc", "1");
		Handle_PGeom_SphericalSurface(const Handle_PGeom_SphericalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_SphericalSurface(const PGeom_SphericalSurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_SphericalSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_SphericalSurface {
	PGeom_SphericalSurface* GetObject() {
	return (PGeom_SphericalSurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_RectangularTrimmedSurface;
class Handle_PGeom_RectangularTrimmedSurface : public Handle_PGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_RectangularTrimmedSurface();
		%feature("autodoc", "1");
		Handle_PGeom_RectangularTrimmedSurface();
		%feature("autodoc", "1");
		Handle_PGeom_RectangularTrimmedSurface(const Handle_PGeom_RectangularTrimmedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_RectangularTrimmedSurface(const PGeom_RectangularTrimmedSurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_RectangularTrimmedSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_RectangularTrimmedSurface {
	PGeom_RectangularTrimmedSurface* GetObject() {
	return (PGeom_RectangularTrimmedSurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_BezierCurve;
class Handle_PGeom_BezierCurve : public Handle_PGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_BezierCurve();
		%feature("autodoc", "1");
		Handle_PGeom_BezierCurve();
		%feature("autodoc", "1");
		Handle_PGeom_BezierCurve(const Handle_PGeom_BezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_BezierCurve(const PGeom_BezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_BezierCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_BezierCurve {
	PGeom_BezierCurve* GetObject() {
	return (PGeom_BezierCurve*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Axis1Placement;
class Handle_PGeom_Axis1Placement : public Handle_PGeom_AxisPlacement {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Axis1Placement();
		%feature("autodoc", "1");
		Handle_PGeom_Axis1Placement();
		%feature("autodoc", "1");
		Handle_PGeom_Axis1Placement(const Handle_PGeom_Axis1Placement &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Axis1Placement(const PGeom_Axis1Placement *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Axis1Placement const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Axis1Placement {
	PGeom_Axis1Placement* GetObject() {
	return (PGeom_Axis1Placement*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_ConicalSurface;
class Handle_PGeom_ConicalSurface : public Handle_PGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_ConicalSurface();
		%feature("autodoc", "1");
		Handle_PGeom_ConicalSurface();
		%feature("autodoc", "1");
		Handle_PGeom_ConicalSurface(const Handle_PGeom_ConicalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_ConicalSurface(const PGeom_ConicalSurface *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_ConicalSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_ConicalSurface {
	PGeom_ConicalSurface* GetObject() {
	return (PGeom_ConicalSurface*)$self->Access();
	}
};

%nodefaultctor Handle_PGeom_Axis2Placement;
class Handle_PGeom_Axis2Placement : public Handle_PGeom_AxisPlacement {
	public:
		%feature("autodoc", "1");
		~Handle_PGeom_Axis2Placement();
		%feature("autodoc", "1");
		Handle_PGeom_Axis2Placement();
		%feature("autodoc", "1");
		Handle_PGeom_Axis2Placement(const Handle_PGeom_Axis2Placement &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom_Axis2Placement(const PGeom_Axis2Placement *anItem);
		%feature("autodoc", "1");
		Handle_PGeom_Axis2Placement const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom_Axis2Placement {
	PGeom_Axis2Placement* GetObject() {
	return (PGeom_Axis2Placement*)$self->Access();
	}
};

%nodefaultctor PGeom_Geometry;
class PGeom_Geometry : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PGeom_Geometry(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PGeom_Geometry();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Geometry();

};
%extend PGeom_Geometry {
	Handle_PGeom_Geometry GetHandle() {
	return *(Handle_PGeom_Geometry*) &$self;
	}
};

%nodefaultctor PGeom_Curve;
class PGeom_Curve : public PGeom_Geometry {
	public:
		%feature("autodoc", "1");
		PGeom_Curve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PGeom_Curve();
		%feature("autodoc", "1");
		virtual		~PGeom_Curve();

};
%extend PGeom_Curve {
	Handle_PGeom_Curve GetHandle() {
	return *(Handle_PGeom_Curve*) &$self;
	}
};

%nodefaultctor PGeom_OffsetCurve;
class PGeom_OffsetCurve : public PGeom_Curve {
	public:
		%feature("autodoc", "1");
		PGeom_OffsetCurve();
		%feature("autodoc", "1");
		PGeom_OffsetCurve(const Handle_PGeom_Curve &aBasisCurve, const Standard_Real aOffsetValue, const gp_Dir &aOffsetDirection);
		%feature("autodoc", "1");
		void BasisCurve(const Handle_PGeom_Curve &aBasisCurve);
		%feature("autodoc", "1");
		Handle_PGeom_Curve BasisCurve() const;
		%feature("autodoc", "1");
		void OffsetDirection(const gp_Dir &aOffsetDirection);
		%feature("autodoc", "1");
		gp_Dir OffsetDirection() const;
		%feature("autodoc", "1");
		void OffsetValue(const Standard_Real aOffsetValue);
		%feature("autodoc", "1");
		Standard_Real OffsetValue() const;
		%feature("autodoc", "1");
		PGeom_OffsetCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Curve _CSFDB_GetPGeom_OffsetCurvebasisCurve() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_OffsetCurvebasisCurve(const Handle_PGeom_Curve &p);
		%feature("autodoc", "1");
		const gp_Dir & _CSFDB_GetPGeom_OffsetCurveoffsetDirection() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_OffsetCurveoffsetValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_OffsetCurveoffsetValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		~PGeom_OffsetCurve();

};
%extend PGeom_OffsetCurve {
	Handle_PGeom_OffsetCurve GetHandle() {
	return *(Handle_PGeom_OffsetCurve*) &$self;
	}
};

%nodefaultctor PGeom_Line;
class PGeom_Line : public PGeom_Curve {
	public:
		%feature("autodoc", "1");
		PGeom_Line();
		%feature("autodoc", "1");
		PGeom_Line(const gp_Ax1 &aPosition);
		%feature("autodoc", "1");
		void Position(const gp_Ax1 &aPosition);
		%feature("autodoc", "1");
		gp_Ax1 Position() const;
		%feature("autodoc", "1");
		PGeom_Line(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Ax1 & _CSFDB_GetPGeom_Lineposition() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Line();

};
%extend PGeom_Line {
	Handle_PGeom_Line GetHandle() {
	return *(Handle_PGeom_Line*) &$self;
	}
};

%nodefaultctor PGeom_Surface;
class PGeom_Surface : public PGeom_Geometry {
	public:
		%feature("autodoc", "1");
		PGeom_Surface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PGeom_Surface();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Surface();

};
%extend PGeom_Surface {
	Handle_PGeom_Surface GetHandle() {
	return *(Handle_PGeom_Surface*) &$self;
	}
};

%nodefaultctor PGeom_BoundedSurface;
class PGeom_BoundedSurface : public PGeom_Surface {
	public:
		%feature("autodoc", "1");
		PGeom_BoundedSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PGeom_BoundedSurface();
		%feature("autodoc", "1");
		virtual		~PGeom_BoundedSurface();

};
%extend PGeom_BoundedSurface {
	Handle_PGeom_BoundedSurface GetHandle() {
	return *(Handle_PGeom_BoundedSurface*) &$self;
	}
};

%nodefaultctor PGeom_Transformation;
class PGeom_Transformation : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PGeom_Transformation();
		%feature("autodoc", "1");
		PGeom_Transformation(const gp_Trsf &aTrsf);
		%feature("autodoc", "1");
		void Trsf(const gp_Trsf &aTrsf);
		%feature("autodoc", "1");
		gp_Trsf Trsf() const;
		%feature("autodoc", "1");
		PGeom_Transformation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Trsf & _CSFDB_GetPGeom_Transformationtrsf() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Transformation();

};
%extend PGeom_Transformation {
	Handle_PGeom_Transformation GetHandle() {
	return *(Handle_PGeom_Transformation*) &$self;
	}
};

%nodefaultctor PGeom_Point;
class PGeom_Point : public PGeom_Geometry {
	public:
		%feature("autodoc", "1");
		PGeom_Point(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PGeom_Point();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Point();

};
%extend PGeom_Point {
	Handle_PGeom_Point GetHandle() {
	return *(Handle_PGeom_Point*) &$self;
	}
};

%nodefaultctor PGeom_CartesianPoint;
class PGeom_CartesianPoint : public PGeom_Point {
	public:
		%feature("autodoc", "1");
		PGeom_CartesianPoint();
		%feature("autodoc", "1");
		PGeom_CartesianPoint(const gp_Pnt &aPnt);
		%feature("autodoc", "1");
		void Pnt(const gp_Pnt &aPnt);
		%feature("autodoc", "1");
		gp_Pnt Pnt() const;
		%feature("autodoc", "1");
		PGeom_CartesianPoint(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Pnt & _CSFDB_GetPGeom_CartesianPointpnt() const;
		%feature("autodoc", "1");
		virtual		~PGeom_CartesianPoint();

};
%extend PGeom_CartesianPoint {
	Handle_PGeom_CartesianPoint GetHandle() {
	return *(Handle_PGeom_CartesianPoint*) &$self;
	}
};

%nodefaultctor PGeom_BoundedCurve;
class PGeom_BoundedCurve : public PGeom_Curve {
	public:
		%feature("autodoc", "1");
		PGeom_BoundedCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PGeom_BoundedCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_BoundedCurve();

};
%extend PGeom_BoundedCurve {
	Handle_PGeom_BoundedCurve GetHandle() {
	return *(Handle_PGeom_BoundedCurve*) &$self;
	}
};

%nodefaultctor PGeom_BSplineCurve;
class PGeom_BSplineCurve : public PGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		PGeom_BSplineCurve();
		%feature("autodoc", "1");
		PGeom_BSplineCurve(const Standard_Boolean aRational, const Standard_Boolean aPeriodic, const Standard_Integer aSpineDegree, const Handle_PColgp_HArray1OfPnt &aPoles, const Handle_PColStd_HArray1OfReal &aWeights, const Handle_PColStd_HArray1OfReal &aKnots, const Handle_PColStd_HArray1OfInteger &aMultiplicities);
		%feature("autodoc", "1");
		void Periodic(const Standard_Boolean aPeriodic);
		%feature("autodoc", "1");
		Standard_Boolean Periodic() const;
		%feature("autodoc", "1");
		void Rational(const Standard_Boolean aRational);
		%feature("autodoc", "1");
		Standard_Boolean Rational() const;
		%feature("autodoc", "1");
		void SpineDegree(const Standard_Integer aSpineDegree);
		%feature("autodoc", "1");
		Standard_Integer SpineDegree() const;
		%feature("autodoc", "1");
		void Poles(const Handle_PColgp_HArray1OfPnt &aPoles);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt Poles() const;
		%feature("autodoc", "1");
		void Weights(const Handle_PColStd_HArray1OfReal &aWeights);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal Weights() const;
		%feature("autodoc", "1");
		void Knots(const Handle_PColStd_HArray1OfReal &aKnots);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal Knots() const;
		%feature("autodoc", "1");
		void Multiplicities(const Handle_PColStd_HArray1OfInteger &aMultiplicities);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger Multiplicities() const;
		%feature("autodoc", "1");
		PGeom_BSplineCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom_BSplineCurverational() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineCurverational(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom_BSplineCurveperiodic() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineCurveperiodic(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPGeom_BSplineCurvespineDegree() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineCurvespineDegree(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt _CSFDB_GetPGeom_BSplineCurvepoles() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineCurvepoles(const Handle_PColgp_HArray1OfPnt &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPGeom_BSplineCurveweights() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineCurveweights(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPGeom_BSplineCurveknots() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineCurveknots(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger _CSFDB_GetPGeom_BSplineCurvemultiplicities() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineCurvemultiplicities(const Handle_PColStd_HArray1OfInteger &p);
		%feature("autodoc", "1");
		virtual		~PGeom_BSplineCurve();

};
%extend PGeom_BSplineCurve {
	Handle_PGeom_BSplineCurve GetHandle() {
	return *(Handle_PGeom_BSplineCurve*) &$self;
	}
};

%nodefaultctor PGeom_BSplineSurface;
class PGeom_BSplineSurface : public PGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		PGeom_BSplineSurface();
		%feature("autodoc", "1");
		PGeom_BSplineSurface(const Standard_Boolean aURational, const Standard_Boolean aVRational, const Standard_Boolean aUPeriodic, const Standard_Boolean aVPeriodic, const Standard_Integer aUSpineDegree, const Standard_Integer aVSpineDegree, const Handle_PColgp_HArray2OfPnt &aPoles, const Handle_PColStd_HArray2OfReal &aWeights, const Handle_PColStd_HArray1OfReal &aUKnots, const Handle_PColStd_HArray1OfReal &aVKnots, const Handle_PColStd_HArray1OfInteger &aUMultiplicities, const Handle_PColStd_HArray1OfInteger &aVMultiplicities);
		%feature("autodoc", "1");
		void URational(const Standard_Boolean aURational);
		%feature("autodoc", "1");
		Standard_Boolean URational() const;
		%feature("autodoc", "1");
		void VRational(const Standard_Boolean aVRational);
		%feature("autodoc", "1");
		Standard_Boolean VRational() const;
		%feature("autodoc", "1");
		void UPeriodic(const Standard_Boolean aUPeriodic);
		%feature("autodoc", "1");
		Standard_Boolean UPeriodic() const;
		%feature("autodoc", "1");
		void VPeriodic(const Standard_Boolean aVPeriodic);
		%feature("autodoc", "1");
		Standard_Boolean VPeriodic() const;
		%feature("autodoc", "1");
		void USpineDegree(const Standard_Integer aUSpineDegree);
		%feature("autodoc", "1");
		Standard_Integer USpineDegree() const;
		%feature("autodoc", "1");
		void VSpineDegree(const Standard_Integer aVSpineDegree);
		%feature("autodoc", "1");
		Standard_Integer VSpineDegree() const;
		%feature("autodoc", "1");
		void Poles(const Handle_PColgp_HArray2OfPnt &aPoles);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt Poles() const;
		%feature("autodoc", "1");
		void Weights(const Handle_PColStd_HArray2OfReal &aWeights);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfReal Weights() const;
		%feature("autodoc", "1");
		void UKnots(const Handle_PColStd_HArray1OfReal &aUKnots);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal UKnots() const;
		%feature("autodoc", "1");
		void VKnots(const Handle_PColStd_HArray1OfReal &aVKnots);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal VKnots() const;
		%feature("autodoc", "1");
		void UMultiplicities(const Handle_PColStd_HArray1OfInteger &aUMultiplicities);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger UMultiplicities() const;
		%feature("autodoc", "1");
		void VMultiplicities(const Handle_PColStd_HArray1OfInteger &aVMultiplicities);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger VMultiplicities() const;
		%feature("autodoc", "1");
		PGeom_BSplineSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom_BSplineSurfaceuRational() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfaceuRational(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom_BSplineSurfacevRational() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfacevRational(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom_BSplineSurfaceuPeriodic() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfaceuPeriodic(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom_BSplineSurfacevPeriodic() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfacevPeriodic(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPGeom_BSplineSurfaceuSpineDegree() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfaceuSpineDegree(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPGeom_BSplineSurfacevSpineDegree() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfacevSpineDegree(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt _CSFDB_GetPGeom_BSplineSurfacepoles() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfacepoles(const Handle_PColgp_HArray2OfPnt &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfReal _CSFDB_GetPGeom_BSplineSurfaceweights() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfaceweights(const Handle_PColStd_HArray2OfReal &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPGeom_BSplineSurfaceuKnots() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfaceuKnots(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPGeom_BSplineSurfacevKnots() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfacevKnots(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger _CSFDB_GetPGeom_BSplineSurfaceuMultiplicities() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfaceuMultiplicities(const Handle_PColStd_HArray1OfInteger &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger _CSFDB_GetPGeom_BSplineSurfacevMultiplicities() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BSplineSurfacevMultiplicities(const Handle_PColStd_HArray1OfInteger &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_BSplineSurface();

};
%extend PGeom_BSplineSurface {
	Handle_PGeom_BSplineSurface GetHandle() {
	return *(Handle_PGeom_BSplineSurface*) &$self;
	}
};

%nodefaultctor PGeom_Vector;
class PGeom_Vector : public PGeom_Geometry {
	public:
		%feature("autodoc", "1");
		void Vec(const gp_Vec &aVec);
		%feature("autodoc", "1");
		gp_Vec Vec() const;
		%feature("autodoc", "1");
		PGeom_Vector(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Vec & _CSFDB_GetPGeom_Vectorvec() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Vector();

};
%extend PGeom_Vector {
	Handle_PGeom_Vector GetHandle() {
	return *(Handle_PGeom_Vector*) &$self;
	}
};

%nodefaultctor PGeom_Direction;
class PGeom_Direction : public PGeom_Vector {
	public:
		%feature("autodoc", "1");
		PGeom_Direction();
		%feature("autodoc", "1");
		PGeom_Direction(const gp_Vec &aVec);
		%feature("autodoc", "1");
		PGeom_Direction(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		~PGeom_Direction();

};
%extend PGeom_Direction {
	Handle_PGeom_Direction GetHandle() {
	return *(Handle_PGeom_Direction*) &$self;
	}
};

%nodefaultctor PGeom_Conic;
class PGeom_Conic : public PGeom_Curve {
	public:
		%feature("autodoc", "1");
		void Position(const gp_Ax2 &aPosition);
		%feature("autodoc", "1");
		gp_Ax2 Position() const;
		%feature("autodoc", "1");
		PGeom_Conic(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Ax2 & _CSFDB_GetPGeom_Conicposition() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Conic();

};
%extend PGeom_Conic {
	Handle_PGeom_Conic GetHandle() {
	return *(Handle_PGeom_Conic*) &$self;
	}
};

%nodefaultctor PGeom_Parabola;
class PGeom_Parabola : public PGeom_Conic {
	public:
		%feature("autodoc", "1");
		PGeom_Parabola();
		%feature("autodoc", "1");
		PGeom_Parabola(const gp_Ax2 &aPosition, const Standard_Real aFocalLength);
		%feature("autodoc", "1");
		void FocalLength(const Standard_Real aFocalLength);
		%feature("autodoc", "1");
		Standard_Real FocalLength() const;
		%feature("autodoc", "1");
		PGeom_Parabola(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_ParabolafocalLength() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_ParabolafocalLength(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		~PGeom_Parabola();

};
%extend PGeom_Parabola {
	Handle_PGeom_Parabola GetHandle() {
	return *(Handle_PGeom_Parabola*) &$self;
	}
};

%nodefaultctor PGeom_Circle;
class PGeom_Circle : public PGeom_Conic {
	public:
		%feature("autodoc", "1");
		PGeom_Circle();
		%feature("autodoc", "1");
		PGeom_Circle(const gp_Ax2 &aPosition, const Standard_Real aRadius);
		%feature("autodoc", "1");
		void Radius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		PGeom_Circle(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_Circleradius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_Circleradius(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Circle();

};
%extend PGeom_Circle {
	Handle_PGeom_Circle GetHandle() {
	return *(Handle_PGeom_Circle*) &$self;
	}
};

%nodefaultctor PGeom_ElementarySurface;
class PGeom_ElementarySurface : public PGeom_Surface {
	public:
		%feature("autodoc", "1");
		void Position(const gp_Ax3 &aPosition);
		%feature("autodoc", "1");
		gp_Ax3 Position() const;
		%feature("autodoc", "1");
		PGeom_ElementarySurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Ax3 & _CSFDB_GetPGeom_ElementarySurfaceposition() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_ElementarySurface();

};
%extend PGeom_ElementarySurface {
	Handle_PGeom_ElementarySurface GetHandle() {
	return *(Handle_PGeom_ElementarySurface*) &$self;
	}
};

%nodefaultctor PGeom_ToroidalSurface;
class PGeom_ToroidalSurface : public PGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		PGeom_ToroidalSurface();
		%feature("autodoc", "1");
		PGeom_ToroidalSurface(const gp_Ax3 &aPosition, const Standard_Real aMajorRadius, const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		void MajorRadius(const Standard_Real aMajorRadius);
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		void MinorRadius(const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		PGeom_ToroidalSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_ToroidalSurfacemajorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_ToroidalSurfacemajorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_ToroidalSurfaceminorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_ToroidalSurfaceminorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		~PGeom_ToroidalSurface();

};
%extend PGeom_ToroidalSurface {
	Handle_PGeom_ToroidalSurface GetHandle() {
	return *(Handle_PGeom_ToroidalSurface*) &$self;
	}
};

%nodefaultctor PGeom_RectangularTrimmedSurface;
class PGeom_RectangularTrimmedSurface : public PGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		PGeom_RectangularTrimmedSurface();
		%feature("autodoc", "1");
		PGeom_RectangularTrimmedSurface(const Handle_PGeom_Surface &aBasisSurface, const Standard_Real aFirstU, const Standard_Real aLastU, const Standard_Real aFirstV, const Standard_Real aLastV);
		%feature("autodoc", "1");
		void BasisSurface(const Handle_PGeom_Surface &aBasisSurface);
		%feature("autodoc", "1");
		Handle_PGeom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		void FirstU(const Standard_Real aFirstU);
		%feature("autodoc", "1");
		Standard_Real FirstU() const;
		%feature("autodoc", "1");
		void LastU(const Standard_Real aLastU);
		%feature("autodoc", "1");
		Standard_Real LastU() const;
		%feature("autodoc", "1");
		void FirstV(const Standard_Real aFirstV);
		%feature("autodoc", "1");
		Standard_Real FirstV() const;
		%feature("autodoc", "1");
		void LastV(const Standard_Real aLastV);
		%feature("autodoc", "1");
		Standard_Real LastV() const;
		%feature("autodoc", "1");
		PGeom_RectangularTrimmedSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPGeom_RectangularTrimmedSurfacebasisSurface() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_RectangularTrimmedSurfacebasisSurface(const Handle_PGeom_Surface &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_RectangularTrimmedSurfacefirstU() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_RectangularTrimmedSurfacefirstU(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_RectangularTrimmedSurfacelastU() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_RectangularTrimmedSurfacelastU(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_RectangularTrimmedSurfacefirstV() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_RectangularTrimmedSurfacefirstV(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_RectangularTrimmedSurfacelastV() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_RectangularTrimmedSurfacelastV(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_RectangularTrimmedSurface();

};
%extend PGeom_RectangularTrimmedSurface {
	Handle_PGeom_RectangularTrimmedSurface GetHandle() {
	return *(Handle_PGeom_RectangularTrimmedSurface*) &$self;
	}
};

%nodefaultctor PGeom_AxisPlacement;
class PGeom_AxisPlacement : public PGeom_Geometry {
	public:
		%feature("autodoc", "1");
		void Axis(const gp_Ax1 &aAxis);
		%feature("autodoc", "1");
		gp_Ax1 Axis() const;
		%feature("autodoc", "1");
		PGeom_AxisPlacement(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Ax1 & _CSFDB_GetPGeom_AxisPlacementaxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_AxisPlacement();

};
%extend PGeom_AxisPlacement {
	Handle_PGeom_AxisPlacement GetHandle() {
	return *(Handle_PGeom_AxisPlacement*) &$self;
	}
};

%nodefaultctor PGeom_BezierSurface;
class PGeom_BezierSurface : public PGeom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		PGeom_BezierSurface();
		%feature("autodoc", "1");
		PGeom_BezierSurface(const Standard_Boolean aURational, const Standard_Boolean aVRational, const Handle_PColgp_HArray2OfPnt &aPoles, const Handle_PColStd_HArray2OfReal &aWeights);
		%feature("autodoc", "1");
		void Poles(const Handle_PColgp_HArray2OfPnt &aPoles);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt Poles() const;
		%feature("autodoc", "1");
		void Weights(const Handle_PColStd_HArray2OfReal &aWeights);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfReal Weights() const;
		%feature("autodoc", "1");
		void URational(const Standard_Boolean aURational);
		%feature("autodoc", "1");
		Standard_Boolean URational() const;
		%feature("autodoc", "1");
		void VRational(const Standard_Boolean aVRational);
		%feature("autodoc", "1");
		Standard_Boolean VRational() const;
		%feature("autodoc", "1");
		PGeom_BezierSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom_BezierSurfaceuRational() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BezierSurfaceuRational(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom_BezierSurfacevRational() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BezierSurfacevRational(const Standard_Boolean p);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt _CSFDB_GetPGeom_BezierSurfacepoles() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BezierSurfacepoles(const Handle_PColgp_HArray2OfPnt &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfReal _CSFDB_GetPGeom_BezierSurfaceweights() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BezierSurfaceweights(const Handle_PColStd_HArray2OfReal &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_BezierSurface();

};
%extend PGeom_BezierSurface {
	Handle_PGeom_BezierSurface GetHandle() {
	return *(Handle_PGeom_BezierSurface*) &$self;
	}
};

%nodefaultctor PGeom_Axis2Placement;
class PGeom_Axis2Placement : public PGeom_AxisPlacement {
	public:
		%feature("autodoc", "1");
		PGeom_Axis2Placement();
		%feature("autodoc", "1");
		PGeom_Axis2Placement(const gp_Ax1 &aAxis, const gp_Dir &aXDirection);
		%feature("autodoc", "1");
		void XDirection(const gp_Dir &aXDirection);
		%feature("autodoc", "1");
		gp_Dir XDirection() const;
		%feature("autodoc", "1");
		PGeom_Axis2Placement(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Dir & _CSFDB_GetPGeom_Axis2PlacementxDirection() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Axis2Placement();

};
%extend PGeom_Axis2Placement {
	Handle_PGeom_Axis2Placement GetHandle() {
	return *(Handle_PGeom_Axis2Placement*) &$self;
	}
};

%nodefaultctor PGeom_SweptSurface;
class PGeom_SweptSurface : public PGeom_Surface {
	public:
		%feature("autodoc", "1");
		void BasisCurve(const Handle_PGeom_Curve &aBasisCurve);
		%feature("autodoc", "1");
		Handle_PGeom_Curve BasisCurve() const;
		%feature("autodoc", "1");
		void Direction(const gp_Dir &aDirection);
		%feature("autodoc", "1");
		gp_Dir Direction() const;
		%feature("autodoc", "1");
		PGeom_SweptSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Curve _CSFDB_GetPGeom_SweptSurfacebasisCurve() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_SweptSurfacebasisCurve(const Handle_PGeom_Curve &p);
		%feature("autodoc", "1");
		const gp_Dir & _CSFDB_GetPGeom_SweptSurfacedirection() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_SweptSurface();

};
%extend PGeom_SweptSurface {
	Handle_PGeom_SweptSurface GetHandle() {
	return *(Handle_PGeom_SweptSurface*) &$self;
	}
};

%nodefaultctor PGeom_SurfaceOfLinearExtrusion;
class PGeom_SurfaceOfLinearExtrusion : public PGeom_SweptSurface {
	public:
		%feature("autodoc", "1");
		PGeom_SurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		PGeom_SurfaceOfLinearExtrusion(const Handle_PGeom_Curve &aBasisCurve, const gp_Dir &aDirection);
		%feature("autodoc", "1");
		PGeom_SurfaceOfLinearExtrusion(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		~PGeom_SurfaceOfLinearExtrusion();

};
%extend PGeom_SurfaceOfLinearExtrusion {
	Handle_PGeom_SurfaceOfLinearExtrusion GetHandle() {
	return *(Handle_PGeom_SurfaceOfLinearExtrusion*) &$self;
	}
};

%nodefaultctor PGeom_CylindricalSurface;
class PGeom_CylindricalSurface : public PGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		PGeom_CylindricalSurface();
		%feature("autodoc", "1");
		PGeom_CylindricalSurface(const gp_Ax3 &aPosition, const Standard_Real aRadius);
		%feature("autodoc", "1");
		void Radius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		PGeom_CylindricalSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_CylindricalSurfaceradius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_CylindricalSurfaceradius(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_CylindricalSurface();

};
%extend PGeom_CylindricalSurface {
	Handle_PGeom_CylindricalSurface GetHandle() {
	return *(Handle_PGeom_CylindricalSurface*) &$self;
	}
};

%nodefaultctor PGeom_Axis1Placement;
class PGeom_Axis1Placement : public PGeom_AxisPlacement {
	public:
		%feature("autodoc", "1");
		PGeom_Axis1Placement();
		%feature("autodoc", "1");
		PGeom_Axis1Placement(const gp_Ax1 &aAxis);
		%feature("autodoc", "1");
		PGeom_Axis1Placement(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Axis1Placement();

};
%extend PGeom_Axis1Placement {
	Handle_PGeom_Axis1Placement GetHandle() {
	return *(Handle_PGeom_Axis1Placement*) &$self;
	}
};

%nodefaultctor PGeom_SphericalSurface;
class PGeom_SphericalSurface : public PGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		PGeom_SphericalSurface();
		%feature("autodoc", "1");
		PGeom_SphericalSurface(const gp_Ax3 &aPosition, const Standard_Real aRadius);
		%feature("autodoc", "1");
		void Radius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		PGeom_SphericalSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_SphericalSurfaceradius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_SphericalSurfaceradius(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_SphericalSurface();

};
%extend PGeom_SphericalSurface {
	Handle_PGeom_SphericalSurface GetHandle() {
	return *(Handle_PGeom_SphericalSurface*) &$self;
	}
};

%nodefaultctor PGeom_TrimmedCurve;
class PGeom_TrimmedCurve : public PGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		PGeom_TrimmedCurve();
		%feature("autodoc", "1");
		PGeom_TrimmedCurve(const Handle_PGeom_Curve &aBasisCurve, const Standard_Real aFirstU, const Standard_Real aLastU);
		%feature("autodoc", "1");
		void FirstU(const Standard_Real aFirstU);
		%feature("autodoc", "1");
		Standard_Real FirstU() const;
		%feature("autodoc", "1");
		void LastU(const Standard_Real aLastU);
		%feature("autodoc", "1");
		Standard_Real LastU() const;
		%feature("autodoc", "1");
		void BasisCurve(const Handle_PGeom_Curve &aBasisCurve);
		%feature("autodoc", "1");
		Handle_PGeom_Curve BasisCurve() const;
		%feature("autodoc", "1");
		PGeom_TrimmedCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Curve _CSFDB_GetPGeom_TrimmedCurvebasisCurve() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_TrimmedCurvebasisCurve(const Handle_PGeom_Curve &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_TrimmedCurvefirstU() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_TrimmedCurvefirstU(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_TrimmedCurvelastU() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_TrimmedCurvelastU(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_TrimmedCurve();

};
%extend PGeom_TrimmedCurve {
	Handle_PGeom_TrimmedCurve GetHandle() {
	return *(Handle_PGeom_TrimmedCurve*) &$self;
	}
};

%nodefaultctor PGeom_BezierCurve;
class PGeom_BezierCurve : public PGeom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		PGeom_BezierCurve();
		%feature("autodoc", "1");
		PGeom_BezierCurve(const Handle_PColgp_HArray1OfPnt &aPoles, const Handle_PColStd_HArray1OfReal &aWeights, const Standard_Boolean aRational);
		%feature("autodoc", "1");
		void Rational(const Standard_Boolean aRational);
		%feature("autodoc", "1");
		Standard_Boolean Rational() const;
		%feature("autodoc", "1");
		void Poles(const Handle_PColgp_HArray1OfPnt &aPoles);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt Poles() const;
		%feature("autodoc", "1");
		void Weights(const Handle_PColStd_HArray1OfReal &aWeights);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal Weights() const;
		%feature("autodoc", "1");
		PGeom_BezierCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom_BezierCurverational() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BezierCurverational(const Standard_Boolean p);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt _CSFDB_GetPGeom_BezierCurvepoles() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BezierCurvepoles(const Handle_PColgp_HArray1OfPnt &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPGeom_BezierCurveweights() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_BezierCurveweights(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_BezierCurve();

};
%extend PGeom_BezierCurve {
	Handle_PGeom_BezierCurve GetHandle() {
	return *(Handle_PGeom_BezierCurve*) &$self;
	}
};

%nodefaultctor PGeom_OffsetSurface;
class PGeom_OffsetSurface : public PGeom_Surface {
	public:
		%feature("autodoc", "1");
		PGeom_OffsetSurface();
		%feature("autodoc", "1");
		PGeom_OffsetSurface(const Handle_PGeom_Surface &aBasisSurface, const Standard_Real aOffsetValue);
		%feature("autodoc", "1");
		void BasisSurface(const Handle_PGeom_Surface &aBasisSurface);
		%feature("autodoc", "1");
		Handle_PGeom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		void OffsetValue(const Standard_Real aOffsetValue);
		%feature("autodoc", "1");
		Standard_Real OffsetValue() const;
		%feature("autodoc", "1");
		PGeom_OffsetSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPGeom_OffsetSurfacebasisSurface() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_OffsetSurfacebasisSurface(const Handle_PGeom_Surface &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_OffsetSurfaceoffsetValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_OffsetSurfaceoffsetValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_OffsetSurface();

};
%extend PGeom_OffsetSurface {
	Handle_PGeom_OffsetSurface GetHandle() {
	return *(Handle_PGeom_OffsetSurface*) &$self;
	}
};

%nodefaultctor PGeom_Ellipse;
class PGeom_Ellipse : public PGeom_Conic {
	public:
		%feature("autodoc", "1");
		PGeom_Ellipse();
		%feature("autodoc", "1");
		PGeom_Ellipse(const gp_Ax2 &aPosition, const Standard_Real aMajorRadius, const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		void MajorRadius(const Standard_Real aMajorRadius);
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		void MinorRadius(const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		PGeom_Ellipse(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_EllipsemajorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_EllipsemajorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_EllipseminorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_EllipseminorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Ellipse();

};
%extend PGeom_Ellipse {
	Handle_PGeom_Ellipse GetHandle() {
	return *(Handle_PGeom_Ellipse*) &$self;
	}
};

%nodefaultctor PGeom_ConicalSurface;
class PGeom_ConicalSurface : public PGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		PGeom_ConicalSurface();
		%feature("autodoc", "1");
		PGeom_ConicalSurface(const gp_Ax3 &aPosition, const Standard_Real aRadius, const Standard_Real aSemiAngle);
		%feature("autodoc", "1");
		void Radius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		void SemiAngle(const Standard_Real aSemiAngle);
		%feature("autodoc", "1");
		Standard_Real SemiAngle() const;
		%feature("autodoc", "1");
		PGeom_ConicalSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_ConicalSurfaceradius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_ConicalSurfaceradius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_ConicalSurfacesemiAngle() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_ConicalSurfacesemiAngle(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_ConicalSurface();

};
%extend PGeom_ConicalSurface {
	Handle_PGeom_ConicalSurface GetHandle() {
	return *(Handle_PGeom_ConicalSurface*) &$self;
	}
};

%nodefaultctor PGeom_SurfaceOfRevolution;
class PGeom_SurfaceOfRevolution : public PGeom_SweptSurface {
	public:
		%feature("autodoc", "1");
		PGeom_SurfaceOfRevolution();
		%feature("autodoc", "1");
		PGeom_SurfaceOfRevolution(const Handle_PGeom_Curve &aBasisCurve, const gp_Dir &aDirection, const gp_Pnt &aLocation);
		%feature("autodoc", "1");
		void Location(const gp_Pnt &aLocation);
		%feature("autodoc", "1");
		gp_Pnt Location() const;
		%feature("autodoc", "1");
		PGeom_SurfaceOfRevolution(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Pnt & _CSFDB_GetPGeom_SurfaceOfRevolutionlocation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_SurfaceOfRevolution();

};
%extend PGeom_SurfaceOfRevolution {
	Handle_PGeom_SurfaceOfRevolution GetHandle() {
	return *(Handle_PGeom_SurfaceOfRevolution*) &$self;
	}
};

%nodefaultctor PGeom_Hyperbola;
class PGeom_Hyperbola : public PGeom_Conic {
	public:
		%feature("autodoc", "1");
		PGeom_Hyperbola();
		%feature("autodoc", "1");
		PGeom_Hyperbola(const gp_Ax2 &aPosition, const Standard_Real aMajorRadius, const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		void MajorRadius(const Standard_Real aMajorRadius);
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		void MinorRadius(const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		PGeom_Hyperbola(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_HyperbolamajorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_HyperbolamajorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom_HyperbolaminorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom_HyperbolaminorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Hyperbola();

};
%extend PGeom_Hyperbola {
	Handle_PGeom_Hyperbola GetHandle() {
	return *(Handle_PGeom_Hyperbola*) &$self;
	}
};

%nodefaultctor PGeom_Plane;
class PGeom_Plane : public PGeom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		PGeom_Plane();
		%feature("autodoc", "1");
		PGeom_Plane(const gp_Ax3 &aPosition);
		%feature("autodoc", "1");
		PGeom_Plane(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_Plane();

};
%extend PGeom_Plane {
	Handle_PGeom_Plane GetHandle() {
	return *(Handle_PGeom_Plane*) &$self;
	}
};

%nodefaultctor PGeom_VectorWithMagnitude;
class PGeom_VectorWithMagnitude : public PGeom_Vector {
	public:
		%feature("autodoc", "1");
		PGeom_VectorWithMagnitude();
		%feature("autodoc", "1");
		PGeom_VectorWithMagnitude(const gp_Vec &aVec);
		%feature("autodoc", "1");
		PGeom_VectorWithMagnitude(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PGeom_VectorWithMagnitude();

};
%extend PGeom_VectorWithMagnitude {
	Handle_PGeom_VectorWithMagnitude GetHandle() {
	return *(Handle_PGeom_VectorWithMagnitude*) &$self;
	}
};