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
%module ShapeBuild

%include ShapeBuild_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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


%include ShapeBuild_dependencies.i


%include ShapeBuild_headers.i




%nodefaultctor Handle_ShapeBuild_ReShape;
class Handle_ShapeBuild_ReShape : public Handle_BRepTools_ReShape {
	public:
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape();
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape(const Handle_ShapeBuild_ReShape &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape(const ShapeBuild_ReShape *anItem);
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeBuild_ReShape {
	ShapeBuild_ReShape* GetObject() {
	return (ShapeBuild_ReShape*)$self->Access();
	}
};
%extend Handle_ShapeBuild_ReShape {
	~Handle_ShapeBuild_ReShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ShapeBuild_ReShape\n");}
	}
};


%nodefaultctor ShapeBuild_Edge;
class ShapeBuild_Edge {
	public:
		%feature("autodoc", "1");
		ShapeBuild_Edge();
		%feature("autodoc", "1");
		TopoDS_Edge CopyReplaceVertices(const TopoDS_Edge &edge, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2) const;
		%feature("autodoc", "1");
		void CopyRanges(const TopoDS_Edge &toedge, const TopoDS_Edge &fromedge, const Standard_Real alpha=0, const Standard_Real beta=1) const;
		%feature("autodoc", "1");
		void SetRange3d(const TopoDS_Edge &edge, const Standard_Real first, const Standard_Real last) const;
		%feature("autodoc", "1");
		void CopyPCurves(const TopoDS_Edge &toedge, const TopoDS_Edge &fromedge) const;
		%feature("autodoc", "1");
		TopoDS_Edge Copy(const TopoDS_Edge &edge, const Standard_Boolean sharepcurves=1) const;
		%feature("autodoc", "1");
		void RemovePCurve(const TopoDS_Edge &edge, const TopoDS_Face &face) const;
		%feature("autodoc", "1");
		void RemovePCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surf) const;
		%feature("autodoc", "1");
		void RemovePCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surf, const TopLoc_Location &loc) const;
		%feature("autodoc", "1");
		void ReplacePCurve(const TopoDS_Edge &edge, const Handle_Geom2d_Curve &pcurve, const TopoDS_Face &face) const;
		%feature("autodoc", "1");
		Standard_Boolean ReassignPCurve(const TopoDS_Edge &edge, const TopoDS_Face &old, const TopoDS_Face &sub) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve TransformPCurve(const Handle_Geom2d_Curve &pcurve, const gp_Trsf2d &trans, const Standard_Real uFact, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void RemoveCurve3d(const TopoDS_Edge &edge) const;
		%feature("autodoc", "1");
		Standard_Boolean BuildCurve3d(const TopoDS_Edge &edge) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & edge, const Handle_Geom_Curve &curve, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & edge, const Handle_Geom_Curve &curve, const TopLoc_Location &L, const Standard_Real p1, const Standard_Real p2) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & edge, const Handle_Geom2d_Curve &pcurve, const TopoDS_Face &face) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & edge, const Handle_Geom2d_Curve &pcurve, const TopoDS_Face &face, const Standard_Real p1, const Standard_Real p2) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & edge, const Handle_Geom2d_Curve &pcurve, const Handle_Geom_Surface &S, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & edge, const Handle_Geom2d_Curve &pcurve, const Handle_Geom_Surface &S, const TopLoc_Location &L, const Standard_Real p1, const Standard_Real p2) const;

};
%extend ShapeBuild_Edge {
	~ShapeBuild_Edge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeBuild_Edge\n");}
	}
};


%nodefaultctor ShapeBuild_ReShape;
class ShapeBuild_ReShape : public BRepTools_ReShape {
	public:
		%feature("autodoc", "1");
		ShapeBuild_ReShape();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape Apply(const TopoDS_Shape &shape, const TopAbs_ShapeEnum until, const Standard_Integer buildmode);
		%feature("autodoc", "1");
		virtual		TopoDS_Shape Apply(const TopoDS_Shape &shape, const TopAbs_ShapeEnum until=TopAbs_SHAPE);
		%feature("autodoc", "1");
		virtual		Standard_Integer Status(const TopoDS_Shape &shape, TopoDS_Shape & newsh, const Standard_Boolean last=0);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeBuild_ReShape {
	Handle_ShapeBuild_ReShape GetHandle() {
	return *(Handle_ShapeBuild_ReShape*) &$self;
	}
};
%extend ShapeBuild_ReShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend ShapeBuild_ReShape {
	~ShapeBuild_ReShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeBuild_ReShape\n");}
	}
};


%nodefaultctor ShapeBuild_Vertex;
class ShapeBuild_Vertex {
	public:
		%feature("autodoc", "1");
		ShapeBuild_Vertex();
		%feature("autodoc", "1");
		TopoDS_Vertex CombineVertex(const TopoDS_Vertex &V1, const TopoDS_Vertex &V2, const Standard_Real tolFactor=1.00009999999999998898658759571844711899757385254e+0) const;
		%feature("autodoc", "1");
		TopoDS_Vertex CombineVertex(const gp_Pnt &pnt1, const gp_Pnt &pnt2, const Standard_Real tol1, const Standard_Real tol2, const Standard_Real tolFactor=1.00009999999999998898658759571844711899757385254e+0) const;

};
%extend ShapeBuild_Vertex {
	~ShapeBuild_Vertex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeBuild_Vertex\n");}
	}
};


%nodefaultctor ShapeBuild;
class ShapeBuild {
	public:
		%feature("autodoc", "1");
		ShapeBuild();
		%feature("autodoc", "1");
		Handle_Geom_Plane PlaneXOY();

};
%extend ShapeBuild {
	~ShapeBuild() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeBuild\n");}
	}
};
