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
// File:	GEOMAlgo_GlueDetector.cxx
// Created:	Wed Dec 15 11:08:09 2004
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_GlueAnalyser.ixx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Compound.hxx>

#include <BRep_Builder.hxx>

#include <TopExp.hxx>

#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>

#include <GEOMAlgo_PassKeyShape.hxx>
#include <GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include <GEOMAlgo_Tools.hxx>
#include <GEOMAlgo_CoupleOfShapes.hxx>

#include <GEOMAlgo_Gluer.hxx>
#include <Bnd_HArray1OfBox.hxx>
#include <Bnd_BoundSortBox.hxx>
#include <TopoDS_Vertex.hxx>
#include <GEOMAlgo_IndexedDataMapOfIntegerShape.hxx>
#include <GEOMAlgo_IndexedDataMapOfShapeBox.hxx>
#include <Bnd_Box.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <BRepBndLib.hxx>

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  GEOMAlgo_GlueAnalyser::GEOMAlgo_GlueAnalyser()
:
  GEOMAlgo_Gluer()
{}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
  GEOMAlgo_GlueAnalyser::~GEOMAlgo_GlueAnalyser()
{}
//=======================================================================
//function : HasSolidsToGlue
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_GlueAnalyser::HasSolidsToGlue()const
{
  return !mySolidsToGlue.IsEmpty();
}
//=======================================================================
//function : HasSolidsAlone
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_GlueAnalyser::HasSolidsAlone()const
{
  return !mySolidsAlone.IsEmpty();
}
//=======================================================================
//function : SolidsToGlue
//purpose  : 
//=======================================================================
  const GEOMAlgo_ListOfCoupleOfShapes& GEOMAlgo_GlueAnalyser::SolidsToGlue()const
{
  return mySolidsToGlue;
}
//=======================================================================
//function : SolidsAlone
//purpose  : 
//=======================================================================
  const TopTools_ListOfShape& GEOMAlgo_GlueAnalyser::SolidsAlone()const
{
  return mySolidsAlone;
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
  void GEOMAlgo_GlueAnalyser::Perform()
{
  myErrorStatus=0;
  myWarningStatus=0;
  //
  mySolidsToGlue.Clear();
  mySolidsAlone.Clear();
  //
  CheckData();
  if (myErrorStatus) {
    return;
  }
  //
  InnerTolerance();
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
  //
  DetectSolids();
  if (myErrorStatus) {
    return;
  }
}
//=======================================================================
//function : DetectVertices
//purpose  : 
//=======================================================================
  void GEOMAlgo_GlueAnalyser::DetectVertices()
{
  myErrorStatus=0;
  //
  Standard_Integer j, i, aNbV, aIndex, aNbVSD;
  TColStd_ListIteratorOfListOfInteger aIt;
  Handle(Bnd_HArray1OfBox) aHAB;
  Bnd_BoundSortBox aBSB;
  TopoDS_Shape aSTmp, aVF;
  TopoDS_Vertex aVnew;
  TopTools_IndexedMapOfShape aMV, aMVProcessed;
  TopTools_ListIteratorOfListOfShape aItS;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItIm;
  GEOMAlgo_IndexedDataMapOfIntegerShape aMIS;
  GEOMAlgo_IndexedDataMapOfShapeBox aMSB;
  //
  TopExp::MapShapes(myShape, TopAbs_VERTEX, aMV);
  aNbV=aMV.Extent();
  if (!aNbV) {
    myErrorStatus=2; // no vertices in source shape
    return;
  }
  //
  aHAB=new Bnd_HArray1OfBox(1, aNbV);
  //
  for (i=1; i<=aNbV; ++i) {
    const TopoDS_Shape& aV=aMV(i);
    Bnd_Box aBox;
    //
    aBox.SetGap(myTol); 
    BRepBndLib::Add(aV, aBox);
    aHAB->SetValue(i, aBox);
    aMIS.Add(i, aV);
    aMSB.Add(aV, aBox); 
  }
  //
  aBSB.Initialize(aHAB);
  //
  for (i=1; i<=aNbV; ++i) {
    const TopoDS_Shape& aV=aMV(i);
    //
    if (aMVProcessed.Contains(aV)) {
      continue;
    }
    //
    const Bnd_Box& aBoxV=aMSB.FindFromKey(aV);
    const TColStd_ListOfInteger& aLI=aBSB.Compare(aBoxV);
    aNbVSD=aLI.Extent();
    if (!aNbVSD) {
      myErrorStatus=3; // it must not be 
      return;
    }
    //
    // Images
    TopTools_ListOfShape aLVSD;
    //
    aIt.Initialize(aLI);
    for (j=0; aIt.More(); aIt.Next(), ++j) {
      aIndex=aIt.Value();
      const TopoDS_Shape& aVx=aMIS.FindFromKey(aIndex);
      if(!j) {
	aVF=aVx;
      }
      aLVSD.Append(aVx);
      aMVProcessed.Add(aVx);
    }
    myImages.Bind(aVF, aLVSD);
  }
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
//function : DetectFaces
//purpose  : 
//=======================================================================
  void GEOMAlgo_GlueAnalyser::DetectFaces()
{
  DetectShapes(TopAbs_FACE);
}
//=======================================================================
//function : DetectEdges
//purpose  : 
//=======================================================================
  void GEOMAlgo_GlueAnalyser::DetectEdges()
{
  DetectShapes(TopAbs_EDGE);
}
//=======================================================================
//function : DetectShapes
//purpose  : 
//=======================================================================
  void GEOMAlgo_GlueAnalyser::DetectShapes(const TopAbs_ShapeEnum aType)
{
  myErrorStatus=0;
  //
  Standard_Integer i, aNbF, aNbSDF, iErr;
  TopoDS_Shape aNewShape;
  TopTools_IndexedMapOfShape aMF;
  TopTools_ListIteratorOfListOfShape aItS;
  GEOMAlgo_PassKeyShape aPKF;
  GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape aMPKLF;
  //
  TopExp::MapShapes(myShape, aType, aMF);
  //
  aNbF=aMF.Extent();
  for (i=1; i<=aNbF; ++i) {
    const TopoDS_Shape& aS=aMF(i);
    // 
    //aPKF.Clear();//qft
    if (aType==TopAbs_FACE) {
      const TopoDS_Face& aF=TopoDS::Face(aS);
      FacePassKey(aF, aPKF);
    }
    else if (aType==TopAbs_EDGE) {
      const TopoDS_Edge& aE=TopoDS::Edge(aS);
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
    iErr=GEOMAlgo_Tools::RefineSDShapes(aMPKLF, myTol, myContext); //XX
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
    const TopoDS_Shape& aS1=aLSDF.First();
    aNewShape=aS1;
    //
    myImages.Bind(aNewShape, aLSDF);
    // origins
    aItS.Initialize(aLSDF);
    for (; aItS.More(); aItS.Next()) {
      const TopoDS_Shape& aFSD=aItS.Value();
      if (!myOrigins.IsBound(aFSD)) {
	myOrigins.Bind(aFSD, aNewShape);
      }
    }
  }
}
//=======================================================================
//function : DetectSolids
//purpose  : 
//=======================================================================
  void GEOMAlgo_GlueAnalyser::DetectSolids()
{
  myErrorStatus=0;
  //
  Standard_Integer i, aNbF, aNbS, aNbC, aNbX;
  TopoDS_Compound aCmp;
  BRep_Builder aBB;
  TopTools_IndexedDataMapOfShapeListOfShape aMFS;
  TopTools_IndexedMapOfShape aMx, aMS;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItIm;
  GEOMAlgo_CoupleOfShapes aCS;
  //
  GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape aMPKLS;
  GEOMAlgo_PassKeyShape aPKSx;
  //
  aBB.MakeCompound(aCmp);
  //
  TopExp::MapShapesAndAncestors(myShape, TopAbs_FACE, TopAbs_SOLID, aMFS);
  //
  aItIm.Initialize(myImages);
  for (; aItIm.More(); aItIm.Next()) {
    const TopoDS_Shape& aIm=aItIm.Key();
    if (aIm.ShapeType()!=TopAbs_FACE) {
      continue;
    }
    //
    const TopTools_ListOfShape& aLF=aItIm.Value();
    aNbF=aLF.Extent();
    if (aNbF!=2) {
      continue;
    }
    //
    TopoDS_Shape aSx[2], aFx[2];
    //
    aFx[0]=aLF.First();
    aFx[1]=aLF.Last();
    for (i=0; i<2; ++i) {
      if (!aMFS.Contains(aFx[i])) {
	continue;// it must not be so
      }
      //
      const TopTools_ListOfShape& aLS=aMFS.FindFromKey(aFx[i]);
      aNbS=aLS.Extent();
      if (aNbS!=1) {
	continue;
      }
      aSx[i]=aLS.First();
    }
    //
    if (aSx[0].IsNull() || aSx[1].IsNull()) {
      continue;
    }
    //
    //aPKSx.Clear();//qft
    //qf
    //aPKSx.SetIds(aSx[0], aSx[1]);
    aPKSx.SetShapes(aSx[0], aSx[1]);
    //qt
    //
    if (!aMPKLS.Contains(aPKSx)) {
      TopTools_ListOfShape aLSx;
      //
      aLSx.Append(aSx[0]);
      aLSx.Append(aSx[1]);
      //
      aMPKLS.Add(aPKSx, aLSx);
    }
  }
  //
  mySolidsToGlue.Clear();
  mySolidsAlone.Clear();
  
  //
  aNbC=aMPKLS.Extent();
  if (!aNbC) {
    return;
  }
  //
  for (i=1; i<=aNbC; ++i) {
    const TopTools_ListOfShape& aLSx=aMPKLS(i);
    const TopoDS_Shape& aSx1=aLSx.First();
    const TopoDS_Shape& aSx2=aLSx.Last();
    aCS.SetShape1(aSx1);
    aCS.SetShape2(aSx2);
    mySolidsToGlue.Append(aCS);
    //
    if (!aMx.Contains(aSx1)) {
      aBB.Add(aCmp, aSx1);
      aMx.Add(aSx1);
    }
    if (!aMx.Contains(aSx2)) {
      aBB.Add(aCmp, aSx2);
      aMx.Add(aSx2);
    }
  }
  myResult=aCmp;
  //
  // check alone solids
  TopExp::MapShapes(myShape, TopAbs_SOLID, aMS);
  //
  aNbX=aMx.Extent();
  for (i=1; i<=aNbX; ++i) {
    const TopoDS_Shape& aSx=aMx(i);
    if (!aMS.Contains(aSx)) {
      mySolidsAlone.Append(aSx);
    }
  }
}

/*
// A
  // Make vertices
  aMV.Clear();
  aItIm.Initialize(myImages);
  for (; aItIm.More(); aItIm.Next()) {
    const TopoDS_Shape& aV=aItIm.Key();
    aMV.Add(aV);
    const TopTools_ListOfShape& aLVSD=aItIm.Value();
    MakeVertex(aLVSD, aVnew);//ZZ
    myImages.Bind(aVnew, aLVSD);
  }
  //
  aNbV=aMV.Extent();
  for (i=1; i<=aNbV; ++i) {
    const TopoDS_Shape& aV=aMV(i);
    myImages.UnBind(aV);
  }
  //
  */
