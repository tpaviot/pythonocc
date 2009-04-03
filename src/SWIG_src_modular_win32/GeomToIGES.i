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
%module GeomToIGES

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


%include GeomToIGES_dependencies.i


%include GeomToIGES_headers.i




%nodefaultctor GeomToIGES_GeomEntity;
class GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		GeomToIGES_GeomEntity();
		%feature("autodoc", "1");
		GeomToIGES_GeomEntity(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		void SetModel(const Handle_IGESData_IGESModel &model);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel GetModel() const;
		%feature("autodoc", "1");
		void SetUnit(const Standard_Real unit);
		%feature("autodoc", "1");
		Standard_Real GetUnit() const;

};
%extend GeomToIGES_GeomEntity {
	~GeomToIGES_GeomEntity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomToIGES_GeomEntity\n");}
	}
};

%nodefaultctor GeomToIGES_GeomCurve;
class GeomToIGES_GeomCurve : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		GeomToIGES_GeomCurve();
		%feature("autodoc", "1");
		GeomToIGES_GeomCurve(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Curve &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_BoundedCurve &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_BSplineCurve &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_BezierCurve &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_TrimmedCurve &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Conic &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Circle &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Ellipse &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Hyperbola &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Line &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Parabola &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_OffsetCurve &start, const Standard_Real Udeb, const Standard_Real Ufin);

};
%extend GeomToIGES_GeomCurve {
	~GeomToIGES_GeomCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomToIGES_GeomCurve\n");}
	}
};

%nodefaultctor GeomToIGES_GeomSurface;
class GeomToIGES_GeomSurface : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		GeomToIGES_GeomSurface();
		%feature("autodoc", "1");
		GeomToIGES_GeomSurface(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_Surface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_BoundedSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_BSplineSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_BezierSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_RectangularTrimmedSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_ElementarySurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_Plane &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_CylindricalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_ConicalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_SphericalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_ToroidalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_SweptSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_SurfaceOfLinearExtrusion &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_SurfaceOfRevolution &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_OffsetSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferPlaneSurface(const Handle_Geom_Plane &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCylindricalSurface(const Handle_Geom_CylindricalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferConicalSurface(const Handle_Geom_ConicalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSphericalSurface(const Handle_Geom_SphericalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferToroidalSurface(const Handle_Geom_ToroidalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Standard_Real Length() const;
		%feature("autodoc", "1");
		Standard_Boolean GetBRepMode() const;
		%feature("autodoc", "1");
		void SetBRepMode(const Standard_Boolean flag);
		%feature("autodoc", "1");
		Standard_Boolean GetAnalyticMode() const;
		%feature("autodoc", "1");
		void SetAnalyticMode(const Standard_Boolean flag);

};
%extend GeomToIGES_GeomSurface {
	~GeomToIGES_GeomSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomToIGES_GeomSurface\n");}
	}
};

%nodefaultctor GeomToIGES_GeomPoint;
class GeomToIGES_GeomPoint : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		GeomToIGES_GeomPoint();
		%feature("autodoc", "1");
		GeomToIGES_GeomPoint(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point TransferPoint(const Handle_Geom_Point &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point TransferPoint(const Handle_Geom_CartesianPoint &start);

};
%extend GeomToIGES_GeomPoint {
	~GeomToIGES_GeomPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomToIGES_GeomPoint\n");}
	}
};

%nodefaultctor GeomToIGES_GeomVector;
class GeomToIGES_GeomVector : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		GeomToIGES_GeomVector();
		%feature("autodoc", "1");
		GeomToIGES_GeomVector(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction TransferVector(const Handle_Geom_Vector &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction TransferVector(const Handle_Geom_VectorWithMagnitude &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction TransferVector(const Handle_Geom_Direction &start);

};
%extend GeomToIGES_GeomVector {
	~GeomToIGES_GeomVector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GeomToIGES_GeomVector\n");}
	}
};