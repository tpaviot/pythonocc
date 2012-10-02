// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//

// File:        GEOMAlgo_BuilderFace.cxx
// Created:
// Author:      Peter KURNEV
//
#include <GEOMAlgo_BuilderFace.hxx>

#include <gp_Pnt2d.hxx>
#include <gp_Pln.hxx>
#include <gp_Vec.hxx>
#include <gp_Dir.hxx>
#include <gp_Pnt.hxx>

#include <Geom_Surface.hxx>

#include <TopAbs.hxx>
#include <TopLoc_Location.hxx>

#include <TopoDS_Iterator.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>

#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>
#include <BRepTools.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>

#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
#include <TopTools_MapOfOrientedShape.hxx>
#include <TopTools_MapIteratorOfMapOfOrientedShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>

#include <IntTools_FClass2d.hxx>
#include <IntTools_Context.hxx>

#include <BOPTools_Tools2D.hxx>
#include <BOP_WireEdgeSet.hxx>
#include <BOP_WESCorrector.hxx>

#include <NMTTools_ListOfCoupleOfShape.hxx>
#include <NMTTools_CoupleOfShape.hxx>
#include <NMTTools_ListIteratorOfListOfCoupleOfShape.hxx>

#include <GEOMAlgo_Tools3D.hxx>
#include <GEOMAlgo_BuilderTools.hxx>
#include <GEOMAlgo_WireEdgeSet.hxx>
#include <GEOMAlgo_WESCorrector.hxx>

//
static
  Standard_Boolean IsGrowthWire(const TopoDS_Shape& ,

                                const TopTools_IndexedMapOfShape& );

static
  Standard_Boolean IsInside(const TopoDS_Shape& ,
                            const TopoDS_Shape& ,
                            const Handle(IntTools_Context)& );
static
  void MakeInternalWires(const TopTools_MapOfShape& ,
                         TopTools_ListOfShape& );

//=======================================================================
//function :
//purpose  :
//=======================================================================
  GEOMAlgo_BuilderFace::GEOMAlgo_BuilderFace()
:
  GEOMAlgo_BuilderArea()
{
}
//=======================================================================
//function : ~
//purpose  :
//=======================================================================
  GEOMAlgo_BuilderFace::~GEOMAlgo_BuilderFace()
{
}
//=======================================================================
//function : SetFace
//purpose  :
//=======================================================================
  void GEOMAlgo_BuilderFace::SetFace(const TopoDS_Face& theFace)
{
  myFace=theFace;
}
//=======================================================================
//function : Face
//purpose  :
//=======================================================================
  const TopoDS_Face& GEOMAlgo_BuilderFace::Face()const
{
  return myFace;
}
//=======================================================================
//function : Perform
//purpose  :
//=======================================================================
  void GEOMAlgo_BuilderFace::Perform()
{
  myErrorStatus=0;
  //
  if (myFace.IsNull()) {
    myErrorStatus=12;// Null face generix
    return;
  }
  // Initialize the context
  GEOMAlgo_BuilderArea::Perform();
  //
  PerformShapesToAvoid();
  if (myErrorStatus) {
    return;
  }
  //
  PerformLoops();
  if (myErrorStatus) {
    return;
  }
  //
  PerformAreas();
  if (myErrorStatus) {
    return;
  }
  //
  PerformInternalShapes();
  if (myErrorStatus) {
    return;
  }
}
//=======================================================================
//function :PerformShapesToAvoid
//purpose  :
//=======================================================================
  void GEOMAlgo_BuilderFace::PerformShapesToAvoid()
{
  Standard_Boolean bFound;
  Standard_Integer i, iCnt, aNbV, aNbE;
  TopTools_IndexedDataMapOfShapeListOfShape aMVE;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  myShapesToAvoid.Clear();
  //
  iCnt=0;
  while (1) {
    ++iCnt;
    bFound=Standard_False;
    //
    // 1. MEF
    aMVE.Clear();
    aIt.Initialize (myShapes);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aE=aIt.Value();
      if (!myShapesToAvoid.Contains(aE)) {
        TopExp::MapShapesAndAncestors(aE, TopAbs_VERTEX, TopAbs_EDGE, aMVE);
      }
//       else {
//         int a=0;
//       }
    }
    aNbV=aMVE.Extent();
    //
    // 2. myEdgesToAvoid
    for (i=1; i<=aNbV; ++i) {
      const TopoDS_Vertex& aV=TopoDS::Vertex(aMVE.FindKey(i));
      //
      TopTools_ListOfShape& aLE=aMVE.ChangeFromKey(aV);
      aNbE=aLE.Extent();
      if (!aNbE) {
        continue;
      }
      //
      const TopoDS_Edge& aE1=TopoDS::Edge(aLE.First());
      if (aNbE==1) {
        if (BRep_Tool::Degenerated(aE1)) {
          continue;
        }
        if (aV.Orientation()==TopAbs_INTERNAL) {
          continue;
        }
        bFound=Standard_True;
        myShapesToAvoid.Add(aE1);
      }
      else if (aNbE==2) {
        const TopoDS_Edge& aE2=TopoDS::Edge(aLE.Last());
        if (aE2.IsSame(aE1)) {
          TopoDS_Vertex aV1x, aV2x;
          //
          TopExp::Vertices(aE1, aV1x, aV2x);
          if (aV1x.IsSame(aV2x)) {
            continue;
          }
          bFound=Standard_True;
          myShapesToAvoid.Add(aE1);
          myShapesToAvoid.Add(aE2);
        }
      }
    }// for (i=1; i<=aNbE; ++i) {
    //
    if (!bFound) {
      break;
    }
    //
  }//while (1)
  //printf(" EdgesToAvoid=%d, iCnt=%d\n", EdgesToAvoid.Extent(), iCnt);
}
//=======================================================================
//function : PerformLoops
//purpose  :
//=======================================================================
  void GEOMAlgo_BuilderFace::PerformLoops()
{
  myErrorStatus=0;
  //
  Standard_Boolean bFlag;
  Standard_Integer aNbEA;
  TopTools_ListIteratorOfListOfShape aIt;
  TopTools_MapIteratorOfMapOfOrientedShape aItM;
  TopTools_IndexedDataMapOfShapeListOfShape aVEMap;
  TopTools_MapOfOrientedShape aMAdded;
  TopoDS_Iterator aItW;
  BRep_Builder aBB;
  GEOMAlgo_WireEdgeSet aWES;
  GEOMAlgo_WESCorrector aWESCor;
  //
  // 1. Usual Wires
  myLoops.Clear();
  aWES.SetFace(myFace);
  //
  aIt.Initialize (myShapes);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aE=aIt.Value();
    if (!myShapesToAvoid.Contains(aE)) {
      aWES.AddStartElement(aE);
    }
  }
  //
  aWESCor.SetWES(aWES);
  aWESCor.Perform();
  //
  GEOMAlgo_WireEdgeSet& aWESN=aWESCor.NewWES();
  const TopTools_ListOfShape& aLW=aWESN.Shapes();
  //
  aIt.Initialize (aLW);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aW=aIt.Value();
    myLoops.Append(aW);
  }
  //modified by NIZNHY-PKV Tue Aug  5 15:09:29 2008f
  // Post Treatment
  TopTools_MapOfOrientedShape aMEP;
  //
  // a. collect all edges that are in loops
  aIt.Initialize (myLoops);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aW=aIt.Value();
    aItW.Initialize(aW);
    for (; aItW.More(); aItW.Next()) {
      const TopoDS_Shape& aE=aItW.Value();
      aMEP.Add(aE);
    }
  }
  //
  // b. collect all edges that are to avoid
  aItM.Initialize(myShapesToAvoid);
  for (; aItM.More(); aItM.Next()) {
    const TopoDS_Shape& aE=aItM.Key();
    aMEP.Add(aE);
  }
  //
  // c. add all edges that are not processed to myShapesToAvoid
  aIt.Initialize (myShapes);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aE=aIt.Value();
    if (!aMEP.Contains(aE)) {
      myShapesToAvoid.Add(aE);
    }
  }
  //modified by NIZNHY-PKV Tue Aug  5 15:09:35 2008t
  //
  // 2. Internal Wires
  myLoopsInternal.Clear();
  //
  aNbEA=myShapesToAvoid.Extent();
  aItM.Initialize(myShapesToAvoid);
  for (; aItM.More(); aItM.Next()) {
    const TopoDS_Shape& aEE=aItM.Key();
    TopExp::MapShapesAndAncestors(aEE, TopAbs_VERTEX, TopAbs_EDGE, aVEMap);
  }
  //
  bFlag=Standard_True;
  aItM.Initialize(myShapesToAvoid);
  for (; aItM.More()&&bFlag; aItM.Next()) {
    const TopoDS_Shape& aEE=aItM.Key();
    if (!aMAdded.Add(aEE)) {
      continue;
    }
    //
    // make new wire
    TopoDS_Wire aW;
    aBB.MakeWire(aW);
    aBB.Add(aW, aEE);
    //
    aItW.Initialize(aW);
    for (; aItW.More()&&bFlag; aItW.Next()) {
      const TopoDS_Edge& aE=TopoDS::Edge(aItW.Value());
      //
      TopoDS_Iterator aItE(aE);
      for (; aItE.More()&&bFlag; aItE.Next()) {
        const TopoDS_Vertex& aV = TopoDS::Vertex(aItE.Value());
        const TopTools_ListOfShape& aLE=aVEMap.FindFromKey(aV);
        aIt.Initialize(aLE);
        for (; aIt.More()&&bFlag; aIt.Next()) {
          const TopoDS_Shape& aEx=aIt.Value();
          if (aMAdded.Add(aEx)) {
            aBB.Add(aW, aEx);
            if(aMAdded.Extent()==aNbEA) {
              bFlag=!bFlag;
            }
          }
        }//for (; aIt.More(); aIt.Next()) {
      }//for (; aItE.More(); aItE.Next()) {
    }//for (; aItW.More(); aItW.Next()) {
    myLoopsInternal.Append(aW);
  }//for (; aItM.More(); aItM.Next()) {
}
//=======================================================================
//function : PerformAreas
//purpose  :
//=======================================================================
  void GEOMAlgo_BuilderFace::PerformAreas()
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsGrowth, bIsHole;
  Standard_Real aTol;
  TopTools_ListOfShape aNewFaces, aHoleWires;
  TopoDS_Shape anInfinitePointShape;
  TopTools_DataMapOfShapeShape aInOutMap;
  TopTools_DataMapOfShapeListOfShape aMSH;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItMSH;
  TopTools_ListIteratorOfListOfShape aIt1, aIt2;
  TopTools_IndexedMapOfShape aMHE;
  BRep_Builder aBB;
  Handle(Geom_Surface) aS;
  TopLoc_Location aLoc;
  //
  aTol=BRep_Tool::Tolerance(myFace);
  aS=BRep_Tool::Surface(myFace, aLoc);
  //
  myAreas.Clear();
  //
  //  Draft faces [aNewFaces]
  aIt1.Initialize(myLoops);
  for ( ; aIt1.More(); aIt1.Next()) {
    const TopoDS_Shape& aWire=aIt1.Value();
    //
    bIsGrowth=IsGrowthWire(aWire, aMHE);
    if (bIsGrowth) {
      // make a growth face from a wire
      TopoDS_Face aFace;
      aBB.MakeFace(aFace, aS, aLoc, aTol);
      aBB.Add (aFace, aWire);
      //
      aNewFaces.Append (aFace);
    }
    else{
      // check if a wire is a hole
      //XX
      //bIsHole=IsHole(aWire, myFace, myContext);
      bIsHole=GEOMAlgo_BuilderTools::IsHole(aWire, myFace);
      //XX
      if (bIsHole) {
        aHoleWires.Append(aWire);
        TopExp::MapShapes(aWire, TopAbs_EDGE, aMHE);
      }
      else {
        // make a growth face from a wire
        TopoDS_Face aFace;
        aBB.MakeFace(aFace, aS, aLoc, aTol);
        aBB.Add (aFace, aWire);
        //
        aNewFaces.Append (aFace);
      }
    }
  }
  //
  // 2. Find outer growth shell that is most close to each hole shell
  aIt2.Initialize(aHoleWires);
  for (; aIt2.More(); aIt2.Next()) {
    const TopoDS_Shape& aHole = aIt2.Value();
    //
    aIt1.Initialize(aNewFaces);
    for ( ; aIt1.More(); aIt1.Next()) {
      const TopoDS_Shape& aF=aIt1.Value();
      //
      if (!IsInside(aHole, aF, myContext)){
        continue;
      }
      //
      if ( aInOutMap.IsBound (aHole)){
        const TopoDS_Shape& aF2=aInOutMap(aHole);
        if (IsInside(aF, aF2, myContext)) {
          aInOutMap.UnBind(aHole);
          aInOutMap.Bind (aHole, aF);
        }
      }
      else{
        aInOutMap.Bind (aHole, aF);
      }
    }
    //
    // Add aHole to a map Face/ListOfHoles [aMSH]
    if (aInOutMap.IsBound(aHole)){
      const TopoDS_Shape& aF=aInOutMap(aHole);
      if (aMSH.IsBound(aF)) {
        TopTools_ListOfShape& aLH=aMSH.ChangeFind(aF);
        aLH.Append(aHole);
      }
      else {
        TopTools_ListOfShape aLH;
        aLH.Append(aHole);
        aMSH.Bind(aF, aLH);
      }
    }
  }// for (; aIt2.More(); aIt2.Next())
  //
  // 3. Add aHoles to Faces
  aItMSH.Initialize(aMSH);
  for (; aItMSH.More(); aItMSH.Next()) {
    TopoDS_Face aF=TopoDS::Face(aItMSH.Key());
    //
    const TopTools_ListOfShape& aLH=aItMSH.Value();
    aIt2.Initialize(aLH);
    for (; aIt2.More(); aIt2.Next()) {
      const TopoDS_Shape& aHole = aIt2.Value();
      aBB.Add (aF, aHole);
    }
    //
    // update classifier
    aTol=BRep_Tool::Tolerance(aF);
    IntTools_FClass2d& aClsf=myContext->FClass2d(aF);
    aClsf.Init(aF, aTol);
  }
  //
  // These aNewFaces are draft faces that
  // do not contain any internal shapes
  //
  myAreas.Append(aNewFaces);
}
//=======================================================================
//function : PerformInternalShapes
//purpose  :
//=======================================================================
  void GEOMAlgo_BuilderFace::PerformInternalShapes()
{
  myErrorStatus=0;
  //
  Standard_Integer aNbWI=myLoopsInternal.Extent();
  if (!aNbWI) {// nothing to do
    return;
  }
  //
  //Standard_Real aTol;
  BRep_Builder aBB;
  TopTools_ListIteratorOfListOfShape aIt1, aIt2;
  TopoDS_Iterator aIt;
  TopTools_MapOfShape aME, aMEP;
  TopTools_MapIteratorOfMapOfShape aItME;
  TopTools_IndexedDataMapOfShapeListOfShape aMVE;
  TopTools_ListOfShape aLSI;
  //
  // 1. All internal edges
  aIt1.Initialize(myLoopsInternal);
  for (; aIt1.More(); aIt1.Next()) {
    const TopoDS_Shape& aWire=aIt1.Value();
    aIt.Initialize(aWire);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aE=aIt.Value();
      aME.Add(aE);
    }
  }
  aNbWI=aME.Extent();
  //
  // 2 Process faces
  aIt2.Initialize(myAreas);
  for ( ; aIt2.More(); aIt2.Next()) {
    TopoDS_Face& aF=TopoDS::Face(aIt2.Value());
    //
    aMVE.Clear();
    TopExp::MapShapesAndAncestors(aF, TopAbs_VERTEX, TopAbs_EDGE, aMVE);
    //
    // 2.1 Separate faces to process aMEP
    aMEP.Clear();
    aItME.Initialize(aME);
    for (; aItME.More(); aItME.Next()) {
      const TopoDS_Edge& aE=TopoDS::Edge(aItME.Key());
      if (IsInside(aE, aF, myContext)) {
        aMEP.Add(aE);
      }
    }
    //
    // 2.2 Make Internal Wires
    aLSI.Clear();
    MakeInternalWires(aMEP, aLSI);
    //
    // 2.3 Add them to aF
    aIt1.Initialize(aLSI);
    for (; aIt1.More(); aIt1.Next()) {
      const TopoDS_Shape& aSI=aIt1.Value();
      aBB.Add (aF, aSI);
    }
    //
    // 2.4 Remove faces aMFP from aMF
    aItME.Initialize(aMEP);
    for (; aItME.More(); aItME.Next()) {
      const TopoDS_Shape& aE=aItME.Key();
      aME.Remove(aE);
    }
    //
    aNbWI=aME.Extent();
    if (!aNbWI) {
      break;
    }
  } //for ( ; aIt2.More(); aIt2.Next()) {
}
//=======================================================================
//function : MakeInternalWires
//purpose  :
//=======================================================================
void MakeInternalWires(const TopTools_MapOfShape& theME,
                       TopTools_ListOfShape& theWires)
{
  TopTools_MapIteratorOfMapOfShape aItM;
  TopTools_MapOfShape aAddedMap;
  TopTools_ListIteratorOfListOfShape aItE;
  TopTools_IndexedDataMapOfShapeListOfShape aMVE;
  BRep_Builder aBB;
  //
  aItM.Initialize(theME);
  for (; aItM.More(); aItM.Next()) {
    const TopoDS_Shape& aE=aItM.Key();
    TopExp::MapShapesAndAncestors(aE, TopAbs_VERTEX, TopAbs_EDGE, aMVE);
  }
  //
  aItM.Initialize(theME);
  for (; aItM.More(); aItM.Next()) {
    TopoDS_Shape aEE=aItM.Key();
    if (!aAddedMap.Add(aEE)) {
      continue;
    }
    //
    // make a new shell
    TopoDS_Wire aW;
    aBB.MakeWire(aW);
    aEE.Orientation(TopAbs_INTERNAL);
    aBB.Add(aW, aEE);
    //
    TopoDS_Iterator aItAdded (aW);
    for (; aItAdded.More(); aItAdded.Next()) {
      const TopoDS_Shape& aE =aItAdded.Value();
      //
      TopExp_Explorer aExp(aE, TopAbs_VERTEX);
      for (; aExp.More(); aExp.Next()) {
        const TopoDS_Shape& aV =aExp.Current();
        const TopTools_ListOfShape& aLE=aMVE.FindFromKey(aV);
        aItE.Initialize(aLE);
        for (; aItE.More(); aItE.Next()) {
          TopoDS_Shape aEL=aItE.Value();
          if (aAddedMap.Add(aEL)){
            aEL.Orientation(TopAbs_INTERNAL);
            aBB.Add(aW, aEL);
          }
        }
      }
    }
    theWires.Append(aW);
  }
}
//=======================================================================
//function : IsInside
//purpose  :
//=======================================================================
Standard_Boolean IsInside(const TopoDS_Shape& theHole,
                          const TopoDS_Shape& theF2,
                          const Handle(IntTools_Context)& theContext)
{
  Standard_Boolean bRet;
  Standard_Real aT, aU, aV;

  TopAbs_State aState;
  TopExp_Explorer aExp;
  TopTools_IndexedMapOfShape aME2;
  gp_Pnt2d aP2D;
  //
  bRet=Standard_False;
  aState=TopAbs_UNKNOWN;
  const TopoDS_Face& aF2=TopoDS::Face(theF2);
  //
  TopExp::MapShapes(aF2, TopAbs_EDGE, aME2);
  //
  aExp.Init(theHole, TopAbs_EDGE);
  if (aExp.More()) {
    const TopoDS_Edge& aE = TopoDS::Edge(aExp.Current());
    if (aME2.Contains(aE)) {
      return bRet;
    }
    //
    aT=BOPTools_Tools2D::IntermediatePoint(aE);
    BOPTools_Tools2D::PointOnSurface(aE, aF2, aT, aU, aV);
    aP2D.SetCoord(aU, aV);
    //
    IntTools_FClass2d& aClsf=theContext->FClass2d(aF2);
    aState=aClsf.Perform(aP2D);
    bRet=(aState==TopAbs_IN);
  }
  //
  return bRet;
}

//=======================================================================
//function : IsGrowthWire
//purpose  :
//=======================================================================
Standard_Boolean IsGrowthWire(const TopoDS_Shape& theWire,
                              const TopTools_IndexedMapOfShape& theMHE)
{
  Standard_Boolean bRet;
  TopoDS_Iterator aIt;
  //
  bRet=Standard_False;
  if (theMHE.Extent()) {
    aIt.Initialize(theWire);
    for(; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aE=aIt.Value();
      if (theMHE.Contains(aE)) {
        return !bRet;
      }
    }
  }
  return bRet;
}

//BRepTools::Write(aFF, "ff");
//
//  ErrorStatus :
// 11 - Null Context
// 12 - Null face generix

/*
//=======================================================================
//function : IsInside
//purpose  :
//=======================================================================
Standard_Boolean IsInside(const TopoDS_Shape& theHole,
                          const TopoDS_Shape& theF2,
                          IntTools_PContext& theContext)
{
  Standard_Real aT, aU, aV;
  TopExp_Explorer aExp;
  TopAbs_State aState=TopAbs_UNKNOWN;
  gp_Pnt2d aP2D;
  //
  const TopoDS_Face& aF2=TopoDS::Face(theF2);
  //
  aExp.Init(theHole, TopAbs_EDGE);
  if (aExp.More()){
    const TopoDS_Edge& aE = TopoDS::Edge(aExp.Current());
    aT=BOPTools_Tools2D::IntermediatePoint(aE);
    BOPTools_Tools2D::PointOnSurface(aE, aF2, aT, aU, aV);
    aP2D.SetCoord(aU, aV);
    //
    IntTools_FClass2d& aClsf=theContext->FClass2d(aF2);
    aState=aClsf.Perform(aP2D);
  }
  return (aState==TopAbs_IN);
}
*/
