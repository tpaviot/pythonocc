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
// File:	GEOMAlgo_BuilderTools.cxx
// Created:	
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_BuilderTools.ixx>

#include <TColStd_Array1OfReal.hxx>

#include <gp_Pnt2d.hxx>
#include <gp_Vec.hxx>
#include <gp_Dir.hxx>
#include <gp_Pnt.hxx>

#include <TColgp_Array1OfPnt.hxx>

#include <Poly_Triangulation.hxx>
#include <Poly_Array1OfTriangle.hxx>
#include <Poly_Triangle.hxx>

#include <Geom2d_Curve.hxx>
#include <Geom2dInt_Geom2dCurveTool.hxx>

#include <TopLoc_Location.hxx>
#include <TopAbs_Orientation.hxx>

#include <TopExp.hxx>

#include <TopoDS_Face.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopExp_Explorer.hxx>

#include <BRep_Tool.hxx>
#include <BRepBndLib.hxx>
#include <BRepMesh_FastDiscret.hxx>
#include <Bnd_Box.hxx>
#include <BRepAdaptor_Curve2d.hxx>

#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>

static 
  Standard_Integer ComputeProps(const TopoDS_Face& aF,
				Standard_Real& aA,
				Standard_Real& aV);
static
  void BuildTriangulation(const TopoDS_Face& aF);

//=======================================================================
//function : IsHole
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_BuilderTools::IsHole(const TopoDS_Shape& aW,
						 const TopoDS_Shape& aFace)
{
  Standard_Boolean bIsHole;
  Standard_Integer i, aNbS;
  Standard_Real aT1, aT2, aS;
  Standard_Real aU1, aU2, aU, dU;
  Standard_Real aX1, aY1, aX0, aY0;
  TopAbs_Orientation aOr;
  
  gp_Pnt2d aP2D0, aP2D1;
  Handle(Geom2d_Curve) aC2D;
  TopoDS_Face aF, aFF;
  TopoDS_Iterator aItW;
  //
  bIsHole=Standard_False;
  //
  aF=TopoDS::Face(aFace);
  aFF=aF;
  aFF.Orientation(TopAbs_FORWARD);
  //
  aS=0.;
  aItW.Initialize(aW);
  for (; aItW.More(); aItW.Next()) { 
    const TopoDS_Edge& aE=TopoDS::Edge(aItW.Value());
    aOr=aE.Orientation();
    if (!(aOr==TopAbs_FORWARD || 
	  aOr==TopAbs_REVERSED)) {
      continue;
    }
    //
    aC2D=BRep_Tool::CurveOnSurface(aE, aFF, aT1, aT2);
    if (aC2D.IsNull()) {
      break; //xx
    }
    //
    BRepAdaptor_Curve2d aBAC2D(aE, aFF);
    aNbS=Geom2dInt_Geom2dCurveTool::NbSamples(aBAC2D);
    if (aNbS>2) {
      aNbS*=4;
    }
    //
    dU=(aT2-aT1)/(Standard_Real)(aNbS-1);
    aU =aT1;
    aU1=aT1;
    aU2=aT2;
    if (aOr==TopAbs_REVERSED) {
      aU =aT2;
      aU1=aT2;
      aU2=aT1;
      dU=-dU;
    }
    //
    aC2D->D0(aU, aP2D0);
    for(i=2; i<=aNbS; i++) {
      aU=aU1+(i-1)*dU;
      aC2D->D0(aU, aP2D1);
      aP2D0.Coord(aX0, aY0);
      aP2D1.Coord(aX1, aY1);
      //
      aS=aS+(aY0+aY1)*(aX1-aX0); 
      //
      aP2D0=aP2D1;
    }
  }//for (; aItW.More(); aItW.Next()) { 
  bIsHole=(aS>0.);
  return bIsHole;
}
//=======================================================================
//function : IsHole
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_BuilderTools::IsHole(const TopoDS_Shape& aShell)
{
  Standard_Boolean bIsHole;
  Standard_Integer iRet;
  Standard_Real aAi, aA, aV, aVi;
  TopExp_Explorer aExp;
  //
  aA=0.;
  aV=0.;
  aExp.Init(aShell, TopAbs_FACE);
  for (; aExp.More(); aExp.Next()) {
    const TopoDS_Face& aF=TopoDS::Face(aExp.Current());
    iRet=ComputeProps(aF, aAi, aVi);
    if (!iRet) {
      aA+=aAi;
      aV+=aVi;
    }
  }
  //
  bIsHole=aV<0.;
  return bIsHole;
}
//=======================================================================
//function : ComputeProps
//purpose  : 
//=======================================================================
Standard_Integer ComputeProps(const TopoDS_Face& aF,
			      Standard_Real& aA,
			      Standard_Real& aV)
{
  Standard_Integer j, i, i1, i2, aNbNodes, aNbTrigs, n[3];
  Standard_Real aAi, aVi;
  gp_Pnt aP[3], aGC, aGC1;
  TopLoc_Location aLoc;
  TopAbs_Orientation aOr;
  Handle(Poly_Triangulation) aTri;
  //
  aA=0.;
  aV=0.;
  //
  aTri=BRep_Tool::Triangulation(aF, aLoc);
  if(aTri.IsNull()) {
    BuildTriangulation(aF);
    aTri=BRep_Tool::Triangulation(aF, aLoc);
    if(aTri.IsNull()) {
      return 1;// a face is without triangulation
    }
  }
  //
  aNbNodes=aTri->NbNodes();
  aNbTrigs=aTri->NbTriangles();
  if (!aNbTrigs){
    return 2;//no triangles
  }
  //
  aOr=aF.Orientation();
  //
  const TColgp_Array1OfPnt& aNodes=aTri->Nodes();
  const Poly_Array1OfTriangle& aTriangles=aTri->Triangles();
  //
  i1=aTriangles.Lower();
  i2=aTriangles.Upper();
  //
  for (i=i1; i<=i2; ++i){
    const Poly_Triangle& aTriangle=aTriangles.Value(i);
    aTriangle.Get(n[0], n[1], n[2]);
    aGC.SetCoord(0.,0.,0.);
    for (j=0; j<3; ++j) {
      aP[j]=aNodes.Value(n[j]);
      aGC.ChangeCoord()+=aP[j].XYZ();
    }
    aGC.ChangeCoord()*=0.333333333333;
    //
    // Normal
    gp_Vec aV01(aP[0], aP[1]);
    gp_Vec aV12(aP[1], aP[2]);
    gp_Vec aVN=aV01^aV12;
    aAi=aVN.Magnitude();
    aA=aA+aAi;
    //
    if (aAi>0.0000001) {
      Standard_Real aSx, aZx;
      gp_Dir aDN(aVN);
      if (aOr==TopAbs_REVERSED) {
	aDN.Reverse();
      }
      //
      aSx=aAi*aDN.Z();
      aZx=aGC.Z();
      aVi=aZx*aSx;
      aV=aV+aVi;
    }
  }
  return 0;
}
//=======================================================================
//function : BuildTriangulation
//purpose  : 
//=======================================================================
void BuildTriangulation(const TopoDS_Face& aF)
{
  Standard_Boolean bWithShare;
  Standard_Real aDiscret, aXmin, aYmin, aZmin, aXmax, aYmax, aZmax;
  Standard_Real dX, dY, dZ, dMax, aCoeff, aAngle;
  Bnd_Box aBox;
  //
  bWithShare=Standard_False;
  aAngle=0.5;
  //
  BRepBndLib::Add(aF, aBox);
  //
  // aDiscret
  aBox.Get(aXmin, aYmin, aZmin, aXmax, aYmax, aZmax);
  dX=aXmax-aXmin;
  dY=aYmax-aYmin;
  dZ=aZmax-aZmin;
  dMax=dX;
  if (dY>dMax) {
    dMax=dY;
  }
  if (dZ>dMax) {
    dMax=dZ;
  }
  //
  aCoeff=0.1;
  aDiscret=aCoeff*dMax;
  //
  BRepMesh_FastDiscret aMesher(aDiscret,
			       aAngle,
			       aBox,
			       bWithShare,
			       Standard_True,
			       Standard_False,
			       Standard_True);

  TopTools_IndexedDataMapOfShapeListOfShape anAncestors;
  TopExp::MapShapesAndAncestors(aF, TopAbs_EDGE, TopAbs_FACE, anAncestors);
  aMesher.Add(aF, anAncestors);
}
