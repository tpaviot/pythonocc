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
// File:        GEOMAlgo_Gluer2.cxx
// Author:      Peter KURNEV

#include <GEOMAlgo_Gluer2.hxx>

#include <TopAbs_ShapeEnum.hxx>

#include <TopoDS_Compound.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>

#include <BRep_Builder.hxx>
#include <TopExp.hxx>
#include <BRepLib.hxx>

#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <GEOMAlgo_GlueDetector.hxx>
#include <GEOMAlgo_Tools3D.hxx>

//=======================================================================
//function : GEOMAlgo_Gluer2
//purpose  : 
//=======================================================================
GEOMAlgo_Gluer2::GEOMAlgo_Gluer2()
:
  GEOMAlgo_GluerAlgo(),
  GEOMAlgo_BuilderShape()
{
  myTolerance=0.0001;
}
//=======================================================================
//function : ~GEOMAlgo_Gluer2
//purpose  : 
//=======================================================================
GEOMAlgo_Gluer2::~GEOMAlgo_Gluer2()
{
}
//=======================================================================
//function : Clear
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::Clear()
{
  myErrorStatus=0;
  myWarningStatus=0;
  //
  GEOMAlgo_GluerAlgo::Clear();
  //
  myImagesDetected.Clear();
  myOriginsDetected.Clear();
  myShapesToGlue.Clear();
  myImagesToWork.Clear();
  myOriginsToWork.Clear();
  myKeepNonSolids=Standard_False;
}
//=======================================================================
//function : SetShapesToGlue
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::SetShapesToGlue(const TopTools_DataMapOfShapeListOfShape& aM)
{
  myShapesToGlue=aM;
}
//=======================================================================
//function : ShapesToGlue
//purpose  : 
//=======================================================================
const TopTools_DataMapOfShapeListOfShape& GEOMAlgo_Gluer2::ShapesToGlue()const
{
  return myShapesToGlue;
}
//=======================================================================
//function : SetKeepNonSolids
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::SetKeepNonSolids(const Standard_Boolean aFlag)
{
  myKeepNonSolids=aFlag;
}
//=======================================================================
//function : KeepNonSolids
//purpose  : 
//=======================================================================
Standard_Boolean GEOMAlgo_Gluer2::KeepNonSolids()const 
{
  return myKeepNonSolids;
}
//=======================================================================
//function : ShapesDetected
//purpose  : 
//=======================================================================
const TopTools_DataMapOfShapeListOfShape& GEOMAlgo_Gluer2::ShapesDetected()const
{
  return myImagesDetected;
}
//=======================================================================
//function : ImagesToWork
//purpose  : 
//=======================================================================
const TopTools_DataMapOfShapeListOfShape& GEOMAlgo_Gluer2::ImagesToWork()const
{
  return myImagesToWork;
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::Perform()
{
  myErrorStatus=0;
  myWarningStatus=0;
  // 
  CheckData();
  if (myErrorStatus) {
    return;
  }
  //
  PerformShapesToWork();
  if (myErrorStatus) {
    return;
  }
  if (myWarningStatus==1) {// no shapes to glue
    myShape=myArgument;
    return;
  }
  //
  FillVertices();
  if (myErrorStatus) {
    return;
  }
  //
  FillEdges();
  if (myErrorStatus) {
    return;
  }
  //
  FillWires();
  if (myErrorStatus) {
    return;
  }
  //
  FillFaces();
  if (myErrorStatus) {
    return;
  }
  //
  FillShells();
  if (myErrorStatus) {
    return;
  }
  //
  FillSolids();
  if (myErrorStatus) {
    return;
  }
  //
  FillCompSolids();
  if (myErrorStatus) {
    return;
  }
  //
  FillCompounds();
  if (myErrorStatus) {
    return;
  }
  //
  BuildResult();
  if (myErrorStatus) {
    return;
  }
  //
  PrepareHistory();
  if (myErrorStatus) {
    return;
  }
  //
  BRepLib::SameParameter(myShape, myTolerance, Standard_True);
}
//=======================================================================
//function : CheckData
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::CheckData()
{
  Standard_Integer aNbSG, i;
  TopAbs_ShapeEnum aType, aTypeX;
  TopTools_ListIteratorOfListOfShape aItLS;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItDMSLS;
  //
  myErrorStatus=0;
  myWarningStatus=0;
  //
  aNbSG=myShapesToGlue.Extent();
  if (aNbSG) {
    // Check myShapesToGlue
    aItDMSLS.Initialize(myShapesToGlue);
    for (; aItDMSLS.More(); aItDMSLS.Next()) {
      //const TopoDS_Shape& aSkey=aItDMSLS.Key();
      const TopTools_ListOfShape& aLSG=aItDMSLS.Value();
      aItLS.Initialize(aLSG);
      for (i=0; aItLS.More(); aItLS.Next(), ++i) {
        const TopoDS_Shape& aSG=aItLS.Value();
        aTypeX=aSG.ShapeType();
        if (!i) {
          aType=aTypeX;
          if (!(aType==TopAbs_VERTEX || 
                aType==TopAbs_EDGE || 
                aType==TopAbs_FACE)) {
            myErrorStatus=21;// non-brep shapes
            return;
          }
          continue;
        }
        if (aTypeX!=aType) {
          myErrorStatus=20;// non-homogeneous shapes
          return;
        }
      }
    }
  }// if (aNbSG) {
}
//=======================================================================
//function : FillEdges
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillEdges()
{
  FillBRepShapes(TopAbs_EDGE);
} 
//=======================================================================
//function : FillFaces
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillFaces()
{
  FillBRepShapes(TopAbs_FACE);
}
//=======================================================================
//function : FillWires
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillWires()
{
  FillContainers(TopAbs_WIRE);
}
//=======================================================================
//function : FillShells
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillShells()
{
  FillContainers(TopAbs_SHELL);
}
//=======================================================================
//function : FillSolids
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillSolids()
{
  FillContainers(TopAbs_SOLID);
} 
//=======================================================================
//function : FillCompSolids
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillCompSolids()
{
  FillContainers(TopAbs_COMPSOLID);
} 
//=======================================================================
//function : FillVertices
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillVertices()
{
  TopAbs_ShapeEnum aType;
  TopoDS_Vertex aVnew;
  TopTools_ListIteratorOfListOfShape aItLS;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItDMSLS;
  //
  myErrorStatus=0;
  myWarningStatus=0;
  //
  aItDMSLS.Initialize(myImagesToWork);
  for (; aItDMSLS.More(); aItDMSLS.Next()) {
    const TopoDS_Shape& aSkey=aItDMSLS.Key();
    aType=aSkey.ShapeType();
    if (aType!=TopAbs_VERTEX) {
      continue;
    }
    //
    const TopTools_ListOfShape& aLSD=aItDMSLS.Value();
    //
    GEOMAlgo_Gluer2::MakeVertex(aLSD, aVnew);
    //
    myImages.Bind(aVnew, aLSD);
    //
    aItLS.Initialize(aLSD);
    for (; aItLS.More(); aItLS.Next()) {
      const TopoDS_Shape& aV=aItLS.Value();
      myOrigins.Bind(aV, aVnew);
    }
  }
}
//=======================================================================
//function : FillBRepShapes
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillBRepShapes(const TopAbs_ShapeEnum theType)
{ 
  Standard_Boolean bHasImage, bIsToWork;
  Standard_Integer i, aNbE;
  TopoDS_Iterator aItS;
  TopoDS_Shape aEnew;
  TopTools_IndexedMapOfShape aME;
  TopTools_MapOfShape aMFence;
  TopTools_ListIteratorOfListOfShape aItLS;
  //
  myErrorStatus=0;
  myWarningStatus=0;
  //
  TopExp::MapShapes(myArgument, theType, aME);
  //
  aNbE=aME.Extent();
  for (i=1; i<=aNbE; ++i) {
    const TopoDS_Shape& aE=aME(i);
    //
    if (!aMFence.Add(aE)) {
      continue;
    }
    //
    bIsToWork=myOriginsToWork.IsBound(aE);
    bHasImage=HasImage(aE);
    if (!bHasImage && !bIsToWork) {
      continue;
    }
    //
    MakeBRepShapes(aE, aEnew);
    //
    //myImages / myOrigins
    if (bIsToWork) {
      const TopoDS_Shape& aSkey=myOriginsToWork.Find(aE);
      const TopTools_ListOfShape& aLSD=myImagesToWork.Find(aSkey);
      //
      myImages.Bind(aEnew, aLSD);
      //
      aItLS.Initialize(aLSD);
      for (; aItLS.More(); aItLS.Next()) {
        const TopoDS_Shape& aEx=aItLS.Value();
        myOrigins.Bind(aEx, aEnew);
        //
        aMFence.Add(aEx);
      }
    }
    else {
      TopTools_ListOfShape aLSD;
      //
      aLSD.Append(aE);
      myImages.Bind(aEnew, aLSD);
      myOrigins.Bind(aE, aEnew);
    }
  }//for (i=1; i<=aNbF; ++i) {
}
//=======================================================================
//function : FillContainers
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillContainers(const TopAbs_ShapeEnum aType)
{
  Standard_Boolean bHasImage, bToReverse;
  Standard_Integer i, aNbW;
  TopoDS_Shape aWnew, aEnew;
  TopoDS_Iterator aItS;
  BRep_Builder aBB;
  TopTools_IndexedMapOfShape aMW;
  TopTools_MapOfShape aMFence;
  //
  myErrorStatus=0;
  myWarningStatus=0;
  //
  TopExp::MapShapes(myArgument, aType, aMW);
  //
  aNbW=aMW.Extent();
  for (i=1; i<=aNbW; ++i) {
    const TopoDS_Shape& aW=aMW(i);
    //
    if (!aMFence.Add(aW)) {
      continue;
    }
    //
    bHasImage=HasImage(aW);
    if (!bHasImage) {
      continue;
    }
    //
    GEOMAlgo_Tools3D::MakeContainer(aType, aWnew);
    //modified by NIZNHY-PKV Tue May 10 13:46:30 2011f
    aWnew.Orientation(aW.Orientation());
    //modified by NIZNHY-PKV Tue May 10 13:46:32 2011t
    //
    aItS.Initialize(aW);
    for (; aItS.More(); aItS.Next()) {
      const TopoDS_Shape& aE=aItS.Value();
      if (myOrigins.IsBound(aE)) {
        aEnew=myOrigins.Find(aE);
        //
        bToReverse=GEOMAlgo_Tools3D::IsSplitToReverse(aEnew, aE, myContext);
        if (bToReverse) {
          aEnew.Reverse();
        }
        //
        aBB.Add(aWnew, aEnew);
      }
      else {
        aBB.Add(aWnew, aE);
      }
    }
    //
    //modified by NIZNHY-PKV Tue May 10 13:46:19 2011f
    //aWnew.Orientation(aW.Orientation());
    //modified by NIZNHY-PKV Tue May 10 13:46:22 2011t
    //
    //myImages / myOrigins
    TopTools_ListOfShape aLSD;
    //
    aLSD.Append(aW);
    myImages.Bind(aWnew, aLSD);
    myOrigins.Bind(aW, aWnew);
    //
  }//for (i=1; i<=aNbE; ++i) {
}
//=======================================================================
//function : FillCompounds
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillCompounds()
{
  TopAbs_ShapeEnum aType;
  TopoDS_Iterator aItC;
  //
  myErrorStatus=0;
  myWarningStatus=0;
  //
  aItC.Initialize(myArgument);
  for (; aItC.More(); aItC.Next()) {
    const TopoDS_Shape& aCx=aItC.Value();
    aType=aCx.ShapeType();
    if (aType==TopAbs_COMPOUND) {
      FillCompound(aCx);
    }
  }
}
//=======================================================================
//function : FillCompound
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::FillCompound(const TopoDS_Shape& aC)
{
  Standard_Boolean bHasImage;
  TopAbs_ShapeEnum aType;
  TopoDS_Shape aCnew, aCXnew;
  TopoDS_Iterator aItC;
  BRep_Builder aBB;
  //
  bHasImage=HasImage(aC);
  if (!bHasImage) {
    return;
  }
  //
  GEOMAlgo_Tools3D::MakeContainer(TopAbs_COMPOUND, aCnew);
  //
  aItC.Initialize(aC);
  for (; aItC.More(); aItC.Next()) {
    const TopoDS_Shape& aCX=aItC.Value();
    aType=aCX.ShapeType();
    //
    if (aType==TopAbs_COMPOUND) {
      FillCompound(aCX);
    }
    //
    if (myOrigins.IsBound(aCX)) {
      aCXnew=myOrigins.Find(aCX);
      aCXnew.Orientation(aCX.Orientation());
      aBB.Add(aCnew, aCXnew);
    }
    else {
      aBB.Add(aCnew, aCX);
    }
  }
  //
  //myImages / myOrigins
  TopTools_ListOfShape aLSD;
  //
  aLSD.Append(aC);
  myImages.Bind(aCnew, aLSD);
  myOrigins.Bind(aC, aCnew);
}
//=======================================================================
//function : HasImage
//purpose  : 
//=======================================================================
Standard_Boolean GEOMAlgo_Gluer2::HasImage(const TopoDS_Shape& aC)
{
  Standard_Boolean bRet;
  TopAbs_ShapeEnum aType;
  TopoDS_Iterator aItC;
  //
  bRet=Standard_False;
  aItC.Initialize(aC);
  for (; aItC.More(); aItC.Next()) {
    const TopoDS_Shape& aCx=aItC.Value();
    aType=aCx.ShapeType();
    //
    if (aType==TopAbs_COMPOUND) {
      bRet=HasImage(aCx);
      if (bRet) {
        return bRet;
      }
    }
    else {
      bRet=myOrigins.IsBound(aCx);
      if (bRet) {
        return bRet;
      }
    }
  }
  //
  bRet=myOrigins.IsBound(aC);
  //
  return bRet;
}
//=======================================================================
//function : BuildResult
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::BuildResult()
{
  Standard_Boolean bHasImage;
  TopoDS_Shape aCnew, aCXnew;
  TopoDS_Iterator aItC;
  BRep_Builder aBB;
  //
  myErrorStatus=0;
  myWarningStatus=0;
  //
  aItC.Initialize(myArgument);
  for (; aItC.More(); aItC.Next()) {
    const TopoDS_Shape& aCx=aItC.Value();
    bHasImage=HasImage(aCx);
    if (bHasImage) {
      break;
    }
  }
  //
  if (!bHasImage) {
    myShape=myArgument;
    return;
  }
  //
  GEOMAlgo_Tools3D::MakeContainer(TopAbs_COMPOUND, aCnew);
  //
  aItC.Initialize(myArgument);
  for (; aItC.More(); aItC.Next()) {
    const TopoDS_Shape& aCX=aItC.Value();
    if (myOrigins.IsBound(aCX)) {
      aCXnew=myOrigins.Find(aCX);
      aCXnew.Orientation(aCX.Orientation());
      aBB.Add(aCnew, aCXnew);
    }
    else {
      aBB.Add(aCnew, aCX);
    }
  }
  //
  if (!myKeepNonSolids) {
    Standard_Integer i, aNb;
    TopoDS_Shape aCnew1;
    TopTools_IndexedMapOfShape aM;
    //
    GEOMAlgo_Tools3D::MakeContainer(TopAbs_COMPOUND, aCnew1);
    //
    TopExp::MapShapes(aCnew, TopAbs_SOLID, aM);
    
    aNb=aM.Extent();
    for (i=1; i<=aNb; ++i) {
      const TopoDS_Shape& aS=aM(i);
      aBB.Add(aCnew1, aS);
    }
    aCnew=aCnew1;
  }
  //
  myShape=aCnew;
}
//--------------------------------------------------------
//
// ErrorStatus
// 11   - GEOMAlgo_GlueDetector failed
// 13   - PerformImagesToWork failed
// 14   - PerformImagesToWork failed
//
// WarningStatus
// 1    - no shapes to glue
