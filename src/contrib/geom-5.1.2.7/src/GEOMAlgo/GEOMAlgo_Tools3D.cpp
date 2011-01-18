//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
// File:	GEOMAlgo_Tools3D.cxx
// Created:	
// Author:	Peter KURNEV
//
#include <GEOMAlgo_Tools3D.ixx>

#include <Precision.hxx>

#include <gp_Vec.hxx>
#include <gp_Pnt.hxx>
#include <gp_Dir.hxx>
#include <gp_Pnt2d.hxx>
#include <gp_Pln.hxx>
#include <gp_XYZ.hxx>

#include <Geom_Curve.hxx>
#include <Geom_Surface.hxx>
#include <Geom2d_Curve.hxx>
#include <GeomAPI_ProjectPointOnSurf.hxx>

#include <TopAbs_ShapeEnum.hxx>
#include <TopAbs_State.hxx>

#include <TopLoc_Location.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_CompSolid.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Shell.hxx>
#include <TopoDS_Iterator.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>

#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>
//
#include <TopTools_ListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_MapOfShape.hxx>

#include <BRepClass3d_SolidClassifier.hxx>

#include <IntTools_Context.hxx>
#include <IntTools_Tools.hxx>

#include <BOPTools_Tools3D.hxx>
#include <BOPTools_Tools2D.hxx>
#include <BOPTools_Tools.hxx>

#include <NMTTools_ListOfCoupleOfShape.hxx>
#include <NMTTools_ListIteratorOfListOfCoupleOfShape.hxx>
#include <NMTTools_CoupleOfShape.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
//

static
  Standard_Boolean FindFacePairs (const TopoDS_Edge& ,
				  const TopTools_ListOfShape& ,
				  NMTTools_ListOfCoupleOfShape& );


static
  Standard_Real AngleWithRef(const gp_Dir& ,
			     const gp_Dir& ,
			     const gp_Dir& );

//=======================================================================
//function : IsInternalFace
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_Tools3D::IsInternalFace(const TopoDS_Face& theFace,
						   const TopoDS_Solid& theSolid,
						   const TopTools_IndexedDataMapOfShapeListOfShape& theMEF,
						   const Standard_Real theTol,
						   IntTools_Context& theContext)
{
  Standard_Boolean bRet;
  Standard_Integer aNbF;
  TopoDS_Edge aEL;
  TopExp_Explorer aExp;
  TopTools_ListIteratorOfListOfShape aItF;
  //
  bRet=Standard_False;
  //
  // 1 Try to find an edge from theFace in theMEF
  aExp.Init(theFace, TopAbs_EDGE);
  for(; aExp.More(); aExp.Next()) {
    const TopoDS_Edge& aE=TopoDS::Edge(aExp.Current());
    if (!theMEF.Contains(aE)) {
      continue;
    }
    // 
    const TopTools_ListOfShape& aLF=theMEF.FindFromKey(aE);
    aNbF=aLF.Extent();
    if (!aNbF) {
      return bRet; // it can not be so
    }
    else if (aNbF==1) {
      // aE is internal edge on aLF.First()
      const TopoDS_Face& aF1=TopoDS::Face(aLF.First());
      bRet=GEOMAlgo_Tools3D::IsInternalFace(theFace, aE, aF1, aF1);
      return bRet;
    }
    else if (aNbF==2) {
      const TopoDS_Face& aF1=TopoDS::Face(aLF.First());
      const TopoDS_Face& aF2=TopoDS::Face(aLF.Last());
      //
      if (aF2.IsSame(aF1) && BRep_Tool::IsClosed(aE, aF1)) {
	// treat as it was for 1 face
	bRet=GEOMAlgo_Tools3D::IsInternalFace(theFace, aE, aF1, aF2);
	return bRet;
      }
    }
    if (aNbF%2) {
      return bRet; // it can not be so
    }
    else { // aNbF=2,4,6,8,...
      bRet=GEOMAlgo_Tools3D::IsInternalFace(theFace, aE, aLF);
      return bRet;
    }
  }//for(; aExp.More(); aExp.Next()) {
  //
  //========================================
  // 2. Classify face using classifier
  //
  TopAbs_State aState;
  TopTools_IndexedMapOfShape aBounds;
  //
  aState=GEOMAlgo_Tools3D::ComputeState(theFace, theSolid, theTol, aBounds, theContext);
  bRet=(aState==TopAbs_IN);
  //
  return bRet;
}
//=======================================================================
//function : IsInternalFace
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_Tools3D::IsInternalFace(const TopoDS_Face& theFace,
						    const TopoDS_Edge& theEdge,
						    const TopTools_ListOfShape& theLF)
{
  Standard_Boolean bRet;
  Standard_Boolean aNbF;
  //
  bRet=Standard_False;
  //
  aNbF=theLF.Extent();
  if (aNbF==2) {
    const TopoDS_Face& aF1=TopoDS::Face(theLF.First());
    const TopoDS_Face& aF2=TopoDS::Face(theLF.Last());
    bRet=GEOMAlgo_Tools3D::IsInternalFace(theFace, theEdge, aF1, aF2);
    return bRet;
  }
  //
  else {
    NMTTools_ListOfCoupleOfShape aLCFF;
    NMTTools_ListIteratorOfListOfCoupleOfShape aIt;
    //
    FindFacePairs(theEdge, theLF, aLCFF);
    //
    aIt.Initialize(aLCFF);
    for (; aIt.More(); aIt.Next()) {
      const NMTTools_CoupleOfShape& aCSFF=aIt.Value();
      //
      const TopoDS_Face& aF1=TopoDS::Face(aCSFF.Shape1());
      const TopoDS_Face& aF2=TopoDS::Face(aCSFF.Shape2());
      bRet=GEOMAlgo_Tools3D::IsInternalFace(theFace, theEdge, aF1, aF2);
      if (bRet) {
	return bRet;
      }
    }
  }
  return bRet;
}
//=======================================================================
//function : IsInternalFace
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_Tools3D::IsInternalFace(const TopoDS_Face& theFace,
						   const TopoDS_Edge& theEdge,
						   const TopoDS_Face& theFace1,
						   const TopoDS_Face& theFace2)
{
  Standard_Boolean bRet;
  Standard_Real aT1, aT2, aT, aDt2D, aDt2Dx;//aD1, aD2,
  gp_Pnt aPx, aPF, aPF1, aPF2;
  gp_Pnt2d aP2D, aPF2D;
  gp_Dir aDNF1, aDNF2;
  TopoDS_Edge aE1, aE2;
  Handle(Geom_Curve)aC3D;
  //
  aC3D =BRep_Tool::Curve(theEdge, aT1, aT2);
  aT=BOPTools_Tools2D::IntermediatePoint(aT1, aT2);
  aC3D->D0(aT, aPx);
  //
  // 1. PF
  aDt2D=BOPTools_Tools3D::MinStepIn2d();
  aDt2Dx=10.*aDt2D;
  BOPTools_Tools3D::PointNearEdge (theEdge, theFace, aT, aDt2Dx, aPF2D, aPF);
  // 
  // 2. E1, E2
  GEOMAlgo_Tools3D::GetEdgeOnFace(theEdge, theFace1, aE1);
  if (aE1.Orientation()==TopAbs_INTERNAL) {
    aE2=aE1;
    aE1.Orientation(TopAbs_FORWARD);
    aE2.Orientation(TopAbs_REVERSED);
  }
  else if (theFace1==theFace2) {
    aE2=aE1;
    aE1.Orientation(TopAbs_FORWARD);
    aE2.Orientation(TopAbs_REVERSED);
  }
  else {
    GEOMAlgo_Tools3D::GetEdgeOnFace(theEdge, theFace2, aE2);
  }
  //
  // 3
  bRet=Standard_False;
  //
  //modified by NIZNHY-PKV Mon Nov 13 12:12:53 2006f
  //
  BOPTools_Tools3D::GetApproxNormalToFaceOnEdge (aE1, theFace1, aT, aPF1, aDNF1);
  BOPTools_Tools3D::GetApproxNormalToFaceOnEdge (aE2, theFace2, aT, aPF2, aDNF2);
  //
  {
    Standard_Real aA12, aA1x, aTwoPI;
    //
    aTwoPI=2.*PI;
    gp_Vec aVBF (aPx, aPF );
    gp_Vec aVBF1(aPx, aPF1);
    gp_Vec aVBF2(aPx, aPF2);
    //
    gp_Dir aDTF1;
    gp_Dir aDBF (aVBF);
    gp_Dir aDBF1(aVBF1);
    gp_Dir aDBF2(aVBF2);
    //
    aDTF1=aDNF1^aDBF1;
    //aA12=aDBF1.AngleWithRef(aDBF2, aDTF1);
    aA12=AngleWithRef(aDBF1, aDBF2, aDTF1);
    if (aA12<0.) {
      aA12=aA12+aTwoPI;
    }
    //aA1x=aDBF1.AngleWithRef(aDBF , aDTF1);
    aA1x=AngleWithRef(aDBF1, aDBF , aDTF1);
    if (aA1x<0.) {
      aA1x=aA1x+aTwoPI;
    }
    //
    if (aA1x<aA12) {
      bRet=!bRet; //TopAbs_IN;
    }
  }
  //
  /*
  {
    Standard_Real aD1, aD2;
    //
    //BOPTools_Tools3D::GetApproxNormalToFaceOnEdge (aE1, theFace1, aT, aPF1, aDNF1);
    gp_Pln aPlnF1(aPx, aDNF1);
    //
    aD1=BOPTools_Tools3D::SignDistance(aPF, aPlnF1);
    if (aD1<=0.) {
      //BOPTools_Tools3D::GetApproxNormalToFaceOnEdge (aE2, theFace2, aT, aPF2, aDNF2);
      gp_Pln aPlnF2(aPx, aDNF2);
      //
      aD2=BOPTools_Tools3D::SignDistance(aPF, aPlnF2);
      if (aD2<=0.) {
	bRet=!bRet; //TopAbs_IN;
      }
    }
  }
  */
  //modified by NIZNHY-PKV Mon Nov 13 12:12:55 2006t
  //
  return bRet;
  
}
//=======================================================================
//function : GetFaceOff
//purpose  : 
//=======================================================================
  void GEOMAlgo_Tools3D::GetFaceOff(const TopoDS_Edge& theE1,
				   const TopoDS_Face& theF1,
				   const NMTTools_ListOfCoupleOfShape& theLCSOff,
				   TopoDS_Face& theFOff)
{
  Standard_Real aT, aT1, aT2, aAngle, aTwoPI, aAngleMin;
  gp_Pnt aPn1, aPn2;
  gp_Vec aVTgt;
  gp_Dir aDN1, aDN2;
  NMTTools_ListIteratorOfListOfCoupleOfShape aIt;
  //
  aAngleMin=100.;
  aTwoPI=PI+PI;
  BRep_Tool::Range(theE1, aT1, aT2);
  aT=BOPTools_Tools2D::IntermediatePoint(aT1, aT2);
  // Ref
  BOPTools_Tools2D::EdgeTangent(theE1, aT, aVTgt);
  gp_Dir aDTtgt(aVTgt);
  aDTtgt.Reverse();
  // N1
  BOPTools_Tools3D::GetApproxNormalToFaceOnEdge(theE1, theF1, aT, aPn1, aDN1);
  //
  aIt.Initialize(theLCSOff);
  for (; aIt.More(); aIt.Next()) {
    const NMTTools_CoupleOfShape& aCS=aIt.Value();
    const TopoDS_Edge& aE2=TopoDS::Edge(aCS.Shape1());
    const TopoDS_Face& aF2=TopoDS::Face(aCS.Shape2());
    //
    if (aF2==theF1) {
      aAngle=PI;
    }
    else if (aF2.IsSame(theF1)) {
      aAngle=aTwoPI;
    }
    else {
      BOPTools_Tools3D::GetApproxNormalToFaceOnEdge (aE2, aF2, aT, aPn2, aDN2);
      aDN2.Reverse();
      // Angle
      //
      //aAngle=aDN1.AngleWithRef(aDN2, aDTtgt);
      aAngle=AngleWithRef(aDN1, aDN2, aDTtgt);
      //
      if(aAngle<0.) {
	aAngle=aTwoPI+aAngle;
      }
    }

    if (aAngle<aAngleMin){
      aAngleMin=aAngle;
      theFOff=aF2;
    }
  }
}
//=======================================================================
//function : GetEdgeOnFace
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_Tools3D::GetEdgeOnFace(const TopoDS_Edge& theE1,
						  const TopoDS_Face& theF2,
						  TopoDS_Edge& theE2)
{
  Standard_Boolean bFound;
  TopoDS_Iterator aItF, aItW;
  //
  bFound=Standard_False;
  //
  aItF.Initialize(theF2);
  for (; aItF.More(); aItF.Next()) {
    const TopoDS_Shape& aW=aItF.Value();
    aItW.Initialize(aW);
    for (; aItW.More(); aItW.Next()) {
      const TopoDS_Shape& aE=aItW.Value();
      if (aE.IsSame(theE1)) {
	theE2=TopoDS::Edge(aE);
	bFound=!bFound;
	return bFound;
      }
    }
  }
  return bFound;
}
//=======================================================================
//function : GetEdgeOff
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_Tools3D::GetEdgeOff(const TopoDS_Edge& theE1,
					       const TopoDS_Face& theF2,
					       TopoDS_Edge& theE2)
     
{
  Standard_Boolean bFound;
  TopAbs_Orientation aOr1, aOr1C, aOr2;
  TopExp_Explorer anExp;
  //
  bFound=Standard_False;
  aOr1=theE1.Orientation();
  aOr1C=TopAbs::Reverse(aOr1);
  //
  anExp.Init(theF2, TopAbs_EDGE);
  for (; anExp.More(); anExp.Next()) {
    const TopoDS_Edge& aEF2=TopoDS::Edge(anExp.Current());
    if (aEF2.IsSame(theE1)) {
      aOr2=aEF2.Orientation();
      if (aOr2==aOr1C) {
	theE2=aEF2;
	bFound=!bFound;
	return bFound;
      }
    }
  }
  return bFound;
}
//=======================================================================
// function:  ComputeState
// purpose: 
//=======================================================================
  TopAbs_State GEOMAlgo_Tools3D::ComputeState(const TopoDS_Face& theF,
					     const TopoDS_Solid& theRef,
					     const Standard_Real theTol,
					     const TopTools_IndexedMapOfShape& theBounds,
					     IntTools_Context& theCtx)
{
  TopAbs_State aState;
  TopExp_Explorer aExp; 
  TopoDS_Edge aE1;
  gp_Pnt2d aP2D;
  gp_Pnt aP3D; 
  //
  aState=TopAbs_UNKNOWN;
  //
  aExp.Init(theF, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    const TopoDS_Edge& aSE=TopoDS::Edge(aExp.Current());
    if (BRep_Tool::Degenerated(aSE)) {
      continue;
    }
    //
    if (!theBounds.Contains(aSE)) {
      const TopoDS_Edge& aE=TopoDS::Edge(aSE);
      aState= GEOMAlgo_Tools3D::ComputeState(aE, theRef, theTol, theCtx);
      return aState;
    }
    if (aE1.IsNull()) {
      aE1=TopoDS::Edge(aSE);
    }
  }
  // !!<- process edges that are all on theRef
  if (!aE1.IsNull()) {
    BOPTools_Tools3D::PointNearEdge(aE1, theF, aP2D, aP3D);
    aState=GEOMAlgo_Tools3D::ComputeState(aP3D, theRef, theTol, theCtx);
  }
  //
  return aState;
}
//=======================================================================
// function:  ComputeStateByOnePoint
// purpose: 
//=======================================================================
  TopAbs_State GEOMAlgo_Tools3D::ComputeStateByOnePoint(const TopoDS_Shape& theS,
						       const TopoDS_Solid& theRef,
						       const Standard_Real theTol,
						       IntTools_Context& theCtx)
{
  TopAbs_State aState;
  TopAbs_ShapeEnum aType;
  //
  aState=TopAbs_UNKNOWN;
  aType=theS.ShapeType();
  if (aType==TopAbs_VERTEX) {
    const TopoDS_Vertex& aV=TopoDS::Vertex(theS);
    aState=GEOMAlgo_Tools3D::ComputeState(aV, theRef, theTol, theCtx);
  }
  else if (aType==TopAbs_EDGE) {
    const TopoDS_Edge& aE=TopoDS::Edge(theS);
    aState=GEOMAlgo_Tools3D::ComputeState(aE, theRef, theTol, theCtx);
  }
  return aState;
}
//=======================================================================
// function:  ComputeState
// purpose: 
//=======================================================================
  TopAbs_State GEOMAlgo_Tools3D::ComputeState(const TopoDS_Vertex& theV,
					     const TopoDS_Solid& theRef,
					     const Standard_Real theTol,
					     IntTools_Context& theCtx)
{
  TopAbs_State aState;
  gp_Pnt aP3D; 
  //
  aP3D=BRep_Tool::Pnt(theV);
  aState=GEOMAlgo_Tools3D::ComputeState(aP3D, theRef, theTol, theCtx);
  return aState;
}
//=======================================================================
// function:  ComputeState
// purpose: 
//=======================================================================
  TopAbs_State GEOMAlgo_Tools3D::ComputeState(const TopoDS_Edge& theE,
					     const TopoDS_Solid& theRef,
					     const Standard_Real theTol,
					     IntTools_Context& theCtx)
{
  Standard_Real aT1, aT2, aT = 0.;
  TopAbs_State aState;
  Handle(Geom_Curve) aC3D;
  gp_Pnt aP3D; 
  //
  aC3D = BRep_Tool::Curve(theE, aT1, aT2);
  //
  if(aC3D.IsNull()) {
    //it means that we are in degenerated edge
    const TopoDS_Vertex& aV = TopExp::FirstVertex(theE);
    if(aV.IsNull()){
      return TopAbs_UNKNOWN;
    }
    aP3D=BRep_Tool::Pnt(aV);
  }
  else {//usual case
    Standard_Boolean bF2Inf, bL2Inf;
    Standard_Real dT=10.;
    //
    bF2Inf = Precision::IsNegativeInfinite(aT1);
    bL2Inf = Precision::IsPositiveInfinite(aT2);
    //
    if (bF2Inf && !bL2Inf) {
      aT=aT2-dT;
    }
    else if (!bF2Inf && bL2Inf) {
      aT=aT1+dT;
    }
    else if (bF2Inf && bL2Inf) {
      aT=0.;
    }
    else {
      aT=IntTools_Tools::IntermediatePoint(aT1, aT2);
    }
    aC3D->D0(aT, aP3D);
  }
  //
  aState=GEOMAlgo_Tools3D::ComputeState(aP3D, theRef, theTol, theCtx);
  //
  return aState;
}
//=======================================================================
// function:  ComputeState
// purpose: 
//=======================================================================
  TopAbs_State GEOMAlgo_Tools3D::ComputeState(const gp_Pnt& theP,
					     const TopoDS_Solid& theRef,
					     const Standard_Real theTol,
					     IntTools_Context& theCtx)
{
  TopAbs_State aState;
  //
  BRepClass3d_SolidClassifier& aSC=theCtx.SolidClassifier(theRef);
  aSC.Perform(theP, theTol);
  //
  aState=aSC.State();
  //
  return aState;
}
//=======================================================================
// function: IsSplitToReverse
// purpose: 
//=======================================================================
  Standard_Boolean GEOMAlgo_Tools3D::IsSplitToReverse(const TopoDS_Shape& theSp,
						     const TopoDS_Shape& theSr,
						     IntTools_Context& theCtx)
{
  Standard_Boolean bRet;
  TopAbs_ShapeEnum aType;
  //
  bRet=Standard_False;
  //
  aType=theSp.ShapeType();
  switch (aType) {
    case TopAbs_EDGE: {
      const TopoDS_Edge& aESp=TopoDS::Edge(theSp);
      const TopoDS_Edge& aESr=TopoDS::Edge(theSr);
      bRet=GEOMAlgo_Tools3D::IsSplitToReverse(aESp, aESr, theCtx);
    }
      break;
      //
    case TopAbs_FACE: {
      const TopoDS_Face& aFSp=TopoDS::Face(theSp);
      const TopoDS_Face& aFSr=TopoDS::Face(theSr);
      bRet=GEOMAlgo_Tools3D::IsSplitToReverse(aFSp, aFSr, theCtx);
    }
      break;
      //
    default:
      break;
  }
  return bRet;
}
//=======================================================================
//function :IsSplitToReverse
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_Tools3D::IsSplitToReverse(const TopoDS_Face& theFSp,
						     const TopoDS_Face& theFSr,
						     IntTools_Context& theContext)
{
  Standard_Boolean bRet, bFound, bInFace;
  Standard_Real aT1, aT2, aT, aU, aV, aScPr;
  gp_Pnt aPFSp, aPFSr;
  gp_Dir aDNFSp;
  gp_Vec aD1U, aD1V;
  Handle(Geom_Surface) aSr, aSp;
  TopAbs_Orientation aOrSr, aOrSp;
  TopExp_Explorer anExp;
  TopoDS_Edge aESp;
  //
  bRet=Standard_False;
  //
  aSr=BRep_Tool::Surface(theFSr);
  aSp=BRep_Tool::Surface(theFSp);
  if (aSr==aSp) {
    aOrSr=theFSr.Orientation();
    aOrSp=theFSp.Orientation();
    bRet=(aOrSr!=aOrSp);
    return bRet;
  }
  //
  bFound=Standard_False;
  anExp.Init(theFSp, TopAbs_EDGE);
  for (; anExp.More(); anExp.Next()) {
    aESp=TopoDS::Edge(anExp.Current());
    if (!BRep_Tool::Degenerated(aESp)) {
      if (!BRep_Tool::IsClosed(aESp, theFSp)) {
	bFound=!bFound;
	break;
      }
    }
  }
  if (!bFound) {
    return bRet;
  }
  //
  BRep_Tool::Range(aESp, aT1, aT2);
  aT=BOPTools_Tools2D::IntermediatePoint(aT1, aT2);
  BOPTools_Tools3D::GetApproxNormalToFaceOnEdge(aESp, theFSp, aT, aPFSp, aDNFSp);
  //
  // Parts of theContext.ComputeVS(..) 
  GeomAPI_ProjectPointOnSurf& aProjector=theContext.ProjPS(theFSr);
  aProjector.Perform(aPFSp);
  if (!aProjector.IsDone()) {
    return bRet;
  }
  //
  aProjector.LowerDistanceParameters(aU, aV);
  gp_Pnt2d aP2D(aU, aV);
  bInFace=theContext.IsPointInFace (theFSr, aP2D);
  if (!bInFace) {
    return bRet;
  }
  //
  aSr->D1(aU, aV, aPFSr, aD1U, aD1V);
  gp_Dir aDD1U(aD1U); 
  gp_Dir aDD1V(aD1V);
  gp_Dir aDNFSr=aDD1U^aDD1V; 
  if (theFSr.Orientation()==TopAbs_REVERSED){
    aDNFSr.Reverse();
  }
  //
  aScPr=aDNFSp*aDNFSr;
  bRet=(aScPr<0.);
  //
  return bRet;
}
//=======================================================================
//function :IsSplitToReverse
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_Tools3D::IsSplitToReverse(const TopoDS_Edge& theSplit,
						     const TopoDS_Edge& theEdge,
						     IntTools_Context& theContext)
{
  Standard_Boolean bRet, aFlag, bIsDegenerated;
  Standard_Real aTE, aTS, aScPr, aTa, aTb, aT1, aT2;
  TopAbs_Orientation aOrSr, aOrSp;
  Handle(Geom_Curve) aCEdge, aCSplit;
  gp_Vec aVE, aVS;
  gp_Pnt aP;
  //
  bRet=Standard_False;
  //
  bIsDegenerated=(BRep_Tool::Degenerated(theSplit) || 
		  BRep_Tool::Degenerated(theEdge));
  if (bIsDegenerated) {
    return bRet;
  }
  //
  aCEdge =BRep_Tool::Curve(theEdge , aT1, aT2);
  aCSplit=BRep_Tool::Curve(theSplit, aTa, aTb);
  //
  if (aCEdge==aCSplit) {
    aOrSr=theEdge.Orientation();
    aOrSp=theSplit.Orientation();
    bRet=(aOrSr!=aOrSp);
    return bRet;
  }
  //
  aTS=BOPTools_Tools2D::IntermediatePoint(aTa, aTb);
  aCSplit->D0(aTS, aP);
  aFlag=BOPTools_Tools2D::EdgeTangent(theSplit, aTS, aVS);
  gp_Dir aDTS(aVS);
  //
  aFlag=theContext.ProjectPointOnEdge(aP, theEdge, aTE);
  aFlag=BOPTools_Tools2D::EdgeTangent(theEdge, aTE, aVE);
  gp_Dir aDTE(aVE);
  //
  aScPr=aDTS*aDTE;
  bRet=(aScPr<0.);
  //
  return bRet;
}

//=======================================================================
// function: Sense
// purpose: 
//=======================================================================
  Standard_Integer GEOMAlgo_Tools3D::Sense (const TopoDS_Face& theF1,
					   const TopoDS_Face& theF2)
{
  Standard_Integer iSense=0;
  gp_Dir aDNF1, aDNF2;
  TopoDS_Edge aE1, aE2;
  TopExp_Explorer anExp;
  //
  anExp.Init(theF1, TopAbs_EDGE);
  for (; anExp.More(); anExp.Next()) {
    aE1=TopoDS::Edge(anExp.Current());
    if (!BRep_Tool::Degenerated(aE1)) {
      if (!BRep_Tool::IsClosed(aE1, theF1)) {
	break;
      }
    }
  }
  //
  anExp.Init(theF2, TopAbs_EDGE);
  for (; anExp.More(); anExp.Next()) {
    aE2=TopoDS::Edge(anExp.Current());
    if (!BRep_Tool::Degenerated(aE2)) {
      if (!BRep_Tool::IsClosed(aE2, theF2)) {
	if (aE2.IsSame(aE1)) {
	  iSense=1;
	  break;
	}
      }
    }
  }
  //
  if (!iSense) {
    return iSense;
  }
  //
  BOPTools_Tools3D::GetNormalToFaceOnEdge(aE1, theF1, aDNF1);
  BOPTools_Tools3D::GetNormalToFaceOnEdge(aE2, theF2, aDNF2);
  //
  iSense=BOPTools_Tools3D::SenseFlag(aDNF1, aDNF2);
  //
  return iSense;
}
//=======================================================================
// function: CopyFace
// purpose: 
//=======================================================================
  void GEOMAlgo_Tools3D::CopyFace (const TopoDS_Face& theF1,
				  TopoDS_Face& theF2)
{
  Standard_Real aTol;
  TopLoc_Location aLoc;
  TopAbs_Orientation aOr;
  TopoDS_Iterator aIt;
  BRep_Builder aBB;
  //
  Handle(Geom_Surface) aSurface=BRep_Tool::Surface(theF1, aLoc);
  aTol=BRep_Tool::Tolerance(theF1);
  aOr=theF1.Orientation();
  //
  aBB.MakeFace (theF2, aSurface, aLoc, aTol);
  theF2.Orientation(aOr);
  //
  aIt.Initialize(theF1);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aW=aIt.Value();
    aBB.Add(theF2, aW);
  }
}
//=======================================================================
// function: MakeContainer
// purpose: 
//=======================================================================
  void GEOMAlgo_Tools3D::MakeContainer(const TopAbs_ShapeEnum theType,
				      TopoDS_Shape& theC)
{
  BRep_Builder aBB;
  //
  switch(theType) {
    case TopAbs_COMPOUND:{
      TopoDS_Compound aC;
      aBB.MakeCompound(aC);
      theC=aC;
    }
      break;
      //
    case TopAbs_COMPSOLID:{
      TopoDS_CompSolid aCS;
      aBB.MakeCompSolid(aCS);
      theC=aCS;
    }
      break;
      //
    case TopAbs_SOLID:{
      TopoDS_Solid aSolid;
      aBB.MakeSolid(aSolid);
      theC=aSolid;
    }  
      break;
      //
      //
    case TopAbs_SHELL:{
      TopoDS_Shell aShell;
      aBB.MakeShell(aShell);
      theC=aShell;
    }  
      break;
      //
    case TopAbs_WIRE: {
      TopoDS_Wire aWire;
      aBB.MakeWire(aWire);
      theC=aWire;
    }
      break;
      //
    default:
      break;
  }
}
//=======================================================================
// function: MakeConnexityBlock.
// purpose: 
//=======================================================================
  void GEOMAlgo_Tools3D::MakeConnexityBlock (const TopTools_ListOfShape& theLFIn,
					     const TopTools_IndexedMapOfShape& theMEAvoid,
					     TopTools_ListOfShape& theLCB)
{
  Standard_Integer  aNbF, aNbAdd1;
  TopExp_Explorer aExp;
  TopTools_IndexedDataMapOfShapeListOfShape aMEF;
  TopTools_MapIteratorOfMapOfShape aItM, aItM1;
  TopTools_MapOfShape aMCB, aMAdd, aMAdd1;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  // 1. aMEF
  aNbF=theLFIn.Extent();
  aIt.Initialize(theLFIn);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aF=aIt.Value();      
    TopExp::MapShapesAndAncestors(aF, TopAbs_EDGE, TopAbs_FACE, aMEF);
  }
  //
  // 2. aMCB
  const TopoDS_Shape& aF1=theLFIn.First();
  aMAdd.Add(aF1);
  //
  while(1) {
    aMAdd1.Clear();
    aItM.Initialize(aMAdd);
    for (; aItM.More(); aItM.Next()) {
      const TopoDS_Shape& aF=aItM.Key();
      //
      //aMAdd1.Clear();
      aExp.Init(aF, TopAbs_EDGE);
      for (; aExp.More(); aExp.Next()) {
	const TopoDS_Shape& aE=aExp.Current();
	if (theMEAvoid.Contains(aE)){
	  continue;
	}
	//
	const TopTools_ListOfShape& aLF=aMEF.FindFromKey(aE);
	aIt.Initialize(aLF);
	for (; aIt.More(); aIt.Next()) {
	  const TopoDS_Shape& aFx=aIt.Value();
	  if (aFx.IsSame(aF)) {
	    continue;
	  }
	  if (aMCB.Contains(aFx)) {
	    continue;
	  }
	  aMAdd1.Add(aFx);
	}
      }//for (; aExp.More(); aExp.Next()){
      aMCB.Add(aF);
    }// for (; aItM.More(); aItM.Next()) {
    //
    aNbAdd1=aMAdd1.Extent();
    if (!aNbAdd1) {
      break;
    }
    //
    aMAdd.Clear();
    aItM1.Initialize(aMAdd1);
    for (; aItM1.More(); aItM1.Next()) {
      const TopoDS_Shape& aFAdd=aItM1.Key();
      aMAdd.Add(aFAdd);
    }
    //
  }//while(1) {
  
  //
  aNbF=aMCB.Extent();
  aItM.Initialize(aMCB);
  for (; aItM.More(); aItM.Next()) {
    const TopoDS_Shape& aF=aItM.Key();
    theLCB.Append(aF);
  }
}

//=======================================================================
//function : FindFacePairs
//purpose  : 
//=======================================================================
Standard_Boolean FindFacePairs (const TopoDS_Edge& theE,
				const TopTools_ListOfShape& thLF,
				NMTTools_ListOfCoupleOfShape& theLCFF)
{
  Standard_Boolean bFound;
  Standard_Integer i, aNbCEF;
  TopAbs_Orientation aOr, aOrC;
  TopTools_MapOfShape aMFP;
  TopoDS_Face aF1, aF2;
  TopoDS_Edge aEL, aE1;
  TopTools_ListIteratorOfListOfShape aItLF;
  NMTTools_CoupleOfShape aCEF, aCFF;
  NMTTools_ListOfCoupleOfShape aLCEF, aLCEFx;
  NMTTools_ListIteratorOfListOfCoupleOfShape aIt;
  //
  bFound=Standard_True;
  //
  // Preface aLCEF
  aItLF.Initialize(thLF);
  for (; aItLF.More(); aItLF.Next()) { 
    const TopoDS_Face& aFL=TopoDS::Face(aItLF.Value());
    //
    bFound=GEOMAlgo_Tools3D::GetEdgeOnFace(theE, aFL, aEL);
    if (!bFound) {
      return bFound; // it can not be so
    }
    //
    aCEF.SetShape1(aEL);
    aCEF.SetShape2(aFL);
    aLCEF.Append(aCEF);
  }
  //
  aNbCEF=aLCEF.Extent();
  while(aNbCEF) {
    //
    // aLCEFx
    aLCEFx.Clear();
    aIt.Initialize(aLCEF);
    for (i=0; aIt.More(); aIt.Next(), ++i) {
      const NMTTools_CoupleOfShape& aCSx=aIt.Value();
      const TopoDS_Shape& aEx=aCSx.Shape1();
      const TopoDS_Shape& aFx=aCSx.Shape2();
      //
      aOr=aEx.Orientation();
      //
      if (!i) {
	aOrC=TopAbs::Reverse(aOr);
	aE1=TopoDS::Edge(aEx);
	aF1=TopoDS::Face(aFx);
	aMFP.Add(aFx);
	continue;
      }
      //
      if (aOr==aOrC) {
	aLCEFx.Append(aCSx);
	aMFP.Add(aFx);
      }
    }
    //
    // F2
    GEOMAlgo_Tools3D::GetFaceOff(aE1, aF1, aLCEFx, aF2);
    //
    aCFF.SetShape1(aF1);
    aCFF.SetShape2(aF2);
    theLCFF.Append(aCFF);
    //
    aMFP.Add(aF1);
    aMFP.Add(aF2);
    //
    // refine aLCEF
    aLCEFx.Clear();
    aLCEFx=aLCEF;
    aLCEF.Clear();
    aIt.Initialize(aLCEFx);
    for (; aIt.More(); aIt.Next()) {
      const NMTTools_CoupleOfShape& aCSx=aIt.Value();
      const TopoDS_Shape& aFx=aCSx.Shape2();
      if (!aMFP.Contains(aFx)) {
	aLCEF.Append(aCSx);
      }
    }
    //
    aNbCEF=aLCEF.Extent();
  }//while(aNbCEF) {
  //
  return bFound;
}
//
//=======================================================================
//function : AngleWithRef
//purpose  : 
//=======================================================================
Standard_Real AngleWithRef(const gp_Dir& theD1,
			   const gp_Dir& theD2,
			   const gp_Dir& theDRef)
{
  Standard_Real aCosinus, aSinus, aBeta, aHalfPI, aScPr;
  gp_XYZ aXYZ;
  //
  aHalfPI=0.5*PI;
  //
  const gp_XYZ& aXYZ1=theD1.XYZ();
  const gp_XYZ& aXYZ2=theD2.XYZ();
  aXYZ=aXYZ1.Crossed(aXYZ2);
  aSinus=aXYZ.Modulus();
  aCosinus=theD1*theD2;
  //
  aBeta=0.;
  if (aSinus>=0.) {
    aBeta=aHalfPI*(1.-aCosinus);
  }
  else {
    aBeta=2.*PI-aHalfPI*(3.+aCosinus);
  }
  //
  aScPr=aXYZ.Dot(theDRef.XYZ());
  if (aScPr<0.) {
    aBeta=-aBeta;
  }
  return aBeta;
}
//
/*
static
  void Path(const TopoDS_Shape& ,
	  const TopoDS_Shape& ,
	  const TopTools_IndexedDataMapOfShapeListOfShape& ,
	  const TopTools_IndexedMapOfShape& ,
	  TopTools_IndexedMapOfShape& );

//=======================================================================
// function: MakeConnexityBlock.
// purpose: 
//=======================================================================
  void GEOMAlgo_Tools3D::MakeConnexityBlock (const TopTools_ListOfShape& theLFIn,
					    const TopTools_IndexedMapOfShape& theMEAvoid,
					    TopTools_ListOfShape& theLCB)
{
  Standard_Integer  j, aNbF;
  TopTools_IndexedDataMapOfShapeListOfShape aEFMap;
  TopTools_IndexedMapOfShape aMFP, aCBMap;
  TopTools_ListIteratorOfListOfShape aIt;
  TopExp_Explorer aExp;
  TopAbs_ShapeEnum aType;
  //
  aIt.Initialize(theLFIn);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aF=aIt.Value();      
    aType=aF.ShapeType();
    TopExp::MapShapesAndAncestors(aF, TopAbs_EDGE, TopAbs_FACE, aEFMap);
  }
  //
  aCBMap.Clear();
  const TopoDS_Shape& aF=theLFIn.First();
  //
  aCBMap.Add(aF);
  //
  aExp.Init(aF, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()){
    const TopoDS_Shape& aE=aExp.Current();
    if (theMEAvoid.Contains(aE)){
      continue;
    }
    //
    const TopTools_ListOfShape& aLF=aEFMap.FindFromKey(aE);
    aIt.Initialize(aLF);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aF1=aIt.Value();
      if (!aF1.IsSame(aF)) {
	Path (aE, aF1, aEFMap, theMEAvoid,  aCBMap);
      }
    }
  }
  //
  aNbF=aCBMap.Extent();
  for (j=1; j<=aNbF; ++j) {
    const TopoDS_Shape& aFx=aCBMap(j);
    theLCB.Append(aFx);
  }
}
//=======================================================================
// function: Path
// purpose: 
//=======================================================================
void Path(const TopoDS_Shape& theE1,
	  const TopoDS_Shape& theF1,
	  const TopTools_IndexedDataMapOfShapeListOfShape& theEFMap,
	  const TopTools_IndexedMapOfShape& theMEAvoid,
	  TopTools_IndexedMapOfShape& theCBMap)
{
  TopTools_ListIteratorOfListOfShape aIt;
  TopExp_Explorer aExp;
  //
  if (theCBMap.Contains(theF1)){
    return;
  }
  theCBMap.Add(theF1);
  //
  aExp.Init(theF1, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()){
    const TopoDS_Shape& aE=aExp.Current();
    if (!aE.IsSame(theE1)){
      if (theMEAvoid.Contains(aE)) {
	continue;
      }
      //
      const TopTools_ListOfShape& aLF=theEFMap.FindFromKey(aE);
      aIt.Initialize(aLF);
      for (; aIt.More(); aIt.Next()) {
	const TopoDS_Shape& aF=aIt.Value();
	  Path (aE, aF, theEFMap, theMEAvoid, theCBMap);
      }
    }
  }
}
*/
