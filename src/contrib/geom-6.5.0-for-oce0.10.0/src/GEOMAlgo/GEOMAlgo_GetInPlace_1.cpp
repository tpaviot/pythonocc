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

// File:	GEOMAlgo_GetInPlace_1.cxx
// Author:	Peter KURNEV

#include <GEOMAlgo_GetInPlace.hxx>

#include <math.h>

#include <gp_Pnt.hxx>
#include <gp_Vec.hxx>
#include <gp_Pnt2d.hxx>
#include <gp_Dir2d.hxx>

#include <Geom_Surface.hxx>
#include <Geom2d_Curve.hxx>
#include <Geom2d_Line.hxx>
#include <Geom2d_TrimmedCurve.hxx>
#include <Geom2dAdaptor_Curve.hxx>
#include <Geom2dHatch_Hatcher.hxx>
#include <Geom2dHatch_Intersector.hxx>
#include <HatchGen_Domain.hxx>
#include <GeomAPI_ProjectPointOnCurve.hxx>

#include <TopAbs_State.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TopAbs_Orientation.hxx>

#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Face.hxx>

#include <BRep_Tool.hxx>
#include <TopExp_Explorer.hxx>

#include <BRepTools.hxx>
#include <BRepClass3d_SolidClassifier.hxx>

#include <IntTools_Tools.hxx>

#include <BOPTools_Tools3D.hxx>
#include <BOPTools_Tools2D.hxx>



static
  Standard_Integer PntInEdge(const TopoDS_Edge& aF,
			     gp_Pnt& aP);
static
  Standard_Integer PntInEdge(const TopoDS_Edge& aF,
			     gp_Pnt& aP,
			     Standard_Real& aT);
static
  Standard_Integer PntInFace(const TopoDS_Face& aF,
			     gp_Pnt& aP);
static
  Standard_Integer PntInFace(const TopoDS_Face& aF,
			     gp_Pnt& aP,
			     gp_Pnt2d& theP2D);
static
  Standard_Integer PntInSolid(const TopoDS_Solid& aZ,
			      const Standard_Real aTol,
			      gp_Pnt& aP);


//=======================================================================
//function : CheckCoincidence
//purpose  :
//=======================================================================
Standard_Boolean GEOMAlgo_GetInPlace::CheckCoincidence(const TopoDS_Shape& aS1,
						       const TopoDS_Shape& aS2)
{
  Standard_Boolean bOk;
  Standard_Integer iErr;
  Standard_Real aTol2;
  TopAbs_ShapeEnum aType1, aType2;
  TopAbs_State aState;
  gp_Pnt aP1, aP2;
  //
  myErrorStatus=0;
  //
  iErr=0;
  bOk=Standard_False;
  aTol2=myTolerance*myTolerance;
  aType1=aS1.ShapeType();
  aType2=aS2.ShapeType();
  //
  // 1. A point on shape #2 -> aP2
  if (myMapShapePnt.IsBound(aS2)) {
    aP2=myMapShapePnt.Find(aS2);
  }
  else {//else 1
    if (aType2==TopAbs_VERTEX) {
      const TopoDS_Vertex& aV2=*((TopoDS_Vertex*)&aS2);
      aP2=BRep_Tool::Pnt(aV2);
    }
    //
    else if (aType2==TopAbs_EDGE) {
      const TopoDS_Edge& aE2=*((TopoDS_Edge*)&aS2);
      iErr=PntInEdge(aE2, aP2);
    }
    //
    else if (aType2==TopAbs_FACE) {
      const TopoDS_Face& aF2=*((TopoDS_Face*)&aS2);
      iErr=PntInFace(aF2, aP2);
    }
    //
    else if (aType2==TopAbs_SOLID) {
      const TopoDS_Solid& aZ2=*((TopoDS_Solid*)&aS2);
      iErr=PntInSolid(aZ2, myTolerance, aP2);
    }
    //
    else {
      iErr=1;
    }
    //
    if (iErr) {
      myErrorStatus=50;
      return bOk;
    }
    //
    myMapShapePnt.Bind(aS2, aP2);
  } //else 1
  //
  // 2. Project the point aP2 on shape #1 and check
  if (aType1==TopAbs_EDGE) {
    Standard_Integer aNbPoints;
    Standard_Real aDmin, aT, aT1, aT2, dT;
    //
    const TopoDS_Edge& aE1=*((TopoDS_Edge*)&aS1);
    //
    GeomAPI_ProjectPointOnCurve& aPPC=myContext->ProjPC(aE1);
    aPPC.Perform(aP2);
    aNbPoints=aPPC.NbPoints();
    if (aNbPoints) {
      aDmin=aPPC.LowerDistance();
      aT=aPPC.LowerDistanceParameter();
      if (aDmin < myTolerance) {
	dT=1.e-12;
	BRep_Tool::Curve(aE1, aT1, aT2);
        if(aT > (aT1-dT) && aT < (aT2+dT)) {
	  bOk=Standard_True;
	}
      }
    }
    //else {
    // iErr=2;
    //}
  }//if (aType1==TopAbs_EDGE) {
  //
  else if (aType1==TopAbs_FACE) {
    const TopoDS_Face& aF1=*((TopoDS_Face*)&aS1);
    //
    bOk=myContext->IsValidPointForFace(aP2, aF1, myTolerance);
  }
  //
  else if (aType1==TopAbs_SOLID) {
    const TopoDS_Solid& aZ1=*((TopoDS_Solid*)&aS1);
    //
    BRepClass3d_SolidClassifier& aSC=myContext->SolidClassifier(aZ1);
    aSC.Perform(aP2, myTolerance);
    aState=aSC.State();
    bOk=(aState==TopAbs_IN);
  }
  //
  if (iErr) {
    myErrorStatus=50;
  }
  //
  return bOk;
}
//=======================================================================
//
//=======================================================================
//function : PntInEdge
//purpose  :
//=======================================================================
Standard_Integer PntInEdge(const TopoDS_Edge& aE,
			   gp_Pnt& aP)

{
  Standard_Integer iErr;
  Standard_Real aT;
  //
  iErr=PntInEdge(aE, aP, aT);
  //
  return iErr;
}
//=======================================================================
//function : PntInEdge
//purpose  :
//=======================================================================
Standard_Integer PntInEdge(const TopoDS_Edge& aE,
			   gp_Pnt& aP,
			   Standard_Real& aT)
{
  Standard_Integer iErr;
  Standard_Real aT1, aT2;
  Handle(Geom_Curve) aC3D;
  //
  iErr=0;
  //
  aC3D=BRep_Tool::Curve(aE, aT1, aT2);
  aT=IntTools_Tools::IntermediatePoint(aT1, aT2);
  aC3D->D0(aT, aP);
  //
  return iErr;
}
//=======================================================================
//function : PntInSolid
//purpose  :
//=======================================================================
Standard_Integer PntInSolid(const TopoDS_Solid& aZ,
			    const Standard_Real aTol,
			    gp_Pnt& aP)
{
  Standard_Integer iErr;
  Standard_Real aUx, aVx, aCoef;
  gp_Pnt aPx;
  gp_Pnt2d aP2Dx;
  gp_Vec aDNx;

  TopoDS_Face aF;
  TopExp_Explorer aExp;
  //
  iErr=0;
  aCoef=10.;
  //
  aExp.Init (aZ, TopAbs_FACE);
  for (; aExp.More() ; aExp.Next()) {
    aF=*((TopoDS_Face*)&aExp.Current());
    break;
  }
  //
  iErr=PntInFace(aF, aPx, aP2Dx);
  if (iErr) {
    return iErr;
  }
  //
  aP2Dx.Coord(aUx, aVx);
  BOPTools_Tools2D::FaceNormal(aF, aUx, aVx, aDNx);
  aDNx.Reverse();
  //
  aP.SetXYZ(aPx.XYZ()+aCoef*aTol*aDNx.XYZ());
  //
  return iErr;
}
//=======================================================================
//function : PntInFace
//purpose  :
//=======================================================================
Standard_Integer PntInFace(const TopoDS_Face& aF,
			   gp_Pnt& aP)
{
  Standard_Integer iErr;
  //
  gp_Pnt2d aP2Dx;
  //
  iErr=PntInFace(aF, aP, aP2Dx);
  //
  return iErr;
}
//=======================================================================
//function : PntInFace
//purpose  :
//=======================================================================
Standard_Integer PntInFace(const TopoDS_Face& aF,
			   gp_Pnt& theP,
			   gp_Pnt2d& theP2D)
{
  Standard_Boolean bIsDone, bHasFirstPoint, bHasSecondPoint;
  Standard_Integer iErr, aIx, aNbDomains, i;
  Standard_Real aUMin, aUMax, aVMin, aVMax;
  Standard_Real aVx, aUx, aV1, aV2, aU1, aU2, aEpsT;
  Standard_Real aTotArcIntr, aTolTangfIntr, aTolHatch2D, aTolHatch3D;
  gp_Dir2d aD2D (0., 1.);
  gp_Pnt2d aP2D;
  gp_Pnt aPx;
  Handle(Geom2d_Curve) aC2D;
  Handle(Geom2d_TrimmedCurve) aCT2D;
  Handle(Geom2d_Line) aL2D;
  Handle(Geom_Surface) aS;
  TopAbs_Orientation aOrE;
  TopoDS_Face aFF;
  TopExp_Explorer aExp;
  //
  aTolHatch2D=1.e-8;
  aTolHatch3D=1.e-8;
  aTotArcIntr=1.e-10;
  aTolTangfIntr=1.e-10;
  //
  Geom2dHatch_Intersector aIntr(aTotArcIntr, aTolTangfIntr);
  Geom2dHatch_Hatcher aHatcher(aIntr,
			       aTolHatch2D, aTolHatch3D,
			       Standard_True, Standard_False);
  //
  iErr=0;
  aEpsT=1.e-12;
  //
  aFF=aF;
  aFF.Orientation (TopAbs_FORWARD);
  //
  aS=BRep_Tool::Surface(aFF);
  BRepTools::UVBounds(aFF, aUMin, aUMax, aVMin, aVMax);
  //
  // 1
  aExp.Init (aFF, TopAbs_EDGE);
  for (; aExp.More() ; aExp.Next()) {
    const TopoDS_Edge& aE=*((TopoDS_Edge*)&aExp.Current());
    aOrE=aE.Orientation();
    //
    aC2D=BRep_Tool::CurveOnSurface (aE, aFF, aU1, aU2);
    if (aC2D.IsNull() ) {
      iErr=1;
      return iErr;
    }
    if (fabs(aU1-aU2) < aEpsT) {
      iErr=2;
      return iErr;
    }
    //
    aCT2D=new Geom2d_TrimmedCurve(aC2D, aU1, aU2);
    aHatcher.AddElement(aCT2D, aOrE);
  }// for (; aExp.More() ; aExp.Next()) {
  //
  // 2
  aUx=IntTools_Tools::IntermediatePoint(aUMin, aUMax);
  aP2D.SetCoord(aUx, 0.);
  aL2D=new Geom2d_Line (aP2D, aD2D);
  Geom2dAdaptor_Curve aHCur(aL2D);
  //
  aIx=aHatcher.AddHatching(aHCur) ;
  //
  // 3.
  aHatcher.Trim();
  bIsDone=aHatcher.TrimDone(aIx);
  if (!bIsDone) {
    iErr=3;
    return iErr;
  }
  //
  aHatcher.ComputeDomains(aIx);
  bIsDone=aHatcher.IsDone(aIx);
  if (!bIsDone) {
    iErr=4;
    return iErr;
  }
  //
  // 4.
  aNbDomains=aHatcher.NbDomains(aIx);
  for (i=1; i<=aNbDomains; ++i) {
    const HatchGen_Domain& aDomain=aHatcher.Domain (aIx, i) ;
    bHasFirstPoint=aDomain.HasFirstPoint();
    if (!bHasFirstPoint) {
      iErr=5;
      return iErr;
    }
    //
    aV1=aDomain.FirstPoint().Parameter();
    //
    bHasSecondPoint=aDomain.HasSecondPoint();
    if (!bHasSecondPoint) {
      iErr=6;
      return iErr;
    }
    //
    aV2=aDomain.SecondPoint().Parameter();
    //
    aVx=IntTools_Tools::IntermediatePoint(aV1, aV2);
    //
    break;
  }
  //
  aS->D0(aUx, aVx, aPx);
  //
  theP2D.SetCoord(aUx, aVx);
  theP=aPx;
  //
  return iErr;
}

