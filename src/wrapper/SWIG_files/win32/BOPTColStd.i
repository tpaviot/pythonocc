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

%module BOPTColStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BOPTColStd_renames.i


%include BOPTColStd_required_python_modules.i


%include BOPTColStd_dependencies.i


%include BOPTColStd_headers.i




%nodefaultctor Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger;
class Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger();
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger(const Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger(const BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger & operator=(const Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger & operator=(const BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger {
	BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger* GetObject() {
	return (BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger::~Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger;
class Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger();
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger(const Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger(const BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger *anItem);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger & operator=(const Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger & operator=(const BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger {
	BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger* GetObject() {
	return (BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger::~Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger;
class Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger();
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger(const Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger(const BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger *anItem);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger & operator=(const Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger & operator=(const BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger {
	BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger* GetObject() {
	return (BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger::~Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTColStd_ListNodeOfListOfListOfShape;
class Handle_BOPTColStd_ListNodeOfListOfListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTColStd_ListNodeOfListOfListOfShape();
		%feature("autodoc", "1");
		Handle_BOPTColStd_ListNodeOfListOfListOfShape(const Handle_BOPTColStd_ListNodeOfListOfListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_ListNodeOfListOfListOfShape(const BOPTColStd_ListNodeOfListOfListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BOPTColStd_ListNodeOfListOfListOfShape & operator=(const Handle_BOPTColStd_ListNodeOfListOfListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_ListNodeOfListOfListOfShape & operator=(const BOPTColStd_ListNodeOfListOfListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTColStd_ListNodeOfListOfListOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTColStd_ListNodeOfListOfListOfShape {
	BOPTColStd_ListNodeOfListOfListOfShape* GetObject() {
	return (BOPTColStd_ListNodeOfListOfListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTColStd_ListNodeOfListOfListOfShape::~Handle_BOPTColStd_ListNodeOfListOfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTColStd_ListNodeOfListOfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_IndexedDataMapOfIntegerInteger;
class BOPTColStd_IndexedDataMapOfIntegerInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfIntegerInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfIntegerInteger & Assign(const BOPTColStd_IndexedDataMapOfIntegerInteger &Other);
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfIntegerInteger & operator=(const BOPTColStd_IndexedDataMapOfIntegerInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const Standard_Integer &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer I) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFromIndex(const Standard_Integer I) {
				return (Standard_Integer) $self->ChangeFromIndex(I);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFromIndex(Standard_Integer value ,const Standard_Integer I) {
				$self->ChangeFromIndex(I)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFromKey(const Standard_Integer &K) {
				return (Standard_Integer) $self->ChangeFromKey(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFromKey(Standard_Integer value ,const Standard_Integer &K) {
				$self->ChangeFromKey(K)=value;
				}
		};

};
%feature("shadow") BOPTColStd_IndexedDataMapOfIntegerInteger::~BOPTColStd_IndexedDataMapOfIntegerInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_IndexedDataMapOfIntegerInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_CArray1OfShape;
class BOPTColStd_CArray1OfShape {
	public:
		%feature("autodoc", "1");
		BOPTColStd_CArray1OfShape(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
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
		Standard_Integer Append(const TopoDS_Shape Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TopoDS_Shape  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTColStd_CArray1OfShape::~BOPTColStd_CArray1OfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_CArray1OfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger;
class BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger & Assign(const BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger &Other);
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger & operator=(const BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger &Other);
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
%feature("shadow") BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger::~BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_ShapeWithRankHasher;
class BOPTColStd_ShapeWithRankHasher {
	public:
		%feature("autodoc", "1");
		BOPTColStd_ShapeWithRankHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const BOPTColStd_ShapeWithRank &SR, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const BOPTColStd_ShapeWithRank &SR1, const BOPTColStd_ShapeWithRank &SR2);

};
%feature("shadow") BOPTColStd_ShapeWithRankHasher::~BOPTColStd_ShapeWithRankHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_ShapeWithRankHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_ShapeWithRank;
class BOPTColStd_ShapeWithRank {
	public:
		%feature("autodoc", "1");
		BOPTColStd_ShapeWithRank();
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		void SetRank(const Standard_Integer aR);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		Standard_Integer Rank() const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BOPTColStd_ShapeWithRank &Other) const;

};
%extend BOPTColStd_ShapeWithRank {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BOPTColStd_ShapeWithRank::~BOPTColStd_ShapeWithRank %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_ShapeWithRank {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_CArray1OfPnt2d;
class BOPTColStd_CArray1OfPnt2d {
	public:
		%feature("autodoc", "1");
		BOPTColStd_CArray1OfPnt2d(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
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
		Standard_Integer Append(const gp_Pnt2d Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt2d  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Pnt2d  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTColStd_CArray1OfPnt2d::~BOPTColStd_CArray1OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_CArray1OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger;
class BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger(const Standard_Integer &K1, const Standard_Integer K2, const Standard_Integer &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger {
	Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger GetHandle() {
	return *(Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger*) &$self;
	}
};
%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger::~BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_IndexedDataMapOfSWRInteger;
class BOPTColStd_IndexedDataMapOfSWRInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfSWRInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfSWRInteger & Assign(const BOPTColStd_IndexedDataMapOfSWRInteger &Other);
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfSWRInteger & operator=(const BOPTColStd_IndexedDataMapOfSWRInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const BOPTColStd_ShapeWithRank &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BOPTColStd_ShapeWithRank &K, const Standard_Integer &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BOPTColStd_ShapeWithRank &K) const;
		%feature("autodoc", "1");
		const BOPTColStd_ShapeWithRank & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer I) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFromIndex(const Standard_Integer I) {
				return (Standard_Integer) $self->ChangeFromIndex(I);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFromIndex(Standard_Integer value ,const Standard_Integer I) {
				$self->ChangeFromIndex(I)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BOPTColStd_ShapeWithRank &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromKey(const BOPTColStd_ShapeWithRank &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFromKey(const BOPTColStd_ShapeWithRank &K) {
				return (Standard_Integer) $self->ChangeFromKey(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFromKey(Standard_Integer value ,const BOPTColStd_ShapeWithRank &K) {
				$self->ChangeFromKey(K)=value;
				}
		};

};
%feature("shadow") BOPTColStd_IndexedDataMapOfSWRInteger::~BOPTColStd_IndexedDataMapOfSWRInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_IndexedDataMapOfSWRInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_ListIteratorOfListOfListOfShape;
class BOPTColStd_ListIteratorOfListOfListOfShape {
	public:
		%feature("autodoc", "1");
		BOPTColStd_ListIteratorOfListOfListOfShape();
		%feature("autodoc", "1");
		BOPTColStd_ListIteratorOfListOfListOfShape(const BOPTColStd_ListOfListOfShape &L);
		%feature("autodoc", "1");
		void Initialize(const BOPTColStd_ListOfListOfShape &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;

};
%feature("shadow") BOPTColStd_ListIteratorOfListOfListOfShape::~BOPTColStd_ListIteratorOfListOfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_ListIteratorOfListOfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_ListOfListOfShape;
class BOPTColStd_ListOfListOfShape {
	public:
		%feature("autodoc", "1");
		BOPTColStd_ListOfListOfShape();
		%feature("autodoc", "1");
		void Assign(const BOPTColStd_ListOfListOfShape &Other);
		%feature("autodoc", "1");
		void operator=(const BOPTColStd_ListOfListOfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		void Prepend(const TopTools_ListOfShape &I, BOPTColStd_ListIteratorOfListOfListOfShape & theIt);
		%feature("autodoc", "1");
		void Prepend(BOPTColStd_ListOfListOfShape & Other);
		%feature("autodoc", "1");
		void Append(const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		void Append(const TopTools_ListOfShape &I, BOPTColStd_ListIteratorOfListOfListOfShape & theIt);
		%feature("autodoc", "1");
		void Append(BOPTColStd_ListOfListOfShape & Other);
		%feature("autodoc", "1");
		TopTools_ListOfShape & First() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOPTColStd_ListIteratorOfListOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopTools_ListOfShape &I, BOPTColStd_ListIteratorOfListOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(BOPTColStd_ListOfListOfShape & Other, BOPTColStd_ListIteratorOfListOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopTools_ListOfShape &I, BOPTColStd_ListIteratorOfListOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(BOPTColStd_ListOfListOfShape & Other, BOPTColStd_ListIteratorOfListOfListOfShape & It);

};
%feature("shadow") BOPTColStd_ListOfListOfShape::~BOPTColStd_ListOfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_ListOfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_CArray1OfInteger;
class BOPTColStd_CArray1OfInteger {
	public:
		%feature("autodoc", "1");
		BOPTColStd_CArray1OfInteger(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
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
		Standard_Integer Append(const Standard_Integer &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeValue(const Standard_Integer Index) {
				return (Standard_Integer) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Integer value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTColStd_CArray1OfInteger::~BOPTColStd_CArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_CArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_ListNodeOfListOfListOfShape;
class BOPTColStd_ListNodeOfListOfListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTColStd_ListNodeOfListOfListOfShape(const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTColStd_ListNodeOfListOfListOfShape {
	Handle_BOPTColStd_ListNodeOfListOfListOfShape GetHandle() {
	return *(Handle_BOPTColStd_ListNodeOfListOfListOfShape*) &$self;
	}
};
%extend BOPTColStd_ListNodeOfListOfListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BOPTColStd_ListNodeOfListOfListOfShape::~BOPTColStd_ListNodeOfListOfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_ListNodeOfListOfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger;
class BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger(const BOPTColStd_ShapeWithRank &K1, const Standard_Integer K2, const Standard_Integer &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BOPTColStd_ShapeWithRank & Key1() const;
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
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger {
	Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger GetHandle() {
	return *(Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger*) &$self;
	}
};
%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger::~BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_Failure;
class BOPTColStd_Failure {
	public:
		%feature("autodoc", "1");
		BOPTColStd_Failure(const char * aMessage);
		%feature("autodoc", "1");
		char * Message() const;

};
%feature("shadow") BOPTColStd_Failure::~BOPTColStd_Failure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_Failure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger;
class BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger(const Standard_Integer &K1, const Standard_Integer K2, const TColStd_IndexedMapOfInteger &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger {
	Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger GetHandle() {
	return *(Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger*) &$self;
	}
};
%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger::~BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTColStd_Dump;
class BOPTColStd_Dump {
	public:
		%feature("autodoc", "1");
		BOPTColStd_Dump();
		%feature("autodoc", "1");
		static		void PrintMessage(const TCollection_AsciiString &aMessage);
		%feature("autodoc", "1");
		static		void PrintMessage(const char * aMessage);

};
%feature("shadow") BOPTColStd_Dump::~BOPTColStd_Dump %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTColStd_Dump {
	void _kill_pointed() {
		delete $self;
	}
};
