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

%module NMTTools
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include NMTTools_renames.i


%include NMTTools_required_python_modules.i


%include NMTTools_dependencies.i


%include NMTTools_headers.i

typedef NCollection_List<NMTTools_CoupleOfShape> NMTTools_ListOfCoupleOfShape;
typedef NCollection_IndexedDataMap<TopoDS_Shape,TopTools_IndexedMapOfShape,TopTools_ShapeMapHasher> NMTTools_IndexedDataMapOfShapeIndexedMapOfShape;
typedef NCollection_Map<BOPTools_PaveBlock, BOPTools_PaveBlockMapHasher> NMTTools_MapOfPaveBlock;
typedef NCollection_TListIterator<NMTTools_CommonBlock> NMTTools_ListIteratorOfListOfCommonBlock;
typedef NCollection_List<NMTTools_CommonBlock> NMTTools_ListOfCommonBlock;
typedef NMTTools_PaveFiller * NMTTools_PPaveFiller;
typedef NCollection_TListIterator<NMTTools_CoupleOfShape> NMTTools_ListIteratorOfListOfCoupleOfShape;
typedef NCollection_IndexedDataMap<int, TColStd_IndexedMapOfInteger, TColStd_MapIntegerHasher> NMTTools_IndexedDataMapOfIndexedMapOfInteger;
typedef NCollection_DataMap<int, NMTTools_FaceInfo, TColStd_MapIntegerHasher> NMTTools_DataMapOfIntegerFaceInfo;
typedef NCollection_IndexedDataMap<TopoDS_Shape,BOPTools_PaveBlock,TopTools_ShapeMapHasher> NMTTools_IndexedDataMapOfShapePaveBlock;
typedef NCollection_DataMap<int, BOPTools_ListOfPaveBlock, TColStd_MapIntegerHasher> NMTTools_DataMapOfIntegerListOfPaveBlock;



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


%nodefaultctor NMTTools_PaveFiller;
class NMTTools_PaveFiller {
	public:
		%feature("autodoc", "1");
		NMTTools_PaveFiller();
		%feature("autodoc", "1");
		void SetCompositeShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		const TopoDS_Shape  CompositeShape() const;
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
		const Handle_IntTools_Context & Context() const;
		%feature("autodoc", "1");
		const BOPTools_PavePool & PavePool() const;
		%feature("autodoc", "1");
		BOPTools_PavePool & ChangePavePool();
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
		void RealSplitsInFace(const Standard_Integer nF1, BOPTools_ListOfPaveBlock & aLPB);
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
		void PutBoundPaveOnCurve(const gp_Pnt aP, const Standard_Real aT, BOPTools_Curve & aBC, BOPTools_SSInterference & aFF);
		%feature("autodoc", "1");
		Standard_Boolean FindPave(const gp_Pnt aP, const Standard_Real aTpV, const BOPTools_PaveSet &aPS, BOPTools_Pave & aPV);
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
		Standard_Integer CheckIntermediatePoint(const BOPTools_PaveBlock &aPB, const TopoDS_Edge aE, const Standard_Real aTol);
		%feature("autodoc", "1");
		void SharedEdges(const Standard_Integer nF1, const Standard_Integer nF2, TColStd_ListOfInteger & aLNE, TopTools_ListOfShape & aLSE);
		%feature("autodoc", "1");
		void FuseVertices(const TopoDS_Shape aC, TopTools_DataMapOfShapeShape & aDMVV) const;
		%feature("autodoc", "1");
		void TreatPaveBlocks(NMTTools_ListOfCommonBlock & theLCB);
		%feature("autodoc", "1");
		BOPTools_PavePool & ChangePavePoolNew();
		%feature("autodoc", "1");
		Standard_Boolean CheckCoincidence(const BOPTools_PaveBlock &aPB1, const BOPTools_PaveBlock &aPB2);
		%feature("autodoc", "1");
		void PutClosingPaveOnCurve(BOPTools_Curve & aBC, BOPTools_SSInterference & aFF);

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
		static		Standard_Boolean IsSplitInOnFace(const TopoDS_Edge aE, const TopoDS_Face aF, const Handle_IntTools_Context &aCtx);
		%feature("autodoc", "1");
		static		Standard_Boolean AreFacesSameDomain(const TopoDS_Face aF1, const TopoDS_Face aF2, const Handle_IntTools_Context &aCtx);
		%feature("autodoc", "1");
		static		void FindChains(const NMTTools_ListOfCoupleOfShape &aLCS, NMTTools_IndexedDataMapOfShapeIndexedMapOfShape & aM);
		%feature("autodoc", "1");
		static		void FindChains(const NMTTools_IndexedDataMapOfShapeIndexedMapOfShape &aM1, NMTTools_IndexedDataMapOfShapeIndexedMapOfShape & aM2);
		%feature("autodoc", "1");
		static		void MakePCurve(const TopoDS_Edge aE, const TopoDS_Face aF, const Handle_Geom2d_Curve &aC2D);
		%feature("autodoc", "1");
		static		void UpdateEdge(const TopoDS_Edge aE, const Standard_Real aTol);

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
		%feature("autodoc", "1");
		void Purge();

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


%nodefaultctor NMTTools_CoupleOfShape;
class NMTTools_CoupleOfShape {
	public:
		%feature("autodoc", "1");
		NMTTools_CoupleOfShape();
		%feature("autodoc", "1");
		void SetShape1(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape2() const;

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


%nodefaultctor NMTTools_FaceInfo;
class NMTTools_FaceInfo {
	public:
		%feature("autodoc", "1");
		NMTTools_FaceInfo();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer theI);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		const NMTTools_MapOfPaveBlock & PaveBlocksIn() const;
		%feature("autodoc", "1");
		NMTTools_MapOfPaveBlock & ChangePaveBlocksIn();
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & VerticesIn() const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & ChangeVerticesIn();
		%feature("autodoc", "1");
		const NMTTools_MapOfPaveBlock & PaveBlocksOn() const;
		%feature("autodoc", "1");
		NMTTools_MapOfPaveBlock & ChangePaveBlocksOn();
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & VerticesOn() const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & ChangeVerticesOn();

};
%feature("shadow") NMTTools_FaceInfo::~NMTTools_FaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NMTTools_FaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};
