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
// File:	GEOMAlgo_Builder_2.cxx
// Created:	
// Author:	Peter KURNEV 
//
#include <GEOMAlgo_Builder.hxx>

#include <TColStd_IndexedMapOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>

#include <TopAbs_Orientation.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Compound.hxx>

#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <BRepAlgo_Image.hxx>
#include <BRepTools.hxx>

#include <IntTools_Context.hxx>
#include <IntTools_FClass2d.hxx>

#include <BooleanOperations_OnceExplorer.hxx>
#include <BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include <BOPTools_CArray1OfSSInterference.hxx>
#include <BOPTools_SSInterference.hxx>
#include <BOPTools_SequenceOfCurves.hxx>
#include <BOPTools_Curve.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_Tools3D.hxx>
#include <BOPTools_CArray1OfVSInterference.hxx>
#include <BOPTools_VSInterference.hxx>
#include <BOPTools_ESInterference.hxx>
#include <BOPTools_CArray1OfESInterference.hxx>

#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTTools_PaveFiller.hxx>
#include <NMTTools_ListOfCoupleOfShape.hxx>
#include <NMTTools_Tools.hxx>
#include <NMTTools_CoupleOfShape.hxx>
#include <NMTTools_IndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include <NMTTools_Tools.hxx>
#include <NMTTools_ListIteratorOfListOfCommonBlock.hxx>
#include <NMTTools_ListOfCommonBlock.hxx>
#include <NMTTools_CommonBlock.hxx>
#include <NMTTools_IndexedDataMapOfIndexedMapOfInteger.hxx>
//
#include <GEOMAlgo_Tools3D.hxx>
#include <GEOMAlgo_WireEdgeSet.hxx>
#include <GEOMAlgo_BuilderFace.hxx>
#include <NMTDS_InterfPool.hxx>

static
  void UpdateCandidates(const Standard_Integer ,
			const Standard_Integer ,
			NMTTools_IndexedDataMapOfIndexedMapOfInteger& );

//=======================================================================
//function : FillImagesFaces
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::FillImagesFaces()
{
  myErrorStatus=0;
  //
  FillIn2DParts();
  BuildSplitFaces();
  FillSameDomainFaces();
  FillImagesFaces1();
  FillInternalVertices();
}
//=======================================================================
// function: FillIn2DParts
// purpose: 
//=======================================================================
  void GEOMAlgo_Builder::FillIn2DParts()
{
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  NMTTools_PaveFiller* pPF=myPaveFiller;
  NMTDS_InterfPool* pIP=pPF->IP();
  BOPTools_CArray1OfSSInterference& aFFs=pIP->SSInterferences();
  NMTTools_CommonBlockPool& aCBP=pPF->ChangeCommonBlockPool();
  //
  Standard_Integer  j, nSpIn, nSpSc, aNbCurves;
  Standard_Integer aNbS, nF, aNbCBP, n1, n2, aNbFFs, aNbSpIn;
  TopTools_MapOfShape  aMFence;
  TopTools_ListOfShape aLSpIn;
  TopoDS_Face aF;
  NMTTools_ListIteratorOfListOfCommonBlock aItCB;
  BOPTools_ListIteratorOfListOfPaveBlock aItPB;
  //
  myInParts.Clear();
  //
  aNbFFs=aFFs.Extent();
  aNbCBP=aCBP.Extent();
  //
  aNbS=aDS.NumberOfShapesOfTheObject();
  for (nF=1; nF<=aNbS; ++nF) {
    if (aDS.GetShapeType(nF)!=TopAbs_FACE) {
      continue;
    }
    //
    aF=TopoDS::Face(aDS.Shape(nF));
    //
    aMFence.Clear();
    aLSpIn.Clear();
    //
    // 1. In Parts
    for (j=1; j<=aNbCBP; ++j) {
      NMTTools_ListOfCommonBlock& aLCB=aCBP(j);
      aItCB.Initialize(aLCB);
      for (; aItCB.More(); aItCB.Next()) {
	NMTTools_CommonBlock& aCB=aItCB.Value();
	if (aCB.IsPaveBlockOnFace(nF)) {
	  const BOPTools_PaveBlock& aPB1=aCB.PaveBlock1();
	  nSpIn=aPB1.Edge();
	  const TopoDS_Shape& aSpIn=aDS.Shape(nSpIn);
	  if (aMFence.Add(aSpIn)){
	    aLSpIn.Append(aSpIn);
	  }
	}
      }
    }
    //
    // 2. Section Parts
    for (j=1; j<=aNbFFs; ++j) {
      BOPTools_SSInterference& aFF=aFFs(j);
      aFF.Indices(n1, n2);
      if (!(n1==nF || n2==nF)) {
	continue;
      }
      BOPTools_SequenceOfCurves& aSC=aFF.Curves();
      aNbCurves=aSC.Length();
      if (!aNbCurves) {
	continue;
      }
      //
      const BOPTools_Curve& aBC=aSC(1);
      const BOPTools_ListOfPaveBlock& aLPB=aBC.NewPaveBlocks();
      aItPB.Initialize(aLPB);
      for (; aItPB.More(); aItPB.Next()) {
	const BOPTools_PaveBlock& aPBSc=aItPB.Value();
	nSpSc=aPBSc.Edge();
	const TopoDS_Shape& aSpSc=aDS.Shape(nSpSc);
	if (aMFence.Add(aSpSc)){
	  aLSpIn.Append(aSpSc);
	}
      }
    }
    aNbSpIn=aLSpIn.Extent();
    if (aNbSpIn) {
      myInParts.Add(aF, aLSpIn);
    }
  }//for (nF=1; nF<=aNbS; ++nF) {
}
//=======================================================================
// function: BuildSplitFaces
// purpose: 
//=======================================================================
  void GEOMAlgo_Builder::BuildSplitFaces()
{
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  NMTTools_PaveFiller* pPF=myPaveFiller;
  NMTDS_InterfPool* pIP=pPF->IP();
  BOPTools_CArray1OfSSInterference& aFFs=pIP->SSInterferences();
  IntTools_Context& aCtx= pPF->ChangeContext();
  //
  Standard_Boolean bToReverse, bIsClosed, bIsDegenerated;
  Standard_Integer i, aNb, aNbF, nF;
  TopTools_MapOfShape aMFence;
  TColStd_IndexedMapOfInteger aMFP;
  TopExp_Explorer anExp;
  TopoDS_Face aFF;
  TopoDS_Edge aSp, aEE;
  TopTools_ListIteratorOfListOfShape aIt;
  TopAbs_Orientation anOriF, anOriE;
  //
  mySplitFaces.Clear();
  //
  // 1. Select Faces to process (MFP)
  aNb=aDS.NumberOfShapesOfTheObject();
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape& aF=aDS.Shape(i);
    if (aF.ShapeType()!=TopAbs_FACE) {
      continue;
    }
    if (!aMFence.Add(aF)) {
      continue;
    }
    //
    if (myInParts.Contains(aF)) {
      aMFP.Add(i);
      continue;
    }
    //
    anExp.Init(aF, TopAbs_EDGE);
    for (; anExp.More(); anExp.Next()) {
      const TopoDS_Shape& aE=anExp.Current();
      if (myImages.HasImage(aE)) {
	aMFP.Add(i);
	break;
      }
    }
    //
    //===
    {
      Standard_Integer aNbFFs, aNbSE, j, n1, n2;
      //
      aNbFFs=aFFs.Extent();
      for (j=1; j<=aNbFFs; ++j) {
	BOPTools_SSInterference& aFFj=aFFs(j);
	aFFj.Indices(n1, n2);
	if (!(n1==i || n2==i)) {
	  continue;
	}
	//
	const TColStd_ListOfInteger& aLSE=aFFj.SharedEdges();
	aNbSE=aLSE.Extent();
	if (aNbSE) {
	  aMFP.Add(i);
	}
      }
    }
    //===
    //
  }// for (i=1; i<=aNb; ++i)
  //
  // 2. ProcessFaces
  aNbF=aMFP.Extent();
  for (i=1; i<=aNbF; ++i) {
    nF=aMFP(i);
    const TopoDS_Face& aF=TopoDS::Face(aDS.Shape(nF));
    anOriF=aF.Orientation();
    aFF=aF;
    aFF.Orientation(TopAbs_FORWARD);
    //
    aMFence.Clear();
    //
    // 2.1. Fill WES 
    GEOMAlgo_WireEdgeSet aWES;
    aWES.SetFace(aFF);
    //
    //  2.1.1. Add Split parts
    anExp.Init(aFF, TopAbs_EDGE);
    for (; anExp.More(); anExp.Next()) {
      const TopoDS_Edge& aE=TopoDS::Edge(anExp.Current());
      anOriE=aE.Orientation();
      //
      if (!myImages.HasImage(aE)) {
	if (anOriE==TopAbs_INTERNAL) {
	  aEE=aE;
	  aEE.Orientation(TopAbs_FORWARD);
	  aWES.AddStartElement(aEE);
	  aEE.Orientation(TopAbs_REVERSED);
	  aWES.AddStartElement(aEE);
	}
	else {
	  aWES.AddStartElement(aE);
	}
	continue;
      }
      //
      bIsDegenerated=BRep_Tool::Degenerated(aE);
      bIsClosed=BRep_Tool::IsClosed(aE, aF);
      //
      const TopTools_ListOfShape& aLIE=myImages.Image(aE);
      aIt.Initialize(aLIE);
      for (; aIt.More(); aIt.Next()) {
	aSp=TopoDS::Edge(aIt.Value());
	//
	if (bIsDegenerated) {
	  aSp.Orientation(anOriE);
	  aWES.AddStartElement(aSp);
	  continue;
	}
	//
	if (anOriE==TopAbs_INTERNAL) {
	  aSp.Orientation(TopAbs_FORWARD);
	  aWES.AddStartElement(aSp);
	  aSp.Orientation(TopAbs_REVERSED);
	  aWES.AddStartElement(aSp);
	  continue;
	}
	//
	if (bIsClosed){
	  if (aMFence.Add(aSp)) {
	    //
	    if (!BRep_Tool::IsClosed(aSp, aF)){
	      BOPTools_Tools3D::DoSplitSEAMOnFace(aSp, aF);
	    }
	    //
	    aSp.Orientation(TopAbs_FORWARD);
	    aWES.AddStartElement(aSp);
	    aSp.Orientation(TopAbs_REVERSED);
	    aWES.AddStartElement(aSp);
	  }
	  continue;
	}// if (aMFence.Add(aSp))
	//
	aSp.Orientation(anOriE);
	bToReverse=BOPTools_Tools3D::IsSplitToReverse1(aSp, aE, aCtx);
	if (bToReverse) {
	  aSp.Reverse();
	}
	aWES.AddStartElement(aSp);
      }// for (; aIt.More(); aIt.Next()) {
    }// for (; anExp.More(); anExp.Next()) {
    //
    // 2.1.2. Add In2D Parts
    if (myInParts.Contains(aF)) {
      const TopTools_ListOfShape& aLE=myInParts.FindFromKey(aF);
      aIt.Initialize(aLE);
      for (; aIt.More(); aIt.Next()) {
	aSp=TopoDS::Edge(aIt.Value());
	//
	aSp.Orientation(TopAbs_FORWARD);
	aWES.AddStartElement(aSp);
	//
	aSp.Orientation(TopAbs_REVERSED);
	aWES.AddStartElement(aSp);
      }
    }
    //
    // 2.2. Build images Faces
    GEOMAlgo_BuilderFace aBF;
    //
    aBF.SetFace(aFF);
    aBF.SetContext(aCtx);
    const TopTools_ListOfShape& aSE=aWES.StartElements();
    //
    //DEB f
    /*
    {
      TopoDS_Compound aCx;
      BRep_Builder aBBx;
      TopTools_ListIteratorOfListOfShape aItx;
      //
      aBBx.MakeCompound(aCx);
      aBBx.Add(aCx, aFF);
      aItx.Initialize(aSE);
      for (; aItx.More(); aItx.Next()) {
	TopoDS_Shape& aEx=aItx.Value();
	aBBx.Add(aCx, aEx);
      }
      int a=0;
    }
    */
    //DEB t
    //
    aBF.SetShapes(aSE);
    //
    aBF.Perform();
    //
    const TopTools_ListOfShape& aLF=aBF.Areas();
    //
    TopTools_ListOfShape aLFR;
    //
    aIt.Initialize(aLF);
    for (; aIt.More(); aIt.Next()) {
      TopoDS_Shape& aFR=aIt.Value();
      if (anOriF==TopAbs_REVERSED) {
	aFR.Orientation(TopAbs_REVERSED);
      }
      aLFR.Append(aFR);
    }
    //
    // 2.3. Collect draft images Faces
    mySplitFaces.Bind(aF, aLFR);
  }//for (i=1; i<=aNbF; ++i)
}
//=======================================================================
// function: FillSameDomainFaces
// purpose: 
//=======================================================================
  void GEOMAlgo_Builder::FillSameDomainFaces()
{
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  NMTTools_PaveFiller* pPF=myPaveFiller;
  NMTDS_InterfPool* pIP=pPF->IP();
  BOPTools_CArray1OfSSInterference& aFFs=pIP->SSInterferences();
  IntTools_Context& aCtx= pPF->ChangeContext();
  //
  Standard_Boolean bIsSDF;
  Standard_Integer i, j, aNbFF, nF1, nF2, aNbPBInOn, aNbC, aNbSE;
  TopTools_MapOfShape aMFence;
  TopTools_ListIteratorOfListOfShape aItF1, aItF2;
  NMTTools_ListOfCoupleOfShape aLCS;   
  //
  //mySameDomainShapes.Clear();
  //
  // 1. For each FF find among images of faces
  //    all pairs of same domain faces (SDF) [=> aLCS]
  aNbFF=aFFs.Extent();
  for (i=1; i<=aNbFF; ++i) {
    BOPTools_SSInterference& aFF=aFFs(i);
    aFF.Indices(nF1, nF2);
    //
    const TopoDS_Face& aF1=TopoDS::Face(aDS.Shape(nF1));
    const TopoDS_Face& aF2=TopoDS::Face(aDS.Shape(nF2));
    //
    // if there are no in/on 2D split parts the faces nF1, nF2
    // can not be SDF
    const BOPTools_ListOfPaveBlock& aLPBInOn=aFF.PaveBlocks();
    aNbPBInOn=aLPBInOn.Extent();
    //
    //===
    const TColStd_ListOfInteger& aLSE=aFF.SharedEdges();
    aNbSE=aLSE.Extent();
    if (!aNbPBInOn && !aNbSE) {
      continue;
    }
    //===
    //
    // if there is at least one section edge between faces nF1, nF2
    // they can not be SDF
    BOPTools_SequenceOfCurves& aSC=aFF.Curves();
    aNbC=aSC.Length();
    if (aNbC) {
      continue;
    }
    //
    // the faces are suspected to be SDF.
    // Try to find SDF among images of nF1, nF2
    aMFence.Clear();
    const TopTools_ListOfShape& aLF1=mySplitFaces.Image(aF1);
    const TopTools_ListOfShape& aLF2=mySplitFaces.Image(aF2);
    //
    aItF1.Initialize(aLF1);
    for (; aItF1.More(); aItF1.Next()) {
      const TopoDS_Face& aF1x=TopoDS::Face(aItF1.Value());
      //
      aItF2.Initialize(aLF2);
      for (; aItF2.More(); aItF2.Next()) {
	const TopoDS_Face& aF2y=TopoDS::Face(aItF2.Value());
	bIsSDF=NMTTools_Tools::AreFacesSameDomain(aF1x, aF2y, aCtx);
	if (bIsSDF) {
	  if (aMFence.Contains(aF1x) ||
	      aMFence.Contains(aF2y)) {
	    continue;
	  }
	  aMFence.Add(aF1x);
	  aMFence.Add(aF2y);
	  //
	  NMTTools_CoupleOfShape aCS;
	  //
	  aCS.SetShape1(aF1x);
	  aCS.SetShape2(aF2y);
	  aLCS.Append(aCS);
	  //
	  if (aF1x==aF1) {
	    if (!mySplitFaces.HasImage(aF1)) {
	      mySplitFaces.Bind(aF1, aF1);
	    }
	  }
	  if (aF2y==aF2) {
	    if (!mySplitFaces.HasImage(aF2)) {
	      mySplitFaces.Bind(aF2, aF2);
	    }
	  }
	  //
	  
	}
      }
    }
  }//for (i=1; i<=aNbFF; ++i)
  //
  aNbC=aLCS.Extent();
  if (!aNbC) {
    return;
  }
  //
  // 2. Find Chains
  NMTTools_IndexedDataMapOfShapeIndexedMapOfShape aMC;  
  //
  NMTTools_Tools::FindChains(aLCS, aMC); 
  //
  // 3. Fill the map of SDF mySameDomainFaces
  aNbC=aMC.Extent();
  for (i=1; i<=aNbC; ++i) {
    const TopoDS_Shape& aF=aMC.FindKey(i);
    const TopTools_IndexedMapOfShape& aMSDF=aMC(i);
    //
    aNbFF=aMSDF.Extent();
    for (j=1; j<=aNbFF; ++j) {
      const TopoDS_Shape& aFSD=aMSDF(j);
      mySameDomainShapes.Add(aFSD, aF);
    }
  }
  //
}
//=======================================================================
// function: FillImagesFaces1
// purpose: 
//=======================================================================
  void GEOMAlgo_Builder::FillImagesFaces1()
{
  Standard_Integer i, aNb, iSense;
  TopoDS_Face aF, aFSp, aFSD;
  TopTools_ListOfShape aLFx;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  //
  aNb=aDS.NumberOfShapesOfTheObject();
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape& aS=aDS.Shape(i);
    if (aS.ShapeType()!=TopAbs_FACE) {
      continue;
    }
    //
    if (!mySplitFaces.HasImage(aS)) {
      continue;
    }
    //
    aF=TopoDS::Face(aS);
    //
    aLFx.Clear();
    const TopTools_ListOfShape& aLF=mySplitFaces.Image(aF);
    aIt.Initialize(aLF);
    for (; aIt.More(); aIt.Next()) {
      aFSp=TopoDS::Face(aIt.Value());
      if (!mySameDomainShapes.Contains(aFSp)) {
	aLFx.Append(aFSp);
      }
      else {
	const TopoDS_Shape& aSx=mySameDomainShapes.FindFromKey(aFSp);
	aFSD=TopoDS::Face(aSx);
	iSense=GEOMAlgo_Tools3D::Sense(aFSp, aFSD);
	if (iSense<0) {
	  aFSD.Reverse();
	}
	aLFx.Append(aFSD);
      }
    }
    if (!myImages.HasImage(aF)) {//XX
      myImages.Bind(aF, aLFx);
    }
  }
}
//=======================================================================
// function: FillInternalVertices
// purpose: 
//=======================================================================
  void GEOMAlgo_Builder::FillInternalVertices()
{
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  NMTTools_PaveFiller* pPF=myPaveFiller;
  NMTDS_InterfPool* pIP=pPF->IP();
  IntTools_Context& aCtx= pPF->ChangeContext();
  //
  BOPTools_CArray1OfSSInterference& aFFs=pIP->SSInterferences();
  BOPTools_CArray1OfVSInterference& aVFs=pIP->VSInterferences();
  BOPTools_CArray1OfESInterference& aEFs=pIP->ESInterferences();
  const NMTTools_IndexedDataMapOfIndexedMapOfInteger& aMAV=pPF->AloneVertices();
  //
  Standard_Boolean bHasImage; 
  Standard_Integer i, j, nF, aNbS, nV, nVSD, n1, n2, iFlag; 
  Standard_Integer aNbVFs, aNbAVF, aNbEFs, aNbVC, aNbE, aNbV;
  Standard_Real aU1, aU2, aTol;
  NMTTools_IndexedDataMapOfIndexedMapOfInteger aMFMV;
  TopTools_MapOfShape aMFence;
  TopTools_ListIteratorOfListOfShape aIt, aItV;
  BRep_Builder aBB;
  //
  // 1. Collect face-vertex candidates [aMFMV]
  //
  // 1.1. VFs
  aNbVFs=aVFs.Extent();
  for (i=1; i<=aNbVFs; ++i) {
    const BOPTools_VSInterference& aVS=aVFs(i);
    aVS.Indices(n1, n2);
    nF=n2;
    nV=n1;
    if (aDS.Shape(n1).ShapeType()==TopAbs_FACE) {
      nF=n1;
      nV=n2;
    }
    nVSD=pPF->FindSDVertex(nV);
    if (nVSD) {
      nV=nVSD;
    }
    //
    UpdateCandidates(nF, nV, aMFMV);
  }
  //
  // 1.2 EFs
  aNbEFs=aEFs.Extent();
  for (i=1; i<=aNbEFs; ++i) {
    const BOPTools_ESInterference& aEF=aEFs(i);
    aEF.Indices(n1, n2);
    nV=aEF.NewShape();
    if (!nV) {
      continue;
    }
    const TopoDS_Shape& aSnew=aDS.Shape(nV);
    if (aSnew.ShapeType()!=TopAbs_VERTEX) {
      continue;
    }
    //
    nF=(aDS.Shape(n1).ShapeType()==TopAbs_FACE) ? n1 : n2;
    nVSD=pPF->FindSDVertex(nV);
    if (nVSD) {
      nV=nVSD;
    }
    UpdateCandidates(nF, nV, aMFMV);
  }
  //
  aNbS=aDS.NumberOfShapesOfTheObject();
  for (nF=1; nF<=aNbS; ++nF) {
    const TopoDS_Shape& aF=aDS.Shape(nF);
    //
    if (aF.ShapeType()!=TopAbs_FACE) {
      continue;
    }
    if (!aMFence.Add(aF)) {
      continue;
    }
    //
    const TopoDS_Face& aFF=TopoDS::Face(aF);
    aTol=BRep_Tool::Tolerance(aFF);
    //
    // 1.3 FFs
    if (aMAV.Contains(nF)) {
      const TColStd_IndexedMapOfInteger& aMAVF=aMAV.FindFromKey(nF);
      aNbAVF=aMAVF.Extent();
      for (j=1; j<=aNbAVF; ++j) {
	nV=aMAVF(j); 
	nVSD=pPF->FindSDVertex(nV);
	if (nVSD) {
	  nV=nVSD;
	}
	//
	UpdateCandidates(nF, nV, aMFMV);
      }
    }
    //
    // 1.4 Internal vertices of the face nF
    BooleanOperations_OnceExplorer aExp(aDS);
    aExp.Init(nF, TopAbs_VERTEX);
    for (; aExp.More(); aExp.Next()) {
      nV=aExp.Current();
      const TopoDS_Shape& aV=aDS.Shape(nV);
      if (aV.Orientation()==TopAbs_INTERNAL) {
	nVSD=pPF->FindSDVertex(nV);
	if (nVSD) {
	  nV=nVSD;
	}
	//
	UpdateCandidates(nF, nV, aMFMV);
      }
    }
    //
    // 2. Process face nF
    if (!aMFMV.Contains(nF)) {
      continue;
    }
    //
    const TColStd_IndexedMapOfInteger& aMVC=aMFMV.FindFromKey(nF);
    aNbVC=aMVC.Extent();
    if (!aNbVC) {
      continue;
    }
    //
    // 2.1 Refine candidates
    TopTools_IndexedDataMapOfShapeListOfShape aMVE;
    TopTools_ListOfShape aLV;
    //
    bHasImage=myImages.HasImage(aF);
    if (bHasImage) {
      const TopTools_ListOfShape& aLFx=myImages.Image(aF);
      aIt.Initialize(aLFx);
      for (; aIt.More(); aIt.Next()) {
	const TopoDS_Shape& aFx=aIt.Value();
	TopExp::MapShapesAndAncestors(aFx, TopAbs_VERTEX, TopAbs_EDGE, aMVE);
      }
    }
    else {	
      Standard_Boolean bFaceToProcess;
      //
      TopExp::MapShapesAndAncestors(aF, TopAbs_VERTEX, TopAbs_EDGE, aMVE);
      bFaceToProcess=Standard_False;
      for (j=1; j<=aNbVC; ++j) {
	nV=aMVC(j);
	const TopoDS_Shape& aV=aDS.Shape(nV);
	if (!aMVE.Contains(aV)) {
	  bFaceToProcess=!bFaceToProcess;
	  break;
	}
      }
      if (!bFaceToProcess) {
	continue;
      }
    }// else
    //
    for (j=1; j<=aNbVC; ++j) {
      nV=aMVC(j);
      const TopoDS_Shape& aV=aDS.Shape(nV);
      if (aMVE.Contains(aV)) {
	const TopTools_ListOfShape& aLE=aMVE.FindFromKey(aV);
	aNbE=aLE.Extent();
	if (aNbE) {
	  continue;
	}
      }
      aLV.Append(aV);
    }
    //
    aNbV=aLV.Extent();
    if (aNbV) {
      //  3. Try to put vertices into the face(s)
      aItV.Initialize(aLV);
      for (; aItV.More(); aItV.Next()) {
	TopoDS_Vertex aV=TopoDS::Vertex(aItV.Value());
	aV.Orientation(TopAbs_INTERNAL);
	//
	bHasImage=myImages.HasImage(aF);
	if (bHasImage) {
	  const TopTools_ListOfShape& aLFx=myImages.Image(aF);
	  aIt.Initialize(aLFx);
	  for (; aIt.More(); aIt.Next()) {
	    TopoDS_Face aFx=TopoDS::Face(aIt.Value());
	    // update classifier
	    IntTools_FClass2d& aClsf=aCtx.FClass2d(aFx);
	    aClsf.Init(aFx, aTol);
	    //
	    iFlag=aCtx.ComputeVS (aV, aFx, aU1, aU2);
	    if (!iFlag) {
	      aBB.Add(aFx, aV);
	      break;
	    }
	  }
	}
	else {	
	  const TopoDS_Face& aFx=TopoDS::Face(aF);
	  // update classifier
	  IntTools_FClass2d& aClsf=aCtx.FClass2d(aFx);
	  aClsf.Init(aFx, aTol);
	  //
	  iFlag=aCtx.ComputeVS (aV, aFx, aU1, aU2);
	  if (!iFlag) {
	    TopoDS_Face aFz;
	    //
	    GEOMAlgo_Tools3D::CopyFace(aFx, aFz); 
	    aBB.Add(aFz, aV);
	    myImages.Bind(aF, aFz);
	  }
	}
      }// for (; aItV.More(); aItV.Next()) {
    }// if (aNbV) {
  }// for (nF=1; nF<=aNb; ++nF) {
}
//=======================================================================
// function: UpdateCandidates
// purpose: 
//=======================================================================
void UpdateCandidates(const Standard_Integer theNF,
		      const Standard_Integer theNV,
		       NMTTools_IndexedDataMapOfIndexedMapOfInteger& theMFMV)
{
  if (theMFMV.Contains(theNF)) {
    TColStd_IndexedMapOfInteger& aMV=theMFMV.ChangeFromKey(theNF);
    aMV.Add(theNV);
  }
  else {
    TColStd_IndexedMapOfInteger aMV;
    aMV.Add(theNV);
    theMFMV.Add(theNF, aMV);
  }
}
