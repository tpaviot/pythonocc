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
// File:	GEOMAlgo_Gluer2_1.cxx
// Created:	
// Author:	Peter KURNEV
//		<peter@PREFEX>
//
#include <GEOMAlgo_Gluer2.hxx>

#include <gp_XYZ.hxx>
#include <gp_Pnt.hxx>

#include <TopLoc_Location.hxx>

#include <Geom_Surface.hxx>

#include <TopAbs_ShapeEnum.hxx>

#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Iterator.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>

#include <BRepTools.hxx>
#include <TopExp.hxx>

#include <TopTools_MapOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_ListOfShape.hxx>

#include <BOPTools_Tools.hxx>
#include <BOPTools_Tools2D.hxx>
#include <BOPTools_Tools3D.hxx>

#include <GEOMAlgo_Tools.hxx>


//=======================================================================
//function : MakeBRepShapes
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::MakeBRepShapes(const TopoDS_Shape& theS, 
				    TopoDS_Shape& theSnew)
{
  TopAbs_ShapeEnum aType;
  //
  aType=theS.ShapeType();
  if (aType==TopAbs_EDGE) {
    TopoDS_Edge aEE, aEEnew;
    //
    aEE=*((TopoDS_Edge*)&theS);
    MakeEdge(aEE, aEEnew);
    if (myErrorStatus) {
      return;
    }
    //
    theSnew=aEEnew;
  }
  else if (aType==TopAbs_FACE) {
    TopoDS_Face aFF, aFFnew;
    //
    aFF=*((TopoDS_Face*)&theS);
    MakeFace(aFF, aFFnew);
    if (myErrorStatus) {
      return;
    }
    //
    theSnew=aFFnew;
  }
}
//=======================================================================
//function : MakeFace
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::MakeFace(const TopoDS_Face& theF, 
			       TopoDS_Face& theFnew)
{
  Standard_Boolean bIsToReverse, bIsUPeriodic;
  Standard_Real aTol, aUMin, aUMax, aVMin, aVMax;
  TopAbs_Orientation aOrE;
  Handle(Geom_Surface) aS;
  TopLoc_Location aLoc;
  TopoDS_Shape aW, aWr;
  TopoDS_Edge aEx;
  TopoDS_Face aFF, aFnew;
  TopoDS_Iterator aItW, aItE;
  BRep_Builder aBB;
  TopTools_ListOfShape aLEr;
  TopTools_ListIteratorOfListOfShape aItLE;
  //
  myErrorStatus=0;
  //
  aFF=theF;
  aFF.Orientation(TopAbs_FORWARD);
  //
  aTol=BRep_Tool::Tolerance(aFF);
  aS=BRep_Tool::Surface(aFF, aLoc);
  bIsUPeriodic=GEOMAlgo_Tools::IsUPeriodic(aS);
  BRepTools::UVBounds(aFF, aUMin, aUMax, aVMin, aVMax);
  //
  aBB.MakeFace (aFnew, aS, aLoc, aTol);
  //
  aItW.Initialize(aFF);
  for (; aItW.More(); aItW.Next()) {
    const TopoDS_Shape& aW=aItW.Value();
    //
    if (!myOrigins.IsBound(aW)) {
      aBB.Add(aFnew, aW);
      continue;
    }
    //
    aWr=myOrigins.Find(aW);
    //
    // clear contents of Wr
    aLEr.Clear();
    aItE.Initialize(aWr);
    for (; aItE.More(); aItE.Next()) {
      const TopoDS_Shape& aEr=aItE.Value();
      aLEr.Append(aEr);
    }
    //
    aItLE.Initialize(aLEr);
    for (; aItLE.More(); aItLE.Next()) {
      const TopoDS_Shape& aEr=aItLE.Value();
      aBB.Remove(aWr, aEr);
    }
    //
    // refill contents of Wr
    aItE.Initialize(aW);
    for (; aItE.More(); aItE.Next()) {
      const TopoDS_Edge& aE=*((TopoDS_Edge*)(&aItE.Value()));
      //
      aEx=aE;
      if (myOrigins.IsBound(aE)) {
	aEx=*((TopoDS_Edge*)(&myOrigins.Find(aE)));
      }
      //
      if (!BRep_Tool::Degenerated(aEx)) {
	aEx.Orientation(TopAbs_FORWARD);
	if (bIsUPeriodic) {
	  GEOMAlgo_Tools::RefinePCurveForEdgeOnFace(aEx, aFF, aUMin, aUMax);
	}
	BOPTools_Tools2D::BuildPCurveForEdgeOnFace(aEx, aFF);
	//  
	bIsToReverse=BOPTools_Tools3D::IsSplitToReverse1(aEx, aE, (Handle_IntTools_Context&)myContext);
	if (bIsToReverse) {
	  aEx.Reverse();
	}
      }
      else {
	aEx.Orientation(aE.Orientation());
      }
      aBB.Add(aWr, aEx);
    }// for (; aItE.More(); aItE.Next()) {
    //
    aBB.Add(aFnew, aWr);
  }// for (; aItW.More(); aItW.Next()) {
  theFnew=aFnew;
}
//=======================================================================
//function : MakeEdge
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::MakeEdge(const TopoDS_Edge& aE, 
			       TopoDS_Edge& aNewEdge)
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsDE;
  Standard_Real aT1, aT2;
  TopoDS_Vertex aV1, aV2, aVR1, aVR2;
  TopoDS_Edge aEx;
  //
  bIsDE=BRep_Tool::Degenerated(aE);
  //
  aEx=aE;
  aEx.Orientation(TopAbs_FORWARD);
  //
  TopExp::Vertices(aEx, aV1, aV2);
  //
  aT1=BRep_Tool::Parameter(aV1, aEx);
  aT2=BRep_Tool::Parameter(aV2, aEx);
  //
  aVR1=aV1;
  if (myOrigins.IsBound(aV1)) {
    aVR1=*((TopoDS_Vertex*)&myOrigins.Find(aV1));
  }
  aVR1.Orientation(TopAbs_FORWARD);
  //
  aVR2=aV2;
  if (myOrigins.IsBound(aV2)) {
    aVR2=*((TopoDS_Vertex*)&myOrigins.Find(aV2));
  }
  aVR2.Orientation(TopAbs_REVERSED);
  //
  if (!bIsDE) {
    BOPTools_Tools::MakeSplitEdge(aEx, aVR1, aT1, aVR2, aT2, aNewEdge); 
  }
  else {
    Standard_Real aTol;
    BRep_Builder aBB;
    TopoDS_Edge E;
    //TopAbs_Orientation anOrE;
    //
    //anOrE=aE.Orientation();
    aTol=BRep_Tool::Tolerance(aE);
    //
    E=aEx;
    E.EmptyCopy();
    //
    aBB.Add  (E, aVR1);
    aBB.Add  (E, aVR2);
    aBB.Range(E, aT1, aT2);
    aBB.Degenerated(E, Standard_True);
    aBB.UpdateEdge(E, aTol);
    //
    aNewEdge=E;
  }
}
//=======================================================================
//function : MakeVertex
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::MakeVertex(const TopTools_ListOfShape& aLV, 
				 TopoDS_Vertex& aNewVertex)
{
  Standard_Integer aNbV;
  Standard_Real aTolV, aD, aDmax;
  gp_XYZ aGC;
  gp_Pnt aP3D, aPGC;
  TopoDS_Vertex aVx;
  BRep_Builder aBB;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  aNbV=aLV.Extent();
  if (!aNbV) {
    return;
  }
  //
  // center of gravity
  aGC.SetCoord(0.,0.,0.);
  aIt.Initialize(aLV);
  for (; aIt.More(); aIt.Next()) {
    aVx=*((TopoDS_Vertex*)(&aIt.Value()));
    aP3D=BRep_Tool::Pnt(aVx);
    aGC+=aP3D.XYZ();
  }
  aGC/=(Standard_Real)aNbV;
  aPGC.SetXYZ(aGC);
  //
  // tolerance value
  aDmax=-1.;
  aIt.Initialize(aLV);
  for (; aIt.More(); aIt.Next()) {
    aVx=*((TopoDS_Vertex*)(&aIt.Value()));
    aP3D=BRep_Tool::Pnt(aVx);
    aTolV=BRep_Tool::Tolerance(aVx);
    aD=aPGC.Distance(aP3D)+aTolV;
    if (aD>aDmax) {
      aDmax=aD;
    }
  }
  //
  aBB.MakeVertex (aNewVertex, aPGC, aDmax);
}
//=======================================================================
//function : MapBRepShapes
//purpose  : 
//=======================================================================
void GEOMAlgo_Gluer2::MapBRepShapes(const TopoDS_Shape& aS,
				    TopTools_MapOfShape& aM)
{
  //Standard_Boolean bHasBRep;
  TopAbs_ShapeEnum aType;
  TopoDS_Iterator aIt;
  //
  aType=aS.ShapeType();
  if (aType==TopAbs_VERTEX ||
      aType==TopAbs_EDGE ||
      aType==TopAbs_FACE) {
    aM.Add(aS);
  }
  //
  aIt.Initialize(aS);
  for(; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aSx=aIt.Value();
    aType=aSx.ShapeType();
    GEOMAlgo_Gluer2::MapBRepShapes(aSx, aM);
  }
}

//
// ErrorStatus
//
// 40   - GEOMAlgo_GlueDetector is failed
