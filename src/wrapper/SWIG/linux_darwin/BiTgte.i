/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module BiTgte

%include BiTgte_renames.i

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

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include BiTgte_dependencies.i


%include BiTgte_headers.i


enum BiTgte_ContactType {
	BiTgte_FaceFace,
	BiTgte_FaceEdge,
	BiTgte_FaceVertex,
	BiTgte_EdgeEdge,
	BiTgte_EdgeVertex,
	BiTgte_VertexVertex,
	};



%nodefaultctor Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox;
class Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox();
		%feature("autodoc", "1");
		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox(const Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox(const BiTgte_DataMapNodeOfDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox & operator=(const Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox & operator=(const BiTgte_DataMapNodeOfDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox {
	BiTgte_DataMapNodeOfDataMapOfShapeBox* GetObject() {
	return (BiTgte_DataMapNodeOfDataMapOfShapeBox*)$self->Access();
	}
};
%extend Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox {
	~Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox\n");}
	}
};


%nodefaultctor Handle_BiTgte_HCurveOnEdge;
class Handle_BiTgte_HCurveOnEdge : public Handle_Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnEdge();
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnEdge(const Handle_BiTgte_HCurveOnEdge &aHandle);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnEdge(const BiTgte_HCurveOnEdge *anItem);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnEdge & operator=(const Handle_BiTgte_HCurveOnEdge &aHandle);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnEdge & operator=(const BiTgte_HCurveOnEdge *anItem);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BiTgte_HCurveOnEdge {
	BiTgte_HCurveOnEdge* GetObject() {
	return (BiTgte_HCurveOnEdge*)$self->Access();
	}
};
%extend Handle_BiTgte_HCurveOnEdge {
	~Handle_BiTgte_HCurveOnEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BiTgte_HCurveOnEdge\n");}
	}
};


%nodefaultctor Handle_BiTgte_HCurveOnVertex;
class Handle_BiTgte_HCurveOnVertex : public Handle_Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnVertex();
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnVertex(const Handle_BiTgte_HCurveOnVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnVertex(const BiTgte_HCurveOnVertex *anItem);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnVertex & operator=(const Handle_BiTgte_HCurveOnVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnVertex & operator=(const BiTgte_HCurveOnVertex *anItem);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BiTgte_HCurveOnVertex {
	BiTgte_HCurveOnVertex* GetObject() {
	return (BiTgte_HCurveOnVertex*)$self->Access();
	}
};
%extend Handle_BiTgte_HCurveOnVertex {
	~Handle_BiTgte_HCurveOnVertex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BiTgte_HCurveOnVertex\n");}
	}
};


%nodefaultctor BiTgte_CurveOnVertex;
class BiTgte_CurveOnVertex : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		BiTgte_CurveOnVertex();
		%feature("autodoc", "1");
		BiTgte_CurveOnVertex(const TopoDS_Edge &EonF, const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge &EonF, const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HCurve Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		virtual		gp_Lin Line() const;
		%feature("autodoc", "1");
		virtual		gp_Circ Circle() const;
		%feature("autodoc", "1");
		virtual		gp_Elips Ellipse() const;
		%feature("autodoc", "1");
		virtual		gp_Hypr Hyperbola() const;
		%feature("autodoc", "1");
		virtual		gp_Parab Parabola() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineCurve BSpline() const;

};
%extend BiTgte_CurveOnVertex {
	~BiTgte_CurveOnVertex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BiTgte_CurveOnVertex\n");}
	}
};


%nodefaultctor BiTgte_DataMapNodeOfDataMapOfShapeBox;
class BiTgte_DataMapNodeOfDataMapOfShapeBox : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BiTgte_DataMapNodeOfDataMapOfShapeBox(const TopoDS_Shape &K, const Bnd_Box &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BiTgte_DataMapNodeOfDataMapOfShapeBox {
	Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox GetHandle() {
	return *(Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox*) &$self;
	}
};
%extend BiTgte_DataMapNodeOfDataMapOfShapeBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BiTgte_DataMapNodeOfDataMapOfShapeBox {
	~BiTgte_DataMapNodeOfDataMapOfShapeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BiTgte_DataMapNodeOfDataMapOfShapeBox\n");}
	}
};


%nodefaultctor BiTgte_HCurveOnEdge;
class BiTgte_HCurveOnEdge : public Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		BiTgte_HCurveOnEdge();
		%feature("autodoc", "1");
		BiTgte_HCurveOnEdge(const BiTgte_CurveOnEdge &C);
		%feature("autodoc", "1");
		void Set(const BiTgte_CurveOnEdge &C);
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		Adaptor3d_Curve & GetCurve();
		%feature("autodoc", "1");
		BiTgte_CurveOnEdge & ChangeCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BiTgte_HCurveOnEdge {
	Handle_BiTgte_HCurveOnEdge GetHandle() {
	return *(Handle_BiTgte_HCurveOnEdge*) &$self;
	}
};
%extend BiTgte_HCurveOnEdge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BiTgte_HCurveOnEdge {
	~BiTgte_HCurveOnEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BiTgte_HCurveOnEdge\n");}
	}
};


%nodefaultctor BiTgte_HCurveOnVertex;
class BiTgte_HCurveOnVertex : public Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		BiTgte_HCurveOnVertex();
		%feature("autodoc", "1");
		BiTgte_HCurveOnVertex(const BiTgte_CurveOnVertex &C);
		%feature("autodoc", "1");
		void Set(const BiTgte_CurveOnVertex &C);
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		Adaptor3d_Curve & GetCurve();
		%feature("autodoc", "1");
		BiTgte_CurveOnVertex & ChangeCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BiTgte_HCurveOnVertex {
	Handle_BiTgte_HCurveOnVertex GetHandle() {
	return *(Handle_BiTgte_HCurveOnVertex*) &$self;
	}
};
%extend BiTgte_HCurveOnVertex {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BiTgte_HCurveOnVertex {
	~BiTgte_HCurveOnVertex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BiTgte_HCurveOnVertex\n");}
	}
};


%nodefaultctor BiTgte_Blend;
class BiTgte_Blend {
	public:
		%feature("autodoc", "1");
		BiTgte_Blend();
		%feature("autodoc", "1");
		BiTgte_Blend(const TopoDS_Shape &S, const Standard_Real Radius, const Standard_Real Tol, const Standard_Boolean NUBS);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, const Standard_Real Radius, const Standard_Real Tol, const Standard_Boolean NUBS);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFaces(const TopoDS_Face &F1, const TopoDS_Face &F2);
		%feature("autodoc", "1");
		void SetEdge(const TopoDS_Edge &Edge);
		%feature("autodoc", "1");
		void SetStoppingFace(const TopoDS_Face &Face);
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean BuildShape=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		Standard_Integer NbSurfaces() const;
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void CenterLines(TopTools_ListOfShape & LC) const;
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface(const TopoDS_Shape &CenterLine) const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face(const TopoDS_Shape &CenterLine) const;
		%feature("autodoc", "1");
		BiTgte_ContactType ContactType(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & SupportShape1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & SupportShape2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve CurveOnShape1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve CurveOnShape2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve PCurveOnFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve PCurve1OnFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve PCurveOnFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve PCurve2OnFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbBranches();
		%feature("autodoc", "1");
		void IndicesOfBranche(const Standard_Integer Index, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void ComputeCenters();

};
%extend BiTgte_Blend {
	~BiTgte_Blend() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BiTgte_Blend\n");}
	}
};


%nodefaultctor BiTgte_DataMapIteratorOfDataMapOfShapeBox;
class BiTgte_DataMapIteratorOfDataMapOfShapeBox : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BiTgte_DataMapIteratorOfDataMapOfShapeBox();
		%feature("autodoc", "1");
		BiTgte_DataMapIteratorOfDataMapOfShapeBox(const BiTgte_DataMapOfShapeBox &aMap);
		%feature("autodoc", "1");
		void Initialize(const BiTgte_DataMapOfShapeBox &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Bnd_Box & Value() const;

};
%extend BiTgte_DataMapIteratorOfDataMapOfShapeBox {
	~BiTgte_DataMapIteratorOfDataMapOfShapeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BiTgte_DataMapIteratorOfDataMapOfShapeBox\n");}
	}
};


%nodefaultctor BiTgte_CurveOnEdge;
class BiTgte_CurveOnEdge : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		BiTgte_CurveOnEdge();
		%feature("autodoc", "1");
		BiTgte_CurveOnEdge(const TopoDS_Edge &EonF, const TopoDS_Edge &Edge);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge &EonF, const TopoDS_Edge &Edge);
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HCurve Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		virtual		gp_Lin Line() const;
		%feature("autodoc", "1");
		virtual		gp_Circ Circle() const;
		%feature("autodoc", "1");
		virtual		gp_Elips Ellipse() const;
		%feature("autodoc", "1");
		virtual		gp_Hypr Hyperbola() const;
		%feature("autodoc", "1");
		virtual		gp_Parab Parabola() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineCurve BSpline() const;

};
%extend BiTgte_CurveOnEdge {
	~BiTgte_CurveOnEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BiTgte_CurveOnEdge\n");}
	}
};


%nodefaultctor BiTgte_DataMapOfShapeBox;
class BiTgte_DataMapOfShapeBox : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BiTgte_DataMapOfShapeBox(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BiTgte_DataMapOfShapeBox & Assign(const BiTgte_DataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		BiTgte_DataMapOfShapeBox & operator=(const BiTgte_DataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Bnd_Box &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Bnd_Box & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const TopoDS_Shape &K);

};
%extend BiTgte_DataMapOfShapeBox {
	~BiTgte_DataMapOfShapeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BiTgte_DataMapOfShapeBox\n");}
	}
};
