// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:        NMTDS_IteratorChecker.hxx
// Author:      Peter KURNEV

#include <NMTDS_IteratorCheckerSI.hxx>

#include <TopAbs_ShapeEnum.hxx>
#include <gp_Pnt.hxx>
#include <Bnd_Box.hxx>
//
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS.hxx>
#include <BRep_Tool.hxx>
//
#include <TColStd_IndexedMapOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <TColStd_DataMapOfIntegerInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <TColStd_MapIteratorOfMapOfInteger.hxx>
#include <TColStd_DataMapOfIntegerListOfInteger.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>
//
#include <TopTools_DataMapOfShapeInteger.hxx>
//
#include <NCollection_UBTreeFiller.hxx>
#include <NMTDS_BoxBndTree.hxx>
#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTDS_CArray1OfIndexRange.hxx>
#include <NMTDS_IndexRange.hxx>
#include <NMTDS_PairBoolean.hxx>
#include <NMTDS_MapOfPairBoolean.hxx>
#include <NMTDS_IndexedDataMapOfShapeBox.hxx>
#include <NMTDS_Tools.hxx>

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
NMTDS_IteratorCheckerSI::NMTDS_IteratorCheckerSI()
:
  NMTDS_Iterator()
{
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
NMTDS_IteratorCheckerSI::~NMTDS_IteratorCheckerSI()
{
}
//=======================================================================
// function: Intersect
// purpose: 
//=======================================================================
void NMTDS_IteratorCheckerSI::Intersect()
{
  Standard_Boolean bFlag;
  Standard_Integer aNbS, i, aNbA, aNbB, iFlag;
  Standard_Integer aNbSD, iX, j, iDS, jB, k, aNbLV;
  TColStd_ListIteratorOfListOfInteger aIt;
  TColStd_DataMapOfIntegerInteger aMII;
  TColStd_DataMapOfIntegerListOfInteger aMVSD;
  TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger aItVSD;
  TopTools_DataMapOfShapeInteger aMSI;
  TopAbs_ShapeEnum aTi, aTj;
  NMTDS_PairBoolean aPKXB; 
  NMTDS_MapOfPairBoolean aMPKXB;
  NMTDS_IndexedDataMapOfShapeBox aMSB;
  NMTDS_MapOfPairBoolean aMPA;//myPairsAvoid
  //
  NMTDS_BoxBndTreeSelector aSelector;
  NMTDS_BoxBndTree aBBTree;
  NCollection_UBTreeFiller <Standard_Integer, Bnd_Box> aTreeFiller(aBBTree);
  //
  aNbS=myDS->NumberOfShapesOfTheObject();
  //
  // myPairsAvoid, aMSI, aMSB
  for (i=1; i<=aNbS; ++i) {
    const TopoDS_Shape& aSi=myDS->Shape(i);
    aTi=aSi.ShapeType();
    if (NMTDS_Tools::HasBRep(aTi)) {
      if (aTi!=TopAbs_VERTEX) {
        TColStd_IndexedMapOfInteger aMA;
        //
        myDS->GetAllSuccessors(i, aMA);
        //
        aNbA=aMA.Extent();
        for (j=1; j<=aNbA; ++j) {
          iX=aMA(j);
          aPKXB.Clear();
          aPKXB.SetIds(i, iX);
          aMPA.Add(aPKXB);
        }
      }
      else {
        aPKXB.Clear();
        aPKXB.SetIds(i, i);
        aMPA.Add(aPKXB);
      }
      //
      Bnd_Box aBoxEx;
      //
      myDS->ComputeBoxEx(i, aBoxEx);
      aMSI.Bind(aSi, i);
      aMSB.Add(aSi, aBoxEx);
    }
  }
  // 
  // aMII
  aNbB=aMSB.Extent();
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
  for (i=1; i<=aNbS; ++i) {
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
      //
      aPKXB.SetIds(i, j);
      if (aMPA.Contains(aPKXB)) {
        continue;
      }
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
      aMVSD.Bind(i, aLV1);
    }
  }//for (i=1; i<=aNbS; ++i) {
  //
  //
  // 2. Chains
  //=================
  myMVSD.Clear();
  NMTDS_Iterator::FillMVSD(aMVSD, myMVSD);
}

