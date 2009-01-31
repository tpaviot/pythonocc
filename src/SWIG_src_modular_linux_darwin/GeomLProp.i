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
%module GeomLProp

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


%include GeomLProp_dependencies.i


%include GeomLProp_headers.i




%nodefaultctor GeomLProp_CurveTool;
class GeomLProp_CurveTool {
	public:
		%feature("autodoc", "1");
		~GeomLProp_CurveTool();
		%feature("autodoc", "1");
		GeomLProp_CurveTool();
		%feature("autodoc", "1");
		void Value(const Handle_Geom_Curve &C, const Standard_Real U, gp_Pnt & P);
		%feature("autodoc", "1");
		void D1(const Handle_Geom_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1);
		%feature("autodoc", "1");
		void D2(const Handle_Geom_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2);
		%feature("autodoc", "1");
		void D3(const Handle_Geom_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3);
		%feature("autodoc", "1");
		Standard_Integer Continuity(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Handle_Geom_Curve &C);

};

%nodefaultctor GeomLProp_SLProps;
class GeomLProp_SLProps {
	public:
		%feature("autodoc", "1");
		~GeomLProp_SLProps();
		%feature("autodoc", "1");
		GeomLProp_SLProps(const Handle_Geom_Surface &S, const Standard_Real U, const Standard_Real V, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		GeomLProp_SLProps(const Handle_Geom_Surface &S, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		GeomLProp_SLProps(const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void SetParameters(const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;
		%feature("autodoc", "1");
		const gp_Vec & D1U();
		%feature("autodoc", "1");
		const gp_Vec & D1V();
		%feature("autodoc", "1");
		const gp_Vec & D2U();
		%feature("autodoc", "1");
		const gp_Vec & D2V();
		%feature("autodoc", "1");
		const gp_Vec & DUV();
		%feature("autodoc", "1");
		Standard_Boolean IsTangentUDefined();
		%feature("autodoc", "1");
		void TangentU(gp_Dir & D);
		%feature("autodoc", "1");
		Standard_Boolean IsTangentVDefined();
		%feature("autodoc", "1");
		void TangentV(gp_Dir & D);
		%feature("autodoc", "1");
		Standard_Boolean IsNormalDefined();
		%feature("autodoc", "1");
		const gp_Dir & Normal();
		%feature("autodoc", "1");
		Standard_Boolean IsCurvatureDefined();
		%feature("autodoc", "1");
		Standard_Boolean IsUmbilic();
		%feature("autodoc", "1");
		Standard_Real MaxCurvature();
		%feature("autodoc", "1");
		Standard_Real MinCurvature();
		%feature("autodoc", "1");
		void CurvatureDirections(gp_Dir & MaxD, gp_Dir & MinD);
		%feature("autodoc", "1");
		Standard_Real MeanCurvature();
		%feature("autodoc", "1");
		Standard_Real GaussianCurvature();

};

%nodefaultctor GeomLProp_CLProps;
class GeomLProp_CLProps {
	public:
		%feature("autodoc", "1");
		~GeomLProp_CLProps();
		%feature("autodoc", "1");
		GeomLProp_CLProps(const Handle_Geom_Curve &C, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		GeomLProp_CLProps(const Handle_Geom_Curve &C, const Standard_Real U, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		GeomLProp_CLProps(const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real U);
		%feature("autodoc", "1");
		void SetCurve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;
		%feature("autodoc", "1");
		const gp_Vec & D1();
		%feature("autodoc", "1");
		const gp_Vec & D2();
		%feature("autodoc", "1");
		const gp_Vec & D3();
		%feature("autodoc", "1");
		Standard_Boolean IsTangentDefined();
		%feature("autodoc", "1");
		void Tangent(gp_Dir & D);
		%feature("autodoc", "1");
		Standard_Real Curvature();
		%feature("autodoc", "1");
		void Normal(gp_Dir & N);
		%feature("autodoc", "1");
		void CentreOfCurvature(gp_Pnt & P);

};

%nodefaultctor GeomLProp;
class GeomLProp {
	public:
		%feature("autodoc", "1");
		~GeomLProp();
		%feature("autodoc", "1");
		GeomLProp();
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity(const Handle_Geom_Curve &C1, const Handle_Geom_Curve &C2, const Standard_Real u1, const Standard_Real u2, const Standard_Boolean r1, const Standard_Boolean r2, const Standard_Real tl, const Standard_Real ta);
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity(const Handle_Geom_Curve &C1, const Handle_Geom_Curve &C2, const Standard_Real u1, const Standard_Real u2, const Standard_Boolean r1, const Standard_Boolean r2);

};

%nodefaultctor GeomLProp_SurfaceTool;
class GeomLProp_SurfaceTool {
	public:
		%feature("autodoc", "1");
		~GeomLProp_SurfaceTool();
		%feature("autodoc", "1");
		GeomLProp_SurfaceTool();
		%feature("autodoc", "1");
		void Value(const Handle_Geom_Surface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		void D1(const Handle_Geom_Surface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V);
		%feature("autodoc", "1");
		void D2(const Handle_Geom_Surface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & DUV);
		%feature("autodoc", "1");
		gp_Vec DN(const Handle_Geom_Surface &S, const Standard_Real U, const Standard_Real V, const Standard_Integer IU, const Standard_Integer IV);
		%feature("autodoc", "1");
		Standard_Integer Continuity(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Bounds(const Handle_Geom_Surface &S, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

};