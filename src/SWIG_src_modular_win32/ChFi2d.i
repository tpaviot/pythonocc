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
%module ChFi2d

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


%include ChFi2d_dependencies.i


%include ChFi2d_headers.i


enum ChFi2d_ConstructionError {
	ChFi2d_NotPlanar,
	ChFi2d_NoFace,
	ChFi2d_InitialisationError,
	ChFi2d_ParametersError,
	ChFi2d_Ready,
	ChFi2d_IsDone,
	ChFi2d_ComputationError,
	ChFi2d_ConnexionError,
	ChFi2d_TangencyError,
	ChFi2d_FirstEdgeDegenerated,
	ChFi2d_LastEdgeDegenerated,
	ChFi2d_BothEdgesDegenerated,
	ChFi2d_NotAuthorized,
	};



%nodefaultctor ChFi2d;
class ChFi2d {
	public:
		%feature("autodoc", "1");
		~ChFi2d();
		%feature("autodoc", "1");
		ChFi2d();

};

%nodefaultctor ChFi2d_Builder;
class ChFi2d_Builder {
	public:
		%feature("autodoc", "1");
		~ChFi2d_Builder();
		%feature("autodoc", "1");
		ChFi2d_Builder();
		%feature("autodoc", "1");
		ChFi2d_Builder(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &RefFace, const TopoDS_Face &ModFace);
		%feature("autodoc", "1");
		TopoDS_Edge AddFillet(const TopoDS_Vertex &V, const Standard_Real Radius);
		%feature("autodoc", "1");
		TopoDS_Edge ModifyFillet(const TopoDS_Edge &Fillet, const Standard_Real Radius);
		%feature("autodoc", "1");
		TopoDS_Vertex RemoveFillet(const TopoDS_Edge &Fillet);
		%feature("autodoc", "1");
		TopoDS_Edge AddChamfer(const TopoDS_Edge &E1, const TopoDS_Edge &E2, const Standard_Real D1, const Standard_Real D2);
		%feature("autodoc", "1");
		TopoDS_Edge AddChamfer(const TopoDS_Edge &E, const TopoDS_Vertex &V, const Standard_Real D, const Standard_Real Ang);
		%feature("autodoc", "1");
		TopoDS_Edge ModifyChamfer(const TopoDS_Edge &Chamfer, const TopoDS_Edge &E1, const TopoDS_Edge &E2, const Standard_Real D1, const Standard_Real D2);
		%feature("autodoc", "1");
		TopoDS_Edge ModifyChamfer(const TopoDS_Edge &Chamfer, const TopoDS_Edge &E, const Standard_Real D, const Standard_Real Ang);
		%feature("autodoc", "1");
		TopoDS_Vertex RemoveChamfer(const TopoDS_Edge &Chamfer);
		%feature("autodoc", "1");
		TopoDS_Face Result() const;
		%feature("autodoc", "1");
		Standard_Boolean IsModified(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & FilletEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbFillet() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & ChamferEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbChamfer() const;
		%feature("autodoc", "1");
		Standard_Boolean HasDescendant(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopoDS_Edge & DescendantEdge(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopoDS_Edge & BasisEdge(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		ChFi2d_ConstructionError Status() const;

};