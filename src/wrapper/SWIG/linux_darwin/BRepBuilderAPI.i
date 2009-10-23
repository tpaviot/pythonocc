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
%module BRepBuilderAPI

%include BRepBuilderAPI_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BRepBuilderAPI_dependencies.i


%include BRepBuilderAPI_headers.i


enum BRepBuilderAPI_FaceError {
	BRepBuilderAPI_FaceDone,
	BRepBuilderAPI_NoFace,
	BRepBuilderAPI_NotPlanar,
	BRepBuilderAPI_CurveProjectionFailed,
	BRepBuilderAPI_ParametersOutOfRange,
	BRepBuilderAPI_SurfaceNotC2,
	};

enum BRepBuilderAPI_PipeError {
	BRepBuilderAPI_PipeDone,
	BRepBuilderAPI_PipeNotDone,
	BRepBuilderAPI_PlaneNotIntersectGuide,
	BRepBuilderAPI_ImpossibleContact,
	};

enum BRepBuilderAPI_TransitionMode {
	BRepBuilderAPI_Transformed,
	BRepBuilderAPI_RightCorner,
	BRepBuilderAPI_RoundCorner,
	};

enum BRepBuilderAPI_ShapeModification {
	BRepBuilderAPI_Preserved,
	BRepBuilderAPI_Deleted,
	BRepBuilderAPI_Trimmed,
	BRepBuilderAPI_Merged,
	BRepBuilderAPI_BoundaryModified,
	};

enum BRepBuilderAPI_WireError {
	BRepBuilderAPI_WireDone,
	BRepBuilderAPI_EmptyWire,
	BRepBuilderAPI_DisconnectedWire,
	BRepBuilderAPI_NonManifoldWire,
	};

enum BRepBuilderAPI_ShellError {
	BRepBuilderAPI_ShellDone,
	BRepBuilderAPI_EmptyShell,
	BRepBuilderAPI_DisconnectedShell,
	BRepBuilderAPI_ShellParametersOutOfRange,
	};

enum BRepBuilderAPI_EdgeError {
	BRepBuilderAPI_EdgeDone,
	BRepBuilderAPI_PointProjectionFailed,
	BRepBuilderAPI_ParameterOutOfRange,
	BRepBuilderAPI_DifferentPointsOnClosedCurve,
	BRepBuilderAPI_PointWithInfiniteParameter,
	BRepBuilderAPI_DifferentsPointAndParameter,
	BRepBuilderAPI_LineThroughIdenticPoints,
	};



%nodefaultctor Handle_BRepBuilderAPI_Sewing;
class Handle_BRepBuilderAPI_Sewing : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepBuilderAPI_Sewing();
		%feature("autodoc", "1");
		Handle_BRepBuilderAPI_Sewing(const Handle_BRepBuilderAPI_Sewing &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBuilderAPI_Sewing(const BRepBuilderAPI_Sewing *anItem);
		%feature("autodoc", "1");
		Handle_BRepBuilderAPI_Sewing & operator=(const Handle_BRepBuilderAPI_Sewing &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBuilderAPI_Sewing & operator=(const BRepBuilderAPI_Sewing *anItem);
		%feature("autodoc", "1");
		Handle_BRepBuilderAPI_Sewing const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepBuilderAPI_Sewing {
	BRepBuilderAPI_Sewing* GetObject() {
	return (BRepBuilderAPI_Sewing*)$self->Access();
	}
};
%feature("shadow") Handle_BRepBuilderAPI_Sewing::~Handle_BRepBuilderAPI_Sewing %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_Command;
class BRepBuilderAPI_Command {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Check() const;

};
%feature("shadow") BRepBuilderAPI_Command::~BRepBuilderAPI_Command %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_MakeShape;
class BRepBuilderAPI_MakeShape : public BRepBuilderAPI_Command {
	public:
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &S);

};
%feature("shadow") BRepBuilderAPI_MakeShape::~BRepBuilderAPI_MakeShape %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_ModifyShape;
class BRepBuilderAPI_ModifyShape : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		virtual		const TopoDS_Shape & ModifiedShape(const TopoDS_Shape &S) const;

};
%feature("shadow") BRepBuilderAPI_ModifyShape::~BRepBuilderAPI_ModifyShape %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_Copy;
class BRepBuilderAPI_Copy : public BRepBuilderAPI_ModifyShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_Copy();
		%feature("autodoc", "1");
		BRepBuilderAPI_Copy(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &S);

};
%feature("shadow") BRepBuilderAPI_Copy::~BRepBuilderAPI_Copy %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_Sewing;
class BRepBuilderAPI_Sewing : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_Sewing(const Standard_Real tolerance=9.99999999999999954748111825886258685613938723691e-7, const Standard_Boolean option1=1, const Standard_Boolean option2=1, const Standard_Boolean option3=1, const Standard_Boolean option4=0);
		%feature("autodoc", "1");
		void Init(const Standard_Real tolerance=9.99999999999999954748111825886258685613938723691e-7, const Standard_Boolean option1=1, const Standard_Boolean option2=1, const Standard_Boolean option3=1, const Standard_Boolean option4=0);
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		const TopoDS_Shape & SewedShape() const;
		%feature("autodoc", "1");
		Standard_Integer NbFreeEdges() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & FreeEdge(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Integer NbMultipleEdges() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & MultipleEdge(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Integer NbContigousEdges() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & ContigousEdge(const Standard_Integer index) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & ContigousEdgeCouple(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSectionBound(const TopoDS_Edge &section) const;
		%feature("autodoc", "1");
		const TopoDS_Edge & SectionToBoundary(const TopoDS_Edge &section) const;
		%feature("autodoc", "1");
		Standard_Integer NbDegeneratedShapes() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & DegeneratedShape(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDegenerated(const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		Standard_Boolean IsModified(const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Modified(const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		Standard_Boolean IsModifiedSubShape(const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		TopoDS_Shape ModifiedSubShape(const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		Standard_Integer NbDeletedFaces() const;
		%feature("autodoc", "1");
		const TopoDS_Face & DeletedFace(const Standard_Integer index) const;
		%feature("autodoc", "1");
		TopoDS_Face WhichFace(const TopoDS_Edge &theEdg, const Standard_Integer index=1) const;
		%feature("autodoc", "1");
		Standard_Boolean SameParameterMode() const;
		%feature("autodoc", "1");
		void SetSameParameterMode(const Standard_Boolean SameParameterMode);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real theToler);
		%feature("autodoc", "1");
		Standard_Real MinTolerance() const;
		%feature("autodoc", "1");
		void SetMinTolerance(const Standard_Real theMinToler);
		%feature("autodoc", "1");
		Standard_Real MaxTolerance() const;
		%feature("autodoc", "1");
		void SetMaxTolerance(const Standard_Real theMaxToler);
		%feature("autodoc", "1");
		Standard_Boolean FaceMode() const;
		%feature("autodoc", "1");
		void SetFaceMode(const Standard_Boolean theFaceMode);
		%feature("autodoc", "1");
		Standard_Boolean FloatingEdgesMode() const;
		%feature("autodoc", "1");
		void SetFloatingEdgesMode(const Standard_Boolean theFloatingEdgesMode);
		%feature("autodoc", "1");
		Standard_Boolean LocalTolerancesMode() const;
		%feature("autodoc", "1");
		void SetLocalTolerancesMode(const Standard_Boolean theLocalTolerancesMode);
		%feature("autodoc", "1");
		void SetNonManifoldMode(const Standard_Boolean theNonManifoldMode);
		%feature("autodoc", "1");
		Standard_Boolean NonManifoldMode() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepBuilderAPI_Sewing {
	Handle_BRepBuilderAPI_Sewing GetHandle() {
	return *(Handle_BRepBuilderAPI_Sewing*) &$self;
	}
};
%extend BRepBuilderAPI_Sewing {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepBuilderAPI_Sewing::~BRepBuilderAPI_Sewing %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_MakeWire;
class BRepBuilderAPI_MakeWire : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeWire();
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeWire(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeWire(const TopoDS_Edge &E1, const TopoDS_Edge &E2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeWire(const TopoDS_Edge &E1, const TopoDS_Edge &E2, const TopoDS_Edge &E3);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeWire(const TopoDS_Edge &E1, const TopoDS_Edge &E2, const TopoDS_Edge &E3, const TopoDS_Edge &E4);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeWire(const TopoDS_Wire &W);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeWire(const TopoDS_Wire &W, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Add(const TopoDS_Wire &W);
		%feature("autodoc", "1");
		void Add(const TopTools_ListOfShape &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		BRepBuilderAPI_WireError Error() const;
		%feature("autodoc", "1");
		const TopoDS_Wire & Wire() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex() const;

};
%feature("shadow") BRepBuilderAPI_MakeWire::~BRepBuilderAPI_MakeWire %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_MakeEdge;
class BRepBuilderAPI_MakeEdge : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge();
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Lin &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Lin &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Lin &L, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Lin &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Circ &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Circ &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Circ &L, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Circ &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Elips &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Elips &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Elips &L, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Elips &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Hypr &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Hypr &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Hypr &L, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Hypr &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Parab &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Parab &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Parab &L, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const gp_Parab &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve &L, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve &L, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		BRepBuilderAPI_EdgeError Error() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex1() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex2() const;

};
%feature("shadow") BRepBuilderAPI_MakeEdge::~BRepBuilderAPI_MakeEdge %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_FindPlane;
class BRepBuilderAPI_FindPlane {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_FindPlane();
		%feature("autodoc", "1");
		BRepBuilderAPI_FindPlane(const TopoDS_Shape &S, const Standard_Real Tol=-0x000000001);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, const Standard_Real Tol=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean Found() const;
		%feature("autodoc", "1");
		Handle_Geom_Plane Plane() const;

};
%feature("shadow") BRepBuilderAPI_FindPlane::~BRepBuilderAPI_FindPlane %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_MakeEdge2d;
class BRepBuilderAPI_MakeEdge2d : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Lin2d &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Lin2d &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Lin2d &L, const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Lin2d &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Circ2d &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Circ2d &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Circ2d &L, const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Circ2d &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Elips2d &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Elips2d &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Elips2d &L, const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Elips2d &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Hypr2d &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Hypr2d &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Hypr2d &L, const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Hypr2d &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Parab2d &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Parab2d &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Parab2d &L, const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const gp_Parab2d &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const Handle_Geom2d_Curve &L);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const Handle_Geom2d_Curve &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const Handle_Geom2d_Curve &L, const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const Handle_Geom2d_Curve &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const Handle_Geom2d_Curve &L, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeEdge2d(const Handle_Geom2d_Curve &L, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const TopoDS_Vertex &V1, const TopoDS_Vertex &V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		BRepBuilderAPI_EdgeError Error() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex1() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex2() const;

};
%feature("shadow") BRepBuilderAPI_MakeEdge2d::~BRepBuilderAPI_MakeEdge2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_NurbsConvert;
class BRepBuilderAPI_NurbsConvert : public BRepBuilderAPI_ModifyShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_NurbsConvert();
		%feature("autodoc", "1");
		BRepBuilderAPI_NurbsConvert(const TopoDS_Shape &S, const Standard_Boolean Copy=0);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &S, const Standard_Boolean Copy=0);

};
%feature("shadow") BRepBuilderAPI_NurbsConvert::~BRepBuilderAPI_NurbsConvert %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_MakeVertex;
class BRepBuilderAPI_MakeVertex : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeVertex(const gp_Pnt &P);
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex() const;

};
%feature("shadow") BRepBuilderAPI_MakeVertex::~BRepBuilderAPI_MakeVertex %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_Transform;
class BRepBuilderAPI_Transform : public BRepBuilderAPI_ModifyShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_Transform(const gp_Trsf &T);
		%feature("autodoc", "1");
		BRepBuilderAPI_Transform(const TopoDS_Shape &S, const gp_Trsf &T, const Standard_Boolean Copy=0);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &S, const Standard_Boolean Copy=0);
		%feature("autodoc", "1");
		virtual		const TopoDS_Shape & ModifiedShape(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &S);

};
%feature("shadow") BRepBuilderAPI_Transform::~BRepBuilderAPI_Transform %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_Collect;
class BRepBuilderAPI_Collect {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_Collect();
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &SI, BRepBuilderAPI_MakeShape & MKS);
		%feature("autodoc", "1");
		void AddGenerated(const TopoDS_Shape &S, const TopoDS_Shape &Gen);
		%feature("autodoc", "1");
		void AddModif(const TopoDS_Shape &S, const TopoDS_Shape &Mod);
		%feature("autodoc", "1");
		void Filter(const TopoDS_Shape &SF);
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Modification() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Generated() const;

};
%feature("shadow") BRepBuilderAPI_Collect::~BRepBuilderAPI_Collect %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_GTransform;
class BRepBuilderAPI_GTransform : public BRepBuilderAPI_ModifyShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_GTransform(const gp_GTrsf &T);
		%feature("autodoc", "1");
		BRepBuilderAPI_GTransform(const TopoDS_Shape &S, const gp_GTrsf &T, const Standard_Boolean Copy=0);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &S, const Standard_Boolean Copy=0);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		const TopoDS_Shape & ModifiedShape(const TopoDS_Shape &S) const;

};
%feature("shadow") BRepBuilderAPI_GTransform::~BRepBuilderAPI_GTransform %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_MakePolygon;
class BRepBuilderAPI_MakePolygon : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_MakePolygon();
		%feature("autodoc", "1");
		BRepBuilderAPI_MakePolygon(const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakePolygon(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, const Standard_Boolean Close=0);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakePolygon(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, const gp_Pnt &P4, const Standard_Boolean Close=0);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakePolygon(const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakePolygon(const TopoDS_Vertex &V1, const TopoDS_Vertex &V2, const TopoDS_Vertex &V3, const Standard_Boolean Close=0);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakePolygon(const TopoDS_Vertex &V1, const TopoDS_Vertex &V2, const TopoDS_Vertex &V3, const TopoDS_Vertex &V4, const Standard_Boolean Close=0);
		%feature("autodoc", "1");
		void Add(const gp_Pnt &P);
		%feature("autodoc", "1");
		void Add(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		Standard_Boolean Added() const;
		%feature("autodoc", "1");
		void Close();
		%feature("autodoc", "1");
		const TopoDS_Vertex & FirstVertex() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & LastVertex() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Wire & Wire() const;

};
%feature("shadow") BRepBuilderAPI_MakePolygon::~BRepBuilderAPI_MakePolygon %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_MakeSolid;
class BRepBuilderAPI_MakeSolid : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeSolid();
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeSolid(const TopoDS_CompSolid &S);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeSolid(const TopoDS_Shell &S);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeSolid(const TopoDS_Shell &S1, const TopoDS_Shell &S2);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeSolid(const TopoDS_Shell &S1, const TopoDS_Shell &S2, const TopoDS_Shell &S3);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeSolid(const TopoDS_Solid &So);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeSolid(const TopoDS_Solid &So, const TopoDS_Shell &S);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shell &S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Solid & Solid() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &S);

};
%feature("shadow") BRepBuilderAPI_MakeSolid::~BRepBuilderAPI_MakeSolid %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_MakeFace;
class BRepBuilderAPI_MakeFace : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace();
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const TopoDS_Face &F);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Pln &P);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Cylinder &C);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Cone &C);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Sphere &S);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Torus &C);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Pln &P, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Cylinder &C, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Cone &C, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Sphere &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Torus &C, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const Handle_Geom_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const TopoDS_Wire &W, const Standard_Boolean OnlyPlane=0);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Pln &P, const TopoDS_Wire &W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Cylinder &C, const TopoDS_Wire &W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Cone &C, const TopoDS_Wire &W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Sphere &S, const TopoDS_Wire &W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const gp_Torus &C, const TopoDS_Wire &W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const Handle_Geom_Surface &S, const TopoDS_Wire &W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeFace(const TopoDS_Face &F, const TopoDS_Wire &W);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S, const Standard_Boolean Bound=1);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		void Add(const TopoDS_Wire &W);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		BRepBuilderAPI_FaceError Error() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;

};
%feature("shadow") BRepBuilderAPI_MakeFace::~BRepBuilderAPI_MakeFace %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI_MakeShell;
class BRepBuilderAPI_MakeShell : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeShell();
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeShell(const Handle_Geom_Surface &S, const Standard_Boolean Segment=0);
		%feature("autodoc", "1");
		BRepBuilderAPI_MakeShell(const Handle_Geom_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Boolean Segment=0);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Boolean Segment=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		BRepBuilderAPI_ShellError Error() const;
		%feature("autodoc", "1");
		const TopoDS_Shell & Shell() const;

};
%feature("shadow") BRepBuilderAPI_MakeShell::~BRepBuilderAPI_MakeShell %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor BRepBuilderAPI;
class BRepBuilderAPI {
	public:
		%feature("autodoc", "1");
		BRepBuilderAPI();
		%feature("autodoc", "1");
		void Plane(const Handle_Geom_Plane &P);
		%feature("autodoc", "1");
		const Handle_Geom_Plane & Plane();
		%feature("autodoc", "1");
		void Precision(const Standard_Real P);
		%feature("autodoc", "1");
		Standard_Real Precision();

};
%feature("shadow") BRepBuilderAPI::~BRepBuilderAPI %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}
