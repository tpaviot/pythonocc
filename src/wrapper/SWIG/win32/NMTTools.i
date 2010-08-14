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
%module NMTTools
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include NMTTools_dependencies.i


%include NMTTools_headers.i

typedef NMTTools_PaveFiller * NMTTools_PPaveFiller;



%nodefaultctor Handle_NMTTools_StdMapNodeOfMapOfPaveBlock;
class Handle_NMTTools_StdMapNodeOfMapOfPaveBlock : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTTools_StdMapNodeOfMapOfPaveBlock();
		%feature("autodoc", "1");
		Handle_NMTTools_StdMapNodeOfMapOfPaveBlock(const Handle_NMTTools_StdMapNodeOfMapOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_StdMapNodeOfMapOfPaveBlock(const NMTTools_StdMapNodeOfMapOfPaveBlock *anItem);
		%feature("autodoc", "1");
		Handle_NMTTools_StdMapNodeOfMapOfPaveBlock & operator=(const Handle_NMTTools_StdMapNodeOfMapOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_StdMapNodeOfMapOfPaveBlock & operator=(const NMTTools_StdMapNodeOfMapOfPaveBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTTools_StdMapNodeOfMapOfPaveBlock const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTTools_StdMapNodeOfMapOfPaveBlock {
	NMTTools_StdMapNodeOfMapOfPaveBlock* GetObject() {
	return (NMTTools_StdMapNodeOfMapOfPaveBlock*)$self->Access();
	}
};
%feature("shadow") Handle_NMTTools_StdMapNodeOfMapOfPaveBlock::~Handle_NMTTools_StdMapNodeOfMapOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTTools_StdMapNodeOfMapOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock;
class Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock();
		%feature("autodoc", "1");
		Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock(const Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock(const NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock *anItem);
		%feature("autodoc", "1");
		Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock & operator=(const Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock & operator=(const NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock {
	NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock* GetObject() {
	return (NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock*)$self->Access();
	}
};
%feature("shadow") Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock::~Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTTools_ListNodeOfListOfCoupleOfShape;
class Handle_NMTTools_ListNodeOfListOfCoupleOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTTools_ListNodeOfListOfCoupleOfShape();
		%feature("autodoc", "1");
		Handle_NMTTools_ListNodeOfListOfCoupleOfShape(const Handle_NMTTools_ListNodeOfListOfCoupleOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_ListNodeOfListOfCoupleOfShape(const NMTTools_ListNodeOfListOfCoupleOfShape *anItem);
		%feature("autodoc", "1");
		Handle_NMTTools_ListNodeOfListOfCoupleOfShape & operator=(const Handle_NMTTools_ListNodeOfListOfCoupleOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_ListNodeOfListOfCoupleOfShape & operator=(const NMTTools_ListNodeOfListOfCoupleOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTTools_ListNodeOfListOfCoupleOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTTools_ListNodeOfListOfCoupleOfShape {
	NMTTools_ListNodeOfListOfCoupleOfShape* GetObject() {
	return (NMTTools_ListNodeOfListOfCoupleOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_NMTTools_ListNodeOfListOfCoupleOfShape::~Handle_NMTTools_ListNodeOfListOfCoupleOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTTools_ListNodeOfListOfCoupleOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape;
class Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape();
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape(const Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape(const NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape *anItem);
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape & operator=(const Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape & operator=(const NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape {
	NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape* GetObject() {
	return (NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape::~Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTTools_ListNodeOfListOfCommonBlock;
class Handle_NMTTools_ListNodeOfListOfCommonBlock : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTTools_ListNodeOfListOfCommonBlock();
		%feature("autodoc", "1");
		Handle_NMTTools_ListNodeOfListOfCommonBlock(const Handle_NMTTools_ListNodeOfListOfCommonBlock &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_ListNodeOfListOfCommonBlock(const NMTTools_ListNodeOfListOfCommonBlock *anItem);
		%feature("autodoc", "1");
		Handle_NMTTools_ListNodeOfListOfCommonBlock & operator=(const Handle_NMTTools_ListNodeOfListOfCommonBlock &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_ListNodeOfListOfCommonBlock & operator=(const NMTTools_ListNodeOfListOfCommonBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTTools_ListNodeOfListOfCommonBlock const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTTools_ListNodeOfListOfCommonBlock {
	NMTTools_ListNodeOfListOfCommonBlock* GetObject() {
	return (NMTTools_ListNodeOfListOfCommonBlock*)$self->Access();
	}
};
%feature("shadow") Handle_NMTTools_ListNodeOfListOfCommonBlock::~Handle_NMTTools_ListNodeOfListOfCommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTTools_ListNodeOfListOfCommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock;
class Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock();
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock(const Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock(const NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock *anItem);
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock & operator=(const Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock & operator=(const NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock {
	NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock* GetObject() {
	return (NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock*)$self->Access();
	}
};
%feature("shadow") Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock::~Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger;
class Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger();
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger(const Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger(const NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger & operator=(const Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger & operator=(const NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger {
	NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger* GetObject() {
	return (NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger::~Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_MapIteratorOfMapOfPaveBlock;
class NMTTools_MapIteratorOfMapOfPaveBlock : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		NMTTools_MapIteratorOfMapOfPaveBlock();
		%feature("autodoc", "1");
		NMTTools_MapIteratorOfMapOfPaveBlock(const NMTTools_MapOfPaveBlock &aMap);
		%feature("autodoc", "1");
		void Initialize(const NMTTools_MapOfPaveBlock &aMap);
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & Key() const;

};
%feature("shadow") NMTTools_MapIteratorOfMapOfPaveBlock::~NMTTools_MapIteratorOfMapOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_MapIteratorOfMapOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_DEProcessor;
class NMTTools_DEProcessor {
	public:
		%feature("autodoc", "1");
		NMTTools_DEProcessor(NMTTools_PaveFiller & aFiller);
		%feature("autodoc", "1");
		void Do();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") NMTTools_DEProcessor::~NMTTools_DEProcessor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_DEProcessor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_IndexedDataMapOfShapeIndexedMapOfShape;
class NMTTools_IndexedDataMapOfShapeIndexedMapOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapOfShapeIndexedMapOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapOfShapeIndexedMapOfShape & Assign(const NMTTools_IndexedDataMapOfShapeIndexedMapOfShape &Other);
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapOfShapeIndexedMapOfShape & operator=(const NMTTools_IndexedDataMapOfShapeIndexedMapOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const TopTools_IndexedMapOfShape &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const TopTools_IndexedMapOfShape &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_IndexedMapOfShape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_IndexedMapOfShape & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopTools_IndexedMapOfShape & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & ChangeFromKey(const TopoDS_Shape &K);

};
%feature("shadow") NMTTools_IndexedDataMapOfShapeIndexedMapOfShape::~NMTTools_IndexedDataMapOfShapeIndexedMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_IndexedDataMapOfShapeIndexedMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_IndexedDataMapOfShapePaveBlock;
class NMTTools_IndexedDataMapOfShapePaveBlock : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapOfShapePaveBlock(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapOfShapePaveBlock & Assign(const NMTTools_IndexedDataMapOfShapePaveBlock &Other);
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapOfShapePaveBlock & operator=(const NMTTools_IndexedDataMapOfShapePaveBlock &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const BOPTools_PaveBlock &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const BOPTools_PaveBlock &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BOPTools_PaveBlock & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BOPTools_PaveBlock & ChangeFromKey(const TopoDS_Shape &K);

};
%feature("shadow") NMTTools_IndexedDataMapOfShapePaveBlock::~NMTTools_IndexedDataMapOfShapePaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_IndexedDataMapOfShapePaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger;
class NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger(const Standard_Integer &K1, const Standard_Integer K2, const TColStd_IndexedMapOfInteger &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey1() {
				return (Standard_Integer) $self->Key1();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey1(Standard_Integer value ) {
				$self->Key1()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger {
	Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger GetHandle() {
	return *(Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger*) &$self;
	}
};
%extend NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger::~NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_MapOfPaveBlock;
class NMTTools_MapOfPaveBlock : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTTools_MapOfPaveBlock(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTTools_MapOfPaveBlock & Assign(const NMTTools_MapOfPaveBlock &Other);
		%feature("autodoc", "1");
		NMTTools_MapOfPaveBlock & operator=(const NMTTools_MapOfPaveBlock &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const BOPTools_PaveBlock &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BOPTools_PaveBlock &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const BOPTools_PaveBlock &aKey);

};
%feature("shadow") NMTTools_MapOfPaveBlock::~NMTTools_MapOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_MapOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_CoupleOfShape;
class NMTTools_CoupleOfShape {
	public:
		%feature("autodoc", "1");
		NMTTools_CoupleOfShape();
		%feature("autodoc", "1");
		void SetShape1(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape2() const;

};
%feature("shadow") NMTTools_CoupleOfShape::~NMTTools_CoupleOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_CoupleOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_IteratorOfCoupleOfShape;
class NMTTools_IteratorOfCoupleOfShape : public BOPTools_IteratorOfCoupleOfShape {
	public:
		%feature("autodoc", "1");
		NMTTools_IteratorOfCoupleOfShape();
		%feature("autodoc", "1");
		void SetDS(const NMTDS_PShapesDataStructure &pDS);
		%feature("autodoc", "1");
		virtual		void Initialize(const TopAbs_ShapeEnum Type1, const TopAbs_ShapeEnum Type2);
		%feature("autodoc","Current() -> [Standard_Integer, Standard_Integer]");

		virtual		void Current(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Boolean & WithSubShape) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean More() const;

};
%feature("shadow") NMTTools_IteratorOfCoupleOfShape::~NMTTools_IteratorOfCoupleOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_IteratorOfCoupleOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_ListOfCommonBlock;
class NMTTools_ListOfCommonBlock {
	public:
		%feature("autodoc", "1");
		NMTTools_ListOfCommonBlock();
		%feature("autodoc", "1");
		void Assign(const NMTTools_ListOfCommonBlock &Other);
		%feature("autodoc", "1");
		void operator=(const NMTTools_ListOfCommonBlock &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const NMTTools_CommonBlock &I);
		%feature("autodoc", "1");
		void Prepend(const NMTTools_CommonBlock &I, NMTTools_ListIteratorOfListOfCommonBlock & theIt);
		%feature("autodoc", "1");
		void Prepend(NMTTools_ListOfCommonBlock & Other);
		%feature("autodoc", "1");
		void Append(const NMTTools_CommonBlock &I);
		%feature("autodoc", "1");
		void Append(const NMTTools_CommonBlock &I, NMTTools_ListIteratorOfListOfCommonBlock & theIt);
		%feature("autodoc", "1");
		void Append(NMTTools_ListOfCommonBlock & Other);
		%feature("autodoc", "1");
		NMTTools_CommonBlock & First() const;
		%feature("autodoc", "1");
		NMTTools_CommonBlock & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(NMTTools_ListIteratorOfListOfCommonBlock & It);
		%feature("autodoc", "1");
		void InsertBefore(const NMTTools_CommonBlock &I, NMTTools_ListIteratorOfListOfCommonBlock & It);
		%feature("autodoc", "1");
		void InsertBefore(NMTTools_ListOfCommonBlock & Other, NMTTools_ListIteratorOfListOfCommonBlock & It);
		%feature("autodoc", "1");
		void InsertAfter(const NMTTools_CommonBlock &I, NMTTools_ListIteratorOfListOfCommonBlock & It);
		%feature("autodoc", "1");
		void InsertAfter(NMTTools_ListOfCommonBlock & Other, NMTTools_ListIteratorOfListOfCommonBlock & It);

};
%feature("shadow") NMTTools_ListOfCommonBlock::~NMTTools_ListOfCommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_ListOfCommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_StdMapNodeOfMapOfPaveBlock;
class NMTTools_StdMapNodeOfMapOfPaveBlock : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTTools_StdMapNodeOfMapOfPaveBlock(const BOPTools_PaveBlock &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTTools_StdMapNodeOfMapOfPaveBlock {
	Handle_NMTTools_StdMapNodeOfMapOfPaveBlock GetHandle() {
	return *(Handle_NMTTools_StdMapNodeOfMapOfPaveBlock*) &$self;
	}
};
%extend NMTTools_StdMapNodeOfMapOfPaveBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTTools_StdMapNodeOfMapOfPaveBlock::~NMTTools_StdMapNodeOfMapOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_StdMapNodeOfMapOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_ListIteratorOfListOfCommonBlock;
class NMTTools_ListIteratorOfListOfCommonBlock {
	public:
		%feature("autodoc", "1");
		NMTTools_ListIteratorOfListOfCommonBlock();
		%feature("autodoc", "1");
		NMTTools_ListIteratorOfListOfCommonBlock(const NMTTools_ListOfCommonBlock &L);
		%feature("autodoc", "1");
		void Initialize(const NMTTools_ListOfCommonBlock &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		NMTTools_CommonBlock & Value() const;

};
%feature("shadow") NMTTools_ListIteratorOfListOfCommonBlock::~NMTTools_ListIteratorOfListOfCommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_ListIteratorOfListOfCommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock;
class NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock(const Standard_Integer &K, const BOPTools_ListOfPaveBlock &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		BOPTools_ListOfPaveBlock & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock {
	Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock GetHandle() {
	return *(Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock*) &$self;
	}
};
%extend NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock::~NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_CommonBlockPool;
class NMTTools_CommonBlockPool {
	public:
		%feature("autodoc", "1");
		NMTTools_CommonBlockPool(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const NMTTools_ListOfCommonBlock &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const NMTTools_ListOfCommonBlock & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const NMTTools_ListOfCommonBlock & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		NMTTools_ListOfCommonBlock & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		NMTTools_ListOfCommonBlock & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") NMTTools_CommonBlockPool::~NMTTools_CommonBlockPool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_CommonBlockPool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_ListNodeOfListOfCommonBlock;
class NMTTools_ListNodeOfListOfCommonBlock : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTTools_ListNodeOfListOfCommonBlock(const NMTTools_CommonBlock &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		NMTTools_CommonBlock & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTTools_ListNodeOfListOfCommonBlock {
	Handle_NMTTools_ListNodeOfListOfCommonBlock GetHandle() {
	return *(Handle_NMTTools_ListNodeOfListOfCommonBlock*) &$self;
	}
};
%extend NMTTools_ListNodeOfListOfCommonBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTTools_ListNodeOfListOfCommonBlock::~NMTTools_ListNodeOfListOfCommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_ListNodeOfListOfCommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_Tools;
class NMTTools_Tools {
	public:
		%feature("autodoc", "1");
		NMTTools_Tools();
		%feature("autodoc", "1");
		static		void MakeNewVertex(const TopTools_ListOfShape &aLV, TopoDS_Vertex & aNewVertex);
		%feature("autodoc", "1");
		static		void FindChains(const BOPTools_CArray1OfVVInterference &aVVs, BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger & aMCX);
		%feature("autodoc", "1");
		static		void FindChains(const BOPTools_CArray1OfSSInterference &aVVs, BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger & aMCX);
		%feature("autodoc", "1");
		static		void FindChains(const BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger &aMCV, BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger & aMCX);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitInOnFace(const TopoDS_Edge &aE, const TopoDS_Face &aF, IntTools_Context & aCtx);
		%feature("autodoc", "1");
		static		Standard_Boolean AreFacesSameDomain(const TopoDS_Face &aF1, const TopoDS_Face &aF2, IntTools_Context & aCtx);
		%feature("autodoc", "1");
		static		void FindChains(const NMTTools_ListOfCoupleOfShape &aLCS, NMTTools_IndexedDataMapOfShapeIndexedMapOfShape & aM);
		%feature("autodoc", "1");
		static		void FindChains(const NMTTools_IndexedDataMapOfShapeIndexedMapOfShape &aM1, NMTTools_IndexedDataMapOfShapeIndexedMapOfShape & aM2);
		%feature("autodoc", "1");
		static		void MakePCurve(const TopoDS_Edge &aE, const TopoDS_Face &aF, const Handle_Geom2d_Curve &aC2D);
		%feature("autodoc", "1");
		static		void UpdateEdge(const TopoDS_Edge &aE, const Standard_Real aTol);

};
%feature("shadow") NMTTools_Tools::~NMTTools_Tools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_Tools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_CommonBlockAPI;
class NMTTools_CommonBlockAPI {
	public:
		%feature("autodoc", "1");
		NMTTools_CommonBlockAPI(const NMTTools_ListOfCommonBlock &aList);
		%feature("autodoc", "1");
		const NMTTools_ListOfCommonBlock & List() const;
		%feature("autodoc", "1");
		const BOPTools_ListOfPaveBlock & CommonPaveBlocks(const Standard_Integer anE) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCommonBlock(const BOPTools_PaveBlock &aPB) const;
		%feature("autodoc", "1");
		NMTTools_CommonBlock & CommonBlock(const BOPTools_PaveBlock &aPB) const;

};
%feature("shadow") NMTTools_CommonBlockAPI::~NMTTools_CommonBlockAPI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_CommonBlockAPI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_ListOfCoupleOfShape;
class NMTTools_ListOfCoupleOfShape {
	public:
		%feature("autodoc", "1");
		NMTTools_ListOfCoupleOfShape();
		%feature("autodoc", "1");
		void Assign(const NMTTools_ListOfCoupleOfShape &Other);
		%feature("autodoc", "1");
		void operator=(const NMTTools_ListOfCoupleOfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const NMTTools_CoupleOfShape &I);
		%feature("autodoc", "1");
		void Prepend(const NMTTools_CoupleOfShape &I, NMTTools_ListIteratorOfListOfCoupleOfShape & theIt);
		%feature("autodoc", "1");
		void Prepend(NMTTools_ListOfCoupleOfShape & Other);
		%feature("autodoc", "1");
		void Append(const NMTTools_CoupleOfShape &I);
		%feature("autodoc", "1");
		void Append(const NMTTools_CoupleOfShape &I, NMTTools_ListIteratorOfListOfCoupleOfShape & theIt);
		%feature("autodoc", "1");
		void Append(NMTTools_ListOfCoupleOfShape & Other);
		%feature("autodoc", "1");
		NMTTools_CoupleOfShape & First() const;
		%feature("autodoc", "1");
		NMTTools_CoupleOfShape & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(NMTTools_ListIteratorOfListOfCoupleOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(const NMTTools_CoupleOfShape &I, NMTTools_ListIteratorOfListOfCoupleOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(NMTTools_ListOfCoupleOfShape & Other, NMTTools_ListIteratorOfListOfCoupleOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(const NMTTools_CoupleOfShape &I, NMTTools_ListIteratorOfListOfCoupleOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(NMTTools_ListOfCoupleOfShape & Other, NMTTools_ListIteratorOfListOfCoupleOfShape & It);

};
%feature("shadow") NMTTools_ListOfCoupleOfShape::~NMTTools_ListOfCoupleOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_ListOfCoupleOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape;
class NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape(const TopoDS_Shape &K1, const Standard_Integer K2, const TopTools_IndexedMapOfShape &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape {
	Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape GetHandle() {
	return *(Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape*) &$self;
	}
};
%extend NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape::~NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_CommonBlock;
class NMTTools_CommonBlock {
	public:
		%feature("autodoc", "1");
		NMTTools_CommonBlock();
		%feature("autodoc", "1");
		void AddPaveBlock(const BOPTools_PaveBlock &aPB);
		%feature("autodoc", "1");
		void AddFace(const Standard_Integer aF);
		%feature("autodoc", "1");
		void AddFaces(const TColStd_ListOfInteger &aLF);
		%feature("autodoc", "1");
		const BOPTools_ListOfPaveBlock & PaveBlocks() const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Faces() const;
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & PaveBlock1() const;
		%feature("autodoc", "1");
		BOPTools_PaveBlock & PaveBlock1(const Standard_Integer anIx);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & PaveBlockOnEdge(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		Standard_Boolean IsPaveBlockOnFace(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPaveBlockOnEdge(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const NMTTools_CommonBlock &aCB) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BOPTools_PaveBlock &aPB) const;

};
%feature("shadow") NMTTools_CommonBlock::~NMTTools_CommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_CommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_DataMapOfIntegerListOfPaveBlock;
class NMTTools_DataMapOfIntegerListOfPaveBlock : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTTools_DataMapOfIntegerListOfPaveBlock(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTTools_DataMapOfIntegerListOfPaveBlock & Assign(const NMTTools_DataMapOfIntegerListOfPaveBlock &Other);
		%feature("autodoc", "1");
		NMTTools_DataMapOfIntegerListOfPaveBlock & operator=(const NMTTools_DataMapOfIntegerListOfPaveBlock &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const BOPTools_ListOfPaveBlock &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const BOPTools_ListOfPaveBlock & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const BOPTools_ListOfPaveBlock & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		BOPTools_ListOfPaveBlock & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		BOPTools_ListOfPaveBlock & operator()(const Standard_Integer &K);

};
%feature("shadow") NMTTools_DataMapOfIntegerListOfPaveBlock::~NMTTools_DataMapOfIntegerListOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_DataMapOfIntegerListOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_ListIteratorOfListOfCoupleOfShape;
class NMTTools_ListIteratorOfListOfCoupleOfShape {
	public:
		%feature("autodoc", "1");
		NMTTools_ListIteratorOfListOfCoupleOfShape();
		%feature("autodoc", "1");
		NMTTools_ListIteratorOfListOfCoupleOfShape(const NMTTools_ListOfCoupleOfShape &L);
		%feature("autodoc", "1");
		void Initialize(const NMTTools_ListOfCoupleOfShape &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		NMTTools_CoupleOfShape & Value() const;

};
%feature("shadow") NMTTools_ListIteratorOfListOfCoupleOfShape::~NMTTools_ListIteratorOfListOfCoupleOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_ListIteratorOfListOfCoupleOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_IndexedDataMapOfIndexedMapOfInteger;
class NMTTools_IndexedDataMapOfIndexedMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapOfIndexedMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapOfIndexedMapOfInteger & Assign(const NMTTools_IndexedDataMapOfIndexedMapOfInteger &Other);
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapOfIndexedMapOfInteger & operator=(const NMTTools_IndexedDataMapOfIndexedMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const TColStd_IndexedMapOfInteger &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const TColStd_IndexedMapOfInteger &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TColStd_IndexedMapOfInteger & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TColStd_IndexedMapOfInteger & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TColStd_IndexedMapOfInteger & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & ChangeFromKey(const Standard_Integer &K);

};
%feature("shadow") NMTTools_IndexedDataMapOfIndexedMapOfInteger::~NMTTools_IndexedDataMapOfIndexedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_IndexedDataMapOfIndexedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_PaveFiller;
class NMTTools_PaveFiller {
	public:
		%feature("autodoc", "1");
		NMTTools_PaveFiller();
		%feature("autodoc", "1");
		void SetCompositeShape(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		const TopoDS_Shape & CompositeShape() const;
		%feature("autodoc", "1");
		NMTDS_PShapesDataStructure DS();
		%feature("autodoc", "1");
		NMTDS_PIterator DSIt();
		%feature("autodoc", "1");
		NMTDS_PInterfPool IP();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const IntTools_Context & Context() const;
		%feature("autodoc", "1");
		IntTools_Context & ChangeContext();
		%feature("autodoc", "1");
		const BOPTools_PavePool & PavePool() const;
		%feature("autodoc", "1");
		BOPTools_PavePool & ChangePavePool();
		%feature("autodoc", "1");
		BOPTools_PavePool & ChangePavePoolNew();
		%feature("autodoc", "1");
		const NMTTools_CommonBlockPool & CommonBlockPool() const;
		%feature("autodoc", "1");
		NMTTools_CommonBlockPool & ChangeCommonBlockPool();
		%feature("autodoc", "1");
		const BOPTools_SplitShapesPool & SplitShapesPool() const;
		%feature("autodoc", "1");
		BOPTools_SplitShapesPool & ChangeSplitShapesPool();
		%feature("autodoc", "1");
		Standard_Integer FindSDVertex(const Standard_Integer nV) const;
		%feature("autodoc", "1");
		Standard_Integer SplitsInFace(const Standard_Integer aBid, const Standard_Integer nF1, const Standard_Integer nF2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsInFace(const Standard_Integer nE1, const Standard_Integer nF2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnEdge(const Standard_Integer nE1, const Standard_Integer nE2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnFace(const Standard_Integer nE1, const Standard_Integer nF2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnFace(const Standard_Integer aBid, const Standard_Integer nF1, const Standard_Integer nF2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsInFace(const Standard_Integer aBid, const Standard_Integer nF1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsInFace(const Standard_Integer nE1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnEdge(const Standard_Integer nE1, const Standard_Integer nE2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnFace(const Standard_Integer nE1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnFace(const Standard_Integer aBid, const Standard_Integer nF1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsFace(const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsFace(const Standard_Integer nF2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer CommonBlocksFace(const Standard_Integer nF, NMTTools_ListOfCommonBlock & aLCB);
		%feature("autodoc", "1");
		void PrepareFace(const Standard_Integer nF, TopoDS_Face & aF);
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & RealPaveBlock(const BOPTools_PaveBlock &aPB);
		%feature("autodoc","RealPaveBlock(const aPB) -> Standard_Integer");

		const BOPTools_PaveBlock & RealPaveBlock(const BOPTools_PaveBlock &aPB, TColStd_ListOfInteger & aLB, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		void RealSplitsFace(const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Boolean HasRealSplitsInOnFace(const Standard_Integer nF1, const Standard_Integer nF2);
		%feature("autodoc", "1");
		void RealSplitsInFace(const Standard_Integer aBid, const Standard_Integer nF1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		void RealSplitsInFace(const Standard_Integer nE1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		void RealSplitsOnEdge(const Standard_Integer nE1, const Standard_Integer nE2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		void RealSplitsOnFace(const Standard_Integer nE1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		void RealSplitsOnFace(const Standard_Integer aBid, const Standard_Integer nF1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		void PrepareSetForFace(const Standard_Integer nF1, const Standard_Integer nF2, const BOPTools_ListOfPaveBlock &aLPB, BOPTools_PaveSet & aPSF);
		%feature("autodoc", "1");
		void PutPaveOnCurve(const BOPTools_PaveSet &aPSF, const Standard_Real aTol, BOPTools_Curve & aBC);
		%feature("autodoc", "1");
		void PutBoundPaveOnCurve(BOPTools_Curve & aBC, BOPTools_SSInterference & aFF);
		%feature("autodoc", "1");
		void PutBoundPaveOnCurve(const gp_Pnt &aP, const Standard_Real aT, BOPTools_Curve & aBC, BOPTools_SSInterference & aFF);
		%feature("autodoc", "1");
		Standard_Boolean FindPave(const gp_Pnt &aP, const Standard_Real aTpV, const BOPTools_PaveSet &aPS, BOPTools_Pave & aPV);
		%feature("autodoc", "1");
		Standard_Integer CheckIntermediatePoint(const BOPTools_PaveBlock &aPB, const BOPTools_PaveBlock &aPBR, const Standard_Real aTol);
		%feature("autodoc", "1");
		Standard_Boolean IsExistingPaveBlock(const BOPTools_PaveBlock &aPB, const BOPTools_ListOfPaveBlock &aLPB, const Standard_Real aTol);
		%feature("autodoc", "1");
		void MakePCurves();
		%feature("autodoc", "1");
		const NMTTools_IndexedDataMapOfIndexedMapOfInteger & AloneVertices() const;
		%feature("autodoc", "1");
		Standard_Boolean IsExistingPaveBlock(const BOPTools_PaveBlock &aPB, const TopTools_ListOfShape &aLPB, const Standard_Real aTol);
		%feature("autodoc", "1");
		Standard_Boolean CheckCoincidence(const BOPTools_PaveBlock &aPB, const BOPTools_ListOfPaveBlock &aLPB);
		%feature("autodoc", "1");
		Standard_Integer CheckIntermediatePoint(const BOPTools_PaveBlock &aPB, const TopoDS_Edge &aE, const Standard_Real aTol);
		%feature("autodoc", "1");
		void SharedEdges(const Standard_Integer nF1, const Standard_Integer nF2, TColStd_ListOfInteger & aLNE, TopTools_ListOfShape & aLSE);
		%feature("autodoc", "1");
		void FuseVertices(const TopoDS_Shape &aC, TopTools_DataMapOfShapeShape & aDMVV) const;

};
%feature("shadow") NMTTools_PaveFiller::~NMTTools_PaveFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_PaveFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_CheckerSI;
class NMTTools_CheckerSI : public NMTTools_PaveFiller {
	public:
		%feature("autodoc", "1");
		NMTTools_CheckerSI();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Integer StopStatus() const;

};
%feature("shadow") NMTTools_CheckerSI::~NMTTools_CheckerSI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_CheckerSI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_ListNodeOfListOfCoupleOfShape;
class NMTTools_ListNodeOfListOfCoupleOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTTools_ListNodeOfListOfCoupleOfShape(const NMTTools_CoupleOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		NMTTools_CoupleOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTTools_ListNodeOfListOfCoupleOfShape {
	Handle_NMTTools_ListNodeOfListOfCoupleOfShape GetHandle() {
	return *(Handle_NMTTools_ListNodeOfListOfCoupleOfShape*) &$self;
	}
};
%extend NMTTools_ListNodeOfListOfCoupleOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTTools_ListNodeOfListOfCoupleOfShape::~NMTTools_ListNodeOfListOfCoupleOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_ListNodeOfListOfCoupleOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock;
class NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock(const TopoDS_Shape &K1, const Standard_Integer K2, const BOPTools_PaveBlock &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		BOPTools_PaveBlock & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock {
	Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock GetHandle() {
	return *(Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock*) &$self;
	}
};
%extend NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock::~NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock;
class NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock();
		%feature("autodoc", "1");
		NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock(const NMTTools_DataMapOfIntegerListOfPaveBlock &aMap);
		%feature("autodoc", "1");
		void Initialize(const NMTTools_DataMapOfIntegerListOfPaveBlock &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const BOPTools_ListOfPaveBlock & Value() const;

};
%feature("shadow") NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock::~NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};
