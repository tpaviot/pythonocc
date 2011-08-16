//  Copyright (C) 2007-2010  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:        NMTDS_Iterator.cxx
// Created:     Sun May 07 15:04:41 2006
// Author:      Peter KURNEV
//
#include <NMTDS_Iterator.ixx>
//
#include <Bnd_Box.hxx>
//
#include <TColStd_ListOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <TColStd_MapIteratorOfMapOfInteger.hxx>
#include <TColStd_DataMapOfIntegerInteger.hxx>
#include <TColStd_DataMapOfIntegerListOfInteger.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>
#include <TColStd_MapOfInteger.hxx>
//
#include <TopoDS.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Shape.hxx>
//
#include <TopTools_DataMapOfShapeInteger.hxx>
//
#include <NMTDS_BoxBndTree.hxx>
#include <NCollection_UBTreeFiller.hxx>
#include <NMTDS_CArray1OfIndexRange.hxx>
#include <NMTDS_IndexRange.hxx>
#include <NMTDS_PassKeyBoolean.hxx>
#include <NMTDS_MapOfPassKeyBoolean.hxx>
#include <NMTDS_IndexedDataMapOfShapeBox.hxx>
#include <NMTDS_IndexedDataMapOfIntegerShape.hxx>
#include <NMTDS_Tools.hxx>
#include <NMTDS_DataMapOfIntegerMapOfInteger.hxx>
#include <NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger.hxx>

//=======================================================================
//function : NMTDS_Iterator
//purpose  : 
//=======================================================================
  NMTDS_Iterator::NMTDS_Iterator()
{
  myDS=NULL; 
  myLength=0;
}
//=======================================================================
//function : ~NMTDS_Iterator
//purpose  : 
//=======================================================================
  NMTDS_Iterator::~NMTDS_Iterator()
{
}
//=======================================================================
// function: SetDS
// purpose: 
//=======================================================================
  void NMTDS_Iterator::SetDS(const NMTDS_PShapesDataStructure& aDS)
{
  myDS=aDS;
}
//=======================================================================
// function: DS
// purpose: 
//=======================================================================
  const NMTDS_ShapesDataStructure&  NMTDS_Iterator::DS()const
{
  return *myDS;
}
//=======================================================================
// function: ExpectedLength
// purpose: 
//=======================================================================
  Standard_Integer NMTDS_Iterator::ExpectedLength() const
{
  return myLength;
}
//=======================================================================
// function: BlockLength
// purpose: 
//=======================================================================
  Standard_Integer NMTDS_Iterator::BlockLength() const
{
  Standard_Integer aNbIIs;
  Standard_Real aCfPredict=.5;
  
  aNbIIs=ExpectedLength();
  
  if (aNbIIs<=1) {
    return 1;
  }
  //
  aNbIIs=(Standard_Integer) (aCfPredict*(Standard_Real)aNbIIs);
  return aNbIIs;
}
//=======================================================================
// function: Initialize
// purpose: 
//=======================================================================
  void NMTDS_Iterator::Initialize(const TopAbs_ShapeEnum aType1,
                                  const TopAbs_ShapeEnum aType2)
{
  Standard_Integer iX;
  //
  iX=NMTDS_Tools::TypeToInteger(aType1, aType2);
  if (iX>=0) {
    myIterator.Initialize(myLists[iX]);
    myLength=myLists[iX].Extent();
  }
  else {
    myIterator.Initialize(myEmptyList);
    myLength=0;
  }
}
//=======================================================================
// function: More
// purpose: 
//=======================================================================
  Standard_Boolean NMTDS_Iterator::More()const
{
  return myIterator.More();
}
//=======================================================================
// function: Next
// purpose: 
//=======================================================================
  void NMTDS_Iterator::Next()
{
  myIterator.Next();
}
//=======================================================================
// function: Current
// purpose: 
//=======================================================================
  void NMTDS_Iterator::Current(Standard_Integer& aIndex1,
                               Standard_Integer& aIndex2,
                               Standard_Boolean& aWithSubShape) const
{
  const NMTDS_PassKeyBoolean& aPKB=myIterator.Value();
  aPKB.Ids(aIndex1, aIndex2);
  aWithSubShape=aPKB.Flag();
}
//=======================================================================
// function: SDVertices
// purpose: 
//=======================================================================
  const TColStd_DataMapOfIntegerListOfInteger& NMTDS_Iterator::SDVertices()const
{
  return myMVSD;
}
//=======================================================================
// function: Prepare
// purpose: 
//=======================================================================
  void NMTDS_Iterator::Prepare()
{
  Standard_Integer i;
  //
  myLength=0;
  for (i=0; i<6; ++i) {
    myLists[i].Clear();
  }
  myMVSD.Clear();
  //
  if (myDS==NULL){
    return;
  }
  Intersect();
}
//=======================================================================
// function: Intersect
// purpose: 
//=======================================================================
  void NMTDS_Iterator::Intersect()
{
  Standard_Boolean bFlag;
  Standard_Integer aNb, i, aNbB, aNbR, iFlag;
  Standard_Integer i1, i2, aNbSD, iX, j, iDS, jB, iR, k, aNbLV, aNbLV1;
  TColStd_ListIteratorOfListOfInteger aIt;
  TColStd_DataMapOfIntegerInteger aMII;
  TColStd_DataMapOfIntegerListOfInteger aMVSD;
  TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger aItVSD;
  TopTools_DataMapOfShapeInteger aMSI;
  TopAbs_ShapeEnum aTi, aTj;
  NMTDS_PassKeyBoolean aPKXB; 
  NMTDS_MapOfPassKeyBoolean aMPKXB;
  NMTDS_IndexedDataMapOfShapeBox aMSB;
  //
  NMTDS_BoxBndTreeSelector aSelector;
  NMTDS_BoxBndTree aBBTree;
  NCollection_UBTreeFiller <Standard_Integer, Bnd_Box> aTreeFiller(aBBTree);
  //
  const NMTDS_CArray1OfIndexRange& aRanges=myDS->Ranges();
  aNbR=aRanges.Extent();
  //
  aNb=myDS->NumberOfShapesOfTheObject();
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape& aS=myDS->Shape(i);
    aTi=aS.ShapeType();
    if (NMTDS_Tools::HasBRep(aTi)) {
      Bnd_Box aBoxEx;
      //
      myDS->ComputeBoxEx(i, aBoxEx);
      aMSI.Bind(aS, i);
      aMSB.Add(aS, aBoxEx);
    }
  }
  //
  aNbB=aMSB.Extent();
  //
  for (i=1; i<=aNbB; ++i) {
    const TopoDS_Shape& aS=aMSB.FindKey(i);
    const Bnd_Box& aBoxEx=aMSB(i);
    //
    aTreeFiller.Add(i, aBoxEx);
    //
    iDS=aMSI.Find(aS);
    aMII.Bind(i, iDS);
  }
  //
  aTreeFiller.Fill();
  //
  for (iR=1; iR<aNbR; ++iR) {
    const NMTDS_IndexRange& aR=aRanges(iR);
    i1=aR.First();
    i2=aR.Last();
    for (i=i1; i<=i2; ++i) {
      const TopoDS_Shape& aSi=myDS->Shape(i);
      aTi=aSi.ShapeType();
      if (!NMTDS_Tools::HasBRep(aTi)){
        continue;
      }
      const Bnd_Box& aBoxEx=aMSB.FindFromKey(aSi);
      aSelector.Clear();
      aSelector.SetBox(aBoxEx);
      //
      aNbSD=aBBTree.Select(aSelector);
      //
      if (!aNbSD){
        continue;
      }
      //
      const TColStd_ListOfInteger& aLI=aSelector.Indices();
      //
      k=0;
      TColStd_ListOfInteger aLV;
      //
      aIt.Initialize(aLI);
      for (; aIt.More(); aIt.Next()) {
        jB=aIt.Value();  // box index in MII
        j=aMII.Find(jB); // DS index
        if (j>=i1 && j<=i2) {
          continue;// same range
        }
        //
        aPKXB.SetIds(i, j);
        //
        if (aMPKXB.Add(aPKXB)) {
          bFlag=Standard_False;// Bounding boxes are intersected
          const Bnd_Box& aBoxi=myDS->GetBoundingBox(i);
          const Bnd_Box& aBoxj=myDS->GetBoundingBox(j);
          if (aBoxi.IsOut(aBoxj)) {
            bFlag=!bFlag; //Bounding boxes of Sub-shapes are intersected
          }
          const TopoDS_Shape& aSj=myDS->Shape(j);
          aTj=aSj.ShapeType();
          iX=NMTDS_Tools::TypeToInteger(aTi, aTj);
          //bFlag=(iStatus==2);
          aPKXB.SetFlag(bFlag);
          myLists[iX].Append(aPKXB);
          //
          // VSD prepare
          if (iX==5) { //VV
            aLV.Append(j);
          }
        }// if (aMPKXB.Add(aPKXB)) {
      }// for (; aIt.More(); aIt.Next()) {
      //
      // VSD treatment
      aNbLV=aLV.Extent();
      if (aNbLV) {
        TColStd_ListOfInteger aLV1;
        //
        const TopoDS_Vertex& aVi=TopoDS::Vertex(aSi);
        aIt.Initialize(aLV);
        for (; aIt.More(); aIt.Next()) {
          j=aIt.Value();  
          const TopoDS_Shape&  aSj=myDS->Shape(j);
          const TopoDS_Vertex& aVj=TopoDS::Vertex(aSj);
          iFlag=NMTDS_Tools::ComputeVV(aVi, aVj);
          if (!iFlag) {
            aLV1.Append(j);
          }
          else {
            aPKXB.SetIds(i, j);
            aMPKXB.Remove(aPKXB);
          }
        }
	//
	//modified by NIZNHY-PKV Mon Sep 27 08:31:04 2010f
	aNbLV1=aLV1.Extent();
	if (aNbLV1) {
	  aMVSD.Bind(i, aLV1);
	}
	//aMVSD.Bind(i, aLV1);
	//modified by NIZNHY-PKV Mon Sep 27 08:31:21 2010t
      }
    }//for (i=i1; i<=i2; ++i) {
  }//for (iR=1; iR<aNbR; ++iR) {
  //
  //
  // Chains
  //=================
  myMVSD.Clear();
  NMTDS_Iterator::FillMVSD(aMVSD, myMVSD);
}
//=======================================================================
//function : FillMVSD
//purpose  : 
//=======================================================================
  void NMTDS_Iterator::FillMVSD(const TColStd_DataMapOfIntegerListOfInteger& aMVSD,
                                TColStd_DataMapOfIntegerListOfInteger& bMVSD)
{
  Standard_Boolean bFound;
  Standard_Integer aNbVSD, iCnt, i, j, k;
  TColStd_ListOfInteger aLV;
  TColStd_ListIteratorOfListOfInteger aIt;
  TColStd_MapOfInteger aMF;
  TColStd_MapIteratorOfMapOfInteger aItMI;
  TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger aItVSD;
  NMTDS_DataMapOfIntegerMapOfInteger aDMIMI;
  NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger aIti, aItj;
  //
  aNbVSD=aMVSD.Extent();
  if (!aNbVSD) {
    return;
  }
  //
  aItVSD.Initialize(aMVSD);
  for (; aItVSD.More(); aItVSD.Next()) {
    TColStd_MapOfInteger aMI;
    //
    i=aItVSD.Key();
    aMI.Add(i);
    const TColStd_ListOfInteger& aLVSD=aItVSD.Value();
    aIt.Initialize(aLVSD);
    for (; aIt.More(); aIt.Next()) {
      j=aIt.Value();
      aMI.Add(j);
    }
    aDMIMI.Bind(i, aMI);
  }
  // i
  aIti.Initialize(aDMIMI);
  for (; aIti.More(); aIti.Next()) {
    i=aIti.Key();
    if (aMF.Contains(i)) {
      continue;
    }
    aMF.Add(i);
    //
    //TColStd_MapOfInteger& aMIi=aDMIMI.ChangeFind(i);
    TColStd_MapOfInteger *pMIi=(TColStd_MapOfInteger *)&aIti.Value();
    TColStd_MapOfInteger& aMIi=*pMIi;
    //  j
    while (1) {
      iCnt=0;
      aItj.Initialize(aDMIMI);
      for (; aItj.More(); aItj.Next()) {
        j=aItj.Key();
        if (aMF.Contains(j)) {
          continue;
        }
        //
        //TColStd_MapOfInteger& aMIj=aDMIMI.ChangeFind(j);
        TColStd_MapOfInteger *pMj=(TColStd_MapOfInteger *)&aItj.Value();
        TColStd_MapOfInteger& aMIj=*pMj;
        //
        aItMI.Initialize(aMIj);
        for (; aItMI.More(); aItMI.Next()) {
          k=aItMI.Key();
          bFound=aMIi.Contains(k);
          if (bFound) {
            break;
          }
        }
        if (!bFound) {
          continue;
        }
        //
        aItMI.Initialize(aMIj);
        for (; aItMI.More(); aItMI.Next()) {
          k=aItMI.Key();
          aMIi.Add(k);
        }
        //
        if (aMF.Add(j)) {
          ++iCnt;
        }
      } //for (; aItj.More(); aItj.Next()) {
      if (!iCnt) {
        break;
      }
    } // while (1) {
    //
    aLV.Clear();
    aItMI.Initialize(aMIi);
    for (; aItMI.More(); aItMI.Next()) {
      k=aItMI.Key();
        if (k!=i) {
          aLV.Append(k);
        }
    }
    bMVSD.Bind(i, aLV);
  }// for (; aIti.More(); aIti.Next()) {
}

  /*  
  {
    // check
    TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger aItX;
    //
    printf(" \n");
    printf(" myMVSD.Extent()=%d\n", myMVSD.Extent());
    aItX.Initialize(myMVSD);
    for (; aItX.More(); aItX.Next()) {
      i=aItX.Key();
      printf(" i=%d (", i);
      const TColStd_ListOfInteger& aLV=aItX.Value();
      aIt.Initialize(aLV);
      for (; aIt.More(); aIt.Next()) {
        j=aIt.Value();
        printf(" %d", j);
      }
      printf(")\n");
    }
  }
*/

