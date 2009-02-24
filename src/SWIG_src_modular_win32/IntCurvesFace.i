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
%module IntCurvesFace

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


%include IntCurvesFace_dependencies.i


%include IntCurvesFace_headers.i




%nodefaultctor IntCurvesFace_Intersector;
class IntCurvesFace_Intersector {
	public:
		%feature("autodoc", "1");
		IntCurvesFace_Intersector(const TopoDS_Face &F, const Standard_Real aTol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &HCu, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		GeomAbs_SurfaceType SurfaceType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPnt() const;
		%feature("autodoc", "1");
		Standard_Real UParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real VParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real WParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt(const Standard_Integer i) const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition(const Standard_Integer i) const;
		%feature("autodoc", "1");
		TopAbs_State State(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		TopAbs_State ClassifyUVPoint(const gp_Pnt2d &Puv) const;
		%feature("autodoc", "1");
		Bnd_Box Bounding() const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IntCurvesFace_Intersector();

};

%nodefaultctor IntCurvesFace_ShapeIntersector;
class IntCurvesFace_ShapeIntersector {
	public:
		%feature("autodoc", "1");
		IntCurvesFace_ShapeIntersector();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape &Sh, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		void PerformNearest(const gp_Lin &L, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &HCu, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPnt() const;
		%feature("autodoc", "1");
		Standard_Real UParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real VParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real WParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt(const Standard_Integer i) const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition(const Standard_Integer i) const;
		%feature("autodoc", "1");
		TopAbs_State State(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face(const Standard_Integer i) const;
		%feature("autodoc", "1");
		void SortResult();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IntCurvesFace_ShapeIntersector();

};