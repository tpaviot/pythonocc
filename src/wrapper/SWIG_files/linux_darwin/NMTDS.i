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

typedef NCollection_List<BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors> NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors;
typedef NCollection_List<NMTDS_Pair> NMTDS_ListOfPair;
typedef NCollection_TListIterator<NMTDS_PassKey> NMTDS_ListIteratorOfListOfPassKey;
typedef NCollection_DataMap<int, TColStd_MapOfInteger, TColStd_MapIntegerHasher> NMTDS_DataMapOfIntegerMapOfInteger;
typedef NCollection_IndexedDataMap<TopoDS_Shape,Bnd_Box,TopTools_ShapeMapHasher> NMTDS_IndexedDataMapOfShapeBox;
typedef NCollection_List<NMTDS_PassKeyBoolean> NMTDS_ListOfPassKeyBoolean;
typedef NCollection_IndexedDataMap<TopoDS_Shape,NMTDS_BndSphere,TopTools_ShapeMapHasher> NMTDS_IndexedDataMapOfShapeBndSphere;
typedef NCollection_TListIterator<NMTDS_Pair> NMTDS_ListIteratorOfListOfPair;
typedef NCollection_TListIterator<NMTDS_PairBoolean> NMTDS_ListIteratorOfListOfPairBoolean;
typedef NCollection_List<NMTDS_PairBoolean> NMTDS_ListOfPairBoolean;
typedef NMTDS_ShapesDataStructure * NMTDS_PShapesDataStructure;
typedef NCollection_TListIterator<NMTDS_PassKeyBoolean> NMTDS_ListIteratorOfListOfPassKeyBoolean;
typedef NCollection_IndexedDataMap<int,TopoDS_Shape,TColStd_MapIntegerHasher> NMTDS_IndexedDataMapOfIntegerShape;
typedef NCollection_Map<NMTDS_PassKeyBoolean, NMTDS_PassKeyMapHasher> NMTDS_MapOfPassKeyBoolean;
typedef NCollection_TListIterator<BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors> NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors;
typedef NMTDS_Iterator * NMTDS_PIterator;
typedef NCollection_Map<NMTDS_PairBoolean, NMTDS_PairMapHasher> NMTDS_MapOfPairBoolean;
typedef NCollection_List<NMTDS_PassKey> NMTDS_ListOfPassKey;
typedef NCollection_UBTree<int, Bnd_Box> NMTDS_BoxBndTree;
typedef NMTDS_InterfPool * NMTDS_PInterfPool;
typedef NCollection_UBTree<int, NMTDS_BndSphere> NMTDS_BndSphereTree;
typedef NCollection_Map<NMTDS_PassKey, NMTDS_PassKeyMapHasher> NMTDS_MapOfPassKey;

enum NMTDS_InterfType {
	NMTDS_TI_VV,
	NMTDS_TI_VE,
	NMTDS_TI_VF,
	NMTDS_TI_EE,
	NMTDS_TI_EF,
	NMTDS_TI_FF,
	NMTDS_TI_UNKNOWN,
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
		%feature("autodoc", "1");
		void Purge();

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


%nodefaultctor NMTDS_Pair;
class NMTDS_Pair {
	public:
		%feature("autodoc", "1");
		NMTDS_Pair();
		%feature("autodoc", "1");
		NMTDS_Pair(const NMTDS_Pair &Other);
		%feature("autodoc", "1");
		NMTDS_Pair & operator=(const NMTDS_Pair &Other);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2);
		%feature("autodoc","Ids() -> [Standard_Integer, Standard_Integer]");

		void Ids(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const NMTDS_Pair &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;

};
%extend NMTDS_Pair {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") NMTDS_Pair::~NMTDS_Pair %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_Pair {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NMTDS_PairBoolean;
class NMTDS_PairBoolean : public NMTDS_Pair {
	public:
		%feature("autodoc", "1");
		NMTDS_PairBoolean();
		%feature("autodoc", "1");
		void SetFlag(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		NMTDS_PairBoolean & operator=(const NMTDS_PairBoolean &Other);
		%feature("autodoc", "1");
		Standard_Boolean Flag() const;

};
%feature("shadow") NMTDS_PairBoolean::~NMTDS_PairBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_PairBoolean {
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
		Standard_Boolean Add(const NMTDS_PairBoolean &aPKB, const NMTDS_InterfType aType);
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer aInd1, const Standard_Integer aInd2, const NMTDS_InterfType aType);
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer aInd1, const Standard_Integer aInd2, const Standard_Boolean bFlag, const NMTDS_InterfType aType);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const NMTDS_PairBoolean &aPKB) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer aInd1, const Standard_Integer aInd2) const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPairBoolean & Get() const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPairBoolean & Get(const NMTDS_InterfType aType) const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPairBoolean & Get(const Standard_Integer aInd) const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPairBoolean & Get(const Standard_Integer aInd, const NMTDS_InterfType aType) const;
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
		%feature("autodoc", "1");
		void Purge();

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
	return $self->HashCode(2147483647);
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


%nodefaultctor NMTDS_BndSphere;
class NMTDS_BndSphere {
	public:
		%feature("autodoc", "1");
		NMTDS_BndSphere();
		%feature("autodoc", "1");
		void SetCenter(const gp_Pnt theP);
		%feature("autodoc", "1");
		const gp_Pnt  Center() const;
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real theR);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		void SetGap(const Standard_Real theGap);
		%feature("autodoc", "1");
		Standard_Real Gap() const;
		%feature("autodoc", "1");
		void Add(const NMTDS_BndSphere &theOther);
		%feature("autodoc", "1");
		Standard_Boolean IsOut(const NMTDS_BndSphere &theOther) const;
		%feature("autodoc", "1");
		Standard_Real SquareExtent() const;

};
%feature("shadow") NMTDS_BndSphere::~NMTDS_BndSphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_BndSphere {
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


%nodefaultctor NMTDS_BndSphereTreeSelector;
class NMTDS_BndSphereTreeSelector : public Selector {
	public:
		%feature("autodoc", "1");
		NMTDS_BndSphereTreeSelector();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Reject(const NMTDS_BndSphere &arg0) const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Indices() const;

};
%feature("shadow") NMTDS_BndSphereTreeSelector::~NMTDS_BndSphereTreeSelector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_BndSphereTreeSelector {
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
	return $self->HashCode(2147483647);
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


%nodefaultctor NMTDS_PairMapHasher;
class NMTDS_PairMapHasher {
	public:
		%feature("autodoc", "1");
		NMTDS_PairMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const NMTDS_Pair &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const NMTDS_Pair &aPKey1, const NMTDS_Pair &aPKey2);

};
%feature("shadow") NMTDS_PairMapHasher::~NMTDS_PairMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTDS_PairMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};
