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

%module TopoDSToStep
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TopoDSToStep_renames.i


%include TopoDSToStep_required_python_modules.i


%include TopoDSToStep_dependencies.i


%include TopoDSToStep_headers.i


enum TopoDSToStep_MakeWireError {
	TopoDSToStep_WireDone,
	TopoDSToStep_NonManifoldWire,
	TopoDSToStep_WireOther,
	};

enum TopoDSToStep_MakeVertexError {
	TopoDSToStep_VertexDone,
	TopoDSToStep_VertexOther,
	};

enum TopoDSToStep_BuilderError {
	TopoDSToStep_BuilderDone,
	TopoDSToStep_NoFaceMapped,
	TopoDSToStep_BuilderOther,
	};

enum TopoDSToStep_MakeEdgeError {
	TopoDSToStep_EdgeDone,
	TopoDSToStep_NonManifoldEdge,
	TopoDSToStep_EdgeOther,
	};

enum TopoDSToStep_MakeFaceError {
	TopoDSToStep_FaceDone,
	TopoDSToStep_InfiniteFace,
	TopoDSToStep_NonManifoldFace,
	TopoDSToStep_NoWireMapped,
	TopoDSToStep_FaceOther,
	};

enum TopoDSToStep_FacetedError {
	TopoDSToStep_FacetedDone,
	TopoDSToStep_SurfaceNotPlane,
	TopoDSToStep_PCurveNotLinear,
	};



%nodefaultctor TopoDSToStep_Root;
class TopoDSToStep_Root {
	public:
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
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") TopoDSToStep_Root::~TopoDSToStep_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_Root {
	void _kill_pointed() {
		delete $self;
	}
};
%extend TopoDSToStep_Root {
	TopoDSToStep_Root () {}
};


%nodefaultctor TopoDSToStep_WireframeBuilder;
class TopoDSToStep_WireframeBuilder : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_WireframeBuilder();
		%feature("autodoc", "1");
		TopoDSToStep_WireframeBuilder(const TopoDS_Shape S, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_BuilderError Error() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HSequenceOfTransient & Value() const;
		%feature("autodoc", "1");
		Standard_Boolean GetTrimmedCurveFromEdge(const TopoDS_Edge E, const TopoDS_Face F, MoniTool_DataMapOfShapeTransient & M, Handle_TColStd_HSequenceOfTransient & L) const;
		%feature("autodoc", "1");
		Standard_Boolean GetTrimmedCurveFromFace(const TopoDS_Face F, MoniTool_DataMapOfShapeTransient & M, Handle_TColStd_HSequenceOfTransient & L) const;
		%feature("autodoc", "1");
		Standard_Boolean GetTrimmedCurveFromShape(const TopoDS_Shape S, MoniTool_DataMapOfShapeTransient & M, Handle_TColStd_HSequenceOfTransient & L) const;

};
%feature("shadow") TopoDSToStep_WireframeBuilder::~TopoDSToStep_WireframeBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_WireframeBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_MakeStepVertex;
class TopoDSToStep_MakeStepVertex : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepVertex();
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepVertex(const TopoDS_Vertex V, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Vertex V, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Value() const;
		%feature("autodoc", "1");
		TopoDSToStep_MakeVertexError Error() const;

};
%feature("shadow") TopoDSToStep_MakeStepVertex::~TopoDSToStep_MakeStepVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_MakeStepVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_MakeFacetedBrep;
class TopoDSToStep_MakeFacetedBrep : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeFacetedBrep(const TopoDS_Shell S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_MakeFacetedBrep(const TopoDS_Solid S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_FacetedBrep & Value() const;

};
%feature("shadow") TopoDSToStep_MakeFacetedBrep::~TopoDSToStep_MakeFacetedBrep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_MakeFacetedBrep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_MakeStepWire;
class TopoDSToStep_MakeStepWire : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepWire();
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepWire(const TopoDS_Wire W, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire W, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Value() const;
		%feature("autodoc", "1");
		TopoDSToStep_MakeWireError Error() const;

};
%feature("shadow") TopoDSToStep_MakeStepWire::~TopoDSToStep_MakeStepWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_MakeStepWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_MakeFacetedBrepAndBrepWithVoids;
class TopoDSToStep_MakeFacetedBrepAndBrepWithVoids : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeFacetedBrepAndBrepWithVoids(const TopoDS_Solid S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_FacetedBrepAndBrepWithVoids & Value() const;

};
%feature("shadow") TopoDSToStep_MakeFacetedBrepAndBrepWithVoids::~TopoDSToStep_MakeFacetedBrepAndBrepWithVoids %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_MakeFacetedBrepAndBrepWithVoids {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_MakeShellBasedSurfaceModel;
class TopoDSToStep_MakeShellBasedSurfaceModel : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeShellBasedSurfaceModel(const TopoDS_Face F, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_MakeShellBasedSurfaceModel(const TopoDS_Shell S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_MakeShellBasedSurfaceModel(const TopoDS_Solid S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_ShellBasedSurfaceModel & Value() const;

};
%feature("shadow") TopoDSToStep_MakeShellBasedSurfaceModel::~TopoDSToStep_MakeShellBasedSurfaceModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_MakeShellBasedSurfaceModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_Tool;
class TopoDSToStep_Tool {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_Tool();
		%feature("autodoc", "1");
		TopoDSToStep_Tool(const MoniTool_DataMapOfShapeTransient &M, const Standard_Boolean FacetedContext);
		%feature("autodoc", "1");
		void Init(const MoniTool_DataMapOfShapeTransient &M, const Standard_Boolean FacetedContext);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Shape S, const Handle_StepShape_TopologicalRepresentationItem &T);
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem Find(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean Faceted() const;
		%feature("autodoc", "1");
		void SetCurrentShell(const TopoDS_Shell S);
		%feature("autodoc", "1");
		const TopoDS_Shell  CurrentShell() const;
		%feature("autodoc", "1");
		void SetCurrentFace(const TopoDS_Face F);
		%feature("autodoc", "1");
		const TopoDS_Face  CurrentFace() const;
		%feature("autodoc", "1");
		void SetCurrentWire(const TopoDS_Wire W);
		%feature("autodoc", "1");
		const TopoDS_Wire  CurrentWire() const;
		%feature("autodoc", "1");
		void SetCurrentEdge(const TopoDS_Edge E);
		%feature("autodoc", "1");
		const TopoDS_Edge  CurrentEdge() const;
		%feature("autodoc", "1");
		void SetCurrentVertex(const TopoDS_Vertex V);
		%feature("autodoc", "1");
		const TopoDS_Vertex  CurrentVertex() const;
		%feature("autodoc", "1");
		Standard_Real Lowest3DTolerance() const;
		%feature("autodoc", "1");
		void SetSurfaceReversed(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean SurfaceReversed() const;
		%feature("autodoc", "1");
		const MoniTool_DataMapOfShapeTransient & Map() const;
		%feature("autodoc", "1");
		Standard_Integer PCurveMode() const;

};
%feature("shadow") TopoDSToStep_Tool::~TopoDSToStep_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_Tool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep;
class TopoDSToStep {
	public:
		%feature("autodoc", "1");
		TopoDSToStep();
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeBuilderError(const TopoDSToStep_BuilderError E);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeFaceError(const TopoDSToStep_MakeFaceError E);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeWireError(const TopoDSToStep_MakeWireError E);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeEdgeError(const TopoDSToStep_MakeEdgeError E);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeVertexError(const TopoDSToStep_MakeVertexError E);
		%feature("autodoc", "1");
		static		void AddResult(const Handle_Transfer_FinderProcess &FP, const TopoDS_Shape Shape, const Handle_Standard_Transient &entity);
		%feature("autodoc", "1");
		static		void AddResult(const Handle_Transfer_FinderProcess &FP, const TopoDSToStep_Tool &Tool);

};
%feature("shadow") TopoDSToStep::~TopoDSToStep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_Builder;
class TopoDSToStep_Builder : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_Builder();
		%feature("autodoc", "1");
		TopoDSToStep_Builder(const TopoDS_Shape S, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_BuilderError Error() const;
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Value() const;

};
%feature("shadow") TopoDSToStep_Builder::~TopoDSToStep_Builder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_Builder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_MakeBrepWithVoids;
class TopoDSToStep_MakeBrepWithVoids : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeBrepWithVoids(const TopoDS_Solid S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_BrepWithVoids & Value() const;

};
%feature("shadow") TopoDSToStep_MakeBrepWithVoids::~TopoDSToStep_MakeBrepWithVoids %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_MakeBrepWithVoids {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_MakeStepFace;
class TopoDSToStep_MakeStepFace : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepFace();
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepFace(const TopoDS_Face F, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face F, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Value() const;
		%feature("autodoc", "1");
		TopoDSToStep_MakeFaceError Error() const;

};
%feature("shadow") TopoDSToStep_MakeStepFace::~TopoDSToStep_MakeStepFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_MakeStepFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_MakeManifoldSolidBrep;
class TopoDSToStep_MakeManifoldSolidBrep : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeManifoldSolidBrep(const TopoDS_Shell S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_MakeManifoldSolidBrep(const TopoDS_Solid S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_ManifoldSolidBrep & Value() const;

};
%feature("shadow") TopoDSToStep_MakeManifoldSolidBrep::~TopoDSToStep_MakeManifoldSolidBrep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_MakeManifoldSolidBrep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_MakeStepEdge;
class TopoDSToStep_MakeStepEdge : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepEdge();
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepEdge(const TopoDS_Edge E, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge E, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Value() const;
		%feature("autodoc", "1");
		TopoDSToStep_MakeEdgeError Error() const;

};
%feature("shadow") TopoDSToStep_MakeStepEdge::~TopoDSToStep_MakeStepEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_MakeStepEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_FacetedTool;
class TopoDSToStep_FacetedTool {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_FacetedTool();
		%feature("autodoc", "1");
		static		TopoDSToStep_FacetedError CheckTopoDSShape(const TopoDS_Shape SH);

};
%feature("shadow") TopoDSToStep_FacetedTool::~TopoDSToStep_FacetedTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_FacetedTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDSToStep_MakeGeometricCurveSet;
class TopoDSToStep_MakeGeometricCurveSet : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeGeometricCurveSet(const TopoDS_Shape SH, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_GeometricCurveSet & Value() const;

};
%feature("shadow") TopoDSToStep_MakeGeometricCurveSet::~TopoDSToStep_MakeGeometricCurveSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDSToStep_MakeGeometricCurveSet {
	void _kill_pointed() {
		delete $self;
	}
};
