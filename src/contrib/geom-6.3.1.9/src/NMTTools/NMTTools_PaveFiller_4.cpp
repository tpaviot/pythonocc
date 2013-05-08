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
//  File:        NMTTools_PaveFiller_4.cxx
//  Created:     Mon Dec  8 17:08:58 2003
//  Author:      Peter KURNEV

#include <NMTTools_PaveFiller.ixx>

#include <stdio.h>
#include <Precision.hxx>

#include <gp_XYZ.hxx>
#include <gp_Pnt.hxx>
#include <Bnd_Box.hxx>

#include <GeomAPI_ProjectPointOnCurve.hxx>

#include <TColStd_MapOfInteger.hxx>
#include <TColStd_IndexedMapOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_MapIteratorOfMapOfInteger.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Compound.hxx>

#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <BRepBndLib.hxx>

#include <BOPTColStd_Dump.hxx>
#include <BOPTColStd_Failure.hxx>

#include <IntTools_ShrunkRange.hxx>
#include <IntTools_Range.hxx>
#include <IntTools_CommonPrt.hxx>
#include <IntTools_SequenceOfRanges.hxx>
#include <IntTools_EdgeEdge.hxx>
#include <IntTools_SequenceOfCommonPrts.hxx>
#include <IntTools_Tools.hxx>

#include <BOPTools_Pave.hxx>
#include <BOPTools_PaveSet.hxx>
#include <BOPTools_PaveBlockIterator.hxx>
#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_CArray1OfEEInterference.hxx>
#include <BOPTools_EEInterference.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include <BOPTools_CArray1OfVVInterference.hxx>
#include <BOPTools_VVInterference.hxx>
#include <BOPTools_CArray1OfEEInterference.hxx>
#include <BOPTools_Tools.hxx>
#include <BOPTools_IDMapOfPaveBlockIMapOfPaveBlock.hxx>
#include <BOPTools_IMapOfPaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfPave.hxx>
#include <BOPTools_SequenceOfPaveBlock.hxx>

#include <BooleanOperations_AncestorsSeqAndSuccessorsSeq.hxx>
#include <BooleanOperations_IndexedDataMapOfShapeInteger.hxx>
#include <BooleanOperations_KindOfInterference.hxx>

#include <NMTDS_Iterator.hxx>
#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTDS_IndexedDataMapOfIntegerShape.hxx>
#include <NMTDS_IndexedDataMapOfShapeBox.hxx>
#include <NMTDS_BoxBndTree.hxx>
#include <NCollection_UBTreeFiller.hxx>
#include <NMTDS_InterfPool.hxx>

#include <NMTTools_IndexedDataMapOfIndexedMapOfInteger.hxx>
#include <NMTTools_ListOfCommonBlock.hxx>
#include <NMTTools_CommonBlock.hxx>
#include <NMTTools_ListIteratorOfListOfCommonBlock.hxx>

#include <TColStd_ListOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <BRepBndLib.hxx>
#include <BOPTools_CArray1OfVSInterference.hxx>
#include <BOPTools_VSInterference.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <TColStd_MapIteratorOfMapOfInteger.hxx>

static
  void TreatNewVertices(const BooleanOperations_IndexedDataMapOfShapeInteger& aMapVI,
                        TopTools_DataMapOfShapeListOfShape& myImages,
                        TopTools_DataMapOfShapeShape& myOrigins);

static
  void MakeNewVertex(const TopTools_ListOfShape& aLV,
                     TopoDS_Vertex& aNewVertex);

static
  void VertexParameters(const IntTools_CommonPrt& aCPart,
                        Standard_Real& aT1,
                        Standard_Real& aT2);

static
  Standard_Boolean IsOnPave(const Standard_Real& aT1,
                            const IntTools_Range& aRange,
                            const Standard_Real& aTolerance);

// static
//   void EECommonBlocks(const BOPTools_IDMapOfPaveBlockIMapOfPaveBlock& aMapCB);

static
  void ProcessBlock(const BOPTools_PaveBlock& aPB,
                    const BOPTools_IDMapOfPaveBlockIMapOfPaveBlock& aMapCB,
                    BOPTools_IMapOfPaveBlock& aProcessedBlocks,
                    BOPTools_IMapOfPaveBlock& aChain);

static
  void FindChains(const BOPTools_IDMapOfPaveBlockIMapOfPaveBlock& aMapCB,
                  NMTTools_ListOfCommonBlock& aLCB);

//=======================================================================
// function: PerformEE
// purpose:
//=======================================================================
void NMTTools_PaveFiller::PerformEE()
{
  myIsDone=Standard_False;
  //
  Standard_Boolean bJustAdd;
  Standard_Integer n1, n2, anIndexIn, nE1, nE2, aNbVEs, aBlockLength;
  Standard_Integer aTmp, aWhat, aWith, i, aNbCPrts, aDiscretize=30;
  Standard_Integer aNbLPB1, aNbLPB2;
  Standard_Real aTolE1, aTolE2, aDeflection=0.01;
  BOPTools_ListIteratorOfListOfPaveBlock anIt1, anIt2;
  TopoDS_Edge aEWhat, aEWith;
  TopoDS_Vertex aNewVertex;
  BooleanOperations_IndexedDataMapOfShapeInteger aMapVI;
  BOPTools_IDMapOfPaveBlockIMapOfPaveBlock aMapCB;
  //
  BOPTools_CArray1OfEEInterference& aEEs=myIP->EEInterferences();
  //
  myDSIt->Initialize(TopAbs_EDGE, TopAbs_EDGE);
  //
  // BlockLength correction
  aNbVEs=myDSIt->BlockLength();
  aBlockLength=aEEs.BlockLength();
  if (aNbVEs > aBlockLength) {
    aEEs.SetBlockLength(aNbVEs);
  }
  //
  for (; myDSIt->More(); myDSIt->Next()) {
    myDSIt->Current(n1, n2, bJustAdd);
    anIndexIn = 0;
    nE1=n1;
    nE2=n2;
    //
    if(bJustAdd) {
      continue;
    }
    //
    const TopoDS_Edge aE1=TopoDS::Edge(myDS->Shape(nE1));//mpv
    const TopoDS_Edge aE2=TopoDS::Edge(myDS->Shape(nE2));//mpv
    //
    if (BRep_Tool::Degenerated(aE1) || BRep_Tool::Degenerated(aE2)){
      continue;
    }
    //
    aTolE1=BRep_Tool::Tolerance(aE1);
    aTolE2=BRep_Tool::Tolerance(aE2);
    //
    BOPTools_ListOfPaveBlock& aLPB1=mySplitShapesPool(myDS->RefEdge(nE1));
    BOPTools_ListOfPaveBlock& aLPB2=mySplitShapesPool(myDS->RefEdge(nE2));
    //
    // Modified  Thu Sep 14 14:35:18 2006
    // Contribution of Samtech www.samcef.com BEGIN
    aNbLPB1=aLPB1.Extent();
    aNbLPB2=aLPB2.Extent();
    //
    //if (aE1.IsSame(aE2) && aNbLPB1==1 && aNbLPB2==1) {
    //  continue;
    //}
    // Contribution of Samtech www.samcef.com END
    //
    for (anIt1.Initialize(aLPB1); anIt1.More(); anIt1.Next()) {
      BOPTools_PaveBlock& aPB1=anIt1.Value();
      const IntTools_ShrunkRange& aShrunkRange1=aPB1.ShrunkRange();
      //
      const IntTools_Range& aSR1=aShrunkRange1.ShrunkRange();
      const Bnd_Box&        aBB1=aShrunkRange1.BndBox();
      //
      for (anIt2.Initialize(aLPB2); anIt2.More(); anIt2.Next()) {
        BOPTools_PaveBlock& aPB2=anIt2.Value();
        const IntTools_ShrunkRange& aShrunkRange2=aPB2.ShrunkRange();
        //
        const IntTools_Range& aSR2=aShrunkRange2.ShrunkRange();
        const Bnd_Box&        aBB2=aShrunkRange2.BndBox();
        //
        if (aBB1.IsOut (aBB2)) {
          continue;
        }
        //
        // EE
        IntTools_EdgeEdge aEE;
        aEE.SetEdge1 (aE1);
        aEE.SetEdge2 (aE2);
        aEE.SetTolerance1 (aTolE1);
        aEE.SetTolerance2 (aTolE2);
        aEE.SetDiscretize (aDiscretize);
        aEE.SetDeflection (aDeflection);
        //
        IntTools_Range anewSR1 = aSR1;
        IntTools_Range anewSR2 = aSR2;
        //
        BOPTools_Tools::CorrectRange (aE1, aE2, aSR1, anewSR1);
        BOPTools_Tools::CorrectRange (aE2, aE1, aSR2, anewSR2);
        //
        aEE.SetRange1(anewSR1);
        aEE.SetRange2(anewSR2);
        //
        aEE.Perform();
        //
        anIndexIn=0;
        //
        if (aEE.IsDone()) {
          // reverse order if it is necessary
          aEWhat=aE1;
          aEWith=aE2;
          aWhat=nE1;
          aWith=nE2;
          if (aEE.Order()) {
            aTmp=aWhat;
            aWhat=aWith;
            aWith=aTmp;
            aEWhat=aE2;
            aEWith=aE1;
          }
          //
          const IntTools_SequenceOfCommonPrts& aCPrts=aEE.CommonParts();
          aNbCPrts=aCPrts.Length();
          for (i=1; i<=aNbCPrts; i++) {
            const IntTools_CommonPrt& aCPart=aCPrts(i);
            const IntTools_SequenceOfRanges& aRanges2=aCPart.Ranges2();
            //
            anIndexIn=0;
            //
            TopAbs_ShapeEnum aType=aCPart.Type();
            switch (aType) {
              case TopAbs_VERTEX:  {
                Standard_Real aT1, aT2, aTol=Precision::PConfusion();
                Standard_Boolean bIsOnPave1, bIsOnPave2;
                IntTools_Range aR1, aR2;
                //
                VertexParameters(aCPart, aT1, aT2);
                //
                //decide to keep the pave or not
                aR1 = (aEE.Order()) ? anewSR2 : anewSR1;
                aR2 = (aEE.Order()) ? anewSR1 : anewSR2;
                //
                aTol=0.8*aTol;
                bIsOnPave1=IsOnPave(aT1, aR1, aTol);
                bIsOnPave2=IsOnPave(aT2, aR2, aTol);
                //
                if(bIsOnPave1 || bIsOnPave2) {
                   continue;
                }
                //
                BOPTools_Tools::MakeNewVertex(aEWhat, aT1, aEWith, aT2, aNewVertex);
                //
                {
                  Standard_Integer nV11, nV12, nV21, nV22, nVS[2], k, j, iFound;
                  Standard_Real aTolVx, aTolVnew, aD2, aDT2;
                  TColStd_MapOfInteger aMV;
                  gp_Pnt aPnew, aPx;
                  //
                  iFound=0;
                  j=-1;
                  nV11=aPB1.Pave1().Index();
                  nV12=aPB1.Pave2().Index();
                  nV21=aPB2.Pave1().Index();
                  nV22=aPB2.Pave2().Index();
                  aMV.Add(nV11);
                  aMV.Add(nV12);
                  //
                  if (aMV.Contains(nV21)) {
                    ++j;
                    nVS[j]=nV21;
                  }
                  if (aMV.Contains(nV22)) {
                    ++j;
                    nVS[j]=nV22;
                  }
                  //
                  aTolVnew=BRep_Tool::Tolerance(aNewVertex);
                  aPnew=BRep_Tool::Pnt(aNewVertex);
                  //
                  for (k=0; k<=j; ++k) {
                    const TopoDS_Vertex& aVx=TopoDS::Vertex(myDS->Shape(nVS[k]));
                    aTolVx=BRep_Tool::Tolerance(aVx);
                    aPx=BRep_Tool::Pnt(aVx);
                    aD2=aPnew.SquareDistance(aPx);
                    //
                    aDT2=100.*(aTolVnew+aTolVx)*(aTolVnew+aTolVx);
                    //
                    if (aD2<aDT2) {
                      iFound=1;
                      break;
                    }
                  }
                  //
                  if (iFound) {
                    continue;
                  }
                }
                //
                // Add Interference to the Pool
                BOPTools_EEInterference anInterf (aWhat, aWith, aCPart);
                //
                anIndexIn=aEEs.Append(anInterf);
                // qqf
                {
                  myIP->Add(aWhat, aWith, Standard_True, NMTDS_TI_EE);
                }
                // qqt
                //
                // Collect
                aMapVI.Add(aNewVertex, anIndexIn);
              }
                break;

              case TopAbs_EDGE: {
                Standard_Integer aNbComPrt2;
                Standard_Boolean aCoinsideFlag;
                //
                aNbComPrt2=aRanges2.Length();
                aCoinsideFlag=IsBlocksCoinside(aPB1, aPB2);
                //
                if (aNbComPrt2>1 || !aCoinsideFlag) {
                  break;
                }
                //
                // Fill aMapCB
                if (aMapCB.Contains(aPB1)) {
                  BOPTools_IMapOfPaveBlock& aMapPB=aMapCB.ChangeFromKey(aPB1);
                  aMapPB.Add(aPB1);
                  aMapPB.Add(aPB2);
                }
                else {
                  BOPTools_IMapOfPaveBlock aMapPB;
                  aMapPB.Add(aPB1);
                  aMapPB.Add(aPB2);
                  aMapCB.Add(aPB1, aMapPB);
                }
                //
                if (aMapCB.Contains(aPB2)) {
                  BOPTools_IMapOfPaveBlock& aMapPB=aMapCB.ChangeFromKey(aPB2);
                  aMapPB.Add(aPB1);
                  aMapPB.Add(aPB2);
                }
                else {
                  BOPTools_IMapOfPaveBlock aMapPB;
                  aMapPB.Add(aPB1);
                  aMapPB.Add(aPB2);
                  aMapCB.Add(aPB2, aMapPB);
                }
                // qqf
                {
                  myIP->Add(aWhat, aWith, Standard_True, NMTDS_TI_EE);
                }
                // qqt
              }
                break;
            default:
              break;
            } // switch (aType)
          } // for (i=1; i<=aNbCPrts; i++)
        }// if (aEE.IsDone())
      } // for (; anIt2.More(); anIt2.Next())
    } // for (; anIt1.More(); anIt1.Next())
  }// for (; myDSIt.More(); myDSIt.Next())
  //
  {
    NMTTools_ListOfCommonBlock aLCB;
    //
    FindChains(aMapCB, aLCB);
    EENewVertices (aMapVI);
    //TreatPaveBlocks(*this, aLCB);
    TreatPaveBlocks(aLCB);
    ReplaceCommonBlocks(aLCB);
  }
  //
  PerformVF1();
  //
  myIsDone=Standard_True;
}

//=======================================================================
// function:TreatPaveBlocks
// purpose:
//=======================================================================
void NMTTools_PaveFiller::TreatPaveBlocks (NMTTools_ListOfCommonBlock& theLCB)
{
  Standard_Boolean bFound;
  Standard_Integer nE, nV, nVp, iFlag;
  Standard_Real aT;
  TColStd_MapOfInteger aMI;
  TColStd_MapIteratorOfMapOfInteger aItMI;
  NMTTools_ListIteratorOfListOfCommonBlock aItLCB;
  BOPTools_ListIteratorOfListOfPaveBlock aItLPB;
  BOPTools_ListIteratorOfListOfPave aItLP;
  //
  aItLCB.Initialize(theLCB);
  for (; aItLCB.More(); aItLCB.Next()) {
    const NMTTools_CommonBlock& aCB=aItLCB.Value();
    //
    aMI.Clear();
    const BOPTools_ListOfPaveBlock& aLPB=aCB.PaveBlocks();
    //
    // 1 -> aMI
    aItLPB.Initialize(aLPB);
    for (; aItLPB.More(); aItLPB.Next()) {
      const BOPTools_PaveBlock& aPB=aItLPB.Value();
      nE=aPB.OriginalEdge();
      BOPTools_PaveSet& aPaveSet=myPavePoolNew(myDS->RefEdge(nE));
      BOPTools_ListOfPave& aLP=aPaveSet.ChangeSet();
      //
      aItLP.Initialize(aLP);
      for (; aItLP.More(); aItLP.Next()) {
        const BOPTools_Pave& aPave=aItLP.Value();
        nV=aPave.Index();
        aMI.Add(nV);
      }
    }//for (; anItLPB.More(); anItLPB.Next()) {
    //
    // 2
    aItLPB.Initialize(aLPB);
    for (; aItLPB.More(); aItLPB.Next()) {
      const BOPTools_PaveBlock& aPB=aItLPB.Value();
      nE=aPB.OriginalEdge();
      BOPTools_PaveSet& aPaveSet=myPavePoolNew(myDS->RefEdge(nE));
      BOPTools_ListOfPave& aLP=aPaveSet.ChangeSet();
      //
      aItMI.Initialize(aMI);
      for (; aItMI.More(); aItMI.Next()) {
        nV=aItMI.Key();
        bFound=Standard_False;
        aItLP.Initialize(aLP);
        for (; aItLP.More(); aItLP.Next()) {
          const BOPTools_Pave& aPave=aItLP.Value();
          nVp=aPave.Index();
          if (nVp==nV) {
            bFound=!bFound;
            break;
          }
        }
        //
        if (!bFound) {
          // Append Pave of nV to rhe edge nE
          const TopoDS_Edge& aE=*(TopoDS_Edge*)(&myDS->Shape(nE));
          const TopoDS_Vertex& aV= *(TopoDS_Vertex*)(&myDS->Shape(nV));
          iFlag=myContext.ComputeVE (aV, aE, aT);
          if (!iFlag) {
            BOPTools_Pave aPave;
            //
            aPave.SetInterference(-1);
            aPave.SetType (BooleanOperations_EdgeEdge);
            aPave.SetIndex(nV);
            aPave.SetParam(aT);
            aPaveSet.Append(aPave);
          }
        }
      }//for (; aItMI.More(); aItMI.Next()) {
    }//for (; anItLPB.More(); anItLPB.Next()) {
  }
}

//=======================================================================
// function:EECommonBlocks
// purpose:
//=======================================================================
void NMTTools_PaveFiller::EECommonBlocks(const BOPTools_IDMapOfPaveBlockIMapOfPaveBlock& aMapCB)
{
  NMTTools_ListOfCommonBlock aLCB;
  //
  FindChains(aMapCB, aLCB);
  ReplaceCommonBlocks(aLCB);
}

//=======================================================================
// function:EENewVertices
// purpose:
//=======================================================================
void NMTTools_PaveFiller::EENewVertices (const BooleanOperations_IndexedDataMapOfShapeInteger& aMapVI)
{
  Standard_Integer aNb, aNbVSD, nVnew, nIEE, nE[2], j, iFlag;
  Standard_Real aT;
  TopoDS_Edge aE;
  TopTools_DataMapOfShapeListOfShape myImages;
  TopTools_DataMapOfShapeShape myOrigins;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItIm;
  TopTools_ListIteratorOfListOfShape aIt;
  BooleanOperations_AncestorsSeqAndSuccessorsSeq anASSeq;
  TColStd_MapOfInteger aMFence;
  BOPTools_Pave aPave;
  //
  BOPTools_CArray1OfEEInterference& aEEs=myIP->EEInterferences();
  //
  aNb=aMapVI.Extent();
  if (!aNb) { // no new vertices, no new problems
    return;
  }
  //
  // 0.
  if (aNb==1) {
    TopoDS_Vertex aV1=TopoDS::Vertex(aMapVI.FindKey(1));
    EENewVertices(aV1, aMapVI);
    return;
  }
  //
  // 1.
  TreatNewVertices(aMapVI, myImages, myOrigins);
  //
  aItIm.Initialize(myImages);
  for (; aItIm.More(); aItIm.Next()) {
    const TopoDS_Vertex& aVnew=TopoDS::Vertex(aItIm.Key());
    const TopTools_ListOfShape& aLVSD=aItIm.Value();
    //
    aNbVSD=aLVSD.Extent();
    if (aNbVSD==1) {// simple case aVnew=aVold
      EENewVertices(aVnew, aMapVI);
      continue;
    }
    //
    // aNbVSD>1
    myDS->InsertShapeAndAncestorsSuccessors(aVnew, anASSeq);
    nVnew=myDS->NumberOfInsertedShapes();
    myDS->SetState(nVnew, BooleanOperations_ON);
    //
    aMFence.Clear();
    aIt.Initialize(aLVSD);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Vertex& aVold=TopoDS::Vertex(aIt.Value());
      nIEE=aMapVI.FindFromKey(aVold);
      BOPTools_EEInterference& aEE=aEEs(nIEE);
      aEE.Indices(nE[0], nE[1]);
      aEE.SetNewShape(nVnew);
      //
      for (j=0; j<2; ++j) {
        if (aMFence.Add(nE[j])) {
          aE=TopoDS::Edge(myDS->Shape(nE[j]));
          iFlag=myContext.ComputeVE (aVnew, aE, aT);
          if (!iFlag) {
            aPave.SetInterference(-1);
            aPave.SetType (BooleanOperations_EdgeEdge);
            aPave.SetIndex(nVnew);
            aPave.SetParam(aT);
            //
            BOPTools_PaveSet& aPaveSet=myPavePoolNew(myDS->RefEdge(nE[j]));
            aPaveSet.Append(aPave);
          }
        }// if (aMFence.Add(nE[j])) {
      }// for (j=0; j<2; ++j) {
    }//for (; aIt.More(); aIt.Next()) {
  }// for (; aItIm.More(); aItIm.Next())
}
//
// case: use_02
// completely rewritten
//=======================================================================
//function : TreatNewVertices
//purpose  :
//=======================================================================
void TreatNewVertices(const BooleanOperations_IndexedDataMapOfShapeInteger& aMapVI,
                      TopTools_DataMapOfShapeListOfShape& myImages,
                      TopTools_DataMapOfShapeShape& myOrigins)
{
  Standard_Integer j, i, aNbV, aNbVSD;
  Standard_Real aTol;
  TColStd_ListIteratorOfListOfInteger aIt;
  TopoDS_Shape aSTmp, aVF;
  TopoDS_Vertex aVnew;
  TopTools_IndexedMapOfShape aMV, aMVProcessed;
  TopTools_ListIteratorOfListOfShape aItS;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItIm;
  TopTools_DataMapOfShapeListOfShape aMVV;
  NMTDS_IndexedDataMapOfIntegerShape aMIS;
  NMTDS_IndexedDataMapOfShapeBox aMSB;
  //
  NMTDS_BoxBndTreeSelector aSelector;
  NMTDS_BoxBndTree aBBTree;
  NCollection_UBTreeFiller <Standard_Integer, Bnd_Box> aTreeFiller(aBBTree);
  //
  myImages.Clear();
  myOrigins.Clear();
  //
  aNbV=aMapVI.Extent();
  for (i=1; i<=aNbV; ++i) {
    const TopoDS_Shape& aV=aMapVI.FindKey(i);
    aMV.Add(aV);
  }
  //
  for (i=1; i<=aNbV; ++i) {
    const TopoDS_Shape& aV=aMV(i);
    Bnd_Box aBox;
    //
    aTol=BRep_Tool::Tolerance(TopoDS::Vertex(aV));
    aBox.SetGap(aTol);
    BRepBndLib::Add(aV, aBox);
    //
    aTreeFiller.Add(i, aBox);
    //
    aMIS.Add(i, aV);
    aMSB.Add(aV, aBox);
  }
  //
  aTreeFiller.Fill();
  //
  // Chains
  for (i=1; i<=aNbV; ++i) {
    const TopoDS_Shape& aV=aMV(i);
    //
    if (aMVProcessed.Contains(aV)) {
      continue;
    }
    //
    Standard_Integer aNbIP, aIP, aNbIP1, aIP1;
    TopTools_ListOfShape aLVSD;
    TColStd_MapOfInteger aMIP, aMIP1, aMIPC;
    TColStd_MapIteratorOfMapOfInteger aIt1;
    //
    aMIP.Add(i);
    while(1) {
      aNbIP=aMIP.Extent();
      aIt1.Initialize(aMIP);
      for(; aIt1.More(); aIt1.Next()) {
        aIP=aIt1.Key();
        if (aMIPC.Contains(aIP)) {
          continue;
        }
        //
        const TopoDS_Shape& aVP=aMIS.FindFromKey(aIP);
        const Bnd_Box& aBoxVP=aMSB.FindFromKey(aVP);
        //
        aSelector.Clear();
        aSelector.SetBox(aBoxVP);
        //
        aNbVSD=aBBTree.Select(aSelector);
        if (!aNbVSD) {
          continue;  // it must not be
        }
        //
        const TColStd_ListOfInteger& aLI=aSelector.Indices();
        aIt.Initialize(aLI);
        for (; aIt.More(); aIt.Next()) {
          aIP1=aIt.Value();
          if (aMIP.Contains(aIP1)) {
            continue;
          }
          aMIP1.Add(aIP1);
        } //for (; aIt.More(); aIt.Next()) {
      }//for(; aIt1.More(); aIt1.Next()) {
      //
      aNbIP1=aMIP1.Extent();
      if (!aNbIP1) {
        break; // from while(1)
      }
      //
      aIt1.Initialize(aMIP);
      for(; aIt1.More(); aIt1.Next()) {
        aIP=aIt1.Key();
        aMIPC.Add(aIP);
      }
      //
      aMIP.Clear();
      aIt1.Initialize(aMIP1);
      for(; aIt1.More(); aIt1.Next()) {
        aIP=aIt1.Key();
        aMIP.Add(aIP);
      }
      aMIP1.Clear();
    }// while(1)
    //...
    aNbIP=aMIPC.Extent();
    if (!aNbIP) {
      aMIPC.Add(i);
    }
    //
    aIt1.Initialize(aMIPC);
    for(j=0; aIt1.More(); aIt1.Next(), ++j) {
      aIP=aIt1.Key();
      const TopoDS_Shape& aVP=aMIS.FindFromKey(aIP);
      if (!j) {
        aVF=aVP;
      }
      aLVSD.Append(aVP);
      aMVProcessed.Add(aVP);
    }
    myImages.Bind(aVF, aLVSD);
  }// for (i=1; i<=aNbV; ++i) {
  //------------------------------
  //
  // Make new vertices
  aMV.Clear();
  aItIm.Initialize(myImages);
  for (; aItIm.More(); aItIm.Next()) {
    const TopoDS_Shape& aV=aItIm.Key();
    const TopTools_ListOfShape& aLVSD=aItIm.Value();
    aNbVSD=aLVSD.Extent();
    if (aNbVSD>1) {
      aMV.Add(aV);
      MakeNewVertex(aLVSD, aVnew);
      aMVV.Bind(aVnew, aLVSD);
    }
  }
  //
  // UnBind old vertices
  aNbV=aMV.Extent();
  for (i=1; i<=aNbV; ++i) {
    const TopoDS_Shape& aV=aMV(i);
    myImages.UnBind(aV);
  }
  //
  // Bind new vertices
  aItIm.Initialize(aMVV);
  for (; aItIm.More(); aItIm.Next()) {
    const TopoDS_Shape& aV=aItIm.Key();
    const TopTools_ListOfShape& aLVSD=aItIm.Value();
    myImages.Bind(aV, aLVSD);
  }
  //
  // Origins
  aItIm.Initialize(myImages);
  for (; aItIm.More(); aItIm.Next()) {
    const TopoDS_Shape& aV=aItIm.Key();
    const TopTools_ListOfShape& aLVSD=aItIm.Value();
    //
    aItS.Initialize(aLVSD);
    for (; aItS.More(); aItS.Next()) {
      const TopoDS_Shape& aVSD=aItS.Value();
      if (!myOrigins.IsBound(aVSD)) {
        myOrigins.Bind(aVSD, aV);
      }
    }
  }
}

//=======================================================================
//function : MakeNewVertex
//purpose  :
//=======================================================================
void MakeNewVertex(const TopTools_ListOfShape& aLV,
                   TopoDS_Vertex& aNewVertex)
{
  Standard_Integer aNbV;
  Standard_Real aTolV, aD, aDmax;
  gp_XYZ aGC;
  gp_Pnt aP3D, aPGC;
  TopoDS_Vertex aVx;
  BRep_Builder aBB;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  aNbV=aLV.Extent();
  if (!aNbV) {
    return;
  }
  //
  // center of gravity
  aGC.SetCoord(0.,0.,0.);
  aIt.Initialize(aLV);
  for (; aIt.More(); aIt.Next()) {
    aVx=TopoDS::Vertex(aIt.Value());
    aP3D=BRep_Tool::Pnt(aVx);
    aGC+=aP3D.XYZ();
  }
  aGC/=(Standard_Real)aNbV;
  aPGC.SetXYZ(aGC);
  //
  // tolerance value
  aDmax=-1.;
  aIt.Initialize(aLV);
  for (; aIt.More(); aIt.Next()) {
    aVx=TopoDS::Vertex(aIt.Value());
    aP3D=BRep_Tool::Pnt(aVx);
    aTolV=BRep_Tool::Tolerance(aVx);
    aD=aPGC.Distance(aP3D)+aTolV;
    if (aD>aDmax) {
      aDmax=aD;
    }
  }
  //
  aBB.MakeVertex (aNewVertex, aPGC, aDmax);
}

//=======================================================================
// function:EENewVertices
// purpose:
//=======================================================================
void NMTTools_PaveFiller::EENewVertices (const TopoDS_Vertex& aNewVertex,
                                         const BooleanOperations_IndexedDataMapOfShapeInteger& aMapVI)
{
  Standard_Integer  i, aNewShape, nE1, nE2;
  Standard_Real  aT1, aT2;
  BooleanOperations_AncestorsSeqAndSuccessorsSeq anASSeq;
  BOPTools_Pave aPave;
  //
  BOPTools_CArray1OfEEInterference& aEEs=myIP->EEInterferences();
  //
  // one new vertex case is treated in usual way
  //
  // Insert New Vertex in DS;
  myDS->InsertShapeAndAncestorsSuccessors(aNewVertex, anASSeq);
  aNewShape=myDS->NumberOfInsertedShapes();
  myDS->SetState (aNewShape, BooleanOperations_ON);
  // Insert New Vertex in EE Interference
  i=aMapVI.FindFromKey(aNewVertex);
  BOPTools_EEInterference& aEEInterf= aEEs(i);
  aEEInterf.SetNewShape(aNewShape);
  // Extact interference info
  aEEInterf.Indices(nE1, nE2);
  const IntTools_CommonPrt& aCPart=aEEInterf.CommonPrt();
  VertexParameters(aCPart, aT1, aT2);
  //
  // Add Paves to the myPavePoolNew
  aPave.SetInterference(i);
  aPave.SetType (BooleanOperations_EdgeEdge);
  aPave.SetIndex(aNewShape);
  // Pave for edge nE1
  aPave.SetParam(aT1);
  BOPTools_PaveSet& aPaveSet1=myPavePoolNew(myDS->RefEdge(nE1));
  aPaveSet1.Append(aPave);
  // Pave for edge nE2
  aPave.SetParam(aT2);
  BOPTools_PaveSet& aPaveSet2=myPavePoolNew(myDS->RefEdge(nE2));
  aPaveSet2.Append(aPave);
}

//=======================================================================
// function: RefinePavePool
// purpose:
//=======================================================================
void NMTTools_PaveFiller::RefinePavePool()
{
  Standard_Integer  i, aNbNew;

  for (i=1; i<=myNbSources; i++) {

    if ((myDS->GetShape(i)).ShapeType()==TopAbs_EDGE) {
      BOPTools_PaveSet& aPS= myPavePool(myDS->RefEdge(i));
      //
      BOPTools_PaveSet& aNewPS= myPavePoolNew(myDS->RefEdge(i));
      BOPTools_ListOfPave& aNewLP=aNewPS.ChangeSet();
      //
      aNbNew=aNewLP.Extent();
      if (aNbNew) {
        BOPTools_ListIteratorOfListOfPave anIt(aNewLP);
        for (; anIt.More(); anIt.Next()) {
          const BOPTools_Pave& aPave=anIt.Value();
          aPS.Append(aPave);
        }
        // Clear the ListOfPaveBlock
        BOPTools_ListOfPaveBlock& aLPB=mySplitShapesPool(myDS->RefEdge(i));
        aLPB.Clear();
        // Prepare the paveBlocks for that egde again
        PreparePaveBlocks(i);
      }
      aNewLP.Clear();
    }
  }
}

//=======================================================================
// function: PreparePaveBlocks
// purpose:
//=======================================================================
void NMTTools_PaveFiller::PreparePaveBlocks(const TopAbs_ShapeEnum aType1,
                                            const TopAbs_ShapeEnum aType2)
{
  myIsDone=Standard_False;
  //
  Standard_Boolean bOk1, bOk2, bOk3, bFlag;
  Standard_Integer i, aNb, nE[2], n1, n2, aNbSplits;
  TColStd_MapOfInteger aMap;
  //
  bOk1= (aType1==TopAbs_VERTEX) &&  (aType2==TopAbs_EDGE) ;
  bOk2= (aType1==TopAbs_EDGE)   &&  (aType2==TopAbs_EDGE) ;
  bOk3= (aType1==TopAbs_EDGE)   &&  (aType2==TopAbs_FACE) ;
  if (!bOk1 && !bOk2 && !bOk3) {// error: Type mismatch
    return;
  }
  //
  aNb=bOk2 ? 2 : 1;
  //
  myDSIt->Initialize(aType1, aType2);
  for (; myDSIt->More(); myDSIt->Next()) {
    myDSIt->Current(n1, n2, bFlag);
    //
    nE[0]=n1;
    nE[1]=n2;
    if (myDS->GetShapeType(n1)!=TopAbs_EDGE) {
      nE[0]=n2;
      nE[1]=n1;
    }
    //
    for (i=0; i<aNb; ++i) {
      BOPTools_ListOfPaveBlock& aLPB=mySplitShapesPool(myDS->RefEdge(nE[i]));
      aNbSplits=aLPB.Extent();
      if (!aNbSplits) {
        if (aMap.Add(nE[i])) {
          PreparePaveBlocks(nE[i]);
          if (!myIsDone) {
            return;
          }
        }
      }
    }
  }// for (; myDSIt.More(); myDSIt.Next())
  myIsDone=Standard_True;
}

//=======================================================================
// function: PreparePaveBlocks
// purpose:
//=======================================================================
void NMTTools_PaveFiller::PreparePaveBlocks(const Standard_Integer nE)
{
  myIsDone=Standard_False;
  //
  char buf[512];
  Standard_Integer nV1, nV2, iErr;
  TopoDS_Edge aE;
  TopoDS_Vertex aV1, aV2;
  //
  BOPTools_ListOfPaveBlock& aLPB=mySplitShapesPool(myDS->RefEdge(nE));
  // Edge
  aE=TopoDS::Edge(myDS->Shape(nE));
  if (BRep_Tool::Degenerated(aE)) {
    myIsDone=Standard_True;
    return;
  }
  //
  BOPTools_PaveSet& aPS=myPavePool(myDS->RefEdge(nE));
  //
  BOPTools_PaveBlockIterator aPBIt(nE, aPS);
  for (; aPBIt.More(); aPBIt.Next()) {
    BOPTools_PaveBlock& aPB=aPBIt.Value();
    const IntTools_Range& aRange=aPB.Range();
    //
    const BOPTools_Pave& aPave1=aPB.Pave1();
    nV1=aPave1.Index();
    aV1=TopoDS::Vertex(myDS->GetShape(nV1));
    //
    const BOPTools_Pave& aPave2=aPB.Pave2();
    nV2=aPave2.Index();
    aV2=TopoDS::Vertex(myDS->GetShape(nV2));
    //
    // ShrunkRange
    IntTools_ShrunkRange aSR (aE, aV1, aV2, aRange, (Handle_IntTools_Context&)myContext);
    iErr=aSR.ErrorStatus();
    if (!aSR.IsDone()) {
      sprintf (buf, "Can not obtain ShrunkRange for Edge %d\n", nE);
      BOPTColStd_Dump::PrintMessage(buf);
      sprintf (buf, "Can not obtain ShrunkRange for Edge %d", nE);
      throw
        BOPTColStd_Failure(buf) ;
    }
    //
    if (iErr==6) {
      sprintf(buf,
              "Warning: [PreparePaveBlocks()] Max.Dummy Shrunk Range for Edge %d\n", nE);
      BOPTColStd_Dump::PrintMessage(buf);
    }
    else {
      // Check left paves and correct ShrunkRange if it is necessary
      CorrectShrunkRanges (0, aPave1, aSR);
      CorrectShrunkRanges (1, aPave2, aSR);
    }
    //
    aPB.SetShrunkRange(aSR);
    aLPB.Append(aPB);
  } //for (; aPBIt.More(); aPBIt.Next())
  myIsDone=Standard_True;
}

//=======================================================================
// function: CorrectShrunkRanges
// purpose:
//=======================================================================
void NMTTools_PaveFiller::CorrectShrunkRanges(const Standard_Integer aSide,
                                              const BOPTools_Pave& aPave,
                                              IntTools_ShrunkRange& aShrunkRange)
{
  BooleanOperations_KindOfInterference aType;
  Standard_Integer anIndexInterf ;
  //
  aType=aPave.Type();
  if (aType!=BooleanOperations_EdgeEdge) {
    return;
  }
  //
  anIndexInterf=aPave.Interference();
  if (anIndexInterf<0) {
    // it can be EE interf between E and (e1,e2,..en) -> vertex
    // so we can't decide which aEE.CommonPrt() we should take.
    return;
  }

  BOPTools_CArray1OfEEInterference& aEEs=myIP->EEInterferences();
  const BOPTools_EEInterference& aEE=aEEs(anIndexInterf);
  const IntTools_CommonPrt& aCP=aEE.CommonPrt();
  const TopoDS_Edge& aE1=aCP.Edge1();
  const TopoDS_Edge& aE2=aCP.Edge2();

  const IntTools_Range& aSR=aShrunkRange.ShrunkRange();
  const TopoDS_Edge& aE=aShrunkRange.Edge();

  IntTools_Range aNewRange;
  IntTools_Range aCPRange;

  if (aE1.IsSame(aE)) {
    const IntTools_Range& aR1=aCP.Range1();
    aCPRange=aR1;
  }
  if (aE2.IsSame(aE)) {
    const IntTools_SequenceOfRanges& aSeqR=aCP.Ranges2();
    const IntTools_Range& aR2=aSeqR(1);
     aCPRange=aR2;
  }
  //
  Standard_Real aCoeff=1.05, tV, tNV;
  tV=aPave.Param();
  if (aSide==0) { // Left
    if (aCPRange.Last() > aSR.First()) {
      tNV=aCPRange.Last();
      tNV=tV+aCoeff*(tNV-tV);
      aNewRange.SetFirst(tNV);
      aNewRange.SetLast (aSR.Last());
      if(aNewRange.First() < aNewRange.Last()) {
        aShrunkRange.SetShrunkRange(aNewRange);
      }
    }
  }
  else { // Right
    if (aCPRange.First() < aSR.Last()) {
      tNV=aCPRange.First();
      tNV=tV-aCoeff*(tV-tNV);
      aNewRange.SetFirst(aSR.First());
      aNewRange.SetLast (tNV);

      if(aNewRange.First() < aNewRange.Last()) {
        aShrunkRange.SetShrunkRange(aNewRange);
      }
    }
  }
}

//=======================================================================
// function:  IsBlocksCoinside
// purpose:
//=======================================================================
Standard_Boolean NMTTools_PaveFiller::IsBlocksCoinside(const BOPTools_PaveBlock& aPB1,
                                                       const BOPTools_PaveBlock& aPB2) const
{
  Standard_Boolean bRetFlag=Standard_True;
  Standard_Real aTolV11, aTolV12, aTolV21, aTolV22;
  Standard_Real d1121, d1122, d1222, d1221, aTolSum, aCoeff=1.05;
  gp_Pnt aP11, aP12, aP21, aP22;

  const TopoDS_Vertex aV11=TopoDS::Vertex(myDS->Shape(aPB1.Pave1().Index()));//mpv
  const TopoDS_Vertex aV12=TopoDS::Vertex(myDS->Shape(aPB1.Pave2().Index()));//mpv
  const TopoDS_Vertex aV21=TopoDS::Vertex(myDS->Shape(aPB2.Pave1().Index()));//mpv
  const TopoDS_Vertex aV22=TopoDS::Vertex(myDS->Shape(aPB2.Pave2().Index()));//mpv

  aTolV11=BRep_Tool::Tolerance(aV11);
  aTolV12=BRep_Tool::Tolerance(aV12);
  aTolV21=BRep_Tool::Tolerance(aV21);
  aTolV22=BRep_Tool::Tolerance(aV22);

  aP11=BRep_Tool::Pnt(aV11);
  aP12=BRep_Tool::Pnt(aV12);
  aP21=BRep_Tool::Pnt(aV21);
  aP22=BRep_Tool::Pnt(aV22);

  d1121=aP11.Distance(aP21);
  aTolSum=aCoeff*(aTolV11+aTolV21);
  if (d1121<aTolSum) {
    d1222=aP12.Distance(aP22);
    aTolSum=aCoeff*(aTolV12+aTolV22);
    if (d1222<aTolSum) {
      return bRetFlag;
    }
  }
  //
  d1122=aP11.Distance(aP22);
  aTolSum=aCoeff*(aTolV11+aTolV22);
  if (d1122<aTolSum) {
    d1221=aP12.Distance(aP21);
    aTolSum=aCoeff*(aTolV12+aTolV21);
    if (d1221<aTolSum) {
      return bRetFlag;
    }
  }
  return !bRetFlag;
}

//=======================================================================
// function: ReplaceCommonBlocks
// purpose:
//=======================================================================
void NMTTools_PaveFiller::ReplaceCommonBlocks(const NMTTools_ListOfCommonBlock& aLCB)
{
  RemoveCommonBlocks(aLCB);
  SplitCommonBlocks(aLCB);
}

//=======================================================================
// function: SplitCommonBlocks
// purpose:
//=======================================================================
void NMTTools_PaveFiller::SplitCommonBlocks(const NMTTools_ListOfCommonBlock& aLCB)
{
  Standard_Integer nE;
  NMTTools_ListOfCommonBlock aLCBx;
  NMTTools_ListIteratorOfListOfCommonBlock anIt, anItCBx;
  BOPTools_ListIteratorOfListOfPaveBlock anItLPE;
  //
  anIt.Initialize(aLCB);
  for (; anIt.More(); anIt.Next()) {
    const NMTTools_CommonBlock& aCB=anIt.Value();
    //
    //XXX
    aLCBx.Clear();
    //XXX
    SplitCommonBlock(aCB, aLCBx);
    //
    anItCBx.Initialize(aLCBx);
    for (; anItCBx.More(); anItCBx.Next()) {
      const NMTTools_CommonBlock& aCBx=anItCBx.Value();
      const BOPTools_ListOfPaveBlock& aLPBx=aCBx.PaveBlocks();
      //
      anItLPE.Initialize(aLPBx);
      for (; anItLPE.More(); anItLPE.Next()) {
        const BOPTools_PaveBlock& aPBx=anItLPE.Value();
        nE=aPBx.OriginalEdge();
        NMTTools_ListOfCommonBlock& aLCBE=myCommonBlockPool(myDS->RefEdge(nE));
        aLCBE.Append(aCBx);
      }
    }
  }
  // Modified to provide the order of edges
  // in common block where the edge with max
  // tolerance value will be the first
  //  Thu Sep 14 14:35:18 2006
  // Contribution of Samtech www.samcef.com BEGIN
  Standard_Integer i, iMax, aNb, aNbCB, nSp;
  Standard_Real aTolSp, aTolMax;
  BOPTools_ListOfPaveBlock *pLPBE;
  //
  aNb=myDS->NumberOfShapesOfTheObject();
  for (nE=1; nE<=aNb; ++nE) {
    const TopoDS_Shape& aE=myDS->Shape(nE);
    if (aE.ShapeType()!=TopAbs_EDGE) {
      continue;
    }
    //
    NMTTools_ListOfCommonBlock& aLCBE=myCommonBlockPool(myDS->RefEdge(nE));
    aNbCB=aLCBE.Extent();
    if (!aNbCB) {
      continue;
    }
    //
    anIt.Initialize(aLCBE);
    for (; anIt.More(); anIt.Next()) {
      NMTTools_CommonBlock& aCBE=anIt.Value();
      const BOPTools_ListOfPaveBlock& aLPBE=aCBE.PaveBlocks();
      //
      aTolMax=-1.;
      anItLPE.Initialize(aLPBE);
      for (i=0; anItLPE.More(); anItLPE.Next(), ++i) {
        const BOPTools_PaveBlock& aPB=anItLPE.Value();
        nSp=aPB.OriginalEdge();
        const TopoDS_Edge& aSp=TopoDS::Edge(myDS->Shape(nSp));
        aTolSp=BRep_Tool::Tolerance(aSp);
        if (aTolSp>aTolMax) {
          iMax=i;
          aTolSp=aTolMax;
        }
      }
      //
      BOPTools_ListOfPaveBlock aLPBx;
      //
      anItLPE.Initialize(aLPBE);
      for (i=0; anItLPE.More(); anItLPE.Next(), ++i) {
        const BOPTools_PaveBlock& aPB=anItLPE.Value();
        if (i==iMax) {
          aLPBx.Prepend(aPB);
        }
        else {
          aLPBx.Append(aPB);
        }
      }
      //
      pLPBE=(BOPTools_ListOfPaveBlock *)&aLPBE;
      pLPBE->Clear();
      pLPBE->Append(aLPBx);
    }//for (; anIt.More(); anIt.Next()) {
  }//for (nE=1; nE<=aNb; ++nE) {
  // Contribution of Samtech www.samcef.com END
}

//=======================================================================
// function: RemoveCommonBlocks
// purpose:
//=======================================================================
void NMTTools_PaveFiller::RemoveCommonBlocks(const NMTTools_ListOfCommonBlock& aLCB)
{
  Standard_Integer nE;
  NMTTools_ListOfCommonBlock aLCBx;
  NMTTools_ListIteratorOfListOfCommonBlock anItCB, anItCBE;
  BOPTools_ListIteratorOfListOfPaveBlock anItLPB;
  //
  anItCB.Initialize(aLCB);
  for (; anItCB.More(); anItCB.Next()) {
    const NMTTools_CommonBlock& aCB=anItCB.Value();
    const BOPTools_ListOfPaveBlock& aLPB=aCB.PaveBlocks();
    //
    // Remove aCB from each edge
    anItLPB.Initialize(aLPB);
    for (; anItLPB.More(); anItLPB.Next()) {
      const BOPTools_PaveBlock& aPB=anItLPB.Value();
      nE=aPB.OriginalEdge();
      //
      NMTTools_ListOfCommonBlock& aLCBE=myCommonBlockPool(myDS->RefEdge(nE));
      anItCBE.Initialize(aLCBE);
      for (; anItCBE.More(); anItCBE.Next()) {
        const NMTTools_CommonBlock& aCBE=anItCBE.Value();
        if (aCBE.IsEqual(aCB)) {
          aLCBE.Remove(anItCBE);
          break;
        }
      }
    }
  }
}

//=======================================================================
// function: SplitCommonBlock
// purpose:
//=======================================================================
void NMTTools_PaveFiller::SplitCommonBlock(const NMTTools_CommonBlock& aCB,
                                           NMTTools_ListOfCommonBlock& aLCBx)
{
  Standard_Boolean bIsCoincided;
  Standard_Integer i, j,nE, aNbE, aNbSPBx, aNbPB, k;
  BOPTools_SequenceOfPaveBlock aSPBx;
  BOPTools_ListIteratorOfListOfPaveBlock anItLPB;
  BOPTools_ListIteratorOfListOfPave anIt;
  BOPTools_PaveBlockIterator anPBIt;
  //
  const BOPTools_ListOfPaveBlock& aLPB=aCB.PaveBlocks();
  aNbE=aLPB.Extent();
  //
  // 1. Checking: Whether we realy need to split the common block ?
  anItLPB.Initialize(aLPB);
  for (; anItLPB.More(); anItLPB.Next()) {
    const BOPTools_PaveBlock& aPB=anItLPB.Value();
    nE=aPB.OriginalEdge();
    BOPTools_PaveSet& aPSE=myPavePoolNew(myDS->RefEdge(nE));
    aPSE.SortSet();
    //
    BOPTools_PaveSet aPSx;
    //
    const BOPTools_ListOfPave& aLPE=aPSE.Set();
    anIt.Initialize(aLPE);
    for (; anIt.More(); anIt.Next()) {
      const BOPTools_Pave& aPx=anIt.Value();
      if (aPB.IsInBlock(aPx)) {
        aPSx.Append(aPx);
      }
    }
    aNbPB=aPSx.Set().Extent();
    break;
  }
  //
  if (!aNbPB) {
    // we need not split it
    aLCBx.Append(aCB);
    return;
  }
  //
  // 2. Get sequence of pave Blocks containing all new pave blocks
  // for each edges's source pave Block
  anItLPB.Initialize(aLPB);
  for (; anItLPB.More(); anItLPB.Next()) {
    const BOPTools_PaveBlock& aPB=anItLPB.Value();
    const BOPTools_Pave& aPave1=aPB.Pave1();
    const BOPTools_Pave& aPave2=aPB.Pave2();
    nE=aPB.OriginalEdge();
    //
    BOPTools_PaveSet aPSx;
    //
    // the set aPsx will contain bounadry paves aPave1, aPave2 and
    // all paves of the edge nE that are inside block aPB
    aPSx.Append(aPave1);
    aPSx.Append(aPave2);
    //
    BOPTools_PaveSet& aPSE=myPavePoolNew(myDS->RefEdge(nE));
    aPSE.SortSet();
    //
    const BOPTools_ListOfPave& aLPE=aPSE.Set();
    anIt.Initialize(aLPE);
    for (; anIt.More(); anIt.Next()) {
      const BOPTools_Pave& aPx=anIt.Value();
      if (aPB.IsInBlock(aPx)) {
        aPSx.Append(aPx);
      }
    }
    //
    // Form pave blocks from aPSx and collect them in aSPBx
    anPBIt.Initialize(nE, aPSx);
    for (; anPBIt.More(); anPBIt.Next()) {
      const BOPTools_PaveBlock& aPBx=anPBIt.Value();
      aSPBx.Append(aPBx);
    }
  }
  //
  // 3. Do new common blocks
  //
  const TColStd_ListOfInteger& aLF=aCB.Faces();
  aNbSPBx=aSPBx.Length();
  aNbPB=aNbSPBx/aNbE;
  //
  Standard_Integer k1, k2, n11, n12, n21, n22;
  //
  for (i=1; i<=aNbPB; ++i) {
    NMTTools_CommonBlock aCBx;
    //
    aCBx.AddFaces(aLF);
    //
    const BOPTools_PaveBlock& aPB1=aSPBx(i);
    n11=aPB1.Pave1().Index();
    n12=aPB1.Pave2().Index();
    //
    aCBx.AddPaveBlock(aPB1);
    //
    for (j=2; j<=aNbE; ++j) {
      k1=(j-1)*aNbPB+1;
      k2=k1+aNbPB-1;
      for(k=k1; k<=k2; ++k) {
        const BOPTools_PaveBlock& aPB2=aSPBx(k);
        n21=aPB2.Pave1().Index();
        n22=aPB2.Pave2().Index();
        if ((n21==n11 && n22==n12) || (n21==n12 && n22==n11)) {
	  //modified by NIZNHY-PKV Thu Nov 11 08:13:24 2010f
	  bIsCoincided=CheckCoincidence(aPB2, aPB1);
	  if (bIsCoincided) {
	    aCBx.AddPaveBlock(aPB2);
	    break;
	  }
	  //aCBx.AddPaveBlock(aPB2);
	  //break;
	  //modified by NIZNHY-PKV Thu Nov 11 08:13:31 2010t
        }
      }
    }
    aLCBx.Append(aCBx);
  }
}

//=======================================================================
// function: VertexParameters
// purpose:
//=======================================================================
void VertexParameters(const IntTools_CommonPrt& aCPart,
                      Standard_Real& aT1,
                      Standard_Real& aT2)
{
  const IntTools_Range& aR1=aCPart.Range1();
  aT1=0.5*(aR1.First()+aR1.Last());
  //
  if((aCPart.VertexParameter1() >= aR1.First()) &&
     (aCPart.VertexParameter1() <= aR1.Last())) {
    aT1 = aCPart.VertexParameter1();
  }
  //
  const IntTools_SequenceOfRanges& aRanges2=aCPart.Ranges2();
  const IntTools_Range& aR2=aRanges2(1);
  aT2=0.5*(aR2.First()+aR2.Last());
  //
  if((aCPart.VertexParameter2() >= aR2.First()) &&
     (aCPart.VertexParameter2() <= aR2.Last())) {
    aT2 = aCPart.VertexParameter2();
  }
}

//=======================================================================
// function: KeepPave
// purpose:
//=======================================================================
Standard_Boolean IsOnPave(const Standard_Real& aT1,
                          const IntTools_Range& aRange,
                          const Standard_Real& aTolerance)
{
  Standard_Boolean firstisonpave1, firstisonpave2, bIsOnPave;
  //
  firstisonpave1  = (Abs(aRange.First() - aT1) < aTolerance);
  firstisonpave2  = (Abs(aRange.Last()  - aT1) < aTolerance);
  bIsOnPave=(firstisonpave1 || firstisonpave2);
  return bIsOnPave;
}

//=======================================================================
// function:FindChains
// purpose:
//=======================================================================
void FindChains(const BOPTools_IDMapOfPaveBlockIMapOfPaveBlock& aMapCB,
                NMTTools_ListOfCommonBlock& aLCB)
{
  Standard_Integer  i, j, aNbCB, aNbPB;
  BOPTools_IMapOfPaveBlock aProcessedBlocks, aChain;
  //
  aNbCB=aMapCB.Extent();
  for (i=1; i<=aNbCB; ++i) {
    const BOPTools_PaveBlock& aPB=aMapCB.FindKey(i);
    if (aProcessedBlocks.Contains(aPB)) {
      continue;
    }
    //
    aProcessedBlocks.Add(aPB);
    aChain.Add(aPB);
    //
    const BOPTools_IMapOfPaveBlock& aMapPB=aMapCB(i);
    aNbPB=aMapPB.Extent();
    for (j=1; j<=aNbPB; ++j) {
      const BOPTools_PaveBlock& aPBx=aMapPB(j);
      ProcessBlock(aPBx, aMapCB, aProcessedBlocks, aChain);
    }
    //
    NMTTools_CommonBlock aCB;
    //
    aNbPB=aChain.Extent();
    for (j=1; j<=aNbPB; ++j) {
      const BOPTools_PaveBlock& aPBx=aChain(j);
      aCB.AddPaveBlock(aPBx);
    }
    aLCB.Append(aCB);
    aChain.Clear();
  }
}

//=======================================================================
// function:ProcessBlock
// purpose:
//=======================================================================
void ProcessBlock(const BOPTools_PaveBlock& aPB,
                  const BOPTools_IDMapOfPaveBlockIMapOfPaveBlock& aMapCB,
                  BOPTools_IMapOfPaveBlock& aProcessedBlocks,
                  BOPTools_IMapOfPaveBlock& aChain)
{
  Standard_Integer j, aNbPB;
  //
  if (aProcessedBlocks.Contains(aPB)) {
    return;
  }
  aProcessedBlocks.Add(aPB);
  aChain.Add(aPB);
  //
  const BOPTools_IMapOfPaveBlock& aMapPB=aMapCB.FindFromKey(aPB);
  aNbPB=aMapPB.Extent();
  for (j=1; j<=aNbPB; ++j) {
    const BOPTools_PaveBlock& aPBx=aMapPB(j);
    ProcessBlock(aPBx, aMapCB, aProcessedBlocks, aChain);
  }
}
// Modified  to provide VS interference between
// vertex as result of EE and a Face of argument
// Thu Sep 14 14:35:18 2006
// Contribution of Samtech www.samcef.com BEGIN
//=======================================================================
// function: PerformVF1
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::PerformVF1()
{
  Standard_Integer i, aNbEE, n1, n2, nNewShape, aNbS, nF;
  Standard_Integer anIndexIn, aFlag;
  Standard_Real aU, aV;
  TColStd_ListOfInteger aLFI;
  TColStd_ListIteratorOfListOfInteger aItLFI;
  //
  BOPTools_CArray1OfVSInterference& aVSs=myIP->VSInterferences();
  BOPTools_CArray1OfEEInterference& aEEs=myIP->EEInterferences();
  //
  aNbS=myDS->NumberOfShapesOfTheObject();
  for (i=1; i<=aNbS; ++i) {
    const TopoDS_Shape& aF=myDS->Shape(i);
    if (aF.ShapeType()==TopAbs_FACE) {
      aLFI.Append(i);
    }
  }
  if (!aLFI.Extent()) {
    return;
  }
  //
  aNbEE=aEEs.Extent();
  for (i=1; i<=aNbEE; ++i) {
    BOPTools_EEInterference& aEE=aEEs(i);
    aEE.Indices(n1, n2);
    nNewShape=aEE.NewShape();
    if (!nNewShape) {
      continue;
    }
    //
    const TopoDS_Shape& aSnew=myDS->Shape(nNewShape);
    if (aSnew.ShapeType()!=TopAbs_VERTEX) {
      continue;
    }
    //
    const TopoDS_Vertex& aVnew=TopoDS::Vertex(aSnew);
    //
    Bnd_Box aBV;
    //
    BRepBndLib::Add(aVnew, aBV);
    //
    aItLFI.Initialize(aLFI);
    for (; aItLFI.More(); aItLFI.Next()) {
      nF=aItLFI.Value();
      //
      const TopoDS_Face& aF=TopoDS::Face(myDS->Shape(nF));
      const Bnd_Box& aBF=myDS->GetBoundingBox(nF);
      if (aBF.IsOut(aBV)) {
        continue;
      }
      //
      anIndexIn=0;
      aFlag=myContext.ComputeVS (aVnew, aF, aU, aV);
      if (!aFlag) {
        BOPTools_VSInterference anInterf (nNewShape, nF, aU, aV);
        //
        anIndexIn=aVSs.Append(anInterf);
        BOPTools_VSInterference& aVS=aVSs(anIndexIn);
        aVS.SetNewShape(nNewShape);//->
      }
    }
  }
}
// Contribution of Samtech www.samcef.com END
//modified by NIZNHY-PKV Thu Nov 11 08:13:48 2010f
//=======================================================================
// function: CheckCoincidence
// purpose:
//=======================================================================
Standard_Boolean NMTTools_PaveFiller::CheckCoincidence(const BOPTools_PaveBlock& aPB1,
						       const BOPTools_PaveBlock& aPB2)
{
  Standard_Boolean bRet;
  Standard_Integer nE1, nE2, aNbPoints;
  Standard_Real aT11, aT12, aT21, aT22, aT1m, aD, aTol, aT2x;
  gp_Pnt aP1m;
  //
  bRet=Standard_False;
  //
  aT11=aPB1.Pave1().Param();
  aT12=aPB1.Pave2().Param();
  aT1m=IntTools_Tools::IntermediatePoint (aT11, aT12);
  nE1=aPB1.OriginalEdge();
  const TopoDS_Edge& aE1=(*(TopoDS_Edge*)(&myDS->Shape(nE1)));
  BOPTools_Tools::PointOnEdge(aE1, aT1m, aP1m);
  //
  aT21=aPB2.Pave1().Param();
  aT22=aPB2.Pave2().Param();
  nE2=aPB2.OriginalEdge();
  const TopoDS_Edge& aE2=(*(TopoDS_Edge*)(&myDS->Shape(nE2)));
  //
  GeomAPI_ProjectPointOnCurve& aPPC=myContext.ProjPC(aE2);
  aPPC.Perform(aP1m);
  aNbPoints=aPPC.NbPoints();
  if (aNbPoints) {
    aD=aPPC.LowerDistance();
    //
    aTol=BRep_Tool::Tolerance(aE1);
    aTol=aTol+BRep_Tool::Tolerance(aE2);
    if (aD<aTol) {
      aT2x=aPPC.LowerDistanceParameter();
      if (aT2x>aT21 && aT2x<aT22) {
	return !bRet;
      }
    }
  }
  return bRet;
}
//modified by NIZNHY-PKV Thu Nov 11 08:13:55 2010t
