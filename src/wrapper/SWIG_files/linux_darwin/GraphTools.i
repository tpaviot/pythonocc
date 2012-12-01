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

%module GraphTools
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GraphTools_renames.i


%include GraphTools_required_python_modules.i


%include GraphTools_dependencies.i


%include GraphTools_headers.i




%nodefaultctor Handle_GraphTools_SC;
class Handle_GraphTools_SC : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GraphTools_SC();
		%feature("autodoc", "1");
		Handle_GraphTools_SC(const Handle_GraphTools_SC &aHandle);
		%feature("autodoc", "1");
		Handle_GraphTools_SC(const GraphTools_SC *anItem);
		%feature("autodoc", "1");
		Handle_GraphTools_SC & operator=(const Handle_GraphTools_SC &aHandle);
		%feature("autodoc", "1");
		Handle_GraphTools_SC & operator=(const GraphTools_SC *anItem);
		%feature("autodoc", "1");
		static		Handle_GraphTools_SC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GraphTools_SC {
	GraphTools_SC* GetObject() {
	return (GraphTools_SC*)$self->Access();
	}
};
%feature("shadow") Handle_GraphTools_SC::~Handle_GraphTools_SC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GraphTools_SC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GraphTools_ListNodeOfSCList;
class Handle_GraphTools_ListNodeOfSCList : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfSCList();
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfSCList(const Handle_GraphTools_ListNodeOfSCList &aHandle);
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfSCList(const GraphTools_ListNodeOfSCList *anItem);
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfSCList & operator=(const Handle_GraphTools_ListNodeOfSCList &aHandle);
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfSCList & operator=(const GraphTools_ListNodeOfSCList *anItem);
		%feature("autodoc", "1");
		static		Handle_GraphTools_ListNodeOfSCList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GraphTools_ListNodeOfSCList {
	GraphTools_ListNodeOfSCList* GetObject() {
	return (GraphTools_ListNodeOfSCList*)$self->Access();
	}
};
%feature("shadow") Handle_GraphTools_ListNodeOfSCList::~Handle_GraphTools_ListNodeOfSCList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GraphTools_ListNodeOfSCList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GraphTools_ListNodeOfListOfSequenceOfInteger;
class Handle_GraphTools_ListNodeOfListOfSequenceOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfListOfSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfListOfSequenceOfInteger(const Handle_GraphTools_ListNodeOfListOfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfListOfSequenceOfInteger(const GraphTools_ListNodeOfListOfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfListOfSequenceOfInteger & operator=(const Handle_GraphTools_ListNodeOfListOfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfListOfSequenceOfInteger & operator=(const GraphTools_ListNodeOfListOfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_GraphTools_ListNodeOfListOfSequenceOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GraphTools_ListNodeOfListOfSequenceOfInteger {
	GraphTools_ListNodeOfListOfSequenceOfInteger* GetObject() {
	return (GraphTools_ListNodeOfListOfSequenceOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_GraphTools_ListNodeOfListOfSequenceOfInteger::~Handle_GraphTools_ListNodeOfListOfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GraphTools_ListNodeOfListOfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphTools_SC;
class GraphTools_SC : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GraphTools_SC();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void AddVertex(const Standard_Integer V);
		%feature("autodoc", "1");
		Standard_Integer NbVertices() const;
		%feature("autodoc", "1");
		Standard_Integer GetVertex(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void AddFrontSC(const Handle_GraphTools_SC &SC);
		%feature("autodoc", "1");
		const GraphTools_SCList & GetFrontSC() const;
		%feature("autodoc", "1");
		void AddBackSC(const Handle_GraphTools_SC &SC);
		%feature("autodoc", "1");
		const GraphTools_SCList & GetBackSC() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GraphTools_SC {
	Handle_GraphTools_SC GetHandle() {
	return *(Handle_GraphTools_SC*) &$self;
	}
};
%extend GraphTools_SC {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GraphTools_SC::~GraphTools_SC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphTools_SC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphTools_SCList;
class GraphTools_SCList {
	public:
		%feature("autodoc", "1");
		GraphTools_SCList();
		%feature("autodoc", "1");
		void Assign(const GraphTools_SCList &Other);
		%feature("autodoc", "1");
		void operator=(const GraphTools_SCList &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_GraphTools_SC &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_GraphTools_SC &I, GraphTools_ListIteratorOfSCList & theIt);
		%feature("autodoc", "1");
		void Prepend(GraphTools_SCList & Other);
		%feature("autodoc", "1");
		void Append(const Handle_GraphTools_SC &I);
		%feature("autodoc", "1");
		void Append(const Handle_GraphTools_SC &I, GraphTools_ListIteratorOfSCList & theIt);
		%feature("autodoc", "1");
		void Append(GraphTools_SCList & Other);
		%feature("autodoc", "1");
		Handle_GraphTools_SC & First() const;
		%feature("autodoc", "1");
		Handle_GraphTools_SC & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(GraphTools_ListIteratorOfSCList & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_GraphTools_SC &I, GraphTools_ListIteratorOfSCList & It);
		%feature("autodoc", "1");
		void InsertBefore(GraphTools_SCList & Other, GraphTools_ListIteratorOfSCList & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_GraphTools_SC &I, GraphTools_ListIteratorOfSCList & It);
		%feature("autodoc", "1");
		void InsertAfter(GraphTools_SCList & Other, GraphTools_ListIteratorOfSCList & It);

};
%feature("shadow") GraphTools_SCList::~GraphTools_SCList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphTools_SCList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphTools_ListOfSequenceOfInteger;
class GraphTools_ListOfSequenceOfInteger {
	public:
		%feature("autodoc", "1");
		GraphTools_ListOfSequenceOfInteger();
		%feature("autodoc", "1");
		void Assign(const GraphTools_ListOfSequenceOfInteger &Other);
		%feature("autodoc", "1");
		void operator=(const GraphTools_ListOfSequenceOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TColStd_SequenceOfInteger &I);
		%feature("autodoc", "1");
		void Prepend(const TColStd_SequenceOfInteger &I, GraphTools_ListIteratorOfListOfSequenceOfInteger & theIt);
		%feature("autodoc", "1");
		void Prepend(GraphTools_ListOfSequenceOfInteger & Other);
		%feature("autodoc", "1");
		void Append(const TColStd_SequenceOfInteger &I);
		%feature("autodoc", "1");
		void Append(const TColStd_SequenceOfInteger &I, GraphTools_ListIteratorOfListOfSequenceOfInteger & theIt);
		%feature("autodoc", "1");
		void Append(GraphTools_ListOfSequenceOfInteger & Other);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & First() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(GraphTools_ListIteratorOfListOfSequenceOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(const TColStd_SequenceOfInteger &I, GraphTools_ListIteratorOfListOfSequenceOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(GraphTools_ListOfSequenceOfInteger & Other, GraphTools_ListIteratorOfListOfSequenceOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(const TColStd_SequenceOfInteger &I, GraphTools_ListIteratorOfListOfSequenceOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(GraphTools_ListOfSequenceOfInteger & Other, GraphTools_ListIteratorOfListOfSequenceOfInteger & It);

};
%feature("shadow") GraphTools_ListOfSequenceOfInteger::~GraphTools_ListOfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphTools_ListOfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphTools_ListIteratorOfListOfSequenceOfInteger;
class GraphTools_ListIteratorOfListOfSequenceOfInteger {
	public:
		%feature("autodoc", "1");
		GraphTools_ListIteratorOfListOfSequenceOfInteger();
		%feature("autodoc", "1");
		GraphTools_ListIteratorOfListOfSequenceOfInteger(const GraphTools_ListOfSequenceOfInteger &L);
		%feature("autodoc", "1");
		void Initialize(const GraphTools_ListOfSequenceOfInteger &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & Value() const;

};
%feature("shadow") GraphTools_ListIteratorOfListOfSequenceOfInteger::~GraphTools_ListIteratorOfListOfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphTools_ListIteratorOfListOfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphTools_TSNode;
class GraphTools_TSNode {
	public:
		%feature("autodoc", "1");
		GraphTools_TSNode();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void IncreaseRef();
		%feature("autodoc", "1");
		void DecreaseRef();
		%feature("autodoc", "1");
		Standard_Integer NbRef() const;
		%feature("autodoc", "1");
		void AddSuccessor(const Standard_Integer s);
		%feature("autodoc", "1");
		Standard_Integer NbSuccessors() const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer index) const;

};
%feature("shadow") GraphTools_TSNode::~GraphTools_TSNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphTools_TSNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphTools_RGNode;
class GraphTools_RGNode {
	public:
		%feature("autodoc", "1");
		GraphTools_RGNode();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void SetVisited(const Standard_Integer v);
		%feature("autodoc", "1");
		Standard_Integer GetVisited() const;
		%feature("autodoc", "1");
		void AddAdj(const Standard_Integer adj);
		%feature("autodoc", "1");
		Standard_Integer NbAdj() const;
		%feature("autodoc", "1");
		Standard_Integer GetAdj(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void SetSC(const Handle_GraphTools_SC &SC);
		%feature("autodoc", "1");
		Handle_GraphTools_SC GetSC() const;

};
%feature("shadow") GraphTools_RGNode::~GraphTools_RGNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphTools_RGNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphTools_ListIteratorOfSCList;
class GraphTools_ListIteratorOfSCList {
	public:
		%feature("autodoc", "1");
		GraphTools_ListIteratorOfSCList();
		%feature("autodoc", "1");
		GraphTools_ListIteratorOfSCList(const GraphTools_SCList &L);
		%feature("autodoc", "1");
		void Initialize(const GraphTools_SCList &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_GraphTools_SC & Value() const;

};
%feature("shadow") GraphTools_ListIteratorOfSCList::~GraphTools_ListIteratorOfSCList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphTools_ListIteratorOfSCList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphTools_ListNodeOfSCList;
class GraphTools_ListNodeOfSCList : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GraphTools_ListNodeOfSCList(const Handle_GraphTools_SC &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_GraphTools_SC & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GraphTools_ListNodeOfSCList {
	Handle_GraphTools_ListNodeOfSCList GetHandle() {
	return *(Handle_GraphTools_ListNodeOfSCList*) &$self;
	}
};
%extend GraphTools_ListNodeOfSCList {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GraphTools_ListNodeOfSCList::~GraphTools_ListNodeOfSCList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphTools_ListNodeOfSCList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphTools_ListNodeOfListOfSequenceOfInteger;
class GraphTools_ListNodeOfListOfSequenceOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GraphTools_ListNodeOfListOfSequenceOfInteger(const TColStd_SequenceOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GraphTools_ListNodeOfListOfSequenceOfInteger {
	Handle_GraphTools_ListNodeOfListOfSequenceOfInteger GetHandle() {
	return *(Handle_GraphTools_ListNodeOfListOfSequenceOfInteger*) &$self;
	}
};
%extend GraphTools_ListNodeOfListOfSequenceOfInteger {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GraphTools_ListNodeOfListOfSequenceOfInteger::~GraphTools_ListNodeOfListOfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphTools_ListNodeOfListOfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};
