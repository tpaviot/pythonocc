/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module BOPDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BOPDS_renames.i


%include BOPDS_required_python_modules.i


%include BOPDS_dependencies.i


%include BOPDS_headers.i

typedef BOPCol_Array1<NCollection_List<Handle_BOPDS_PaveBlock> > BOPDS_VectorOfListOfPaveBlock;
typedef NCollection_Map<Handle_BOPDS_CommonBlock, TColStd_MapTransientHasher> BOPDS_MapOfCommonBlock;
typedef NCollection_DataMap<BOPDS_PassKey, NCollection_List<Handle_BOPDS_PaveBlock>, BOPDS_PassKeyMapHasher> BOPDS_DataMapOfPassKeyListOfPaveBlock;
typedef BOPCol_Array1<BOPDS_ShapeInfo> BOPDS_VectorOfShapeInfo;
typedef NCollection_IndexedDataMap<TopoDS_Shape,BOPDS_CoupleOfPaveBlocks,TopTools_ShapeMapHasher> BOPDS_IndexedDataMapOfShapeCoupleOfPaveBlocks;
typedef BOPCol_Array1<BOPDS_Curve> BOPDS_VectorOfCurve;
typedef NCollection_Map<BOPDS_Pave, BOPDS_PaveMapHasher> BOPDS_MapOfPave;
typedef BOPCol_Array1<BOPDS_Point> BOPDS_VectorOfPoint;
typedef NCollection_DataMap<int,NCollection_List<Handle_BOPDS_PaveBlock>,TColStd_MapIntegerHasher> BOPDS_DataMapOfIntegerListOfPaveBlock;
typedef NCollection_Map<Handle_BOPDS_PaveBlock, TColStd_MapTransientHasher> BOPDS_MapOfPaveBlock;
typedef NCollection_List<Handle_BOPDS_PaveBlock> BOPDS_ListOfPaveBlock;
typedef NCollection_DataMap<Handle_BOPDS_PaveBlock, NCollection_List<Handle_BOPDS_PaveBlock>, TColStd_MapTransientHasher> BOPDS_DataMapOfPaveBlockListOfPaveBlock;
typedef NCollection_IndexedDataMap<Handle_BOPDS_PaveBlock,NCollection_List<Handle_BOPDS_PaveBlock>,TColStd_MapTransientHasher> BOPDS_IndexedDataMapOfPaveBlockListOfPaveBlock;
typedef NCollection_DataMap<TopoDS_Shape, BOPDS_CoupleOfPaveBlocks, TopTools_ShapeMapHasher> BOPDS_DataMapOfShapeCoupleOfPaveBlocks;
typedef NCollection_TListIterator<BOPDS_Pave> BOPDS_ListIteratorOfListOfPave;
typedef NCollection_Map<BOPDS_PassKeyBoolean, BOPDS_PassKeyMapHasher> BOPDS_MapOfPassKeyBoolean;
typedef NCollection_UBTree<int, Bnd_Box> BOPDS_BoxBndTree;
typedef BOPCol_Array1<BOPDS_InterfVV> BOPDS_VectorOfInterfVV;
typedef BOPDS_Iterator * BOPDS_PIterator;
typedef NCollection_IndexedDataMap<Handle_BOPDS_PaveBlock,NCollection_List<int>,TColStd_MapTransientHasher> BOPDS_IndexedDataMapOfPaveBlockListOfInteger;
typedef NCollection_Map<BOPDS_PassKey, BOPDS_PassKeyMapHasher> BOPDS_MapOfPassKey;
typedef BOPCol_Array1<BOPDS_InterfEF> BOPDS_VectorOfInterfEF;
typedef BOPDS_DS * BOPDS_PDS;
typedef BOPCol_Array1<BOPDS_InterfEE> BOPDS_VectorOfInterfEE;
typedef BOPCol_Array1<BOPDS_InterfFF> BOPDS_VectorOfInterfFF;
typedef NCollection_TListIterator<Handle_BOPDS_PaveBlock> BOPDS_ListIteratorOfListOfPaveBlock;
typedef BOPCol_Array1<BOPDS_InterfVE> BOPDS_VectorOfInterfVE;
typedef BOPCol_Array1<BOPDS_InterfVF> BOPDS_VectorOfInterfVF;
typedef BOPCol_Array1<NCollection_List<BOPDS_PassKeyBoolean> > BOPDS_VectorOfListOfPassKeyBoolean;
typedef NCollection_List<BOPDS_Pave> BOPDS_ListOfPave;
typedef NCollection_IndexedMap<Handle_BOPDS_PaveBlock, TColStd_MapTransientHasher> BOPDS_IndexedMapOfPaveBlock;
typedef NCollection_List<BOPDS_PassKeyBoolean> BOPDS_ListOfPassKeyBoolean;
typedef BOPCol_Array1<BOPDS_FaceInfo> BOPDS_VectorOfFaceInfo;
typedef NCollection_TListIterator<BOPDS_PassKeyBoolean> BOPDS_ListIteratorOfListOfPassKeyBoolean;
typedef BOPCol_Array1<BOPDS_IndexRange> BOPDS_VectorOfIndexRange;
typedef NCollection_DataMap<Handle_BOPDS_PaveBlock, NCollection_List<int>, TColStd_MapTransientHasher> BOPDS_DataMapOfPaveBlockListOfInteger;



%nodefaultctor Handle_BOPDS_CommonBlock;
class Handle_BOPDS_CommonBlock : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BOPDS_CommonBlock();
		%feature("autodoc", "1");
		Handle_BOPDS_CommonBlock(const Handle_BOPDS_CommonBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPDS_CommonBlock(const BOPDS_CommonBlock *anItem);
		%feature("autodoc", "1");
		Handle_BOPDS_CommonBlock & operator=(const Handle_BOPDS_CommonBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPDS_CommonBlock & operator=(const BOPDS_CommonBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPDS_CommonBlock DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPDS_CommonBlock {
	BOPDS_CommonBlock* GetObject() {
	return (BOPDS_CommonBlock*)$self->Access();
	}
};
%feature("shadow") Handle_BOPDS_CommonBlock::~Handle_BOPDS_CommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPDS_CommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPDS_PaveBlock;
class Handle_BOPDS_PaveBlock : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BOPDS_PaveBlock();
		%feature("autodoc", "1");
		Handle_BOPDS_PaveBlock(const Handle_BOPDS_PaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPDS_PaveBlock(const BOPDS_PaveBlock *anItem);
		%feature("autodoc", "1");
		Handle_BOPDS_PaveBlock & operator=(const Handle_BOPDS_PaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPDS_PaveBlock & operator=(const BOPDS_PaveBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPDS_PaveBlock DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPDS_PaveBlock {
	BOPDS_PaveBlock* GetObject() {
	return (BOPDS_PaveBlock*)$self->Access();
	}
};
%feature("shadow") Handle_BOPDS_PaveBlock::~Handle_BOPDS_PaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPDS_PaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_Tools;
class BOPDS_Tools {
	public:
		%feature("autodoc", "1");
		BOPDS_Tools();
		%feature("autodoc", "1");
		static		Standard_Integer TypeToInteger(const TopAbs_ShapeEnum aType1, const TopAbs_ShapeEnum aType2);
		%feature("autodoc", "1");
		static		Standard_Boolean HasBRep(const TopAbs_ShapeEnum aTi);

};
%feature("shadow") BOPDS_Tools::~BOPDS_Tools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_Tools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_Iterator;
class BOPDS_Iterator {
	public:
		%feature("autodoc", "1");
		BOPDS_Iterator();
		%feature("autodoc", "1");
		BOPDS_Iterator(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetDS(const BOPDS_PDS &pDS);
		%feature("autodoc", "1");
		const BOPDS_DS & DS() const;
		%feature("autodoc", "1");
		void Initialize(const TopAbs_ShapeEnum theType1, const TopAbs_ShapeEnum theType2);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc","Value() -> [Standard_Integer, Standard_Integer]");

		void Value(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Boolean & theWithSubShape) const;
		%feature("autodoc", "1");
		virtual		void Prepare();
		%feature("autodoc", "1");
		Standard_Integer ExpectedLength() const;
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPDS_Iterator::~BOPDS_Iterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_Iterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_Curve;
class BOPDS_Curve {
	public:
		%feature("autodoc", "1");
		BOPDS_Curve();
		%feature("autodoc", "1");
		BOPDS_Curve(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetCurve(const IntTools_Curve &theCurve);
		%feature("autodoc", "1");
		const IntTools_Curve & Curve() const;
		%feature("autodoc", "1");
		void SetBox(const Bnd_Box &theBox);
		%feature("autodoc", "1");
		const Bnd_Box & Box() const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeBox();
		%feature("autodoc", "1");
		void SetPaveBlocks(const BOPDS_ListOfPaveBlock &theLPB);
		%feature("autodoc", "1");
		const BOPDS_ListOfPaveBlock & PaveBlocks() const;
		%feature("autodoc", "1");
		BOPDS_ListOfPaveBlock & ChangePaveBlocks();
		%feature("autodoc", "1");
		void InitPaveBlock1();
		%feature("autodoc", "1");
		Handle_BOPDS_PaveBlock & ChangePaveBlock1();
		%feature("autodoc", "1");
		const BOPCol_ListOfInteger & TechnoVertices() const;
		%feature("autodoc", "1");
		BOPCol_ListOfInteger & ChangeTechnoVertices();
		%feature("autodoc", "1");
		Standard_Boolean HasEdge() const;

};
%feature("shadow") BOPDS_Curve::~BOPDS_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_DS;
class BOPDS_DS {
	public:
		%feature("autodoc", "1");
		BOPDS_DS();
		%feature("autodoc", "1");
		BOPDS_DS(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BOPCol_BaseAllocator & Allocator() const;
		%feature("autodoc", "1");
		void SetArguments(const BOPCol_ListOfShape &theLS);
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & Arguments() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		Standard_Integer NbSourceShapes() const;
		%feature("autodoc", "1");
		Standard_Integer NbRanges() const;
		%feature("autodoc", "1");
		const BOPDS_IndexRange & Range(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Rank(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNewShape(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPDS_ShapeInfo &theSI);
		%feature("autodoc", "1");
		Standard_Integer Append(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		const BOPDS_ShapeInfo & ShapeInfo(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		BOPDS_ShapeInfo & ChangeShapeInfo(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Shape theS) const;
		%feature("autodoc", "1");
		const BOPDS_VectorOfListOfPaveBlock & PaveBlocksPool() const;
		%feature("autodoc", "1");
		BOPDS_VectorOfListOfPaveBlock & ChangePaveBlocksPool();
		%feature("autodoc", "1");
		Standard_Boolean HasPaveBlocks(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		const BOPDS_ListOfPaveBlock & PaveBlocks(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		BOPDS_ListOfPaveBlock & ChangePaveBlocks(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void UpdatePaveBlocks();
		%feature("autodoc", "1");
		void UpdatePaveBlock(const Handle_BOPDS_PaveBlock &thePB);
		%feature("autodoc", "1");
		void UpdateCommonBlock(const Handle_BOPDS_CommonBlock &theCB);
		%feature("autodoc", "1");
		const BOPDS_VectorOfFaceInfo & FaceInfoPool() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFaceInfo(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		const BOPDS_FaceInfo & FaceInfo(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		BOPDS_FaceInfo & ChangeFaceInfo(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void UpdateFaceInfoIn(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void UpdateFaceInfoOn(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void FaceInfoOn(const Standard_Integer theIndex, BOPDS_IndexedMapOfPaveBlock & theMPB, BOPCol_MapOfInteger & theMVP);
		%feature("autodoc", "1");
		void FaceInfoIn(const Standard_Integer theIndex, BOPDS_IndexedMapOfPaveBlock & theMPB, BOPCol_MapOfInteger & theMVP);
		%feature("autodoc", "1");
		void AloneVertices(const Standard_Integer theF, BOPCol_ListOfInteger & theLI) const;
		%feature("autodoc", "1");
		void RefineFaceInfoOn();
		%feature("autodoc", "1");
		void VerticesOnIn(const Standard_Integer theF1, const Standard_Integer theF2, BOPCol_MapOfInteger & theMI, BOPDS_MapOfPaveBlock & aMPB) const;
		%feature("autodoc", "1");
		void SharedEdges(const Standard_Integer theF1, const Standard_Integer theF2, BOPCol_ListOfInteger & theLI, const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		BOPCol_DataMapOfIntegerInteger & ShapesSD();
		%feature("autodoc", "1");
		void AddShapeSD(const Standard_Integer theIndex, const Standard_Integer theIndexSD);
		%feature("autodoc","HasShapeSD(Standard_Integer theIndex) -> Standard_Integer");

		Standard_Boolean HasShapeSD(const Standard_Integer theIndex, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		BOPDS_VectorOfInterfVV & InterfVV();
		%feature("autodoc", "1");
		BOPDS_VectorOfInterfVE & InterfVE();
		%feature("autodoc", "1");
		BOPDS_VectorOfInterfVF & InterfVF();
		%feature("autodoc", "1");
		BOPDS_VectorOfInterfEE & InterfEE();
		%feature("autodoc", "1");
		BOPDS_VectorOfInterfEF & InterfEF();
		%feature("autodoc", "1");
		BOPDS_VectorOfInterfFF & InterfFF();
		%feature("autodoc", "1");
		void AddInterf(const Standard_Integer theI1, const Standard_Integer theI2);
		%feature("autodoc", "1");
		Standard_Boolean HasInterf(const Standard_Integer theI) const;
		%feature("autodoc", "1");
		Standard_Boolean HasInterf(const Standard_Integer theI1, const Standard_Integer theI2) const;
		%feature("autodoc", "1");
		Standard_Boolean HasInterfShapeSubShapes(const Standard_Integer theI1, const Standard_Integer theI2) const;
		%feature("autodoc", "1");
		Standard_Boolean HasInterfSubShapes(const Standard_Integer theI1, const Standard_Integer theI2) const;
		%feature("autodoc", "1");
		const BOPDS_MapOfPassKey & Interferences() const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		void SortPaveBlocks(const Handle_BOPDS_CommonBlock &theCB);
		%feature("autodoc","IsToSort(const theCB) -> Standard_Integer");

		Standard_Boolean IsToSort(const Handle_BOPDS_CommonBlock &theCB, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean IsSubShape(const Standard_Integer theI1, const Standard_Integer theI2);
		%feature("autodoc", "1");
		void Paves(const Standard_Integer theIndex, BOPDS_ListOfPave & theLP);
		%feature("autodoc", "1");
		void UpdateEdgeTolerance(const Standard_Integer theIndex, const Standard_Real theTolerance);

};
%feature("shadow") BOPDS_DS::~BOPDS_DS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_DS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_PassKeyMapHasher;
class BOPDS_PassKeyMapHasher {
	public:
		%feature("autodoc", "1");
		BOPDS_PassKeyMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const BOPDS_PassKey &aPK, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const BOPDS_PassKey &aPK1, const BOPDS_PassKey &aPK2);

};
%feature("shadow") BOPDS_PassKeyMapHasher::~BOPDS_PassKeyMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_PassKeyMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_CoupleOfPaveBlocks;
class BOPDS_CoupleOfPaveBlocks {
	public:
		%feature("autodoc", "1");
		BOPDS_CoupleOfPaveBlocks();
		%feature("autodoc", "1");
		BOPDS_CoupleOfPaveBlocks(const Handle_BOPDS_PaveBlock &thePB1, const Handle_BOPDS_PaveBlock &thePB2);
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		void SetIndexInterf(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Integer IndexInterf() const;
		%feature("autodoc", "1");
		void SetPaveBlocks(const Handle_BOPDS_PaveBlock &thePB1, const Handle_BOPDS_PaveBlock &thePB2);
		%feature("autodoc", "1");
		void PaveBlocks(Handle_BOPDS_PaveBlock & thePB1, Handle_BOPDS_PaveBlock & thePB2) const;
		%feature("autodoc", "1");
		void SetPaveBlock1(const Handle_BOPDS_PaveBlock &thePB);
		%feature("autodoc", "1");
		const Handle_BOPDS_PaveBlock & PaveBlock1() const;
		%feature("autodoc", "1");
		void SetPaveBlock2(const Handle_BOPDS_PaveBlock &thePB);
		%feature("autodoc", "1");
		const Handle_BOPDS_PaveBlock & PaveBlock2() const;

};
%feature("shadow") BOPDS_CoupleOfPaveBlocks::~BOPDS_CoupleOfPaveBlocks %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_CoupleOfPaveBlocks {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_Interf;


%nodefaultdtor BOPDS_Interf;
class BOPDS_Interf {
	public:
		%feature("autodoc", "1");
		void SetIndices(const Standard_Integer theIndex1, const Standard_Integer theIndex2);
		%feature("autodoc","Indices() -> [Standard_Integer, Standard_Integer]");

		void Indices(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void SetIndex1(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void SetIndex2(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Integer Index1() const;
		%feature("autodoc", "1");
		Standard_Integer Index2() const;
		%feature("autodoc", "1");
		Standard_Integer OppositeIndex(const Standard_Integer theI) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		void SetIndexNew(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Integer IndexNew() const;
		%feature("autodoc","HasIndexNew() -> Standard_Integer");

		Standard_Boolean HasIndexNew(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean HasIndexNew() const;

};%extend BOPDS_Interf {
	BOPDS_Interf () {}
};


%nodefaultctor BOPDS_InterfVV;
class BOPDS_InterfVV : public BOPDS_Interf {
	public:
		%feature("autodoc", "1");
		BOPDS_InterfVV();
		%feature("autodoc", "1");
		BOPDS_InterfVV(const Handle_NCollection_BaseAllocator &theAllocator);

};
%feature("shadow") BOPDS_InterfVV::~BOPDS_InterfVV %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_InterfVV {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_PaveMapHasher;
class BOPDS_PaveMapHasher {
	public:
		%feature("autodoc", "1");
		BOPDS_PaveMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const BOPDS_Pave &aPave, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const BOPDS_Pave &aPave1, const BOPDS_Pave &aPave2);

};
%feature("shadow") BOPDS_PaveMapHasher::~BOPDS_PaveMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_PaveMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_ShapeInfo;
class BOPDS_ShapeInfo {
	public:
		%feature("autodoc", "1");
		BOPDS_ShapeInfo();
		%feature("autodoc", "1");
		BOPDS_ShapeInfo(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		void SetShapeType(const TopAbs_ShapeEnum theType);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		void SetBox(const Bnd_Box &theBox);
		%feature("autodoc", "1");
		const Bnd_Box & Box() const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeBox();
		%feature("autodoc", "1");
		const BOPCol_ListOfInteger & SubShapes() const;
		%feature("autodoc", "1");
		BOPCol_ListOfInteger & ChangeSubShapes();
		%feature("autodoc", "1");
		Standard_Boolean HasSubShape(const Standard_Integer theI) const;
		%feature("autodoc", "1");
		Standard_Boolean HasReference() const;
		%feature("autodoc", "1");
		void SetReference(const Standard_Integer theI);
		%feature("autodoc", "1");
		Standard_Integer Reference() const;
		%feature("autodoc", "1");
		Standard_Boolean HasBRep() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFlag() const;
		%feature("autodoc","HasFlag() -> Standard_Integer");

		Standard_Boolean HasFlag(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void SetFlag(const Standard_Integer theFlag);
		%feature("autodoc", "1");
		Standard_Integer Flag() const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") BOPDS_ShapeInfo::~BOPDS_ShapeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_ShapeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_IndexRange;
class BOPDS_IndexRange {
	public:
		%feature("autodoc", "1");
		BOPDS_IndexRange();
		%feature("autodoc", "1");
		void SetFirst(const Standard_Integer aFirst);
		%feature("autodoc", "1");
		void SetLast(const Standard_Integer aLast);
		%feature("autodoc", "1");
		Standard_Integer First() const;
		%feature("autodoc", "1");
		Standard_Integer Last() const;
		%feature("autodoc", "1");
		void SetIndices(const Standard_Integer theI1, const Standard_Integer theI2);
		%feature("autodoc","Indices() -> [Standard_Integer, Standard_Integer]");

		void Indices(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer aIndex) const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") BOPDS_IndexRange::~BOPDS_IndexRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_IndexRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_Pave;
class BOPDS_Pave {
	public:
		%feature("autodoc", "1");
		BOPDS_Pave();
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real theParameter);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc","Contents() -> [Standard_Integer, Standard_Real]");

		void Contents(Standard_Integer &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLess(const BOPDS_Pave &theOther) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<(const BOPDS_Pave &theOther) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BOPDS_Pave &theOther) const;
		%extend{
			bool __eq_wrapper__(const BOPDS_Pave &theOther) {
				if (*self==theOther) return true;
				else return false;
			}
		}
		%feature("autodoc", "1");
		void Dump() const;
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}

};
%feature("shadow") BOPDS_Pave::~BOPDS_Pave %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_Pave {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_SubIterator;
class BOPDS_SubIterator {
	public:
		%feature("autodoc", "1");
		BOPDS_SubIterator();
		%feature("autodoc", "1");
		BOPDS_SubIterator(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetDS(const BOPDS_PDS &pDS);
		%feature("autodoc", "1");
		const BOPDS_DS & DS() const;
		%feature("autodoc", "1");
		void SetSubSet1(const BOPCol_ListOfInteger &theLI);
		%feature("autodoc", "1");
		const BOPCol_ListOfInteger & SubSet1() const;
		%feature("autodoc", "1");
		void SetSubSet2(const BOPCol_ListOfInteger &theLI);
		%feature("autodoc", "1");
		const BOPCol_ListOfInteger & SubSet2() const;
		%feature("autodoc", "1");
		void Initialize();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc","Value() -> [Standard_Integer, Standard_Integer]");

		void Value(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Prepare();

};
%feature("shadow") BOPDS_SubIterator::~BOPDS_SubIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_SubIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_IteratorSI;
class BOPDS_IteratorSI : public BOPDS_Iterator {
	public:
		%feature("autodoc", "1");
		BOPDS_IteratorSI();
		%feature("autodoc", "1");
		BOPDS_IteratorSI(const BOPCol_BaseAllocator &theAllocator);

};
%feature("shadow") BOPDS_IteratorSI::~BOPDS_IteratorSI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_IteratorSI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_PassKey;
class BOPDS_PassKey {
	public:
		%feature("autodoc", "1");
		BOPDS_PassKey();
		%feature("autodoc", "1");
		BOPDS_PassKey(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		BOPDS_PassKey(const BOPDS_PassKey &aOther);
		%feature("autodoc", "1");
		BOPDS_PassKey & operator=(const BOPDS_PassKey &aOther);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aId1);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aId1, const Standard_Integer aId2);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aId1, const Standard_Integer aId2, const Standard_Integer aId3);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aId1, const Standard_Integer aId2, const Standard_Integer aId3, const Standard_Integer aId4);
		%feature("autodoc", "1");
		void SetIds(const BOPCol_ListOfInteger &aLI);
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BOPDS_PassKey &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer aUpper) const;
		%feature("autodoc", "1");
		Standard_Integer Id(const Standard_Integer aIndex) const;
		%feature("autodoc","Ids() -> [Standard_Integer, Standard_Integer]");

		void Ids(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend BOPDS_PassKey {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BOPDS_PassKey::~BOPDS_PassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_PassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_PassKeyBoolean;
class BOPDS_PassKeyBoolean : public BOPDS_PassKey {
	public:
		%feature("autodoc", "1");
		BOPDS_PassKeyBoolean();
		%feature("autodoc", "1");
		BOPDS_PassKeyBoolean(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		BOPDS_PassKeyBoolean(const BOPDS_PassKeyBoolean &aOther);
		%feature("autodoc", "1");
		void SetFlag(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		BOPDS_PassKeyBoolean & operator=(const BOPDS_PassKeyBoolean &aOther);
		%feature("autodoc", "1");
		Standard_Boolean Flag() const;

};
%feature("shadow") BOPDS_PassKeyBoolean::~BOPDS_PassKeyBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_PassKeyBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_CommonBlock;
class BOPDS_CommonBlock : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BOPDS_CommonBlock();
		%feature("autodoc", "1");
		BOPDS_CommonBlock(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void AddPaveBlock(const Handle_BOPDS_PaveBlock &aPB);
		%feature("autodoc", "1");
		void AddPaveBlocks(const BOPDS_ListOfPaveBlock &aLPB);
		%feature("autodoc", "1");
		void AddFace(const Standard_Integer aF);
		%feature("autodoc", "1");
		void AddFaces(const BOPCol_ListOfInteger &aLF);
		%feature("autodoc", "1");
		const BOPDS_ListOfPaveBlock & PaveBlocks() const;
		%feature("autodoc", "1");
		const BOPCol_ListOfInteger & Faces() const;
		%feature("autodoc", "1");
		const Handle_BOPDS_PaveBlock & PaveBlock1() const;
		%feature("autodoc", "1");
		Handle_BOPDS_PaveBlock & PaveBlockOnEdge(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Boolean IsPaveBlockOnFace(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPaveBlockOnEdge(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_BOPDS_PaveBlock &thePB) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer theF) const;
		%feature("autodoc", "1");
		void SetEdge(const Standard_Integer theEdge);
		%feature("autodoc", "1");
		Standard_Integer Edge() const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPDS_CommonBlock {
	Handle_BOPDS_CommonBlock GetHandle() {
	return *(Handle_BOPDS_CommonBlock*) &$self;
	}
};
%extend BOPDS_CommonBlock {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BOPDS_CommonBlock::~BOPDS_CommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_CommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_InterfEE;
class BOPDS_InterfEE : public BOPDS_Interf {
	public:
		%feature("autodoc", "1");
		BOPDS_InterfEE();
		%feature("autodoc", "1");
		BOPDS_InterfEE(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetCommonPart(const IntTools_CommonPrt &theCP);
		%feature("autodoc", "1");
		const IntTools_CommonPrt & CommonPart() const;

};
%feature("shadow") BOPDS_InterfEE::~BOPDS_InterfEE %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_InterfEE {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_InterfEF;
class BOPDS_InterfEF : public BOPDS_Interf {
	public:
		%feature("autodoc", "1");
		BOPDS_InterfEF();
		%feature("autodoc", "1");
		BOPDS_InterfEF(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetCommonPart(const IntTools_CommonPrt &theCP);
		%feature("autodoc", "1");
		const IntTools_CommonPrt & CommonPart() const;

};
%feature("shadow") BOPDS_InterfEF::~BOPDS_InterfEF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_InterfEF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_InterfFF;
class BOPDS_InterfFF : public BOPDS_Interf {
	public:
		%feature("autodoc", "1");
		BOPDS_InterfFF();
		%feature("autodoc", "1");
		void Init(const Standard_Integer theNbCurves, const Standard_Integer theNbPoints);
		%feature("autodoc", "1");
		void SetTolR3D(const Standard_Real theTol);
		%feature("autodoc", "1");
		Standard_Real TolR3D() const;
		%feature("autodoc", "1");
		void SetTolR2D(const Standard_Real theTol);
		%feature("autodoc", "1");
		Standard_Real TolR2D() const;
		%feature("autodoc", "1");
		const BOPDS_VectorOfCurve & Curves() const;
		%feature("autodoc", "1");
		BOPDS_VectorOfCurve & ChangeCurves();
		%feature("autodoc", "1");
		const BOPDS_VectorOfPoint & Points() const;
		%feature("autodoc", "1");
		BOPDS_VectorOfPoint & ChangePoints();

};
%feature("shadow") BOPDS_InterfFF::~BOPDS_InterfFF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_InterfFF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_InterfVF;
class BOPDS_InterfVF : public BOPDS_Interf {
	public:
		%feature("autodoc", "1");
		BOPDS_InterfVF();
		%feature("autodoc", "1");
		BOPDS_InterfVF(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetUV(const Standard_Real theU, const Standard_Real theV);
		%feature("autodoc","UV() -> [Standard_Real, Standard_Real]");

		void UV(Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BOPDS_InterfVF::~BOPDS_InterfVF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_InterfVF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_Point;
class BOPDS_Point {
	public:
		%feature("autodoc", "1");
		BOPDS_Point();
		%feature("autodoc", "1");
		void SetPnt(const gp_Pnt thePnt);
		%feature("autodoc", "1");
		const gp_Pnt  Pnt() const;
		%feature("autodoc", "1");
		void SetPnt2D1(const gp_Pnt2d thePnt);
		%feature("autodoc", "1");
		const gp_Pnt2d  Pnt2D1() const;
		%feature("autodoc", "1");
		void SetPnt2D2(const gp_Pnt2d thePnt);
		%feature("autodoc", "1");
		const gp_Pnt2d  Pnt2D2() const;
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Integer Index() const;

};
%feature("shadow") BOPDS_Point::~BOPDS_Point %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_Point {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_BoxBndTreeSelector;
class BOPDS_BoxBndTreeSelector : public Selector {
	public:
		%feature("autodoc", "1");
		BOPDS_BoxBndTreeSelector();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Reject(const Bnd_Box &arg0) const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BOPCol_ListOfInteger & Indices() const;

};
%feature("shadow") BOPDS_BoxBndTreeSelector::~BOPDS_BoxBndTreeSelector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_BoxBndTreeSelector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_InterfVE;
class BOPDS_InterfVE : public BOPDS_Interf {
	public:
		%feature("autodoc", "1");
		BOPDS_InterfVE();
		%feature("autodoc", "1");
		BOPDS_InterfVE(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real theT);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;

};
%feature("shadow") BOPDS_InterfVE::~BOPDS_InterfVE %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_InterfVE {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_FaceInfo;
class BOPDS_FaceInfo {
	public:
		%feature("autodoc", "1");
		BOPDS_FaceInfo();
		%feature("autodoc", "1");
		BOPDS_FaceInfo(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer theI);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		const BOPDS_IndexedMapOfPaveBlock & PaveBlocksIn() const;
		%feature("autodoc", "1");
		BOPDS_IndexedMapOfPaveBlock & ChangePaveBlocksIn();
		%feature("autodoc", "1");
		const BOPCol_MapOfInteger & VerticesIn() const;
		%feature("autodoc", "1");
		BOPCol_MapOfInteger & ChangeVerticesIn();
		%feature("autodoc", "1");
		const BOPDS_IndexedMapOfPaveBlock & PaveBlocksOn() const;
		%feature("autodoc", "1");
		BOPDS_IndexedMapOfPaveBlock & ChangePaveBlocksOn();
		%feature("autodoc", "1");
		const BOPCol_MapOfInteger & VerticesOn() const;
		%feature("autodoc", "1");
		BOPCol_MapOfInteger & ChangeVerticesOn();
		%feature("autodoc", "1");
		const BOPDS_IndexedMapOfPaveBlock & PaveBlocksSc() const;
		%feature("autodoc", "1");
		BOPDS_IndexedMapOfPaveBlock & ChangePaveBlocksSc();
		%feature("autodoc", "1");
		const BOPCol_MapOfInteger & VerticesSc() const;
		%feature("autodoc", "1");
		BOPCol_MapOfInteger & ChangeVerticesSc();

};
%feature("shadow") BOPDS_FaceInfo::~BOPDS_FaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_FaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPDS_PaveBlock;
class BOPDS_PaveBlock : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BOPDS_PaveBlock();
		%feature("autodoc", "1");
		BOPDS_PaveBlock(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetPave1(const BOPDS_Pave &thePave);
		%feature("autodoc", "1");
		const BOPDS_Pave & Pave1() const;
		%feature("autodoc", "1");
		void SetPave2(const BOPDS_Pave &thePave);
		%feature("autodoc", "1");
		const BOPDS_Pave & Pave2() const;
		%feature("autodoc", "1");
		void SetEdge(const Standard_Integer theEdge);
		%feature("autodoc", "1");
		Standard_Integer Edge() const;
		%feature("autodoc", "1");
		Standard_Boolean HasEdge() const;
		%feature("autodoc","HasEdge() -> Standard_Integer");

		Standard_Boolean HasEdge(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void SetOriginalEdge(const Standard_Integer theEdge);
		%feature("autodoc", "1");
		Standard_Integer OriginalEdge() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSplitEdge() const;
		%feature("autodoc","Range() -> [Standard_Real, Standard_Real]");

		void Range(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean HasSameBounds(const Handle_BOPDS_PaveBlock &theOther) const;
		%feature("autodoc","Indices() -> [Standard_Integer, Standard_Integer]");

		void Indices(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsToUpdate() const;
		%feature("autodoc", "1");
		void AppendExtPave(const BOPDS_Pave &theLP);
		%feature("autodoc", "1");
		void AppendExtPave1(const BOPDS_Pave &thePave);
		%feature("autodoc", "1");
		const BOPDS_ListOfPave & ExtPaves() const;
		%feature("autodoc", "1");
		BOPDS_ListOfPave & ChangeExtPaves();
		%feature("autodoc", "1");
		void Update(BOPDS_ListOfPaveBlock & theLPB, const Standard_Boolean theFlag=true);
		%feature("autodoc", "1");
		Standard_Boolean ContainsParameter(const Standard_Real thePrm, const Standard_Real theTol) const;
		%feature("autodoc", "1");
		void SetCommonBlock(const Handle_BOPDS_CommonBlock &theCB);
		%feature("autodoc", "1");
		const Handle_BOPDS_CommonBlock & CommonBlock() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCommonBlock() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCommonBlockOnEdge() const;
		%feature("autodoc", "1");
		Handle_BOPDS_PaveBlock RealPaveBlock() const;
		%feature("autodoc", "1");
		void SetShrunkData(const Standard_Real theTS1, const Standard_Real theTS2, const Bnd_Box &theBox);
		%feature("autodoc","ShrunkData() -> [Standard_Real, Standard_Real]");

		void ShrunkData(Standard_Real &OutValue, Standard_Real &OutValue, Bnd_Box & theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean HasShrunkData() const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPDS_PaveBlock {
	Handle_BOPDS_PaveBlock GetHandle() {
	return *(Handle_BOPDS_PaveBlock*) &$self;
	}
};
%extend BOPDS_PaveBlock {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BOPDS_PaveBlock::~BOPDS_PaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPDS_PaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};
