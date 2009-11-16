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
%module BlockFix
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BlockFix_dependencies.i


%include BlockFix_headers.i




%nodefaultctor Handle_BlockFix_SphereSpaceModifier;
class Handle_BlockFix_SphereSpaceModifier : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		Handle_BlockFix_SphereSpaceModifier();
		%feature("autodoc", "1");
		Handle_BlockFix_SphereSpaceModifier(const Handle_BlockFix_SphereSpaceModifier &aHandle);
		%feature("autodoc", "1");
		Handle_BlockFix_SphereSpaceModifier(const BlockFix_SphereSpaceModifier *anItem);
		%feature("autodoc", "1");
		Handle_BlockFix_SphereSpaceModifier & operator=(const Handle_BlockFix_SphereSpaceModifier &aHandle);
		%feature("autodoc", "1");
		Handle_BlockFix_SphereSpaceModifier & operator=(const BlockFix_SphereSpaceModifier *anItem);
		%feature("autodoc", "1");
		Handle_BlockFix_SphereSpaceModifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BlockFix_SphereSpaceModifier {
	BlockFix_SphereSpaceModifier* GetObject() {
	return (BlockFix_SphereSpaceModifier*)$self->Access();
	}
};
%feature("shadow") Handle_BlockFix_SphereSpaceModifier::~Handle_BlockFix_SphereSpaceModifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BlockFix_SphereSpaceModifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BlockFix_PeriodicSurfaceModifier;
class Handle_BlockFix_PeriodicSurfaceModifier : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		Handle_BlockFix_PeriodicSurfaceModifier();
		%feature("autodoc", "1");
		Handle_BlockFix_PeriodicSurfaceModifier(const Handle_BlockFix_PeriodicSurfaceModifier &aHandle);
		%feature("autodoc", "1");
		Handle_BlockFix_PeriodicSurfaceModifier(const BlockFix_PeriodicSurfaceModifier *anItem);
		%feature("autodoc", "1");
		Handle_BlockFix_PeriodicSurfaceModifier & operator=(const Handle_BlockFix_PeriodicSurfaceModifier &aHandle);
		%feature("autodoc", "1");
		Handle_BlockFix_PeriodicSurfaceModifier & operator=(const BlockFix_PeriodicSurfaceModifier *anItem);
		%feature("autodoc", "1");
		Handle_BlockFix_PeriodicSurfaceModifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BlockFix_PeriodicSurfaceModifier {
	BlockFix_PeriodicSurfaceModifier* GetObject() {
	return (BlockFix_PeriodicSurfaceModifier*)$self->Access();
	}
};
%feature("shadow") Handle_BlockFix_PeriodicSurfaceModifier::~Handle_BlockFix_PeriodicSurfaceModifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BlockFix_PeriodicSurfaceModifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BlockFix_BlockFixAPI;
class Handle_BlockFix_BlockFixAPI : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BlockFix_BlockFixAPI();
		%feature("autodoc", "1");
		Handle_BlockFix_BlockFixAPI(const Handle_BlockFix_BlockFixAPI &aHandle);
		%feature("autodoc", "1");
		Handle_BlockFix_BlockFixAPI(const BlockFix_BlockFixAPI *anItem);
		%feature("autodoc", "1");
		Handle_BlockFix_BlockFixAPI & operator=(const Handle_BlockFix_BlockFixAPI &aHandle);
		%feature("autodoc", "1");
		Handle_BlockFix_BlockFixAPI & operator=(const BlockFix_BlockFixAPI *anItem);
		%feature("autodoc", "1");
		Handle_BlockFix_BlockFixAPI const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BlockFix_BlockFixAPI {
	BlockFix_BlockFixAPI* GetObject() {
	return (BlockFix_BlockFixAPI*)$self->Access();
	}
};
%feature("shadow") Handle_BlockFix_BlockFixAPI::~Handle_BlockFix_BlockFixAPI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BlockFix_BlockFixAPI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlockFix;
class BlockFix {
	public:
		%feature("autodoc", "1");
		BlockFix();
		%feature("autodoc", "1");
		TopoDS_Shape RotateSphereSpace(const TopoDS_Shape &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		TopoDS_Shape FixRanges(const TopoDS_Shape &S, const Standard_Real Tol);

};
%feature("shadow") BlockFix::~BlockFix %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlockFix {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlockFix_UnionEdges;
class BlockFix_UnionEdges {
	public:
		%feature("autodoc", "1");
		BlockFix_UnionEdges();
		%feature("autodoc", "1");
		TopoDS_Shape Perform(const TopoDS_Shape &Shape, const Standard_Real Tol);

};
%feature("shadow") BlockFix_UnionEdges::~BlockFix_UnionEdges %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlockFix_UnionEdges {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlockFix_SphereSpaceModifier;
class BlockFix_SphereSpaceModifier : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		BlockFix_SphereSpaceModifier();
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Toler);
		%feature("autodoc","NewSurface(const F) -> Standard_Real");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc","NewCurve(const E) -> Standard_Real");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc","NewPoint(const V) -> Standard_Real");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc","NewCurve2d(const E, const F, const NewE, const NewF) -> Standard_Real");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc","NewParameter(const V, const E) -> [Standard_RealStandard_Real]");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &arg0) const;

};
%extend BlockFix_SphereSpaceModifier {
	Handle_BlockFix_SphereSpaceModifier GetHandle() {
	return *(Handle_BlockFix_SphereSpaceModifier*) &$self;
	}
};
%extend BlockFix_SphereSpaceModifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BlockFix_SphereSpaceModifier::~BlockFix_SphereSpaceModifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlockFix_SphereSpaceModifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlockFix_CheckTool;
class BlockFix_CheckTool {
	public:
		%feature("autodoc", "1");
		BlockFix_CheckTool();
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Integer NbPossibleBlocks() const;
		%feature("autodoc", "1");
		TopoDS_Shape PossibleBlock(const Standard_Integer num) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpCheckResultToString() {
			std::stringstream s;
			self->DumpCheckResult(s);
			return s.str();}
		};

};
%feature("shadow") BlockFix_CheckTool::~BlockFix_CheckTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlockFix_CheckTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlockFix_PeriodicSurfaceModifier;
class BlockFix_PeriodicSurfaceModifier : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		BlockFix_PeriodicSurfaceModifier();
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Toler);
		%feature("autodoc","NewSurface(const F) -> Standard_Real");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc","NewCurve(const E) -> Standard_Real");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc","NewPoint(const V) -> Standard_Real");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc","NewCurve2d(const E, const F, const NewE, const NewF) -> Standard_Real");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc","NewParameter(const V, const E) -> [Standard_RealStandard_Real]");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &arg0) const;

};
%extend BlockFix_PeriodicSurfaceModifier {
	Handle_BlockFix_PeriodicSurfaceModifier GetHandle() {
	return *(Handle_BlockFix_PeriodicSurfaceModifier*) &$self;
	}
};
%extend BlockFix_PeriodicSurfaceModifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BlockFix_PeriodicSurfaceModifier::~BlockFix_PeriodicSurfaceModifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlockFix_PeriodicSurfaceModifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlockFix_UnionFaces;
class BlockFix_UnionFaces {
	public:
		%feature("autodoc", "1");
		BlockFix_UnionFaces();
		%feature("autodoc","1");
		%extend {
				Standard_Real GetGetTolerance() {
				return (Standard_Real) $self->GetTolerance();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetTolerance(Standard_Real value ) {
				$self->GetTolerance()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetGetOptimumNbFaces() {
				return (Standard_Integer) $self->GetOptimumNbFaces();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetOptimumNbFaces(Standard_Integer value ) {
				$self->GetOptimumNbFaces()=value;
				}
		};
		%feature("autodoc", "1");
		TopoDS_Shape Perform(const TopoDS_Shape &Shape);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSameDomain(const TopoDS_Face &aFace, const TopoDS_Face &aChekedFace) const;
		%feature("autodoc", "1");
		virtual		void MovePCurves(TopoDS_Face & aTarget, const TopoDS_Face &aSource) const;

};
%feature("shadow") BlockFix_UnionFaces::~BlockFix_UnionFaces %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlockFix_UnionFaces {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlockFix_BlockFixAPI;
class BlockFix_BlockFixAPI : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BlockFix_BlockFixAPI();
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &Shape);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape & Context();
		%feature("autodoc","1");
		%extend {
				Standard_Real GetTolerance() {
				return (Standard_Real) $self->Tolerance();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetTolerance(Standard_Real value ) {
				$self->Tolerance()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetOptimumNbFaces() {
				return (Standard_Integer) $self->OptimumNbFaces();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetOptimumNbFaces(Standard_Integer value ) {
				$self->OptimumNbFaces()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &arg0) const;

};
%extend BlockFix_BlockFixAPI {
	Handle_BlockFix_BlockFixAPI GetHandle() {
	return *(Handle_BlockFix_BlockFixAPI*) &$self;
	}
};
%extend BlockFix_BlockFixAPI {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BlockFix_BlockFixAPI::~BlockFix_BlockFixAPI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlockFix_BlockFixAPI {
	void _kill_pointed() {
		delete $self;
	}
};
