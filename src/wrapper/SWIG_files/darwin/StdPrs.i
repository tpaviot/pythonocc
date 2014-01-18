/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module StdPrs
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StdPrs_renames.i


%include StdPrs_required_python_modules.i


%include StdPrs_dependencies.i


%include StdPrs_headers.i




%nodefaultctor StdPrs_Vertex;
class StdPrs_Vertex : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_Vertex();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const TopoDS_Vertex aPoint, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const TopoDS_Vertex aPoint);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const TopoDS_Vertex aPoint, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance);

};
%feature("shadow") StdPrs_Vertex::~StdPrs_Vertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_Vertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_WFSurface;
class StdPrs_WFSurface : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_WFSurface();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Adaptor3d_HSurface &aSurface, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") StdPrs_WFSurface::~StdPrs_WFSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_WFSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_ToolPoint;
class StdPrs_ToolPoint {
	public:
		%feature("autodoc", "1");
		StdPrs_ToolPoint();
		%feature("autodoc","Coord(const aPoint) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		void Coord(const Handle_Geom_Point &aPoint, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") StdPrs_ToolPoint::~StdPrs_ToolPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_ToolPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_Point;
class StdPrs_Point : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_Point();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Geom_Point &aPoint, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Geom_Point &aPoint);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Handle_Geom_Point &aPoint, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance);

};
%feature("shadow") StdPrs_Point::~StdPrs_Point %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_Point {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_Plane;
class StdPrs_Plane : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_Plane();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Adaptor3d_Surface &aPlane, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Adaptor3d_Surface &aPlane, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") StdPrs_Plane::~StdPrs_Plane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_Plane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_ShadedSurface;
class StdPrs_ShadedSurface : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_ShadedSurface();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Adaptor3d_Surface &aSurface, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") StdPrs_ShadedSurface::~StdPrs_ShadedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_ShadedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_PoleCurve;
class StdPrs_PoleCurve : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_PoleCurve();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Adaptor3d_Curve &aCurve, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Adaptor3d_Curve &aCurve, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Integer Pick(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Adaptor3d_Curve &aCurve, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") StdPrs_PoleCurve::~StdPrs_PoleCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_PoleCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_WFPoleSurface;
class StdPrs_WFPoleSurface : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_WFPoleSurface();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Adaptor3d_Surface &aSurface, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") StdPrs_WFPoleSurface::~StdPrs_WFPoleSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_WFPoleSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_WFDeflectionSurface;
class StdPrs_WFDeflectionSurface : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_WFDeflectionSurface();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Adaptor3d_HSurface &aSurface, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") StdPrs_WFDeflectionSurface::~StdPrs_WFDeflectionSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_WFDeflectionSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_HLRPolyShape;
class StdPrs_HLRPolyShape : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_HLRPolyShape();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const TopoDS_Shape aShape, const Handle_Prs3d_Drawer &aDrawer, const Handle_Prs3d_Projector &aProjector);

};
%feature("shadow") StdPrs_HLRPolyShape::~StdPrs_HLRPolyShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_HLRPolyShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_ToolShadedShape;
class StdPrs_ToolShadedShape : public BRepMesh_ShapeTool {
	public:
		%feature("autodoc", "1");
		StdPrs_ToolShadedShape();
		%feature("autodoc", "1");
		static		Standard_Boolean IsClosed(const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		static		Handle_Poly_Triangulation Triangulation(const TopoDS_Face aFace, TopLoc_Location & loc);
		%feature("autodoc", "1");
		static		void Normal(const TopoDS_Face aFace, Poly_Connect & PC, TColgp_Array1OfDir & Nor);

};
%feature("shadow") StdPrs_ToolShadedShape::~StdPrs_ToolShadedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_ToolShadedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_WFDeflectionShape;
class StdPrs_WFDeflectionShape : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_WFDeflectionShape();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const TopoDS_Shape aShape, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Handle_TopTools_HSequenceOfShape PickCurve(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const TopoDS_Shape aShape, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Handle_TopTools_HSequenceOfShape PickPatch(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const TopoDS_Shape aShape, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") StdPrs_WFDeflectionShape::~StdPrs_WFDeflectionShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_WFDeflectionShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_ShadedShape;
class StdPrs_ShadedShape : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_ShadedShape();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &thePresentation, const TopoDS_Shape theShape, const Handle_Prs3d_Drawer &theDrawer);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &thePresentation, const TopoDS_Shape theShape, const Handle_Prs3d_Drawer &theDrawer, const Standard_Boolean theHasTexels, const gp_Pnt2d theUVOrigin, const gp_Pnt2d theUVRepeat, const gp_Pnt2d theUVScale);

};
%feature("shadow") StdPrs_ShadedShape::~StdPrs_ShadedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_ShadedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_HLRShape;
class StdPrs_HLRShape : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_HLRShape();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const TopoDS_Shape aShape, const Handle_Prs3d_Drawer &aDrawer, const Handle_Prs3d_Projector &aProjector);

};
%feature("shadow") StdPrs_HLRShape::~StdPrs_HLRShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_HLRShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_ToolRFace;
class StdPrs_ToolRFace {
	public:
		%feature("autodoc", "1");
		StdPrs_ToolRFace();
		%feature("autodoc", "1");
		StdPrs_ToolRFace(const Handle_BRepAdaptor_HSurface &aSurface);
		%feature("autodoc", "1");
		Standard_Boolean IsOriented() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Adaptor2d_Curve2dPtr Value() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;

};
%feature("shadow") StdPrs_ToolRFace::~StdPrs_ToolRFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_ToolRFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_WFRestrictedFace;
class StdPrs_WFRestrictedFace : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_WFRestrictedFace();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void AddUIso(const Handle_Prs3d_Presentation &aPresentation, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void AddVIso(const Handle_Prs3d_Presentation &aPresentation, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_BRepAdaptor_HSurface &aFace, const Standard_Boolean DrawUIso, const Standard_Boolean DrawVIso, const Quantity_Length Deflection, const Standard_Integer NBUiso, const Standard_Integer NBViso, const Handle_Prs3d_Drawer &aDrawer, Prs3d_NListOfSequenceOfPnt & Curves);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Boolean MatchUIso(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Boolean MatchVIso(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Handle_BRepAdaptor_HSurface &aFace, const Standard_Boolean DrawUIso, const Standard_Boolean DrawVIso, const Quantity_Length Deflection, const Standard_Integer NBUiso, const Standard_Integer NBViso, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") StdPrs_WFRestrictedFace::~StdPrs_WFRestrictedFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_WFRestrictedFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_Curve;
class StdPrs_Curve : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_Curve();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Adaptor3d_Curve &aCurve, const Handle_Prs3d_Drawer &aDrawer, const Standard_Boolean drawCurve=true);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Adaptor3d_Curve &aCurve, const Standard_Real U1, const Standard_Real U2, const Handle_Prs3d_Drawer &aDrawer, const Standard_Boolean drawCurve=true);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Adaptor3d_Curve &aCurve, const Quantity_Length aDeflection, const Handle_Prs3d_Drawer &aDrawer, TColgp_SequenceOfPnt & Points, const Standard_Boolean drawCurve=true);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Adaptor3d_Curve &aCurve, const Standard_Real U1, const Standard_Real U2, const Quantity_Length aDeflection, TColgp_SequenceOfPnt & Points, const Standard_Integer aNbPoints=30, const Standard_Boolean drawCurve=true);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Adaptor3d_Curve &aCurve, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Adaptor3d_Curve &aCurve, const Quantity_Length aDeflection, const Standard_Real aLimit, const Standard_Integer aNbPoints);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Adaptor3d_Curve &aCurve, const Standard_Real U1, const Standard_Real U2, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Adaptor3d_Curve &aCurve, const Standard_Real U1, const Standard_Real U2, const Quantity_Length aDeflection, const Standard_Integer aNbPoints);

};
%feature("shadow") StdPrs_Curve::~StdPrs_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_HLRToolShape;
class StdPrs_HLRToolShape {
	public:
		%feature("autodoc", "1");
		StdPrs_HLRToolShape(const TopoDS_Shape TheShape, const HLRAlgo_Projector &TheProjector);
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		void InitVisible(const Standard_Integer EdgeNumber);
		%feature("autodoc", "1");
		Standard_Boolean MoreVisible() const;
		%feature("autodoc", "1");
		void NextVisible();
		%feature("autodoc","Visible() -> [Standard_Real, Standard_Real]");

		void Visible(BRepAdaptor_Curve & TheEdge, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void InitHidden(const Standard_Integer EdgeNumber);
		%feature("autodoc", "1");
		Standard_Boolean MoreHidden() const;
		%feature("autodoc", "1");
		void NextHidden();
		%feature("autodoc","Hidden() -> [Standard_Real, Standard_Real]");

		void Hidden(BRepAdaptor_Curve & TheEdge, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") StdPrs_HLRToolShape::~StdPrs_HLRToolShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_HLRToolShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_ToolVertex;
class StdPrs_ToolVertex {
	public:
		%feature("autodoc", "1");
		StdPrs_ToolVertex();
		%feature("autodoc","Coord(const aPoint) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		void Coord(const TopoDS_Vertex aPoint, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") StdPrs_ToolVertex::~StdPrs_ToolVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_ToolVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_WFDeflectionRestrictedFace;
class StdPrs_WFDeflectionRestrictedFace : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_WFDeflectionRestrictedFace();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void AddUIso(const Handle_Prs3d_Presentation &aPresentation, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void AddVIso(const Handle_Prs3d_Presentation &aPresentation, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_BRepAdaptor_HSurface &aFace, const Standard_Boolean DrawUIso, const Standard_Boolean DrawVIso, const Quantity_Length Deflection, const Standard_Integer NBUiso, const Standard_Integer NBViso, const Handle_Prs3d_Drawer &aDrawer, Prs3d_NListOfSequenceOfPnt & Curves);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Boolean MatchUIso(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Boolean MatchVIso(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Standard_Boolean Match(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const Handle_BRepAdaptor_HSurface &aFace, const Handle_Prs3d_Drawer &aDrawer, const Standard_Boolean DrawUIso, const Standard_Boolean DrawVIso, const Quantity_Length aDeflection, const Standard_Integer NBUiso, const Standard_Integer NBViso);

};
%feature("shadow") StdPrs_WFDeflectionRestrictedFace::~StdPrs_WFDeflectionRestrictedFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_WFDeflectionRestrictedFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_DeflectionCurve;
class StdPrs_DeflectionCurve : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_DeflectionCurve();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, Adaptor3d_Curve & aCurve, const Handle_Prs3d_Drawer &aDrawer, const Standard_Boolean drawCurve=true);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, Adaptor3d_Curve & aCurve, const Standard_Real U1, const Standard_Real U2, const Handle_Prs3d_Drawer &aDrawer, const Standard_Boolean drawCurve=true);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, Adaptor3d_Curve & aCurve, const Standard_Real aDeflection, const Standard_Real aLimit, const Standard_Real anAngle=2.00000000000000011102230246251565404236316680908203125e-1, const Standard_Boolean drawCurve=true);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, Adaptor3d_Curve & aCurve, const Standard_Real aDeflection, const Handle_Prs3d_Drawer &aDrawer, TColgp_SequenceOfPnt & Points, const Standard_Boolean drawCurve=true);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, Adaptor3d_Curve & aCurve, const Standard_Real U1, const Standard_Real U2, const Standard_Real aDeflection, TColgp_SequenceOfPnt & Points, const Standard_Real anAngle=2.00000000000000011102230246251565404236316680908203125e-1, const Standard_Boolean drawCurve=true);

};
%feature("shadow") StdPrs_DeflectionCurve::~StdPrs_DeflectionCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_DeflectionCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdPrs_WFShape;
class StdPrs_WFShape : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		StdPrs_WFShape();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const TopoDS_Shape aShape, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Handle_TopTools_HSequenceOfShape PickCurve(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const TopoDS_Shape aShape, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		Handle_TopTools_HSequenceOfShape PickPatch(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const TopoDS_Shape aShape, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") StdPrs_WFShape::~StdPrs_WFShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdPrs_WFShape {
	void _kill_pointed() {
		delete $self;
	}
};
