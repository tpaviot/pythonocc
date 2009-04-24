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
%module StepToTopoDS

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
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

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include StepToTopoDS_dependencies.i


%include StepToTopoDS_headers.i


enum StepToTopoDS_GeometricToolError {
	StepToTopoDS_GeometricToolDone,
	StepToTopoDS_GeometricToolIsDegenerated,
	StepToTopoDS_GeometricToolHasNoPCurve,
	StepToTopoDS_GeometricToolWrong3dParameters,
	StepToTopoDS_GeometricToolNoProjectiOnCurve,
	StepToTopoDS_GeometricToolOther,
	};

enum StepToTopoDS_TranslateFaceError {
	StepToTopoDS_TranslateFaceDone,
	StepToTopoDS_TranslateFaceOther,
	};

enum StepToTopoDS_BuilderError {
	StepToTopoDS_BuilderDone,
	StepToTopoDS_BuilderOther,
	};

enum StepToTopoDS_TranslateEdgeError {
	StepToTopoDS_TranslateEdgeDone,
	StepToTopoDS_TranslateEdgeOther,
	};

enum StepToTopoDS_TranslateVertexError {
	StepToTopoDS_TranslateVertexDone,
	StepToTopoDS_TranslateVertexOther,
	};

enum StepToTopoDS_TranslateEdgeLoopError {
	StepToTopoDS_TranslateEdgeLoopDone,
	StepToTopoDS_TranslateEdgeLoopOther,
	};

enum StepToTopoDS_TranslatePolyLoopError {
	StepToTopoDS_TranslatePolyLoopDone,
	StepToTopoDS_TranslatePolyLoopOther,
	};

enum StepToTopoDS_TranslateVertexLoopError {
	StepToTopoDS_TranslateVertexLoopDone,
	StepToTopoDS_TranslateVertexLoopOther,
	};

enum StepToTopoDS_TranslateShellError {
	StepToTopoDS_TranslateShellDone,
	StepToTopoDS_TranslateShellOther,
	};



%nodefaultctor Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI;
class Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI();
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI(const Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI &aHandle);
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI(const StepToTopoDS_DataMapNodeOfDataMapOfTRI *anItem);
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI {
	StepToTopoDS_DataMapNodeOfDataMapOfTRI* GetObject() {
	return (StepToTopoDS_DataMapNodeOfDataMapOfTRI*)$self->Access();
	}
};
%extend Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI {
	~Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI\n");}
	}
};


%nodefaultctor Handle_StepToTopoDS_DataMapNodeOfPointVertexMap;
class Handle_StepToTopoDS_DataMapNodeOfPointVertexMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfPointVertexMap();
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfPointVertexMap(const Handle_StepToTopoDS_DataMapNodeOfPointVertexMap &aHandle);
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfPointVertexMap(const StepToTopoDS_DataMapNodeOfPointVertexMap *anItem);
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfPointVertexMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepToTopoDS_DataMapNodeOfPointVertexMap {
	StepToTopoDS_DataMapNodeOfPointVertexMap* GetObject() {
	return (StepToTopoDS_DataMapNodeOfPointVertexMap*)$self->Access();
	}
};
%extend Handle_StepToTopoDS_DataMapNodeOfPointVertexMap {
	~Handle_StepToTopoDS_DataMapNodeOfPointVertexMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepToTopoDS_DataMapNodeOfPointVertexMap\n");}
	}
};


%nodefaultctor Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap;
class Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap();
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap(const Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap &aHandle);
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap(const StepToTopoDS_DataMapNodeOfPointEdgeMap *anItem);
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap {
	StepToTopoDS_DataMapNodeOfPointEdgeMap* GetObject() {
	return (StepToTopoDS_DataMapNodeOfPointEdgeMap*)$self->Access();
	}
};
%extend Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap {
	~Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap\n");}
	}
};


%nodefaultctor StepToTopoDS_PointPair;
class StepToTopoDS_PointPair {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_PointPair(const Handle_StepGeom_CartesianPoint &P1, const Handle_StepGeom_CartesianPoint &P2);

};
%extend StepToTopoDS_PointPair {
	~StepToTopoDS_PointPair() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_PointPair\n");}
	}
};


%nodefaultctor StepToTopoDS_Root;
class StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Precision() const;
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Real MaxTol() const;
		%feature("autodoc", "1");
		void SetMaxTol(const Standard_Real maxpreci);

};
%extend StepToTopoDS_Root {
	~StepToTopoDS_Root() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_Root\n");}
	}
};


%nodefaultctor StepToTopoDS_TranslateShell;
class StepToTopoDS_TranslateShell : public StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_TranslateShell();
		%feature("autodoc", "1");
		StepToTopoDS_TranslateShell(const Handle_StepShape_ConnectedFaceSet &CFS, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_ConnectedFaceSet &CFS, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		StepToTopoDS_TranslateShellError Error() const;

};
%extend StepToTopoDS_TranslateShell {
	~StepToTopoDS_TranslateShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_TranslateShell\n");}
	}
};


%nodefaultctor StepToTopoDS_MakeTransformed;
class StepToTopoDS_MakeTransformed : public StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_MakeTransformed();
		%feature("autodoc", "1");
		Standard_Boolean Compute(const Handle_StepGeom_Axis2Placement3d &Origin, const Handle_StepGeom_Axis2Placement3d &Target);
		%feature("autodoc", "1");
		Standard_Boolean Compute(const Handle_StepGeom_CartesianTransformationOperator3d &Operator);
		%feature("autodoc", "1");
		const gp_Trsf & Transformation() const;
		%feature("autodoc", "1");
		Standard_Boolean Transform(TopoDS_Shape & shape) const;
		%feature("autodoc", "1");
		TopoDS_Shape TranslateMappedItem(const Handle_StepRepr_MappedItem &mapit, const Handle_Transfer_TransientProcess &TP);

};
%extend StepToTopoDS_MakeTransformed {
	~StepToTopoDS_MakeTransformed() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_MakeTransformed\n");}
	}
};


%nodefaultctor StepToTopoDS_Tool;
class StepToTopoDS_Tool {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_Tool();
		%feature("autodoc", "1");
		StepToTopoDS_Tool(const StepToTopoDS_DataMapOfTRI &Map, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		void Init(const StepToTopoDS_DataMapOfTRI &Map, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_StepShape_TopologicalRepresentationItem &TRI);
		%feature("autodoc", "1");
		void Bind(const Handle_StepShape_TopologicalRepresentationItem &TRI, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopoDS_Shape & Find(const Handle_StepShape_TopologicalRepresentationItem &TRI);
		%feature("autodoc", "1");
		void ClearEdgeMap();
		%feature("autodoc", "1");
		Standard_Boolean IsEdgeBound(const StepToTopoDS_PointPair &PP);
		%feature("autodoc", "1");
		void BindEdge(const StepToTopoDS_PointPair &PP, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		const TopoDS_Edge & FindEdge(const StepToTopoDS_PointPair &PP);
		%feature("autodoc", "1");
		void ClearVertexMap();
		%feature("autodoc", "1");
		Standard_Boolean IsVertexBound(const Handle_StepGeom_CartesianPoint &PG);
		%feature("autodoc", "1");
		void BindVertex(const Handle_StepGeom_CartesianPoint &P, const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		const TopoDS_Vertex & FindVertex(const Handle_StepGeom_CartesianPoint &P);
		%feature("autodoc", "1");
		void ComputePCurve(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean ComputePCurve() const;
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess TransientProcess() const;
		%feature("autodoc", "1");
		void AddContinuity(const Handle_Geom_Surface &GeomSurf);
		%feature("autodoc", "1");
		void AddContinuity(const Handle_Geom_Curve &GeomCurve);
		%feature("autodoc", "1");
		void AddContinuity(const Handle_Geom2d_Curve &GeomCur2d);
		%feature("autodoc", "1");
		Standard_Integer C0Surf() const;
		%feature("autodoc", "1");
		Standard_Integer C1Surf() const;
		%feature("autodoc", "1");
		Standard_Integer C2Surf() const;
		%feature("autodoc", "1");
		Standard_Integer C0Cur2() const;
		%feature("autodoc", "1");
		Standard_Integer C1Cur2() const;
		%feature("autodoc", "1");
		Standard_Integer C2Cur2() const;
		%feature("autodoc", "1");
		Standard_Integer C0Cur3() const;
		%feature("autodoc", "1");
		Standard_Integer C1Cur3() const;
		%feature("autodoc", "1");
		Standard_Integer C2Cur3() const;

};
%extend StepToTopoDS_Tool {
	~StepToTopoDS_Tool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_Tool\n");}
	}
};


%nodefaultctor StepToTopoDS_TranslateEdge;
class StepToTopoDS_TranslateEdge : public StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_TranslateEdge();
		%feature("autodoc", "1");
		StepToTopoDS_TranslateEdge(const Handle_StepShape_Edge &E, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_Edge &E, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		void MakeFromCurve3D(const Handle_StepGeom_Curve &C3D, const Handle_StepShape_EdgeCurve &EC, const Handle_StepShape_Vertex &Vend, const Standard_Real preci, TopoDS_Edge & E, TopoDS_Vertex & V1, TopoDS_Vertex & V2, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve MakePCurve(const Handle_StepGeom_Pcurve &PCU, const Handle_Geom_Surface &ConvSurf) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		StepToTopoDS_TranslateEdgeError Error() const;

};
%extend StepToTopoDS_TranslateEdge {
	~StepToTopoDS_TranslateEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_TranslateEdge\n");}
	}
};


%nodefaultctor StepToTopoDS_DataMapIteratorOfPointVertexMap;
class StepToTopoDS_DataMapIteratorOfPointVertexMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_DataMapIteratorOfPointVertexMap();
		%feature("autodoc", "1");
		StepToTopoDS_DataMapIteratorOfPointVertexMap(const StepToTopoDS_PointVertexMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const StepToTopoDS_PointVertexMap &aMap);
		%feature("autodoc", "1");
		const Handle_StepGeom_CartesianPoint & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & Value() const;

};
%extend StepToTopoDS_DataMapIteratorOfPointVertexMap {
	~StepToTopoDS_DataMapIteratorOfPointVertexMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_DataMapIteratorOfPointVertexMap\n");}
	}
};


%nodefaultctor StepToTopoDS_CartesianPointHasher;
class StepToTopoDS_CartesianPointHasher {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_CartesianPointHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Handle_StepGeom_CartesianPoint &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Handle_StepGeom_CartesianPoint &K1, const Handle_StepGeom_CartesianPoint &K2);

};
%extend StepToTopoDS_CartesianPointHasher {
	~StepToTopoDS_CartesianPointHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_CartesianPointHasher\n");}
	}
};


%nodefaultctor StepToTopoDS_DataMapNodeOfPointEdgeMap;
class StepToTopoDS_DataMapNodeOfPointEdgeMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_DataMapNodeOfPointEdgeMap(const StepToTopoDS_PointPair &K, const TopoDS_Edge &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		StepToTopoDS_PointPair & Key() const;
		%feature("autodoc", "1");
		TopoDS_Edge & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepToTopoDS_DataMapNodeOfPointEdgeMap {
	Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap GetHandle() {
	return *(Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap*) &$self;
	}
};
%extend StepToTopoDS_DataMapNodeOfPointEdgeMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepToTopoDS_DataMapNodeOfPointEdgeMap {
	~StepToTopoDS_DataMapNodeOfPointEdgeMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_DataMapNodeOfPointEdgeMap\n");}
	}
};


%nodefaultctor StepToTopoDS_DataMapNodeOfDataMapOfTRI;
class StepToTopoDS_DataMapNodeOfDataMapOfTRI : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_DataMapNodeOfDataMapOfTRI(const Handle_StepShape_TopologicalRepresentationItem &K, const TopoDS_Shape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem & Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepToTopoDS_DataMapNodeOfDataMapOfTRI {
	Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI GetHandle() {
	return *(Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI*) &$self;
	}
};
%extend StepToTopoDS_DataMapNodeOfDataMapOfTRI {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepToTopoDS_DataMapNodeOfDataMapOfTRI {
	~StepToTopoDS_DataMapNodeOfDataMapOfTRI() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_DataMapNodeOfDataMapOfTRI\n");}
	}
};


%nodefaultctor StepToTopoDS_DataMapIteratorOfDataMapOfTRI;
class StepToTopoDS_DataMapIteratorOfDataMapOfTRI : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_DataMapIteratorOfDataMapOfTRI();
		%feature("autodoc", "1");
		StepToTopoDS_DataMapIteratorOfDataMapOfTRI(const StepToTopoDS_DataMapOfTRI &aMap);
		%feature("autodoc", "1");
		void Initialize(const StepToTopoDS_DataMapOfTRI &aMap);
		%feature("autodoc", "1");
		const Handle_StepShape_TopologicalRepresentationItem & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;

};
%extend StepToTopoDS_DataMapIteratorOfDataMapOfTRI {
	~StepToTopoDS_DataMapIteratorOfDataMapOfTRI() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_DataMapIteratorOfDataMapOfTRI\n");}
	}
};


%nodefaultctor StepToTopoDS_PointPairHasher;
class StepToTopoDS_PointPairHasher {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_PointPairHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const StepToTopoDS_PointPair &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const StepToTopoDS_PointPair &K1, const StepToTopoDS_PointPair &K2);

};
%extend StepToTopoDS_PointPairHasher {
	~StepToTopoDS_PointPairHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_PointPairHasher\n");}
	}
};


%nodefaultctor StepToTopoDS_DataMapNodeOfPointVertexMap;
class StepToTopoDS_DataMapNodeOfPointVertexMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_DataMapNodeOfPointVertexMap(const Handle_StepGeom_CartesianPoint &K, const TopoDS_Vertex &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint & Key() const;
		%feature("autodoc", "1");
		TopoDS_Vertex & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepToTopoDS_DataMapNodeOfPointVertexMap {
	Handle_StepToTopoDS_DataMapNodeOfPointVertexMap GetHandle() {
	return *(Handle_StepToTopoDS_DataMapNodeOfPointVertexMap*) &$self;
	}
};
%extend StepToTopoDS_DataMapNodeOfPointVertexMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepToTopoDS_DataMapNodeOfPointVertexMap {
	~StepToTopoDS_DataMapNodeOfPointVertexMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_DataMapNodeOfPointVertexMap\n");}
	}
};


%nodefaultctor StepToTopoDS_DataMapOfTRI;
class StepToTopoDS_DataMapOfTRI : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_DataMapOfTRI(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		StepToTopoDS_DataMapOfTRI & Assign(const StepToTopoDS_DataMapOfTRI &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_StepShape_TopologicalRepresentationItem &K, const TopoDS_Shape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_StepShape_TopologicalRepresentationItem &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_StepShape_TopologicalRepresentationItem &K);
		%feature("autodoc", "1");
		const TopoDS_Shape & Find(const Handle_StepShape_TopologicalRepresentationItem &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const Handle_StepShape_TopologicalRepresentationItem &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeFind(const Handle_StepShape_TopologicalRepresentationItem &K);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const Handle_StepShape_TopologicalRepresentationItem &K);

};
%extend StepToTopoDS_DataMapOfTRI {
	~StepToTopoDS_DataMapOfTRI() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_DataMapOfTRI\n");}
	}
};


%nodefaultctor StepToTopoDS_TranslateFace;
class StepToTopoDS_TranslateFace : public StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_TranslateFace();
		%feature("autodoc", "1");
		StepToTopoDS_TranslateFace(const Handle_StepShape_FaceSurface &FS, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_FaceSurface &FS, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		StepToTopoDS_TranslateFaceError Error() const;

};
%extend StepToTopoDS_TranslateFace {
	~StepToTopoDS_TranslateFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_TranslateFace\n");}
	}
};


%nodefaultctor StepToTopoDS_TranslatePolyLoop;
class StepToTopoDS_TranslatePolyLoop : public StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_TranslatePolyLoop();
		%feature("autodoc", "1");
		StepToTopoDS_TranslatePolyLoop(const Handle_StepShape_PolyLoop &PL, StepToTopoDS_Tool & T, const Handle_Geom_Surface &S, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_PolyLoop &PL, StepToTopoDS_Tool & T, const Handle_Geom_Surface &S, const TopoDS_Face &F);
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		StepToTopoDS_TranslatePolyLoopError Error() const;

};
%extend StepToTopoDS_TranslatePolyLoop {
	~StepToTopoDS_TranslatePolyLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_TranslatePolyLoop\n");}
	}
};


%nodefaultctor StepToTopoDS_TranslateCompositeCurve;
class StepToTopoDS_TranslateCompositeCurve : public StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_TranslateCompositeCurve();
		%feature("autodoc", "1");
		StepToTopoDS_TranslateCompositeCurve(const Handle_StepGeom_CompositeCurve &CC, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		StepToTopoDS_TranslateCompositeCurve(const Handle_StepGeom_CompositeCurve &CC, const Handle_Transfer_TransientProcess &TP, const Handle_StepGeom_Surface &S, const Handle_Geom_Surface &Surf);
		%feature("autodoc", "1");
		Standard_Boolean Init(const Handle_StepGeom_CompositeCurve &CC, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		Standard_Boolean Init(const Handle_StepGeom_CompositeCurve &CC, const Handle_Transfer_TransientProcess &TP, const Handle_StepGeom_Surface &S, const Handle_Geom_Surface &Surf);
		%feature("autodoc", "1");
		const TopoDS_Wire & Value() const;

};
%extend StepToTopoDS_TranslateCompositeCurve {
	~StepToTopoDS_TranslateCompositeCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_TranslateCompositeCurve\n");}
	}
};


%nodefaultctor StepToTopoDS_PointVertexMap;
class StepToTopoDS_PointVertexMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_PointVertexMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		StepToTopoDS_PointVertexMap & Assign(const StepToTopoDS_PointVertexMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_StepGeom_CartesianPoint &K, const TopoDS_Vertex &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_StepGeom_CartesianPoint &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_StepGeom_CartesianPoint &K);
		%feature("autodoc", "1");
		const TopoDS_Vertex & Find(const Handle_StepGeom_CartesianPoint &K) const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & operator()(const Handle_StepGeom_CartesianPoint &K) const;
		%feature("autodoc", "1");
		TopoDS_Vertex & ChangeFind(const Handle_StepGeom_CartesianPoint &K);
		%feature("autodoc", "1");
		TopoDS_Vertex & operator()(const Handle_StepGeom_CartesianPoint &K);

};
%extend StepToTopoDS_PointVertexMap {
	~StepToTopoDS_PointVertexMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_PointVertexMap\n");}
	}
};


%nodefaultctor StepToTopoDS_TranslateEdgeLoop;
class StepToTopoDS_TranslateEdgeLoop : public StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_TranslateEdgeLoop();
		%feature("autodoc", "1");
		StepToTopoDS_TranslateEdgeLoop(const Handle_StepShape_FaceBound &FB, const TopoDS_Face &F, const Handle_Geom_Surface &S, const Handle_StepGeom_Surface &SS, const Standard_Boolean ss, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_FaceBound &FB, const TopoDS_Face &F, const Handle_Geom_Surface &S, const Handle_StepGeom_Surface &SS, const Standard_Boolean ss, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		StepToTopoDS_TranslateEdgeLoopError Error() const;

};
%extend StepToTopoDS_TranslateEdgeLoop {
	~StepToTopoDS_TranslateEdgeLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_TranslateEdgeLoop\n");}
	}
};


%nodefaultctor StepToTopoDS_DataMapIteratorOfPointEdgeMap;
class StepToTopoDS_DataMapIteratorOfPointEdgeMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_DataMapIteratorOfPointEdgeMap();
		%feature("autodoc", "1");
		StepToTopoDS_DataMapIteratorOfPointEdgeMap(const StepToTopoDS_PointEdgeMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const StepToTopoDS_PointEdgeMap &aMap);
		%feature("autodoc", "1");
		const StepToTopoDS_PointPair & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Value() const;

};
%extend StepToTopoDS_DataMapIteratorOfPointEdgeMap {
	~StepToTopoDS_DataMapIteratorOfPointEdgeMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_DataMapIteratorOfPointEdgeMap\n");}
	}
};


%nodefaultctor StepToTopoDS_GeometricTool;
class StepToTopoDS_GeometricTool {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_GeometricTool();
		%feature("autodoc", "1");
		Standard_Integer PCurve(const Handle_StepGeom_SurfaceCurve &SC, const Handle_StepGeom_Surface &S, Handle_StepGeom_Pcurve & PC, const Standard_Integer last=0);
		%feature("autodoc", "1");
		Standard_Boolean IsSeamCurve(const Handle_StepGeom_SurfaceCurve &SC, const Handle_StepGeom_Surface &S, const Handle_StepShape_Edge &E, const Handle_StepShape_EdgeLoop &EL);
		%feature("autodoc", "1");
		Standard_Boolean IsLikeSeam(const Handle_StepGeom_SurfaceCurve &SC, const Handle_StepGeom_Surface &S, const Handle_StepShape_Edge &E, const Handle_StepShape_EdgeLoop &EL);
		%feature("autodoc", "1");
		Standard_Boolean UpdateParam3d(const Handle_Geom_Curve &C, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Real preci);

};
%extend StepToTopoDS_GeometricTool {
	~StepToTopoDS_GeometricTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_GeometricTool\n");}
	}
};


%nodefaultctor StepToTopoDS_PointEdgeMap;
class StepToTopoDS_PointEdgeMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_PointEdgeMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		StepToTopoDS_PointEdgeMap & Assign(const StepToTopoDS_PointEdgeMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const StepToTopoDS_PointPair &K, const TopoDS_Edge &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const StepToTopoDS_PointPair &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const StepToTopoDS_PointPair &K);
		%feature("autodoc", "1");
		const TopoDS_Edge & Find(const StepToTopoDS_PointPair &K) const;
		%feature("autodoc", "1");
		const TopoDS_Edge & operator()(const StepToTopoDS_PointPair &K) const;
		%feature("autodoc", "1");
		TopoDS_Edge & ChangeFind(const StepToTopoDS_PointPair &K);
		%feature("autodoc", "1");
		TopoDS_Edge & operator()(const StepToTopoDS_PointPair &K);

};
%extend StepToTopoDS_PointEdgeMap {
	~StepToTopoDS_PointEdgeMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_PointEdgeMap\n");}
	}
};


%nodefaultctor StepToTopoDS_TranslateVertex;
class StepToTopoDS_TranslateVertex : public StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_TranslateVertex();
		%feature("autodoc", "1");
		StepToTopoDS_TranslateVertex(const Handle_StepShape_Vertex &V, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_Vertex &V, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		StepToTopoDS_TranslateVertexError Error() const;

};
%extend StepToTopoDS_TranslateVertex {
	~StepToTopoDS_TranslateVertex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_TranslateVertex\n");}
	}
};


%nodefaultctor StepToTopoDS_TranslateCurveBoundedSurface;
class StepToTopoDS_TranslateCurveBoundedSurface : public StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_TranslateCurveBoundedSurface();
		%feature("autodoc", "1");
		StepToTopoDS_TranslateCurveBoundedSurface(const Handle_StepGeom_CurveBoundedSurface &CBS, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		Standard_Boolean Init(const Handle_StepGeom_CurveBoundedSurface &CBS, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		const TopoDS_Face & Value() const;

};
%extend StepToTopoDS_TranslateCurveBoundedSurface {
	~StepToTopoDS_TranslateCurveBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_TranslateCurveBoundedSurface\n");}
	}
};


%nodefaultctor StepToTopoDS;
class StepToTopoDS {
	public:
		%feature("autodoc", "1");
		StepToTopoDS();
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeBuilderError(const StepToTopoDS_BuilderError Error);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeShellError(const StepToTopoDS_TranslateShellError Error);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeFaceError(const StepToTopoDS_TranslateFaceError Error);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeEdgeError(const StepToTopoDS_TranslateEdgeError Error);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeVertexError(const StepToTopoDS_TranslateVertexError Error);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodeVertexLoopError(const StepToTopoDS_TranslateVertexLoopError Error);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DecodePolyLoopError(const StepToTopoDS_TranslatePolyLoopError Error);
		%feature("autodoc", "1");
		char * DecodeGeometricToolError(const StepToTopoDS_GeometricToolError Error);

};
%extend StepToTopoDS {
	~StepToTopoDS() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS\n");}
	}
};


%nodefaultctor StepToTopoDS_TranslateVertexLoop;
class StepToTopoDS_TranslateVertexLoop : public StepToTopoDS_Root {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_TranslateVertexLoop();
		%feature("autodoc", "1");
		StepToTopoDS_TranslateVertexLoop(const Handle_StepShape_VertexLoop &VL, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_VertexLoop &VL, StepToTopoDS_Tool & T);
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		StepToTopoDS_TranslateVertexLoopError Error() const;

};
%extend StepToTopoDS_TranslateVertexLoop {
	~StepToTopoDS_TranslateVertexLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepToTopoDS_TranslateVertexLoop\n");}
	}
};
