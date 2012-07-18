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

%module BRepLib
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepLib_renames.i


%include BRepLib_required_python_modules.i


%include BRepLib_dependencies.i


%include BRepLib_headers.i


enum BRepLib_EdgeError {
	BRepLib_EdgeDone,
	BRepLib_PointProjectionFailed,
	BRepLib_ParameterOutOfRange,
	BRepLib_DifferentPointsOnClosedCurve,
	BRepLib_PointWithInfiniteParameter,
	BRepLib_DifferentsPointAndParameter,
	BRepLib_LineThroughIdenticPoints,
	};

enum BRepLib_ShapeModification {
	BRepLib_Preserved,
	BRepLib_Deleted,
	BRepLib_Trimmed,
	BRepLib_Merged,
	BRepLib_BoundaryModified,
	};

enum BRepLib_FaceError {
	BRepLib_FaceDone,
	BRepLib_NoFace,
	BRepLib_NotPlanar,
	BRepLib_CurveProjectionFailed,
	BRepLib_ParametersOutOfRange,
	};

enum BRepLib_WireError {
	BRepLib_WireDone,
	BRepLib_EmptyWire,
	BRepLib_DisconnectedWire,
	BRepLib_NonManifoldWire,
	};

enum BRepLib_ShellError {
	BRepLib_ShellDone,
	BRepLib_EmptyShell,
	BRepLib_DisconnectedShell,
	BRepLib_ShellParametersOutOfRange,
	};



%nodefaultctor BRepLib_Command;
class BRepLib_Command {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Check() const;

};
%feature("shadow") BRepLib_Command::~BRepLib_Command %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_Command {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRepLib_Command {
	BRepLib_Command () {}
};


%nodefaultctor BRepLib_MakeShape;
class BRepLib_MakeShape : public BRepLib_Command {
	public:
		%feature("autodoc", "1");
		void Build();
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		virtual		BRepLib_ShapeModification FaceStatus(const TopoDS_Face F) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasDescendants(const TopoDS_Face F) const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & DescendantFaces(const TopoDS_Face F);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSurfaces() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & NewFaces(const Standard_Integer I);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & FacesFromEdges(const TopoDS_Edge E);

};
%feature("shadow") BRepLib_MakeShape::~BRepLib_MakeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_MakeShape {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRepLib_MakeShape {
	BRepLib_MakeShape () {}
};


%nodefaultctor BRepLib_MakeVertex;
class BRepLib_MakeVertex : public BRepLib_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepLib_MakeVertex(const gp_Pnt P);
		%feature("autodoc", "1");
		const TopoDS_Vertex  Vertex() const;

};
%feature("shadow") BRepLib_MakeVertex::~BRepLib_MakeVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_MakeVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepLib_MakeEdge;
class BRepLib_MakeEdge : public BRepLib_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepLib_MakeEdge();
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Lin L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Lin L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Lin L, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Lin L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Circ L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Circ L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Circ L, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Circ L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Elips L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Elips L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Elips L, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Elips L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Hypr L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Hypr L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Hypr L, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Hypr L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Parab L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Parab L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Parab L, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const gp_Parab L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom_Curve &L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom_Curve &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom_Curve &L, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom_Curve &L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom_Curve &L, const gp_Pnt P1, const gp_Pnt P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom_Curve &L, const TopoDS_Vertex V1, const TopoDS_Vertex V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S, const gp_Pnt P1, const gp_Pnt P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge(const Handle_Geom2d_Curve &L, const Handle_Geom_Surface &S, const TopoDS_Vertex V1, const TopoDS_Vertex V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const gp_Pnt P1, const gp_Pnt P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const TopoDS_Vertex V1, const TopoDS_Vertex V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const gp_Pnt P1, const gp_Pnt P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const TopoDS_Vertex V1, const TopoDS_Vertex V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_EdgeError Error() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  Vertex1() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  Vertex2() const;

};
%feature("shadow") BRepLib_MakeEdge::~BRepLib_MakeEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_MakeEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepLib_MakeEdge2d;
class BRepLib_MakeEdge2d : public BRepLib_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Lin2d L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Lin2d L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Lin2d L, const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Lin2d L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Circ2d L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Circ2d L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Circ2d L, const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Circ2d L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Elips2d L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Elips2d L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Elips2d L, const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Elips2d L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Hypr2d L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Hypr2d L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Hypr2d L, const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Hypr2d L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Parab2d L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Parab2d L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Parab2d L, const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const gp_Parab2d L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const Handle_Geom2d_Curve &L);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const Handle_Geom2d_Curve &L, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const Handle_Geom2d_Curve &L, const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const Handle_Geom2d_Curve &L, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const Handle_Geom2d_Curve &L, const gp_Pnt2d P1, const gp_Pnt2d P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_MakeEdge2d(const Handle_Geom2d_Curve &L, const TopoDS_Vertex V1, const TopoDS_Vertex V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const gp_Pnt2d P1, const gp_Pnt2d P2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const TopoDS_Vertex V1, const TopoDS_Vertex V2, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		BRepLib_EdgeError Error() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  Vertex1() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  Vertex2() const;

};
%feature("shadow") BRepLib_MakeEdge2d::~BRepLib_MakeEdge2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_MakeEdge2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepLib_MakeShell;
class BRepLib_MakeShell : public BRepLib_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepLib_MakeShell();
		%feature("autodoc", "1");
		BRepLib_MakeShell(const Handle_Geom_Surface &S, const Standard_Boolean Segment=0);
		%feature("autodoc", "1");
		BRepLib_MakeShell(const Handle_Geom_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Boolean Segment=0);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Boolean Segment=0);
		%feature("autodoc", "1");
		BRepLib_ShellError Error() const;
		%feature("autodoc", "1");
		const TopoDS_Shell  Shell() const;

};
%feature("shadow") BRepLib_MakeShell::~BRepLib_MakeShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_MakeShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepLib_FuseEdges;
class BRepLib_FuseEdges {
	public:
		%feature("autodoc", "1");
		BRepLib_FuseEdges(const TopoDS_Shape theShape, const Standard_Boolean PerformNow=0);
		%feature("autodoc", "1");
		void AvoidEdges(const TopTools_IndexedMapOfShape &theMapEdg);
		%feature("autodoc", "1");
		void SetConcatBSpl(const Standard_Boolean theConcatBSpl=1);
		%feature("autodoc", "1");
		void Edges(TopTools_DataMapOfIntegerListOfShape & theMapLstEdg);
		%feature("autodoc", "1");
		void ResultEdges(TopTools_DataMapOfIntegerShape & theMapEdg);
		%feature("autodoc", "1");
		void Faces(TopTools_DataMapOfShapeShape & theMapFac);
		%feature("autodoc", "1");
		TopoDS_Shape  Shape();
		%feature("autodoc", "1");
		Standard_Integer const NbVertices();
		%feature("autodoc", "1");
		void Perform();

};
%feature("shadow") BRepLib_FuseEdges::~BRepLib_FuseEdges %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_FuseEdges {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepLib;
class BRepLib {
	public:
		%feature("autodoc", "1");
		BRepLib();
		%feature("autodoc", "1");
		static		void Precision(const Standard_Real P);
		%feature("autodoc", "1");
		static		Standard_Real Precision();
		%feature("autodoc", "1");
		static		void Plane(const Handle_Geom_Plane &P);
		%feature("autodoc", "1");
		static		const Handle_Geom_Plane & Plane();
		%feature("autodoc", "1");
		static		Standard_Boolean CheckSameRange(const TopoDS_Edge E, const Standard_Real Confusion=9.99999999999999979886647629255615367252843506129522666015e-13);
		%feature("autodoc", "1");
		static		void SameRange(const TopoDS_Edge E, const Standard_Real Tolerance=1.00000000000000008180305391403130954586231382563710212708e-5);
		%feature("autodoc", "1");
		static		Standard_Boolean BuildCurve3d(const TopoDS_Edge E, const Standard_Real Tolerance=1.00000000000000008180305391403130954586231382563710212708e-5, const GeomAbs_Shape Continuity=GeomAbs_C1, const Standard_Integer MaxDegree=14, const Standard_Integer MaxSegment=0);
		%feature("autodoc", "1");
		static		Standard_Boolean BuildCurves3d(const TopoDS_Shape S, const Standard_Real Tolerance, const GeomAbs_Shape Continuity=GeomAbs_C1, const Standard_Integer MaxDegree=14, const Standard_Integer MaxSegment=0);
		%feature("autodoc", "1");
		static		Standard_Boolean BuildCurves3d(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		Standard_Boolean UpdateEdgeTol(const TopoDS_Edge E, const Standard_Real MinToleranceRequest, const Standard_Real MaxToleranceToCheck);
		%feature("autodoc", "1");
		static		Standard_Boolean UpdateEdgeTolerance(const TopoDS_Shape S, const Standard_Real MinToleranceRequest, const Standard_Real MaxToleranceToCheck);
		%feature("autodoc", "1");
		static		void SameParameter(const TopoDS_Edge E, const Standard_Real Tolerance=1.00000000000000008180305391403130954586231382563710212708e-5);
		%feature("autodoc", "1");
		static		void SameParameter(const TopoDS_Shape S, const Standard_Real Tolerance=1.00000000000000008180305391403130954586231382563710212708e-5, const Standard_Boolean forced=0);
		%feature("autodoc", "1");
		static		void UpdateTolerances(const TopoDS_Shape S, const Standard_Boolean verifyFaceTolerance=0);
		%feature("autodoc", "1");
		static		Standard_Boolean OrientClosedSolid(TopoDS_Solid & solid);
		%feature("autodoc", "1");
		static		void EncodeRegularity(const TopoDS_Shape S, const Standard_Real TolAng=1.00000000000000003643219731549774157916554706559963960899e-10);
		%feature("autodoc", "1");
		static		void EncodeRegularity(TopoDS_Edge & S, const TopoDS_Face F1, const TopoDS_Face F2, const Standard_Real TolAng=1.00000000000000003643219731549774157916554706559963960899e-10);
		%feature("autodoc", "1");
		static		void SortFaces(const TopoDS_Shape S, TopTools_ListOfShape & LF);
		%feature("autodoc", "1");
		static		void ReverseSortFaces(const TopoDS_Shape S, TopTools_ListOfShape & LF);

};
%feature("shadow") BRepLib::~BRepLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepLib_MakePolygon;
class BRepLib_MakePolygon : public BRepLib_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepLib_MakePolygon();
		%feature("autodoc", "1");
		BRepLib_MakePolygon(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		BRepLib_MakePolygon(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3, const Standard_Boolean Close=0);
		%feature("autodoc", "1");
		BRepLib_MakePolygon(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3, const gp_Pnt P4, const Standard_Boolean Close=0);
		%feature("autodoc", "1");
		BRepLib_MakePolygon(const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		BRepLib_MakePolygon(const TopoDS_Vertex V1, const TopoDS_Vertex V2, const TopoDS_Vertex V3, const Standard_Boolean Close=0);
		%feature("autodoc", "1");
		BRepLib_MakePolygon(const TopoDS_Vertex V1, const TopoDS_Vertex V2, const TopoDS_Vertex V3, const TopoDS_Vertex V4, const Standard_Boolean Close=0);
		%feature("autodoc", "1");
		void Add(const gp_Pnt P);
		%feature("autodoc", "1");
		void Add(const TopoDS_Vertex V);
		%feature("autodoc", "1");
		Standard_Boolean Added() const;
		%feature("autodoc", "1");
		void Close();
		%feature("autodoc", "1");
		const TopoDS_Vertex  FirstVertex() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  LastVertex() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Wire  Wire() const;

};
%feature("shadow") BRepLib_MakePolygon::~BRepLib_MakePolygon %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_MakePolygon {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepLib_MakeFace;
class BRepLib_MakeFace : public BRepLib_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepLib_MakeFace();
		%feature("autodoc", "1");
		BRepLib_MakeFace(const TopoDS_Face F);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Pln P);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Cylinder C);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Cone C);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Sphere S);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Torus C);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const Handle_Geom_Surface &S, const Standard_Real TolDegen);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Pln P, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Cylinder C, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Cone C, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Sphere S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Torus C, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const Handle_Geom_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real TolDegen);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const TopoDS_Wire W, const Standard_Boolean OnlyPlane=0);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Pln P, const TopoDS_Wire W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Cylinder C, const TopoDS_Wire W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Cone C, const TopoDS_Wire W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Sphere S, const TopoDS_Wire W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const gp_Torus C, const TopoDS_Wire W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const Handle_Geom_Surface &S, const TopoDS_Wire W, const Standard_Boolean Inside=1);
		%feature("autodoc", "1");
		BRepLib_MakeFace(const TopoDS_Face F, const TopoDS_Wire W);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face F);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S, const Standard_Boolean Bound, const Standard_Real TolDegen);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real TolDegen);
		%feature("autodoc", "1");
		void Add(const TopoDS_Wire W);
		%feature("autodoc", "1");
		BRepLib_FaceError Error() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;

};
%feature("shadow") BRepLib_MakeFace::~BRepLib_MakeFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_MakeFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepLib_MakeSolid;
class BRepLib_MakeSolid : public BRepLib_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepLib_MakeSolid();
		%feature("autodoc", "1");
		BRepLib_MakeSolid(const TopoDS_CompSolid S);
		%feature("autodoc", "1");
		BRepLib_MakeSolid(const TopoDS_Shell S);
		%feature("autodoc", "1");
		BRepLib_MakeSolid(const TopoDS_Shell S1, const TopoDS_Shell S2);
		%feature("autodoc", "1");
		BRepLib_MakeSolid(const TopoDS_Shell S1, const TopoDS_Shell S2, const TopoDS_Shell S3);
		%feature("autodoc", "1");
		BRepLib_MakeSolid(const TopoDS_Solid So);
		%feature("autodoc", "1");
		BRepLib_MakeSolid(const TopoDS_Solid So, const TopoDS_Shell S);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shell S);
		%feature("autodoc", "1");
		const TopoDS_Solid  Solid() const;
		%feature("autodoc", "1");
		virtual		BRepLib_ShapeModification FaceStatus(const TopoDS_Face F) const;

};
%feature("shadow") BRepLib_MakeSolid::~BRepLib_MakeSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_MakeSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepLib_FindSurface;
class BRepLib_FindSurface {
	public:
		%feature("autodoc", "1");
		BRepLib_FindSurface();
		%feature("autodoc", "1");
		BRepLib_FindSurface(const TopoDS_Shape S, const Standard_Real Tol=-0x00000000000000001, const Standard_Boolean OnlyPlane=0);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S, const Standard_Real Tol=-0x00000000000000001, const Standard_Boolean OnlyPlane=0);
		%feature("autodoc", "1");
		Standard_Boolean Found() const;
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Standard_Real ToleranceReached() const;
		%feature("autodoc", "1");
		Standard_Boolean Existed() const;
		%feature("autodoc", "1");
		TopLoc_Location Location() const;

};
%feature("shadow") BRepLib_FindSurface::~BRepLib_FindSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_FindSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepLib_MakeWire;
class BRepLib_MakeWire : public BRepLib_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepLib_MakeWire();
		%feature("autodoc", "1");
		BRepLib_MakeWire(const TopoDS_Edge E);
		%feature("autodoc", "1");
		BRepLib_MakeWire(const TopoDS_Edge E1, const TopoDS_Edge E2);
		%feature("autodoc", "1");
		BRepLib_MakeWire(const TopoDS_Edge E1, const TopoDS_Edge E2, const TopoDS_Edge E3);
		%feature("autodoc", "1");
		BRepLib_MakeWire(const TopoDS_Edge E1, const TopoDS_Edge E2, const TopoDS_Edge E3, const TopoDS_Edge E4);
		%feature("autodoc", "1");
		BRepLib_MakeWire(const TopoDS_Wire W);
		%feature("autodoc", "1");
		BRepLib_MakeWire(const TopoDS_Wire W, const TopoDS_Edge E);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge E);
		%feature("autodoc", "1");
		void Add(const TopoDS_Wire W);
		%feature("autodoc", "1");
		void Add(const TopTools_ListOfShape &L);
		%feature("autodoc", "1");
		BRepLib_WireError Error() const;
		%feature("autodoc", "1");
		const TopoDS_Wire  Wire() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  Vertex() const;

};
%feature("shadow") BRepLib_MakeWire::~BRepLib_MakeWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepLib_MakeWire {
	void _kill_pointed() {
		delete $self;
	}
};
