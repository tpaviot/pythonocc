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
%module TopExp
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include TopExp_dependencies.i


%include TopExp_headers.i

typedef TopoDS_Iterator * TopExp_Stack;



%nodefaultctor Handle_TopExp_StackNodeOfStackOfIterator;
class Handle_TopExp_StackNodeOfStackOfIterator : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator();
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator(const Handle_TopExp_StackNodeOfStackOfIterator &aHandle);
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator(const TopExp_StackNodeOfStackOfIterator *anItem);
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator & operator=(const Handle_TopExp_StackNodeOfStackOfIterator &aHandle);
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator & operator=(const TopExp_StackNodeOfStackOfIterator *anItem);
		%feature("autodoc", "1");
		static		Handle_TopExp_StackNodeOfStackOfIterator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopExp_StackNodeOfStackOfIterator {
	TopExp_StackNodeOfStackOfIterator* GetObject() {
	return (TopExp_StackNodeOfStackOfIterator*)$self->Access();
	}
};
%feature("shadow") Handle_TopExp_StackNodeOfStackOfIterator::~Handle_TopExp_StackNodeOfStackOfIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopExp_StackNodeOfStackOfIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopExp_StackNodeOfStackOfIterator;
class TopExp_StackNodeOfStackOfIterator : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopExp_StackNodeOfStackOfIterator(const TopoDS_Iterator &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Iterator & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopExp_StackNodeOfStackOfIterator {
	Handle_TopExp_StackNodeOfStackOfIterator GetHandle() {
	return *(Handle_TopExp_StackNodeOfStackOfIterator*) &$self;
	}
};
%extend TopExp_StackNodeOfStackOfIterator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopExp_StackNodeOfStackOfIterator::~TopExp_StackNodeOfStackOfIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopExp_StackNodeOfStackOfIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopExp_StackIteratorOfStackOfIterator;
class TopExp_StackIteratorOfStackOfIterator {
	public:
		%feature("autodoc", "1");
		TopExp_StackIteratorOfStackOfIterator();
		%feature("autodoc", "1");
		TopExp_StackIteratorOfStackOfIterator(const TopExp_StackOfIterator &S);
		%feature("autodoc", "1");
		void Initialize(const TopExp_StackOfIterator &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Iterator & Value() const;

};
%feature("shadow") TopExp_StackIteratorOfStackOfIterator::~TopExp_StackIteratorOfStackOfIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopExp_StackIteratorOfStackOfIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopExp_StackOfIterator;
class TopExp_StackOfIterator {
	public:
		%feature("autodoc", "1");
		TopExp_StackOfIterator();
		%feature("autodoc", "1");
		const TopExp_StackOfIterator & Assign(const TopExp_StackOfIterator &Other);
		%feature("autodoc", "1");
		const TopExp_StackOfIterator & operator=(const TopExp_StackOfIterator &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const TopoDS_Iterator & Top() const;
		%feature("autodoc", "1");
		void Push(const TopoDS_Iterator &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		TopoDS_Iterator & ChangeTop();

};
%feature("shadow") TopExp_StackOfIterator::~TopExp_StackOfIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopExp_StackOfIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopExp_Explorer;
class TopExp_Explorer {
	public:
		%feature("autodoc", "1");
		TopExp_Explorer();
		%feature("autodoc", "1");
		TopExp_Explorer(const TopoDS_Shape &S, const TopAbs_ShapeEnum ToFind, const TopAbs_ShapeEnum ToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, const TopAbs_ShapeEnum ToFind, const TopAbs_ShapeEnum ToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape & Current() const;
		%feature("autodoc", "1");
		void ReInit();
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") TopExp_Explorer::~TopExp_Explorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopExp_Explorer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopExp;
class TopExp {
	public:
		%feature("autodoc", "1");
		TopExp();
		%feature("autodoc", "1");
		static		void MapShapes(const TopoDS_Shape &S, const TopAbs_ShapeEnum T, TopTools_IndexedMapOfShape & M);
		%feature("autodoc", "1");
		static		void MapShapes(const TopoDS_Shape &S, TopTools_IndexedMapOfShape & M);
		%feature("autodoc", "1");
		static		void MapShapesAndAncestors(const TopoDS_Shape &S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA, TopTools_IndexedDataMapOfShapeListOfShape & M);
		%feature("autodoc", "1");
		static		TopoDS_Vertex FirstVertex(const TopoDS_Edge &E, const Standard_Boolean CumOri=0);
		%feature("autodoc", "1");
		static		TopoDS_Vertex LastVertex(const TopoDS_Edge &E, const Standard_Boolean CumOri=0);
		%feature("autodoc", "1");
		static		void Vertices(const TopoDS_Edge &E, TopoDS_Vertex & Vfirst, TopoDS_Vertex & Vlast, const Standard_Boolean CumOri=0);
		%feature("autodoc", "1");
		static		void Vertices(const TopoDS_Wire &W, TopoDS_Vertex & Vfirst, TopoDS_Vertex & Vlast);
		%feature("autodoc", "1");
		static		Standard_Boolean CommonVertex(const TopoDS_Edge &E1, const TopoDS_Edge &E2, TopoDS_Vertex & V);

};
%feature("shadow") TopExp::~TopExp %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopExp {
	void _kill_pointed() {
		delete $self;
	}
};
