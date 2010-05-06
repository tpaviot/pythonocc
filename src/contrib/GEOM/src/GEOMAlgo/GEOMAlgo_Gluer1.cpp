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
// File:	GEOMAlgo_Gluer1.cxx
// Created:	Wed Jan 24 11:52:27 2007
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_Gluer1.ixx>

#include <Geom_Surface.hxx>

#include <TopLoc_Location.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Iterator.hxx>

#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>

#include <TopExp.hxx>

#include <TopTools_DataMapIteratorOfDataMapOfShapeShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>

#include <GEOMAlgo_CoupleOfShapes.hxx>
#include <GEOMAlgo_PassKeyShape.hxx>
#include <GEOMAlgo_ListIteratorOfListOfCoupleOfShapes.hxx>
#include <GEOMAlgo_DataMapOfPassKeyShapeShape.hxx>
#include <GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape.hxx>
 
//=======================================================================
//class : GEOMAlgo_CoupleOfInteger
//purpose  : 
//=======================================================================
class GEOMAlgo_CoupleOfInteger {
 //
 public:
  //
  GEOMAlgo_CoupleOfInteger() {
    myInt1=0;
    myInt2=0;
  }
  //
  ~GEOMAlgo_CoupleOfInteger() {
  }
  //
  void SetValues(const Standard_Integer aI1,
		 const Standard_Integer aI2) {
    myInt1=aI1;    
    myInt2=aI2;
  }
  //
  void SetValue1(const Standard_Integer aI1) {
    myInt1=aI1;    
  }
  //
  void SetValue2(const Standard_Integer aI1) {
    myInt1=aI1;    
  }
  //
  void Values(Standard_Integer& aI1,
	      Standard_Integer& aI2) const {
    aI1=myInt1;    
    aI2=myInt2;
  }
  //
  Standard_Integer Value1()const {
    return myInt1;    
  }
  //
  Standard_Integer Value2()const {
    return myInt2;    
  }
  //
 protected:
  Standard_Integer myInt1;
  Standard_Integer myInt2;
};
//
//=======================================================================
//
static
  void SortShell(const Standard_Integer , 
		 GEOMAlgo_CoupleOfInteger* );
static
  void RefineSolid(const TopoDS_Shape& ,
		   const TopTools_DataMapOfShapeShape& ,
		   TopTools_DataMapOfShapeShape& );
static
  void MakeFaceToReplace(const TopoDS_Face& ,
			 TopoDS_Face& );
//
//=======================================================================
//function : GEOMAlgo_Gluer1
//purpose  : 
//=======================================================================
  GEOMAlgo_Gluer1::GEOMAlgo_Gluer1()
:
  GEOMAlgo_Gluer()
{
}
//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  GEOMAlgo_Gluer1::~GEOMAlgo_Gluer1()
{
}
//=======================================================================
//function : SetFacesToUnglue
//purpose  : 
//=======================================================================
  void GEOMAlgo_Gluer1::SetFacesToUnglue(const GEOMAlgo_ListOfCoupleOfShapes& aLCS)
{
  myFacesToUnglue=aLCS;
}
//=======================================================================
//function : FacesToUnglue
//purpose  : 
//=======================================================================
  const GEOMAlgo_ListOfCoupleOfShapes& GEOMAlgo_Gluer1::FacesToUnglue()const
{
  return myFacesToUnglue;
}
//=======================================================================
//function : GluedFaces
//purpose  : 
//=======================================================================
  const GEOMAlgo_ListOfCoupleOfShapes& GEOMAlgo_Gluer1::GluedFaces()const
{
  return myGluedFaces;
}
//=======================================================================
//function : RejectedFaces
//purpose  : 
//=======================================================================
  const GEOMAlgo_ListOfCoupleOfShapes& GEOMAlgo_Gluer1::RejectedFaces()const
{
  return myRejectedFaces;
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
  void GEOMAlgo_Gluer1::Perform()
{
  // 1.
  GEOMAlgo_Gluer::Perform();
  if (myErrorStatus) {
    return;
  }
  //
  FillGluedFaces();
    if (myErrorStatus) {
    return;
  }
}
//=======================================================================
//function : FillGluedFaces
//purpose  : 
//=======================================================================
  void GEOMAlgo_Gluer1::FillGluedFaces()
{
  myErrorStatus=0;
  //
  Standard_Integer aNbIm, aNbS, i;
  TopAbs_ShapeEnum aType;
  TopTools_ListIteratorOfListOfShape aItLS;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItIm;
  GEOMAlgo_CoupleOfShapes aCS;
  GEOMAlgo_PassKeyShape aPKS;
  //
  myMapGN.Clear();
  myGluedFaces.Clear();
  //
  aNbIm=myImages.Extent();
  aItIm.Initialize(myImages);
  for (; aItIm.More(); aItIm.Next()) {
    const TopoDS_Shape& aSnew=aItIm.Key();
    aType=aSnew.ShapeType();
    if (aType!=TopAbs_FACE) {
      continue;
    }
    //
    const TopTools_ListOfShape& aLS=aItIm.Value();
    aNbS=aLS.Extent();
    if (aNbS!=2) {
      continue;
    }
    //
    TopoDS_Shape aSold[2];
    aItLS.Initialize(aLS);
    for (i=0; aItLS.More(); aItLS.Next(), ++i) {
      const TopoDS_Shape& aSi=aItLS.Value();
      aSold[i]=aItLS.Value();
    }
    //
    aCS.SetShapes(aSold[0], aSold[1]);
    myGluedFaces.Append(aCS);
    //
    aPKS.Clear();
    aPKS.SetShapes(aSold[0], aSold[1]);
    myMapGN.Bind(aPKS, aSnew);
  }
}
//=======================================================================
//function : UnglueFaces
//purpose  : 
//=======================================================================
  void GEOMAlgo_Gluer1::UnglueFaces()
{
  if (myErrorStatus) {
    return;
  }
  //
  Standard_Boolean bFound;
  Standard_Integer i, aNbUN, aNbS, aNbF, iX;
  TopTools_IndexedDataMapOfShapeListOfShape aMFSR, aMFS, aMSF;
  TopTools_ListIteratorOfListOfShape aItLS, aItLS1;
  GEOMAlgo_PassKeyShape aPKS;
  GEOMAlgo_ListIteratorOfListOfCoupleOfShapes aItCS;
  GEOMAlgo_DataMapOfPassKeyShapeShape aMapUN;
  GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape aItUN;
  GEOMAlgo_CoupleOfInteger *pIx;
  //
  if (myResult.IsNull()) {
    myErrorStatus=200; // no result
    return;
  }
  myWarningStatus=0;
  myRejectedFaces.Clear();
  //
  // 0. Fill map [Face]/Solid for myResult: aMFSR
  TopExp::MapShapesAndAncestors(myResult, TopAbs_FACE, TopAbs_SOLID, aMFSR);
  //
  // 1. Fill Faces to process:  aMapUN : [Fold1, Fold2] / Fnew
  aNbUN=myFacesToUnglue.Extent();
  if (!aNbUN) {
    // all faces that can be unglued will be unglued
    aMapUN=myMapGN;
    myFacesToUnglue=myGluedFaces;
  }
  else {
    aItCS.Initialize(myFacesToUnglue);
    for (; aItCS.More(); aItCS.Next()) {
      const GEOMAlgo_CoupleOfShapes& aCS=aItCS.Value();
      const TopoDS_Shape& aS1=aCS.Shape1();
      const TopoDS_Shape& aS2=aCS.Shape2();
      aPKS.Clear();
      aPKS.SetShapes(aS1, aS2);
      if (!myMapGN.IsBound(aPKS)) {
	//some faces, wanted to unglue, are not glued at all;
	myWarningStatus=2; 
	myRejectedFaces.Append(aCS);
	continue;
      }
      //
      const TopoDS_Shape& aFN=myMapGN.Find(aPKS);
      aMapUN.Bind(aPKS, aFN);
    }
  }
  //
  // 2 Fill map FN/Solids for myResult: aMFS
  aNbUN=aMapUN.Extent();
  aItUN.Initialize(aMapUN);
  for (; aItUN.More(); aItUN.Next()) {
    const TopoDS_Shape& aFN=aItUN.Value();
    if (!aMFSR.Contains(aFN)) {
      myWarningStatus=3; // how can it be
      continue;
    }
    //
    const TopTools_ListOfShape& aLS=aMFSR.FindFromKey(aFN);
    aNbS=aLS.Extent();
    if (aNbS!=2) {
      // wrong result: More than 2 solids shared one face
      myWarningStatus=4; 
      continue;
    }
    aMFS.Add(aFN, aLS);
  }
  //
  // 3 Fill map Solids/FN for myResult: aMSF
  aNbUN=aMFS.Extent();
  for (i=1; i<=aNbUN; ++i) {
    const TopoDS_Shape& aFN=aMFS.FindKey(i);
    const TopTools_ListOfShape& aLS=aMFS(i);
    aItLS.Initialize(aLS);
    for (; aItLS.More(); aItLS.Next()) {
      const TopoDS_Shape& aS=aItLS.Value();
      if (aMSF.Contains(aS)) {
	TopTools_ListOfShape& aLF=aMSF.ChangeFromKey(aS);
	aLF.Append(aFN);
      }
      else {
	TopTools_ListOfShape aLF;
	aLF.Append(aFN);
	aMSF.Add(aS, aLF); 
      }
    }
  }
  //
  // 4 Sort indices of aMSF
  aNbS=aMSF.Extent();
  if (aNbS<2) {
    // wrong number of solids that have shared face 
    myWarningStatus=5;
  }
  //
  pIx=new GEOMAlgo_CoupleOfInteger[aNbS];
  //
  for (i=1; i<=aNbS; ++i) {
    const TopTools_ListOfShape& aLF=aMSF(i);
    aNbF=aLF.Extent();
    pIx[i-1].SetValues(aNbF, i);
  }
  SortShell(aNbS, pIx);
  //
  // 5 Refine solids
  //
  TopTools_DataMapOfShapeShape aMFNFN2, aMFNFD;
  TopTools_DataMapIteratorOfDataMapOfShapeShape aItMSS;
  TopTools_MapOfShape aMFNP;
  TopTools_IndexedMapOfShape aMFD;
  //
  for (iX=aNbS-1; iX>=0; --iX) {
    i=pIx[iX].Value2();
    // solid from myResult aSN
    const TopoDS_Shape& aSN=aMSF.FindKey(i);
    //
    // candidates to be faces to replace for aSN 
    const TopTools_ListOfShape& aLFN=aMSF(i);
    aNbF=aLFN.Extent();
    // 
    // original solid for aSN -> aSD
    const TopTools_ListOfShape& aLSD=myImages.Find(aSN);
    const TopoDS_Shape& aSD=aLSD.First();
    //
    // faces of original solid -> aMFD
    aMFD.Clear();
    TopExp::MapShapes(aSD, TopAbs_FACE, aMFD);
    //
    // faces to replace for aSN [FN]/FD -> aMFNFD
    aMFNFD.Clear();
    aItLS.Initialize(aLFN);
    for (; aItLS.More(); aItLS.Next()) {
      const TopoDS_Shape& aFN=aItLS.Value();
      if (!aMFNP.Add(aFN)) {
	continue;
      }
      // 
      // original face from original solid -> FD  
      TopoDS_Shape aFD;
      //
      bFound=Standard_False;
      const TopTools_ListOfShape& aLFD=myImages.Find(aFN);
      aItLS1.Initialize(aLFD);
      for (; aItLS1.More(); aItLS1.Next()) {
	const TopoDS_Shape& aFDx=aItLS1.Value();
	if (aMFD.Contains(aFDx)) {
	  aFD=aFDx;
	  bFound=Standard_True;
	  break;
	}
      }
      //if (!bFound) {...}
      aMFNFD.Bind(aFN, aFD);
    } // for (; aItLS.More(); aItLS.Next()) {
    //
    aNbF=aMFNFD.Extent();
    if (!aNbF) {
      // nothing to do here
      continue;
    }
    // update solid SN (and its shells)
    RefineSolid(aSN, aMFNFD, aMFNFN2);
    //
    // update myOrigins / myImages
    aItMSS.Initialize(aMFNFD);
    for (; aItMSS.More(); aItMSS.Next()) {
      const TopoDS_Shape& aFN=aItMSS.Key();      // face removed from aSN
      const TopoDS_Shape& aFD=aItMSS.Value();    // old face from aSD
      const TopoDS_Shape& aFN2=aMFNFN2.Find(aFN);// face added to aSN 
      //
      // myOrigins
      myOrigins.ChangeFind(aFD)=aFN2;
      //
      // myImages
      TopTools_ListOfShape aLFDx;
      //
      TopTools_ListOfShape& aLFD=myImages.ChangeFind(aFN);
      aItLS.Initialize(aLFD);
      for (; aItLS.More(); aItLS.Next()) {
	const TopoDS_Shape& aFDx=aItLS.Value();
	if (!aFDx.IsSame(aFD)) {
	  aLFDx.Append(aFDx);
	}
      }
      aLFD=aLFDx;
      //
      aLFDx.Clear();
      aLFDx.Append(aFD);
      myImages.Bind(aFN2, aLFDx);
    } // for (; aItMSS.More(); aItMSS.Next()) {
  } // for (iX=aNbS-1; iX>=0; --iX) {
  //
  delete [] pIx;
}
//=======================================================================
// function: RefineSolid
// purpose : replace faces (aMFN) of solid aSd by new ones 
//=======================================================================
void RefineSolid(const TopoDS_Shape& aSd,
		 const TopTools_DataMapOfShapeShape& aMFNFD,
		 TopTools_DataMapOfShapeShape& aMFNFN2)
{
  TopoDS_Shape *pSh;
  TopoDS_Face aF2;
  TopoDS_Iterator aItSd, aItSh;
  BRep_Builder aBB;
  TopTools_ListOfShape aLF;
  TopTools_ListIteratorOfListOfShape aItLF;
  //
  aItSd.Initialize(aSd);
  for (; aItSd.More(); aItSd.Next()) {
    const TopoDS_Shape& aSh=aItSd.Value();
    pSh=(TopoDS_Shape *)&aSh;
    pSh->Free(Standard_True);
    aLF.Clear();
    aItSh.Initialize(*pSh);
    for (; aItSh.More(); aItSh.Next()) {
      const TopoDS_Shape& aF=aItSh.Value();
      if (aMFNFD.IsBound(aF)) {
	aLF.Append(aF);
      }
    }
    //
    aItLF.Initialize(aLF);
    for (; aItLF.More(); aItLF.Next()) {
      const TopoDS_Face& aF=TopoDS::Face(aItLF.Value());
      //
      MakeFaceToReplace(aF, aF2);
      //
      aMFNFN2.Bind(aF, aF2);
      aBB.Remove(*pSh, aF);
      aBB.Add(*pSh, aF2);
    }
    pSh->Free(Standard_False);
  }
}
//=======================================================================
//function : MakeFaceToReplace
//purpose  : 
//=======================================================================
void MakeFaceToReplace(const TopoDS_Face& aF,
		       TopoDS_Face& aFR)
{
  Standard_Real aTol;
  Handle(Geom_Surface) aS;
  TopLoc_Location aLoc;
  TopoDS_Face aFFWD, aFnew;
  TopoDS_Iterator aItF;
  BRep_Builder aBB;
  //
  aFFWD=aF;
  aFFWD.Orientation(TopAbs_FORWARD);
  aS=BRep_Tool::Surface(aFFWD, aLoc);
  aTol=BRep_Tool::Tolerance(aFFWD);
  //
  aBB.MakeFace (aFnew, aS, aLoc, aTol);
  aItF.Initialize(aFFWD);
  for (; aItF.More(); aItF.Next()) {
    const TopoDS_Shape& aW=aItF.Value();
    aBB.Add(aFnew, aW);
  }
  aFnew.Orientation(aF.Orientation());
  aFR=aFnew;
}
//=======================================================================
// function: SortShell
// purpose : 
//=======================================================================
void SortShell(const Standard_Integer n, 
	       GEOMAlgo_CoupleOfInteger* a) 
{
  Standard_Integer nd, i, j, l, d=1;
  GEOMAlgo_CoupleOfInteger x;
  //
  while(d<=n) {
    d*=2;
  }
  //
  while (d) {
    d=(d-1)/2;
    //
    nd=n-d;
    for (i=0; i<nd; ++i) {
      j=i;
    m30:;
      l=j+d;
      if (a[l].Value1() < a[j].Value1()) {
	x=a[j];
	a[j]=a[l];
	a[l]=x;
	j-=d;
	if (j > -1) { 
	  goto m30;
	}
      }//if (a[l] < a[j]){
    }//for (i=0; i<nd; ++i) 
  }//while (1)
}
//
// ErrorStatus
//
// 200; - result shape is Null
