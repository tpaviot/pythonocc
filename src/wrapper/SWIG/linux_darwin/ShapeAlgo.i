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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module ShapeAlgo
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ShapeAlgo_renames.i


%include ShapeAlgo_required_python_modules.i


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
		Handle_ShapeAlgo_ToolContainer & operator=(const Handle_ShapeAlgo_ToolContainer &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAlgo_ToolContainer & operator=(const ShapeAlgo_ToolContainer *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeAlgo_ToolContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAlgo_ToolContainer {
	ShapeAlgo_ToolContainer* GetObject() {
	return (ShapeAlgo_ToolContainer*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeAlgo_ToolContainer::~Handle_ShapeAlgo_ToolContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeAlgo_ToolContainer {
	void _kill_pointed() {
		delete $self;
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
		Handle_ShapeAlgo_AlgoContainer & operator=(const Handle_ShapeAlgo_AlgoContainer &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAlgo_AlgoContainer & operator=(const ShapeAlgo_AlgoContainer *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeAlgo_AlgoContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAlgo_AlgoContainer {
	ShapeAlgo_AlgoContainer* GetObject() {
	return (ShapeAlgo_AlgoContainer*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeAlgo_AlgoContainer::~Handle_ShapeAlgo_AlgoContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeAlgo_AlgoContainer {
	void _kill_pointed() {
		delete $self;
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeAlgo_ToolContainer::~ShapeAlgo_ToolContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeAlgo_ToolContainer {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","ConnectNextWire(const saw, const nextsewd, Standard_Real maxtol) -> Standard_Real");

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
		%feature("autodoc","GetFaceUVBounds(const F) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeAlgo_AlgoContainer::~ShapeAlgo_AlgoContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeAlgo_AlgoContainer {
	void _kill_pointed() {
		delete $self;
	}
};
