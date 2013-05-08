// Copyright (C) 2007-2011  CEA/DEN, EDF R&D, OPEN CASCADE
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
// File:	GEOMAlgo_Gluer2_3.cxx
// Created:	
// Author:	Peter KURNEV

#include <GEOMAlgo_Gluer2.hxx>

#include <TopAbs_ShapeEnum.hxx>

#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>

#include <BRep_Tool.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>

#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <NMTTools_CoupleOfShape.hxx>
#include <NMTTools_ListOfCoupleOfShape.hxx>
#include <NMTTools_ListIteratorOfListOfCoupleOfShape.hxx>
#include <NMTTools_IndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include <NMTTools_Tools.hxx>

#include <GEOMAlgo_GlueDetector.hxx>


static
  void MapShapes1(const TopoDS_Shape& aS,
		  const TopAbs_ShapeEnum aType,
		  TopTools_IndexedMapOfShape& aM);

//=======================================================================
//function : Detect
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::Detect()
{
  Standard_Boolean bCheckGeometry;
  Standard_Integer iErr, aNbSD;
  TopTools_ListIteratorOfListOfShape aItLS;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItDMSLS;
  GEOMAlgo_GlueDetector aDetector;
  //
  myErrorStatus=0;
  myWarningStatus=0;
  //
  myImagesDetected.Clear();
  myOriginsDetected.Clear();
  //
  bCheckGeometry=Standard_True;
  aDetector.SetArgument(myArgument);
  aDetector.SetTolerance(myTolerance);
  aDetector.SetCheckGeometry(bCheckGeometry);
  //
  aDetector.Perform();
  iErr=aDetector.ErrorStatus();
  if (iErr) {
    myErrorStatus=11;// Detector failed
    return;
  }
  //
  const TopTools_DataMapOfShapeListOfShape& aImages=aDetector.Images();
  aItDMSLS.Initialize(aImages);
  for (; aItDMSLS.More(); aItDMSLS.Next()) {
    const TopoDS_Shape& aSkey=aItDMSLS.Key();
    const TopTools_ListOfShape& aLSD=aItDMSLS.Value();
    aNbSD=aLSD.Extent();
    myImagesDetected.Bind(aSkey, aLSD);
  }
  //
  aItDMSLS.Initialize(myImagesDetected);
  for (; aItDMSLS.More(); aItDMSLS.Next()) {
    const TopoDS_Shape& aSkey=aItDMSLS.Key();
    const TopTools_ListOfShape& aLSD=aItDMSLS.Value();
    aItLS.Initialize(aLSD);
    for (; aItLS.More(); aItLS.Next()) {
      const TopoDS_Shape& aSx=aItLS.Value();
      myOriginsDetected.Bind(aSx, aSkey);
    }
  }
}
//=======================================================================
//function : PerformShapesToWork
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::PerformShapesToWork()
{ 
  Standard_Integer aNbSG, i, j, aNbC, aNb, aNbSD;
  TopTools_ListIteratorOfListOfShape aItLS1, aItLS2;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItDMSLS;
  NMTTools_CoupleOfShape aCS;
  NMTTools_ListOfCoupleOfShape aLCS;
  NMTTools_ListIteratorOfListOfCoupleOfShape aItCS; 
  //
  myErrorStatus=0;
  myWarningStatus=0;
  //
  myImagesToWork.Clear();
  myOriginsToWork.Clear();
  //
  aNbSD=myImagesDetected.Extent();
  if (!aNbSD) {// no shapes to glue detected
    myWarningStatus=1;
    return;
  }
  //
  aNbSG=myShapesToGlue.Extent();
  if (!aNbSG) {
    // glue all possible
    myImagesToWork=myImagesDetected;
    //
    aItDMSLS.Initialize(myImagesToWork);
    for (; aItDMSLS.More(); aItDMSLS.Next()) {
      const TopoDS_Shape& aSkey=aItDMSLS.Key();
      const TopTools_ListOfShape& aLSD=aItDMSLS.Value();
      aItLS1.Initialize(aLSD);
      for (; aItLS1.More(); aItLS1.Next()) {
	const TopoDS_Shape& aSx=aItLS1.Value();
	myOriginsToWork.Bind(aSx, aSkey);
      }
    }
    return;
  }// if (!aNbSG) {
  //
  // 1. Make pairs
  aItDMSLS.Initialize(myShapesToGlue);
  for (; aItDMSLS.More(); aItDMSLS.Next()) {
    //const TopoDS_Shape& aSkey=aItDMSLS.Key();
    const TopTools_ListOfShape& aLSG=aItDMSLS.Value();
    aItLS1.Initialize(aLSG);
    for (i=0; aItLS1.More(); aItLS1.Next(), ++i) {
      aItLS2.Initialize(aLSG);
      for (j=0; aItLS2.More(); aItLS2.Next(), ++j) {
	if (j>i) {
	  const TopoDS_Shape& aSG1=aItLS1.Value();
	  const TopoDS_Shape& aSG2=aItLS2.Value();
	  aCS.SetShape1(aSG1);
	  aCS.SetShape2(aSG2);
	  TreatPair(aCS, aLCS);
	}
      }
    }
  }
  //
  // 2. Find Chains
  TopTools_ListOfShape aLSX;
  NMTTools_IndexedDataMapOfShapeIndexedMapOfShape aMC;
  //
  NMTTools_Tools::FindChains(aLCS, aMC);
  //
  // 3. myImagesToWork, myOriginsToWork
  aNbC=aMC.Extent();
  for (i=1; i<=aNbC; ++i) {
    const TopoDS_Shape& aSkey=aMC.FindKey(i);
    const TopTools_IndexedMapOfShape& aM=aMC(i);
    aLSX.Clear();
    aNb=aM.Extent();
    for (j=1; j<=aNb; ++j) {
      const TopoDS_Shape& aS=aM(j);
      aLSX.Append(aS);
      myOriginsToWork.Bind(aS, aSkey);
    }
    myImagesToWork.Bind(aSkey, aLSX);
  }
}
//=======================================================================
//function : TreatPair
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::TreatPair(const NMTTools_CoupleOfShape& aCS,
				NMTTools_ListOfCoupleOfShape& aLCS)
{
  if (myErrorStatus) {
    return;
  }
  //
  Standard_Integer i, aNbS1, aNbS2, aNbS;
  TopAbs_ShapeEnum aType, aTypeS;
  TopTools_ListIteratorOfListOfShape aItLS;
  TopTools_IndexedMapOfShape aMS1, aMS2;
  TopTools_DataMapOfShapeListOfShape aDMSLS;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItDMSLS;
  NMTTools_CoupleOfShape aCSS;
  //
  // 1. Checking the pair on whether it can be glued at all
  // 1.1
  const TopoDS_Shape& aS1=aCS.Shape1();
  if (!myOriginsDetected.IsBound(aS1)) {
    myErrorStatus=30;
    return;
  }
  const TopoDS_Shape& aSkey1=myOriginsDetected.Find(aS1);
  // 1.2
  const TopoDS_Shape& aS2=aCS.Shape2();
  if (!myOriginsDetected.IsBound(aS2)) {
    myErrorStatus=30;
    return;
  }
  const TopoDS_Shape& aSkey2=myOriginsDetected.Find(aS2);
  // 1.3
  if (!aSkey1.IsSame(aSkey2)) {
    myErrorStatus=33;
    return;
  }
  //
  // 2. Append the pair to the aLCS
  aLCS.Append(aCS);
  //
  // 3. Treatment the subshapes of the pair
  aType=aS1.ShapeType();
  if (aType==TopAbs_VERTEX) {
    return;
  }
  aTypeS=TopAbs_EDGE;
  if (aType==aTypeS) {
    aTypeS=TopAbs_VERTEX;
  }
  //
  MapShapes1(aS1, aTypeS, aMS1);
  MapShapes1(aS2, aTypeS, aMS2);
  //
  aNbS1=aMS1.Extent();
  aNbS2=aMS2.Extent();
  if (aNbS1!=aNbS2) {
    myErrorStatus=31;
    return;
  }
  //
  // 1.
  for (i=1; i<=aNbS1; ++i) {
    const TopoDS_Shape& aSS1=aMS1(i);
    if (aMS2.Contains(aSS1)) {
      continue;
    }
    //
    if (!myOriginsDetected.IsBound(aSS1)) {
      myErrorStatus=30;
      return;
    }
    //
    const TopoDS_Shape& aSkey=myOriginsDetected.Find(aSS1);
    if (aDMSLS.IsBound(aSkey)) {
      TopTools_ListOfShape& aLS=aDMSLS.ChangeFind(aSkey);
      aLS.Append(aSS1);
    }
    else {
      TopTools_ListOfShape aLS;
      //
      aLS.Append(aSS1);
      aDMSLS.Bind(aSkey, aLS);
    }
  }
  //
  // 2.
  for (i=1; i<=aNbS2; ++i) {
    const TopoDS_Shape& aSS2=aMS2(i);
    if (aMS1.Contains(aSS2)) {
      continue;
    }
    //
    if (!myOriginsDetected.IsBound(aSS2)) {
      myErrorStatus=30;
      return;
    }
    //
    const TopoDS_Shape& aSkey=myOriginsDetected.Find(aSS2);
    if (aDMSLS.IsBound(aSkey)) {
      TopTools_ListOfShape& aLS=aDMSLS.ChangeFind(aSkey);
      aLS.Append(aSS2);
    }
    else {
      TopTools_ListOfShape aLS;
      //
      aLS.Append(aSS2);
      aDMSLS.Bind(aSkey, aLS);
    }
  }
  //
  // 3.
  aItDMSLS.Initialize(aDMSLS);
  for (; aItDMSLS.More(); aItDMSLS.Next()) {
    //const TopoDS_Shape& aSkey=aItDMSLS.Key();
    const TopTools_ListOfShape& aLS=aItDMSLS.Value();
    aNbS=aLS.Extent();
    if (aNbS!=2) {
      myErrorStatus=32;
      return;
    }
    //
    const TopoDS_Shape& aSS1=aLS.First();
    const TopoDS_Shape& aSS2=aLS.Last();
    aCSS.SetShape1(aSS1);
    aCSS.SetShape2(aSS2);
    TreatPair(aCSS, aLCS);
  }
}
//=======================================================================
//function : MapShapes1
//purpose  : 
//=======================================================================
void MapShapes1(const TopoDS_Shape& aS,
	       const TopAbs_ShapeEnum aType,
	       TopTools_IndexedMapOfShape& aM)
{
  TopExp_Explorer aExp;
  
  aExp.Init (aS, aType);
  for ( ;aExp.More(); aExp.Next()) {
    const TopoDS_Shape aSx=aExp.Current();
    if (aType==TopAbs_EDGE) {
      const TopoDS_Edge& aEx=*((TopoDS_Edge*)&aSx);
      if (BRep_Tool::Degenerated(aEx)) {
	continue;
      }
    }
    aM.Add(aSx);
  }
}
/*
//=======================================================================
//function : MapShapes1
//purpose  : 
//=======================================================================
void MapShapes1(const TopoDS_Shape& aS,
	       const TopAbs_ShapeEnum aType,
	       TopTools_IndexedMapOfShape& aM)
{
  TopExp_Explorer aExp (aS, aType);
  while (aExp.More()) {
    const TopoDS_Shape aSx=aExp.Current();
    if (aType==TopAbs_EDGE) {
      const TopoDS_Edge& aEx=*((TopoDS_Edge*)&aSx);
      if (BRep_Tool::Degenerated(aEx)) {
	aExp.Next();
	continue;
      }
    }
    aM.Add(aSx);
    aExp.Next();
  }
}
*/
