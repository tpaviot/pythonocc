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

%module NMTDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include NMTDS_renames.i


%include NMTDS_required_python_modules.i


%include NMTDS_dependencies.i


%include NMTDS_headers.i

typedef NMTDS_ShapesDataStructure * NMTDS_PShapesDataStructure;
typedef NMTDS_Iterator * NMTDS_PIterator;
typedef NCollection_UBTree<int, Bnd_Box> NMTDS_BoxBndTree;
typedef NMTDS_InterfPool * NMTDS_PInterfPool;

enum NMTDS_InterfType {
	NMTDS_TI_VV,
	NMTDS_TI_VE,
	NMTDS_TI_VF,
	NMTDS_TI_EE,
	NMTDS_TI_EF,
	NMTDS_TI_FF,
	NMTDS_TI_UNKNOWN,
	};



%nodefaultctor Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape;
class Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape();
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape & operator=(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape & operator=(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape* GetObject() {
	return (NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape*)$self->Access();
	}
};
%feature("shadow") Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::~Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTDS_StdMapNodeOfMapOfPassKey;
class Handle_NMTDS_StdMapNodeOfMapOfPassKey : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey();
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey(const Handle_NMTDS_StdMapNodeOfMapOfPassKey &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey(const NMTDS_StdMapNodeOfMapOfPassKey *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey & operator=(const Handle_NMTDS_StdMapNodeOfMapOfPassKey &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey & operator=(const NMTDS_StdMapNodeOfMapOfPassKey *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTDS_StdMapNodeOfMapOfPassKey const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_StdMapNodeOfMapOfPassKey {
	NMTDS_StdMapNodeOfMapOfPassKey* GetObject() {
	return (NMTDS_StdMapNodeOfMapOfPassKey*)$self->Access();
	}
};
%feature("shadow") Handle_NMTDS_StdMapNodeOfMapOfPassKey::~Handle_NMTDS_StdMapNodeOfMapOfPassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTDS_StdMapNodeOfMapOfPassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors;
class Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors();
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors(const Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors(const NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors & operator=(const Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors & operator=(const NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors* GetObject() {
	return (NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors*)$self->Access();
	}
};
%feature("shadow") Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors::~Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTDS_ListNodeOfListOfPassKeyBoolean;
class Handle_NMTDS_ListNodeOfListOfPassKeyBoolean : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean();
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean(const Handle_NMTDS_ListNodeOfListOfPassKeyBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean(const NMTDS_ListNodeOfListOfPassKeyBoolean *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean & operator=(const Handle_NMTDS_ListNodeOfListOfPassKeyBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean & operator=(const NMTDS_ListNodeOfListOfPassKeyBoolean *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_ListNodeOfListOfPassKeyBoolean {
	NMTDS_ListNodeOfListOfPassKeyBoolean* GetObject() {
	return (NMTDS_ListNodeOfListOfPassKeyBoolean*)$self->Access();
	}
};
%feature("shadow") Handle_NMTDS_ListNodeOfListOfPassKeyBoolean::~Handle_NMTDS_ListNodeOfListOfPassKeyBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTDS_ListNodeOfListOfPassKeyBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTDS_ListNodeOfListOfPassKey;
class Handle_NMTDS_ListNodeOfListOfPassKey : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey();
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey(const Handle_NMTDS_ListNodeOfListOfPassKey &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey(const NMTDS_ListNodeOfListOfPassKey *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey & operator=(const Handle_NMTDS_ListNodeOfListOfPassKey &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey & operator=(const NMTDS_ListNodeOfListOfPassKey *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTDS_ListNodeOfListOfPassKey const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_ListNodeOfListOfPassKey {
	NMTDS_ListNodeOfListOfPassKey* GetObject() {
	return (NMTDS_ListNodeOfListOfPassKey*)$self->Access();
	}
};
%feature("shadow") Handle_NMTDS_ListNodeOfListOfPassKey::~Handle_NMTDS_ListNodeOfListOfPassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTDS_ListNodeOfListOfPassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger;
class Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger & operator=(const Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger & operator=(const NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger* GetObject() {
	return (NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger::~Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
class Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox();
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox & operator=(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox & operator=(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox* GetObject() {
	return (NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox*)$self->Access();
	}
};
%feature("shadow") Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::~Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger;
class Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger();
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger & operator=(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger & operator=(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger* GetObject() {
	return (NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger*)$self->Access();
	}
};
%feature("shadow") Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger::~Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean;
class Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean();
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean(const Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean(const NMTDS_StdMapNodeOfMapOfPassKeyBoolean *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean & operator=(const Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean & operator=(const NMTDS_StdMapNodeOfMapOfPassKeyBoolean *anItem);
		%feature("autodoc", "1");
		static		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean {
	NMTDS_StdMapNodeOfMapOfPassKeyBoolean* GetObject() {
	return (NMTDS_StdMapNodeOfMapOfPassKeyBoolean*)$self->Access();
	}
};
%feature("shadow") Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean::~Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger;
class NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger(const Standard_Integer &K1, const Standard_Integer K2, const BooleanOperations_IndexedDataMapOfShapeInteger &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		BooleanOperations_IndexedDataMapOfShapeInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger GetHandle() {
	return *(Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger*) &$self;
	}
};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger::~NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_CArray1OfIndexRange;
class NMTDS_CArray1OfIndexRange {
	public:
		%feature("autodoc", "1");
		NMTDS_CArray1OfIndexRange(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
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
		Standard_Integer Append(const NMTDS_IndexRange &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const NMTDS_IndexRange & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const NMTDS_IndexRange & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		NMTDS_IndexRange & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		NMTDS_IndexRange & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") NMTDS_CArray1OfIndexRange::~NMTDS_CArray1OfIndexRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_CArray1OfIndexRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_PassKeyShapeMapHasher;
class NMTDS_PassKeyShapeMapHasher {
	public:
		%feature("autodoc", "1");
		NMTDS_PassKeyShapeMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const NMTDS_PassKeyShape &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const NMTDS_PassKeyShape &aPKey1, const NMTDS_PassKeyShape &aPKey2);

};
%feature("shadow") NMTDS_PassKeyShapeMapHasher::~NMTDS_PassKeyShapeMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_PassKeyShapeMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors;
class NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors {
	public:
		%feature("autodoc", "1");
		NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors();
		%feature("autodoc", "1");
		void Assign(const NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors &Other);
		%feature("autodoc", "1");
		void operator=(const NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I);
		%feature("autodoc", "1");
		void Prepend(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & theIt);
		%feature("autodoc", "1");
		void Prepend(NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors & Other);
		%feature("autodoc", "1");
		void Append(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I);
		%feature("autodoc", "1");
		void Append(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & theIt);
		%feature("autodoc", "1");
		void Append(NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors & Other);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & First() const;
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & It);
		%feature("autodoc", "1");
		void InsertBefore(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & It);
		%feature("autodoc", "1");
		void InsertBefore(NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors & Other, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & It);
		%feature("autodoc", "1");
		void InsertAfter(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & It);
		%feature("autodoc", "1");
		void InsertAfter(NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors & Other, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & It);

};
%feature("shadow") NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors::~NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_PassKey;
class NMTDS_PassKey {
	public:
		%feature("autodoc", "1");
		NMTDS_PassKey();
		%feature("autodoc", "1");
		NMTDS_PassKey(const NMTDS_PassKey &Other);
		%feature("autodoc", "1");
		NMTDS_PassKey & operator=(const NMTDS_PassKey &Other);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2, const Standard_Integer aI3);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2, const Standard_Integer aI3, const Standard_Integer aI4);
		%feature("autodoc", "1");
		void SetIds(const TColStd_ListOfInteger &aLS);
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const NMTDS_PassKey &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Integer Id(const Standard_Integer aIndex) const;
		%feature("autodoc","Ids() -> [Standard_Integer, Standard_Integer]");

		void Ids(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend NMTDS_PassKey {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_PassKey::~NMTDS_PassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_PassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_PassKeyBoolean;
class NMTDS_PassKeyBoolean : public NMTDS_PassKey {
	public:
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean();
		%feature("autodoc", "1");
		void SetFlag(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & operator=(const NMTDS_PassKeyBoolean &Other);
		%feature("autodoc", "1");
		Standard_Boolean Flag() const;

};
%feature("shadow") NMTDS_PassKeyBoolean::~NMTDS_PassKeyBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_PassKeyBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_MapOfPassKeyBoolean;
class NMTDS_MapOfPassKeyBoolean : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_MapOfPassKeyBoolean(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_MapOfPassKeyBoolean & Assign(const NMTDS_MapOfPassKeyBoolean &Other);
		%feature("autodoc", "1");
		NMTDS_MapOfPassKeyBoolean & operator=(const NMTDS_MapOfPassKeyBoolean &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const NMTDS_PassKeyBoolean &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const NMTDS_PassKeyBoolean &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const NMTDS_PassKeyBoolean &aKey);

};
%feature("shadow") NMTDS_MapOfPassKeyBoolean::~NMTDS_MapOfPassKeyBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_MapOfPassKeyBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger;
class NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger & Assign(const NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger &Other);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger & operator=(const NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const BooleanOperations_IndexedDataMapOfShapeInteger &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const BooleanOperations_IndexedDataMapOfShapeInteger &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_IndexedDataMapOfShapeInteger & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_IndexedDataMapOfShapeInteger & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const BooleanOperations_IndexedDataMapOfShapeInteger & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger & ChangeFromKey(const Standard_Integer &K);

};
%feature("shadow") NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger::~NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_BoxBndTreeSelector;
class NMTDS_BoxBndTreeSelector : public Selector {
	public:
		%feature("autodoc", "1");
		NMTDS_BoxBndTreeSelector();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Reject(const Bnd_Box &arg0) const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Indices() const;

};
%feature("shadow") NMTDS_BoxBndTreeSelector::~NMTDS_BoxBndTreeSelector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_BoxBndTreeSelector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors;
class NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors GetHandle() {
	return *(Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors*) &$self;
	}
};
%extend NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors::~NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_StdMapNodeOfMapOfPassKeyBoolean;
class NMTDS_StdMapNodeOfMapOfPassKeyBoolean : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_StdMapNodeOfMapOfPassKeyBoolean(const NMTDS_PassKeyBoolean &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_StdMapNodeOfMapOfPassKeyBoolean {
	Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean GetHandle() {
	return *(Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean*) &$self;
	}
};
%extend NMTDS_StdMapNodeOfMapOfPassKeyBoolean {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_StdMapNodeOfMapOfPassKeyBoolean::~NMTDS_StdMapNodeOfMapOfPassKeyBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_StdMapNodeOfMapOfPassKeyBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_ListIteratorOfListOfPassKey;
class NMTDS_ListIteratorOfListOfPassKey {
	public:
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfPassKey();
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfPassKey(const NMTDS_ListOfPassKey &L);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_ListOfPassKey &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		NMTDS_PassKey & Value() const;

};
%feature("shadow") NMTDS_ListIteratorOfListOfPassKey::~NMTDS_ListIteratorOfListOfPassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_ListIteratorOfListOfPassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_DataMapOfIntegerMapOfInteger;
class NMTDS_DataMapOfIntegerMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_DataMapOfIntegerMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_DataMapOfIntegerMapOfInteger & Assign(const NMTDS_DataMapOfIntegerMapOfInteger &Other);
		%feature("autodoc", "1");
		NMTDS_DataMapOfIntegerMapOfInteger & operator=(const NMTDS_DataMapOfIntegerMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TColStd_MapOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TColStd_MapOfInteger & operator()(const Standard_Integer &K);

};
%feature("shadow") NMTDS_DataMapOfIntegerMapOfInteger::~NMTDS_DataMapOfIntegerMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_DataMapOfIntegerMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_IndexedDataMapOfShapeBox;
class NMTDS_IndexedDataMapOfShapeBox : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfShapeBox(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfShapeBox & Assign(const NMTDS_IndexedDataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfShapeBox & operator=(const NMTDS_IndexedDataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K, const Bnd_Box &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K, const Bnd_Box &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Bnd_Box & FindFromKey(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFromKey(const TopoDS_Shape K);

};
%feature("shadow") NMTDS_IndexedDataMapOfShapeBox::~NMTDS_IndexedDataMapOfShapeBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_IndexedDataMapOfShapeBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
class NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const TopoDS_Shape K1, const Standard_Integer K2, const Bnd_Box &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape  Key1() const;
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
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox GetHandle() {
	return *(Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox*) &$self;
	}
};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::~NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_ListOfPassKeyBoolean;
class NMTDS_ListOfPassKeyBoolean {
	public:
		%feature("autodoc", "1");
		NMTDS_ListOfPassKeyBoolean();
		%feature("autodoc", "1");
		void Assign(const NMTDS_ListOfPassKeyBoolean &Other);
		%feature("autodoc", "1");
		void operator=(const NMTDS_ListOfPassKeyBoolean &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const NMTDS_PassKeyBoolean &I);
		%feature("autodoc", "1");
		void Prepend(const NMTDS_PassKeyBoolean &I, NMTDS_ListIteratorOfListOfPassKeyBoolean & theIt);
		%feature("autodoc", "1");
		void Prepend(NMTDS_ListOfPassKeyBoolean & Other);
		%feature("autodoc", "1");
		void Append(const NMTDS_PassKeyBoolean &I);
		%feature("autodoc", "1");
		void Append(const NMTDS_PassKeyBoolean &I, NMTDS_ListIteratorOfListOfPassKeyBoolean & theIt);
		%feature("autodoc", "1");
		void Append(NMTDS_ListOfPassKeyBoolean & Other);
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & First() const;
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(NMTDS_ListIteratorOfListOfPassKeyBoolean & It);
		%feature("autodoc", "1");
		void InsertBefore(const NMTDS_PassKeyBoolean &I, NMTDS_ListIteratorOfListOfPassKeyBoolean & It);
		%feature("autodoc", "1");
		void InsertBefore(NMTDS_ListOfPassKeyBoolean & Other, NMTDS_ListIteratorOfListOfPassKeyBoolean & It);
		%feature("autodoc", "1");
		void InsertAfter(const NMTDS_PassKeyBoolean &I, NMTDS_ListIteratorOfListOfPassKeyBoolean & It);
		%feature("autodoc", "1");
		void InsertAfter(NMTDS_ListOfPassKeyBoolean & Other, NMTDS_ListIteratorOfListOfPassKeyBoolean & It);

};
%feature("shadow") NMTDS_ListOfPassKeyBoolean::~NMTDS_ListOfPassKeyBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_ListOfPassKeyBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_ListIteratorOfListOfPassKeyBoolean;
class NMTDS_ListIteratorOfListOfPassKeyBoolean {
	public:
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfPassKeyBoolean();
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfPassKeyBoolean(const NMTDS_ListOfPassKeyBoolean &L);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_ListOfPassKeyBoolean &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & Value() const;

};
%feature("shadow") NMTDS_ListIteratorOfListOfPassKeyBoolean::~NMTDS_ListIteratorOfListOfPassKeyBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_ListIteratorOfListOfPassKeyBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_IndexedDataMapOfIntegerShape;
class NMTDS_IndexedDataMapOfIntegerShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerShape & Assign(const NMTDS_IndexedDataMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerShape & operator=(const NMTDS_IndexedDataMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const TopoDS_Shape T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFromKey(const Standard_Integer &K);

};
%feature("shadow") NMTDS_IndexedDataMapOfIntegerShape::~NMTDS_IndexedDataMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_IndexedDataMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_PassKeyMapHasher;
class NMTDS_PassKeyMapHasher {
	public:
		%feature("autodoc", "1");
		NMTDS_PassKeyMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const NMTDS_PassKey &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const NMTDS_PassKey &aPKey1, const NMTDS_PassKey &aPKey2);

};
%feature("shadow") NMTDS_PassKeyMapHasher::~NMTDS_PassKeyMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_PassKeyMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors;
class NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	public:
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors();
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors(const NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors &L);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & Value() const;

};
%feature("shadow") NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors::~NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_ShapesDataStructure;
class NMTDS_ShapesDataStructure : public BooleanOperations_ShapesDataStructure {
	public:
		%feature("autodoc", "1");
		NMTDS_ShapesDataStructure();
		%feature("autodoc", "1");
		void SetCompositeShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		const NMTDS_CArray1OfIndexRange & Ranges() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  CompositeShape() const;
		%feature("autodoc", "1");
		Standard_Integer ShapeRangeIndex(const Standard_Integer aId) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Rank(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ShapeIndex(const TopoDS_Shape aS, const Standard_Integer iRank) const;
		%feature("autodoc", "1");
		void FillMap(const TopoDS_Shape aS, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & aMSA, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & aMS) const;
		%feature("autodoc", "1");
		void FillSubshapes(const TopoDS_Shape aS, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & aMSA, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & aMS) const;
		%feature("autodoc", "1");
		void GetAllSuccessors(const Standard_Integer anIndex, TColStd_IndexedMapOfInteger & aScrs) const;
		%feature("autodoc", "1");
		void ComputeBoxEx(const Standard_Integer anIndex, Bnd_Box & aBox) const;

};
%feature("shadow") NMTDS_ShapesDataStructure::~NMTDS_ShapesDataStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_ShapesDataStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_ListNodeOfListOfPassKeyBoolean;
class NMTDS_ListNodeOfListOfPassKeyBoolean : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_ListNodeOfListOfPassKeyBoolean(const NMTDS_PassKeyBoolean &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_ListNodeOfListOfPassKeyBoolean {
	Handle_NMTDS_ListNodeOfListOfPassKeyBoolean GetHandle() {
	return *(Handle_NMTDS_ListNodeOfListOfPassKeyBoolean*) &$self;
	}
};
%extend NMTDS_ListNodeOfListOfPassKeyBoolean {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_ListNodeOfListOfPassKeyBoolean::~NMTDS_ListNodeOfListOfPassKeyBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_ListNodeOfListOfPassKeyBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_Iterator;
class NMTDS_Iterator {
	public:
		%feature("autodoc", "1");
		NMTDS_Iterator();
		%feature("autodoc", "1");
		void SetDS(const NMTDS_PShapesDataStructure &pDS);
		%feature("autodoc", "1");
		const NMTDS_ShapesDataStructure & DS() const;
		%feature("autodoc", "1");
		void Initialize(const TopAbs_ShapeEnum aType1, const TopAbs_ShapeEnum aType2);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc","Current() -> [Standard_Integer, Standard_Integer]");

		void Current(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Boolean & aWithSubShape) const;
		%feature("autodoc", "1");
		virtual		void Prepare();
		%feature("autodoc", "1");
		Standard_Integer ExpectedLength() const;
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;
		%feature("autodoc", "1");
		const TColStd_DataMapOfIntegerListOfInteger & SDVertices() const;
		%feature("autodoc", "1");
		static		void FillMVSD(const TColStd_DataMapOfIntegerListOfInteger &aMVSD1, TColStd_DataMapOfIntegerListOfInteger & aMVSD2);

};
%feature("shadow") NMTDS_Iterator::~NMTDS_Iterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_Iterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_StdMapNodeOfMapOfPassKey;
class NMTDS_StdMapNodeOfMapOfPassKey : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_StdMapNodeOfMapOfPassKey(const NMTDS_PassKey &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		NMTDS_PassKey & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_StdMapNodeOfMapOfPassKey {
	Handle_NMTDS_StdMapNodeOfMapOfPassKey GetHandle() {
	return *(Handle_NMTDS_StdMapNodeOfMapOfPassKey*) &$self;
	}
};
%extend NMTDS_StdMapNodeOfMapOfPassKey {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_StdMapNodeOfMapOfPassKey::~NMTDS_StdMapNodeOfMapOfPassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_StdMapNodeOfMapOfPassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_IndexRange;
class NMTDS_IndexRange {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexRange();
		%feature("autodoc", "1");
		void SetFirst(const Standard_Integer aFirst);
		%feature("autodoc", "1");
		void SetLast(const Standard_Integer aLast);
		%feature("autodoc", "1");
		Standard_Integer First() const;
		%feature("autodoc", "1");
		Standard_Integer Last() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInRange(const Standard_Integer aIndex) const;

};
%feature("shadow") NMTDS_IndexRange::~NMTDS_IndexRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_IndexRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_ListOfPassKey;
class NMTDS_ListOfPassKey {
	public:
		%feature("autodoc", "1");
		NMTDS_ListOfPassKey();
		%feature("autodoc", "1");
		void Assign(const NMTDS_ListOfPassKey &Other);
		%feature("autodoc", "1");
		void operator=(const NMTDS_ListOfPassKey &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const NMTDS_PassKey &I);
		%feature("autodoc", "1");
		void Prepend(const NMTDS_PassKey &I, NMTDS_ListIteratorOfListOfPassKey & theIt);
		%feature("autodoc", "1");
		void Prepend(NMTDS_ListOfPassKey & Other);
		%feature("autodoc", "1");
		void Append(const NMTDS_PassKey &I);
		%feature("autodoc", "1");
		void Append(const NMTDS_PassKey &I, NMTDS_ListIteratorOfListOfPassKey & theIt);
		%feature("autodoc", "1");
		void Append(NMTDS_ListOfPassKey & Other);
		%feature("autodoc", "1");
		NMTDS_PassKey & First() const;
		%feature("autodoc", "1");
		NMTDS_PassKey & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(NMTDS_ListIteratorOfListOfPassKey & It);
		%feature("autodoc", "1");
		void InsertBefore(const NMTDS_PassKey &I, NMTDS_ListIteratorOfListOfPassKey & It);
		%feature("autodoc", "1");
		void InsertBefore(NMTDS_ListOfPassKey & Other, NMTDS_ListIteratorOfListOfPassKey & It);
		%feature("autodoc", "1");
		void InsertAfter(const NMTDS_PassKey &I, NMTDS_ListIteratorOfListOfPassKey & It);
		%feature("autodoc", "1");
		void InsertAfter(NMTDS_ListOfPassKey & Other, NMTDS_ListIteratorOfListOfPassKey & It);

};
%feature("shadow") NMTDS_ListOfPassKey::~NMTDS_ListOfPassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_ListOfPassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_PassKeyShape;
class NMTDS_PassKeyShape {
	public:
		%feature("autodoc", "1");
		NMTDS_PassKeyShape();
		%feature("autodoc", "1");
		NMTDS_PassKeyShape(const NMTDS_PassKeyShape &Other);
		%feature("autodoc", "1");
		NMTDS_PassKeyShape & Assign(const NMTDS_PassKeyShape &Other);
		%feature("autodoc", "1");
		NMTDS_PassKeyShape & operator=(const NMTDS_PassKeyShape &Other);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2, const TopoDS_Shape aS3);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2, const TopoDS_Shape aS3, const TopoDS_Shape aS4);
		%feature("autodoc", "1");
		void SetShapes(const TopTools_ListOfShape &aLS);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const NMTDS_PassKeyShape &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend NMTDS_PassKeyShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_PassKeyShape::~NMTDS_PassKeyShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_PassKeyShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger;
class NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Standard_Integer &K, const TColStd_MapOfInteger &I, const TCollection_MapNodePtr &n);
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
		TColStd_MapOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger GetHandle() {
	return *(Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger*) &$self;
	}
};
%extend NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger::~NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger;
class NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger(const NMTDS_DataMapOfIntegerMapOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_DataMapOfIntegerMapOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Value() const;

};
%feature("shadow") NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger::~NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_Tools;
class NMTDS_Tools {
	public:
		%feature("autodoc", "1");
		NMTDS_Tools();
		%feature("autodoc", "1");
		static		Standard_Integer TypeToInteger(const TopAbs_ShapeEnum aT1, const TopAbs_ShapeEnum aT2);
		%feature("autodoc", "1");
		static		Standard_Boolean HasBRep(const TopAbs_ShapeEnum aT);
		%feature("autodoc", "1");
		static		Standard_Integer ComputeVV(const TopoDS_Vertex aV1, const TopoDS_Vertex aV2);
		%feature("autodoc", "1");
		static		void CopyShape(const TopoDS_Shape aS, TopoDS_Shape & aSC);
		%feature("autodoc", "1");
		static		void CopyShape(const TopoDS_Shape aS, TopoDS_Shape & aSC, TopTools_IndexedDataMapOfShapeShape & aMSS);

};
%feature("shadow") NMTDS_Tools::~NMTDS_Tools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_Tools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_MapOfPassKey;
class NMTDS_MapOfPassKey : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_MapOfPassKey(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_MapOfPassKey & Assign(const NMTDS_MapOfPassKey &Other);
		%feature("autodoc", "1");
		NMTDS_MapOfPassKey & operator=(const NMTDS_MapOfPassKey &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const NMTDS_PassKey &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const NMTDS_PassKey &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const NMTDS_PassKey &aKey);

};
%feature("shadow") NMTDS_MapOfPassKey::~NMTDS_MapOfPassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_MapOfPassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_ListNodeOfListOfPassKey;
class NMTDS_ListNodeOfListOfPassKey : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_ListNodeOfListOfPassKey(const NMTDS_PassKey &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		NMTDS_PassKey & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_ListNodeOfListOfPassKey {
	Handle_NMTDS_ListNodeOfListOfPassKey GetHandle() {
	return *(Handle_NMTDS_ListNodeOfListOfPassKey*) &$self;
	}
};
%extend NMTDS_ListNodeOfListOfPassKey {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_ListNodeOfListOfPassKey::~NMTDS_ListNodeOfListOfPassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_ListNodeOfListOfPassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_MapIteratorOfMapOfPassKey;
class NMTDS_MapIteratorOfMapOfPassKey : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		NMTDS_MapIteratorOfMapOfPassKey();
		%feature("autodoc", "1");
		NMTDS_MapIteratorOfMapOfPassKey(const NMTDS_MapOfPassKey &aMap);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_MapOfPassKey &aMap);
		%feature("autodoc", "1");
		const NMTDS_PassKey & Key() const;

};
%feature("shadow") NMTDS_MapIteratorOfMapOfPassKey::~NMTDS_MapIteratorOfMapOfPassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_MapIteratorOfMapOfPassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_InterfPool;
class NMTDS_InterfPool {
	public:
		%feature("autodoc", "1");
		NMTDS_InterfPool();
		%feature("autodoc", "1");
		Standard_Boolean Add(const NMTDS_PassKeyBoolean &aPKB, const NMTDS_InterfType aType);
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer aInd1, const Standard_Integer aInd2, const NMTDS_InterfType aType);
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer aInd1, const Standard_Integer aInd2, const Standard_Boolean bFlag, const NMTDS_InterfType aType);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const NMTDS_PassKeyBoolean &aPKB) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer aInd1, const Standard_Integer aInd2) const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPassKeyBoolean & Get() const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPassKeyBoolean & Get(const NMTDS_InterfType aType) const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPassKeyBoolean & Get(const Standard_Integer aInd) const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPassKeyBoolean & Get(const Standard_Integer aInd, const NMTDS_InterfType aType) const;
		%feature("autodoc", "1");
		BOPTools_CArray1OfSSInterference & SSInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfESInterference & ESInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfVSInterference & VSInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfEEInterference & EEInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfVEInterference & VEInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfVVInterference & VVInterferences();

};
%feature("shadow") NMTDS_InterfPool::~NMTDS_InterfPool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_InterfPool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_IteratorCheckerSI;
class NMTDS_IteratorCheckerSI : public NMTDS_Iterator {
	public:
		%feature("autodoc", "1");
		NMTDS_IteratorCheckerSI();

};
%feature("shadow") NMTDS_IteratorCheckerSI::~NMTDS_IteratorCheckerSI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_IteratorCheckerSI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_MapIteratorOfMapOfPassKeyBoolean;
class NMTDS_MapIteratorOfMapOfPassKeyBoolean : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		NMTDS_MapIteratorOfMapOfPassKeyBoolean();
		%feature("autodoc", "1");
		NMTDS_MapIteratorOfMapOfPassKeyBoolean(const NMTDS_MapOfPassKeyBoolean &aMap);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_MapOfPassKeyBoolean &aMap);
		%feature("autodoc", "1");
		const NMTDS_PassKeyBoolean & Key() const;

};
%feature("shadow") NMTDS_MapIteratorOfMapOfPassKeyBoolean::~NMTDS_MapIteratorOfMapOfPassKeyBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_MapIteratorOfMapOfPassKeyBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape;
class NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const Standard_Integer &K1, const Standard_Integer K2, const TopoDS_Shape I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape GetHandle() {
	return *(Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape*) &$self;
	}
};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::~NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};
