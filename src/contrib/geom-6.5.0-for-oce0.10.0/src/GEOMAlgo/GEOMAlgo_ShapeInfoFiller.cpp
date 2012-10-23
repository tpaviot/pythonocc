// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

#include <GEOMAlgo_ShapeInfoFiller.hxx>

#include <Precision.hxx>

#include <gp_Lin.hxx>
#include <gp_Pnt.hxx>
#include <gp_Dir.hxx>

#include <Geom_Curve.hxx>
#include <GeomAdaptor_Curve.hxx>

#include <TopoDS_Vertex.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>

#include <BRep_Tool.hxx>
#include <TopExp.hxx>

#include <TopTools_IndexedMapOfShape.hxx>
#include <gp_Circ.hxx>
#include <gp_Ax2.hxx>
#include <gp_Elips.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopoDS_Wire.hxx>
#include <TopExp.hxx>
#include <Geom_Surface.hxx>
#include <TopoDS_Face.hxx>
#include <GeomAdaptor_Surface.hxx>
#include <gp_Pln.hxx>
#include <gp_Sphere.hxx>
#include <gp_Ax3.hxx>
#include <BRepTools.hxx>
#include <gp_Cylinder.hxx>
#include <gp_Cone.hxx>
#include <gp_Torus.hxx>
#include <TopoDS_Solid.hxx>




static
  Standard_Boolean IsAllowedType(const GeomAbs_CurveType aCT);
static
  Standard_Boolean IsAllowedType(const GeomAbs_SurfaceType aST);
static
  Standard_Integer NbWires(const TopoDS_Face& aF);
static
  Standard_Integer NbShells(const TopoDS_Solid& aS);

//=======================================================================
//function :
//purpose  :
//=======================================================================
  GEOMAlgo_ShapeInfoFiller::GEOMAlgo_ShapeInfoFiller()
:
  GEOMAlgo_Algo()
{
  myTolerance=0.0001;
}
//=======================================================================
//function : ~
//purpose  :
//=======================================================================
  GEOMAlgo_ShapeInfoFiller::~GEOMAlgo_ShapeInfoFiller()
{
}
//=======================================================================
//function : SetTolerance
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::SetTolerance(const Standard_Real aT)
{
  myTolerance=aT;
}
//=======================================================================
//function : Tolerance
//purpose  :
//=======================================================================
  Standard_Real GEOMAlgo_ShapeInfoFiller::Tolerance()const
{
  return myTolerance;
}
//=======================================================================
//function : SetShape
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::SetShape(const TopoDS_Shape& aS)
{
  myShape=aS;
}
//=======================================================================
//function : Shape
//purpose  :
//=======================================================================
  const TopoDS_Shape& GEOMAlgo_ShapeInfoFiller::Shape() const
{
  return myShape;
}
//=======================================================================
//function : Info
//purpose  :
//=======================================================================
  const GEOMAlgo_ShapeInfo& GEOMAlgo_ShapeInfoFiller::Info() const
{
  return Info(myShape);
}
//=======================================================================
//function : Info
//purpose  :
//=======================================================================
  const GEOMAlgo_ShapeInfo& GEOMAlgo_ShapeInfoFiller::Info(const TopoDS_Shape& aS) const
{
  if (!aS.IsNull()) {
    if (myMapInfo.Contains(aS)) {
      const GEOMAlgo_ShapeInfo& aInfo=myMapInfo.FindFromKey(aS);
      return aInfo;
    }
  }
  return myEmptyInfo;
}

//=======================================================================
//function : CheckData
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::CheckData()
{
  myErrorStatus=0;
  //
  if (myShape.IsNull()) {
    myErrorStatus=10;
    return;
  }
}
//=======================================================================
//function : Perform
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::Perform()
{
  myErrorStatus=0;
  //
  myMapInfo.Clear();
  //
  CheckData();
  if (myErrorStatus) {
    return;
  }
  //
  FillShape(myShape);
}
//=======================================================================
//function :FillShape
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillShape(const TopoDS_Shape& aS)
{
  TopAbs_ShapeEnum aType;
  //
  aType=aS.ShapeType();
  switch(aType) {
    //
    case TopAbs_VERTEX:
      FillVertex(aS);
      break;
    //
    case TopAbs_EDGE:
      FillEdge(aS);
      break;
    //
    case TopAbs_FACE:
      FillFace(aS);
      break;
    //
    case TopAbs_SOLID:
      FillSolid(aS);
      break;
    //
    case TopAbs_WIRE:
    case TopAbs_SHELL:
    case TopAbs_COMPSOLID:
    case TopAbs_COMPOUND:
      FillContainer(aS);
      break;
    //
    default:
      break;
  }
}
//=======================================================================
//function :FillSubShapes
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillSubShapes(const TopoDS_Shape& aS)
{
  TopoDS_Iterator aIt;
  //
  aIt.Initialize(aS);
  for (; aIt.More(); aIt.Next()){
    const TopoDS_Shape& aSx=aIt.Value();
    FillShape(aSx);
  }
}
//=======================================================================
//function : FillContainer
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillContainer(const TopoDS_Shape& aS)
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsClosed;
  TopAbs_ShapeEnum aType;
  GEOMAlgo_KindOfClosed aKC;
  //
  aType=aS.ShapeType();
  //----------------------------------------------------
  if (myMapInfo.Contains(aS)) {
    return;
  }
  else {
    GEOMAlgo_ShapeInfo aInfoX;
    myMapInfo.Add(aS, aInfoX);
  }
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aS);
  //----------------------------------------------------
  aInfo.SetType(aType);
  FillNbSubShapes(aS, aInfo);
  //
  if (aType==TopAbs_SHELL) {
    bIsClosed=BRep_Tool::IsClosed(aS);
    aKC=(bIsClosed) ? GEOMAlgo_KC_CLOSED :GEOMAlgo_KC_NOTCLOSED;
    aInfo.SetKindOfClosed(aKC);
  }
  else if (aType==TopAbs_WIRE) {
    TopoDS_Wire aW;
    TopoDS_Vertex aV1, aV2;
    //
    aW=TopoDS::Wire(aS);
    TopExp::Vertices(aW, aV1, aV2);
    //
    bIsClosed=aV1.IsSame(aV2);
    aKC=(bIsClosed) ? GEOMAlgo_KC_CLOSED :GEOMAlgo_KC_NOTCLOSED;
    aInfo.SetKindOfClosed(aKC);
  }
  //
  FillSubShapes(aS);
}
//=======================================================================
//function : FillSolid
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillSolid(const TopoDS_Shape& aS)
{
  Standard_Integer aNbShells;
  TopoDS_Solid aSd;
  //
  myErrorStatus=0;
  //----------------------------------------------------
  if (myMapInfo.Contains(aS)) {
    return;
  }
  else {
    GEOMAlgo_ShapeInfo aInfoX;
    myMapInfo.Add(aS, aInfoX);
  }
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aS);
  //----------------------------------------------------
  aInfo.SetType(TopAbs_SOLID);
  FillNbSubShapes(aS, aInfo);
  FillSubShapes(aS);
  //
  aSd=TopoDS::Solid(aS);
  //
  aNbShells=NbShells(aSd);
  if (aNbShells>1) {
    return;
  }
  //
  FillDetails(aSd);
}
//=======================================================================
//function :FillFace
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillFace(const TopoDS_Shape& aS)
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsAllowedType;
  Standard_Integer aNbWires;//, iRet
  Standard_Boolean bInf, bInfU1, bInfU2, bInfV1, bInfV2;
  Standard_Real aUMin, aUMax, aVMin, aVMax, aR1, aR2;
  gp_Pnt aP0;
  gp_Dir aDN;
  gp_Ax3 aAx3;
  GeomAbs_SurfaceType aST;
  Handle(Geom_Surface) aSurf;
  TopoDS_Face aF;
  //GEOMAlgo_KindOfName aKindOfName;
  //----------------------------------------------------
  if (myMapInfo.Contains(aS)) {
    return;
  }
  else {
    GEOMAlgo_ShapeInfo aInfoX;
    myMapInfo.Add(aS, aInfoX);
  }
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aS);
  //----------------------------------------------------
  aInfo.SetType(TopAbs_FACE);
  //
  FillNbSubShapes(aS, aInfo);
  //
  FillSubShapes(aS);
  //
  aF=TopoDS::Face(aS);
  //
  aNbWires=NbWires(aF);
  //
  aSurf=BRep_Tool::Surface(aF);
  GeomAdaptor_Surface aGAS(aSurf);
  aST=aGAS.GetType();
  bIsAllowedType=IsAllowedType(aST);
  if (!bIsAllowedType) {
    return;
  }
  //
  // 1. Plane
  if (aST==GeomAbs_Plane) {
    gp_Pln aPln;
    //
    aPln=aGAS.Plane();
    aP0=aPln.Location();
    aAx3=aPln.Position();
    //
    aInfo.SetKindOfShape(GEOMAlgo_KS_PLANE);
    aInfo.SetKindOfClosed(GEOMAlgo_KC_NOTCLOSED);
    aInfo.SetLocation(aP0);
    aInfo.SetPosition(aAx3);
    //
    if (aNbWires>1) return;
    //
    //aSurf->Bounds(aUMin, aUMax, aVMin, aVMax);
    BRepTools::UVBounds(aF, aUMin, aUMax, aVMin, aVMax);
    bInfU1=Precision::IsNegativeInfinite(aUMin);
    bInfU2=Precision::IsPositiveInfinite(aUMax);
    bInfV1=Precision::IsNegativeInfinite(aVMin);
    bInfV2=Precision::IsPositiveInfinite(aVMax);
    //
    bInf=(bInfU1 || bInfU2 || bInfV1 || bInfV2);
    if (bInf) {
      aInfo.SetKindOfBounds(GEOMAlgo_KB_INFINITE);
    }
    else {
      aInfo.SetKindOfBounds(GEOMAlgo_KB_TRIMMED);
    }
    //
    FillDetails(aF, aPln);
  }// if (aCT==GeomAbs_Line) {
  //
  // 2. Sphere
  else if (aST==GeomAbs_Sphere) {
    gp_Sphere aSphere;
    //
    aSphere=aGAS.Sphere();
    aP0=aSphere.Location();
    aAx3=aSphere.Position();
    aR1=aSphere.Radius();
    //
    aInfo.SetKindOfShape(GEOMAlgo_KS_SPHERE);
    aInfo.SetLocation(aP0);
    aInfo.SetPosition(aAx3);
    aInfo.SetRadius1(aR1);
    //
    if (aNbWires>1) return;
    //
    aInfo.SetKindOfBounds(GEOMAlgo_KB_TRIMMED);
    aInfo.SetKindOfClosed(GEOMAlgo_KC_CLOSED);
    //
    FillDetails(aF, aSphere);
  }// else if (aST==GeomAbs_Sphere) {
  //
  // 3. Cylinder
  else if (aST==GeomAbs_Cylinder) {
    gp_Cylinder aCyl;
    //
    aCyl=aGAS.Cylinder();
    aP0=aCyl.Location();
    aAx3=aCyl.Position();
    aR1=aCyl.Radius();
    //
    aInfo.SetKindOfShape(GEOMAlgo_KS_CYLINDER);
    aInfo.SetLocation(aP0);
    aInfo.SetPosition(aAx3);
    aInfo.SetRadius1(aR1);
    //
    if (aNbWires>1) return;
    //
    BRepTools::UVBounds(aF, aUMin, aUMax, aVMin, aVMax);
    bInfU1=Precision::IsNegativeInfinite(aUMin);
    bInfU2=Precision::IsPositiveInfinite(aUMax);
    bInfV1=Precision::IsNegativeInfinite(aVMin);
    bInfV2=Precision::IsPositiveInfinite(aVMax);
    //
    bInf=(bInfU1 || bInfU2 || bInfV1 || bInfV2);
    if (bInf) {
      aInfo.SetKindOfBounds(GEOMAlgo_KB_INFINITE);
    }
    else {
      aInfo.SetKindOfBounds(GEOMAlgo_KB_TRIMMED);
    }
    FillDetails(aF, aCyl);
  }
  //
  // 4. Cone
  else if (aST==GeomAbs_Cone) {
    gp_Cone aCone;
    //
    aCone=aGAS.Cone();
    aP0=aCone.Location();
    aAx3=aCone.Position();
    //aR1=aCyl.Radius();
    //
    aInfo.SetKindOfShape(GEOMAlgo_KS_CONE);
    aInfo.SetLocation(aP0);
    aInfo.SetPosition(aAx3);
    //aInfo.SetRadius1(aR1);
    //
    if (aNbWires>1) return;
    //
    BRepTools::UVBounds(aF, aUMin, aUMax, aVMin, aVMax);
    bInfU1=Precision::IsNegativeInfinite(aUMin);
    bInfU2=Precision::IsPositiveInfinite(aUMax);
    bInfV1=Precision::IsNegativeInfinite(aVMin);
    bInfV2=Precision::IsPositiveInfinite(aVMax);
    //
    bInf=(bInfU1 || bInfU2 || bInfV1 || bInfV2);
    if (bInf) {
      aInfo.SetKindOfBounds(GEOMAlgo_KB_INFINITE);
    }
    else {
      aInfo.SetKindOfBounds(GEOMAlgo_KB_TRIMMED);
    }
    FillDetails(aF, aCone);
  }
  //
  // 5. Torus
  else if (aST==GeomAbs_Torus) {
    gp_Torus aTorus;
    //
    aTorus=aGAS.Torus();
    aP0=aTorus.Location();
    aAx3=aTorus.Position();
    aR1=aTorus.MajorRadius();
    aR2=aTorus.MinorRadius();
    //
    aInfo.SetKindOfShape(GEOMAlgo_KS_TORUS);
    aInfo.SetLocation(aP0);
    aInfo.SetPosition(aAx3);
    aInfo.SetRadius1(aR1);
    aInfo.SetRadius2(aR2);
    //
    if (aNbWires>1) return;
    //
    aInfo.SetKindOfBounds(GEOMAlgo_KB_TRIMMED);
    //
    FillDetails(aF, aTorus);
  }
}
//=======================================================================
//function :FillEdge
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillEdge(const TopoDS_Shape& aS)
{
  myErrorStatus=0;
  //
  Standard_Boolean bDegenerated, bIsAllowedType;
  Standard_Integer aNbV;
  Standard_Real aR1, aR2;
  gp_Pnt aP, aP1, aP2, aPc;
  gp_Dir aD;
  gp_Ax2 aAx2;
  Standard_Real aT1, aT2;
  GeomAbs_CurveType aCT;
  Handle(Geom_Curve) aC3D;
  TopoDS_Edge aE;
  //----------------------------------------------------
  if (myMapInfo.Contains(aS)) {
    return;
  }
  else {
    GEOMAlgo_ShapeInfo aInfoX;
    myMapInfo.Add(aS, aInfoX);
  }
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aS);
  //----------------------------------------------------
  aInfo.SetType(TopAbs_EDGE);
  //
  FillNbSubShapes(aS, aInfo);
  //
  aE=TopoDS::Edge(aS);
  //
  bDegenerated=BRep_Tool::Degenerated(aE);
  if (bDegenerated) {
    aInfo.SetKindOfShape(GEOMAlgo_KS_DEGENERATED);
    FillSubShapes(aS);
    return;
  }
  //
  aC3D=BRep_Tool::Curve(aE, aT1, aT2);
  GeomAdaptor_Curve aGAC(aC3D);
  aCT=aGAC.GetType();
  bIsAllowedType=IsAllowedType(aCT);
  if (!bIsAllowedType) {
    FillSubShapes(aS);
    return;
  }
  // Line
  if (aCT==GeomAbs_Line) {
    Standard_Boolean bInf1, bInf2;
    Standard_Real aLength;
    gp_Lin aLin;
    gp_XYZ aXYZ1, aXYZ2, aXYZc;
    //
    aLin=aGAC.Line();
    aP=aLin.Location();
    aD=aLin.Direction();
    //
    aInfo.SetKindOfShape(GEOMAlgo_KS_LINE);
    aInfo.SetKindOfClosed(GEOMAlgo_KC_NOTCLOSED);
    aInfo.SetLocation(aP);
    aInfo.SetDirection(aD);
    //
    bInf1=Precision::IsNegativeInfinite(aT1);
    bInf2=Precision::IsPositiveInfinite(aT2);
    if (bInf1||bInf2) {
      aInfo.SetKindOfBounds(GEOMAlgo_KB_INFINITE);
      aInfo.SetKindOfName(GEOMAlgo_KN_LINE);
    }
    else {
      aInfo.SetKindOfBounds(GEOMAlgo_KB_TRIMMED);
      aInfo.SetKindOfName(GEOMAlgo_KN_SEGMENT);
      aGAC.D0(aT1, aP1);
      aGAC.D0(aT2, aP2);
      aInfo.SetPnt1(aP1);
      aInfo.SetPnt2(aP2);
      //
      aLength=aP1.Distance(aP2);
      aXYZ1=aP1.XYZ();
      aXYZ2=aP2.XYZ();
      aXYZc=aXYZ1+aXYZ2;
      aXYZc.Multiply(0.5);
      //
      aPc.SetXYZ(aXYZc);
      gp_Vec aVec(aPc, aP2);
      gp_Dir aDir(aVec);
      //
      aInfo.SetLocation(aPc);
      aInfo.SetDirection(aDir);
      aInfo.SetLength(aLength);
    }
  }// if (aCT==GeomAbs_Line) {
  //
  // Circle
  else if (aCT==GeomAbs_Circle) {
    gp_Circ aCirc;
    //
    aCirc=aGAC.Circle();
    aP=aCirc.Location();
    aAx2=aCirc.Position();
    aR1=aCirc.Radius();
    //
    aInfo.SetKindOfShape(GEOMAlgo_KS_CIRCLE);
    aInfo.SetLocation(aP);
    aInfo.SetPosition(aAx2);
    aInfo.SetRadius1(aR1);
    //
    aNbV=aInfo.NbSubShapes(TopAbs_VERTEX);
    if (!aNbV) {
      myErrorStatus=11; // circle edge without vertices
      return;
    }
    aInfo.SetKindOfBounds(GEOMAlgo_KB_TRIMMED);
    aGAC.D0(aT1, aP1);
    aGAC.D0(aT2, aP2);
    aInfo.SetPnt1(aP1);
    aInfo.SetPnt2(aP2);
    //
    if (aNbV==1) {
      aInfo.SetKindOfClosed(GEOMAlgo_KC_CLOSED);
      aInfo.SetKindOfName(GEOMAlgo_KN_CIRCLE);
    }
    else {
      aInfo.SetKindOfClosed(GEOMAlgo_KC_NOTCLOSED);
      aInfo.SetKindOfName(GEOMAlgo_KN_ARCCIRCLE);
      //
      gp_Vec aVecX(aP, aP1);
      gp_Dir aDirX(aVecX);
      gp_Ax2 aAx2new(aP, aAx2.Direction(), aDirX);
      aInfo.SetPosition(aAx2new);
    }
  }// else if (aCT==GeomAbs_Circle) {
  //
  // Ellipse
  else if (aCT==GeomAbs_Ellipse) {
    gp_Elips aElips;
    //
    aElips=aGAC.Ellipse();
    aP=aElips.Location();
    aAx2=aElips.Position();
    aR1=aElips.MajorRadius();
    aR2=aElips.MinorRadius();
    //
    aInfo.SetKindOfShape(GEOMAlgo_KS_ELLIPSE);
    aInfo.SetLocation(aP);
    aInfo.SetPosition(aAx2);
    aInfo.SetRadius1(aR1);
    aInfo.SetRadius2(aR2);
    //
    aNbV=aInfo.NbSubShapes(TopAbs_VERTEX);
    if (!aNbV) {
      myErrorStatus=11; // ellipse edge without vertices
      return;
    }
    aInfo.SetKindOfBounds(GEOMAlgo_KB_TRIMMED);
    aGAC.D0(aT1, aP1);
    aGAC.D0(aT2, aP2);
    aInfo.SetPnt1(aP1);
    aInfo.SetPnt2(aP2);
    //
    if (aNbV==1) {
      aInfo.SetKindOfClosed(GEOMAlgo_KC_CLOSED);
      aInfo.SetKindOfName(GEOMAlgo_KN_ELLIPSE);
    }
    else {
      aInfo.SetKindOfClosed(GEOMAlgo_KC_NOTCLOSED);
      aInfo.SetKindOfName(GEOMAlgo_KN_ARCELLIPSE);
      //
      gp_Vec aVecX(aP, aP1);
      gp_Dir aDirX(aVecX);
      gp_Ax2 aAx2new(aP, aAx2.Direction(), aDirX);
      aInfo.SetPosition(aAx2new);
    }
  }// else if (aCT==GeomAbs_Ellipse) {
  //
  FillSubShapes(aS);
}
//=======================================================================
//function :FillVertex
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillVertex(const TopoDS_Shape& aS)
{
  myErrorStatus=0;
  //
  gp_Pnt aP;
  TopoDS_Vertex aV;
  //
  if (myMapInfo.Contains(aS)) {
    return;
  }
  else {
    GEOMAlgo_ShapeInfo aInfoX;
    myMapInfo.Add(aS, aInfoX);
  }
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aS);
  //
  aV=TopoDS::Vertex(aS);
  aP=BRep_Tool::Pnt(aV);
  //
  aInfo.SetType(TopAbs_VERTEX);
  aInfo.SetLocation(aP);
  myMapInfo.Add(aS, aInfo);
}
//=======================================================================
//function : FillNbSubshapes
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillNbSubShapes(const TopoDS_Shape& aS,
                                                 GEOMAlgo_ShapeInfo& aInfo)
{
  myErrorStatus=0;
  //
  Standard_Integer i, aNb, aNbS;
  TopTools_IndexedMapOfShape aM;
  TopAbs_ShapeEnum aST;
  TopAbs_ShapeEnum aTypes[]= {
    //TopAbs_FACE, TopAbs_EDGE, TopAbs_VERTEX
    TopAbs_COMPOUND,
    TopAbs_COMPSOLID,
    TopAbs_SOLID,
    TopAbs_SHELL,
    TopAbs_FACE,
    TopAbs_WIRE,
    TopAbs_EDGE,
    TopAbs_VERTEX
  };

  //
  aST=aS.ShapeType();
  aNb=sizeof(aTypes)/sizeof(aTypes[0]);
  for (i=0; i<aNb; ++i) {
    if (aTypes[i]==aST) {
      continue;
    }
    aM.Clear();
    TopExp::MapShapes(aS, aTypes[i], aM);
    aNbS=aM.Extent();
    aInfo.SetNbSubShapes(aTypes[i], aNbS);
  }
}
//=======================================================================
//function :NbShells
//purpose  :
//=======================================================================
Standard_Integer NbShells(const TopoDS_Solid& aSd)
{
  Standard_Integer iCnt;
  TopoDS_Iterator aIt;
  //
  iCnt=0;
  //
  aIt.Initialize(aSd);
  for (; aIt.More(); aIt.Next()){
    //const TopoDS_Shape& aSh=aIt.Value();
    ++iCnt;
  }
  return iCnt;
}
//=======================================================================
//function : NbWires
//purpose  :
//=======================================================================
Standard_Integer NbWires(const TopoDS_Face& aF)
{
  Standard_Integer iCnt;
  TopoDS_Iterator aIt;
  //
  iCnt=0;
  //
  aIt.Initialize(aF);
  for (; aIt.More(); aIt.Next()){
    //const TopoDS_Shape& aW=aIt.Value();
    ++iCnt;
  }
  return iCnt;
}
//=======================================================================
//function : IsAllowedType
//purpose  :
//=======================================================================
Standard_Boolean IsAllowedType(const GeomAbs_CurveType aCT)
{
  Standard_Boolean bRet;
  Standard_Integer i, aNb;
  GeomAbs_CurveType aTypes[]={
    GeomAbs_Line, GeomAbs_Circle, GeomAbs_Ellipse
  };
  //
  bRet=Standard_False;
  aNb=sizeof(aTypes)/sizeof(aTypes[0]);
  for (i=0; i<aNb && !bRet; ++i) {
    bRet=(aCT==aTypes[i]);
  }
  //
  return bRet;
}
//=======================================================================
//function : IsAllowedType
//purpose  :
//=======================================================================
Standard_Boolean IsAllowedType(const GeomAbs_SurfaceType aST)
{
  Standard_Boolean bRet;
  Standard_Integer i, aNb;
  GeomAbs_SurfaceType aTypes[]={
    GeomAbs_Plane, GeomAbs_Cylinder,
    GeomAbs_Cone,  GeomAbs_Sphere,
    GeomAbs_Torus
  };
  //
  bRet=Standard_False;
  aNb=sizeof(aTypes)/sizeof(aTypes[0]);
  for (i=0; i<aNb && !bRet; ++i) {
    bRet=(aST==aTypes[i]);
  }
  //
  return bRet;
}
//
// myErrorStatus
//
// 0  - Ok
// 1  - The object is just initialized
//
// 10 - Null shape
// 11 - circle/ellipse edge without vertices
