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

%module BOPTools
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BOPTools_renames.i


%include BOPTools_required_python_modules.i


%include BOPTools_dependencies.i


%include BOPTools_headers.i

typedef NCollection_DataMap<TopoDS_Shape, BOPTools_Set, TopTools_ShapeMapHasher> BOPTools_DataMapOfShapeSet;
typedef NCollection_TListIterator<BOPTools_ConnexityBlock> BOPTools_ListIteratorOfListOfConnexityBlock;
typedef NCollection_List<BOPTools_ConnexityBlock> BOPTools_ListOfConnexityBlock;
typedef NCollection_Map<BOPTools_Set, BOPTools_SetMapHasher> BOPTools_MapOfSet;
typedef NCollection_List<BOPTools_CoupleOfShape> BOPTools_ListOfCoupleOfShape;
typedef NCollection_List<BOPTools_ShapeSet> BOPTools_ListOfShapeSet;
typedef NCollection_TListIterator<BOPTools_ShapeSet> BOPTools_ListIteratorOfListOfShapeSet;
typedef NCollection_List<BOPTools_EdgeSet> BOPTools_ListOfEdgeSet;
typedef NCollection_TListIterator<BOPTools_EdgeSet> BOPTools_ListIteratorOfListOfEdgeSet;
typedef NCollection_TListIterator<BOPTools_CoupleOfShape> BOPTools_ListIteratorOfListOfCoupleOfShape;



%nodefaultctor BOPTools_AlgoTools2D;
class BOPTools_AlgoTools2D {
	public:
		%feature("autodoc", "1");
		BOPTools_AlgoTools2D();
		%feature("autodoc", "1");
		static		void BuildPCurveForEdgeOnFace(const TopoDS_Edge aE, const TopoDS_Face aF);
		%feature("autodoc", "1");
		static		Standard_Boolean EdgeTangent(const TopoDS_Edge anE, const Standard_Real aT, gp_Vec & Tau);
		%feature("autodoc","PointOnSurface(const aE, const aF, Standard_Real aT) -> [Standard_Real, Standard_Real]");

		static		void PointOnSurface(const TopoDS_Edge aE, const TopoDS_Face aF, const Standard_Real aT, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","CurveOnSurface(const aE, const aF) -> Standard_Real");

		static		void CurveOnSurface(const TopoDS_Edge aE, const TopoDS_Face aF, Handle_Geom2d_Curve & aC, Standard_Real &OutValue);
		%feature("autodoc","CurveOnSurface(const aE, const aF) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		void CurveOnSurface(const TopoDS_Edge aE, const TopoDS_Face aF, Handle_Geom2d_Curve & aC, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","HasCurveOnSurface(const aE, const aF) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		Standard_Boolean HasCurveOnSurface(const TopoDS_Edge aE, const TopoDS_Face aF, Handle_Geom2d_Curve & aC, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean HasCurveOnSurface(const TopoDS_Edge aE, const TopoDS_Face aF);
		%feature("autodoc", "1");
		static		void AdjustPCurveOnFace(const TopoDS_Face aF, const Handle_Geom_Curve &C3D, const Handle_Geom2d_Curve &aC2D, Handle_Geom2d_Curve & aC2DA);
		%feature("autodoc", "1");
		static		void AdjustPCurveOnFace(const TopoDS_Face aF, const Standard_Real aT1, const Standard_Real aT2, const Handle_Geom2d_Curve &aC2D, Handle_Geom2d_Curve & aC2DA);
		%feature("autodoc", "1");
		static		Standard_Real IntermediatePoint(const Standard_Real aFirst, const Standard_Real aLast);
		%feature("autodoc", "1");
		static		Standard_Real IntermediatePoint(const TopoDS_Edge anE);
		%feature("autodoc", "1");
		static		void BuildPCurveForEdgeOnPlane(const TopoDS_Edge theE, const TopoDS_Face theF);
		%feature("autodoc","Make2D(const aE, const aF) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		void Make2D(const TopoDS_Edge aE, const TopoDS_Face aF, Handle_Geom2d_Curve & aC, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","MakePCurveOnFace(const aF, const C3D) -> Standard_Real");

		static		void MakePCurveOnFace(const TopoDS_Face aF, const Handle_Geom_Curve &C3D, Handle_Geom2d_Curve & aC, Standard_Real &OutValue);
		%feature("autodoc","MakePCurveOnFace(const aF, const C3D, Standard_Real aT1, Standard_Real aT2) -> Standard_Real");

		static		void MakePCurveOnFace(const TopoDS_Face aF, const Handle_Geom_Curve &C3D, const Standard_Real aT1, const Standard_Real aT2, Handle_Geom2d_Curve & aC, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		void MakePCurveOfType(const ProjLib_ProjectedCurve &PC, Handle_Geom2d_Curve & aC);

};
%feature("shadow") BOPTools_AlgoTools2D::~BOPTools_AlgoTools2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_AlgoTools2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ShapeSet;
class BOPTools_ShapeSet {
	public:
		%feature("autodoc", "1");
		BOPTools_ShapeSet();
		%feature("autodoc", "1");
		BOPTools_ShapeSet(const Handle_NCollection_BaseAllocator &theObj);
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		void Add(const BOPCol_ListOfShape &theLS);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape theShape, const TopAbs_ShapeEnum theType);
		%feature("autodoc", "1");
		void AddEdge(const TopoDS_Edge theEdge);
		%feature("autodoc", "1");
		void AddEdges(const BOPCol_ListOfShape &theLS);
		%feature("autodoc", "1");
		void AddEdges(const TopoDS_Shape theFace);
		%feature("autodoc", "1");
		void Subtract(const BOPTools_ShapeSet &theOther);
		%feature("autodoc", "1");
		void operator-=(const BOPTools_ShapeSet &theSet);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Get(BOPCol_ListOfShape & theLS) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BOPTools_ShapeSet &theOther) const;

};
%feature("shadow") BOPTools_ShapeSet::~BOPTools_ShapeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ShapeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ConnexityBlock;
class BOPTools_ConnexityBlock {
	public:
		%feature("autodoc", "1");
		BOPTools_ConnexityBlock();
		%feature("autodoc", "1");
		BOPTools_ConnexityBlock(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		BOPCol_ListOfShape & ChangeShapes();
		%feature("autodoc", "1");
		void SetRegular(const Standard_Boolean theFlag);
		%feature("autodoc", "1");
		Standard_Boolean IsRegular() const;
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & Loops() const;
		%feature("autodoc", "1");
		BOPCol_ListOfShape & ChangeLoops();

};
%feature("shadow") BOPTools_ConnexityBlock::~BOPTools_ConnexityBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ConnexityBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools;
class BOPTools {
	public:
		%feature("autodoc", "1");
		BOPTools();
		%feature("autodoc", "1");
		static		void MapShapes(const TopoDS_Shape S, BOPCol_MapOfShape & M);
		%feature("autodoc", "1");
		static		void MapShapes(const TopoDS_Shape S, BOPCol_IndexedMapOfShape & M);
		%feature("autodoc", "1");
		static		void MapShapes(const TopoDS_Shape S, const TopAbs_ShapeEnum T, BOPCol_IndexedMapOfShape & M);
		%feature("autodoc", "1");
		static		void MapShapesAndAncestors(const TopoDS_Shape S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA, BOPCol_IndexedDataMapOfShapeListOfShape & M);

};
%feature("shadow") BOPTools::~BOPTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_Set;
class BOPTools_Set {
	public:
		%feature("autodoc", "1");
		BOPTools_Set();
		%feature("autodoc", "1");
		BOPTools_Set(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		BOPTools_Set & Assign(const BOPTools_Set &theOther);
		%feature("autodoc", "1");
		BOPTools_Set & operator=(const BOPTools_Set &Other);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape theS, const TopAbs_ShapeEnum theType);
		%feature("autodoc", "1");
		void AddEdges(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BOPTools_Set &theOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer theUpper) const;

};
%extend BOPTools_Set {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BOPTools_Set::~BOPTools_Set %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_Set {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_AlgoTools3D;
class BOPTools_AlgoTools3D {
	public:
		%feature("autodoc", "1");
		BOPTools_AlgoTools3D();
		%feature("autodoc", "1");
		static		void DoSplitSEAMOnFace(const TopoDS_Edge aSp, const TopoDS_Face aF);
		%feature("autodoc", "1");
		static		void GetNormalToFaceOnEdge(const TopoDS_Edge aE, const TopoDS_Face aF, const Standard_Real aT, gp_Dir & aD);
		%feature("autodoc", "1");
		static		void GetNormalToFaceOnEdge(const TopoDS_Edge aE, const TopoDS_Face aF, gp_Dir & aD);
		%feature("autodoc", "1");
		static		Standard_Integer SenseFlag(const gp_Dir aNF1, const gp_Dir aNF2);
		%feature("autodoc", "1");
		static		Standard_Boolean GetNormalToSurface(const Handle_Geom_Surface &aS, const Standard_Real U, const Standard_Real V, gp_Dir & aD);
		%feature("autodoc", "1");
		static		void GetApproxNormalToFaceOnEdge(const TopoDS_Edge aE, const TopoDS_Face aF, const Standard_Real aT, gp_Pnt & aPx, gp_Dir & aD, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		void GetApproxNormalToFaceOnEdge(const TopoDS_Edge theE, const TopoDS_Face theF, const Standard_Real aT, gp_Pnt & aP, gp_Dir & aDNF, const Standard_Real aDt2D);
		%feature("autodoc", "1");
		static		void PointNearEdge(const TopoDS_Edge aE, const TopoDS_Face aF, const Standard_Real aT, const Standard_Real aDt2D, gp_Pnt2d & aP2D, gp_Pnt & aPx);
		%feature("autodoc", "1");
		static		void PointNearEdge(const TopoDS_Edge aE, const TopoDS_Face aF, const Standard_Real aT, gp_Pnt2d & aP2D, gp_Pnt & aPx, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		void PointNearEdge(const TopoDS_Edge aE, const TopoDS_Face aF, gp_Pnt2d & aP2D, gp_Pnt & aPx, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Real MinStepIn2d();
		%feature("autodoc", "1");
		static		Standard_Boolean IsEmptyShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		static		void OrientEdgeOnFace(const TopoDS_Edge aE, const TopoDS_Face aF, TopoDS_Edge & aER);
		%feature("autodoc", "1");
		static		Standard_Integer PointInFace(const TopoDS_Face theF, gp_Pnt & theP, gp_Pnt2d & theP2D, Handle_BOPInt_Context & theContext);

};
%feature("shadow") BOPTools_AlgoTools3D::~BOPTools_AlgoTools3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_AlgoTools3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_SetMapHasher;
class BOPTools_SetMapHasher {
	public:
		%feature("autodoc", "1");
		BOPTools_SetMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const BOPTools_Set &theSS, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const BOPTools_Set &theSS1, const BOPTools_Set &theSS2);

};
%feature("shadow") BOPTools_SetMapHasher::~BOPTools_SetMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_SetMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CoupleOfShape;
class BOPTools_CoupleOfShape {
	public:
		%feature("autodoc", "1");
		BOPTools_CoupleOfShape();
		%feature("autodoc", "1");
		void SetShape1(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape1() const;
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape2() const;

};
%feature("shadow") BOPTools_CoupleOfShape::~BOPTools_CoupleOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CoupleOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_EdgeSet;
class BOPTools_EdgeSet {
	public:
		%feature("autodoc", "1");
		BOPTools_EdgeSet();
		%feature("autodoc", "1");
		BOPTools_EdgeSet(const Handle_NCollection_BaseAllocator &theObj);
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		void AddEdge(const TopoDS_Edge theEdge);
		%feature("autodoc", "1");
		void AddEdges(const BOPCol_ListOfShape &theLS);
		%feature("autodoc", "1");
		void AddEdges(const TopoDS_Shape theFace);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Get(BOPCol_ListOfShape & theLS) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BOPTools_EdgeSet &theOther) const;

};
%feature("shadow") BOPTools_EdgeSet::~BOPTools_EdgeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_EdgeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_AlgoTools;
class BOPTools_AlgoTools {
	public:
		%feature("autodoc", "1");
		BOPTools_AlgoTools();
		%feature("autodoc", "1");
		static		Standard_Integer ComputeVV(const TopoDS_Vertex aV1, const gp_Pnt aP2, const Standard_Real aTolP2);
		%feature("autodoc", "1");
		static		Standard_Integer ComputeVV(const TopoDS_Vertex aV1, const TopoDS_Vertex aV2);
		%feature("autodoc", "1");
		static		void MakeVertex(BOPCol_ListOfShape & aLV, TopoDS_Vertex & aV);
		%feature("autodoc", "1");
		static		void MakeEdge(const IntTools_Curve &theCurve, const TopoDS_Vertex theV1, const Standard_Real theT1, const TopoDS_Vertex theV2, const Standard_Real theT2, const Standard_Real theTolR3D, TopoDS_Edge & theE);
		%feature("autodoc", "1");
		static		void MakePCurve(const TopoDS_Edge theE, const TopoDS_Face theF1, const TopoDS_Face theF2, const IntTools_Curve &theCurve, const Standard_Boolean thePC1, const Standard_Boolean thePC2);
		%feature("autodoc", "1");
		static		void MakeContainer(const TopAbs_ShapeEnum theType, TopoDS_Shape & theShape);
		%feature("autodoc", "1");
		static		Standard_Boolean IsHole(const TopoDS_Shape aW, const TopoDS_Shape aF);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse(const TopoDS_Shape theSplit, const TopoDS_Shape theShape, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse(const TopoDS_Face theSplit, const TopoDS_Face theShape, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse(const TopoDS_Edge aE1, const TopoDS_Edge aE2, Handle_BOPInt_Context & aContext);
		%feature("autodoc", "1");
		static		Standard_Boolean AreFacesSameDomain(const TopoDS_Face theF1, const TopoDS_Face theF2, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean CheckSameGeom(const TopoDS_Face theF1, const TopoDS_Face theF2, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Integer Sense(const TopoDS_Face theF1, const TopoDS_Face theF2);
		%feature("autodoc", "1");
		static		Standard_Boolean GetEdgeOff(const TopoDS_Edge theEdge, const TopoDS_Face theFace, TopoDS_Edge & theEdgeOff);
		%feature("autodoc", "1");
		static		void GetFaceOff(const TopoDS_Edge theEdge, const TopoDS_Face theFace, BOPTools_ListOfCoupleOfShape & theLCEF, TopoDS_Face & theFaceOff, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsInternalFace(const TopoDS_Face theFace, const TopoDS_Edge theEdge, const TopoDS_Face theFace1, const TopoDS_Face theFace2, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsInternalFace(const TopoDS_Face theFace, const TopoDS_Edge theEdge, BOPCol_ListOfShape & theLF, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsInternalFace(const TopoDS_Face theFace, const TopoDS_Solid theSolid, BOPCol_IndexedDataMapOfShapeListOfShape & theMEF, const Standard_Real theTol, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean GetEdgeOnFace(const TopoDS_Edge theEdge, const TopoDS_Face theFace, TopoDS_Edge & theEdgeOnF);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const gp_Pnt thePoint, const TopoDS_Solid theSolid, const Standard_Real theTol, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const TopoDS_Vertex theVertex, const TopoDS_Solid theSolid, const Standard_Real theTol, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const TopoDS_Edge theEdge, const TopoDS_Solid theSolid, const Standard_Real theTol, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const TopoDS_Face theFace, const TopoDS_Solid theSolid, const Standard_Real theTol, BOPCol_IndexedMapOfShape & theBounds, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeStateByOnePoint(const TopoDS_Shape theShape, const TopoDS_Solid theSolid, const Standard_Real theTol, Handle_BOPInt_Context & theContext);
		%feature("autodoc", "1");
		static		void MakeConnexityBlock(BOPCol_ListOfShape & theLS, BOPCol_IndexedMapOfShape & theMapAvoid, BOPCol_ListOfShape & theLSCB, const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		static		void MakeConnexityBlocks(const TopoDS_Shape theS, const TopAbs_ShapeEnum theType1, const TopAbs_ShapeEnum theType2, BOPCol_ListOfShape & theLCB);
		%feature("autodoc", "1");
		static		void OrientFacesOnShell(TopoDS_Shape & theS);
		%feature("autodoc", "1");
		static		void CorrectTolerances(const TopoDS_Shape theS, const Standard_Real theTolMax=1.00000000000000004792173602385929598312941379845142364502e-4);
		%feature("autodoc", "1");
		static		void CorrectCurveOnSurface(const TopoDS_Shape theS, const Standard_Real theTolMax=1.00000000000000004792173602385929598312941379845142364502e-4);
		%feature("autodoc", "1");
		static		void CorrectPointOnCurve(const TopoDS_Shape theS, const Standard_Real theTolMax=1.00000000000000004792173602385929598312941379845142364502e-4);
		%feature("autodoc", "1");
		static		void MakeNewVertex(const gp_Pnt aP1, const Standard_Real aTol, TopoDS_Vertex & aNewVertex);
		%feature("autodoc", "1");
		static		void MakeNewVertex(const TopoDS_Vertex aV1, const TopoDS_Vertex aV2, TopoDS_Vertex & aNewVertex);
		%feature("autodoc", "1");
		static		void MakeNewVertex(const TopoDS_Edge aE1, const Standard_Real aP1, const TopoDS_Edge aE2, const Standard_Real aP2, TopoDS_Vertex & aNewVertex);
		%feature("autodoc", "1");
		static		void MakeNewVertex(const TopoDS_Edge aE1, const Standard_Real aP1, const TopoDS_Face aF2, TopoDS_Vertex & aNewVertex);
		%feature("autodoc", "1");
		static		void PointOnEdge(const TopoDS_Edge aEdge, const Standard_Real aPrm, gp_Pnt & aP);
		%feature("autodoc", "1");
		static		void MakeSplitEdge(const TopoDS_Edge aE1, const TopoDS_Vertex aV1, const Standard_Real aP1, const TopoDS_Vertex aV2, const Standard_Real aP2, TopoDS_Edge & aNewEdge);
		%feature("autodoc", "1");
		static		void MakeSectEdge(const IntTools_Curve &aIC, const TopoDS_Vertex aV1, const Standard_Real aP1, const TopoDS_Vertex aV2, const Standard_Real aP2, TopoDS_Edge & aNewEdge);
		%feature("autodoc", "1");
		static		void UpdateVertex(const IntTools_Curve &aIC, const Standard_Real aT, const TopoDS_Vertex aV);
		%feature("autodoc", "1");
		static		void UpdateVertex(const TopoDS_Edge aE, const Standard_Real aT, const TopoDS_Vertex aV);
		%feature("autodoc", "1");
		static		void UpdateVertex(const TopoDS_Vertex aVF, const TopoDS_Vertex aVN);
		%feature("autodoc", "1");
		static		void CorrectRange(const TopoDS_Edge aE1, const TopoDS_Edge aE2, const IntTools_Range &aSR, IntTools_Range & aNewSR);
		%feature("autodoc", "1");
		static		void CorrectRange(const TopoDS_Edge aE, const TopoDS_Face aF, const IntTools_Range &aSR, IntTools_Range & aNewSR);
		%feature("autodoc", "1");
		static		Standard_Boolean IsBlockInOnFace(const IntTools_Range &aShR, const TopoDS_Face aF, const TopoDS_Edge aE, Handle_BOPInt_Context & aContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsMicroEdge(const TopoDS_Edge theEdge, const Handle_BOPInt_Context &theContext);
		%feature("autodoc", "1");
		static		void CorrectShapeTolerances(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		static		Standard_Integer Dimension(const TopoDS_Shape theS);

};
%feature("shadow") BOPTools_AlgoTools::~BOPTools_AlgoTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_AlgoTools {
	void _kill_pointed() {
		delete $self;
	}
};
