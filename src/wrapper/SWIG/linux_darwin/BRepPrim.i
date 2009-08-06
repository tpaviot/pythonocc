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
%module BRepPrim

%include BRepPrim_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepPrim_dependencies.i


%include BRepPrim_headers.i




%nodefaultctor BRepPrim_OneAxis;
class BRepPrim_OneAxis {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void SetMeridianOffset(const Standard_Real MeridianOffset=0);
		%feature("autodoc", "1");
		const gp_Ax2 & Axes() const;
		%feature("autodoc", "1");
		void Axes(const gp_Ax2 &A);
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		void Angle(const Standard_Real A);
		%feature("autodoc", "1");
		Standard_Real VMin() const;
		%feature("autodoc", "1");
		void VMin(const Standard_Real V);
		%feature("autodoc", "1");
		Standard_Real VMax() const;
		%feature("autodoc", "1");
		void VMax(const Standard_Real V);
		%feature("autodoc", "1");
		virtual		TopoDS_Face MakeEmptyLateralFace() const;
		%feature("autodoc", "1");
		virtual		TopoDS_Edge MakeEmptyMeridianEdge(const Standard_Real Ang) const;
		%feature("autodoc", "1");
		virtual		void SetMeridianPCurve(TopoDS_Edge & E, const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d MeridianValue(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MeridianOnAxis(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MeridianClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean VMaxInfinite() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean VMinInfinite() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasTop() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasBottom() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasSides() const;
		%feature("autodoc", "1");
		const TopoDS_Shell & Shell();
		%feature("autodoc", "1");
		const TopoDS_Face & LateralFace();
		%feature("autodoc", "1");
		const TopoDS_Face & TopFace();
		%feature("autodoc", "1");
		const TopoDS_Face & BottomFace();
		%feature("autodoc", "1");
		const TopoDS_Face & StartFace();
		%feature("autodoc", "1");
		const TopoDS_Face & EndFace();
		%feature("autodoc", "1");
		const TopoDS_Wire & LateralWire();
		%feature("autodoc", "1");
		const TopoDS_Wire & LateralStartWire();
		%feature("autodoc", "1");
		const TopoDS_Wire & LateralEndWire();
		%feature("autodoc", "1");
		const TopoDS_Wire & TopWire();
		%feature("autodoc", "1");
		const TopoDS_Wire & BottomWire();
		%feature("autodoc", "1");
		const TopoDS_Wire & StartWire();
		%feature("autodoc", "1");
		const TopoDS_Wire & AxisStartWire();
		%feature("autodoc", "1");
		const TopoDS_Wire & EndWire();
		%feature("autodoc", "1");
		const TopoDS_Wire & AxisEndWire();
		%feature("autodoc", "1");
		const TopoDS_Edge & AxisEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & StartEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & EndEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & StartTopEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & StartBottomEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & EndTopEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & EndBottomEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & TopEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & BottomEdge();
		%feature("autodoc", "1");
		const TopoDS_Vertex & AxisTopVertex();
		%feature("autodoc", "1");
		const TopoDS_Vertex & AxisBottomVertex();
		%feature("autodoc", "1");
		const TopoDS_Vertex & TopStartVertex();
		%feature("autodoc", "1");
		const TopoDS_Vertex & TopEndVertex();
		%feature("autodoc", "1");
		const TopoDS_Vertex & BottomStartVertex();
		%feature("autodoc", "1");
		const TopoDS_Vertex & BottomEndVertex();

};
%extend BRepPrim_OneAxis {
	~BRepPrim_OneAxis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrim_OneAxis\n");}
	}
};


%nodefaultctor BRepPrim_Revolution;
class BRepPrim_Revolution : public BRepPrim_OneAxis {
	public:
		%feature("autodoc", "1");
		BRepPrim_Revolution(const gp_Ax2 &A, const Standard_Real VMin, const Standard_Real VMax, const Handle_Geom_Curve &M, const Handle_Geom2d_Curve &PM);

};
%extend BRepPrim_Revolution {
	~BRepPrim_Revolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrim_Revolution\n");}
	}
};


%nodefaultctor BRepPrim_Torus;
class BRepPrim_Torus : public BRepPrim_Revolution {
	public:
		%feature("autodoc", "1");
		BRepPrim_Torus(const gp_Ax2 &Position, const Standard_Real Major, const Standard_Real Minor);
		%feature("autodoc", "1");
		BRepPrim_Torus(const Standard_Real Major, const Standard_Real Minor);
		%feature("autodoc", "1");
		BRepPrim_Torus(const gp_Pnt &Center, const Standard_Real Major, const Standard_Real Minor);

};
%extend BRepPrim_Torus {
	~BRepPrim_Torus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrim_Torus\n");}
	}
};


%nodefaultctor BRepPrim_Sphere;
class BRepPrim_Sphere : public BRepPrim_Revolution {
	public:
		%feature("autodoc", "1");
		BRepPrim_Sphere(const Standard_Real Radius);
		%feature("autodoc", "1");
		BRepPrim_Sphere(const gp_Pnt &Center, const Standard_Real Radius);
		%feature("autodoc", "1");
		BRepPrim_Sphere(const gp_Ax2 &Axes, const Standard_Real Radius);
		%feature("autodoc", "1");
		virtual		TopoDS_Face MakeEmptyLateralFace() const;

};
%extend BRepPrim_Sphere {
	~BRepPrim_Sphere() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrim_Sphere\n");}
	}
};


%nodefaultctor BRepPrim_GWedge;
class BRepPrim_GWedge {
	public:
		%feature("autodoc", "1");
		BRepPrim_GWedge(const BRepPrim_Builder &B, const gp_Ax2 &Axes, const Standard_Real dx, const Standard_Real dy, const Standard_Real dz);
		%feature("autodoc", "1");
		BRepPrim_GWedge(const BRepPrim_Builder &B, const gp_Ax2 &Axes, const Standard_Real dx, const Standard_Real dy, const Standard_Real dz, const Standard_Real ltx);
		%feature("autodoc", "1");
		BRepPrim_GWedge(const BRepPrim_Builder &B, const gp_Ax2 &Axes, const Standard_Real xmin, const Standard_Real ymin, const Standard_Real zmin, const Standard_Real z2min, const Standard_Real x2min, const Standard_Real xmax, const Standard_Real ymax, const Standard_Real zmax, const Standard_Real z2max, const Standard_Real x2max);
		%feature("autodoc", "1");
		gp_Ax2 Axes() const;
		%feature("autodoc", "1");
		Standard_Real GetXMin() const;
		%feature("autodoc", "1");
		Standard_Real GetYMin() const;
		%feature("autodoc", "1");
		Standard_Real GetZMin() const;
		%feature("autodoc", "1");
		Standard_Real GetZ2Min() const;
		%feature("autodoc", "1");
		Standard_Real GetX2Min() const;
		%feature("autodoc", "1");
		Standard_Real GetXMax() const;
		%feature("autodoc", "1");
		Standard_Real GetYMax() const;
		%feature("autodoc", "1");
		Standard_Real GetZMax() const;
		%feature("autodoc", "1");
		Standard_Real GetZ2Max() const;
		%feature("autodoc", "1");
		Standard_Real GetX2Max() const;
		%feature("autodoc", "1");
		void Open(const Primitives_Direction d1);
		%feature("autodoc", "1");
		void Close(const Primitives_Direction d1);
		%feature("autodoc", "1");
		Standard_Boolean IsInfinite(const Primitives_Direction d1) const;
		%feature("autodoc", "1");
		const TopoDS_Shell & Shell();
		%feature("autodoc", "1");
		Standard_Boolean HasFace(const Primitives_Direction d1) const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face(const Primitives_Direction d1);
		%feature("autodoc", "1");
		gp_Pln Plane(const Primitives_Direction d1);
		%feature("autodoc", "1");
		Standard_Boolean HasWire(const Primitives_Direction d1) const;
		%feature("autodoc", "1");
		const TopoDS_Wire & Wire(const Primitives_Direction d1);
		%feature("autodoc", "1");
		Standard_Boolean HasEdge(const Primitives_Direction d1, const Primitives_Direction d2) const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge(const Primitives_Direction d1, const Primitives_Direction d2);
		%feature("autodoc", "1");
		gp_Lin Line(const Primitives_Direction d1, const Primitives_Direction d2);
		%feature("autodoc", "1");
		Standard_Boolean HasVertex(const Primitives_Direction d1, const Primitives_Direction d2, const Primitives_Direction d3) const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex(const Primitives_Direction d1, const Primitives_Direction d2, const Primitives_Direction d3);
		%feature("autodoc", "1");
		gp_Pnt Point(const Primitives_Direction d1, const Primitives_Direction d2, const Primitives_Direction d3);

};
%extend BRepPrim_GWedge {
	~BRepPrim_GWedge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrim_GWedge\n");}
	}
};


%nodefaultctor BRepPrim_FaceBuilder;
class BRepPrim_FaceBuilder {
	public:
		%feature("autodoc", "1");
		BRepPrim_FaceBuilder();
		%feature("autodoc", "1");
		BRepPrim_FaceBuilder(const BRep_Builder &B, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		BRepPrim_FaceBuilder(const BRep_Builder &B, const Handle_Geom_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		void Init(const BRep_Builder &B, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Init(const BRep_Builder &B, const Handle_Geom_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex(const Standard_Integer I) const;

};
%extend BRepPrim_FaceBuilder {
	~BRepPrim_FaceBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrim_FaceBuilder\n");}
	}
};


%nodefaultctor BRepPrim_Wedge;
class BRepPrim_Wedge : public BRepPrim_GWedge {
	public:
		%feature("autodoc", "1");
		BRepPrim_Wedge(const gp_Ax2 &Axes, const Standard_Real dx, const Standard_Real dy, const Standard_Real dz);
		%feature("autodoc", "1");
		BRepPrim_Wedge(const gp_Ax2 &Axes, const Standard_Real dx, const Standard_Real dy, const Standard_Real dz, const Standard_Real ltx);
		%feature("autodoc", "1");
		BRepPrim_Wedge(const gp_Ax2 &Axes, const Standard_Real xmin, const Standard_Real ymin, const Standard_Real zmin, const Standard_Real z2min, const Standard_Real x2min, const Standard_Real xmax, const Standard_Real ymax, const Standard_Real zmax, const Standard_Real z2max, const Standard_Real x2max);

};
%extend BRepPrim_Wedge {
	~BRepPrim_Wedge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrim_Wedge\n");}
	}
};


%nodefaultctor BRepPrim_Builder;
class BRepPrim_Builder {
	public:
		%feature("autodoc", "1");
		BRepPrim_Builder();
		%feature("autodoc", "1");
		BRepPrim_Builder(const BRep_Builder &B);
		%feature("autodoc", "1");
		const BRep_Builder & Builder() const;
		%feature("autodoc", "1");
		void MakeShell(TopoDS_Shell & S) const;
		%feature("autodoc", "1");
		void MakeFace(TopoDS_Face & F, const gp_Pln &P) const;
		%feature("autodoc", "1");
		void MakeWire(TopoDS_Wire & W) const;
		%feature("autodoc", "1");
		void MakeDegeneratedEdge(TopoDS_Edge & E) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & E, const gp_Lin &L) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & E, const gp_Circ &C) const;
		%feature("autodoc", "1");
		void SetPCurve(TopoDS_Edge & E, const TopoDS_Face &F, const gp_Lin2d &L) const;
		%feature("autodoc", "1");
		void SetPCurve(TopoDS_Edge & E, const TopoDS_Face &F, const gp_Lin2d &L1, const gp_Lin2d &L2) const;
		%feature("autodoc", "1");
		void SetPCurve(TopoDS_Edge & E, const TopoDS_Face &F, const gp_Circ2d &C) const;
		%feature("autodoc", "1");
		void MakeVertex(TopoDS_Vertex & V, const gp_Pnt &P) const;
		%feature("autodoc", "1");
		void ReverseFace(TopoDS_Face & F) const;
		%feature("autodoc", "1");
		void AddEdgeVertex(TopoDS_Edge & E, const TopoDS_Vertex &V, const Standard_Real P, const Standard_Boolean direct) const;
		%feature("autodoc", "1");
		void AddEdgeVertex(TopoDS_Edge & E, const TopoDS_Vertex &V, const Standard_Real P1, const Standard_Real P2) const;
		%feature("autodoc", "1");
		void SetParameters(TopoDS_Edge & E, const TopoDS_Vertex &V, const Standard_Real P1, const Standard_Real P2) const;
		%feature("autodoc", "1");
		void AddWireEdge(TopoDS_Wire & W, const TopoDS_Edge &E, const Standard_Boolean direct) const;
		%feature("autodoc", "1");
		void AddFaceWire(TopoDS_Face & F, const TopoDS_Wire &W) const;
		%feature("autodoc", "1");
		void AddShellFace(TopoDS_Shell & Sh, const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		void CompleteEdge(TopoDS_Edge & E) const;
		%feature("autodoc", "1");
		void CompleteWire(TopoDS_Wire & W) const;
		%feature("autodoc", "1");
		void CompleteFace(TopoDS_Face & F) const;
		%feature("autodoc", "1");
		void CompleteShell(TopoDS_Shell & S) const;

};
%extend BRepPrim_Builder {
	~BRepPrim_Builder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrim_Builder\n");}
	}
};


%nodefaultctor BRepPrim_Cone;
class BRepPrim_Cone : public BRepPrim_Revolution {
	public:
		%feature("autodoc", "1");
		BRepPrim_Cone(const Standard_Real Angle, const gp_Ax2 &Position, const Standard_Real Height, const Standard_Real Radius=0);
		%feature("autodoc", "1");
		BRepPrim_Cone(const Standard_Real Angle);
		%feature("autodoc", "1");
		BRepPrim_Cone(const Standard_Real Angle, const gp_Pnt &Apex);
		%feature("autodoc", "1");
		BRepPrim_Cone(const Standard_Real Angle, const gp_Ax2 &Axes);
		%feature("autodoc", "1");
		BRepPrim_Cone(const Standard_Real R1, const Standard_Real R2, const Standard_Real H);
		%feature("autodoc", "1");
		BRepPrim_Cone(const gp_Pnt &Center, const Standard_Real R1, const Standard_Real R2, const Standard_Real H);
		%feature("autodoc", "1");
		BRepPrim_Cone(const gp_Ax2 &Axes, const Standard_Real R1, const Standard_Real R2, const Standard_Real H);
		%feature("autodoc", "1");
		virtual		TopoDS_Face MakeEmptyLateralFace() const;

};
%extend BRepPrim_Cone {
	~BRepPrim_Cone() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrim_Cone\n");}
	}
};


%nodefaultctor BRepPrim_Cylinder;
class BRepPrim_Cylinder : public BRepPrim_Revolution {
	public:
		%feature("autodoc", "1");
		BRepPrim_Cylinder(const gp_Ax2 &Position, const Standard_Real Radius, const Standard_Real Height);
		%feature("autodoc", "1");
		BRepPrim_Cylinder(const Standard_Real Radius);
		%feature("autodoc", "1");
		BRepPrim_Cylinder(const gp_Pnt &Center, const Standard_Real Radius);
		%feature("autodoc", "1");
		BRepPrim_Cylinder(const gp_Ax2 &Axes, const Standard_Real Radius);
		%feature("autodoc", "1");
		BRepPrim_Cylinder(const Standard_Real R, const Standard_Real H);
		%feature("autodoc", "1");
		BRepPrim_Cylinder(const gp_Pnt &Center, const Standard_Real R, const Standard_Real H);
		%feature("autodoc", "1");
		virtual		TopoDS_Face MakeEmptyLateralFace() const;

};
%extend BRepPrim_Cylinder {
	~BRepPrim_Cylinder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrim_Cylinder\n");}
	}
};
