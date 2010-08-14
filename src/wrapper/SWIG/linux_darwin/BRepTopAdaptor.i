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
%module BRepTopAdaptor
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BRepTopAdaptor_dependencies.i


%include BRepTopAdaptor_headers.i




%nodefaultctor Handle_BRepTopAdaptor_TopolTool;
class Handle_BRepTopAdaptor_TopolTool : public Handle_Adaptor3d_TopolTool {
	public:
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool();
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool(const Handle_BRepTopAdaptor_TopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool(const BRepTopAdaptor_TopolTool *anItem);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool & operator=(const Handle_BRepTopAdaptor_TopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool & operator=(const BRepTopAdaptor_TopolTool *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepTopAdaptor_TopolTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTopAdaptor_TopolTool {
	BRepTopAdaptor_TopolTool* GetObject() {
	return (BRepTopAdaptor_TopolTool*)$self->Access();
	}
};
%feature("shadow") Handle_BRepTopAdaptor_TopolTool::~Handle_BRepTopAdaptor_TopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepTopAdaptor_TopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepTopAdaptor_HVertex;
class Handle_BRepTopAdaptor_HVertex : public Handle_Adaptor3d_HVertex {
	public:
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_HVertex();
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_HVertex(const Handle_BRepTopAdaptor_HVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_HVertex(const BRepTopAdaptor_HVertex *anItem);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_HVertex & operator=(const Handle_BRepTopAdaptor_HVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_HVertex & operator=(const BRepTopAdaptor_HVertex *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepTopAdaptor_HVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTopAdaptor_HVertex {
	BRepTopAdaptor_HVertex* GetObject() {
	return (BRepTopAdaptor_HVertex*)$self->Access();
	}
};
%feature("shadow") Handle_BRepTopAdaptor_HVertex::~Handle_BRepTopAdaptor_HVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepTopAdaptor_HVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool;
class Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool();
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool(const Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool(const BRepTopAdaptor_DataMapNodeOfMapOfShapeTool *anItem);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool & operator=(const Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool & operator=(const BRepTopAdaptor_DataMapNodeOfMapOfShapeTool *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool {
	BRepTopAdaptor_DataMapNodeOfMapOfShapeTool* GetObject() {
	return (BRepTopAdaptor_DataMapNodeOfMapOfShapeTool*)$self->Access();
	}
};
%feature("shadow") Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool::~Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr;
class Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr();
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr(const Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr(const BRepTopAdaptor_SequenceNodeOfSeqOfPtr *anItem);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr & operator=(const Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr & operator=(const BRepTopAdaptor_SequenceNodeOfSeqOfPtr *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr {
	BRepTopAdaptor_SequenceNodeOfSeqOfPtr* GetObject() {
	return (BRepTopAdaptor_SequenceNodeOfSeqOfPtr*)$self->Access();
	}
};
%feature("shadow") Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr::~Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepTopAdaptor_SequenceNodeOfSeqOfPtr;
class BRepTopAdaptor_SequenceNodeOfSeqOfPtr : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_SequenceNodeOfSeqOfPtr(const Standard_Address &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepTopAdaptor_SequenceNodeOfSeqOfPtr {
	Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr GetHandle() {
	return *(Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr*) &$self;
	}
};
%extend BRepTopAdaptor_SequenceNodeOfSeqOfPtr {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepTopAdaptor_SequenceNodeOfSeqOfPtr::~BRepTopAdaptor_SequenceNodeOfSeqOfPtr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepTopAdaptor_SequenceNodeOfSeqOfPtr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepTopAdaptor_Tool;
class BRepTopAdaptor_Tool {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool();
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool(const TopoDS_Face &F, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool(const Handle_Adaptor3d_HSurface &Surface, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		void Init(const Handle_Adaptor3d_HSurface &Surface, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool GetTopolTool();
		%feature("autodoc", "1");
		void SetTopolTool(const Handle_BRepTopAdaptor_TopolTool &TT);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface GetSurface();
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") BRepTopAdaptor_Tool::~BRepTopAdaptor_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepTopAdaptor_Tool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool;
class BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool();
		%feature("autodoc", "1");
		BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool(const BRepTopAdaptor_MapOfShapeTool &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepTopAdaptor_MapOfShapeTool &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const BRepTopAdaptor_Tool & Value() const;

};
%feature("shadow") BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool::~BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepTopAdaptor_HVertex;
class BRepTopAdaptor_HVertex : public Adaptor3d_HVertex {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_HVertex(const TopoDS_Vertex &Vtx, const Handle_BRepAdaptor_HCurve2d &Curve);
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex() const;
		%feature("autodoc", "1");
		TopoDS_Vertex & ChangeVertex();
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value();
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation Orientation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSame(const Handle_Adaptor3d_HVertex &Other);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepTopAdaptor_HVertex {
	Handle_BRepTopAdaptor_HVertex GetHandle() {
	return *(Handle_BRepTopAdaptor_HVertex*) &$self;
	}
};
%extend BRepTopAdaptor_HVertex {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepTopAdaptor_HVertex::~BRepTopAdaptor_HVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepTopAdaptor_HVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepTopAdaptor_FClass2d;
class BRepTopAdaptor_FClass2d {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_FClass2d(const TopoDS_Face &F, const Standard_Real Tol);
		%feature("autodoc", "1");
		TopAbs_State PerformInfinitePoint() const;
		%feature("autodoc", "1");
		TopAbs_State Perform(const gp_Pnt2d &Puv, const Standard_Boolean RecadreOnPeriodic=1) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const BRepTopAdaptor_FClass2d & Copy(const BRepTopAdaptor_FClass2d &Other) const;
		%feature("autodoc", "1");
		const BRepTopAdaptor_FClass2d & operator=(const BRepTopAdaptor_FClass2d &Other) const;
		%feature("autodoc", "1");
		TopAbs_State TestOnRestriction(const gp_Pnt2d &Puv, const Standard_Real Tol, const Standard_Boolean RecadreOnPeriodic=1) const;

};
%feature("shadow") BRepTopAdaptor_FClass2d::~BRepTopAdaptor_FClass2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepTopAdaptor_FClass2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepTopAdaptor_TopolTool;
class BRepTopAdaptor_TopolTool : public Adaptor3d_TopolTool {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_TopolTool();
		%feature("autodoc", "1");
		BRepTopAdaptor_TopolTool(const Handle_Adaptor3d_HSurface &Surface);
		%feature("autodoc", "1");
		virtual		void Initialize();
		%feature("autodoc", "1");
		virtual		void Initialize(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		virtual		void Initialize(const Handle_Adaptor2d_HCurve2d &Curve);
		%feature("autodoc", "1");
		virtual		void Init();
		%feature("autodoc", "1");
		virtual		Standard_Boolean More();
		%feature("autodoc", "1");
		virtual		Handle_Adaptor2d_HCurve2d Value();
		%feature("autodoc", "1");
		virtual		void Next();
		%feature("autodoc", "1");
		virtual		Standard_Address Edge() const;
		%feature("autodoc", "1");
		virtual		void InitVertexIterator();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MoreVertex();
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HVertex Vertex();
		%feature("autodoc", "1");
		virtual		void NextVertex();
		%feature("autodoc", "1");
		virtual		TopAbs_State Classify(const gp_Pnt2d &P2d, const Standard_Real Tol, const Standard_Boolean RecadreOnPeriodic=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsThePointOn(const gp_Pnt2d &P2d, const Standard_Real Tol, const Standard_Boolean RecadreOnPeriodic=1);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation Orientation(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation Orientation(const Handle_Adaptor3d_HVertex &C);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Has3d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Tol3d(const Handle_Adaptor2d_HCurve2d &C) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Tol3d(const Handle_Adaptor3d_HVertex &V) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Pnt(const Handle_Adaptor3d_HVertex &V) const;
		%feature("autodoc", "1");
		virtual		void ComputeSamplePoints();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamplesU();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamplesV();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamples();
		%feature("autodoc", "1");
		virtual		void SamplePoint(const Standard_Integer Index, gp_Pnt2d & P2d, gp_Pnt & P3d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean DomainIsInfinite();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepTopAdaptor_TopolTool {
	Handle_BRepTopAdaptor_TopolTool GetHandle() {
	return *(Handle_BRepTopAdaptor_TopolTool*) &$self;
	}
};
%extend BRepTopAdaptor_TopolTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepTopAdaptor_TopolTool::~BRepTopAdaptor_TopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepTopAdaptor_TopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepTopAdaptor_MapOfShapeTool;
class BRepTopAdaptor_MapOfShapeTool : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_MapOfShapeTool(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepTopAdaptor_MapOfShapeTool & Assign(const BRepTopAdaptor_MapOfShapeTool &Other);
		%feature("autodoc", "1");
		BRepTopAdaptor_MapOfShapeTool & operator=(const BRepTopAdaptor_MapOfShapeTool &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const BRepTopAdaptor_Tool &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const BRepTopAdaptor_Tool & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BRepTopAdaptor_Tool & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool & operator()(const TopoDS_Shape &K);

};
%feature("shadow") BRepTopAdaptor_MapOfShapeTool::~BRepTopAdaptor_MapOfShapeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepTopAdaptor_MapOfShapeTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepTopAdaptor_SeqOfPtr;
class BRepTopAdaptor_SeqOfPtr : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_SeqOfPtr();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepTopAdaptor_SeqOfPtr & Assign(const BRepTopAdaptor_SeqOfPtr &Other);
		%feature("autodoc", "1");
		const BRepTopAdaptor_SeqOfPtr & operator=(const BRepTopAdaptor_SeqOfPtr &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Address &T);
		%feature("autodoc", "1");
		void Append(BRepTopAdaptor_SeqOfPtr & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Address &T);
		%feature("autodoc", "1");
		void Prepend(BRepTopAdaptor_SeqOfPtr & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Address &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepTopAdaptor_SeqOfPtr & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Address &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepTopAdaptor_SeqOfPtr & S);
		%feature("autodoc", "1");
		const Standard_Address & First() const;
		%feature("autodoc", "1");
		const Standard_Address & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepTopAdaptor_SeqOfPtr & S);
		%feature("autodoc", "1");
		const Standard_Address & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Address & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Address &I);
		%feature("autodoc", "1");
		Standard_Address & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Address & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BRepTopAdaptor_SeqOfPtr::~BRepTopAdaptor_SeqOfPtr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepTopAdaptor_SeqOfPtr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepTopAdaptor_DataMapNodeOfMapOfShapeTool;
class BRepTopAdaptor_DataMapNodeOfMapOfShapeTool : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_DataMapNodeOfMapOfShapeTool(const TopoDS_Shape &K, const BRepTopAdaptor_Tool &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepTopAdaptor_DataMapNodeOfMapOfShapeTool {
	Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool GetHandle() {
	return *(Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool*) &$self;
	}
};
%extend BRepTopAdaptor_DataMapNodeOfMapOfShapeTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepTopAdaptor_DataMapNodeOfMapOfShapeTool::~BRepTopAdaptor_DataMapNodeOfMapOfShapeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepTopAdaptor_DataMapNodeOfMapOfShapeTool {
	void _kill_pointed() {
		delete $self;
	}
};
