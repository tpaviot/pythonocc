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
// File:        GEOMAlgo_GlueDetector.cxx
// Created:     
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <GEOMAlgo_GlueDetector.hxx>

#include <Bnd_Box.hxx>
#include <NCollection_UBTreeFiller.hxx>

#include <TColStd_ListOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_MapIteratorOfMapOfInteger.hxx>

#include <TopoDS_Shape.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopoDS_Compound.hxx>

#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>

#include <TopExp.hxx>
#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <BRepBndLib.hxx>

#include <NMTDS_BndSphereTree.hxx>
#include <NMTDS_BndSphere.hxx>
#include <NMTDS_IndexedDataMapOfShapeBndSphere.hxx>

#include <GEOMAlgo_IndexedDataMapOfIntegerShape.hxx>
#include <GEOMAlgo_PassKeyShape.hxx>
#include <GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include <GEOMAlgo_Tools.hxx>

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
GEOMAlgo_GlueDetector::GEOMAlgo_GlueDetector()
:
  GEOMAlgo_GluerAlgo(),
  GEOMAlgo_Algo()
{}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
GEOMAlgo_GlueDetector::~GEOMAlgo_GlueDetector()
{}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
void GEOMAlgo_GlueDetector::Perform()
{
  myErrorStatus=0;
  myWarningStatus=0;
  //
  CheckData();
  if (myErrorStatus) {
    return;
  }
  //
  DetectVertices();
  if (myErrorStatus) {
    return;
  }
  //
  DetectEdges();
  if (myErrorStatus) {
    return;
  }
  //
  DetectFaces();
  if (myErrorStatus) {
    return;
  }
}
//=======================================================================
//function : DetectVertices
//purpose  : 
//=======================================================================
void GEOMAlgo_GlueDetector::DetectVertices()
{
  Standard_Integer j, i, aNbV, aNbVSD;
  Standard_Real aTolV;
  gp_Pnt aPV;
  TColStd_ListIteratorOfListOfInteger aIt;
  TopoDS_Shape aVF;
  TopTools_IndexedMapOfShape aMV;
  TopTools_MapOfShape aMVProcessed;
  TopTools_ListIteratorOfListOfShape aItS;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItIm;
  TopTools_DataMapOfShapeListOfShape aMVV;
  GEOMAlgo_IndexedDataMapOfIntegerShape aMIS;
  NMTDS_IndexedDataMapOfShapeBndSphere aMSB;
  //
  NMTDS_BndSphereTreeSelector aSelector;
  NMTDS_BndSphereTree aBBTree;
  NCollection_UBTreeFiller <Standard_Integer, NMTDS_BndSphere> aTreeFiller(aBBTree);
  //
  myErrorStatus=0;
  //
  TopExp::MapShapes(myArgument, TopAbs_VERTEX, aMV);
  aNbV=aMV.Extent();
  if (!aNbV) {
    myErrorStatus=2; // no vertices in source shape
    return;
  }
  //
  for (i=1; i<=aNbV; ++i) {
    NMTDS_BndSphere aBox;
    //
    const TopoDS_Vertex& aV=*((TopoDS_Vertex*)&aMV(i));
    aPV=BRep_Tool::Pnt(aV);
    aTolV=BRep_Tool::Tolerance(aV);
    //
    aBox.SetGap(myTolerance);
    aBox.SetCenter(aPV);
    aBox.SetRadius(aTolV);
    //
    aTreeFiller.Add(i, aBox);
    //
    aMIS.Add(i, aV);
    aMSB.Add(aV, aBox); 
  }
  //
  aTreeFiller.Fill();
  //
  //---------------------------------------------------
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
	const NMTDS_BndSphere& aBoxVP=aMSB.FindFromKey(aVP);
	//
	aSelector.Clear();
	aSelector.SetBox(aBoxVP);
	//
	aNbVSD=aBBTree.Select(aSelector);
	if (!aNbVSD) {
	  continue;  // it shoild not be so [at least IP itself]    
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
	break;
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
    //
    // Fill myImages
    aNbIP=aMIPC.Extent();
    //
    if (!aNbIP) {// no SD vertices is found
      aMVProcessed.Add(aV);
      continue;
    }
    //else { // SD vertices founded [ aMIPC ]
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
    //}
    myImages.Bind(aVF, aLVSD);
  }// for (i=1; i<=aNbV; ++i) {
  //------------------------------
  // Origins
  aItIm.Initialize(myImages);
  for (; aItIm.More(); aItIm.Next()) {
    const TopoDS_Shape& aV=aItIm.Key();
    const TopTools_ListOfShape& aLVSD=aItIm.Value();
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
//function : DetectFaces
//purpose  : 
//=======================================================================
void GEOMAlgo_GlueDetector::DetectFaces()
{
  DetectShapes(TopAbs_FACE);
}
//=======================================================================
//function : DetectEdges
//purpose  : 
//=======================================================================
void GEOMAlgo_GlueDetector::DetectEdges()
{
  DetectShapes(TopAbs_EDGE);
}
//=======================================================================
//function : DetectShapes
//purpose  : 
//=======================================================================
void GEOMAlgo_GlueDetector::DetectShapes(const TopAbs_ShapeEnum aType)
{
  Standard_Boolean bDegenerated;
  Standard_Integer i, aNbF, aNbSDF, iErr;
  TopTools_IndexedMapOfShape aMF;
  TopTools_ListIteratorOfListOfShape aItLS;
  GEOMAlgo_PassKeyShape aPKF;
  GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape aMPKLF;
  //
  myErrorStatus=0;
  //
  TopExp::MapShapes(myArgument, aType, aMF);
  //
  aNbF=aMF.Extent();
  for (i=1; i<=aNbF; ++i) {
    const TopoDS_Shape& aS=aMF(i);
    // 
    if (aType==TopAbs_FACE) {
      const TopoDS_Face& aF=*((TopoDS_Face*)&aS);
      FacePassKey(aF, aPKF);
    }
    else if (aType==TopAbs_EDGE) {
      const TopoDS_Edge& aE=*((TopoDS_Edge*)&aS);
      EdgePassKey(aE, aPKF);
    }
    //
    if (myErrorStatus) {
      return;
    }
    //
    if (aMPKLF.Contains(aPKF)) {
      TopTools_ListOfShape& aLSDF=aMPKLF.ChangeFromKey(aPKF);
      aLSDF.Append(aS);
    }
    else {
      TopTools_ListOfShape aLSDF;
      //
      aLSDF.Append(aS);
      aMPKLF.Add(aPKF, aLSDF);
    }
  }
  // check geometric coincidence
  if (myCheckGeometry) {
    iErr=GEOMAlgo_Tools::RefineSDShapes(aMPKLF, myTolerance, myContext);
    if (iErr) {
      myErrorStatus=200;
      return;
    }
  }
  //
  // Images/Origins
  aNbF=aMPKLF.Extent();
  for (i=1; i<=aNbF; ++i) {
    const TopTools_ListOfShape& aLSDF=aMPKLF(i);
    aNbSDF=aLSDF.Extent();
    if (!aNbSDF) {
      myErrorStatus=4; // it must not be
    }
    //
    if (aNbSDF==1) {
      continue;
    }
    //
    const TopoDS_Shape& aS1=aLSDF.First();  
    //
    if (aType==TopAbs_EDGE) {
      const TopoDS_Edge& aE1=*((TopoDS_Edge*)&aS1);
      bDegenerated=BRep_Tool::Degenerated(aE1);
      if (bDegenerated) {
	continue;
      }
    }
    //
    myImages.Bind(aS1, aLSDF);
    // origins
    aItLS.Initialize(aLSDF);
    for (; aItLS.More(); aItLS.Next()) {
      const TopoDS_Shape& aFSD=aItLS.Value();
      if (!myOrigins.IsBound(aFSD)) {
        myOrigins.Bind(aFSD, aS1);
      }
    }
  }// for (i=1; i<=aNbF; ++i)
}
//=======================================================================
//function : FacePassKey
//purpose  : 
//=======================================================================
void GEOMAlgo_GlueDetector::FacePassKey(const TopoDS_Face& aF, 
					GEOMAlgo_PassKeyShape& aPK)
{
  Standard_Integer i, aNbE;
  TopoDS_Shape aER;
  TopTools_ListOfShape aLE;
  TopTools_IndexedMapOfShape aME;
  //
  TopExp::MapShapes(aF, TopAbs_EDGE, aME);
  //
  aNbE=aME.Extent();
  for (i=1; i<=aNbE; ++i) {
    const TopoDS_Shape& aE=aME(i);
    //
    const TopoDS_Edge& aEE=*((TopoDS_Edge*)&aE);
    if (BRep_Tool::Degenerated(aEE)) {
      continue;
    }
    // 
    if (myOrigins.IsBound(aE)) {
      aER=myOrigins.Find(aE);
    }
    else {
      aER=aE;
    }
    aLE.Append(aER);
  }
  aPK.SetShapes(aLE);
}
//=======================================================================
//function : EdgePassKey
//purpose  : 
//=======================================================================
void GEOMAlgo_GlueDetector::EdgePassKey(const TopoDS_Edge& aE, 
					GEOMAlgo_PassKeyShape& aPK)
{
  TopAbs_Orientation aOr;
  TopoDS_Shape aVR;
  TopoDS_Iterator aIt;
  TopTools_ListOfShape aLV;
  //
  aIt.Initialize(aE);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aV=aIt.Value();
    aOr=aV.Orientation();
    if (aOr==TopAbs_FORWARD || aOr==TopAbs_REVERSED) {
      if (myOrigins.IsBound(aV)) {
	aVR=myOrigins.Find(aV);
      }
      else {
	aVR=aV;
      }
      aLV.Append(aVR);
    }
  }
  //
  aPK.SetShapes(aLV);
}
