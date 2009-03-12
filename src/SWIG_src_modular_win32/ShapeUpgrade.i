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
%module ShapeUpgrade

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


%include ShapeUpgrade_dependencies.i


%include ShapeUpgrade_headers.i




%nodefaultctor Handle_ShapeUpgrade_Tool;
class Handle_ShapeUpgrade_Tool : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_Tool();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_Tool(const Handle_ShapeUpgrade_Tool &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_Tool(const ShapeUpgrade_Tool *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_Tool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_Tool {
	ShapeUpgrade_Tool* GetObject() {
	return (ShapeUpgrade_Tool*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_Tool {
	~Handle_ShapeUpgrade_Tool() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_Tool\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_FixSmallCurves;
class Handle_ShapeUpgrade_FixSmallCurves : public Handle_ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves(const Handle_ShapeUpgrade_FixSmallCurves &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves(const ShapeUpgrade_FixSmallCurves *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_FixSmallCurves {
	ShapeUpgrade_FixSmallCurves* GetObject() {
	return (ShapeUpgrade_FixSmallCurves*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_FixSmallCurves {
	~Handle_ShapeUpgrade_FixSmallCurves() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_FixSmallCurves\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_FixSmallBezierCurves;
class Handle_ShapeUpgrade_FixSmallBezierCurves : public Handle_ShapeUpgrade_FixSmallCurves {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallBezierCurves();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallBezierCurves(const Handle_ShapeUpgrade_FixSmallBezierCurves &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallBezierCurves(const ShapeUpgrade_FixSmallBezierCurves *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallBezierCurves const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_FixSmallBezierCurves {
	ShapeUpgrade_FixSmallBezierCurves* GetObject() {
	return (ShapeUpgrade_FixSmallBezierCurves*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_FixSmallBezierCurves {
	~Handle_ShapeUpgrade_FixSmallBezierCurves() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_FixSmallBezierCurves\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_SplitSurface;
class Handle_ShapeUpgrade_SplitSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurface();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurface(const Handle_ShapeUpgrade_SplitSurface &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurface(const ShapeUpgrade_SplitSurface *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitSurface {
	ShapeUpgrade_SplitSurface* GetObject() {
	return (ShapeUpgrade_SplitSurface*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_SplitSurface {
	~Handle_ShapeUpgrade_SplitSurface() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_SplitSurface\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_SplitSurfaceAngle;
class Handle_ShapeUpgrade_SplitSurfaceAngle : public Handle_ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceAngle();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceAngle(const Handle_ShapeUpgrade_SplitSurfaceAngle &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceAngle(const ShapeUpgrade_SplitSurfaceAngle *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceAngle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitSurfaceAngle {
	ShapeUpgrade_SplitSurfaceAngle* GetObject() {
	return (ShapeUpgrade_SplitSurfaceAngle*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_SplitSurfaceAngle {
	~Handle_ShapeUpgrade_SplitSurfaceAngle() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_SplitSurfaceAngle\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_EdgeDivide;
class Handle_ShapeUpgrade_EdgeDivide : public Handle_ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_EdgeDivide();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_EdgeDivide(const Handle_ShapeUpgrade_EdgeDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_EdgeDivide(const ShapeUpgrade_EdgeDivide *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_EdgeDivide const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_EdgeDivide {
	ShapeUpgrade_EdgeDivide* GetObject() {
	return (ShapeUpgrade_EdgeDivide*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_EdgeDivide {
	~Handle_ShapeUpgrade_EdgeDivide() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_EdgeDivide\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_ClosedEdgeDivide;
class Handle_ShapeUpgrade_ClosedEdgeDivide : public Handle_ShapeUpgrade_EdgeDivide {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedEdgeDivide();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedEdgeDivide(const Handle_ShapeUpgrade_ClosedEdgeDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedEdgeDivide(const ShapeUpgrade_ClosedEdgeDivide *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedEdgeDivide const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_ClosedEdgeDivide {
	ShapeUpgrade_ClosedEdgeDivide* GetObject() {
	return (ShapeUpgrade_ClosedEdgeDivide*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_ClosedEdgeDivide {
	~Handle_ShapeUpgrade_ClosedEdgeDivide() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_ClosedEdgeDivide\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis;
class Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis : public Handle_ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis(const Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis(const ShapeUpgrade_ConvertSurfaceToBezierBasis *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis {
	ShapeUpgrade_ConvertSurfaceToBezierBasis* GetObject() {
	return (ShapeUpgrade_ConvertSurfaceToBezierBasis*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis {
	~Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_RemoveLocations;
class Handle_ShapeUpgrade_RemoveLocations : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveLocations();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveLocations(const Handle_ShapeUpgrade_RemoveLocations &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveLocations(const ShapeUpgrade_RemoveLocations *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveLocations const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_RemoveLocations {
	ShapeUpgrade_RemoveLocations* GetObject() {
	return (ShapeUpgrade_RemoveLocations*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_RemoveLocations {
	~Handle_ShapeUpgrade_RemoveLocations() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_RemoveLocations\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_SplitCurve;
class Handle_ShapeUpgrade_SplitCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve(const Handle_ShapeUpgrade_SplitCurve &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve(const ShapeUpgrade_SplitCurve *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitCurve {
	ShapeUpgrade_SplitCurve* GetObject() {
	return (ShapeUpgrade_SplitCurve*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_SplitCurve {
	~Handle_ShapeUpgrade_SplitCurve() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_SplitCurve\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_RemoveInternalWires;
class Handle_ShapeUpgrade_RemoveInternalWires : public Handle_ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveInternalWires();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveInternalWires(const Handle_ShapeUpgrade_RemoveInternalWires &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveInternalWires(const ShapeUpgrade_RemoveInternalWires *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveInternalWires const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_RemoveInternalWires {
	ShapeUpgrade_RemoveInternalWires* GetObject() {
	return (ShapeUpgrade_RemoveInternalWires*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_RemoveInternalWires {
	~Handle_ShapeUpgrade_RemoveInternalWires() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_RemoveInternalWires\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_SplitSurfaceArea;
class Handle_ShapeUpgrade_SplitSurfaceArea : public Handle_ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceArea();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceArea(const Handle_ShapeUpgrade_SplitSurfaceArea &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceArea(const ShapeUpgrade_SplitSurfaceArea *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceArea const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitSurfaceArea {
	ShapeUpgrade_SplitSurfaceArea* GetObject() {
	return (ShapeUpgrade_SplitSurfaceArea*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_SplitSurfaceArea {
	~Handle_ShapeUpgrade_SplitSurfaceArea() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_SplitSurfaceArea\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_SplitSurfaceContinuity;
class Handle_ShapeUpgrade_SplitSurfaceContinuity : public Handle_ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceContinuity();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceContinuity(const Handle_ShapeUpgrade_SplitSurfaceContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceContinuity(const ShapeUpgrade_SplitSurfaceContinuity *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceContinuity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitSurfaceContinuity {
	ShapeUpgrade_SplitSurfaceContinuity* GetObject() {
	return (ShapeUpgrade_SplitSurfaceContinuity*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_SplitSurfaceContinuity {
	~Handle_ShapeUpgrade_SplitSurfaceContinuity() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_SplitSurfaceContinuity\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_SplitCurve2d;
class Handle_ShapeUpgrade_SplitCurve2d : public Handle_ShapeUpgrade_SplitCurve {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2d();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2d(const Handle_ShapeUpgrade_SplitCurve2d &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2d(const ShapeUpgrade_SplitCurve2d *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitCurve2d {
	ShapeUpgrade_SplitCurve2d* GetObject() {
	return (ShapeUpgrade_SplitCurve2d*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_SplitCurve2d {
	~Handle_ShapeUpgrade_SplitCurve2d() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_SplitCurve2d\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_ConvertCurve2dToBezier;
class Handle_ShapeUpgrade_ConvertCurve2dToBezier : public Handle_ShapeUpgrade_SplitCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve2dToBezier();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve2dToBezier(const Handle_ShapeUpgrade_ConvertCurve2dToBezier &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve2dToBezier(const ShapeUpgrade_ConvertCurve2dToBezier *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve2dToBezier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_ConvertCurve2dToBezier {
	ShapeUpgrade_ConvertCurve2dToBezier* GetObject() {
	return (ShapeUpgrade_ConvertCurve2dToBezier*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_ConvertCurve2dToBezier {
	~Handle_ShapeUpgrade_ConvertCurve2dToBezier() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_ConvertCurve2dToBezier\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_SplitCurve2dContinuity;
class Handle_ShapeUpgrade_SplitCurve2dContinuity : public Handle_ShapeUpgrade_SplitCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2dContinuity();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2dContinuity(const Handle_ShapeUpgrade_SplitCurve2dContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2dContinuity(const ShapeUpgrade_SplitCurve2dContinuity *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2dContinuity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitCurve2dContinuity {
	ShapeUpgrade_SplitCurve2dContinuity* GetObject() {
	return (ShapeUpgrade_SplitCurve2dContinuity*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_SplitCurve2dContinuity {
	~Handle_ShapeUpgrade_SplitCurve2dContinuity() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_SplitCurve2dContinuity\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_FaceDivide;
class Handle_ShapeUpgrade_FaceDivide : public Handle_ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivide();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivide(const Handle_ShapeUpgrade_FaceDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivide(const ShapeUpgrade_FaceDivide *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivide const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_FaceDivide {
	ShapeUpgrade_FaceDivide* GetObject() {
	return (ShapeUpgrade_FaceDivide*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_FaceDivide {
	~Handle_ShapeUpgrade_FaceDivide() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_FaceDivide\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_FaceDivideArea;
class Handle_ShapeUpgrade_FaceDivideArea : public Handle_ShapeUpgrade_FaceDivide {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivideArea();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivideArea(const Handle_ShapeUpgrade_FaceDivideArea &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivideArea(const ShapeUpgrade_FaceDivideArea *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivideArea const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_FaceDivideArea {
	ShapeUpgrade_FaceDivideArea* GetObject() {
	return (ShapeUpgrade_FaceDivideArea*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_FaceDivideArea {
	~Handle_ShapeUpgrade_FaceDivideArea() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_FaceDivideArea\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_SplitCurve3d;
class Handle_ShapeUpgrade_SplitCurve3d : public Handle_ShapeUpgrade_SplitCurve {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3d();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3d(const Handle_ShapeUpgrade_SplitCurve3d &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3d(const ShapeUpgrade_SplitCurve3d *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitCurve3d {
	ShapeUpgrade_SplitCurve3d* GetObject() {
	return (ShapeUpgrade_SplitCurve3d*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_SplitCurve3d {
	~Handle_ShapeUpgrade_SplitCurve3d() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_SplitCurve3d\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_ConvertCurve3dToBezier;
class Handle_ShapeUpgrade_ConvertCurve3dToBezier : public Handle_ShapeUpgrade_SplitCurve3d {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve3dToBezier();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve3dToBezier(const Handle_ShapeUpgrade_ConvertCurve3dToBezier &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve3dToBezier(const ShapeUpgrade_ConvertCurve3dToBezier *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve3dToBezier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_ConvertCurve3dToBezier {
	ShapeUpgrade_ConvertCurve3dToBezier* GetObject() {
	return (ShapeUpgrade_ConvertCurve3dToBezier*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_ConvertCurve3dToBezier {
	~Handle_ShapeUpgrade_ConvertCurve3dToBezier() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_ConvertCurve3dToBezier\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_ClosedFaceDivide;
class Handle_ShapeUpgrade_ClosedFaceDivide : public Handle_ShapeUpgrade_FaceDivide {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedFaceDivide();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedFaceDivide(const Handle_ShapeUpgrade_ClosedFaceDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedFaceDivide(const ShapeUpgrade_ClosedFaceDivide *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedFaceDivide const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_ClosedFaceDivide {
	ShapeUpgrade_ClosedFaceDivide* GetObject() {
	return (ShapeUpgrade_ClosedFaceDivide*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_ClosedFaceDivide {
	~Handle_ShapeUpgrade_ClosedFaceDivide() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_ClosedFaceDivide\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_SplitCurve3dContinuity;
class Handle_ShapeUpgrade_SplitCurve3dContinuity : public Handle_ShapeUpgrade_SplitCurve3d {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3dContinuity();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3dContinuity(const Handle_ShapeUpgrade_SplitCurve3dContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3dContinuity(const ShapeUpgrade_SplitCurve3dContinuity *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3dContinuity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitCurve3dContinuity {
	ShapeUpgrade_SplitCurve3dContinuity* GetObject() {
	return (ShapeUpgrade_SplitCurve3dContinuity*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_SplitCurve3dContinuity {
	~Handle_ShapeUpgrade_SplitCurve3dContinuity() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_SplitCurve3dContinuity\n");
	}
};

%nodefaultctor Handle_ShapeUpgrade_WireDivide;
class Handle_ShapeUpgrade_WireDivide : public Handle_ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_WireDivide();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_WireDivide(const Handle_ShapeUpgrade_WireDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_WireDivide(const ShapeUpgrade_WireDivide *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_WireDivide const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_WireDivide {
	ShapeUpgrade_WireDivide* GetObject() {
	return (ShapeUpgrade_WireDivide*)$self->Access();
	}
};
%extend Handle_ShapeUpgrade_WireDivide {
	~Handle_ShapeUpgrade_WireDivide() {
	printf("Call custom destructor for instance of Handle_ShapeUpgrade_WireDivide\n");
	}
};

%nodefaultctor ShapeUpgrade_SplitCurve;
class ShapeUpgrade_SplitCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitCurve();
		%feature("autodoc", "1");
		void Init(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		void SetSplitValues(const Handle_TColStd_HSequenceOfReal &SplitValues);
		%feature("autodoc", "1");
		virtual		void Build(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		const Handle_TColStd_HSequenceOfReal & SplitValues() const;
		%feature("autodoc", "1");
		virtual		void Compute();
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean Segment=1);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitCurve {
	Handle_ShapeUpgrade_SplitCurve GetHandle() {
	return *(Handle_ShapeUpgrade_SplitCurve*) &$self;
	}
};
%extend ShapeUpgrade_SplitCurve {
	~ShapeUpgrade_SplitCurve() {
	printf("Call custom destructor for instance of ShapeUpgrade_SplitCurve\n");
	}
};

%nodefaultctor ShapeUpgrade_SplitCurve3d;
class ShapeUpgrade_SplitCurve3d : public ShapeUpgrade_SplitCurve {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitCurve3d();
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		const Handle_TColGeom_HArray1OfCurve & GetCurves() const;

};
%extend ShapeUpgrade_SplitCurve3d {
	Handle_ShapeUpgrade_SplitCurve3d GetHandle() {
	return *(Handle_ShapeUpgrade_SplitCurve3d*) &$self;
	}
};
%extend ShapeUpgrade_SplitCurve3d {
	~ShapeUpgrade_SplitCurve3d() {
	printf("Call custom destructor for instance of ShapeUpgrade_SplitCurve3d\n");
	}
};

%nodefaultctor ShapeUpgrade_ConvertCurve3dToBezier;
class ShapeUpgrade_ConvertCurve3dToBezier : public ShapeUpgrade_SplitCurve3d {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ConvertCurve3dToBezier();
		%feature("autodoc", "1");
		void SetLineMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetLineMode() const;
		%feature("autodoc", "1");
		void SetCircleMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetCircleMode() const;
		%feature("autodoc", "1");
		void SetConicMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetConicMode() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal SplitParams() const;

};
%extend ShapeUpgrade_ConvertCurve3dToBezier {
	Handle_ShapeUpgrade_ConvertCurve3dToBezier GetHandle() {
	return *(Handle_ShapeUpgrade_ConvertCurve3dToBezier*) &$self;
	}
};
%extend ShapeUpgrade_ConvertCurve3dToBezier {
	~ShapeUpgrade_ConvertCurve3dToBezier() {
	printf("Call custom destructor for instance of ShapeUpgrade_ConvertCurve3dToBezier\n");
	}
};

%nodefaultctor ShapeUpgrade_Tool;
class ShapeUpgrade_Tool : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_Tool();
		%feature("autodoc", "1");
		void Set(const Handle_ShapeUpgrade_Tool &tool);
		%feature("autodoc", "1");
		void SetContext(const Handle_ShapeBuild_ReShape &context);
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape Context() const;
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Real Precision() const;
		%feature("autodoc", "1");
		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		Standard_Real MinTolerance() const;
		%feature("autodoc", "1");
		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		Standard_Real MaxTolerance() const;
		%feature("autodoc", "1");
		Standard_Real LimitTolerance(const Standard_Real toler) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_Tool {
	Handle_ShapeUpgrade_Tool GetHandle() {
	return *(Handle_ShapeUpgrade_Tool*) &$self;
	}
};
%extend ShapeUpgrade_Tool {
	~ShapeUpgrade_Tool() {
	printf("Call custom destructor for instance of ShapeUpgrade_Tool\n");
	}
};

%nodefaultctor ShapeUpgrade_RemoveInternalWires;
class ShapeUpgrade_RemoveInternalWires : public ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_RemoveInternalWires();
		%feature("autodoc", "1");
		ShapeUpgrade_RemoveInternalWires(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean Perform(const TopTools_SequenceOfShape &theSeqShapes);
		%feature("autodoc", "1");
		TopoDS_Shape GetResult() const;
		%feature("autodoc", "1");
		Standard_Real & MinArea();
		%feature("autodoc", "1");
		Standard_Boolean & RemoveFaceMode();
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & RemovedFaces() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & RemovedWires() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status theStatus) const;

};
%extend ShapeUpgrade_RemoveInternalWires {
	Handle_ShapeUpgrade_RemoveInternalWires GetHandle() {
	return *(Handle_ShapeUpgrade_RemoveInternalWires*) &$self;
	}
};
%extend ShapeUpgrade_RemoveInternalWires {
	~ShapeUpgrade_RemoveInternalWires() {
	printf("Call custom destructor for instance of ShapeUpgrade_RemoveInternalWires\n");
	}
};

%nodefaultctor ShapeUpgrade_SplitCurve3dContinuity;
class ShapeUpgrade_SplitCurve3dContinuity : public ShapeUpgrade_SplitCurve3d {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitCurve3dContinuity();
		%feature("autodoc", "1");
		void SetCriterion(const GeomAbs_Shape Criterion);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		void Compute();
		%feature("autodoc", "1");
		const Handle_Geom_Curve & GetCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitCurve3dContinuity {
	Handle_ShapeUpgrade_SplitCurve3dContinuity GetHandle() {
	return *(Handle_ShapeUpgrade_SplitCurve3dContinuity*) &$self;
	}
};
%extend ShapeUpgrade_SplitCurve3dContinuity {
	~ShapeUpgrade_SplitCurve3dContinuity() {
	printf("Call custom destructor for instance of ShapeUpgrade_SplitCurve3dContinuity\n");
	}
};

%nodefaultctor ShapeUpgrade_SplitSurface;
class ShapeUpgrade_SplitSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitSurface();
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S, const Standard_Real UFirst, const Standard_Real ULast, const Standard_Real VFirst, const Standard_Real VLast);
		%feature("autodoc", "1");
		void SetUSplitValues(const Handle_TColStd_HSequenceOfReal &UValues);
		%feature("autodoc", "1");
		void SetVSplitValues(const Handle_TColStd_HSequenceOfReal &VValues);
		%feature("autodoc", "1");
		virtual		void Build(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		virtual		void Compute(const Standard_Boolean Segment=1);
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean Segment=1);
		%feature("autodoc", "1");
		const Handle_TColStd_HSequenceOfReal & USplitValues() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HSequenceOfReal & VSplitValues() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		const Handle_ShapeExtend_CompositeSurface & ResSurfaces() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitSurface {
	Handle_ShapeUpgrade_SplitSurface GetHandle() {
	return *(Handle_ShapeUpgrade_SplitSurface*) &$self;
	}
};
%extend ShapeUpgrade_SplitSurface {
	~ShapeUpgrade_SplitSurface() {
	printf("Call custom destructor for instance of ShapeUpgrade_SplitSurface\n");
	}
};

%nodefaultctor ShapeUpgrade_SplitSurfaceAngle;
class ShapeUpgrade_SplitSurfaceAngle : public ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitSurfaceAngle(const Standard_Real MaxAngle);
		%feature("autodoc", "1");
		void SetMaxAngle(const Standard_Real MaxAngle);
		%feature("autodoc", "1");
		Standard_Real MaxAngle() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Standard_Boolean Segment);

};
%extend ShapeUpgrade_SplitSurfaceAngle {
	Handle_ShapeUpgrade_SplitSurfaceAngle GetHandle() {
	return *(Handle_ShapeUpgrade_SplitSurfaceAngle*) &$self;
	}
};
%extend ShapeUpgrade_SplitSurfaceAngle {
	~ShapeUpgrade_SplitSurfaceAngle() {
	printf("Call custom destructor for instance of ShapeUpgrade_SplitSurfaceAngle\n");
	}
};

%nodefaultctor ShapeUpgrade_ShapeDivide;
class ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivide();
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivide(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Real Prec);
		%feature("autodoc", "1");
		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		void SetSurfaceSegmentMode(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform(const Standard_Boolean newContext=1);
		%feature("autodoc", "1");
		TopoDS_Shape Result() const;
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape GetContext() const;
		%feature("autodoc", "1");
		void SetContext(const Handle_ShapeBuild_ReShape &context);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		void SetSplitFaceTool(const Handle_ShapeUpgrade_FaceDivide &splitFaceTool);
		%feature("autodoc", "1");
		void SetEdgeMode(const Standard_Integer aEdgeMode);

};
%extend ShapeUpgrade_ShapeDivide {
	~ShapeUpgrade_ShapeDivide() {
	printf("Call custom destructor for instance of ShapeUpgrade_ShapeDivide\n");
	}
};

%nodefaultctor ShapeUpgrade_ShapeDivideContinuity;
class ShapeUpgrade_ShapeDivideContinuity : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideContinuity();
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideContinuity(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetTolerance2d(const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetBoundaryCriterion(const GeomAbs_Shape Criterion=GeomAbs_C1);
		%feature("autodoc", "1");
		void SetPCurveCriterion(const GeomAbs_Shape Criterion=GeomAbs_C1);
		%feature("autodoc", "1");
		void SetSurfaceCriterion(const GeomAbs_Shape Criterion=GeomAbs_C1);
		%feature("autodoc", "1");
		virtual		~ShapeUpgrade_ShapeDivideContinuity();

};

%nodefaultctor ShapeUpgrade_FixSmallCurves;
class ShapeUpgrade_FixSmallCurves : public ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_FixSmallCurves();
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge &theEdge, const TopoDS_Face &theFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Approx(Handle_Geom_Curve & Curve3d, Handle_Geom2d_Curve & Curve2d, Handle_Geom2d_Curve & Curve2dR, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void SetSplitCurve3dTool(const Handle_ShapeUpgrade_SplitCurve3d &splitCurve3dTool);
		%feature("autodoc", "1");
		void SetSplitCurve2dTool(const Handle_ShapeUpgrade_SplitCurve2d &splitCurve2dTool);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_FixSmallCurves {
	Handle_ShapeUpgrade_FixSmallCurves GetHandle() {
	return *(Handle_ShapeUpgrade_FixSmallCurves*) &$self;
	}
};
%extend ShapeUpgrade_FixSmallCurves {
	~ShapeUpgrade_FixSmallCurves() {
	printf("Call custom destructor for instance of ShapeUpgrade_FixSmallCurves\n");
	}
};

%nodefaultctor ShapeUpgrade_EdgeDivide;
class ShapeUpgrade_EdgeDivide : public ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_EdgeDivide();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compute(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Boolean HasCurve2d() const;
		%feature("autodoc", "1");
		Standard_Boolean HasCurve3d() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal Knots2d() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal Knots3d() const;
		%feature("autodoc", "1");
		void SetSplitCurve2dTool(const Handle_ShapeUpgrade_SplitCurve2d &splitCurve2dTool);
		%feature("autodoc", "1");
		void SetSplitCurve3dTool(const Handle_ShapeUpgrade_SplitCurve3d &splitCurve3dTool);
		%feature("autodoc", "1");
		virtual		Handle_ShapeUpgrade_SplitCurve2d GetSplitCurve2dTool() const;
		%feature("autodoc", "1");
		virtual		Handle_ShapeUpgrade_SplitCurve3d GetSplitCurve3dTool() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_EdgeDivide {
	Handle_ShapeUpgrade_EdgeDivide GetHandle() {
	return *(Handle_ShapeUpgrade_EdgeDivide*) &$self;
	}
};
%extend ShapeUpgrade_EdgeDivide {
	~ShapeUpgrade_EdgeDivide() {
	printf("Call custom destructor for instance of ShapeUpgrade_EdgeDivide\n");
	}
};

%nodefaultctor ShapeUpgrade_ClosedEdgeDivide;
class ShapeUpgrade_ClosedEdgeDivide : public ShapeUpgrade_EdgeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ClosedEdgeDivide();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compute(const TopoDS_Edge &anEdge);

};
%extend ShapeUpgrade_ClosedEdgeDivide {
	Handle_ShapeUpgrade_ClosedEdgeDivide GetHandle() {
	return *(Handle_ShapeUpgrade_ClosedEdgeDivide*) &$self;
	}
};
%extend ShapeUpgrade_ClosedEdgeDivide {
	~ShapeUpgrade_ClosedEdgeDivide() {
	printf("Call custom destructor for instance of ShapeUpgrade_ClosedEdgeDivide\n");
	}
};

%nodefaultctor ShapeUpgrade;
class ShapeUpgrade {
	public:
		%feature("autodoc", "1");
		~ShapeUpgrade();
		%feature("autodoc", "1");
		ShapeUpgrade();
		%feature("autodoc", "1");
		Standard_Boolean C0BSplineToSequenceOfC1BSplineCurve(const Handle_Geom_BSplineCurve &BS, Handle_TColGeom_HSequenceOfBoundedCurve & seqBS);
		%feature("autodoc", "1");
		Standard_Boolean C0BSplineToSequenceOfC1BSplineCurve(const Handle_Geom2d_BSplineCurve &BS, Handle_TColGeom2d_HSequenceOfBoundedCurve & seqBS);

};

%nodefaultctor ShapeUpgrade_ShellSewing;
class ShapeUpgrade_ShellSewing {
	public:
		%feature("autodoc", "1");
		~ShapeUpgrade_ShellSewing();
		%feature("autodoc", "1");
		ShapeUpgrade_ShellSewing();
		%feature("autodoc", "1");
		TopoDS_Shape ApplySewing(const TopoDS_Shape &shape, const Standard_Real tol=0.0);

};

%nodefaultctor ShapeUpgrade_FaceDivide;
class ShapeUpgrade_FaceDivide : public ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_FaceDivide();
		%feature("autodoc", "1");
		ShapeUpgrade_FaceDivide(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetSurfaceSegmentMode(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform();
		%feature("autodoc", "1");
		virtual		Standard_Boolean SplitSurface();
		%feature("autodoc", "1");
		virtual		Standard_Boolean SplitCurves();
		%feature("autodoc", "1");
		TopoDS_Shape Result() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		void SetSplitSurfaceTool(const Handle_ShapeUpgrade_SplitSurface &splitSurfaceTool);
		%feature("autodoc", "1");
		void SetWireDivideTool(const Handle_ShapeUpgrade_WireDivide &wireDivideTool);
		%feature("autodoc", "1");
		virtual		Handle_ShapeUpgrade_WireDivide GetWireDivideTool() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_FaceDivide {
	Handle_ShapeUpgrade_FaceDivide GetHandle() {
	return *(Handle_ShapeUpgrade_FaceDivide*) &$self;
	}
};
%extend ShapeUpgrade_FaceDivide {
	~ShapeUpgrade_FaceDivide() {
	printf("Call custom destructor for instance of ShapeUpgrade_FaceDivide\n");
	}
};

%nodefaultctor ShapeUpgrade_FaceDivideArea;
class ShapeUpgrade_FaceDivideArea : public ShapeUpgrade_FaceDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_FaceDivideArea();
		%feature("autodoc", "1");
		ShapeUpgrade_FaceDivideArea(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Real & MaxArea();

};
%extend ShapeUpgrade_FaceDivideArea {
	Handle_ShapeUpgrade_FaceDivideArea GetHandle() {
	return *(Handle_ShapeUpgrade_FaceDivideArea*) &$self;
	}
};
%extend ShapeUpgrade_FaceDivideArea {
	~ShapeUpgrade_FaceDivideArea() {
	printf("Call custom destructor for instance of ShapeUpgrade_FaceDivideArea\n");
	}
};

%nodefaultctor ShapeUpgrade_FixSmallBezierCurves;
class ShapeUpgrade_FixSmallBezierCurves : public ShapeUpgrade_FixSmallCurves {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_FixSmallBezierCurves();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Approx(Handle_Geom_Curve & Curve3d, Handle_Geom2d_Curve & Curve2d, Handle_Geom2d_Curve & Curve2dR, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_FixSmallBezierCurves {
	Handle_ShapeUpgrade_FixSmallBezierCurves GetHandle() {
	return *(Handle_ShapeUpgrade_FixSmallBezierCurves*) &$self;
	}
};
%extend ShapeUpgrade_FixSmallBezierCurves {
	~ShapeUpgrade_FixSmallBezierCurves() {
	printf("Call custom destructor for instance of ShapeUpgrade_FixSmallBezierCurves\n");
	}
};

%nodefaultctor ShapeUpgrade_ShapeDivideClosedEdges;
class ShapeUpgrade_ShapeDivideClosedEdges : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideClosedEdges(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void SetNbSplitPoints(const Standard_Integer num);
		%feature("autodoc", "1");
		virtual		~ShapeUpgrade_ShapeDivideClosedEdges();

};

%nodefaultctor ShapeUpgrade_SplitSurfaceArea;
class ShapeUpgrade_SplitSurfaceArea : public ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitSurfaceArea();
		%feature("autodoc", "1");
		Standard_Integer & NbParts();
		%feature("autodoc", "1");
		virtual		void Compute(const Standard_Boolean Segment=1);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitSurfaceArea {
	Handle_ShapeUpgrade_SplitSurfaceArea GetHandle() {
	return *(Handle_ShapeUpgrade_SplitSurfaceArea*) &$self;
	}
};
%extend ShapeUpgrade_SplitSurfaceArea {
	~ShapeUpgrade_SplitSurfaceArea() {
	printf("Call custom destructor for instance of ShapeUpgrade_SplitSurfaceArea\n");
	}
};

%nodefaultctor ShapeUpgrade_SplitCurve2d;
class ShapeUpgrade_SplitCurve2d : public ShapeUpgrade_SplitCurve {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitCurve2d();
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void Build(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		const Handle_TColGeom2d_HArray1OfCurve & GetCurves() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitCurve2d {
	Handle_ShapeUpgrade_SplitCurve2d GetHandle() {
	return *(Handle_ShapeUpgrade_SplitCurve2d*) &$self;
	}
};
%extend ShapeUpgrade_SplitCurve2d {
	~ShapeUpgrade_SplitCurve2d() {
	printf("Call custom destructor for instance of ShapeUpgrade_SplitCurve2d\n");
	}
};

%nodefaultctor ShapeUpgrade_ConvertCurve2dToBezier;
class ShapeUpgrade_ConvertCurve2dToBezier : public ShapeUpgrade_SplitCurve2d {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ConvertCurve2dToBezier();
		%feature("autodoc", "1");
		virtual		void Compute();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal SplitParams() const;

};
%extend ShapeUpgrade_ConvertCurve2dToBezier {
	Handle_ShapeUpgrade_ConvertCurve2dToBezier GetHandle() {
	return *(Handle_ShapeUpgrade_ConvertCurve2dToBezier*) &$self;
	}
};
%extend ShapeUpgrade_ConvertCurve2dToBezier {
	~ShapeUpgrade_ConvertCurve2dToBezier() {
	printf("Call custom destructor for instance of ShapeUpgrade_ConvertCurve2dToBezier\n");
	}
};

%nodefaultctor ShapeUpgrade_ClosedFaceDivide;
class ShapeUpgrade_ClosedFaceDivide : public ShapeUpgrade_FaceDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ClosedFaceDivide();
		%feature("autodoc", "1");
		ShapeUpgrade_ClosedFaceDivide(const TopoDS_Face &F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SplitSurface();
		%feature("autodoc", "1");
		void SetNbSplitPoints(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Integer GetNbSplitPoints() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_ClosedFaceDivide {
	Handle_ShapeUpgrade_ClosedFaceDivide GetHandle() {
	return *(Handle_ShapeUpgrade_ClosedFaceDivide*) &$self;
	}
};
%extend ShapeUpgrade_ClosedFaceDivide {
	~ShapeUpgrade_ClosedFaceDivide() {
	printf("Call custom destructor for instance of ShapeUpgrade_ClosedFaceDivide\n");
	}
};

%nodefaultctor ShapeUpgrade_ShapeConvertToBezier;
class ShapeUpgrade_ShapeConvertToBezier : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeConvertToBezier();
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeConvertToBezier(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Set2dConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean Get2dConversion() const;
		%feature("autodoc", "1");
		void Set3dConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean Get3dConversion() const;
		%feature("autodoc", "1");
		void SetSurfaceConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetSurfaceConversion() const;
		%feature("autodoc", "1");
		void Set3dLineConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean Get3dLineConversion() const;
		%feature("autodoc", "1");
		void Set3dCircleConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean Get3dCircleConversion() const;
		%feature("autodoc", "1");
		void Set3dConicConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean Get3dConicConversion() const;
		%feature("autodoc", "1");
		void SetPlaneMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetPlaneMode() const;
		%feature("autodoc", "1");
		void SetRevolutionMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetRevolutionMode() const;
		%feature("autodoc", "1");
		void SetExtrusionMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetExtrusionMode() const;
		%feature("autodoc", "1");
		void SetBSplineMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetBSplineMode() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform(const Standard_Boolean newContext=1);
		%feature("autodoc", "1");
		virtual		~ShapeUpgrade_ShapeConvertToBezier();

};

%nodefaultctor ShapeUpgrade_SplitSurfaceContinuity;
class ShapeUpgrade_SplitSurfaceContinuity : public ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitSurfaceContinuity();
		%feature("autodoc", "1");
		void SetCriterion(const GeomAbs_Shape Criterion);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		void Compute(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitSurfaceContinuity {
	Handle_ShapeUpgrade_SplitSurfaceContinuity GetHandle() {
	return *(Handle_ShapeUpgrade_SplitSurfaceContinuity*) &$self;
	}
};
%extend ShapeUpgrade_SplitSurfaceContinuity {
	~ShapeUpgrade_SplitSurfaceContinuity() {
	printf("Call custom destructor for instance of ShapeUpgrade_SplitSurfaceContinuity\n");
	}
};

%nodefaultctor ShapeUpgrade_WireDivide;
class ShapeUpgrade_WireDivide : public ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_WireDivide();
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &W, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &W, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Load(const TopoDS_Wire &W);
		%feature("autodoc", "1");
		void Load(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopoDS_Wire & Wire() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		void SetSplitCurve3dTool(const Handle_ShapeUpgrade_SplitCurve3d &splitCurve3dTool);
		%feature("autodoc", "1");
		void SetSplitCurve2dTool(const Handle_ShapeUpgrade_SplitCurve2d &splitCurve2dTool);
		%feature("autodoc", "1");
		void SetTransferParamTool(const Handle_ShapeAnalysis_TransferParameters &TransferParam);
		%feature("autodoc", "1");
		void SetEdgeDivideTool(const Handle_ShapeUpgrade_EdgeDivide &edgeDivideTool);
		%feature("autodoc", "1");
		virtual		Handle_ShapeUpgrade_EdgeDivide GetEdgeDivideTool() const;
		%feature("autodoc", "1");
		virtual		Handle_ShapeAnalysis_TransferParameters GetTransferParamTool();
		%feature("autodoc", "1");
		void SetEdgeMode(const Standard_Integer EdgeMode);
		%feature("autodoc", "1");
		void SetFixSmallCurveTool(const Handle_ShapeUpgrade_FixSmallCurves &FixSmallCurvesTool);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves GetFixSmallCurveTool() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_WireDivide {
	Handle_ShapeUpgrade_WireDivide GetHandle() {
	return *(Handle_ShapeUpgrade_WireDivide*) &$self;
	}
};
%extend ShapeUpgrade_WireDivide {
	~ShapeUpgrade_WireDivide() {
	printf("Call custom destructor for instance of ShapeUpgrade_WireDivide\n");
	}
};

%nodefaultctor ShapeUpgrade_ShapeDivideAngle;
class ShapeUpgrade_ShapeDivideAngle : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideAngle(const Standard_Real MaxAngle);
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideAngle(const Standard_Real MaxAngle, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void InitTool(const Standard_Real MaxAngle);
		%feature("autodoc", "1");
		void SetMaxAngle(const Standard_Real MaxAngle);
		%feature("autodoc", "1");
		Standard_Real MaxAngle() const;
		%feature("autodoc", "1");
		virtual		~ShapeUpgrade_ShapeDivideAngle();

};

%nodefaultctor ShapeUpgrade_SplitCurve2dContinuity;
class ShapeUpgrade_SplitCurve2dContinuity : public ShapeUpgrade_SplitCurve2d {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitCurve2dContinuity();
		%feature("autodoc", "1");
		void SetCriterion(const GeomAbs_Shape Criterion);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		void Compute();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitCurve2dContinuity {
	Handle_ShapeUpgrade_SplitCurve2dContinuity GetHandle() {
	return *(Handle_ShapeUpgrade_SplitCurve2dContinuity*) &$self;
	}
};
%extend ShapeUpgrade_SplitCurve2dContinuity {
	~ShapeUpgrade_SplitCurve2dContinuity() {
	printf("Call custom destructor for instance of ShapeUpgrade_SplitCurve2dContinuity\n");
	}
};

%nodefaultctor ShapeUpgrade_ConvertSurfaceToBezierBasis;
class ShapeUpgrade_ConvertSurfaceToBezierBasis : public ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ConvertSurfaceToBezierBasis();
		%feature("autodoc", "1");
		virtual		void Build(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		virtual		void Compute(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface Segments() const;
		%feature("autodoc", "1");
		void SetPlaneMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetPlaneMode() const;
		%feature("autodoc", "1");
		void SetRevolutionMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetRevolutionMode() const;
		%feature("autodoc", "1");
		void SetExtrusionMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetExtrusionMode() const;
		%feature("autodoc", "1");
		void SetBSplineMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetBSplineMode() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_ConvertSurfaceToBezierBasis {
	Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis GetHandle() {
	return *(Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis*) &$self;
	}
};
%extend ShapeUpgrade_ConvertSurfaceToBezierBasis {
	~ShapeUpgrade_ConvertSurfaceToBezierBasis() {
	printf("Call custom destructor for instance of ShapeUpgrade_ConvertSurfaceToBezierBasis\n");
	}
};

%nodefaultctor ShapeUpgrade_ShapeDivideArea;
class ShapeUpgrade_ShapeDivideArea : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideArea();
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideArea(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Real & MaxArea();
		%feature("autodoc", "1");
		virtual		~ShapeUpgrade_ShapeDivideArea();

};

%nodefaultctor ShapeUpgrade_ShapeDivideClosed;
class ShapeUpgrade_ShapeDivideClosed : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideClosed(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void SetNbSplitPoints(const Standard_Integer num);
		%feature("autodoc", "1");
		virtual		~ShapeUpgrade_ShapeDivideClosed();

};

%nodefaultctor ShapeUpgrade_RemoveLocations;
class ShapeUpgrade_RemoveLocations : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_RemoveLocations();
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		TopoDS_Shape GetResult() const;
		%feature("autodoc", "1");
		void SetRemoveLevel(const TopAbs_ShapeEnum theLevel);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum RemoveLevel() const;
		%feature("autodoc", "1");
		TopoDS_Shape ModifiedShape(const TopoDS_Shape &theInitShape) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_RemoveLocations {
	Handle_ShapeUpgrade_RemoveLocations GetHandle() {
	return *(Handle_ShapeUpgrade_RemoveLocations*) &$self;
	}
};
%extend ShapeUpgrade_RemoveLocations {
	~ShapeUpgrade_RemoveLocations() {
	printf("Call custom destructor for instance of ShapeUpgrade_RemoveLocations\n");
	}
};