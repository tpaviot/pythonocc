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
%module IGESConvGeom

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


%include IGESConvGeom_dependencies.i


%include IGESConvGeom_headers.i




%nodefaultctor IGESConvGeom;
class IGESConvGeom {
	public:
		%feature("autodoc", "1");
		~IGESConvGeom();
		%feature("autodoc", "1");
		IGESConvGeom();
		%feature("autodoc", "1");
		Standard_Integer SplineCurveFromIGES(const Handle_IGESGeom_SplineCurve &igesent, const Standard_Real epscoef, const Standard_Real epsgeom, Handle_Geom_BSplineCurve & result);
		%feature("autodoc", "1");
		Standard_Integer IncreaseCurveContinuity(const Handle_Geom_BSplineCurve &curve, const Standard_Real epsgeom, const Standard_Integer continuity=2);
		%feature("autodoc", "1");
		Standard_Integer IncreaseCurveContinuity(const Handle_Geom2d_BSplineCurve &curve, const Standard_Real epsgeom, const Standard_Integer continuity=2);
		%feature("autodoc", "1");
		Standard_Integer SplineSurfaceFromIGES(const Handle_IGESGeom_SplineSurface &igesent, const Standard_Real epscoef, const Standard_Real epsgeom, Handle_Geom_BSplineSurface & result);
		%feature("autodoc", "1");
		Standard_Integer IncreaseSurfaceContinuity(const Handle_Geom_BSplineSurface &surface, const Standard_Real epsgeom, const Standard_Integer continuity=2);

};

%nodefaultctor IGESConvGeom_GeomBuilder;
class IGESConvGeom_GeomBuilder {
	public:
		%feature("autodoc", "1");
		IGESConvGeom_GeomBuilder();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void AddXY(const gp_XY &val);
		%feature("autodoc", "1");
		void AddXYZ(const gp_XYZ &val);
		%feature("autodoc", "1");
		void AddVec(const gp_XYZ &val);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		gp_XYZ Point(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_CopiousData MakeCopiousData(const Standard_Integer datatype, const Standard_Boolean polyline=0) const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXY MakeXY() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXYZ MakeXYZ() const;
		%feature("autodoc", "1");
		gp_Trsf Position() const;
		%feature("autodoc", "1");
		void SetPosition(const gp_Trsf &pos);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 &pos);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2 &pos);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax1 &pos);
		%feature("autodoc", "1");
		Standard_Boolean IsIdentity() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTranslation() const;
		%feature("autodoc", "1");
		Standard_Boolean IsZOnly() const;
		%feature("autodoc", "1");
		void EvalXYZ(const gp_XYZ &val, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_TransformationMatrix MakeTransformation(const Standard_Real unit=1) const;

};
%extend IGESConvGeom_GeomBuilder {
	~IGESConvGeom_GeomBuilder() {
	printf("Call custom destructor for instance of IGESConvGeom_GeomBuilder\n");
	}
};