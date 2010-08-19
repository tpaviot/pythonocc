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

%module ShapeConstruct
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ShapeConstruct_renames.i


%include ShapeConstruct_required_python_modules.i


%include ShapeConstruct_dependencies.i


%include ShapeConstruct_headers.i




%nodefaultctor Handle_ShapeConstruct_ProjectCurveOnSurface;
class Handle_ShapeConstruct_ProjectCurveOnSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface();
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface(const Handle_ShapeConstruct_ProjectCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface(const ShapeConstruct_ProjectCurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface & operator=(const Handle_ShapeConstruct_ProjectCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface & operator=(const ShapeConstruct_ProjectCurveOnSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeConstruct_ProjectCurveOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeConstruct_ProjectCurveOnSurface {
	ShapeConstruct_ProjectCurveOnSurface* GetObject() {
	return (ShapeConstruct_ProjectCurveOnSurface*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeConstruct_ProjectCurveOnSurface::~Handle_ShapeConstruct_ProjectCurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeConstruct_ProjectCurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeConstruct_ProjectCurveOnSurface;
class ShapeConstruct_ProjectCurveOnSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeConstruct_ProjectCurveOnSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_Geom_Surface &surf, const Standard_Real preci);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_ShapeAnalysis_Surface &surf, const Standard_Real preci);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &surf);
		%feature("autodoc", "1");
		void SetSurface(const Handle_ShapeAnalysis_Surface &surf);
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Real preci);
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetBuildCurveMode() {
				return (Standard_Boolean) $self->BuildCurveMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetBuildCurveMode(Standard_Boolean value ) {
				$self->BuildCurveMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetAdjustOverDegenMode() {
				return (Standard_Integer) $self->AdjustOverDegenMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetAdjustOverDegenMode(Standard_Integer value ) {
				$self->AdjustOverDegenMode()=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform(Handle_Geom_Curve & c3d, const Standard_Real First, const Standard_Real Last, Handle_Geom2d_Curve & c2d, const GeomAbs_Shape continuity=GeomAbs_C1, const Standard_Integer maxdeg=12, const Standard_Integer nbinterval=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean PerformByProjLib(Handle_Geom_Curve & c3d, const Standard_Real First, const Standard_Real Last, Handle_Geom2d_Curve & c2d, const GeomAbs_Shape continuity=GeomAbs_C1, const Standard_Integer maxdeg=12, const Standard_Integer nbinterval=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean PerformAdvanced(Handle_Geom_Curve & c3d, const Standard_Real First, const Standard_Real Last, Handle_Geom2d_Curve & c2d);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeConstruct_ProjectCurveOnSurface {
	Handle_ShapeConstruct_ProjectCurveOnSurface GetHandle() {
	return *(Handle_ShapeConstruct_ProjectCurveOnSurface*) &$self;
	}
};
%extend ShapeConstruct_ProjectCurveOnSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeConstruct_ProjectCurveOnSurface::~ShapeConstruct_ProjectCurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeConstruct_ProjectCurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeConstruct_CompBezierCurves2dToBSplineCurve2d;
class ShapeConstruct_CompBezierCurves2dToBSplineCurve2d {
	public:
		%feature("autodoc", "1");
		ShapeConstruct_CompBezierCurves2dToBSplineCurve2d(const Standard_Real AngularTolerance=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void AddCurve(const TColgp_Array1OfPnt2d &Poles);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt2d & Poles) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void KnotsAndMults(TColStd_Array1OfReal & Knots, TColStd_Array1OfInteger & Mults) const;

};
%feature("shadow") ShapeConstruct_CompBezierCurves2dToBSplineCurve2d::~ShapeConstruct_CompBezierCurves2dToBSplineCurve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeConstruct_CompBezierCurves2dToBSplineCurve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeConstruct_CompBezierCurvesToBSplineCurve;
class ShapeConstruct_CompBezierCurvesToBSplineCurve {
	public:
		%feature("autodoc", "1");
		ShapeConstruct_CompBezierCurvesToBSplineCurve(const Standard_Real AngularTolerance=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void AddCurve(const TColgp_Array1OfPnt &Poles);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt & Poles) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void KnotsAndMults(TColStd_Array1OfReal & Knots, TColStd_Array1OfInteger & Mults) const;

};
%feature("shadow") ShapeConstruct_CompBezierCurvesToBSplineCurve::~ShapeConstruct_CompBezierCurvesToBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeConstruct_CompBezierCurvesToBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeConstruct_Curve;
class ShapeConstruct_Curve {
	public:
		%feature("autodoc", "1");
		ShapeConstruct_Curve();
		%feature("autodoc", "1");
		Standard_Boolean AdjustCurve(const Handle_Geom_Curve &C3D, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Boolean take1=1, const Standard_Boolean take2=1) const;
		%feature("autodoc", "1");
		Standard_Boolean AdjustCurveSegment(const Handle_Geom_Curve &C3D, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Real U1, const Standard_Real U2) const;
		%feature("autodoc", "1");
		Standard_Boolean AdjustCurve2d(const Handle_Geom2d_Curve &C2D, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Boolean take1=1, const Standard_Boolean take2=1) const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve ConvertToBSpline(const Handle_Geom_Curve &C, const Standard_Real first, const Standard_Real last, const Standard_Real prec) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve ConvertToBSpline(const Handle_Geom2d_Curve &C, const Standard_Real first, const Standard_Real last, const Standard_Real prec) const;
		%feature("autodoc", "1");
		static		Standard_Boolean FixKnots(Handle_TColStd_HArray1OfReal & knots);
		%feature("autodoc", "1");
		static		Standard_Boolean FixKnots(TColStd_Array1OfReal & knots);

};
%feature("shadow") ShapeConstruct_Curve::~ShapeConstruct_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeConstruct_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeConstruct_MakeTriangulation;
class ShapeConstruct_MakeTriangulation : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		ShapeConstruct_MakeTriangulation(const TColgp_Array1OfPnt &pnts, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		ShapeConstruct_MakeTriangulation(const TopoDS_Wire &wire, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;

};
%feature("shadow") ShapeConstruct_MakeTriangulation::~ShapeConstruct_MakeTriangulation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeConstruct_MakeTriangulation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeConstruct;
class ShapeConstruct {
	public:
		%feature("autodoc", "1");
		ShapeConstruct();
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineCurve ConvertCurveToBSpline(const Handle_Geom_Curve &C3D, const Standard_Real First, const Standard_Real Last, const Standard_Real Tol3d, const GeomAbs_Shape Continuity, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		static		Handle_Geom2d_BSplineCurve ConvertCurveToBSpline(const Handle_Geom2d_Curve &C2D, const Standard_Real First, const Standard_Real Last, const Standard_Real Tol2d, const GeomAbs_Shape Continuity, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineSurface ConvertSurfaceToBSpline(const Handle_Geom_Surface &surf, const Standard_Real UF, const Standard_Real UL, const Standard_Real VF, const Standard_Real VL, const Standard_Real Tol3d, const GeomAbs_Shape Continuity, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		static		Standard_Boolean JoinPCurves(const Handle_TopTools_HSequenceOfShape &theEdges, const TopoDS_Face &theFace, TopoDS_Edge & theEdge);
		%feature("autodoc","JoinCurves(const c3d1, const ac3d2, TopAbs_Orientation Orient1, TopAbs_Orientation Orient2) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		static		Standard_Boolean JoinCurves(const Handle_Geom_Curve &c3d1, const Handle_Geom_Curve &ac3d2, const TopAbs_Orientation Orient1, const TopAbs_Orientation Orient2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Handle_Geom_Curve & c3dOut, Standard_Boolean & isRev1, Standard_Boolean & isRev2);
		%feature("autodoc","JoinCurves(const c2d1, const ac2d2, TopAbs_Orientation Orient1, TopAbs_Orientation Orient2, Standard_Boolean isError=0) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		static		Standard_Boolean JoinCurves(const Handle_Geom2d_Curve &c2d1, const Handle_Geom2d_Curve &ac2d2, const TopAbs_Orientation Orient1, const TopAbs_Orientation Orient2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Handle_Geom2d_Curve & c2dOut, Standard_Boolean & isRev1, Standard_Boolean & isRev2, const Standard_Boolean isError=0);

};
%feature("shadow") ShapeConstruct::~ShapeConstruct %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeConstruct {
	void _kill_pointed() {
		delete $self;
	}
};
