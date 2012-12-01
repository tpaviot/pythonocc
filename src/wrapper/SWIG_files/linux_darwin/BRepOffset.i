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

%module BRepOffset
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepOffset_renames.i


%include BRepOffset_required_python_modules.i


%include BRepOffset_dependencies.i


%include BRepOffset_headers.i


enum BRepOffset_Mode {
	BRepOffset_Skin,
	BRepOffset_Pipe,
	BRepOffset_RectoVerso,
	};

enum BRepOffset_Error {
	BRepOffset_NoError,
	BRepOffset_OffsetSurfaceFailed,
	BRepOffset_UnCorrectClosingFace,
	BRepOffset_ExtentFaceFailed,
	BRepOffset_RadiusEqualOffset,
	BRepOffset_UnknownError,
	};

enum BRepOffset_Type {
	BRepOffset_Concave,
	BRepOffset_Convex,
	BRepOffset_Tangent,
	BRepOffset_FreeBoundary,
	BRepOffset_Other,
	};

enum BRepOffset_Status {
	BRepOffset_Good,
	BRepOffset_Reversed,
	BRepOffset_Degenerated,
	BRepOffset_Unknown,
	};



%nodefaultctor Handle_BRepOffset_ListNodeOfListOfInterval;
class Handle_BRepOffset_ListNodeOfListOfInterval : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffset_ListNodeOfListOfInterval();
		%feature("autodoc", "1");
		Handle_BRepOffset_ListNodeOfListOfInterval(const Handle_BRepOffset_ListNodeOfListOfInterval &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_ListNodeOfListOfInterval(const BRepOffset_ListNodeOfListOfInterval *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffset_ListNodeOfListOfInterval & operator=(const Handle_BRepOffset_ListNodeOfListOfInterval &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_ListNodeOfListOfInterval & operator=(const BRepOffset_ListNodeOfListOfInterval *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepOffset_ListNodeOfListOfInterval DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffset_ListNodeOfListOfInterval {
	BRepOffset_ListNodeOfListOfInterval* GetObject() {
	return (BRepOffset_ListNodeOfListOfInterval*)$self->Access();
	}
};
%feature("shadow") Handle_BRepOffset_ListNodeOfListOfInterval::~Handle_BRepOffset_ListNodeOfListOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepOffset_ListNodeOfListOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset;
class Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset();
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset(const Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset(const BRepOffset_DataMapNodeOfDataMapOfShapeOffset *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset & operator=(const Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset & operator=(const BRepOffset_DataMapNodeOfDataMapOfShapeOffset *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset {
	BRepOffset_DataMapNodeOfDataMapOfShapeOffset* GetObject() {
	return (BRepOffset_DataMapNodeOfDataMapOfShapeOffset*)$self->Access();
	}
};
%feature("shadow") Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset::~Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval;
class Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval();
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval(const Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval(const BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval & operator=(const Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval & operator=(const BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval {
	BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval* GetObject() {
	return (BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval*)$self->Access();
	}
};
%feature("shadow") Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval::~Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape;
class Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape();
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape(const Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape(const BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape & operator=(const Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape & operator=(const BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape {
	BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape* GetObject() {
	return (BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape::~Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_Analyse;
class BRepOffset_Analyse {
	public:
		%feature("autodoc", "1");
		BRepOffset_Analyse();
		%feature("autodoc", "1");
		BRepOffset_Analyse(const TopoDS_Shape S, const Standard_Real Angle);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape S, const Standard_Real Angle);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepOffset_ListOfInterval & Type(const TopoDS_Edge E) const;
		%feature("autodoc", "1");
		void Edges(const TopoDS_Vertex V, const BRepOffset_Type T, TopTools_ListOfShape & L) const;
		%feature("autodoc", "1");
		void Edges(const TopoDS_Face F, const BRepOffset_Type T, TopTools_ListOfShape & L) const;
		%feature("autodoc", "1");
		void TangentEdges(const TopoDS_Edge Edge, const TopoDS_Vertex Vertex, TopTools_ListOfShape & Edges) const;
		%feature("autodoc", "1");
		Standard_Boolean HasAncestor(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Ancestors(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		void Explode(TopTools_ListOfShape & L, const BRepOffset_Type Type) const;
		%feature("autodoc", "1");
		void Explode(TopTools_ListOfShape & L, const BRepOffset_Type Type1, const BRepOffset_Type Type2) const;
		%feature("autodoc", "1");
		void AddFaces(const TopoDS_Face Face, TopoDS_Compound & Co, TopTools_MapOfShape & Map, const BRepOffset_Type Type) const;
		%feature("autodoc", "1");
		void AddFaces(const TopoDS_Face Face, TopoDS_Compound & Co, TopTools_MapOfShape & Map, const BRepOffset_Type Type1, const BRepOffset_Type Type2) const;

};
%feature("shadow") BRepOffset_Analyse::~BRepOffset_Analyse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_Analyse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_ListIteratorOfListOfInterval;
class BRepOffset_ListIteratorOfListOfInterval {
	public:
		%feature("autodoc", "1");
		BRepOffset_ListIteratorOfListOfInterval();
		%feature("autodoc", "1");
		BRepOffset_ListIteratorOfListOfInterval(const BRepOffset_ListOfInterval &L);
		%feature("autodoc", "1");
		void Initialize(const BRepOffset_ListOfInterval &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BRepOffset_Interval & Value() const;

};
%feature("shadow") BRepOffset_ListIteratorOfListOfInterval::~BRepOffset_ListIteratorOfListOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_ListIteratorOfListOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_MakeOffset;
class BRepOffset_MakeOffset {
	public:
		%feature("autodoc", "1");
		BRepOffset_MakeOffset();
		%feature("autodoc", "1");
		BRepOffset_MakeOffset(const TopoDS_Shape S, const Standard_Real Offset, const Standard_Real Tol, const BRepOffset_Mode Mode=BRepOffset_Skin, const Standard_Boolean Intersection=0, const Standard_Boolean SelfInter=0, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean Thickening=0);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Shape S, const Standard_Real Offset, const Standard_Real Tol, const BRepOffset_Mode Mode=BRepOffset_Skin, const Standard_Boolean Intersection=0, const Standard_Boolean SelfInter=0, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean Thickening=0);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void AddFace(const TopoDS_Face F);
		%feature("autodoc", "1");
		void SetOffsetOnFace(const TopoDS_Face F, const Standard_Real Off);
		%feature("autodoc", "1");
		void MakeOffsetShape();
		%feature("autodoc", "1");
		void MakeThickSolid();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		BRepOffset_Error Error() const;
		%feature("autodoc", "1");
		const BRepAlgo_Image & OffsetFacesFromShapes() const;
		%feature("autodoc", "1");
		GeomAbs_JoinType GetJoinType() const;
		%feature("autodoc", "1");
		const BRepAlgo_Image & OffsetEdgesFromShapes() const;
		%feature("autodoc", "1");
		const TopTools_IndexedMapOfShape & ClosingFaces() const;

};
%feature("shadow") BRepOffset_MakeOffset::~BRepOffset_MakeOffset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_MakeOffset {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_ListOfInterval;
class BRepOffset_ListOfInterval {
	public:
		%feature("autodoc", "1");
		BRepOffset_ListOfInterval();
		%feature("autodoc", "1");
		void Assign(const BRepOffset_ListOfInterval &Other);
		%feature("autodoc", "1");
		void operator=(const BRepOffset_ListOfInterval &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BRepOffset_Interval &I);
		%feature("autodoc", "1");
		void Prepend(const BRepOffset_Interval &I, BRepOffset_ListIteratorOfListOfInterval & theIt);
		%feature("autodoc", "1");
		void Prepend(BRepOffset_ListOfInterval & Other);
		%feature("autodoc", "1");
		void Append(const BRepOffset_Interval &I);
		%feature("autodoc", "1");
		void Append(const BRepOffset_Interval &I, BRepOffset_ListIteratorOfListOfInterval & theIt);
		%feature("autodoc", "1");
		void Append(BRepOffset_ListOfInterval & Other);
		%feature("autodoc", "1");
		BRepOffset_Interval & First() const;
		%feature("autodoc", "1");
		BRepOffset_Interval & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRepOffset_ListIteratorOfListOfInterval & It);
		%feature("autodoc", "1");
		void InsertBefore(const BRepOffset_Interval &I, BRepOffset_ListIteratorOfListOfInterval & It);
		%feature("autodoc", "1");
		void InsertBefore(BRepOffset_ListOfInterval & Other, BRepOffset_ListIteratorOfListOfInterval & It);
		%feature("autodoc", "1");
		void InsertAfter(const BRepOffset_Interval &I, BRepOffset_ListIteratorOfListOfInterval & It);
		%feature("autodoc", "1");
		void InsertAfter(BRepOffset_ListOfInterval & Other, BRepOffset_ListIteratorOfListOfInterval & It);

};
%feature("shadow") BRepOffset_ListOfInterval::~BRepOffset_ListOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_ListOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset;
class BRepOffset {
	public:
		%feature("autodoc", "1");
		BRepOffset();
		%feature("autodoc", "1");
		static		Handle_Geom_Surface Surface(const Handle_Geom_Surface &Surface, const Standard_Real Offset, BRepOffset_Status & Status);

};
%feature("shadow") BRepOffset::~BRepOffset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_DataMapOfShapeListOfInterval;
class BRepOffset_DataMapOfShapeListOfInterval : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeListOfInterval(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeListOfInterval & Assign(const BRepOffset_DataMapOfShapeListOfInterval &Other);
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeListOfInterval & operator=(const BRepOffset_DataMapOfShapeListOfInterval &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const BRepOffset_ListOfInterval &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const BRepOffset_ListOfInterval & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const BRepOffset_ListOfInterval & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		BRepOffset_ListOfInterval & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		BRepOffset_ListOfInterval & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") BRepOffset_DataMapOfShapeListOfInterval::~BRepOffset_DataMapOfShapeListOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_DataMapOfShapeListOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_Inter2d;
class BRepOffset_Inter2d {
	public:
		%feature("autodoc", "1");
		BRepOffset_Inter2d();
		%feature("autodoc", "1");
		static		void Compute(const Handle_BRepAlgo_AsDes &AsDes, const TopoDS_Face F, const TopTools_IndexedMapOfShape &NewEdges, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		void ConnexIntByInt(const TopoDS_Face FI, BRepOffset_Offset & OFI, TopTools_DataMapOfShapeShape & MES, const TopTools_DataMapOfShapeShape &Build, const Handle_BRepAlgo_AsDes &AsDes, const Standard_Real Offset, const Standard_Real Tol);

};
%feature("shadow") BRepOffset_Inter2d::~BRepOffset_Inter2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_Inter2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_DataMapOfShapeOffset;
class BRepOffset_DataMapOfShapeOffset : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeOffset(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeOffset & Assign(const BRepOffset_DataMapOfShapeOffset &Other);
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeOffset & operator=(const BRepOffset_DataMapOfShapeOffset &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const BRepOffset_Offset &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const BRepOffset_Offset & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const BRepOffset_Offset & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		BRepOffset_Offset & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		BRepOffset_Offset & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") BRepOffset_DataMapOfShapeOffset::~BRepOffset_DataMapOfShapeOffset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_DataMapOfShapeOffset {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval;
class BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval(const TopoDS_Shape K, const BRepOffset_ListOfInterval &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		BRepOffset_ListOfInterval & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval {
	Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval GetHandle() {
	return *(Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval*) &$self;
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval::~BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval;
class BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval();
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval(const BRepOffset_DataMapOfShapeListOfInterval &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepOffset_DataMapOfShapeListOfInterval &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const BRepOffset_ListOfInterval & Value() const;

};
%feature("shadow") BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval::~BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_Interval;
class BRepOffset_Interval {
	public:
		%feature("autodoc", "1");
		BRepOffset_Interval();
		%feature("autodoc", "1");
		BRepOffset_Interval(const Standard_Real U1, const Standard_Real U2, const BRepOffset_Type Type);
		%feature("autodoc", "1");
		void First(const Standard_Real U);
		%feature("autodoc", "1");
		void Last(const Standard_Real U);
		%feature("autodoc", "1");
		void Type(const BRepOffset_Type T);
		%feature("autodoc", "1");
		Standard_Real First() const;
		%feature("autodoc", "1");
		Standard_Real Last() const;
		%feature("autodoc", "1");
		BRepOffset_Type Type() const;

};
%feature("shadow") BRepOffset_Interval::~BRepOffset_Interval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_Interval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_ListNodeOfListOfInterval;
class BRepOffset_ListNodeOfListOfInterval : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepOffset_ListNodeOfListOfInterval(const BRepOffset_Interval &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BRepOffset_Interval & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffset_ListNodeOfListOfInterval {
	Handle_BRepOffset_ListNodeOfListOfInterval GetHandle() {
	return *(Handle_BRepOffset_ListNodeOfListOfInterval*) &$self;
	}
};
%extend BRepOffset_ListNodeOfListOfInterval {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepOffset_ListNodeOfListOfInterval::~BRepOffset_ListNodeOfListOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_ListNodeOfListOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_MakeLoops;
class BRepOffset_MakeLoops {
	public:
		%feature("autodoc", "1");
		BRepOffset_MakeLoops();
		%feature("autodoc", "1");
		void Build(const TopTools_ListOfShape &LF, const Handle_BRepAlgo_AsDes &AsDes, BRepAlgo_Image & Image);
		%feature("autodoc", "1");
		void BuildOnContext(const TopTools_ListOfShape &LContext, const BRepOffset_Analyse &Analyse, const Handle_BRepAlgo_AsDes &AsDes, BRepAlgo_Image & Image, const Standard_Boolean InSide);
		%feature("autodoc", "1");
		void BuildFaces(const TopTools_ListOfShape &LF, const Handle_BRepAlgo_AsDes &AsDes, BRepAlgo_Image & Image);

};
%feature("shadow") BRepOffset_MakeLoops::~BRepOffset_MakeLoops %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_MakeLoops {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_DataMapOfShapeMapOfShape;
class BRepOffset_DataMapOfShapeMapOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeMapOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeMapOfShape & Assign(const BRepOffset_DataMapOfShapeMapOfShape &Other);
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeMapOfShape & operator=(const BRepOffset_DataMapOfShapeMapOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TopTools_MapOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TopTools_MapOfShape & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopTools_MapOfShape & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopTools_MapOfShape & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TopTools_MapOfShape & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") BRepOffset_DataMapOfShapeMapOfShape::~BRepOffset_DataMapOfShapeMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_DataMapOfShapeMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_DataMapIteratorOfDataMapOfShapeOffset;
class BRepOffset_DataMapIteratorOfDataMapOfShapeOffset : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeOffset();
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeOffset(const BRepOffset_DataMapOfShapeOffset &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepOffset_DataMapOfShapeOffset &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const BRepOffset_Offset & Value() const;

};
%feature("shadow") BRepOffset_DataMapIteratorOfDataMapOfShapeOffset::~BRepOffset_DataMapIteratorOfDataMapOfShapeOffset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_DataMapIteratorOfDataMapOfShapeOffset {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape;
class BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape();
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape(const BRepOffset_DataMapOfShapeMapOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepOffset_DataMapOfShapeMapOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TopTools_MapOfShape & Value() const;

};
%feature("shadow") BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape::~BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_DataMapNodeOfDataMapOfShapeOffset;
class BRepOffset_DataMapNodeOfDataMapOfShapeOffset : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapNodeOfDataMapOfShapeOffset(const TopoDS_Shape K, const BRepOffset_Offset &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		BRepOffset_Offset & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeOffset {
	Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset GetHandle() {
	return *(Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset*) &$self;
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeOffset {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepOffset_DataMapNodeOfDataMapOfShapeOffset::~BRepOffset_DataMapNodeOfDataMapOfShapeOffset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_DataMapNodeOfDataMapOfShapeOffset {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_Tool;
class BRepOffset_Tool {
	public:
		%feature("autodoc", "1");
		BRepOffset_Tool();
		%feature("autodoc", "1");
		static		void EdgeVertices(const TopoDS_Edge E, TopoDS_Vertex & V1, TopoDS_Vertex & V2);
		%feature("autodoc", "1");
		static		TopAbs_Orientation OriEdgeInFace(const TopoDS_Edge E, const TopoDS_Face F);
		%feature("autodoc", "1");
		static		void OrientSection(const TopoDS_Edge E, const TopoDS_Face F1, const TopoDS_Face F2, TopAbs_Orientation & O1, TopAbs_Orientation & O2);
		%feature("autodoc", "1");
		static		Standard_Boolean HasCommonShapes(const TopoDS_Face F1, const TopoDS_Face F2, TopTools_ListOfShape & LE, TopTools_ListOfShape & LV);
		%feature("autodoc", "1");
		static		void Inter3D(const TopoDS_Face F1, const TopoDS_Face F2, TopTools_ListOfShape & LInt1, TopTools_ListOfShape & LInt2, const TopAbs_State Side, const TopoDS_Edge RefEdge, const Standard_Boolean IsRefEdgeDefined=0);
		%feature("autodoc", "1");
		static		Standard_Boolean TryProject(const TopoDS_Face F1, const TopoDS_Face F2, const TopTools_ListOfShape &Edges, TopTools_ListOfShape & LInt1, TopTools_ListOfShape & LInt2, const TopAbs_State Side, const Standard_Real TolConf);
		%feature("autodoc", "1");
		static		void PipeInter(const TopoDS_Face F1, const TopoDS_Face F2, TopTools_ListOfShape & LInt1, TopTools_ListOfShape & LInt2, const TopAbs_State Side);
		%feature("autodoc", "1");
		static		void Inter2d(const TopoDS_Face F, const TopoDS_Edge E1, const TopoDS_Edge E2, TopTools_ListOfShape & LV, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		void InterOrExtent(const TopoDS_Face F1, const TopoDS_Face F2, TopTools_ListOfShape & LInt1, TopTools_ListOfShape & LInt2, const TopAbs_State Side);
		%feature("autodoc", "1");
		static		void CheckBounds(const TopoDS_Face F, const BRepOffset_Analyse &Analyse, Standard_Boolean & enlargeU, Standard_Boolean & enlargeVfirst, Standard_Boolean & enlargeVlast);
		%feature("autodoc", "1");
		static		Standard_Boolean EnLargeFace(const TopoDS_Face F, TopoDS_Face & NF, const Standard_Boolean ChangeGeom, const Standard_Boolean UpDatePCurve=0, const Standard_Boolean enlargeU=1, const Standard_Boolean enlargeVfirst=1, const Standard_Boolean enlargeVlast=1);
		%feature("autodoc", "1");
		static		void ExtentFace(const TopoDS_Face F, TopTools_DataMapOfShapeShape & ConstShapes, TopTools_DataMapOfShapeShape & ToBuild, const TopAbs_State Side, const Standard_Real TolConf, TopoDS_Face & NF);
		%feature("autodoc", "1");
		static		void BuildNeighbour(const TopoDS_Wire W, const TopoDS_Face F, TopTools_DataMapOfShapeShape & NOnV1, TopTools_DataMapOfShapeShape & NOnV2);
		%feature("autodoc", "1");
		static		void MapVertexEdges(const TopoDS_Shape S, TopTools_DataMapOfShapeListOfShape & MVE);
		%feature("autodoc", "1");
		static		TopoDS_Shape Deboucle3D(const TopoDS_Shape S, const TopTools_MapOfShape &Boundary);
		%feature("autodoc", "1");
		static		void CorrectOrientation(const TopoDS_Shape SI, const TopTools_IndexedMapOfShape &NewEdges, Handle_BRepAlgo_AsDes & AsDes, BRepAlgo_Image & InitOffset, const Standard_Real Offset);
		%feature("autodoc", "1");
		static		Standard_Real Gabarit(const Handle_Geom_Curve &aCurve);

};
%feature("shadow") BRepOffset_Tool::~BRepOffset_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_Tool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_Offset;
class BRepOffset_Offset {
	public:
		%feature("autodoc", "1");
		BRepOffset_Offset();
		%feature("autodoc", "1");
		BRepOffset_Offset(const TopoDS_Face Face, const Standard_Real Offset, const Standard_Boolean OffsetOutside=1, const GeomAbs_JoinType JoinType=GeomAbs_Arc);
		%feature("autodoc", "1");
		BRepOffset_Offset(const TopoDS_Face Face, const Standard_Real Offset, const TopTools_DataMapOfShapeShape &Created, const Standard_Boolean OffsetOutside=1, const GeomAbs_JoinType JoinType=GeomAbs_Arc);
		%feature("autodoc", "1");
		BRepOffset_Offset(const TopoDS_Edge Path, const TopoDS_Edge Edge1, const TopoDS_Edge Edge2, const Standard_Real Offset, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		BRepOffset_Offset(const TopoDS_Edge Path, const TopoDS_Edge Edge1, const TopoDS_Edge Edge2, const Standard_Real Offset, const TopoDS_Edge FirstEdge, const TopoDS_Edge LastEdge, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		BRepOffset_Offset(const TopoDS_Vertex Vertex, const TopTools_ListOfShape &LEdge, const Standard_Real Offset, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face Face, const Standard_Real Offset, const Standard_Boolean OffsetOutside=1, const GeomAbs_JoinType JoinType=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face Face, const Standard_Real Offset, const TopTools_DataMapOfShapeShape &Created, const Standard_Boolean OffsetOutside=1, const GeomAbs_JoinType JoinType=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge Path, const TopoDS_Edge Edge1, const TopoDS_Edge Edge2, const Standard_Real Offset, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge Path, const TopoDS_Edge Edge1, const TopoDS_Edge Edge2, const Standard_Real Offset, const TopoDS_Edge FirstEdge, const TopoDS_Edge LastEdge, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		void Init(const TopoDS_Vertex Vertex, const TopTools_ListOfShape &LEdge, const Standard_Real Offset, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge Edge, const Standard_Real Offset);
		%feature("autodoc", "1");
		const TopoDS_Shape  InitialShape() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		TopoDS_Shape Generated(const TopoDS_Shape Shape) const;
		%feature("autodoc", "1");
		BRepOffset_Status Status() const;

};
%feature("shadow") BRepOffset_Offset::~BRepOffset_Offset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_Offset {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape;
class BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape(const TopoDS_Shape K, const TopTools_MapOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TopTools_MapOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape {
	Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape GetHandle() {
	return *(Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape*) &$self;
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape::~BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffset_Inter3d;
class BRepOffset_Inter3d {
	public:
		%feature("autodoc", "1");
		BRepOffset_Inter3d(const Handle_BRepAlgo_AsDes &AsDes, const TopAbs_State Side, const Standard_Real Tol);
		%feature("autodoc", "1");
		void CompletInt(const TopTools_ListOfShape &SetOfFaces, const BRepAlgo_Image &InitOffsetFace);
		%feature("autodoc", "1");
		void FaceInter(const TopoDS_Face F1, const TopoDS_Face F2, const BRepAlgo_Image &InitOffsetFace);
		%feature("autodoc", "1");
		void ConnexIntByArc(const TopTools_ListOfShape &SetOfFaces, const TopoDS_Shape ShapeInit, const BRepOffset_Analyse &Analyse, const BRepAlgo_Image &InitOffsetFace);
		%feature("autodoc", "1");
		void ConnexIntByInt(const TopoDS_Shape SI, const BRepOffset_DataMapOfShapeOffset &MapSF, const BRepOffset_Analyse &A, TopTools_DataMapOfShapeShape & MES, TopTools_DataMapOfShapeShape & Build, TopTools_ListOfShape & Failed);
		%feature("autodoc", "1");
		void ContextIntByInt(const TopTools_IndexedMapOfShape &ContextFaces, const Standard_Boolean ExtentContext, const BRepOffset_DataMapOfShapeOffset &MapSF, const BRepOffset_Analyse &A, TopTools_DataMapOfShapeShape & MES, TopTools_DataMapOfShapeShape & Build, TopTools_ListOfShape & Failed);
		%feature("autodoc", "1");
		void ContextIntByArc(const TopTools_IndexedMapOfShape &ContextFaces, const Standard_Boolean ExtentContext, const BRepOffset_Analyse &Analyse, const BRepAlgo_Image &InitOffsetFace, BRepAlgo_Image & InitOffsetEdge);
		%feature("autodoc", "1");
		void AddCommonEdges(const TopTools_ListOfShape &SetOfFaces);
		%feature("autodoc", "1");
		void SetDone(const TopoDS_Face F1, const TopoDS_Face F2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone(const TopoDS_Face F1, const TopoDS_Face F2) const;
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & TouchedFaces();
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes AsDes() const;
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & NewEdges();

};
%feature("shadow") BRepOffset_Inter3d::~BRepOffset_Inter3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffset_Inter3d {
	void _kill_pointed() {
		delete $self;
	}
};
