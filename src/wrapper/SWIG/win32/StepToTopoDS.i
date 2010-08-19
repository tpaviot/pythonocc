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

%module StepToTopoDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StepToTopoDS_renames.i


%include StepToTopoDS_required_python_modules.i


%include StepToTopoDS_dependencies.i


%include StepToTopoDS_headers.i


enum StepToTopoDS_TranslateEdgeError {
	StepToTopoDS_TranslateEdgeDone,
	StepToTopoDS_TranslateEdgeOther,
	};

enum StepToTopoDS_BuilderError {
	StepToTopoDS_BuilderDone,
	StepToTopoDS_BuilderOther,
	};

enum StepToTopoDS_GeometricToolError {
	StepToTopoDS_GeometricToolDone,
	StepToTopoDS_GeometricToolIsDegenerated,
	StepToTopoDS_GeometricToolHasNoPCurve,
	StepToTopoDS_GeometricToolWrong3dParameters,
	StepToTopoDS_GeometricToolNoProjectiOnCurve,
	StepToTopoDS_GeometricToolOther,
	};

enum StepToTopoDS_TranslateVertexError {
	StepToTopoDS_TranslateVertexDone,
	StepToTopoDS_TranslateVertexOther,
	};

enum StepToTopoDS_TranslateFaceError {
	StepToTopoDS_TranslateFaceDone,
	StepToTopoDS_TranslateFaceOther,
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
		Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI & operator=(const Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI &aHandle);
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI & operator=(const StepToTopoDS_DataMapNodeOfDataMapOfTRI *anItem);
		%feature("autodoc", "1");
		static		Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI {
	StepToTopoDS_DataMapNodeOfDataMapOfTRI* GetObject() {
	return (StepToTopoDS_DataMapNodeOfDataMapOfTRI*)$self->Access();
	}
};
%feature("shadow") Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI::~Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI {
	void _kill_pointed() {
		delete $self;
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
		Handle_StepToTopoDS_DataMapNodeOfPointVertexMap & operator=(const Handle_StepToTopoDS_DataMapNodeOfPointVertexMap &aHandle);
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfPointVertexMap & operator=(const StepToTopoDS_DataMapNodeOfPointVertexMap *anItem);
		%feature("autodoc", "1");
		static		Handle_StepToTopoDS_DataMapNodeOfPointVertexMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepToTopoDS_DataMapNodeOfPointVertexMap {
	StepToTopoDS_DataMapNodeOfPointVertexMap* GetObject() {
	return (StepToTopoDS_DataMapNodeOfPointVertexMap*)$self->Access();
	}
};
%feature("shadow") Handle_StepToTopoDS_DataMapNodeOfPointVertexMap::~Handle_StepToTopoDS_DataMapNodeOfPointVertexMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepToTopoDS_DataMapNodeOfPointVertexMap {
	void _kill_pointed() {
		delete $self;
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
		Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap & operator=(const Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap &aHandle);
		%feature("autodoc", "1");
		Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap & operator=(const StepToTopoDS_DataMapNodeOfPointEdgeMap *anItem);
		%feature("autodoc", "1");
		static		Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap {
	StepToTopoDS_DataMapNodeOfPointEdgeMap* GetObject() {
	return (StepToTopoDS_DataMapNodeOfPointEdgeMap*)$self->Access();
	}
};
%feature("shadow") Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap::~Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_DataMapIteratorOfPointEdgeMap::~StepToTopoDS_DataMapIteratorOfPointEdgeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_DataMapIteratorOfPointEdgeMap {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_Tool::~StepToTopoDS_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_Tool {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_Root::~StepToTopoDS_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_Root {
	void _kill_pointed() {
		delete $self;
	}
};
%extend StepToTopoDS_Root {
	StepToTopoDS_Root () {}
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
%feature("shadow") StepToTopoDS_TranslateEdge::~StepToTopoDS_TranslateEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_TranslateEdge {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_TranslateShell::~StepToTopoDS_TranslateShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_TranslateShell {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_DataMapIteratorOfPointVertexMap::~StepToTopoDS_DataMapIteratorOfPointVertexMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_DataMapIteratorOfPointVertexMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToTopoDS_CartesianPointHasher;
class StepToTopoDS_CartesianPointHasher {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_CartesianPointHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Handle_StepGeom_CartesianPoint &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Handle_StepGeom_CartesianPoint &K1, const Handle_StepGeom_CartesianPoint &K2);

};
%feature("shadow") StepToTopoDS_CartesianPointHasher::~StepToTopoDS_CartesianPointHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_CartesianPointHasher {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_DataMapIteratorOfDataMapOfTRI::~StepToTopoDS_DataMapIteratorOfDataMapOfTRI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_DataMapIteratorOfDataMapOfTRI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToTopoDS_PointPairHasher;
class StepToTopoDS_PointPairHasher {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_PointPairHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const StepToTopoDS_PointPair &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const StepToTopoDS_PointPair &K1, const StepToTopoDS_PointPair &K2);

};
%feature("shadow") StepToTopoDS_PointPairHasher::~StepToTopoDS_PointPairHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_PointPairHasher {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_DataMapNodeOfPointVertexMap::~StepToTopoDS_DataMapNodeOfPointVertexMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_DataMapNodeOfPointVertexMap {
	void _kill_pointed() {
		delete $self;
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
		StepToTopoDS_DataMapOfTRI & operator=(const StepToTopoDS_DataMapOfTRI &Other);
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
%feature("shadow") StepToTopoDS_DataMapOfTRI::~StepToTopoDS_DataMapOfTRI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_DataMapOfTRI {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_TranslateFace::~StepToTopoDS_TranslateFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_TranslateFace {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_TranslatePolyLoop::~StepToTopoDS_TranslatePolyLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_TranslatePolyLoop {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_TranslateCompositeCurve::~StepToTopoDS_TranslateCompositeCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_TranslateCompositeCurve {
	void _kill_pointed() {
		delete $self;
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
		StepToTopoDS_PointVertexMap & operator=(const StepToTopoDS_PointVertexMap &Other);
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
%feature("shadow") StepToTopoDS_PointVertexMap::~StepToTopoDS_PointVertexMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_PointVertexMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToTopoDS_PointPair;
class StepToTopoDS_PointPair {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_PointPair(const Handle_StepGeom_CartesianPoint &P1, const Handle_StepGeom_CartesianPoint &P2);

};
%feature("shadow") StepToTopoDS_PointPair::~StepToTopoDS_PointPair %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_PointPair {
	void _kill_pointed() {
		delete $self;
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
		StepToTopoDS_PointEdgeMap & operator=(const StepToTopoDS_PointEdgeMap &Other);
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
%feature("shadow") StepToTopoDS_PointEdgeMap::~StepToTopoDS_PointEdgeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_PointEdgeMap {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_MakeTransformed::~StepToTopoDS_MakeTransformed %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_MakeTransformed {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_TranslateCurveBoundedSurface::~StepToTopoDS_TranslateCurveBoundedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_TranslateCurveBoundedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToTopoDS_GeometricTool;
class StepToTopoDS_GeometricTool {
	public:
		%feature("autodoc", "1");
		StepToTopoDS_GeometricTool();
		%feature("autodoc", "1");
		static		Standard_Integer PCurve(const Handle_StepGeom_SurfaceCurve &SC, const Handle_StepGeom_Surface &S, Handle_StepGeom_Pcurve & PC, const Standard_Integer last=0);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSeamCurve(const Handle_StepGeom_SurfaceCurve &SC, const Handle_StepGeom_Surface &S, const Handle_StepShape_Edge &E, const Handle_StepShape_EdgeLoop &EL);
		%feature("autodoc", "1");
		static		Standard_Boolean IsLikeSeam(const Handle_StepGeom_SurfaceCurve &SC, const Handle_StepGeom_Surface &S, const Handle_StepShape_Edge &E, const Handle_StepShape_EdgeLoop &EL);
		%feature("autodoc","UpdateParam3d(const C, Standard_Real preci) -> [Standard_Real, Standard_Real]");

		static		Standard_Boolean UpdateParam3d(const Handle_Geom_Curve &C, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Real preci);

};
%feature("shadow") StepToTopoDS_GeometricTool::~StepToTopoDS_GeometricTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_GeometricTool {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_TranslateVertex::~StepToTopoDS_TranslateVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_TranslateVertex {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_DataMapNodeOfDataMapOfTRI::~StepToTopoDS_DataMapNodeOfDataMapOfTRI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_DataMapNodeOfDataMapOfTRI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepToTopoDS;
class StepToTopoDS {
	public:
		%feature("autodoc", "1");
		StepToTopoDS();
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeBuilderError(const StepToTopoDS_BuilderError Error);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeShellError(const StepToTopoDS_TranslateShellError Error);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeFaceError(const StepToTopoDS_TranslateFaceError Error);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeEdgeError(const StepToTopoDS_TranslateEdgeError Error);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeVertexError(const StepToTopoDS_TranslateVertexError Error);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodeVertexLoopError(const StepToTopoDS_TranslateVertexLoopError Error);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DecodePolyLoopError(const StepToTopoDS_TranslatePolyLoopError Error);
		%feature("autodoc", "1");
		static		char * DecodeGeometricToolError(const StepToTopoDS_GeometricToolError Error);

};
%feature("shadow") StepToTopoDS::~StepToTopoDS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_TranslateEdgeLoop::~StepToTopoDS_TranslateEdgeLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_TranslateEdgeLoop {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_DataMapNodeOfPointEdgeMap::~StepToTopoDS_DataMapNodeOfPointEdgeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_DataMapNodeOfPointEdgeMap {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") StepToTopoDS_TranslateVertexLoop::~StepToTopoDS_TranslateVertexLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepToTopoDS_TranslateVertexLoop {
	void _kill_pointed() {
		delete $self;
	}
};
