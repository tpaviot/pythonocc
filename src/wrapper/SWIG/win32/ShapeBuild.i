/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

%module ShapeBuild
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ShapeBuild_renames.i


%include ShapeBuild_required_python_modules.i


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
		Handle_ShapeBuild_ReShape & operator=(const Handle_ShapeBuild_ReShape &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape & operator=(const ShapeBuild_ReShape *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeBuild_ReShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeBuild_ReShape {
	ShapeBuild_ReShape* GetObject() {
	return (ShapeBuild_ReShape*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeBuild_ReShape::~Handle_ShapeBuild_ReShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeBuild_ReShape {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","TransformPCurve(const pcurve, const trans, Standard_Real uFact) -> [Standard_Real, Standard_Real]");

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
%feature("shadow") ShapeBuild_Edge::~ShapeBuild_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeBuild_Edge {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") ShapeBuild_ReShape::~ShapeBuild_ReShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeBuild_ReShape {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") ShapeBuild_Vertex::~ShapeBuild_Vertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeBuild_Vertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeBuild;
class ShapeBuild {
	public:
		%feature("autodoc", "1");
		ShapeBuild();
		%feature("autodoc", "1");
		static		Handle_Geom_Plane PlaneXOY();

};
%feature("shadow") ShapeBuild::~ShapeBuild %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeBuild {
	void _kill_pointed() {
		delete $self;
	}
};
