/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module BiTgte
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BiTgte_renames.i


%include BiTgte_required_python_modules.i


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
		static		Handle_BiTgte_HCurveOnEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BiTgte_HCurveOnEdge {
	BiTgte_HCurveOnEdge* GetObject() {
	return (BiTgte_HCurveOnEdge*)$self->Access();
	}
};
%feature("shadow") Handle_BiTgte_HCurveOnEdge::~Handle_BiTgte_HCurveOnEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BiTgte_HCurveOnEdge {
	void _kill_pointed() {
		delete $self;
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
		static		Handle_BiTgte_HCurveOnVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BiTgte_HCurveOnVertex {
	BiTgte_HCurveOnVertex* GetObject() {
	return (BiTgte_HCurveOnVertex*)$self->Access();
	}
};
%feature("shadow") Handle_BiTgte_HCurveOnVertex::~Handle_BiTgte_HCurveOnVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BiTgte_HCurveOnVertex {
	void _kill_pointed() {
		delete $self;
	}
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
		static		Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox {
	BiTgte_DataMapNodeOfDataMapOfShapeBox* GetObject() {
	return (BiTgte_DataMapNodeOfDataMapOfShapeBox*)$self->Access();
	}
};
%feature("shadow") Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox::~Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BiTgte_DataMapNodeOfDataMapOfShapeBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BiTgte_CurveOnVertex;
class BiTgte_CurveOnVertex : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		BiTgte_CurveOnVertex();
		%feature("autodoc", "1");
		BiTgte_CurveOnVertex(const TopoDS_Edge EonF, const TopoDS_Vertex V);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge EonF, const TopoDS_Vertex V);
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
%feature("shadow") BiTgte_CurveOnVertex::~BiTgte_CurveOnVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BiTgte_CurveOnVertex {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") BiTgte_HCurveOnEdge::~BiTgte_HCurveOnEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BiTgte_HCurveOnEdge {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") BiTgte_HCurveOnVertex::~BiTgte_HCurveOnVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BiTgte_HCurveOnVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BiTgte_DataMapNodeOfDataMapOfShapeBox;
class BiTgte_DataMapNodeOfDataMapOfShapeBox : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BiTgte_DataMapNodeOfDataMapOfShapeBox(const TopoDS_Shape K, const Bnd_Box &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
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
%feature("shadow") BiTgte_DataMapNodeOfDataMapOfShapeBox::~BiTgte_DataMapNodeOfDataMapOfShapeBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BiTgte_DataMapNodeOfDataMapOfShapeBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BiTgte_Blend;
class BiTgte_Blend {
	public:
		%feature("autodoc", "1");
		BiTgte_Blend();
		%feature("autodoc", "1");
		BiTgte_Blend(const TopoDS_Shape S, const Standard_Real Radius, const Standard_Real Tol, const Standard_Boolean NUBS);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S, const Standard_Real Radius, const Standard_Real Tol, const Standard_Boolean NUBS);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFaces(const TopoDS_Face F1, const TopoDS_Face F2);
		%feature("autodoc", "1");
		void SetEdge(const TopoDS_Edge Edge);
		%feature("autodoc", "1");
		void SetStoppingFace(const TopoDS_Face Face);
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean BuildShape=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		Standard_Integer NbSurfaces() const;
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void CenterLines(TopTools_ListOfShape & LC) const;
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface(const TopoDS_Shape CenterLine) const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face(const TopoDS_Shape CenterLine) const;
		%feature("autodoc", "1");
		BiTgte_ContactType ContactType(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  SupportShape1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  SupportShape2(const Standard_Integer Index) const;
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
		%feature("autodoc","IndicesOfBranche(Standard_Integer Index) -> [Standard_Integer, Standard_Integer]");

		void IndicesOfBranche(const Standard_Integer Index, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void ComputeCenters();

};
%feature("shadow") BiTgte_Blend::~BiTgte_Blend %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BiTgte_Blend {
	void _kill_pointed() {
		delete $self;
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
		Standard_Boolean Bind(const TopoDS_Shape K, const Bnd_Box &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Bnd_Box & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const TopoDS_Shape K);

};
%feature("shadow") BiTgte_DataMapOfShapeBox::~BiTgte_DataMapOfShapeBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BiTgte_DataMapOfShapeBox {
	void _kill_pointed() {
		delete $self;
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
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Bnd_Box & Value() const;

};
%feature("shadow") BiTgte_DataMapIteratorOfDataMapOfShapeBox::~BiTgte_DataMapIteratorOfDataMapOfShapeBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BiTgte_DataMapIteratorOfDataMapOfShapeBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BiTgte_CurveOnEdge;
class BiTgte_CurveOnEdge : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		BiTgte_CurveOnEdge();
		%feature("autodoc", "1");
		BiTgte_CurveOnEdge(const TopoDS_Edge EonF, const TopoDS_Edge Edge);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge EonF, const TopoDS_Edge Edge);
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
%feature("shadow") BiTgte_CurveOnEdge::~BiTgte_CurveOnEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BiTgte_CurveOnEdge {
	void _kill_pointed() {
		delete $self;
	}
};
