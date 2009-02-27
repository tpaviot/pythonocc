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
%module BiTgte

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



%nodefaultctor Handle_BiTgte_HCurveOnEdge;
class Handle_BiTgte_HCurveOnEdge : public Handle_Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		~Handle_BiTgte_HCurveOnEdge();
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnEdge();
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnEdge(const Handle_BiTgte_HCurveOnEdge &aHandle);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnEdge(const BiTgte_HCurveOnEdge *anItem);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BiTgte_HCurveOnEdge {
	BiTgte_HCurveOnEdge* GetObject() {
	return (BiTgte_HCurveOnEdge*)$self->Access();
	}
};

%nodefaultctor Handle_BiTgte_HCurveOnVertex;
class Handle_BiTgte_HCurveOnVertex : public Handle_Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		~Handle_BiTgte_HCurveOnVertex();
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnVertex();
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnVertex(const Handle_BiTgte_HCurveOnVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnVertex(const BiTgte_HCurveOnVertex *anItem);
		%feature("autodoc", "1");
		Handle_BiTgte_HCurveOnVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BiTgte_HCurveOnVertex {
	BiTgte_HCurveOnVertex* GetObject() {
	return (BiTgte_HCurveOnVertex*)$self->Access();
	}
};

%nodefaultctor Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox;
class Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox();
		%feature("autodoc", "1");
		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox();
		%feature("autodoc", "1");
		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox(const Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox(const BiTgte_DataMapNodeOfDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox {
	BiTgte_DataMapNodeOfDataMapOfShapeBox* GetObject() {
	return (BiTgte_DataMapNodeOfDataMapOfShapeBox*)$self->Access();
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
		%feature("autodoc", "1");
		virtual		~BiTgte_HCurveOnEdge();

};
%extend BiTgte_HCurveOnEdge {
	Handle_BiTgte_HCurveOnEdge GetHandle() {
	return *(Handle_BiTgte_HCurveOnEdge*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BiTgte_HCurveOnVertex();

};
%extend BiTgte_HCurveOnVertex {
	Handle_BiTgte_HCurveOnVertex GetHandle() {
	return *(Handle_BiTgte_HCurveOnVertex*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BiTgte_DataMapNodeOfDataMapOfShapeBox();

};
%extend BiTgte_DataMapNodeOfDataMapOfShapeBox {
	Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox GetHandle() {
	return *(Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BiTgte_CurveOnVertex();

};

%nodefaultctor BiTgte_Blend;
class BiTgte_Blend {
	public:
		%feature("autodoc", "1");
		~BiTgte_Blend();
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
		void IndicesOfBranche(const Standard_Integer Index, Standard_Integer & From, Standard_Integer & To) const;
		%feature("autodoc", "1");
		void ComputeCenters();

};

%nodefaultctor BiTgte_DataMapOfShapeBox;
class BiTgte_DataMapOfShapeBox : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BiTgte_DataMapOfShapeBox(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BiTgte_DataMapOfShapeBox & Assign(const BiTgte_DataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BiTgte_DataMapOfShapeBox();
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

%nodefaultctor BiTgte_DataMapIteratorOfDataMapOfShapeBox;
class BiTgte_DataMapIteratorOfDataMapOfShapeBox : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BiTgte_DataMapIteratorOfDataMapOfShapeBox();
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
		%feature("autodoc", "1");
		virtual		~BiTgte_CurveOnEdge();

};