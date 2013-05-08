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
// File:	GEOMAlgo_Builder_1.cxx
// Created:	
// Author:	Peter KURNEV 
//
#include <GEOMAlgo_Builder.hxx>
//
#include <TColStd_ListOfInteger.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Shell.hxx>
#include <TopoDS_Iterator.hxx>
//
#include <TopTools_MapOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
//
#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
//
#include <IntTools_Context.hxx>
#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_PaveBlock.hxx>
//
#include <NMTDS_ShapesDataStructure.hxx>
//
#include <NMTTools_PaveFiller.hxx>
#include <NMTTools_CommonBlockPool.hxx>
#include <NMTTools_ListIteratorOfListOfCommonBlock.hxx>
#include <NMTTools_CommonBlock.hxx>
#include <NMTTools_CommonBlockPool.hxx>
#include <NMTTools_ListOfCommonBlock.hxx>
#include <NMTTools_CommonBlockAPI.hxx>
//
#include <GEOMAlgo_Tools3D.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>



static
  void FillImagesCompounds(const TopTools_MapOfShape& ,
			   BRepAlgo_Image& );

static
  void FillImagesCompound(const TopoDS_Shape& ,
			BRepAlgo_Image& ,
			TopTools_MapOfShape& );

//=======================================================================
//function : FillImagesVertices
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::FillImagesVertices()
{
  myErrorStatus=0;
  //
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  NMTTools_PaveFiller* pPF=myPaveFiller;
  //
  Standard_Integer i, aNb, iV;
  //
  aNb=aDS.NumberOfShapesOfTheObject();
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape& aV=aDS.Shape(i);
    if (aV.ShapeType()==TopAbs_VERTEX) {
      iV=pPF->FindSDVertex(i);
      if (iV) {
	const TopoDS_Shape& aVSD=aDS.Shape(iV);
	if (!myImages.HasImage(aV)) {
	  myImages.Bind(aV, aVSD);
	  //
	  mySameDomainShapes.Add(aV, aVSD);
	}
      }
    }
  }
}
//=======================================================================
// function: FillImagesEdges
// purpose: 
//=======================================================================
  void GEOMAlgo_Builder::FillImagesEdges()
{
  myErrorStatus=0;
  //
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  NMTTools_PaveFiller* pPF=myPaveFiller;
  const BOPTools_SplitShapesPool& aSSP=pPF->SplitShapesPool();
/*  NMTTools_CommonBlockPool& aCBP=*/pPF->ChangeCommonBlockPool();
  IntTools_Context& aCtx=pPF->ChangeContext();
  //
  Standard_Boolean bToReverse;
  Standard_Integer i, aNb, aNbSp, nSp, nSpR, nSpx, aIsCB, aNbLB;
  TColStd_ListIteratorOfListOfInteger aItLB;
  TColStd_ListOfInteger aLB;
  TopoDS_Edge aEE, aESpR;
  TopTools_MapOfShape aMFence;
  TopTools_ListOfShape aLSp;
  TopTools_ListIteratorOfListOfShape aIt1;
  BOPTools_ListIteratorOfListOfPaveBlock aIt;
  //
  aNb=aDS.NumberOfShapesOfTheObject();
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape& aE=aDS.Shape(i);
    if (aE.ShapeType()!=TopAbs_EDGE) {
      continue;
    }
    //
    if (!aMFence.Add(aE)) {
      continue;
    }
    //
    const BOPTools_ListOfPaveBlock& aLPB=aSSP(aDS.RefEdge(i));
    aNbSp=aLPB.Extent();
    if (!aNbSp) {
      continue;
    }
    //
    aEE=TopoDS::Edge(aE);
    aLSp.Clear();
    //
    if (aNbSp==1) {
      const BOPTools_PaveBlock& aPB=aLPB.First();
      nSp=aPB.Edge();
      const TopoDS_Shape& aSp=aDS.Shape(nSp);
      //
      const BOPTools_PaveBlock& aPBR=pPF->RealPaveBlock(aPB, aLB, aIsCB);
      //modified by NIZNHY-PKV Wed Oct 27 11:19:30 2010f
      aNbLB=aLB.Extent();
      if (aIsCB && aNbLB<2) {
	aIsCB=0;
      }
      //modified by NIZNHY-PKV Wed Oct 27 11:19:34 2010t
      //
      nSpR=aPBR.Edge();
      const TopoDS_Shape& aSpR=aDS.Shape(nSpR);
      if (aSpR.IsSame(aSp) && aSpR.IsSame(aE) && !aIsCB) {
	continue;
      }
      //
      aESpR=TopoDS::Edge(aSpR);
      bToReverse=GEOMAlgo_Tools3D::IsSplitToReverse(aESpR, aEE, aCtx);
      if (bToReverse) {
	aESpR.Reverse();
      }
      aLSp.Append(aESpR);
      //
      aItLB.Initialize(aLB);
      for (; aItLB.More(); aItLB.Next()) {
	nSpx=aItLB.Value();
	const TopoDS_Shape& aSpx=aDS.Shape(nSpx);
	mySameDomainShapes.Add(aSpx ,aSpR);
      }
      //
      //
    }// if (aNbSp==1) {
    else {
      aIt.Initialize(aLPB);
      for (; aIt.More(); aIt.Next()) {
	const BOPTools_PaveBlock& aPB=aIt.Value();
	const BOPTools_PaveBlock& aPBR=pPF->RealPaveBlock(aPB, aLB, aIsCB);
	nSpR=aPBR.Edge();
	const TopoDS_Shape& aSpR=aDS.Shape(nSpR);
	//
	aESpR=TopoDS::Edge(aSpR);
	bToReverse=GEOMAlgo_Tools3D::IsSplitToReverse(aESpR, aEE, aCtx);
	if (bToReverse) {
	  aESpR.Reverse();
	}
	aLSp.Append(aESpR);
	//
	aItLB.Initialize(aLB);
	for (; aItLB.More(); aItLB.Next()) {
	  nSpx=aItLB.Value();
	  const TopoDS_Shape& aSpx=aDS.Shape(nSpx);
	  mySameDomainShapes.Add(aSpx ,aSpR);
	}
      }
    }
    //
    myImages.Bind(aE, aLSp);
    
  }//for (i=1; i<=aNb; ++i)
}
//=======================================================================
// function: FillImagesContainers
// purpose: 
//=======================================================================
  void GEOMAlgo_Builder::FillImagesContainers(const TopAbs_ShapeEnum theType)
{
  myErrorStatus=0;
  //
  Standard_Boolean bInterferred, bToReverse;
  Standard_Integer i, aNbS;
  TopAbs_ShapeEnum aType;
  BRep_Builder aBB;
  TopoDS_Iterator aIt;
  TopTools_ListIteratorOfListOfShape aItIm; 
  TopTools_MapOfShape aMS;
  TopTools_MapIteratorOfMapOfShape aItS;
  //
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  NMTTools_PaveFiller* pPF=myPaveFiller;
  IntTools_Context& aCtx= pPF->ChangeContext();
  //
  aNbS=aDS.NumberOfShapesOfTheObject();
  for (i=1; i<=aNbS; ++i) {
    const TopoDS_Shape& aC=aDS.Shape(i);
    aType=aC.ShapeType();
    if (aType==theType) {
      aMS.Add(aC);
    }
  }
  //
  if (theType==TopAbs_COMPOUND) {
    FillImagesCompounds(aMS, myImages);
    return;
  }
  //
  aItS.Initialize(aMS);
  for (; aItS.More(); aItS.Next()) {
    const TopoDS_Shape& aC=aItS.Key();
    // whether the shape has image
    bInterferred=Standard_False;
    aIt.Initialize(aC);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aF=aIt.Value();
      if (myImages.HasImage(aF)) {
	bInterferred=!bInterferred;
	break;
      }
    }
    if (!bInterferred){
      continue;
    }
    //
    TopoDS_Shape aCIm;
    GEOMAlgo_Tools3D::MakeContainer(theType, aCIm);
    //
    aIt.Initialize(aC);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aF=aIt.Value();
      if (myImages.HasImage(aF)) {
	const TopTools_ListOfShape& aLFIm=myImages.Image(aF);
	aItIm.Initialize(aLFIm);
	for (; aItIm.More(); aItIm.Next()) {
	  TopoDS_Shape aFIm=aItIm.Value();
	  //
	  bToReverse=GEOMAlgo_Tools3D::IsSplitToReverse(aFIm, aF, aCtx);
	  if (bToReverse) {
	    aFIm.Reverse();
	  }
	  aBB.Add(aCIm, aFIm);
	}
      }
      else {
	aBB.Add(aCIm, aF);
      }
    }
    myImages.Bind(aC, aCIm); 
  }// for (; aItS.More(); aItS.Next()) {
}
//=======================================================================
// function: FillImagesCompounds
// purpose: 
//=======================================================================
void FillImagesCompounds(const TopTools_MapOfShape& theMS,
			 BRepAlgo_Image& theImages)
{
  TopTools_MapOfShape aMFP;
  TopTools_MapIteratorOfMapOfShape aItS;
  //
  aItS.Initialize(theMS);
  for (; aItS.More(); aItS.Next()) {
    const TopoDS_Shape& aC=aItS.Key();
    FillImagesCompound(aC, theImages, aMFP);
  }
}
//=======================================================================
//function : FillImagesCompound
//purpose  : 
//=======================================================================
void FillImagesCompound(const TopoDS_Shape& theS,
			BRepAlgo_Image& theImages,
			TopTools_MapOfShape& theMFP)
{ 
  Standard_Boolean bInterferred;
  TopAbs_ShapeEnum aTypeX;
  TopAbs_Orientation aOrX;
  TopoDS_Iterator aIt;
  BRep_Builder aBB;
  TopTools_ListIteratorOfListOfShape aItIm; 
  //
  if (!theMFP.Add(theS)) {
    return;
  }
  //
  bInterferred=Standard_False;
  aIt.Initialize(theS);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aSX=aIt.Value();
    aTypeX=aSX.ShapeType();
    if (aTypeX==TopAbs_COMPOUND) {
      FillImagesCompound(aSX, theImages, theMFP);
    }
    if (theImages.HasImage(aSX)) {
      bInterferred=Standard_True;
    }
  }
  if (!bInterferred){
    return;
  }
  //
  TopoDS_Shape aCIm;
  GEOMAlgo_Tools3D::MakeContainer(TopAbs_COMPOUND, aCIm);
  //
  aIt.Initialize(theS);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aSX=aIt.Value();
    aOrX=aSX.Orientation();
    if (theImages.HasImage(aSX)) {
      const TopTools_ListOfShape& aLFIm=theImages.Image(aSX);
      aItIm.Initialize(aLFIm);
      for (; aItIm.More(); aItIm.Next()) {
	TopoDS_Shape aSXIm=aItIm.Value();
	aSXIm.Orientation(aOrX);
	aBB.Add(aCIm, aSXIm);
      }
    }
    else {
      aBB.Add(aCIm, aSX);
    }
  }
  theImages.Bind(theS, aCIm); 
}
