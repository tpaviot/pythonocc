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
// File:	NMTTools_PaveFiller_8.cxx
// Created:	Fri Dec 19 11:15:53 2003
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTTools_PaveFiller.ixx>

#include <TColStd_MapOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>

#include <BooleanOperations_ShapesDataStructure.hxx>
#include <BooleanOperations_OnceExplorer.hxx>

#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>

#include <NMTDS_ShapesDataStructure.hxx>

#include <NMTTools_ListOfCommonBlock.hxx>
#include <NMTTools_ListIteratorOfListOfCommonBlock.hxx>
#include <NMTTools_CommonBlock.hxx>
#include <NMTTools_CommonBlockAPI.hxx>


// Modified  to add new method Thu Sep 14 14:35:18 2006 
// Contribution of Samtech www.samcef.com BEGIN
//=======================================================================
// function:  SharedEdges
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::SharedEdges(const Standard_Integer nF1,
					const Standard_Integer nF2,
					TColStd_ListOfInteger& aLNE,
					TopTools_ListOfShape& aLSE)
{
  Standard_Integer nE1, nE2;
  TColStd_MapOfInteger aM1;
  //
  BooleanOperations_ShapesDataStructure *pDS=myDS;
  BooleanOperations_OnceExplorer aExp(*pDS);
  //
  aExp.Init(nF1, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE1=aExp.Current();
    aM1.Add(nE1);
  }
  
  aExp.Init(nF2, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE2=aExp.Current();
    if (aM1.Contains(nE2)) {
      aLNE.Append(nE2);
      const TopoDS_Shape& aE2=myDS->Shape(nE2);
      aLSE.Append(aE2);
    }
  }
}
// Contribution of Samtech www.samcef.com END
//
//=======================================================================
// function: RealPaveBlock
// purpose:
//=======================================================================
  const BOPTools_PaveBlock& NMTTools_PaveFiller::RealPaveBlock
     (const BOPTools_PaveBlock& aPB,
      TColStd_ListOfInteger& aLB,
      Standard_Integer& aIsCommonBlock)
{
  Standard_Integer nE, nSpx;
  BOPTools_ListIteratorOfListOfPaveBlock aItPBx;
  //
  aIsCommonBlock=0;
  aLB.Clear();
  nE=aPB.OriginalEdge();
  const NMTTools_ListOfCommonBlock& aLCBE=myCommonBlockPool(myDS->RefEdge(nE));
  NMTTools_CommonBlockAPI aCBAPI(aLCBE);
  if (aCBAPI.IsCommonBlock(aPB)) {
    NMTTools_CommonBlock& aCB=aCBAPI.CommonBlock(aPB);
    //
    aIsCommonBlock=1;   
    //
    const BOPTools_ListOfPaveBlock& aLPBx=aCB.PaveBlocks();
    aItPBx.Initialize(aLPBx);
    for (; aItPBx.More(); aItPBx.Next()) {
      const BOPTools_PaveBlock& aPBx=aItPBx.Value();
      nSpx=aPBx.Edge();
      aLB.Append(nSpx);
    }
    //
    const BOPTools_PaveBlock& aPBx=aCB.PaveBlock1();
    return aPBx;
  }
  return aPB;
}
//
//=======================================================================
// function: RealPaveBlock
// purpose:
//=======================================================================
  const BOPTools_PaveBlock& NMTTools_PaveFiller::RealPaveBlock(const BOPTools_PaveBlock& aPB)
{
  Standard_Integer nE;
  //
  nE=aPB.OriginalEdge();
  const NMTTools_ListOfCommonBlock& aLCBE=myCommonBlockPool(myDS->RefEdge(nE));
  NMTTools_CommonBlockAPI aCBAPI(aLCBE);
  if (aCBAPI.IsCommonBlock(aPB)) {
    NMTTools_CommonBlock& aCB=aCBAPI.CommonBlock(aPB);
    const BOPTools_PaveBlock& aPBx=aCB.PaveBlock1();
    return aPBx;
  }
  return aPB;
}
//=======================================================================
// function: CommonBlocksFace
// purpose:
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::CommonBlocksFace(const Standard_Integer nF,
							 NMTTools_ListOfCommonBlock& aLCB)
{
  Standard_Integer nE;
  TopAbs_ShapeEnum aT;
  NMTTools_ListIteratorOfListOfCommonBlock anIt;
  //
  aT=myDS->GetShapeType(nF);
  //
  if (aT!=TopAbs_FACE) {
    return 1; // Type mismatch
  }
  //
  BooleanOperations_ShapesDataStructure *pDS=myDS;
  BooleanOperations_OnceExplorer aExp(*pDS);
  //
  aExp.Init(nF, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE=aExp.Current();
    const NMTTools_ListOfCommonBlock& aLCBE=myCommonBlockPool(myDS->RefEdge(nE));
    anIt.Initialize(aLCBE);
    for (; anIt.More(); anIt.Next()) {
      const NMTTools_CommonBlock& aCBE=anIt.Value();
      aLCB.Append(aCBE);
    }
  }
  return 0; //Ok
}
//
// 1 RealSplits
//
//
//=======================================================================
// function: RealSplitsFace
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::RealSplitsFace(const Standard_Integer nF,
					   BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nE;
  BOPTools_ListIteratorOfListOfPaveBlock anIt;
  //
  BooleanOperations_ShapesDataStructure *pDS=myDS;
  BooleanOperations_OnceExplorer aExp(*pDS);
  //
  aExp.Init(nF, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE=aExp.Current();
    const BOPTools_ListOfPaveBlock& aLPBE=mySplitShapesPool(myDS->RefEdge(nE));
    anIt.Initialize(aLPBE);
    for (; anIt.More(); anIt.Next()) {
      const BOPTools_PaveBlock& aPB=anIt.Value();
      const BOPTools_PaveBlock& aPBR=RealPaveBlock(aPB);
      aLPB.Append(aPBR);
    }
  }
}
//=======================================================================
// function: HasRealSplitsInOnFace
// purpose:
//=======================================================================
  Standard_Boolean NMTTools_PaveFiller::HasRealSplitsInOnFace(const Standard_Integer nF1,
							      const Standard_Integer nF2)
{
  Standard_Boolean bFlag;
  BOPTools_ListOfPaveBlock aLPB;
  //
  RealSplitsInFace(0, nF1, nF2, aLPB);
  //
  bFlag=!aLPB.IsEmpty();
  if (bFlag) {
    return bFlag;
  }
  //
  RealSplitsInFace(0, nF1, nF2, aLPB);
  //
  bFlag=!aLPB.IsEmpty();
  return bFlag;
}
//=======================================================================
// function: RealSplitsInFace
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::RealSplitsInFace(const Standard_Integer ,//for overriding
					     const Standard_Integer nF1,
					     const Standard_Integer nF2,
					     BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nE1;
  //
  BooleanOperations_ShapesDataStructure *pDS=myDS;
  BooleanOperations_OnceExplorer aExp(*pDS);
  aExp.Init(nF1, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE1=aExp.Current();
    RealSplitsInFace (nE1, nF2, aLPB);
  }
}
//=======================================================================
// function: RealSplitsInFace
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::RealSplitsInFace(const Standard_Integer nE1,
					     const Standard_Integer nF2,
					     BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nF1;
  //
  TColStd_ListIteratorOfListOfInteger anItLFCB;
  NMTTools_ListIteratorOfListOfCommonBlock anItCB;
  //
  const NMTTools_ListOfCommonBlock& aLCB=myCommonBlockPool(myDS->RefEdge(nE1));
  //
  anItCB.Initialize(aLCB);
  for (; anItCB.More(); anItCB.Next()) {
    NMTTools_CommonBlock& aCB=anItCB.Value();
    const BOPTools_PaveBlock& aPB1=aCB.PaveBlock1(nE1);
    const BOPTools_PaveBlock& aPB1R=RealPaveBlock(aPB1);

    const TColStd_ListOfInteger& aLFCB=aCB.Faces();
    anItLFCB.Initialize(aLFCB);
    for (; anItLFCB.More(); anItLFCB.Next()) {
      nF1=anItLFCB.Value();
      if (nF1==nF2) {
	aLPB.Append(aPB1R);
      }
    }
  }
}
//=======================================================================
// function: RealSplitsOnEdge
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::RealSplitsOnEdge(const Standard_Integer nE1,
					     const Standard_Integer nE2,
					     BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nE;
  //
  BOPTools_ListIteratorOfListOfPaveBlock anIt;
  NMTTools_ListIteratorOfListOfCommonBlock anItCB;
  //
  const NMTTools_ListOfCommonBlock& aLCB=myCommonBlockPool(myDS->RefEdge(nE1));

  anItCB.Initialize(aLCB);
  for (; anItCB.More(); anItCB.Next()) {
    NMTTools_CommonBlock& aCB=anItCB.Value();
    const BOPTools_PaveBlock& aPB1=aCB.PaveBlock1(nE1);
    const BOPTools_PaveBlock& aPB1R=RealPaveBlock(aPB1);
    //
    const BOPTools_ListOfPaveBlock& aLPBx=aCB.PaveBlocks();
    anIt.Initialize(aLPBx);
    for (; anIt.More(); anIt.Next()) {
      const BOPTools_PaveBlock& aPB2=anIt.Value();
      nE=aPB2.OriginalEdge();
      if (nE==nE2) {
	aLPB.Append(aPB1R);
      }
    }
  }
}
//=======================================================================
// function: RealSplitsOnFace
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::RealSplitsOnFace(const Standard_Integer nE1,
					     const Standard_Integer nF2,
					     BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nE2;
  //
  BooleanOperations_ShapesDataStructure *pDS=myDS;
  BooleanOperations_OnceExplorer aExp(*pDS);
  aExp.Init(nF2, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE2=aExp.Current();
    RealSplitsOnEdge(nE1, nE2, aLPB);
  }
}
//=======================================================================
// function: RealSplitsOnFace
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::RealSplitsOnFace(const Standard_Integer ,//for overriding
					     const Standard_Integer nF1,
					     const Standard_Integer nF2,
					     BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nE1;
  //
  BooleanOperations_ShapesDataStructure *pDS=myDS;
  BooleanOperations_OnceExplorer aExp(*myDS);
  aExp.Init(nF1, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE1=aExp.Current();
    RealSplitsOnFace(nE1, nF2, aLPB);
  }
}

// 2 SimpleSplits
//=======================================================================
// function: SplitsFace
// purpose:
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsFace(const Standard_Integer nF,
						   BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nE;
  TopAbs_ShapeEnum aT;
  BOPTools_ListIteratorOfListOfPaveBlock anIt;
  //
  aT=myDS->GetShapeType(nF);
  //
  if (aT!=TopAbs_FACE) {
    return 1; // Type mismatch
  }
  //
  BooleanOperations_ShapesDataStructure *pDS=myDS;
  BooleanOperations_OnceExplorer aExp(*pDS);
  //
  aExp.Init(nF, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE=aExp.Current();
    const BOPTools_ListOfPaveBlock& aLPBE=mySplitShapesPool(myDS->RefEdge(nE));
    anIt.Initialize(aLPBE);
    for (; anIt.More(); anIt.Next()) {
      const BOPTools_PaveBlock& aPBE=anIt.Value();
      aLPB.Append(aPBE);
    }
  }
  return 0; //Ok
}

//=======================================================================
// function: SplitsInFace
// purpose: splits of edges from nF1 in nF2
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsInFace(const Standard_Integer ,//for overriding
						     const Standard_Integer nF1,
						     const Standard_Integer nF2,
						     BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nE1;
  TopAbs_ShapeEnum aT1, aT2;

  aT1=myDS->GetShapeType(nF1);
  aT2=myDS->GetShapeType(nF2);

  if (aT1!=TopAbs_FACE || aT2!=TopAbs_FACE) {
    return 1; // Type mismatch
  }
  BooleanOperations_ShapesDataStructure *pDS=myDS;
  BooleanOperations_OnceExplorer aExp(*pDS);
  aExp.Init(nF1, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE1=aExp.Current();
    SplitsInFace (nE1, nF2, aLPB);
  }
  return 0; //Ok
}
//=======================================================================
// function: SplitsInFace
// purpose: splits of edge nE1 in aFace2
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsInFace(const Standard_Integer nE1,
						     const Standard_Integer nF2,
						     BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nF1;
  TopAbs_ShapeEnum aT1, aT2;

  aT1=myDS->GetShapeType(nE1);
  aT2=myDS->GetShapeType(nF2);

  if (aT1!=TopAbs_EDGE || aT2!=TopAbs_FACE) {
    return 1; // Type mismatch
  }
  //
  TColStd_ListIteratorOfListOfInteger anItLFCB;
  NMTTools_ListIteratorOfListOfCommonBlock anItCB;
  //
  const NMTTools_ListOfCommonBlock& aLCB=myCommonBlockPool(myDS->RefEdge(nE1));
  //
  anItCB.Initialize(aLCB);
  for (; anItCB.More(); anItCB.Next()) {
    NMTTools_CommonBlock& aCB=anItCB.Value();
    const BOPTools_PaveBlock& aPB1=aCB.PaveBlock1(nE1);

    const TColStd_ListOfInteger& aLFCB=aCB.Faces();
    anItLFCB.Initialize(aLFCB);
    for (; anItLFCB.More(); anItLFCB.Next()) {
      nF1=anItLFCB.Value();
      if (nF1==nF2) {
	aLPB.Append(aPB1);
      }
    }
  }
  return 0; //Ok
}
//=======================================================================
// function: SplitsOnEdge
// purpose:  splits of edge nE1 on nE2
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsOnEdge(const Standard_Integer nE1,
						     const Standard_Integer nE2,
						     BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nE;
  TopAbs_ShapeEnum aT1, aT2;

  aT1=myDS->GetShapeType(nE1);
  aT2=myDS->GetShapeType(nE2);

  if (aT1!=TopAbs_EDGE || aT2!=TopAbs_EDGE) {
    return 1; // Type mismatch
  }
  //
  BOPTools_ListIteratorOfListOfPaveBlock anIt;
  NMTTools_ListIteratorOfListOfCommonBlock anItCB;
  //
  const NMTTools_ListOfCommonBlock& aLCB=myCommonBlockPool(myDS->RefEdge(nE1));

  anItCB.Initialize(aLCB);
  for (; anItCB.More(); anItCB.Next()) {
    NMTTools_CommonBlock& aCB=anItCB.Value();
    const BOPTools_PaveBlock& aPB1=aCB.PaveBlock1(nE1);//XXX
    //
    const BOPTools_ListOfPaveBlock& aLPBx=aCB.PaveBlocks();
    anIt.Initialize(aLPBx);
    for (; anIt.More(); anIt.Next()) {
      const BOPTools_PaveBlock& aPB2=anIt.Value();
      nE=aPB2.OriginalEdge();
      if (nE==nE2) {
	aLPB.Append(aPB1);
      }
    }
  }
  return 0; //Ok
}
//=======================================================================
// function: SplitsOnFace
// purpose:  splits of edge nE1 on face nF2
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsOnFace(const Standard_Integer nE1,
						     const Standard_Integer nF2,
						     BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nE2, ip;
  TopAbs_ShapeEnum aT1, aT2;

  aT1=myDS->GetShapeType(nE1);
  aT2=myDS->GetShapeType(nF2);

  if (aT1!=TopAbs_EDGE || aT2!=TopAbs_FACE) {
    return 1; // Type mismatch
  }
  BooleanOperations_ShapesDataStructure *pDS=myDS;
  BooleanOperations_OnceExplorer aExp(*pDS);
  aExp.Init(nF2, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE2=aExp.Current();
    ip=SplitsOnEdge(nE1, nE2, aLPB);
    if (ip) {
      return ip;
    }
  }
  return 0; //Ok
}
//=======================================================================
// function: SplitsOnFace
// purpose:  splits of edges from face nF1 on face nF2
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsOnFace(const Standard_Integer ,//for overriding
						     const Standard_Integer nF1,
						     const Standard_Integer nF2,
						     BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Integer nE1, ip;
  TopAbs_ShapeEnum aT1, aT2;

  aT1=myDS->GetShapeType(nF1);
  aT2=myDS->GetShapeType(nF2);

  if (aT1!=TopAbs_FACE || aT2!=TopAbs_FACE) {
    return 1; // Type mismatch
  }
  BooleanOperations_ShapesDataStructure *pDS=myDS;
  BooleanOperations_OnceExplorer aExp(*myDS);
  aExp.Init(nF1, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    nE1=aExp.Current();
    ip=SplitsOnFace(nE1, nF2, aLPB);
    if (ip) {
      return ip;
    }
  }
  return 0; //Ok
}

// 3 Simple Splits indices
//=======================================================================
// function: SplitsFace
// purpose:
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsFace(const Standard_Integer nF,
						   TColStd_ListOfInteger& aSplits)
{
  Standard_Integer nE, iErr;
  BOPTools_ListIteratorOfListOfPaveBlock aIt;
  BOPTools_ListOfPaveBlock aLPB;
  //
  iErr=SplitsFace(nF, aLPB);
   if (iErr) {
    return iErr;
  }

  aIt.Initialize(aLPB);
  for (; aIt.More(); aIt.Next()) {
    const BOPTools_PaveBlock& aPB=aIt.Value();
    nE=aPB.Edge();
    aSplits.Append(nE);
  }
  return 0; //Ok
}

//=======================================================================
// function: SplitsInFace
// purpose: splits of edges from nF1 in nF2
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsInFace(const Standard_Integer ,//for overriding
						     const Standard_Integer nF1,
						     const Standard_Integer nF2,
						     TColStd_ListOfInteger& aSplits)
{
  Standard_Integer nE, iErr;
  BOPTools_ListIteratorOfListOfPaveBlock aIt;
  BOPTools_ListOfPaveBlock aLPB;
  //
  iErr=SplitsInFace(0, nF1, nF2, aLPB);
  if (iErr) {
    return iErr;
  }
  aIt.Initialize(aLPB);
  for (; aIt.More(); aIt.Next()) {
    const BOPTools_PaveBlock& aPB=aIt.Value();
    nE=aPB.Edge();
    aSplits.Append(nE);
  }
  return iErr;
}
//=======================================================================
// function: SplitsInFace
// purpose: splits of edge nE1 in aFace2
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsInFace(const Standard_Integer nE1,
						     const Standard_Integer nF2,
						     TColStd_ListOfInteger& aSplits)
{
  Standard_Integer nE, iErr;
  BOPTools_ListIteratorOfListOfPaveBlock aIt;
  BOPTools_ListOfPaveBlock aLPB;
  //
  iErr=SplitsInFace(nE1, nF2, aLPB);
  if (iErr) {
    return iErr;
  }
  aIt.Initialize(aLPB);
  for (; aIt.More(); aIt.Next()) {
    const BOPTools_PaveBlock& aPB=aIt.Value();
    nE=aPB.Edge();
    aSplits.Append(nE);
  }
  return iErr;
}
//=======================================================================
// function: SplitsOnEdge
// purpose:  splits of edge nE1 on nE2
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsOnEdge(const Standard_Integer nE1,
						     const Standard_Integer nE2,
						     TColStd_ListOfInteger& aSplits)
{
  Standard_Integer nE, iErr;
  BOPTools_ListIteratorOfListOfPaveBlock aIt;
  BOPTools_ListOfPaveBlock aLPB;
  //
  iErr=SplitsOnEdge(nE1, nE2, aLPB);
  if (iErr) {
    return iErr;
  }
  aIt.Initialize(aLPB);
  for (; aIt.More(); aIt.Next()) {
    const BOPTools_PaveBlock& aPB=aIt.Value();
    nE=aPB.Edge();
    aSplits.Append(nE);
  }
  return iErr;
}
//=======================================================================
// function: SplitsOnFace
// purpose:  splits of edge nE1 on face nF2
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsOnFace(const Standard_Integer nE1,
						     const Standard_Integer nF2,
						     TColStd_ListOfInteger& aSplits)
{
  Standard_Integer nE, iErr;
  BOPTools_ListIteratorOfListOfPaveBlock aIt;
  BOPTools_ListOfPaveBlock aLPB;
  //
  iErr=SplitsOnEdge(nE1, nF2, aLPB);
  if (iErr) {
    return iErr;
  }
  aIt.Initialize(aLPB);
  for (; aIt.More(); aIt.Next()) {
    const BOPTools_PaveBlock& aPB=aIt.Value();
    nE=aPB.Edge();
    aSplits.Append(nE);
  }
  return iErr;
}
//=======================================================================
// function: SplitsOnFace
// purpose:  splits of edges from face nF1 on face nF2
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::SplitsOnFace(const Standard_Integer ,//for overriding
						     const Standard_Integer nF1,
						     const Standard_Integer nF2,
						     TColStd_ListOfInteger& aSplits)
{
  Standard_Integer nE, iErr;
  BOPTools_ListIteratorOfListOfPaveBlock aIt;
  BOPTools_ListOfPaveBlock aLPB;
  //
  iErr=SplitsOnFace(0, nF1, nF2, aLPB);
   if (iErr) {
    return iErr;
  }

  aIt.Initialize(aLPB);
  for (; aIt.More(); aIt.Next()) {
    const BOPTools_PaveBlock& aPB=aIt.Value();
    nE=aPB.Edge();
    aSplits.Append(nE);
  }
  return 0; //Ok
}
