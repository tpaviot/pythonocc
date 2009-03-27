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
%module ShapeAlgo

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


%include ShapeAlgo_dependencies.i


%include ShapeAlgo_headers.i




%nodefaultctor Handle_ShapeAlgo_ToolContainer;
class Handle_ShapeAlgo_ToolContainer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeAlgo_ToolContainer();
		%feature("autodoc", "1");
		Handle_ShapeAlgo_ToolContainer(const Handle_ShapeAlgo_ToolContainer &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAlgo_ToolContainer(const ShapeAlgo_ToolContainer *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAlgo_ToolContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAlgo_ToolContainer {
	ShapeAlgo_ToolContainer* GetObject() {
	return (ShapeAlgo_ToolContainer*)$self->Access();
	}
};
%extend Handle_ShapeAlgo_ToolContainer {
	~Handle_ShapeAlgo_ToolContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_ShapeAlgo_ToolContainer\n");}
	}
};

%nodefaultctor Handle_ShapeAlgo_AlgoContainer;
class Handle_ShapeAlgo_AlgoContainer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeAlgo_AlgoContainer();
		%feature("autodoc", "1");
		Handle_ShapeAlgo_AlgoContainer(const Handle_ShapeAlgo_AlgoContainer &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAlgo_AlgoContainer(const ShapeAlgo_AlgoContainer *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAlgo_AlgoContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAlgo_AlgoContainer {
	ShapeAlgo_AlgoContainer* GetObject() {
	return (ShapeAlgo_AlgoContainer*)$self->Access();
	}
};
%extend Handle_ShapeAlgo_AlgoContainer {
	~Handle_ShapeAlgo_AlgoContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_ShapeAlgo_AlgoContainer\n");}
	}
};

%nodefaultctor ShapeAlgo_ToolContainer;
class ShapeAlgo_ToolContainer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeAlgo_ToolContainer();
		%feature("autodoc", "1");
		virtual		Handle_ShapeFix_Shape FixShape() const;
		%feature("autodoc", "1");
		virtual		Handle_ShapeFix_EdgeProjAux EdgeProjAux() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeAlgo_ToolContainer {
	Handle_ShapeAlgo_ToolContainer GetHandle() {
	return *(Handle_ShapeAlgo_ToolContainer*) &$self;
	}
};
%extend ShapeAlgo_ToolContainer {
	~ShapeAlgo_ToolContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of ShapeAlgo_ToolContainer\n");}
	}
};

%nodefaultctor ShapeAlgo_AlgoContainer;
class ShapeAlgo_AlgoContainer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeAlgo_AlgoContainer();
		%feature("autodoc", "1");
		void SetToolContainer(const Handle_ShapeAlgo_ToolContainer &TC);
		%feature("autodoc", "1");
		Handle_ShapeAlgo_ToolContainer ToolContainer() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ConnectNextWire(const Handle_ShapeAnalysis_Wire &saw, const Handle_ShapeExtend_WireData &nextsewd, const Standard_Real maxtol, Standard_Real &OutValue, Standard_Boolean & revsewd, Standard_Boolean & revnextsewd) const;
		%feature("autodoc", "1");
		virtual		void ApproxBSplineCurve(const Handle_Geom_BSplineCurve &bspline, TColGeom_SequenceOfCurve & seq) const;
		%feature("autodoc", "1");
		virtual		void ApproxBSplineCurve(const Handle_Geom2d_BSplineCurve &bspline, TColGeom2d_SequenceOfCurve & seq) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean C0BSplineToSequenceOfC1BSplineCurve(const Handle_Geom_BSplineCurve &BS, Handle_TColGeom_HSequenceOfBoundedCurve & seqBS) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean C0BSplineToSequenceOfC1BSplineCurve(const Handle_Geom2d_BSplineCurve &BS, Handle_TColGeom2d_HSequenceOfBoundedCurve & seqBS) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Shape C0ShapeToC1Shape(const TopoDS_Shape &shape, const Standard_Real tol) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineSurface ConvertSurfaceToBSpline(const Handle_Geom_Surface &surf, const Standard_Real UF, const Standard_Real UL, const Standard_Real VF, const Standard_Real VL) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HomoWires(const TopoDS_Wire &wireIn1, const TopoDS_Wire &wireIn2, TopoDS_Wire & wireOut1, TopoDS_Wire & wireOut2, const Standard_Boolean byParam) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Wire OuterWire(const TopoDS_Face &face) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Surface ConvertToPeriodic(const Handle_Geom_Surface &surf) const;
		%feature("autodoc", "1");
		virtual		void GetFaceUVBounds(const TopoDS_Face &F, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineCurve ConvertCurveToBSpline(const Handle_Geom_Curve &C3D, const Standard_Real First, const Standard_Real Last, const Standard_Real Tol3d, const GeomAbs_Shape Continuity, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeAlgo_AlgoContainer {
	Handle_ShapeAlgo_AlgoContainer GetHandle() {
	return *(Handle_ShapeAlgo_AlgoContainer*) &$self;
	}
};
%extend ShapeAlgo_AlgoContainer {
	~ShapeAlgo_AlgoContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of ShapeAlgo_AlgoContainer\n");}
	}
};