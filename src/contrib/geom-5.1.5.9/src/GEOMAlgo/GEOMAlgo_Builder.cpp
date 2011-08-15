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
// File:        GEOMAlgo_Builder.cxx
// Created:     
// Author:      Peter KURNEV 
//
#include <GEOMAlgo_Builder.ixx>

#include <TopAbs_ShapeEnum.hxx>

#include <TopoDS_Shape.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Iterator.hxx>

#include <BRep_Builder.hxx>

#include <TopTools_MapOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>

#include <BOP_CorrectTolerances.hxx>

#include <BRepLib.hxx>
#include <NMTTools_PaveFiller.hxx>
#include <GEOMAlgo_Tools.hxx>

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  GEOMAlgo_Builder::GEOMAlgo_Builder()
:
  GEOMAlgo_BuilderShape()
{
  myNbTypes=9;
  myPaveFiller=NULL;
  myEntryPoint=0; // Entry point through PerformWithFiller ()
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
  GEOMAlgo_Builder::~GEOMAlgo_Builder()
{
  if (myEntryPoint==1) {
    if (myPaveFiller) {
      delete myPaveFiller;
      myPaveFiller=NULL;
    }
  }
}
//=======================================================================
//function : AddCompound
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::AddCompound(const TopoDS_Shape& theShape)
{
  TopoDS_Iterator aIt;
  //
  aIt.Initialize(theShape);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    AddShape(aS);
  }
}
//=======================================================================
//function : AddShape
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::AddShape(const TopoDS_Shape& theShape)
{
  if (myMapFence.Add(theShape)) {
    myShapes.Append(theShape);
  }
}
//=======================================================================
//function : Shapes
//purpose  : 
//=======================================================================
  const TopTools_ListOfShape& GEOMAlgo_Builder::Shapes()const
{
  return myShapes;
}
//=======================================================================
//function : Clear
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::Clear()
{
  myShapes.Clear();
  ClearInternals();
}
//=======================================================================
//function : ClearInternals
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::ClearInternals()
{
  Standard_Integer i;
  //
  for (i=0; i<myNbTypes; ++i){
    myShapes1[i].Clear();
  }
  myImages.Clear();
  //
  myInParts.Clear();
  mySplitFaces.Clear();
  mySameDomainShapes.Clear();
  myDraftSolids.Clear();
  myMapFence.Clear();
}
//=======================================================================
//function : Prepare
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::Prepare()
{
  myErrorStatus=0;
  //
  Standard_Integer aNb;
  BRep_Builder aBB;
  TopoDS_Compound aC;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  aNb=myShapes.Extent();
  if (aNb<2) {
    myErrorStatus=10; // No shapes to process
    return;
  }
  //
  // 1. myShape is empty compound
  aBB.MakeCompound(aC);
  myShape=aC;
  //
  // 2. myShapes1
  aIt.Initialize(myShapes);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    AddShape1(aS);
  }
}

//=======================================================================
//function : AddShape1
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::AddShape1(const TopoDS_Shape& theShape)
{
  Standard_Integer iType;
  TopAbs_ShapeEnum aType;
  TopoDS_Iterator aIt;
  TopTools_MapOfShape aM;
  //
  aType=theShape.ShapeType();
  if (aType==TopAbs_COMPOUND) {
    aIt.Initialize(theShape);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aS=aIt.Value();
      AddShape1(aS);
    }
  }
  //
  iType=(Standard_Integer)aType;
  if (aM.Add(theShape)) {
    myShapes1[iType].Append(theShape);
  }
}
//=======================================================================
//function : BuildResult
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::BuildResult(const TopAbs_ShapeEnum theType)
{
  myErrorStatus=0;
  //
  TopAbs_ShapeEnum aType;
  BRep_Builder aBB;
  TopTools_MapOfShape aM;
  TopTools_ListIteratorOfListOfShape aIt, aItIm;
  //
  aIt.Initialize(myShapes);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    aType=aS.ShapeType();
    if (aType==theType) {
      if (myImages.HasImage(aS)){
        const TopTools_ListOfShape& aLSIm=myImages.Image(aS);
        aItIm.Initialize(aLSIm);
        for (; aItIm.More(); aItIm.Next()) {
          const TopoDS_Shape& aSIm=aItIm.Value();
          if (aM.Add(aSIm)) {
            aBB.Add(myShape, aSIm);
          }
        }
      }
      else {
        if (aM.Add(aS)) {
          aBB.Add(myShape, aS);
        }
      }
    }
  }
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::Perform()
{
  myErrorStatus=0;
  //
  BRep_Builder aBB;
  TopoDS_Compound aCS;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  aBB.MakeCompound(aCS);
  //
  aIt.Initialize(myShapes);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    aBB.Add(aCS, aS);
  }
  //
  NMTTools_PaveFiller* pPF=new NMTTools_PaveFiller;
  //
  pPF->SetCompositeShape(aCS);
  pPF->Perform();
  //
  myEntryPoint=1;
  PerformInternal(*pPF);
}
//=======================================================================
//function : PerformWithFiller
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::PerformWithFiller(const NMTTools_PaveFiller& theDSF)
{
  myEntryPoint=0;
  //
  PerformInternal(theDSF);
}
//=======================================================================
//function : PerformInternal
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::PerformInternal(const NMTTools_PaveFiller& pPF)
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsDone;
  //
  // 0. myPaveFiller
  myPaveFiller=(NMTTools_PaveFiller *)&pPF;
  //
  bIsDone=myPaveFiller->IsDone();
  if (!bIsDone) {
    myErrorStatus=2; // PaveFiller is failed
    return;
  }
  //
  // 1. Clear Internal fields
  ClearInternals();
  //
  // 2. Prepare
  Prepare();
  if (myErrorStatus) {
    return;
  }
  //
  // 3. Fill Images
  //
  // 3.1 Vertices
  FillImagesVertices();
  if (myErrorStatus) {
    return;
  }
  //
  BuildResult(TopAbs_VERTEX);
  if (myErrorStatus) {
    return;
  }
  // 3.2 Edges
  FillImagesEdges();
  if (myErrorStatus) {
    return;
  }
  
  BuildResult(TopAbs_EDGE);
  if (myErrorStatus) {
    return;
  }
  // 3.3 Wires
  FillImagesContainers(TopAbs_WIRE);
  if (myErrorStatus) {
    return;
  }
  
  BuildResult(TopAbs_WIRE);
  if (myErrorStatus) {
    return;
  }
  
  // 3.4 Faces
  FillImagesFaces();
  if (myErrorStatus) {
    return;
  }
  
  BuildResult(TopAbs_FACE);
  if (myErrorStatus) {
    return;
  }
  // 3.5 Shells
  
  FillImagesContainers(TopAbs_SHELL);
  if (myErrorStatus) {
    return;
  }
  
  BuildResult(TopAbs_SHELL);
  if (myErrorStatus) {
    return;
  }
  // 3.6 Solids
  FillImagesSolids();
  if (myErrorStatus) {
    return;
  }
  
  BuildResult(TopAbs_SOLID);
  if (myErrorStatus) {
    return;
  }
  // 3.7 CompSolids
  FillImagesContainers(TopAbs_COMPSOLID);
  if (myErrorStatus) {
    return;
  }
  
  BuildResult(TopAbs_COMPSOLID);
  if (myErrorStatus) {
    return;
  }
  // 3.8 Compounds
  FillImagesContainers(TopAbs_COMPOUND);
  if (myErrorStatus) {
    return;
  }
  
  BuildResult(TopAbs_COMPOUND);
  if (myErrorStatus) {
    return;
  }
  //
  // 4.History
  PrepareHistory();
  //
  // 5 Post-treatment 
  PostTreat();
}
//
static 
  void CorrectWires(const TopoDS_Shape& aS);
//
//=======================================================================
//function : PostTreat
//purpose  : 
//=======================================================================
  void GEOMAlgo_Builder::PostTreat()
{
  Standard_Integer aNbS;
  TopoDS_Iterator aIt;
  TopTools_ListOfShape aLS;
  //
  aIt.Initialize(myShape);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    aLS.Append(aS);
  }
  aNbS=aLS.Extent();
  if (aNbS==1) {
    myShape=aLS.First();
  }
  
  BRepLib::SameParameter(myShape, 1.e-7, Standard_True);
  //
  GEOMAlgo_Tools::CorrectWires(myShape);
}
//
// myErrorStatus
// 
// 0  - Ok
// 1  - The object is just initialized
// 2  - PaveFiller is failed
// 10 - No shapes to process
// 30 - SolidBuilder failed

