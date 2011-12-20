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

%module Draft
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Draft_renames.i


%include Draft_required_python_modules.i


%include Draft_dependencies.i


%include Draft_headers.i


enum Draft_ErrorStatus {
	Draft_NoError,
	Draft_FaceRecomputation,
	Draft_EdgeRecomputation,
	Draft_VertexRecomputation,
	};



%nodefaultctor Handle_Draft_Modification;
class Handle_Draft_Modification : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		Handle_Draft_Modification();
		%feature("autodoc", "1");
		Handle_Draft_Modification(const Handle_Draft_Modification &aHandle);
		%feature("autodoc", "1");
		Handle_Draft_Modification(const Draft_Modification *anItem);
		%feature("autodoc", "1");
		Handle_Draft_Modification & operator=(const Handle_Draft_Modification &aHandle);
		%feature("autodoc", "1");
		Handle_Draft_Modification & operator=(const Draft_Modification *anItem);
		%feature("autodoc", "1");
		static		Handle_Draft_Modification DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Draft_Modification {
	Draft_Modification* GetObject() {
	return (Draft_Modification*)$self->Access();
	}
};
%feature("shadow") Handle_Draft_Modification::~Handle_Draft_Modification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Draft_Modification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo;
class Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo();
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo(const Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo &aHandle);
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo(const Draft_DataMapNodeOfDataMapOfFaceFaceInfo *anItem);
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo & operator=(const Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo &aHandle);
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo & operator=(const Draft_DataMapNodeOfDataMapOfFaceFaceInfo *anItem);
		%feature("autodoc", "1");
		static		Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo {
	Draft_DataMapNodeOfDataMapOfFaceFaceInfo* GetObject() {
	return (Draft_DataMapNodeOfDataMapOfFaceFaceInfo*)$self->Access();
	}
};
%feature("shadow") Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo::~Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo;
class Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo();
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo(const Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo &aHandle);
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo(const Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo *anItem);
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo & operator=(const Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo &aHandle);
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo & operator=(const Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo *anItem);
		%feature("autodoc", "1");
		static		Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo {
	Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo* GetObject() {
	return (Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo*)$self->Access();
	}
};
%feature("shadow") Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo::~Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo;
class Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo();
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo(const Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo &aHandle);
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo(const Draft_DataMapNodeOfDataMapOfVertexVertexInfo *anItem);
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo & operator=(const Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo &aHandle);
		%feature("autodoc", "1");
		Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo & operator=(const Draft_DataMapNodeOfDataMapOfVertexVertexInfo *anItem);
		%feature("autodoc", "1");
		static		Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo {
	Draft_DataMapNodeOfDataMapOfVertexVertexInfo* GetObject() {
	return (Draft_DataMapNodeOfDataMapOfVertexVertexInfo*)$self->Access();
	}
};
%feature("shadow") Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo::~Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_FaceInfo;
class Draft_FaceInfo {
	public:
		%feature("autodoc", "1");
		Draft_FaceInfo();
		%feature("autodoc", "1");
		Draft_FaceInfo(const Handle_Geom_Surface &S, const Standard_Boolean HasNewGeometry);
		%feature("autodoc", "1");
		void RootFace(const TopoDS_Face F);
		%feature("autodoc", "1");
		Standard_Boolean NewGeometry() const;
		%feature("autodoc", "1");
		void Add(const TopoDS_Face F);
		%feature("autodoc", "1");
		const TopoDS_Face  FirstFace() const;
		%feature("autodoc", "1");
		const TopoDS_Face  SecondFace() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Geometry() const;
		%feature("autodoc", "1");
		Handle_Geom_Surface & ChangeGeometry();
		%feature("autodoc", "1");
		const TopoDS_Face  RootFace() const;
		%feature("autodoc", "1");
		Handle_Geom_Curve & ChangeCurve();
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Curve() const;

};
%feature("shadow") Draft_FaceInfo::~Draft_FaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_FaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_DataMapOfEdgeEdgeInfo;
class Draft_DataMapOfEdgeEdgeInfo : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Draft_DataMapOfEdgeEdgeInfo(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Draft_DataMapOfEdgeEdgeInfo & Assign(const Draft_DataMapOfEdgeEdgeInfo &Other);
		%feature("autodoc", "1");
		Draft_DataMapOfEdgeEdgeInfo & operator=(const Draft_DataMapOfEdgeEdgeInfo &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Edge K, const Draft_EdgeInfo &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Edge K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Edge K);
		%feature("autodoc", "1");
		const Draft_EdgeInfo & Find(const TopoDS_Edge K) const;
		%feature("autodoc", "1");
		const Draft_EdgeInfo & operator()(const TopoDS_Edge K) const;
		%feature("autodoc", "1");
		Draft_EdgeInfo & ChangeFind(const TopoDS_Edge K);
		%feature("autodoc", "1");
		Draft_EdgeInfo & operator()(const TopoDS_Edge K);

};
%feature("shadow") Draft_DataMapOfEdgeEdgeInfo::~Draft_DataMapOfEdgeEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_DataMapOfEdgeEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_DataMapIteratorOfDataMapOfFaceFaceInfo;
class Draft_DataMapIteratorOfDataMapOfFaceFaceInfo : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Draft_DataMapIteratorOfDataMapOfFaceFaceInfo();
		%feature("autodoc", "1");
		Draft_DataMapIteratorOfDataMapOfFaceFaceInfo(const Draft_DataMapOfFaceFaceInfo &aMap);
		%feature("autodoc", "1");
		void Initialize(const Draft_DataMapOfFaceFaceInfo &aMap);
		%feature("autodoc", "1");
		const TopoDS_Face  Key() const;
		%feature("autodoc", "1");
		const Draft_FaceInfo & Value() const;

};
%feature("shadow") Draft_DataMapIteratorOfDataMapOfFaceFaceInfo::~Draft_DataMapIteratorOfDataMapOfFaceFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_DataMapIteratorOfDataMapOfFaceFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_Modification;
class Draft_Modification : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		Draft_Modification(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean Add(const TopoDS_Face F, const gp_Dir Direction, const Standard_Real Angle, const gp_Pln NeutralPlane, const Standard_Boolean Flag=1);
		%feature("autodoc", "1");
		void Remove(const TopoDS_Face F);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Draft_ErrorStatus Error() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  ProblematicShape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & ConnectedFaces(const TopoDS_Face F);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & ModifiedFaces();
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
%extend Draft_Modification {
	Handle_Draft_Modification GetHandle() {
	return *(Handle_Draft_Modification*) &$self;
	}
};
%extend Draft_Modification {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Draft_Modification::~Draft_Modification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_Modification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_DataMapNodeOfDataMapOfVertexVertexInfo;
class Draft_DataMapNodeOfDataMapOfVertexVertexInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Draft_DataMapNodeOfDataMapOfVertexVertexInfo(const TopoDS_Vertex K, const Draft_VertexInfo &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Vertex  Key() const;
		%feature("autodoc", "1");
		Draft_VertexInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Draft_DataMapNodeOfDataMapOfVertexVertexInfo {
	Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo GetHandle() {
	return *(Handle_Draft_DataMapNodeOfDataMapOfVertexVertexInfo*) &$self;
	}
};
%extend Draft_DataMapNodeOfDataMapOfVertexVertexInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Draft_DataMapNodeOfDataMapOfVertexVertexInfo::~Draft_DataMapNodeOfDataMapOfVertexVertexInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_DataMapNodeOfDataMapOfVertexVertexInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_DataMapIteratorOfDataMapOfVertexVertexInfo;
class Draft_DataMapIteratorOfDataMapOfVertexVertexInfo : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Draft_DataMapIteratorOfDataMapOfVertexVertexInfo();
		%feature("autodoc", "1");
		Draft_DataMapIteratorOfDataMapOfVertexVertexInfo(const Draft_DataMapOfVertexVertexInfo &aMap);
		%feature("autodoc", "1");
		void Initialize(const Draft_DataMapOfVertexVertexInfo &aMap);
		%feature("autodoc", "1");
		const TopoDS_Vertex  Key() const;
		%feature("autodoc", "1");
		const Draft_VertexInfo & Value() const;

};
%feature("shadow") Draft_DataMapIteratorOfDataMapOfVertexVertexInfo::~Draft_DataMapIteratorOfDataMapOfVertexVertexInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_DataMapIteratorOfDataMapOfVertexVertexInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_DataMapIteratorOfDataMapOfEdgeEdgeInfo;
class Draft_DataMapIteratorOfDataMapOfEdgeEdgeInfo : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Draft_DataMapIteratorOfDataMapOfEdgeEdgeInfo();
		%feature("autodoc", "1");
		Draft_DataMapIteratorOfDataMapOfEdgeEdgeInfo(const Draft_DataMapOfEdgeEdgeInfo &aMap);
		%feature("autodoc", "1");
		void Initialize(const Draft_DataMapOfEdgeEdgeInfo &aMap);
		%feature("autodoc", "1");
		const TopoDS_Edge  Key() const;
		%feature("autodoc", "1");
		const Draft_EdgeInfo & Value() const;

};
%feature("shadow") Draft_DataMapIteratorOfDataMapOfEdgeEdgeInfo::~Draft_DataMapIteratorOfDataMapOfEdgeEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_DataMapIteratorOfDataMapOfEdgeEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo;
class Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo(const TopoDS_Edge K, const Draft_EdgeInfo &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Edge  Key() const;
		%feature("autodoc", "1");
		Draft_EdgeInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo {
	Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo GetHandle() {
	return *(Handle_Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo*) &$self;
	}
};
%extend Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo::~Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_DataMapNodeOfDataMapOfEdgeEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_VertexInfo;
class Draft_VertexInfo {
	public:
		%feature("autodoc", "1");
		Draft_VertexInfo();
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge E);
		%feature("autodoc", "1");
		const gp_Pnt  Geometry() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const TopoDS_Edge E);
		%feature("autodoc", "1");
		void InitEdgeIterator();
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		Standard_Boolean MoreEdge() const;
		%feature("autodoc", "1");
		gp_Pnt  ChangeGeometry();
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeParameter(const TopoDS_Edge E) {
				return (Standard_Real) $self->ChangeParameter(E);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeParameter(Standard_Real value ,const TopoDS_Edge E) {
				$self->ChangeParameter(E)=value;
				}
		};

};
%feature("shadow") Draft_VertexInfo::~Draft_VertexInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_VertexInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_EdgeInfo;
class Draft_EdgeInfo {
	public:
		%feature("autodoc", "1");
		Draft_EdgeInfo();
		%feature("autodoc", "1");
		Draft_EdgeInfo(const Standard_Boolean HasNewGeometry);
		%feature("autodoc", "1");
		void Add(const TopoDS_Face F);
		%feature("autodoc", "1");
		void RootFace(const TopoDS_Face F);
		%feature("autodoc", "1");
		void Tangent(const gp_Pnt P);
		%feature("autodoc", "1");
		Standard_Boolean IsTangent(gp_Pnt & P) const;
		%feature("autodoc", "1");
		Standard_Boolean NewGeometry() const;
		%feature("autodoc", "1");
		void SetNewGeometry(const Standard_Boolean NewGeom);
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Geometry() const;
		%feature("autodoc", "1");
		const TopoDS_Face  FirstFace() const;
		%feature("autodoc", "1");
		const TopoDS_Face  SecondFace() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & FirstPC() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & SecondPC() const;
		%feature("autodoc", "1");
		Handle_Geom_Curve & ChangeGeometry();
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangeFirstPC();
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangeSecondPC();
		%feature("autodoc", "1");
		const TopoDS_Face  RootFace() const;
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real tol);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;

};
%feature("shadow") Draft_EdgeInfo::~Draft_EdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_EdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_DataMapOfFaceFaceInfo;
class Draft_DataMapOfFaceFaceInfo : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Draft_DataMapOfFaceFaceInfo(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Draft_DataMapOfFaceFaceInfo & Assign(const Draft_DataMapOfFaceFaceInfo &Other);
		%feature("autodoc", "1");
		Draft_DataMapOfFaceFaceInfo & operator=(const Draft_DataMapOfFaceFaceInfo &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Face K, const Draft_FaceInfo &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Face K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Face K);
		%feature("autodoc", "1");
		const Draft_FaceInfo & Find(const TopoDS_Face K) const;
		%feature("autodoc", "1");
		const Draft_FaceInfo & operator()(const TopoDS_Face K) const;
		%feature("autodoc", "1");
		Draft_FaceInfo & ChangeFind(const TopoDS_Face K);
		%feature("autodoc", "1");
		Draft_FaceInfo & operator()(const TopoDS_Face K);

};
%feature("shadow") Draft_DataMapOfFaceFaceInfo::~Draft_DataMapOfFaceFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_DataMapOfFaceFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_DataMapNodeOfDataMapOfFaceFaceInfo;
class Draft_DataMapNodeOfDataMapOfFaceFaceInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Draft_DataMapNodeOfDataMapOfFaceFaceInfo(const TopoDS_Face K, const Draft_FaceInfo &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Face  Key() const;
		%feature("autodoc", "1");
		Draft_FaceInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Draft_DataMapNodeOfDataMapOfFaceFaceInfo {
	Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo GetHandle() {
	return *(Handle_Draft_DataMapNodeOfDataMapOfFaceFaceInfo*) &$self;
	}
};
%extend Draft_DataMapNodeOfDataMapOfFaceFaceInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Draft_DataMapNodeOfDataMapOfFaceFaceInfo::~Draft_DataMapNodeOfDataMapOfFaceFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_DataMapNodeOfDataMapOfFaceFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft_DataMapOfVertexVertexInfo;
class Draft_DataMapOfVertexVertexInfo : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Draft_DataMapOfVertexVertexInfo(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Draft_DataMapOfVertexVertexInfo & Assign(const Draft_DataMapOfVertexVertexInfo &Other);
		%feature("autodoc", "1");
		Draft_DataMapOfVertexVertexInfo & operator=(const Draft_DataMapOfVertexVertexInfo &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Vertex K, const Draft_VertexInfo &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Vertex K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Vertex K);
		%feature("autodoc", "1");
		const Draft_VertexInfo & Find(const TopoDS_Vertex K) const;
		%feature("autodoc", "1");
		const Draft_VertexInfo & operator()(const TopoDS_Vertex K) const;
		%feature("autodoc", "1");
		Draft_VertexInfo & ChangeFind(const TopoDS_Vertex K);
		%feature("autodoc", "1");
		Draft_VertexInfo & operator()(const TopoDS_Vertex K);

};
%feature("shadow") Draft_DataMapOfVertexVertexInfo::~Draft_DataMapOfVertexVertexInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft_DataMapOfVertexVertexInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Draft;
class Draft {
	public:
		%feature("autodoc", "1");
		Draft();
		%feature("autodoc", "1");
		static		Standard_Real Angle(const TopoDS_Face F, const gp_Dir Direction);

};
%feature("shadow") Draft::~Draft %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Draft {
	void _kill_pointed() {
		delete $self;
	}
};
