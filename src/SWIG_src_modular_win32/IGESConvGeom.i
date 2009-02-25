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
		~IGESConvGeom_GeomBuilder();
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