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
// File:	GEOMAlgo_FinderShapeOn1.cxx
// Created:	Fri Mar  4 10:31:06 2005
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_FinderShapeOn1.ixx>
#include <math.h>


#include <Precision.hxx>
#include <TColStd_Array1OfInteger.hxx>
#include <TColStd_MapOfInteger.hxx>

#include <gp_Trsf.hxx>
#include <gp_Cylinder.hxx>
#include <gp_Pnt.hxx>

#include <TColgp_Array1OfPnt.hxx>

#include <Poly_Array1OfTriangle.hxx>
#include <Poly_Triangle.hxx>
#include <Poly_PolygonOnTriangulation.hxx>
#include <Poly_Triangulation.hxx>
#include <Poly_Polygon3D.hxx>

#include <Geom_Curve.hxx>
#include <Geom_Surface.hxx>
#include <GeomAdaptor_Surface.hxx>
#include <GeomAbs_SurfaceType.hxx>
#include <GeomAdaptor_Curve.hxx>
#include <GeomAbs_CurveType.hxx>

#include <TopAbs_State.hxx>

#include <TopLoc_Location.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Edge.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>

#include <TopTools_IndexedMapOfShape.hxx>

#include <BRep_Tool.hxx>
#include <BRepLib_MakeEdge.hxx>

#include <GEOMAlgo_ListIteratorOfListOfPnt.hxx>

#include <GEOMAlgo_SurfaceTools.hxx>
#include <GEOMAlgo_StateCollector.hxx>
#include <GEOMAlgo_FinderShapeOn.hxx>

#include <GEOMAlgo_PassKey.hxx>
#include <GEOMAlgo_DataMapOfPassKeyInteger.hxx>
#include <GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger.hxx>

//=======================================================================
//function : GEOMAlgo_FinderShapeOn1
//purpose  : 
//=======================================================================
GEOMAlgo_FinderShapeOn1::GEOMAlgo_FinderShapeOn1()
:
  GEOMAlgo_ShapeAlgo()
{
  myTolerance=0.0001;
  myShapeType=TopAbs_VERTEX;
  myState=GEOMAlgo_ST_UNKNOWN;
  myNbPntsMin=3;
  myNbPntsMax=0;
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
GEOMAlgo_FinderShapeOn1::~GEOMAlgo_FinderShapeOn1()
{
}
//=======================================================================
//function : SetSurface
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::SetSurface(const Handle(Geom_Surface)& aS)
{
  mySurface=aS;
}
//=======================================================================
//function : Surface
//purpose  : 
//=======================================================================
const Handle(Geom_Surface)& GEOMAlgo_FinderShapeOn1::Surface() const
{
  return mySurface;
}
//=======================================================================
//function : SetShapeType
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::SetShapeType(const TopAbs_ShapeEnum aType)
{
  myShapeType=aType;
}
//=======================================================================
//function : ShapeType
//purpose  : 
//=======================================================================
TopAbs_ShapeEnum GEOMAlgo_FinderShapeOn1::ShapeType()const
{
  return myShapeType;
}
//=======================================================================
//function : SetState
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::SetState(const GEOMAlgo_State aState)
{
  myState=aState;
}
//=======================================================================
//function : State
//purpose  : 
//=======================================================================
GEOMAlgo_State GEOMAlgo_FinderShapeOn1::State() const
{
  return myState;
}
//=======================================================================
//function : SetNbPntsMin
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::SetNbPntsMin(const Standard_Integer aNb)
{
  myNbPntsMin=aNb;
}
//=======================================================================
//function : NbPntsMin
//purpose  : 
//=======================================================================
Standard_Integer GEOMAlgo_FinderShapeOn1::NbPntsMin()const
{
  return myNbPntsMin;
}
//=======================================================================
//function : SetNbPntsMax
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::SetNbPntsMax(const Standard_Integer aNb)
{
  myNbPntsMax=aNb;
}
//=======================================================================
//function : NbPntsMax
//purpose  : 
//=======================================================================
Standard_Integer GEOMAlgo_FinderShapeOn1::NbPntsMax()const
{
  return myNbPntsMax;
}
//=======================================================================
// function: MSS
// purpose: 
//=======================================================================
const GEOMAlgo_IndexedDataMapOfShapeState& GEOMAlgo_FinderShapeOn1::MSS() const
{
  return myMSS;
}
//=======================================================================
// function: Shapes
// purpose: 
//=======================================================================
const TopTools_ListOfShape& GEOMAlgo_FinderShapeOn1::Shapes() const
{
  Standard_Integer i, aNb;
  TopTools_ListOfShape* pL;
  //
  pL=(TopTools_ListOfShape*) &myLS;
  pL->Clear();
  //
  aNb=myMSS.Extent();
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape& aS=myMSS.FindKey(i);
    if (aS.ShapeType()==myShapeType) {
      pL->Append(aS);
    }
  }
  return myLS;
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::Perform()
{
  myErrorStatus=0;
  myWarningStatus=0;
  myLS.Clear();
  myMSS.Clear();
  //
  CheckData();
  if(myErrorStatus) {
    return;
  }
  //
  // 1
  ProcessVertices();
  if(myErrorStatus) {
    return;
  }
  if (myShapeType==TopAbs_VERTEX) {
    return;
  }
  //
  // 2
  ProcessEdges();
  if(myErrorStatus) {
    return;
  }
  if (myShapeType==TopAbs_EDGE) {
    return;
  }
  //
  // 3
  ProcessFaces();
  if(myErrorStatus) {
    return;
  }
  if (myShapeType==TopAbs_FACE) {
    return;
  }
  //
  // 4
  ProcessSolids(); 
  //
}
//=======================================================================
//function : ProcessVertices
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::ProcessVertices()
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsConformState;
  Standard_Integer i, aNb;
  gp_Pnt aP;
  TopTools_IndexedMapOfShape aM;
  TopAbs_State aSt;
  //
  TopExp::MapShapes(myShape, TopAbs_VERTEX, aM);
  aNb=aM.Extent();
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Vertex& aV=TopoDS::Vertex(aM(i));
    aP=BRep_Tool::Pnt(aV);
    //
    aSt = GetPointState( aP );
    bIsConformState=GEOMAlgo_SurfaceTools::IsConformState(aSt, myState);
    //
    if (myShapeType==TopAbs_VERTEX){
      if (bIsConformState) {
	myMSS.Add(aV, aSt);
      }
    }
    else if (bIsConformState || aSt==TopAbs_ON) {
      myMSS.Add(aV, aSt);
    }
  }
}
//=======================================================================
//function : ProcessEdges
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::ProcessEdges()
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsConformState, bIsToBreak;
  Standard_Integer i, aNb, iCnt;
  TopAbs_State aSt;
  TopTools_IndexedMapOfShape aM;
  TopExp_Explorer aExp;
  GEOMAlgo_ListIteratorOfListOfPnt aIt;
  GeomAbs_SurfaceType aType1;
  //
  aType1=myGAS.GetType();
  //
  TopExp::MapShapes(myShape, TopAbs_EDGE, aM);
  aNb=aM.Extent();
  for (i=1; i<=aNb; ++i) {
    GEOMAlgo_ListOfPnt aLP;
    GEOMAlgo_StateCollector aSC;
    //
    const TopoDS_Edge& aE=TopoDS::Edge(aM(i));
    //
    aExp.Init(aE, TopAbs_VERTEX);
    for (; aExp.More(); aExp.Next()) {
      const TopoDS_Shape& aV=aExp.Current();
      //
      bIsConformState=myMSS.Contains(aV);
      if (!bIsConformState) {
	break;// vertex has non-conformed state
      }
      else {
	aSt=myMSS.FindFromKey(aV);
	aSC.AppendState(aSt);
      }
    }
    //
    if (!bIsConformState) {
      continue; // vertex has non-conformed state,skip edge
    }
    //
    if (BRep_Tool::Degenerated(aE)) {
      myMSS.Add(aE, aSt); 
      continue;
    }
    //
    if (myState==GEOMAlgo_ST_ON && aType1==GeomAbs_Sphere) {
      Standard_Real aT1, aT2;
      Handle(Geom_Curve) aC; 
      GeomAdaptor_Curve aGAC;
      GeomAbs_CurveType aType2;
      //
      aC=BRep_Tool::Curve(aE, aT1, aT2);
      aGAC.Load(aC);
      //
      aType2=aGAC.GetType();
      if (aType2==GeomAbs_Line) {
	continue;
      }
    }
    //
    InnerPoints(aE, aLP);
    if (myErrorStatus) {
      return;  
    }
    //
    bIsConformState=Standard_True;
    aIt.Initialize(aLP);
    for (iCnt=0; aIt.More(); aIt.Next(), ++iCnt) {
      if (myNbPntsMax) {
	if (iCnt > myNbPntsMax) {
	  break;
	}
      }
      //
      const gp_Pnt& aP=aIt.Value();
      aSt = GetPointState( aP );
      bIsToBreak=aSC.AppendState(aSt);
      if (bIsToBreak) {
	break;
      }
    }
    //
    aSt=aSC.State();    
    //
    bIsConformState=GEOMAlgo_SurfaceTools::IsConformState(aSt, myState);
    if (myShapeType==TopAbs_EDGE) {
      if (bIsConformState) {
	myMSS.Add(aE, aSt);
      }
    }
    else if (bIsConformState || aSt==TopAbs_ON) {
      myMSS.Add(aE, aSt);
    }
  } //  for (i=1; i<=aNb; ++i) next edge 
}
//=======================================================================
//function : ProcessFaces
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::ProcessFaces()
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsConformState, bIsToBreak;
  Standard_Integer i, aNbF, iCnt;
  TopAbs_State aSt;
  TopTools_IndexedMapOfShape aM;
  TopExp_Explorer aExp;
  GEOMAlgo_ListIteratorOfListOfPnt aIt;
  GeomAbs_SurfaceType aType1, aType2;
  //
  aType1=myGAS.GetType();
  //
  TopExp::MapShapes(myShape, TopAbs_FACE, aM);
  aNbF=aM.Extent();
  for (i=1; i<=aNbF; ++i) {
    GEOMAlgo_StateCollector aSC;
    GEOMAlgo_ListOfPnt aLP;
    //
    const TopoDS_Face& aF=TopoDS::Face(aM(i));
    //
    if (myState==GEOMAlgo_ST_ON) {
      Handle(Geom_Surface) aS;
      GeomAdaptor_Surface aGAS;
      //
      aS=BRep_Tool::Surface(aF);
      aGAS.Load(aS);
      aType2=aGAS.GetType();
      if (aType2!=aType1) {
	continue;
      }
    }
    //
    aExp.Init(aF, TopAbs_EDGE);
    for (; aExp.More(); aExp.Next()) {
      const TopoDS_Shape& aE=aExp.Current();
      bIsConformState=myMSS.Contains(aE);
      if (!bIsConformState) {
	break;// edge has non-conformed state
      }
      else {
	aSt=myMSS.FindFromKey(aE);
	aSC.AppendState(aSt);
      }
    }
    //
    if (!bIsConformState) {
      continue; // edge has non-conformed state,skip face
    }
    //
    InnerPoints(aF, aLP);
    if (myErrorStatus) {
      return;
    }
    //
    bIsConformState=Standard_True;
    aIt.Initialize(aLP);
    for (iCnt=0; aIt.More(); aIt.Next(), ++iCnt) {
      if (myNbPntsMax) {
	if (iCnt > myNbPntsMax) {
	  break;
	}
      }
      //
      const gp_Pnt& aP=aIt.Value();
      aSt = GetPointState( aP );
      bIsToBreak=aSC.AppendState(aSt);
      if (bIsToBreak) {
	break;
      }
    }
    //
    aSt=aSC.State();    
    //
    bIsConformState=GEOMAlgo_SurfaceTools::IsConformState(aSt, myState);
    if (myShapeType==TopAbs_FACE) {
      if (bIsConformState) {
	myMSS.Add(aF, aSt);
      }
    }
    else if (bIsConformState || aSt==TopAbs_ON) {
      myMSS.Add(aF, aSt);
    }
  }//  for (i=1; i<=aNb; ++i) next face 
}
//=======================================================================
//function : ProcessSolids
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::ProcessSolids()
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsConformState;
  Standard_Integer i, aNbS, j, aNbF;
  TopTools_IndexedMapOfShape aM, aMF;
  TopAbs_State aSt;
  //
  TopExp::MapShapes(myShape, TopAbs_SOLID, aM);
  aNbS=aM.Extent();
  for (i=1; i<=aNbS; ++i) {
    GEOMAlgo_StateCollector aSC;
    //
    const TopoDS_Shape& aSd=aM(i);
    aMF.Clear();
    TopExp::MapShapes(aSd, TopAbs_FACE, aMF);
    aNbF=aMF.Extent();
    for (j=1; j<=aNbF; ++j) {
      const TopoDS_Shape& aF=aMF(j);
      bIsConformState=myMSS.Contains(aF);
      if (!bIsConformState) {
	break;// face has non-conformed state
      }
      else {
	aSt=myMSS.FindFromKey(aF);
	aSC.AppendState(aSt);
      }
    }
    //
    if (!bIsConformState) {
      continue; // face has non-conformed state,skip solid
    }
    //
    aSt=aSC.State();    
    //
    bIsConformState=GEOMAlgo_SurfaceTools::IsConformState(aSt, myState);
    if (bIsConformState) {
      myMSS.Add(aSd, aSt);
    }
  }
}
//
//=======================================================================
//function : InnerPoints
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::InnerPoints(const TopoDS_Face& aF,
					  GEOMAlgo_ListOfPnt& aLP)
{
  myErrorStatus=0;
  //
  Standard_Integer j, j1, j2, k, n[4], aNbLinks, aNx, aNb, iCnt;//, aNbMax, *pIds;
  TopLoc_Location aLoc;
  Handle(Poly_Triangulation) aTRF;
  TColStd_MapOfInteger aMBN;
  GEOMAlgo_DataMapOfPassKeyInteger aMPKI;
  GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger aIt;
  gp_Pnt aP, aP1, aP2;
  //
  aLP.Clear();
  //
  aTRF=BRep_Tool::Triangulation(aF, aLoc);
  if (aTRF.IsNull()) {
    if (!GEOMAlgo_FinderShapeOn::BuildTriangulation(aF)) {
      myWarningStatus=20; // no triangulation found
      return;
    }
    aTRF=BRep_Tool::Triangulation(aF, aLoc);
  }
  //
  const gp_Trsf& aTrsf=aLoc.Transformation();
  const Poly_Array1OfTriangle& aTrs=aTRF->Triangles();
  const TColgp_Array1OfPnt& aNodes=aTRF->Nodes();
  //
  // map link/nbtriangles
  j1=aTrs.Lower();
  j2=aTrs.Upper();
  for (j=j1; j<=j2; ++j) {
    const Poly_Triangle& aTr=aTrs(j);
    aTr.Get(n[0], n[1], n[2]);
    n[3]=n[0];
    for (k=0; k<3; ++k) {
      GEOMAlgo_PassKey aPK;
      //
      aPK.SetIds(n[k], n[k+1]);
      if (aMPKI.IsBound(aPK)) {
	Standard_Integer& iCntX=aMPKI.ChangeFind(aPK);
	++iCntX;
      }
      else {
	aMPKI.Bind(aPK, 1);
      }
    }
  }
  //
  // boundary nodes aMBN
  aNbLinks=aMPKI.Extent();
  aIt.Initialize(aMPKI);
  for (; aIt.More(); aIt.Next()) {
    iCnt=aIt.Value();
    if (iCnt==1) {
      const GEOMAlgo_PassKey& aPK=aIt.Key();
      //qf
      /*
      aNbMax=aPK.NbMax();
      pIds=(Standard_Integer*)aPK.Key();
      for (k=1; k<3; ++k) {
	aNx=*(pIds+aNbMax-k);
	aMBN.Add(aNx);
      }
      */
      aNx=(Standard_Integer)aPK.Id(1);
      aMBN.Add(aNx);
      aNx=(Standard_Integer)aPK.Id(2);
      aMBN.Add(aNx);
      //qt
    }
  }
  //
  // inner nodes=all_nodes - boundary_nodes 
  j1=aNodes.Lower();
  j2=aNodes.Upper();
  for (j=j1; j<=j2; ++j) {
    if (!aMBN.Contains(j)) {
      aP=aNodes(j).Transformed(aTrsf);
      aLP.Append(aP);
    }
  }
  //
  aNb=aLP.Extent();
  //
  if (!aNb && myNbPntsMin) { 
    // try to fill it yourself
    Standard_Boolean bIsDone;
    Standard_Integer aN1, aN2;
    Handle(Geom_Surface) aS;
    GeomAdaptor_Surface aGAS;
    GeomAbs_SurfaceType aType;
    //
    aS=BRep_Tool::Surface(aF);
    aGAS.Load(aS);
    aType=aGAS.GetType();
    if (aType==GeomAbs_Plane || aType==GeomAbs_Cylinder) {
      // inner links
      aNbLinks=aMPKI.Extent();
      aIt.Initialize(aMPKI);
      for (; aIt.More(); aIt.Next()) {
	iCnt=aIt.Value();
	if (iCnt>1) {
	  // take the first having occured inner link
	  // and discretize it
	  const GEOMAlgo_PassKey& aPK=aIt.Key();
	  //qf
	  /*
	  aNbMax=aPK.NbMax();
	  pIds=(Standard_Integer*)aPK.Key();
	  aN1=*(pIds+aNbMax-1);
	  aN2=*(pIds+aNbMax-2);
	  */
	  //
	  aN1=(Standard_Integer)aPK.Id(1);
	  aN2=(Standard_Integer)aPK.Id(2);
	  //qt
	  aP1=aNodes(aN1).Transformed(aTrsf);
	  aP2=aNodes(aN2).Transformed(aTrsf);
	  //
	  if (aType==GeomAbs_Cylinder) {
	    Standard_Real aTolSM;
	    gp_Cylinder aCyl;
	    //
	    aTolSM=1.523e-6;//~1.-cos(0.1 deg)
	    aCyl=aGAS.Cylinder();
	    if (!GEOMAlgo_SurfaceTools::IsCoaxial(aP1, aP2, aCyl, aTolSM)) {
	      continue;
	    }
	  }
	  //
	  BRepLib_MakeEdge aBME(aP1, aP2);
	  bIsDone=aBME.IsDone();
	  if (!bIsDone) {
	    myErrorStatus=30; //can not obtain the line fron the link
	    return;
	  }
	  //
	  const TopoDS_Shape& aSx=aBME.Shape();
	  const TopoDS_Edge& aE=TopoDS::Edge(aSx);
	  //
	  InnerPoints(aE, myNbPntsMin, aLP);
	  break;
	}// if (iCnt>1)
      }// for (; aIt.More(); aIt.Next())
    }// if (aType==GeomAbs_Plane || aType==GeomAbs_Cylinder) 
  }// if (!aNb && myNbPntsMin) { 
}
//=======================================================================
//function : InnerPoints
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::InnerPoints(const TopoDS_Edge& aE,
					  GEOMAlgo_ListOfPnt& aLP)
{
  myErrorStatus=0;
  //
  Standard_Integer j, aNbNodes, aIndex, aNb;
  Handle(Poly_PolygonOnTriangulation) aPTE;
  Handle(Poly_Triangulation) aTRE;
  TopLoc_Location aLoc;
  gp_Pnt aP;
  //
  aLP.Clear();
  BRep_Tool::PolygonOnTriangulation(aE, aPTE, aTRE, aLoc);
  if (aTRE.IsNull() || aPTE.IsNull()) {
    Handle(Poly_Polygon3D) aPE = BRep_Tool::Polygon3D(aE, aLoc);
    if (aPE.IsNull()) {
      if (!GEOMAlgo_FinderShapeOn::BuildTriangulation(aE)) {
        myErrorStatus=20; // no triangulation found
        return;
      }
      aPE = BRep_Tool::Polygon3D(aE, aLoc);
    }
    const gp_Trsf& aTrsf=aLoc.Transformation();
    const TColgp_Array1OfPnt& aNodes=aPE->Nodes();
    //
    aNbNodes=aPE->NbNodes();
    Standard_Integer low = aNodes.Lower(), up = aNodes.Upper();
    for (j=low+1; j<up; ++j) {
      aP=aNodes(j).Transformed(aTrsf);
      aLP.Append(aP);
    }
  }
  else {
    const gp_Trsf& aTrsf=aLoc.Transformation();
    const TColgp_Array1OfPnt& aNodes=aTRE->Nodes();
    //
    aNbNodes=aPTE->NbNodes();
    const TColStd_Array1OfInteger& aInds=aPTE->Nodes();
    for (j=2; j<aNbNodes; ++j) {
      aIndex=aInds(j);
      aP=aNodes(aIndex).Transformed(aTrsf);
      aLP.Append(aP);
    }
  }
  //
  aNb=aLP.Extent();
  if (!aNb && myNbPntsMin) { 
    // try to fill it yourself
    InnerPoints(aE, myNbPntsMin, aLP);
    aNb=aLP.Extent();
  }
}
//=======================================================================
//function : InnerPoints
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::InnerPoints(const TopoDS_Edge& aE,
					  const Standard_Integer aNbPntsMin,
					  GEOMAlgo_ListOfPnt& aLP)
{
  // try to fill it yourself
  Standard_Boolean bInf1, bInf2;
  Standard_Integer j, aNbT;
  Standard_Real dT, aT, aT1, aT2;
  gp_Pnt aP;
  Handle(Geom_Curve) aC3D;
  //
  aC3D=BRep_Tool::Curve(aE, aT1, aT2);
  if (aC3D.IsNull()) {
    return;
  }
  //
  bInf1=Precision::IsNegativeInfinite(aT1);
  bInf2=Precision::IsPositiveInfinite(aT2);
  if (bInf1 || bInf2) {
    return;
  }
  //
  aNbT=myNbPntsMin+1;
  dT=(aT2-aT1)/aNbT;
  for (j=1; j<=aNbPntsMin; ++j) {
    aT=aT1+j*dT;
    aC3D->D0(aT, aP);
    aLP.Append(aP);
  }
}

//=======================================================================
//function : CheckData
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn1::CheckData()
{
  myErrorStatus=0;
  //
  if(mySurface.IsNull()) {
    myErrorStatus=10; // mySurface=NULL
    return;
  }
  //
  if (myShape.IsNull()) {
    myErrorStatus=11; // myShape=NULL
    return;
  }
  //
  if (!(myShapeType==TopAbs_VERTEX ||
	myShapeType==TopAbs_EDGE ||
	myShapeType==TopAbs_FACE ||
	myShapeType==TopAbs_SOLID)) {
    myErrorStatus=12; // unallowed subshape type
    return;
  }
  //
  if (myState==GEOMAlgo_ST_UNKNOWN || 
      myState==GEOMAlgo_ST_INOUT) {
    myErrorStatus=13; // unallowed state type
    return;
  }
  //
  GeomAbs_SurfaceType aType;
  //
  myGAS.Load(mySurface);
  aType=myGAS.GetType();
  if (!(aType==GeomAbs_Plane || 
	aType==GeomAbs_Cylinder ||
	aType==GeomAbs_Sphere)) {
    myErrorStatus=14; // unallowed surface type
  }
}

//=======================================================================
//function : GetPointState
//purpose  : 
//=======================================================================

TopAbs_State GEOMAlgo_FinderShapeOn1::GetPointState(const gp_Pnt& aP) 
{
  TopAbs_State aSt;
  GEOMAlgo_SurfaceTools::GetState(aP, myGAS, myTolerance, aSt);
  return aSt;
}


//
// myErrorStatus :
//
// 10 -mySurface=NULL
// 11 -myShape=NULL
// 12 -unallowed type of subshapes 
// 13 -unallowed state  
// 14 -unallowed surface type
// 15 -unallowed surface type
// 20- no triangulation found
// 30- can not obtain the line from the link


/*
// Chronometer
#include <OSD_Chronometer.hxx>
#include <Standard_Static.hxx>

Standard_STATIC(OSD_Chronometer, x_S_Chrono);
static void x_StartChrono();
static void x_StopChrono(); 
static Standard_Boolean x_IsToShow(); 
//
//=======================================================================
//function : x_StartChrono
//purpose  : 
//=======================================================================
void x_StartChrono() 
{
  if (x_IsToShow()){
    x_S_Chrono().Reset();
    x_S_Chrono().Start();
  }
}
//=======================================================================
//function : x_StopChrono
//purpose  : 
//=======================================================================
void x_StopChrono() 
{ 
  if (x_IsToShow()){
    Standard_Real Chrono;
    x_S_Chrono().Stop();
    x_S_Chrono().Show(Chrono);
    printf(" Tps: %lf\n", Chrono);
    //cout << "Tps: " << Chrono << endl;
  }
}
//=======================================================================
//function : x_IsToShow
//purpose  : 
//=======================================================================
Standard_Boolean x_IsToShow() 
{ 
  Standard_Boolean bFlag=Standard_False;
  //
  char *xr=getenv ("STDCHRONO");
  if (xr!=NULL){
    if (!strcmp (xr, "yes")) {
      bFlag=!bFlag;
    }
  }
  return bFlag;
}
*/
