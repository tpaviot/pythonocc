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
// File:	NMTTools_PaveFiller_7.cxx
// Created:	Thu Dec 18 15:14:55 2003
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTTools_PaveFiller.ixx>

#include <Bnd_HArray1OfBox.hxx>
#include <Bnd_BoundSortBox.hxx>
#include <Bnd_Box.hxx>
#include <BRepBndLib.hxx>

#include <TColStd_MapOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TopTools_DataMapOfShapeListOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <TColStd_IndexedMapOfInteger.hxx>

#include <TopAbs_Orientation.hxx>

#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Compound.hxx>

#include <TopTools_DataMapIteratorOfDataMapOfIntegerShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include <TopTools_DataMapOfShapeInteger.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>
#include <TopTools_DataMapOfShapeListOfInteger.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include <TopTools_DataMapOfIntegerShape.hxx>

#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>

#include <TopExp_Explorer.hxx>
#include <TopExp.hxx>
//
#include <IntTools_SequenceOfPntOn2Faces.hxx>
#include <IntTools_PntOnFace.hxx>
#include <IntTools_PntOn2Faces.hxx>

#include <BooleanOperations_AncestorsSeqAndSuccessorsSeq.hxx>

#include <BOPTools_SSInterference.hxx>
#include <BOPTools_CArray1OfSSInterference.hxx>
#include <BOPTools_CArray1OfVVInterference.hxx>
#include <BOPTools_VVInterference.hxx>
#include <BOPTools_Tools.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_Pave.hxx>
#include <BOPTools_Tools.hxx>

#include <NMTDS_Iterator.hxx>
#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTDS_InterfPool.hxx>

#include <NMTTools_ListIteratorOfListOfCommonBlock.hxx>
// Modified  Thu Sep 14 14:35:18 2006 
// Contribution of Samtech www.samcef.com BEGIN
// static 
//   void FuseVertices(const TopoDS_Shape& aCompound,
//                     TopTools_DataMapOfShapeShape& aDMVV);
// Contribution of Samtech www.samcef.com END

//=======================================================================
// function: MakeSplitEdges
// purpose: 
//=======================================================================
  void NMTTools_PaveFiller::MakeSplitEdges()
{
  myIsDone=Standard_False;
  //
  Standard_Boolean bIsNewVertex1, bIsNewVertex2;
  Standard_Integer i, aNbS, nV1, nV2, aNbPaveBlocks, aNewShapeIndex;
  Standard_Real    t1, t2;
  TopAbs_Orientation anOri;
  TopoDS_Edge aE, aESplit;
  TopoDS_Vertex aV1, aV2;
  //
  aNbS=myDS->NumberOfShapesOfTheObject();
  for (i=1; i<=aNbS; ++i) {
    if (myDS->GetShapeType(i) != TopAbs_EDGE)
      continue;
    //
    // Original Edge
    aE=TopoDS::Edge(myDS->Shape(i));
    if (BRep_Tool::Degenerated(aE)){
      continue;
    }
    //
    anOri=aE.Orientation(); 
    aE.Orientation(TopAbs_FORWARD);
    //
    // Making Split Edges
    //
    // Split Set for the Original Edge i
    BOPTools_ListOfPaveBlock& aSplitEdges=mySplitShapesPool(myDS->RefEdge(i));
    BOPTools_ListIteratorOfListOfPaveBlock aPBIt(aSplitEdges);
    //
    aNbPaveBlocks=aSplitEdges.Extent();
  
    for (; aPBIt.More(); aPBIt.Next()) {
      BOPTools_PaveBlock& aPB=aPBIt.Value();
      // aPave1
      const BOPTools_Pave& aPave1=aPB.Pave1();
      nV1=aPave1.Index();
      t1=aPave1.Param();
      aV1=TopoDS::Vertex(myDS->GetShape(nV1));
      aV1.Orientation(TopAbs_FORWARD);
      // aPave2
      const BOPTools_Pave& aPave2=aPB.Pave2();
      nV2=aPave2.Index();
      t2=aPave2.Param();
      aV2=TopoDS::Vertex(myDS->GetShape(nV2));
      aV2.Orientation(TopAbs_REVERSED);
      //xx
      if (aNbPaveBlocks==1) {
	bIsNewVertex1=myDS->IsNewShape (nV1);
	bIsNewVertex2=myDS->IsNewShape (nV2);
	if (!bIsNewVertex1 && !bIsNewVertex2) {
	  aPB.SetEdge(i);
	  continue;
	}
      }
      //xx
      BOPTools_Tools::MakeSplitEdge(aE, aV1, t1, aV2, t2, aESplit);  
      //
      // Add Split Part of the Original Edge to the DS
      BooleanOperations_AncestorsSeqAndSuccessorsSeq anASSeq;

      anASSeq.SetNewSuccessor(nV1);
      anASSeq.SetNewOrientation(aV1.Orientation());

      anASSeq.SetNewSuccessor(nV2);
      anASSeq.SetNewOrientation(aV2.Orientation());
      //
      if (anOri==TopAbs_INTERNAL) {
	anASSeq.SetNewAncestor(i);
	aESplit.Orientation(anOri);
      }
      //
      myDS->InsertShapeAndAncestorsSuccessors(aESplit, anASSeq);
      aNewShapeIndex=myDS->NumberOfInsertedShapes();
      myDS->SetState(aNewShapeIndex, BooleanOperations_UNKNOWN);
      //
      // Fill Split Set for the Original Edge
      aPB.SetEdge(aNewShapeIndex);
      //
    }
  } 
  myIsDone=Standard_True;
}
//=======================================================================
// function: UpdateCommonBlocks
// purpose: 
//=======================================================================
  void NMTTools_PaveFiller::UpdateCommonBlocks()
{
  myIsDone=Standard_False;
  //
  Standard_Integer nE, aNbS,  nSp, nEx, nSpx;
  NMTTools_ListIteratorOfListOfCommonBlock aCBIt;
  BOPTools_ListIteratorOfListOfPaveBlock aPBIt;
  //
  aNbS=myDS->NumberOfShapesOfTheObject();
  //
  for (nE=1; nE<=aNbS; ++nE) {
    if (myDS->GetShapeType(nE)!=TopAbs_EDGE){
      continue;
    }
    if (BRep_Tool::Degenerated(TopoDS::Edge(myDS->Shape(nE)))){
      continue;
    }
    //
    NMTTools_ListOfCommonBlock& aLCB=myCommonBlockPool(myDS->RefEdge(nE));
    /*BOPTools_ListOfPaveBlock& aLPB=*/mySplitShapesPool  (myDS->RefEdge(nE));
    //
    aCBIt.Initialize(aLCB);
    for (; aCBIt.More(); aCBIt.Next()) {
      NMTTools_CommonBlock& aCB=aCBIt.Value();
      //
      //modified by NIZNHY-PKV Wed Nov  8 15:59:46 2006f
      // Among all PBs of aCB the first PB will be one
      // that have max tolerance value 
      {
	Standard_Real aTolEx, aTolExMax;
	BOPTools_ListOfPaveBlock *pLPB, aLPBx;
	//
	aTolExMax=-1.;
	pLPB=(BOPTools_ListOfPaveBlock *)&aCB.PaveBlocks();
	aPBIt.Initialize(*pLPB);
	for (; aPBIt.More(); aPBIt.Next()) {
	  const BOPTools_PaveBlock& aPBx=aPBIt.Value();
	  nEx=aPBx.OriginalEdge();
	  const TopoDS_Edge& aEx=TopoDS::Edge(myDS->Shape(nEx));
	  aTolEx=BRep_Tool::Tolerance(aEx);
	  if (aTolEx>aTolExMax) {
	    aTolExMax=aTolEx;
	    aLPBx.Prepend(aPBx);
	  }
	  else{
	    aLPBx.Append(aPBx);
	  }
	}
	//
	pLPB->Clear();
	*pLPB=aLPBx;
      }
      //modified by NIZNHY-PKV Wed Nov  8 15:59:50 2006t
      //
      BOPTools_PaveBlock& aPB=aCB.PaveBlock1(nE);
      nSp=SplitIndex(aPB);
      aPB.SetEdge(nSp);
      //
      const BOPTools_ListOfPaveBlock& aCBLPB=aCB.PaveBlocks();
      aPBIt.Initialize(aCBLPB);
      for (; aPBIt.More(); aPBIt.Next()) {
	BOPTools_PaveBlock& aPBx=aPBIt.Value();
	nEx=aPBx.OriginalEdge();
	if (nEx==nE) {
	  continue;
	}
	//
	nSpx=SplitIndex(aPBx);
	aPBx.SetEdge(nSpx);
      }
      //
    }
  }
}
//=======================================================================
// function: SplitIndex
// purpose: 
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitIndex(const BOPTools_PaveBlock& aPBx)const 
{
  Standard_Integer anOriginalEdge, anEdgeIndex=0;

  anOriginalEdge=aPBx.OriginalEdge();

  const BOPTools_ListOfPaveBlock& aLPB=mySplitShapesPool(myDS->RefEdge(anOriginalEdge));
  //
  BOPTools_ListIteratorOfListOfPaveBlock anIt(aLPB);
  for (; anIt.More(); anIt.Next()) {
    BOPTools_PaveBlock& aPB=anIt.Value();
    if (aPB.IsEqual(aPBx)) {
      anEdgeIndex=aPB.Edge();
      return anEdgeIndex;
    }
  }
  return anEdgeIndex;
} 
//=======================================================================
// function: UpdatePaveBlocks
// purpose: 
//=======================================================================
  void NMTTools_PaveFiller::UpdatePaveBlocks()
{
  myIsDone=Standard_False;
  //
  
  Standard_Integer i, aNbFFs, nF1, nF2, aNbF, nF, iRankF, nE, nV1, nV2, aNbPB;
  Standard_Real aT1, aT2;
  TColStd_IndexedMapOfInteger aMF, aME;
  TopExp_Explorer aExp;
  TopoDS_Vertex aV1, aV2;
  TopoDS_Edge aE;
  BOPTools_Pave aPave1, aPave2;
  BOPTools_PaveBlock aPB;
  //
  BOPTools_CArray1OfSSInterference& aFFs=myIP->SSInterferences();
  //
  aNbFFs=aFFs.Extent();
  for (i=1; i<=aNbFFs; ++i) {
    BOPTools_SSInterference& aFFi=aFFs(i);
    aFFi.Indices(nF1, nF2);
    aMF.Add(nF1);
    aMF.Add(nF2);
  }
  //
  aNbF=aMF.Extent();
  for(i=1; i<=aNbF; ++i) {
    nF=aMF(i);
    iRankF=myDS->Rank(nF);
    const TopoDS_Shape aF=myDS->Shape(nF);//mpv
    aExp.Init(aF, TopAbs_EDGE);
    for(; aExp.More();  aExp.Next()) {
      aE=TopoDS::Edge(aExp.Current());
      //
      if (BRep_Tool::Degenerated(aE)) {
	continue;
      }
      //
      nE=myDS->ShapeIndex(aE, iRankF);
      //
      if (aME.Contains(nE)) {
	continue;
      }
      aME.Add(nE);
      //
      BOPTools_ListOfPaveBlock& aLPB=mySplitShapesPool(myDS->RefEdge(nE));
      aNbPB=aLPB.Extent();
      if (aNbPB) {
	continue;
      }
      TopExp::Vertices(aE, aV1, aV2);
      //
      nV1=myDS->ShapeIndex(aV1, iRankF);
      aT1=BRep_Tool::Parameter(aV1, aE);
      aPave1.SetIndex(nV1);
      aPave1.SetParam(aT1);
      //
      nV2=myDS->ShapeIndex(aV2, iRankF);
      aT2=BRep_Tool::Parameter(aV2, aE);
      aPave2.SetIndex(nV2);
      aPave2.SetParam(aT2);
      //
      aPB.SetEdge(nE);
      aPB.SetOriginalEdge(nE);
      aPB.SetPave1(aPave1);
      aPB.SetPave2(aPave2);
      //
      aLPB.Append(aPB);
    }
  }
} 
// Modified 
// to treat Alone Vertices between faces
// Thu Sep 14 14:35:18 2006 
// Contribution of Samtech www.samcef.com BEGIN
//=======================================================================
// function: MakeAloneVertices
// purpose: 
//=======================================================================
  void NMTTools_PaveFiller::MakeAloneVertices()
{
  Standard_Integer i, aNbFFs, nF1, nF2, j, aNbPnts, nFx, aNbV;
  Standard_Real aTolF1, aTolF2, aTolSum, aTolV;
  TColStd_ListIteratorOfListOfInteger aIt;
  TColStd_ListOfInteger aLI;
  TopoDS_Vertex aV;
  TopoDS_Compound aCompound;
  BRep_Builder aBB;
  TopTools_DataMapOfShapeListOfInteger aDMVFF, aDMVFF1;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger aItDMVFF;
  TopTools_DataMapOfShapeShape aDMVV;
  TopTools_DataMapOfIntegerShape aDMIV;
  TopTools_DataMapOfShapeInteger aDMVI;
  TopTools_DataMapIteratorOfDataMapOfShapeInteger aItDMVI;
  TopTools_DataMapIteratorOfDataMapOfIntegerShape aItDMIV;
  //
  aBB.MakeCompound(aCompound);
  //
  myAloneVertices.Clear();
  //
  BOPTools_CArray1OfSSInterference& aFFs=myIP->SSInterferences();
  //
  // 1. Collect alone vertices from FFs
  aNbV=0;
  aNbFFs=aFFs.Extent();
  for (i=1; i<=aNbFFs; ++i) {
    BOPTools_SSInterference& aFFi=aFFs(i);
    aFFi.Indices(nF1, nF2);
    //
    const TopoDS_Face aF1=TopoDS::Face(myDS->Shape(nF1));//mpv
    const TopoDS_Face aF2=TopoDS::Face(myDS->Shape(nF2));//mpv
    //
    aTolF1=BRep_Tool::Tolerance(aF1);
    aTolF2=BRep_Tool::Tolerance(aF2);
    aTolSum=aTolF1+aTolF2;
    //
    aLI.Clear();
    aLI.Append(nF1);
    aLI.Append(nF2);
    //
    const IntTools_SequenceOfPntOn2Faces& aSeqAlonePnts=aFFi.AlonePnts();
    aNbPnts=aSeqAlonePnts.Length();
    for (j=1; j<=aNbPnts; ++j) {
      const gp_Pnt& aP=aSeqAlonePnts(j).P1().Pnt();
      BOPTools_Tools::MakeNewVertex(aP, aTolSum, aV);
      aDMVFF.Bind(aV, aLI);
      aBB.Add(aCompound, aV);
      ++aNbV;
    }
  }
  if (!aNbV) {
    return;
  }
  //
  // 2. Try to fuse alone vertices themselves;
  FuseVertices(aCompound, aDMVV);
  //
  // if some are fused, replace them by new ones 
  aItDMVFF.Initialize(aDMVFF);
  for (;  aItDMVFF.More(); aItDMVFF.Next()) {
    const TopoDS_Shape& aVx=aItDMVFF.Key();
    const TColStd_ListOfInteger& aLIx=aItDMVFF.Value();
    //
    if (!aDMVV.IsBound(aVx)) {
      aDMVFF1.Bind(aVx, aLIx);
    }
    else {
      const TopoDS_Shape& aVy=aDMVV.Find(aVx);
      
      if (aDMVFF1.IsBound(aVy)) {
	TColStd_ListOfInteger& aLIy=aDMVFF1.ChangeFind(aVy);
	aIt.Initialize(aLIx);
	for(; aIt.More(); aIt.Next()) {
	  nFx=aIt.Value();
	  aLIy.Append(nFx);
	}
      }
      else { 
	aDMVFF1.Bind(aVy, aLIx);
      }
    }
  }
  aDMVFF.Clear();
  //
  // refine lists of faces in aDMVFF1; 
  aItDMVFF.Initialize(aDMVFF1);
  for (;  aItDMVFF.More(); aItDMVFF.Next()) {
    TColStd_MapOfInteger aMIy;
    TColStd_ListOfInteger aLIy;
    //
    const TopoDS_Shape& aVx=aItDMVFF.Key();
    TColStd_ListOfInteger& aLIx=aDMVFF1.ChangeFind(aVx);
    aIt.Initialize(aLIx);
    for(; aIt.More(); aIt.Next()) {
      nFx=aIt.Value();
      if (aMIy.Add(nFx)) {
	aLIy.Append(nFx);
      }
    }
    aLIx.Clear();
    aLIx.Append(aLIy);
  }
  //==================================
  //
  // 3. Collect vertices from DS
  Standard_Integer aNbS, nV, nVSD, aNbVDS, i1, i2, aNbVSD;
  //
  aNbS=myDS->NumberOfShapesOfTheObject();
  // old shapes
  for (i=1; i<=aNbS; ++i) {
    const TopoDS_Shape& aS=myDS->Shape(i);
    if (aS.ShapeType() != TopAbs_VERTEX){
      continue;
    }
    //
    nVSD=FindSDVertex(i); 
    nV=(nVSD) ? nVSD : i;
    const TopoDS_Shape& aVx=myDS->Shape(nV);
    if (!aDMVI.IsBound(aVx)) {
      aDMVI.Bind(aVx, nV);
    }
  }
  // new shapes
  i1=myDS->NumberOfSourceShapes()+1;
  i2=myDS->NumberOfInsertedShapes();
  for (i=i1; i<=i2; ++i) {
    const TopoDS_Shape aS=myDS->Shape(i);//mpv
    if (aS.ShapeType() != TopAbs_VERTEX){
      continue;
    }
    if (!aDMVI.IsBound(aS)) {
      aDMVI.Bind(aS, i);
    }
  }
  // 
  // 4. Initialize BoundSortBox on aDMVI
  //
  Handle(Bnd_HArray1OfBox) aHAB;
  Bnd_BoundSortBox aBSB;
  //
  aNbVDS=aDMVI.Extent();
  aHAB=new Bnd_HArray1OfBox(1, aNbVDS);
  //
  aItDMVI.Initialize(aDMVI);
  for (i=1; aItDMVI.More(); aItDMVI.Next(), ++i) {
    Bnd_Box aBox;
    //
    nV=aItDMVI.Value();
    aV=TopoDS::Vertex(aItDMVI.Key());
    aTolV=BRep_Tool::Tolerance(aV);
    aBox.SetGap(aTolV);
    BRepBndLib::Add(aV, aBox);
    aHAB->SetValue(i, aBox);
    //
    aDMIV.Bind(i, aV);
  }
  aBSB.Initialize(aHAB);
  //
  // 5. Compare 
  aItDMVFF.Initialize(aDMVFF1);
  for (;  aItDMVFF.More(); aItDMVFF.Next()) {
    Bnd_Box aBoxV;
    //
    const TColStd_ListOfInteger& aLIFF=aItDMVFF.Value();
    aV=TopoDS::Vertex(aItDMVFF.Key());
    //
    aTolV=BRep_Tool::Tolerance(aV);
    aBoxV.SetGap(aTolV);
    BRepBndLib::Add(aV, aBoxV);
    //
    const TColStd_ListOfInteger& aLIVSD=aBSB.Compare(aBoxV);
    aNbVSD=aLIVSD.Extent();
    if (aNbVSD==0) {
      // add new vertex in DS and update map myAloneVertices
      BooleanOperations_AncestorsSeqAndSuccessorsSeq anASSeq;
      //
      myDS->InsertShapeAndAncestorsSuccessors(aV, anASSeq);
      nV=myDS->NumberOfInsertedShapes();
      //
      aIt.Initialize(aLIFF);
      for (; aIt.More(); aIt.Next()) {
	nFx=aIt.Value();
	if (myAloneVertices.Contains(nFx)) {
	  TColStd_IndexedMapOfInteger& aMVx=myAloneVertices.ChangeFromKey(nFx);
	  aMVx.Add(nV);
	}
	else {
	  TColStd_IndexedMapOfInteger aMVx;
	  aMVx.Add(nV);
	  myAloneVertices.Add(nFx, aMVx);
	}
      }
    }
  }
  // qqf
  {
    Standard_Integer aNbF, aNbAV, nF, k;
    NMTTools_IndexedDataMapOfIndexedMapOfInteger aMAVF;
    //
    aNbF=myAloneVertices.Extent();
    if (aNbF<2) {
      return;
    }
    //
    // 1. fill map Alone Vertex/Face ->  aMAVF
    for (i=1; i<=aNbF; ++i) {
      nF=myAloneVertices.FindKey(i);
      const TColStd_IndexedMapOfInteger& aMAV=myAloneVertices(i);
      aNbAV=aMAV.Extent();
      for(j=1; j<=aNbAV; ++j) {
	nV=aMAV(j);
	if (aMAVF.Contains(nV)) {
	  TColStd_IndexedMapOfInteger& aMF=aMAVF.ChangeFromKey(nV);
	  aMF.Add(nF);
	}
	else{
	  TColStd_IndexedMapOfInteger aMF;
	  aMF.Add(nF);
	  aMAVF.Add(nV, aMF);
	}
      }
    }
    //
    // 2 Obtain pairs of faces
    aNbAV=aMAVF.Extent();
    for (i=1; i<=aNbAV; ++i) {
      const TColStd_IndexedMapOfInteger& aMF=aMAVF(i);
      aNbF=aMF.Extent();
      for(j=1; j<aNbF; ++j) {
	nF1=aMF(j);
	for(k=j+1; k<=aNbF; ++k) {
	  nF2=aMF(k);
	  myIP->Add(nF1, nF2, Standard_True, NMTDS_TI_FF);
	}
      }
    }
  }
  // qqt
}
//=======================================================================
// function: AloneVertices
// purpose: 
//=======================================================================
  const NMTTools_IndexedDataMapOfIndexedMapOfInteger& NMTTools_PaveFiller::AloneVertices()const
{
  return myAloneVertices;
}
//=======================================================================
// function: FuseVertices
// purpose: 
//=======================================================================
  void NMTTools_PaveFiller::FuseVertices(const TopoDS_Shape& aCompound,
					 TopTools_DataMapOfShapeShape& aDMVV)const
{
  Standard_Integer i, aNbVV, n1, n2, nX;
  NMTTools_PaveFiller tPF;
  //
  tPF.SetCompositeShape(aCompound);
  //
  tPF.Init();
  //
  tPF.PerformVV();
  //tPF.PerformNewVertices(); //qq
  //
  NMTDS_ShapesDataStructure& tDS=*(tPF.DS());
  NMTDS_InterfPool& tInterfPool=*(tPF.IP()); 
  BOPTools_CArray1OfVVInterference& aVVt=tInterfPool.VVInterferences();
  //
  aNbVV=aVVt.Extent();
  for (i=1; i<=aNbVV; ++i) {
    const BOPTools_VVInterference& aVV=aVVt(i);
    aVV.Indices(n1, n2);
    nX=aVV.NewShape();
    if (nX) {
      const TopoDS_Shape& aV1=tDS.Shape(n1);
      const TopoDS_Shape& aV2=tDS.Shape(n2);
      const TopoDS_Shape& aVx=tDS.Shape(nX);
      aDMVV.Bind(aV1, aVx);
      aDMVV.Bind(aV2, aVx);
    }
  }
}
// Contribution of Samtech www.samcef.com END
