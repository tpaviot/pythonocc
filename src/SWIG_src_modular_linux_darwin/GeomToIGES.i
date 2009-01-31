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
%module GeomToIGES

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


%include GeomToIGES_dependencies.i


%include GeomToIGES_headers.i




%nodefaultctor GeomToIGES_GeomEntity;
class GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		~GeomToIGES_GeomEntity();
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

%nodefaultctor GeomToIGES_GeomSurface;
class GeomToIGES_GeomSurface : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		~GeomToIGES_GeomSurface();
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

%nodefaultctor GeomToIGES_GeomVector;
class GeomToIGES_GeomVector : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		~GeomToIGES_GeomVector();
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

%nodefaultctor GeomToIGES_GeomCurve;
class GeomToIGES_GeomCurve : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		~GeomToIGES_GeomCurve();
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

%nodefaultctor GeomToIGES_GeomPoint;
class GeomToIGES_GeomPoint : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		~GeomToIGES_GeomPoint();
		%feature("autodoc", "1");
		GeomToIGES_GeomPoint();
		%feature("autodoc", "1");
		GeomToIGES_GeomPoint(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point TransferPoint(const Handle_Geom_Point &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point TransferPoint(const Handle_Geom_CartesianPoint &start);

};