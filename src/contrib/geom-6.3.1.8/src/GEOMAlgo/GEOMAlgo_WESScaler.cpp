//  Copyright (C) 2007-2010  CEA/DEN, EDF R&D, OPEN CASCADE
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
// File:	GEOMAlgo_WESScaler.cxx
// Created:	
// Author:	
//		<pkv@VORTEX>


#include <GEOMAlgo_WESScaler.ixx>

#include <gp_Pnt.hxx>
#include <gp_Trsf.hxx>

#include <TopoDS_Face.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopoDS_Wire.hxx>
#include <BRep_Builder.hxx>

#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>

#include <BRepBuilderAPI_Transform.hxx>


//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  GEOMAlgo_WESScaler::GEOMAlgo_WESScaler() 
:
  GEOMAlgo_Algo()
{
  myScale=1.;
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
  GEOMAlgo_WESScaler::~GEOMAlgo_WESScaler() 
{
}
//=======================================================================
// function: SetScale
// purpose: 
//=======================================================================
  void GEOMAlgo_WESScaler::SetScale (const Standard_Real aScale)
{
  myScale=aScale;
}
//=======================================================================
// function: Scale
// purpose: 
//=======================================================================
  Standard_Real GEOMAlgo_WESScaler::Scale()const 
{
  return myScale;
}
//=======================================================================
// function: SetFace
// purpose: 
//=======================================================================
  void GEOMAlgo_WESScaler::SetFace(const TopoDS_Face& aF)
{
  myFace=aF;
}
//=======================================================================
// function: Face
// purpose: 
//=======================================================================
  const TopoDS_Face& GEOMAlgo_WESScaler::Face()const
{
  return myFace;
}
//=======================================================================
// function: SetEdges
// purpose: 
//=======================================================================
  void GEOMAlgo_WESScaler::SetEdges(const TopTools_ListOfShape& aLE)
{
  myEdges=aLE;
}
//=======================================================================
// function: Edges
// purpose: 
//=======================================================================
  const TopTools_ListOfShape& GEOMAlgo_WESScaler::Edges()const
{
  return myEdges;
}
//=======================================================================
// function: FaceScaled
// purpose: 
//=======================================================================
  const TopoDS_Face& GEOMAlgo_WESScaler::FaceScaled()const
{
  return myFaceScaled;
}
//=======================================================================
// function: EdgesScaled
// purpose: 
//=======================================================================
  const TopTools_ListOfShape& GEOMAlgo_WESScaler::EdgesScaled()const
{
  return myEdgesScaled;
}
//=======================================================================
// function: Image
// purpose: 
//=======================================================================
  const TopoDS_Shape& GEOMAlgo_WESScaler::Image (const TopoDS_Shape& aS) const
{
  if (myImages.IsBound(aS)) {
    return myImages.Find(aS);
  }
  return myShapeTmp;
}
//=======================================================================
// function: Origin
// purpose: 
//=======================================================================
  const TopoDS_Shape& GEOMAlgo_WESScaler::Origin (const TopoDS_Shape& aS) const
{
  if (myOrigins.IsBound(aS)) {
    return myOrigins.Find(aS);
  }
  return myShapeTmp;
}
//=======================================================================
// function: Images
// purpose: 
//=======================================================================
  const GEOMAlgo_DataMapOfOrientedShapeShape& GEOMAlgo_WESScaler::Images () const
{
  return myImages;
}
//=======================================================================
// function: Origins
// purpose: 
//=======================================================================
  const GEOMAlgo_DataMapOfOrientedShapeShape& GEOMAlgo_WESScaler::Origins () const
{
  return myOrigins;
}
//=======================================================================
// function: CheckData
// purpose: 
//=======================================================================
  void GEOMAlgo_WESScaler::CheckData()
{
  myErrorStatus=0;
  //
  if(myFace.IsNull()) {
    myErrorStatus=2;
    return;
  }
  if(!myEdges.Extent()) {
    myErrorStatus=3;
    return;
  }
  if (myScale<=0.){
    myErrorStatus=4;
  }
}
//=======================================================================
// function: Perform
// purpose: 
//=======================================================================
  void GEOMAlgo_WESScaler::Perform()
{
  Standard_Boolean bIsDone;
  Standard_Integer i;
  gp_Pnt aP;
  gp_Trsf aTrsf;
  TopAbs_Orientation aOr;
  TopoDS_Shape aFC, aFR, aER;
  TopoDS_Wire aWE;
  TopoDS_Iterator aItS;
  BRep_Builder aBB;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  // 0. CheckData
  CheckData();
  if(myErrorStatus) {
    return;
  }
  //
  myImages.Clear();
  myOrigins.Clear();
  myEdgesScaled.Clear();
  //
  // 1. aFC
  aFC=myFace.EmptyCopied();
  //
  aBB.MakeWire(aWE);
  aIt.Initialize(myEdges);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aE=aIt.Value();
    aBB.Add(aWE, aE);
  }
  aBB.Add(aFC, aWE);
  //
  aItS.Initialize(myFace);
  for (; aItS.More(); aItS.Next()) {
    const TopoDS_Shape& aW=aItS.Value();
    aBB.Add(aFC, aW);
  }
  //
  // 2. Scale aFC
  aP.SetCoord(0.,0.,0.);
  aTrsf.SetScale(aP, myScale);
  //
  BRepBuilderAPI_Transform aBT(aTrsf);
  aBT.Perform(aFC);
  bIsDone=aBT.IsDone();
  if (!bIsDone) {
    myErrorStatus=10;
    return;
  }
  //
  const TopoDS_Shape& aSR=aBT.Shape();
  //
  // Refined image face FR 
  aFR=aSR.EmptyCopied();
  aItS.Initialize(aSR);
  for (i=0; aItS.More(); aItS.Next(),++i) {
    const TopoDS_Shape& aWR=aItS.Value();
    if (i) {
      aBB.Add(aFR, aWR);
    }
  }
  myFaceScaled=*((TopoDS_Face*)&aFR);
  //
  // 3. Fill Images, Origins, EdgesScaled
  aIt.Initialize(myEdges);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aE=aIt.Value();
    aOr=aE.Orientation();
    //
    aER=aBT.ModifiedShape(aE);
    if(aER.IsNull()) {
      myErrorStatus=11;
      return;
    }
    //
    aER.Orientation(aOr);
    myImages.Bind(aE, aER);
    myOrigins.Bind(aER, aE);
    //
    myEdgesScaled.Append(aER);
  }
}
