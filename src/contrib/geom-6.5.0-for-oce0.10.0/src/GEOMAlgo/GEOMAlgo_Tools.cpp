// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:        GEOMAlgo_Tools.cxx
// Created:     Mon Dec  6 11:35:29 2004
// Author:      Peter KURNEV

#include <GEOMAlgo_Tools.hxx>

#include <gp.hxx>
#include <gp_Pnt.hxx>
#include <gp_Pnt2d.hxx>
#include <gp_Vec2d.hxx>
#include <gp_Dir2d.hxx>

#include <Geom2d_Curve.hxx>
#include <Geom2d_TrimmedCurve.hxx>

#include <Geom_Curve.hxx>
#include <Geom_Surface.hxx>

#include <GeomAdaptor_Surface.hxx>

#include <GeomAPI_ProjectPointOnSurf.hxx>
#include <GeomAPI_ProjectPointOnCurve.hxx>

#include <TopAbs_ShapeEnum.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Iterator.hxx>

#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <BRepTools.hxx>

#include <BOPTools_Tools2D.hxx>
#include <IntTools_Context.hxx>

#include <GEOMAlgo_PassKeyShape.hxx>
#include <GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape.hxx>

static
  void GetCount(const TopoDS_Shape& aS,
                Standard_Integer& iCnt);

//=======================================================================
//function : IsCompositeShape
//purpose  :
//=======================================================================
Standard_Boolean GEOMAlgo_Tools::IsCompositeShape(const TopoDS_Shape& aS)
{
  Standard_Boolean bRet;
  Standard_Integer iCnt;
  TopoDS_Iterator aIt;
  //
  iCnt=0;
  GetCount(aS, iCnt);
  bRet=(iCnt>1);
  //
  return bRet;
}

//=======================================================================
//function : GetCount
//purpose  :
//=======================================================================
void GetCount(const TopoDS_Shape& aS,
              Standard_Integer& iCnt)
{
  TopoDS_Iterator aIt;
  TopAbs_ShapeEnum aTS;
  //
  aTS=aS.ShapeType();
  //
  if (aTS==TopAbs_SHAPE) {
    return;
  }
  if (aTS!=TopAbs_COMPOUND) {
    ++iCnt;
    return;
  }
  //
  aIt.Initialize(aS);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aSx=aIt.Value();
    GetCount(aSx, iCnt);
  }
}

//=======================================================================
//function : RefineSDShapes
//purpose  :
//=======================================================================
  Standard_Integer GEOMAlgo_Tools::RefineSDShapes(GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape& aMPKLE,
                                                  const Standard_Real aTol,
                                                  const Handle(IntTools_Context)& aCtx)
{
  Standard_Integer i, aNbE, iErr, j, aNbEE, aNbToAdd;
  TopTools_IndexedDataMapOfShapeListOfShape aMEE, aMSDE, aMEToAdd;
  //
  iErr=1;
  //
  aNbE=aMPKLE.Extent();
  for (i=1; i<=aNbE; ++i) {
    TopTools_ListOfShape& aLSDE=aMPKLE.ChangeFromIndex(i);
    //
    aMEE.Clear();
    iErr=GEOMAlgo_Tools::FindSDShapes(aLSDE, aTol, aMEE, aCtx);
    if (iErr) {
      return iErr;
    }
    //
    aNbEE=aMEE.Extent();
    if (aNbEE==1) {
      continue;  // nothing to do
    }
    //
    for (j=1; j<=aNbEE; ++j) {
      TopTools_ListOfShape& aLEE=aMEE.ChangeFromIndex(j);
      //
      if (j==1) {
        aLSDE.Clear();
        aLSDE.Append(aLEE);
      }
      else {
        const TopoDS_Shape& aE1=aLEE.First();
        aMEToAdd.Add(aE1, aLEE);
      }
    }
  }
  //
  aNbToAdd=aMEToAdd.Extent();
  if (!aNbToAdd) {
    return aNbToAdd;
  }
  //
  for (i=1; i<=aNbToAdd; ++i) {
    GEOMAlgo_PassKeyShape aPKE1;
    //
    const TopoDS_Shape& aE1=aMEToAdd.FindKey(i);
    const TopTools_ListOfShape& aLE=aMEToAdd(i);
    //
    //qf
    //aPKE1.SetIds(aE1);
    aPKE1.SetShapes(aE1);
    //qt
    aMPKLE.Add(aPKE1, aLE);
  }
  //
  return 0;
}
//=======================================================================
//function : FindSDShapes
//purpose  :
//=======================================================================
Standard_Integer GEOMAlgo_Tools::FindSDShapes(const TopTools_ListOfShape& aLE,
                                              const Standard_Real aTol,
                                              TopTools_IndexedDataMapOfShapeListOfShape& aMEE,
                                              const Handle(IntTools_Context)& aCtx)
{
  Standard_Integer aNbE, aNbEProcessed, aNbESD, iErr;
  TopTools_ListOfShape aLESD;
  TopTools_ListIteratorOfListOfShape aIt, aIt1;
  TopTools_IndexedMapOfShape aMProcessed;
  TopAbs_ShapeEnum aType;
  //
  aNbE=aLE.Extent();
  if (!aNbE) {
    return 3; // Err
  }
  //modified by NIZNHY-PKV Thu Dec 30 10:56:52 2004 f
  if (aNbE==1) {
    return 0; // Nothing to do
  }
  //modified by NIZNHY-PKV Thu Dec 30 10:56:56 2004 t
  //
  while(1) {
    aNbEProcessed=aMProcessed.Extent();
    if (aNbEProcessed==aNbE) {
      break;
    }
    //
    aIt.Initialize(aLE);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aS=aIt.Value();
      //
      if (aMProcessed.Contains(aS)) {
        continue;
      }
      //
      //modified by NIZNHY-PKV Thu Dec 30 10:57:01 2004 f
      aType=aS.ShapeType();
      if (aType==TopAbs_EDGE) {
        const TopoDS_Edge& aE=TopoDS::Edge(aS);
        if (BRep_Tool::Degenerated(aE)) {
          aMProcessed.Add(aE);
          continue;
        }
      }
      //modified by NIZNHY-PKV Thu Dec 30 10:57:03 2004 t
      //
      aLESD.Clear();
      iErr=GEOMAlgo_Tools::FindSDShapes(aS, aLE, aTol, aLESD, aCtx);
      if (iErr) {
        return 2; // Err
      }
      //
      aNbESD=aLESD.Extent();
      if (!aNbESD) {
        return 1; // Err
      }
      //
      aMEE.Add(aS, aLESD);
      //
      aIt1.Initialize(aLESD);
      for (; aIt1.More(); aIt1.Next()) {
        const TopoDS_Shape& aE1=aIt1.Value();
        aMProcessed.Add(aE1);
      }
    }
  }
  return 0;
}
//=======================================================================
//function : FindSDShapes
//purpose  :
//=======================================================================
Standard_Integer GEOMAlgo_Tools::FindSDShapes(const TopoDS_Shape& aE1,
                                              const TopTools_ListOfShape& aLE,
                                              const Standard_Real aTol,
                                              TopTools_ListOfShape& aLESD,
                                              const Handle(IntTools_Context)& aCtx)
{
  Standard_Boolean bIsDone;
  Standard_Real aTol2, aD2;
  gp_Pnt aP1, aP2;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  aTol2=aTol*aTol;
  GEOMAlgo_Tools::PointOnShape(aE1, aP1);
  //
  aIt.Initialize(aLE);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aE2=aIt.Value();
    if (aE2.IsSame(aE1)) {
       aLESD.Append(aE2);
    }
    else {
      bIsDone=GEOMAlgo_Tools::ProjectPointOnShape(aP1, aE2, aP2, aCtx);
      if (!bIsDone) {
        //return 1;
        continue; // jfa BUG 20361
      }
      aD2=aP1.SquareDistance(aP2);
      if(aD2<aTol2) {
        aLESD.Append(aE2);
      }
    }
  }
  return 0;
}

//=======================================================================
//function : ProjectPointOnShape
//purpose  :
//=======================================================================
Standard_Boolean GEOMAlgo_Tools::ProjectPointOnShape(const gp_Pnt& aP1,
                                                     const TopoDS_Shape& aS,
                                                     gp_Pnt& aP2,
                                                     const Handle(IntTools_Context)& aCtx)
{
  Standard_Boolean bIsDone = Standard_False;
  Standard_Real aT2;
  TopAbs_ShapeEnum aType;
  //
  aType = aS.ShapeType();
  switch (aType)
    {
    case TopAbs_EDGE:
      {
        const TopoDS_Edge& aE2 = TopoDS::Edge(aS);
        //
        if (BRep_Tool::Degenerated(aE2)) { // jfa
          return Standard_True;
        }
        else {
          Standard_Real f, l;
          Handle(Geom_Curve) aC3D = BRep_Tool::Curve (aE2, f, l);
          if (aC3D.IsNull()) {
            return Standard_True;
          }
          bIsDone = aCtx->ProjectPointOnEdge(aP1, aE2, aT2);
        }
        if (!bIsDone) {
          return bIsDone;
        }
        //
        GEOMAlgo_Tools::PointOnEdge(aE2, aT2, aP2);
      }
      break;
      //
    case TopAbs_FACE:
      {
        const TopoDS_Face& aF2 = TopoDS::Face(aS);
        GeomAPI_ProjectPointOnSurf& aProj = aCtx->ProjPS(aF2);
        //
        aProj.Perform(aP1);
        bIsDone = aProj.IsDone();
        if (!bIsDone) {
          return bIsDone;
        }
        //
        aP2 = aProj.NearestPoint();
      }
      break;
      //
    default:
      break; // Err
    }
  return bIsDone;
}
//=======================================================================
//function : PointOnShape
//purpose  :
//=======================================================================
void GEOMAlgo_Tools::PointOnShape(const TopoDS_Shape& aS,
                                  gp_Pnt& aP3D)
{
  TopAbs_ShapeEnum aType;
  //
  aP3D.SetCoord(99.,99.,99.);
  aType=aS.ShapeType();
  switch(aType) {
    case TopAbs_EDGE: {
      const TopoDS_Edge& aE=TopoDS::Edge(aS);
      GEOMAlgo_Tools::PointOnEdge(aE, aP3D);
      }
      break;
      //
    case TopAbs_FACE: {
      const TopoDS_Face& aF=TopoDS::Face(aS);
      GEOMAlgo_Tools::PointOnFace(aF, aP3D);
      }
      break;
      //
    default:
      break; // Err
  }
}
//=======================================================================
//function : PointOnFace
//purpose  :
//=======================================================================
void GEOMAlgo_Tools::PointOnFace(const TopoDS_Face& aF,
                                 gp_Pnt& aP3D)
{
  Standard_Real aU, aV, aUMin, aUMax, aVMin, aVMax;
  //
  BRepTools::UVBounds(aF, aUMin, aUMax, aVMin, aVMax);
  //
  aU=BOPTools_Tools2D::IntermediatePoint(aUMin, aUMax);
  aV=BOPTools_Tools2D::IntermediatePoint(aVMin, aVMax);
  //
  GEOMAlgo_Tools::PointOnFace(aF, aU, aV, aP3D);
}
//=======================================================================
//function : PointOnFace
//purpose  :
//=======================================================================
void GEOMAlgo_Tools::PointOnFace(const TopoDS_Face& aF,
                                 const Standard_Real aU,
                                 const Standard_Real aV,
                                 gp_Pnt& aP3D)
{
  Handle(Geom_Surface) aS;
  //
  aS=BRep_Tool::Surface(aF);
  aS->D0(aU, aV, aP3D);
}
//=======================================================================
//function : PointOnEdge
//purpose  :
//=======================================================================
void GEOMAlgo_Tools::PointOnEdge(const TopoDS_Edge& aE,
                                 gp_Pnt& aP3D)
{
  Standard_Real aTx, aT1, aT2;
  //
  BRep_Tool::Curve(aE, aT1, aT2);
  aTx=BOPTools_Tools2D::IntermediatePoint(aT1, aT2);
  GEOMAlgo_Tools::PointOnEdge(aE, aTx, aP3D);
}
//=======================================================================
//function : PointOnEdge
//purpose  :
//=======================================================================
void GEOMAlgo_Tools::PointOnEdge(const TopoDS_Edge& aE,
                                 const Standard_Real aT,
                                 gp_Pnt& aP3D)
{
  Standard_Real aT1, aT2;
  Handle(Geom_Curve) aC3D;
  //
  aC3D=BRep_Tool::Curve(aE, aT1, aT2);
  aC3D->D0(aT, aP3D);
}
//=======================================================================
//function : RefinePCurveForEdgeOnFace
//purpose  :
//=======================================================================
void GEOMAlgo_Tools::RefinePCurveForEdgeOnFace(const TopoDS_Edge& aE,
                                               const TopoDS_Face& aF,
                                               const Standard_Real aUMin,
                                               const Standard_Real aUMax)
{
  Standard_Real aT1, aT2, aTx, aUx, aTol;
  gp_Pnt2d aP2D;
  Handle(Geom_Surface) aS;
  Handle(Geom2d_Curve) aC2D;
  BRep_Builder aBB;
  //
  aC2D=BRep_Tool::CurveOnSurface(aE, aF, aT1, aT2);
  if (!aC2D.IsNull()) {
    if (BRep_Tool::IsClosed(aE, aF)) {
      return;
    }
    aTx=BOPTools_Tools2D::IntermediatePoint(aT1, aT2);
    aC2D->D0(aTx, aP2D);
    aUx=aP2D.X();
    if (aUx < aUMin || aUx > aUMax) {
      // need to rebuild
      Handle(Geom2d_Curve) aC2Dx;
      //
      aTol=BRep_Tool::Tolerance(aE);
      aBB.UpdateEdge(aE, aC2Dx, aF, aTol);
    }
  }
}
//=======================================================================
//function : IsUPeriodic
//purpose  :
//=======================================================================
Standard_Boolean GEOMAlgo_Tools::IsUPeriodic(const  Handle(Geom_Surface) &aS)
{
  Standard_Boolean bRet;
  GeomAbs_SurfaceType aType;
  GeomAdaptor_Surface aGAS;
  //
  aGAS.Load(aS);
  aType=aGAS.GetType();
  bRet=(aType==GeomAbs_Cylinder||
        aType==GeomAbs_Cone ||
        aType==GeomAbs_Sphere);
  //
  return bRet;
}

//modified by NIZNHY-PKV Fri Feb 03 11:16:35 2012f
//=======================================================================
//function : BuildPCurveForEdgeOnFace
//purpose  :
//=======================================================================
Standard_Integer
  GEOMAlgo_Tools::BuildPCurveForEdgeOnFace(const TopoDS_Edge& aEold,
                                           const TopoDS_Edge& aEnew,
                                           const TopoDS_Face& aF,
                                           const Handle(IntTools_Context)& aCtx)
{
  Standard_Boolean bIsClosed, bUClosed, bHasOld;
  Standard_Integer iRet, aNbPoints;
  Standard_Real aTS, aTS1, aTS2, aT, aT1, aT2, aScPr, aTol;
  Standard_Real aU, aV, aUS1, aVS1, aUS2, aVS2;
  gp_Pnt aP;
  gp_Pnt2d aP2DS1, aP2DS2, aP2D;
  gp_Vec2d aV2DS1, aV2DS2;
  Handle(Geom2d_Curve) aC2D, aC2DS1, aC2DS2;
  Handle(Geom_Surface) aS;
  TopoDS_Edge aES;
  //
  iRet=0;
  //
  bHasOld=BOPTools_Tools2D::HasCurveOnSurface(aEnew, aF, aC2D, aT1, aT2, aTol);
  if (bHasOld) {
    return iRet;
  }
  //
  BOPTools_Tools2D::BuildPCurveForEdgeOnFace(aEnew, aF);
  aC2D=BRep_Tool::CurveOnSurface(aEnew, aF, aT1, aT2);
  if (aC2D.IsNull()){
    iRet=1;
    return iRet;
  }
  //
  bIsClosed=BRep_Tool::IsClosed(aEold, aF);
  if (!bIsClosed) {
    return iRet;
  }
  //
  aTol=1.e-7;
  //
  // 1. bUClosed - direction of closeness
  //
  aES=aEold;
  aES.Orientation(TopAbs_FORWARD);
  aC2DS1=BRep_Tool::CurveOnSurface(aES, aF, aTS1, aTS2);
  //
  aES.Orientation(TopAbs_REVERSED);
  aC2DS2=BRep_Tool::CurveOnSurface(aES, aF, aTS1, aTS2);
  //
  aTS=BOPTools_Tools2D::IntermediatePoint(aTS1, aTS2);
  //
  aC2DS1->D1(aTS, aP2DS1, aV2DS1);
  aC2DS2->D1(aTS, aP2DS2, aV2DS2);
  //
  gp_Vec2d aV2DS12(aP2DS1, aP2DS2);
  gp_Dir2d aD2DS12(aV2DS12);
  const gp_Dir2d& aD2DX=gp::DX2d();
  //
  aScPr=aD2DS12*aD2DX;
  bUClosed=Standard_True;
  if (fabs(aScPr) < aTol) {
    bUClosed=!bUClosed;
  }
  //
  // 2. aP2D - point on curve aC2D, that corresponds to aP2DS1
  aP2DS1.Coord(aUS1, aVS1);
  aP2DS2.Coord(aUS2, aVS2);
  //
  aS=BRep_Tool::Surface(aF);
  aS->D0(aUS1, aVS1, aP);
  //
  GeomAPI_ProjectPointOnCurve& aProjPC=aCtx->ProjPC(aEnew);
  //
  aProjPC.Perform(aP);
  aNbPoints=aProjPC.NbPoints();
  if (!aNbPoints) {
    iRet=2;
    return iRet;
  }
  //
  aT=aProjPC.LowerDistanceParameter();

  //
  // 3. Build the second 2D curve
  Standard_Boolean bRevOrder;
  gp_Vec2d aV2DT, aV2D;
  Handle(Geom2d_Curve) aC2Dnew;
  Handle(Geom2d_TrimmedCurve) aC2DTnew;
  BRep_Builder aBB;
  //
  aC2D->D1(aT, aP2D, aV2D);
  aP2D.Coord(aU, aV);
  //
  aC2Dnew=Handle(Geom2d_Curve)::DownCast(aC2D->Copy());
  aC2DTnew = new Geom2d_TrimmedCurve(aC2Dnew, aT1, aT2);
  //
  aV2DT=aV2DS12;
  if (!bUClosed) {    // V Closed
    if (fabs(aV-aVS2)<aTol) {
      aV2DT.Reverse();
    }
  }
  else {   // U Closed
    if (fabs(aU-aUS2)<aTol) {
      aV2DT.Reverse();
    }
  }
  //
  aC2DTnew->Translate(aV2DT);
  //
  // 4 Order the 2D curves
  bRevOrder=Standard_False;
  aScPr=aV2D*aV2DS1;
  if(aScPr<0.) {
    bRevOrder=!bRevOrder;
  }
  //
  // 5. Update the edge
  aTol=BRep_Tool::Tolerance(aEnew);
  if (!bRevOrder) {
    aBB.UpdateEdge(aEnew, aC2D, aC2DTnew, aF, aTol);
  }
  else {
    aBB.UpdateEdge(aEnew, aC2DTnew, aC2D , aF, aTol);
  }
  //
  return iRet;
}
