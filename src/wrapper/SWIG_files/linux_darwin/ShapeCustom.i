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

%module ShapeCustom
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ShapeCustom_renames.i


%include ShapeCustom_required_python_modules.i


%include ShapeCustom_dependencies.i


%include ShapeCustom_headers.i




%nodefaultctor Handle_ShapeCustom_BSplineRestriction;
class Handle_ShapeCustom_BSplineRestriction : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		Handle_ShapeCustom_BSplineRestriction();
		%feature("autodoc", "1");
		Handle_ShapeCustom_BSplineRestriction(const Handle_ShapeCustom_BSplineRestriction &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_BSplineRestriction(const ShapeCustom_BSplineRestriction *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_BSplineRestriction & operator=(const Handle_ShapeCustom_BSplineRestriction &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_BSplineRestriction & operator=(const ShapeCustom_BSplineRestriction *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeCustom_BSplineRestriction DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_BSplineRestriction {
	ShapeCustom_BSplineRestriction* GetObject() {
	return (ShapeCustom_BSplineRestriction*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeCustom_BSplineRestriction::~Handle_ShapeCustom_BSplineRestriction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeCustom_BSplineRestriction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeCustom_TrsfModification;
class Handle_ShapeCustom_TrsfModification : public Handle_BRepTools_TrsfModification {
	public:
		%feature("autodoc", "1");
		Handle_ShapeCustom_TrsfModification();
		%feature("autodoc", "1");
		Handle_ShapeCustom_TrsfModification(const Handle_ShapeCustom_TrsfModification &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_TrsfModification(const ShapeCustom_TrsfModification *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_TrsfModification & operator=(const Handle_ShapeCustom_TrsfModification &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_TrsfModification & operator=(const ShapeCustom_TrsfModification *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeCustom_TrsfModification DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_TrsfModification {
	ShapeCustom_TrsfModification* GetObject() {
	return (ShapeCustom_TrsfModification*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeCustom_TrsfModification::~Handle_ShapeCustom_TrsfModification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeCustom_TrsfModification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeCustom_SweptToElementary;
class Handle_ShapeCustom_SweptToElementary : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		Handle_ShapeCustom_SweptToElementary();
		%feature("autodoc", "1");
		Handle_ShapeCustom_SweptToElementary(const Handle_ShapeCustom_SweptToElementary &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_SweptToElementary(const ShapeCustom_SweptToElementary *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_SweptToElementary & operator=(const Handle_ShapeCustom_SweptToElementary &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_SweptToElementary & operator=(const ShapeCustom_SweptToElementary *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeCustom_SweptToElementary DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_SweptToElementary {
	ShapeCustom_SweptToElementary* GetObject() {
	return (ShapeCustom_SweptToElementary*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeCustom_SweptToElementary::~Handle_ShapeCustom_SweptToElementary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeCustom_SweptToElementary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeCustom_RestrictionParameters;
class Handle_ShapeCustom_RestrictionParameters : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters();
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters(const Handle_ShapeCustom_RestrictionParameters &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters(const ShapeCustom_RestrictionParameters *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters & operator=(const Handle_ShapeCustom_RestrictionParameters &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters & operator=(const ShapeCustom_RestrictionParameters *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeCustom_RestrictionParameters DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_RestrictionParameters {
	ShapeCustom_RestrictionParameters* GetObject() {
	return (ShapeCustom_RestrictionParameters*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeCustom_RestrictionParameters::~Handle_ShapeCustom_RestrictionParameters %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeCustom_RestrictionParameters {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeCustom_ConvertToBSpline;
class Handle_ShapeCustom_ConvertToBSpline : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToBSpline();
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToBSpline(const Handle_ShapeCustom_ConvertToBSpline &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToBSpline(const ShapeCustom_ConvertToBSpline *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToBSpline & operator=(const Handle_ShapeCustom_ConvertToBSpline &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToBSpline & operator=(const ShapeCustom_ConvertToBSpline *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeCustom_ConvertToBSpline DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_ConvertToBSpline {
	ShapeCustom_ConvertToBSpline* GetObject() {
	return (ShapeCustom_ConvertToBSpline*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeCustom_ConvertToBSpline::~Handle_ShapeCustom_ConvertToBSpline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeCustom_ConvertToBSpline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeCustom_ConvertToRevolution;
class Handle_ShapeCustom_ConvertToRevolution : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToRevolution();
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToRevolution(const Handle_ShapeCustom_ConvertToRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToRevolution(const ShapeCustom_ConvertToRevolution *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToRevolution & operator=(const Handle_ShapeCustom_ConvertToRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToRevolution & operator=(const ShapeCustom_ConvertToRevolution *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeCustom_ConvertToRevolution DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_ConvertToRevolution {
	ShapeCustom_ConvertToRevolution* GetObject() {
	return (ShapeCustom_ConvertToRevolution*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeCustom_ConvertToRevolution::~Handle_ShapeCustom_ConvertToRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeCustom_ConvertToRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeCustom_DirectModification;
class Handle_ShapeCustom_DirectModification : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		Handle_ShapeCustom_DirectModification();
		%feature("autodoc", "1");
		Handle_ShapeCustom_DirectModification(const Handle_ShapeCustom_DirectModification &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_DirectModification(const ShapeCustom_DirectModification *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_DirectModification & operator=(const Handle_ShapeCustom_DirectModification &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_DirectModification & operator=(const ShapeCustom_DirectModification *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeCustom_DirectModification DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_DirectModification {
	ShapeCustom_DirectModification* GetObject() {
	return (ShapeCustom_DirectModification*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeCustom_DirectModification::~Handle_ShapeCustom_DirectModification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeCustom_DirectModification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom_ConvertToBSpline;
class ShapeCustom_ConvertToBSpline : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_ConvertToBSpline();
		%feature("autodoc", "1");
		void SetExtrusionMode(const Standard_Boolean extrMode);
		%feature("autodoc", "1");
		void SetRevolutionMode(const Standard_Boolean revolMode);
		%feature("autodoc", "1");
		void SetOffsetMode(const Standard_Boolean offsetMode);
		%feature("autodoc", "1");
		void SetPlaneMode(const Standard_Boolean planeMode);
		%feature("autodoc","NewSurface(const F) -> Standard_Real");

		virtual		Standard_Boolean NewSurface(const TopoDS_Face F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc","NewCurve(const E) -> Standard_Real");

		virtual		Standard_Boolean NewCurve(const TopoDS_Edge E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc","NewPoint(const V) -> Standard_Real");

		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc","NewCurve2d(const E, const F, const NewE, const NewF) -> Standard_Real");

		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge E, const TopoDS_Face F, const TopoDS_Edge NewE, const TopoDS_Face NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc","NewParameter(const V, const E) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex V, const TopoDS_Edge E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge E, const TopoDS_Face F1, const TopoDS_Face F2, const TopoDS_Edge NewE, const TopoDS_Face NewF1, const TopoDS_Face NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeCustom_ConvertToBSpline {
	Handle_ShapeCustom_ConvertToBSpline GetHandle() {
	return *(Handle_ShapeCustom_ConvertToBSpline*) &$self;
	}
};
%extend ShapeCustom_ConvertToBSpline {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeCustom_ConvertToBSpline::~ShapeCustom_ConvertToBSpline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom_ConvertToBSpline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom_ConvertToRevolution;
class ShapeCustom_ConvertToRevolution : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_ConvertToRevolution();
		%feature("autodoc","NewSurface(const F) -> Standard_Real");

		virtual		Standard_Boolean NewSurface(const TopoDS_Face F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc","NewCurve(const E) -> Standard_Real");

		virtual		Standard_Boolean NewCurve(const TopoDS_Edge E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc","NewPoint(const V) -> Standard_Real");

		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc","NewCurve2d(const E, const F, const NewE, const NewF) -> Standard_Real");

		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge E, const TopoDS_Face F, const TopoDS_Edge NewE, const TopoDS_Face NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc","NewParameter(const V, const E) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex V, const TopoDS_Edge E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge E, const TopoDS_Face F1, const TopoDS_Face F2, const TopoDS_Edge NewE, const TopoDS_Face NewF1, const TopoDS_Face NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeCustom_ConvertToRevolution {
	Handle_ShapeCustom_ConvertToRevolution GetHandle() {
	return *(Handle_ShapeCustom_ConvertToRevolution*) &$self;
	}
};
%extend ShapeCustom_ConvertToRevolution {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeCustom_ConvertToRevolution::~ShapeCustom_ConvertToRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom_ConvertToRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom_Curve2d;
class ShapeCustom_Curve2d {
	public:
		%feature("autodoc", "1");
		ShapeCustom_Curve2d();
		%feature("autodoc","IsLinear(const thePoles, Standard_Real theTolerance) -> Standard_Real");

		static		Standard_Boolean IsLinear(const TColgp_Array1OfPnt2d &thePoles, const Standard_Real theTolerance, Standard_Real &OutValue);
		%feature("autodoc","ConvertToLine2d(const theCurve, Standard_Real theFirstIn, Standard_Real theLastIn, Standard_Real theTolerance) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		Handle_Geom2d_Line ConvertToLine2d(const Handle_Geom2d_Curve &theCurve, const Standard_Real theFirstIn, const Standard_Real theLastIn, const Standard_Real theTolerance, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean SimplifyBSpline2d(Handle_Geom2d_BSplineCurve & theBSpline2d, const Standard_Real theTolerance);

};
%feature("shadow") ShapeCustom_Curve2d::~ShapeCustom_Curve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom_Curve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom_TrsfModification;
class ShapeCustom_TrsfModification : public BRepTools_TrsfModification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_TrsfModification(const gp_Trsf T);
		%feature("autodoc","NewSurface(const F) -> Standard_Real");

		virtual		Standard_Boolean NewSurface(const TopoDS_Face F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc","NewCurve(const E) -> Standard_Real");

		virtual		Standard_Boolean NewCurve(const TopoDS_Edge E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc","NewPoint(const V) -> Standard_Real");

		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc","NewCurve2d(const E, const F, const NewE, const NewF) -> Standard_Real");

		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge E, const TopoDS_Face F, const TopoDS_Edge NewE, const TopoDS_Face NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc","NewParameter(const V, const E) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex V, const TopoDS_Edge E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeCustom_TrsfModification {
	Handle_ShapeCustom_TrsfModification GetHandle() {
	return *(Handle_ShapeCustom_TrsfModification*) &$self;
	}
};
%extend ShapeCustom_TrsfModification {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeCustom_TrsfModification::~ShapeCustom_TrsfModification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom_TrsfModification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom_RestrictionParameters;
class ShapeCustom_RestrictionParameters : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeCustom_RestrictionParameters();
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetGMaxDegree() {
				return (Standard_Integer) $self->GMaxDegree();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGMaxDegree(Standard_Integer value ) {
				$self->GMaxDegree()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetGMaxSeg() {
				return (Standard_Integer) $self->GMaxSeg();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGMaxSeg(Standard_Integer value ) {
				$self->GMaxSeg()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertPlane() {
				return (Standard_Boolean) $self->ConvertPlane();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertPlane(Standard_Boolean value ) {
				$self->ConvertPlane()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertBezierSurf() {
				return (Standard_Boolean) $self->ConvertBezierSurf();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertBezierSurf(Standard_Boolean value ) {
				$self->ConvertBezierSurf()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertRevolutionSurf() {
				return (Standard_Boolean) $self->ConvertRevolutionSurf();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertRevolutionSurf(Standard_Boolean value ) {
				$self->ConvertRevolutionSurf()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertExtrusionSurf() {
				return (Standard_Boolean) $self->ConvertExtrusionSurf();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertExtrusionSurf(Standard_Boolean value ) {
				$self->ConvertExtrusionSurf()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertOffsetSurf() {
				return (Standard_Boolean) $self->ConvertOffsetSurf();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertOffsetSurf(Standard_Boolean value ) {
				$self->ConvertOffsetSurf()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertCylindricalSurf() {
				return (Standard_Boolean) $self->ConvertCylindricalSurf();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertCylindricalSurf(Standard_Boolean value ) {
				$self->ConvertCylindricalSurf()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertConicalSurf() {
				return (Standard_Boolean) $self->ConvertConicalSurf();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertConicalSurf(Standard_Boolean value ) {
				$self->ConvertConicalSurf()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertToroidalSurf() {
				return (Standard_Boolean) $self->ConvertToroidalSurf();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertToroidalSurf(Standard_Boolean value ) {
				$self->ConvertToroidalSurf()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertSphericalSurf() {
				return (Standard_Boolean) $self->ConvertSphericalSurf();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertSphericalSurf(Standard_Boolean value ) {
				$self->ConvertSphericalSurf()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetSegmentSurfaceMode() {
				return (Standard_Boolean) $self->SegmentSurfaceMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetSegmentSurfaceMode(Standard_Boolean value ) {
				$self->SegmentSurfaceMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertCurve3d() {
				return (Standard_Boolean) $self->ConvertCurve3d();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertCurve3d(Standard_Boolean value ) {
				$self->ConvertCurve3d()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertOffsetCurv3d() {
				return (Standard_Boolean) $self->ConvertOffsetCurv3d();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertOffsetCurv3d(Standard_Boolean value ) {
				$self->ConvertOffsetCurv3d()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertCurve2d() {
				return (Standard_Boolean) $self->ConvertCurve2d();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertCurve2d(Standard_Boolean value ) {
				$self->ConvertCurve2d()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetConvertOffsetCurv2d() {
				return (Standard_Boolean) $self->ConvertOffsetCurv2d();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetConvertOffsetCurv2d(Standard_Boolean value ) {
				$self->ConvertOffsetCurv2d()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeCustom_RestrictionParameters {
	Handle_ShapeCustom_RestrictionParameters GetHandle() {
	return *(Handle_ShapeCustom_RestrictionParameters*) &$self;
	}
};
%extend ShapeCustom_RestrictionParameters {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeCustom_RestrictionParameters::~ShapeCustom_RestrictionParameters %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom_RestrictionParameters {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom_Curve;
class ShapeCustom_Curve {
	public:
		%feature("autodoc", "1");
		ShapeCustom_Curve();
		%feature("autodoc", "1");
		ShapeCustom_Curve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom_Curve ConvertToPeriodic(const Standard_Boolean substitute, const Standard_Real preci=-0x00000000000000001);

};
%feature("shadow") ShapeCustom_Curve::~ShapeCustom_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom_Surface;
class ShapeCustom_Surface {
	public:
		%feature("autodoc", "1");
		ShapeCustom_Surface();
		%feature("autodoc", "1");
		ShapeCustom_Surface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		Standard_Real Gap() const;
		%feature("autodoc", "1");
		Handle_Geom_Surface ConvertToAnalytical(const Standard_Real tol, const Standard_Boolean substitute);
		%feature("autodoc", "1");
		Handle_Geom_Surface ConvertToPeriodic(const Standard_Boolean substitute, const Standard_Real preci=-0x00000000000000001);

};
%feature("shadow") ShapeCustom_Surface::~ShapeCustom_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom_SweptToElementary;
class ShapeCustom_SweptToElementary : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_SweptToElementary();
		%feature("autodoc","NewSurface(const F) -> Standard_Real");

		virtual		Standard_Boolean NewSurface(const TopoDS_Face F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc","NewCurve(const E) -> Standard_Real");

		virtual		Standard_Boolean NewCurve(const TopoDS_Edge E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc","NewPoint(const V) -> Standard_Real");

		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc","NewCurve2d(const E, const F, const NewE, const NewF) -> Standard_Real");

		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge E, const TopoDS_Face F, const TopoDS_Edge NewE, const TopoDS_Face NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc","NewParameter(const V, const E) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex V, const TopoDS_Edge E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge E, const TopoDS_Face F1, const TopoDS_Face F2, const TopoDS_Edge NewE, const TopoDS_Face NewF1, const TopoDS_Face NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeCustom_SweptToElementary {
	Handle_ShapeCustom_SweptToElementary GetHandle() {
	return *(Handle_ShapeCustom_SweptToElementary*) &$self;
	}
};
%extend ShapeCustom_SweptToElementary {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeCustom_SweptToElementary::~ShapeCustom_SweptToElementary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom_SweptToElementary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom;
class ShapeCustom {
	public:
		%feature("autodoc", "1");
		ShapeCustom();
		%feature("autodoc", "1");
		static		TopoDS_Shape ApplyModifier(const TopoDS_Shape S, const Handle_BRepTools_Modification &M, TopTools_DataMapOfShapeShape & context, BRepTools_Modifier & MD);
		%feature("autodoc", "1");
		static		TopoDS_Shape DirectFaces(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		TopoDS_Shape ScaleShape(const TopoDS_Shape S, const Standard_Real scale);

};
%feature("shadow") ShapeCustom::~ShapeCustom %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom_BSplineRestriction;
class ShapeCustom_BSplineRestriction : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_BSplineRestriction();
		%feature("autodoc", "1");
		ShapeCustom_BSplineRestriction(const Standard_Boolean anApproxSurfaceFlag, const Standard_Boolean anApproxCurve3dFlag, const Standard_Boolean anApproxCurve2dFlag, const Standard_Real aTol3d, const Standard_Real aTol2d, const GeomAbs_Shape aContinuity3d, const GeomAbs_Shape aContinuity2d, const Standard_Integer aMaxDegree, const Standard_Integer aNbMaxSeg, const Standard_Boolean Degree, const Standard_Boolean Rational);
		%feature("autodoc", "1");
		ShapeCustom_BSplineRestriction(const Standard_Boolean anApproxSurfaceFlag, const Standard_Boolean anApproxCurve3dFlag, const Standard_Boolean anApproxCurve2dFlag, const Standard_Real aTol3d, const Standard_Real aTol2d, const GeomAbs_Shape aContinuity3d, const GeomAbs_Shape aContinuity2d, const Standard_Integer aMaxDegree, const Standard_Integer aNbMaxSeg, const Standard_Boolean Degree, const Standard_Boolean Rational, const Handle_ShapeCustom_RestrictionParameters &aModes);
		%feature("autodoc","NewSurface(const F) -> Standard_Real");

		virtual		Standard_Boolean NewSurface(const TopoDS_Face F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc","NewCurve(const E) -> Standard_Real");

		virtual		Standard_Boolean NewCurve(const TopoDS_Edge E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc","NewCurve2d(const E, const F, const NewE, const NewF) -> Standard_Real");

		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge E, const TopoDS_Face F, const TopoDS_Edge NewE, const TopoDS_Face NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean ConvertSurface(const Handle_Geom_Surface &aSurface, Handle_Geom_Surface & S, const Standard_Real UF, const Standard_Real UL, const Standard_Real VF, const Standard_Real VL, const Standard_Boolean IsOf=1);
		%feature("autodoc","ConvertCurve(Standard_Boolean IsConvert, Standard_Real First, Standard_Real Last, Standard_Boolean IsOf=1) -> Standard_Real");

		Standard_Boolean ConvertCurve(Handle_Geom_Curve & aCurve, Handle_Geom_Curve & C, const Standard_Boolean IsConvert, const Standard_Real First, const Standard_Real Last, Standard_Real &OutValue, const Standard_Boolean IsOf=1);
		%feature("autodoc","ConvertCurve2d(Standard_Boolean IsConvert, Standard_Real First, Standard_Real Last, Standard_Boolean IsOf=1) -> Standard_Real");

		Standard_Boolean ConvertCurve2d(Handle_Geom2d_Curve & aCurve, Handle_Geom2d_Curve & C, const Standard_Boolean IsConvert, const Standard_Real First, const Standard_Real Last, Standard_Real &OutValue, const Standard_Boolean IsOf=1);
		%feature("autodoc", "1");
		void SetTol3d(const Standard_Real Tol3d);
		%feature("autodoc", "1");
		void SetTol2d(const Standard_Real Tol2d);
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetModifyApproxSurfaceFlag() {
				return (Standard_Boolean) $self->ModifyApproxSurfaceFlag();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetModifyApproxSurfaceFlag(Standard_Boolean value ) {
				$self->ModifyApproxSurfaceFlag()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetModifyApproxCurve3dFlag() {
				return (Standard_Boolean) $self->ModifyApproxCurve3dFlag();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetModifyApproxCurve3dFlag(Standard_Boolean value ) {
				$self->ModifyApproxCurve3dFlag()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetModifyApproxCurve2dFlag() {
				return (Standard_Boolean) $self->ModifyApproxCurve2dFlag();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetModifyApproxCurve2dFlag(Standard_Boolean value ) {
				$self->ModifyApproxCurve2dFlag()=value;
				}
		};
		%feature("autodoc", "1");
		void SetContinuity3d(const GeomAbs_Shape Continuity3d);
		%feature("autodoc", "1");
		void SetContinuity2d(const GeomAbs_Shape Continuity2d);
		%feature("autodoc", "1");
		void SetMaxDegree(const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		void SetMaxNbSegments(const Standard_Integer MaxNbSegments);
		%feature("autodoc", "1");
		void SetPriority(const Standard_Boolean Degree);
		%feature("autodoc", "1");
		void SetConvRational(const Standard_Boolean Rational);
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters GetRestrictionParameters() const;
		%feature("autodoc", "1");
		void SetRestrictionParameters(const Handle_ShapeCustom_RestrictionParameters &aModes);
		%feature("autodoc", "1");
		Standard_Real Curve3dError() const;
		%feature("autodoc", "1");
		Standard_Real Curve2dError() const;
		%feature("autodoc", "1");
		Standard_Real SurfaceError() const;
		%feature("autodoc","NewPoint(const V) -> Standard_Real");

		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc","NewParameter(const V, const E) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex V, const TopoDS_Edge E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge E, const TopoDS_Face F1, const TopoDS_Face F2, const TopoDS_Edge NewE, const TopoDS_Face NewF1, const TopoDS_Face NewF2);
		%feature("autodoc","MaxErrors() -> [Standard_Real, Standard_Real]");

		Standard_Real MaxErrors(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbOfSpan() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeCustom_BSplineRestriction {
	Handle_ShapeCustom_BSplineRestriction GetHandle() {
	return *(Handle_ShapeCustom_BSplineRestriction*) &$self;
	}
};
%extend ShapeCustom_BSplineRestriction {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeCustom_BSplineRestriction::~ShapeCustom_BSplineRestriction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom_BSplineRestriction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeCustom_DirectModification;
class ShapeCustom_DirectModification : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_DirectModification();
		%feature("autodoc","NewSurface(const F) -> Standard_Real");

		virtual		Standard_Boolean NewSurface(const TopoDS_Face F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc","NewCurve(const E) -> Standard_Real");

		virtual		Standard_Boolean NewCurve(const TopoDS_Edge E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc","NewPoint(const V) -> Standard_Real");

		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc","NewCurve2d(const E, const F, const NewE, const NewF) -> Standard_Real");

		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge E, const TopoDS_Face F, const TopoDS_Edge NewE, const TopoDS_Face NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc","NewParameter(const V, const E) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex V, const TopoDS_Edge E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge E, const TopoDS_Face F1, const TopoDS_Face F2, const TopoDS_Edge NewE, const TopoDS_Face NewF1, const TopoDS_Face NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeCustom_DirectModification {
	Handle_ShapeCustom_DirectModification GetHandle() {
	return *(Handle_ShapeCustom_DirectModification*) &$self;
	}
};
%extend ShapeCustom_DirectModification {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeCustom_DirectModification::~ShapeCustom_DirectModification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeCustom_DirectModification {
	void _kill_pointed() {
		delete $self;
	}
};
