/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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
%module TopoDSToStep

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


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

enum TopoDSToStep_BuilderError {
	TopoDSToStep_BuilderDone,
	TopoDSToStep_NoFaceMapped,
	TopoDSToStep_BuilderOther,
	};

enum TopoDSToStep_FacetedError {
	TopoDSToStep_FacetedDone,
	TopoDSToStep_SurfaceNotPlane,
	TopoDSToStep_PCurveNotLinear,
	};



%nodefaultctor TopoDSToStep_Root;
class TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		Standard_Real & Tolerance();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%extend TopoDSToStep_Root {
	~TopoDSToStep_Root() {
	printf("Call custom destructor for instance of TopoDSToStep_Root\n");
	}
};

%nodefaultctor TopoDSToStep_WireframeBuilder;
class TopoDSToStep_WireframeBuilder : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_WireframeBuilder();
		%feature("autodoc", "1");
		TopoDSToStep_WireframeBuilder(const TopoDS_Shape &S, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_BuilderError Error() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HSequenceOfTransient & Value() const;
		%feature("autodoc", "1");
		Standard_Boolean GetTrimmedCurveFromEdge(const TopoDS_Edge &E, const TopoDS_Face &F, MoniTool_DataMapOfShapeTransient & M, Handle_TColStd_HSequenceOfTransient & L) const;
		%feature("autodoc", "1");
		Standard_Boolean GetTrimmedCurveFromFace(const TopoDS_Face &F, MoniTool_DataMapOfShapeTransient & M, Handle_TColStd_HSequenceOfTransient & L) const;
		%feature("autodoc", "1");
		Standard_Boolean GetTrimmedCurveFromShape(const TopoDS_Shape &S, MoniTool_DataMapOfShapeTransient & M, Handle_TColStd_HSequenceOfTransient & L) const;

};
%extend TopoDSToStep_WireframeBuilder {
	~TopoDSToStep_WireframeBuilder() {
	printf("Call custom destructor for instance of TopoDSToStep_WireframeBuilder\n");
	}
};

%nodefaultctor TopoDSToStep_FacetedTool;
class TopoDSToStep_FacetedTool {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_FacetedTool();
		%feature("autodoc", "1");
		TopoDSToStep_FacetedError CheckTopoDSShape(const TopoDS_Shape &SH);

};
%extend TopoDSToStep_FacetedTool {
	~TopoDSToStep_FacetedTool() {
	printf("Call custom destructor for instance of TopoDSToStep_FacetedTool\n");
	}
};

%nodefaultctor TopoDSToStep_MakeStepVertex;
class TopoDSToStep_MakeStepVertex : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepVertex();
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepVertex(const TopoDS_Vertex &V, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Vertex &V, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Value() const;
		%feature("autodoc", "1");
		TopoDSToStep_MakeVertexError Error() const;

};
%extend TopoDSToStep_MakeStepVertex {
	~TopoDSToStep_MakeStepVertex() {
	printf("Call custom destructor for instance of TopoDSToStep_MakeStepVertex\n");
	}
};

%nodefaultctor TopoDSToStep_MakeFacetedBrepAndBrepWithVoids;
class TopoDSToStep_MakeFacetedBrepAndBrepWithVoids : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeFacetedBrepAndBrepWithVoids(const TopoDS_Solid &S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_FacetedBrepAndBrepWithVoids & Value() const;

};
%extend TopoDSToStep_MakeFacetedBrepAndBrepWithVoids {
	~TopoDSToStep_MakeFacetedBrepAndBrepWithVoids() {
	printf("Call custom destructor for instance of TopoDSToStep_MakeFacetedBrepAndBrepWithVoids\n");
	}
};

%nodefaultctor TopoDSToStep_MakeManifoldSolidBrep;
class TopoDSToStep_MakeManifoldSolidBrep : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeManifoldSolidBrep(const TopoDS_Shell &S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_MakeManifoldSolidBrep(const TopoDS_Solid &S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_ManifoldSolidBrep & Value() const;

};
%extend TopoDSToStep_MakeManifoldSolidBrep {
	~TopoDSToStep_MakeManifoldSolidBrep() {
	printf("Call custom destructor for instance of TopoDSToStep_MakeManifoldSolidBrep\n");
	}
};

%nodefaultctor TopoDSToStep_MakeFacetedBrep;
class TopoDSToStep_MakeFacetedBrep : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeFacetedBrep(const TopoDS_Shell &S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_MakeFacetedBrep(const TopoDS_Solid &S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_FacetedBrep & Value() const;

};
%extend TopoDSToStep_MakeFacetedBrep {
	~TopoDSToStep_MakeFacetedBrep() {
	printf("Call custom destructor for instance of TopoDSToStep_MakeFacetedBrep\n");
	}
};

%nodefaultctor TopoDSToStep_MakeShellBasedSurfaceModel;
class TopoDSToStep_MakeShellBasedSurfaceModel : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeShellBasedSurfaceModel(const TopoDS_Face &F, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_MakeShellBasedSurfaceModel(const TopoDS_Shell &S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_MakeShellBasedSurfaceModel(const TopoDS_Solid &S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_ShellBasedSurfaceModel & Value() const;

};
%extend TopoDSToStep_MakeShellBasedSurfaceModel {
	~TopoDSToStep_MakeShellBasedSurfaceModel() {
	printf("Call custom destructor for instance of TopoDSToStep_MakeShellBasedSurfaceModel\n");
	}
};

%nodefaultctor TopoDSToStep_MakeStepWire;
class TopoDSToStep_MakeStepWire : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepWire();
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepWire(const TopoDS_Wire &W, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &W, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Value() const;
		%feature("autodoc", "1");
		TopoDSToStep_MakeWireError Error() const;

};
%extend TopoDSToStep_MakeStepWire {
	~TopoDSToStep_MakeStepWire() {
	printf("Call custom destructor for instance of TopoDSToStep_MakeStepWire\n");
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
		Standard_Boolean IsBound(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Shape &S, const Handle_StepShape_TopologicalRepresentationItem &T);
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem Find(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean Faceted() const;
		%feature("autodoc", "1");
		void SetCurrentShell(const TopoDS_Shell &S);
		%feature("autodoc", "1");
		const TopoDS_Shell & CurrentShell() const;
		%feature("autodoc", "1");
		void SetCurrentFace(const TopoDS_Face &F);
		%feature("autodoc", "1");
		const TopoDS_Face & CurrentFace() const;
		%feature("autodoc", "1");
		void SetCurrentWire(const TopoDS_Wire &W);
		%feature("autodoc", "1");
		const TopoDS_Wire & CurrentWire() const;
		%feature("autodoc", "1");
		void SetCurrentEdge(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		const TopoDS_Edge & CurrentEdge() const;
		%feature("autodoc", "1");
		void SetCurrentVertex(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		const TopoDS_Vertex & CurrentVertex() const;
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
%extend TopoDSToStep_Tool {
	~TopoDSToStep_Tool() {
	printf("Call custom destructor for instance of TopoDSToStep_Tool\n");
	}
};

%nodefaultctor TopoDSToStep;
class TopoDSToStep {
	public:
		%feature("autodoc", "1");
		TopoDSToStep();
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeBuilderError(const TopoDSToStep_BuilderError E);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeFaceError(const TopoDSToStep_MakeFaceError E);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeWireError(const TopoDSToStep_MakeWireError E);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeEdgeError(const TopoDSToStep_MakeEdgeError E);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeVertexError(const TopoDSToStep_MakeVertexError E);
		%feature("autodoc", "1");
		void AddResult(const Handle_Transfer_FinderProcess &FP, const TopoDS_Shape &Shape, const Handle_Standard_Transient &entity);
		%feature("autodoc", "1");
		void AddResult(const Handle_Transfer_FinderProcess &FP, const TopoDSToStep_Tool &Tool);

};
%extend TopoDSToStep {
	~TopoDSToStep() {
	printf("Call custom destructor for instance of TopoDSToStep\n");
	}
};

%nodefaultctor TopoDSToStep_Builder;
class TopoDSToStep_Builder : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_Builder();
		%feature("autodoc", "1");
		TopoDSToStep_Builder(const TopoDS_Shape &S, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		TopoDSToStep_BuilderError Error() const;
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Value() const;

};
%extend TopoDSToStep_Builder {
	~TopoDSToStep_Builder() {
	printf("Call custom destructor for instance of TopoDSToStep_Builder\n");
	}
};

%nodefaultctor TopoDSToStep_MakeBrepWithVoids;
class TopoDSToStep_MakeBrepWithVoids : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeBrepWithVoids(const TopoDS_Solid &S, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_BrepWithVoids & Value() const;

};
%extend TopoDSToStep_MakeBrepWithVoids {
	~TopoDSToStep_MakeBrepWithVoids() {
	printf("Call custom destructor for instance of TopoDSToStep_MakeBrepWithVoids\n");
	}
};

%nodefaultctor TopoDSToStep_MakeStepFace;
class TopoDSToStep_MakeStepFace : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepFace();
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepFace(const TopoDS_Face &F, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Value() const;
		%feature("autodoc", "1");
		TopoDSToStep_MakeFaceError Error() const;

};
%extend TopoDSToStep_MakeStepFace {
	~TopoDSToStep_MakeStepFace() {
	printf("Call custom destructor for instance of TopoDSToStep_MakeStepFace\n");
	}
};

%nodefaultctor TopoDSToStep_MakeStepEdge;
class TopoDSToStep_MakeStepEdge : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepEdge();
		%feature("autodoc", "1");
		TopoDSToStep_MakeStepEdge(const TopoDS_Edge &E, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge &E, TopoDSToStep_Tool & T, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Value() const;
		%feature("autodoc", "1");
		TopoDSToStep_MakeEdgeError Error() const;

};
%extend TopoDSToStep_MakeStepEdge {
	~TopoDSToStep_MakeStepEdge() {
	printf("Call custom destructor for instance of TopoDSToStep_MakeStepEdge\n");
	}
};

%nodefaultctor TopoDSToStep_MakeGeometricCurveSet;
class TopoDSToStep_MakeGeometricCurveSet : public TopoDSToStep_Root {
	public:
		%feature("autodoc", "1");
		TopoDSToStep_MakeGeometricCurveSet(const TopoDS_Shape &SH, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		const Handle_StepShape_GeometricCurveSet & Value() const;

};
%extend TopoDSToStep_MakeGeometricCurveSet {
	~TopoDSToStep_MakeGeometricCurveSet() {
	printf("Call custom destructor for instance of TopoDSToStep_MakeGeometricCurveSet\n");
	}
};