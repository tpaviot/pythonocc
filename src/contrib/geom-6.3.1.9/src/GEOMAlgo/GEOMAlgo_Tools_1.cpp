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
// File:	GEOMAlgo_Tools_1.cxx
// Created:	Thu May  6 10:46:21 2010
// Author:	Peter KURNEV
//		<pkv@irinox>

#include <GEOMAlgo_Tools.ixx>
//
#include <NCollection_DataMap.hxx>

#include <gp_Pnt2d.hxx>
#include <gp_Pnt.hxx>

#include <Geom2dAdaptor_Curve.hxx>
#include <Geom2dInt_GInter.hxx>
#include <Geom2d_Curve.hxx>
#include <Geom_Curve.hxx>
#include <Geom_Surface.hxx>
#include <GeomAdaptor_Surface.hxx>

#include <IntRes2d_Domain.hxx>
#include <IntRes2d_IntersectionPoint.hxx>
#include <IntRes2d_Transition.hxx>

#include <TopoDS_Iterator.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopExp_Explorer.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>

#include <TopTools_MapOfShape.hxx>
#include <TopTools_ShapeMapHasher.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include <BRepTools.hxx>

static 
  inline Standard_Boolean IsEqual(const TopoDS_Shape& aS1, 
				  const TopoDS_Shape& aS2) {
  return TopTools_ShapeMapHasher::IsEqual(aS1, aS2);
}
//
static
  Standard_Boolean CorrectWire(const TopoDS_Wire& aW,
			       const TopoDS_Face& aF);

//=======================================================================
//function : CorrectWires
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_Tools::CorrectWires(const TopoDS_Shape& aShape)
{
  Standard_Boolean bRet;
  TopoDS_Iterator aItF;
  TopExp_Explorer aExp;
  TopTools_MapOfShape aMF;
  GeomAdaptor_Surface aGAS;
  GeomAbs_SurfaceType aTS;
  TopLoc_Location aLoc; 
  //
  bRet=Standard_False;
  //
  aExp.Init(aShape, TopAbs_FACE);
  for (; aExp.More(); aExp.Next()) {
    const TopoDS_Face& aF=*((TopoDS_Face*)&aExp.Current());
    if (aMF.Add(aF)) {
      const Handle(Geom_Surface)& aS=BRep_Tool::Surface(aF, aLoc);
      aGAS.Load(aS);
      aTS=aGAS.GetType();
      if (aTS==GeomAbs_Cylinder || aTS==GeomAbs_Plane) {
	aItF.Initialize(aF);
	for (; aItF.More(); aItF.Next()) {
	  const TopoDS_Wire& aW=*((TopoDS_Wire*)&aItF.Value());
	  if (CorrectWire(aW, aF)) {
	   bRet=Standard_True;
	  }
	}
      }
    }
  }
  return bRet;
}
//=======================================================================
//class: GEOMAlgo_InfoEdge
//purpose  : 
//=======================================================================
class GEOMAlgo_InfoEdge {
 public:
  //
  GEOMAlgo_InfoEdge() {
    myErrorStatus=0;
    myTolInt=1.0e-10;
  };
  //
  ~GEOMAlgo_InfoEdge(){
  };
  //
  void Init(const TopoDS_Edge& aE, 
	    const TopoDS_Face& aF);
  //
  void SetTolInt(const Standard_Real aTolInt) {
    myTolInt=aTolInt;
  };
  //
  const Standard_Real TolInt() const {
    return myTolInt;
  }
  //
  const Geom2dAdaptor_Curve& Adaptor() const {
    return myGAC2D;
  }
  //
  const IntRes2d_Domain& Domain()const {
    return myDomain;
  }
  //
  const Handle(Geom2d_Curve)& CurveOnSurface()const {
    return myC2D;
  }
  //
  const Handle(Geom_Curve)& Curve()const {
    return myC3D;
  }
  //
  Standard_Integer ErrorStatus()const {
    return myErrorStatus;
  }
  //
 protected:
  Standard_Integer myErrorStatus;
  Standard_Real myTolInt;
  Geom2dAdaptor_Curve myGAC2D;
  IntRes2d_Domain myDomain;
  Handle(Geom2d_Curve) myC2D;
  Handle(Geom_Curve) myC3D;
};
//
typedef NCollection_DataMap<TopoDS_Shape, GEOMAlgo_InfoEdge> GEOMAlgo_DataMapOfShapeInfoEdge; 
typedef GEOMAlgo_DataMapOfShapeInfoEdge::Iterator GEOMAlgo_DataMapIteratorOfDataMapOfShapeInfoEdge; 

//=======================================================================
//function : Init
//purpose  : 
//=======================================================================
  void GEOMAlgo_InfoEdge::Init(const TopoDS_Edge& aE, 
			       const TopoDS_Face& aF)
{
  Standard_Real aT1, aT2, aT1x, aT2x;
  gp_Pnt2d aP2D1, aP2D2;
  //
  myErrorStatus=0;
  //
  myC3D=BRep_Tool::Curve(aE, aT1, aT2);
  myC2D=BRep_Tool::CurveOnSurface(aE ,aF, aT1, aT2);
  if (!myC2D.IsNull() && aT2>aT1) {
    myGAC2D.Load(myC2D);
    if(!myGAC2D.IsPeriodic()) {
      aT1x=myGAC2D.FirstParameter();
      aT2x=myGAC2D.LastParameter();
      if(aT1x > aT1) {
	aT1=aT1x;
      }
      if(aT2x < aT2) {
	aT2=aT2x;
      }
    }
    //
    BRep_Tool::UVPoints(aE, aF, aP2D1, aP2D2);
    myDomain.SetValues(aP2D1, aT1, myTolInt, aP2D2, aT2, myTolInt);
  }
  else {
    myErrorStatus=10;
    return;
  }
}
//=======================================================================
//function : CorrectWire
//purpose  : 
//=======================================================================
Standard_Boolean CorrectWire(const TopoDS_Wire& aW,
			     const TopoDS_Face& aF)
{
  Standard_Boolean bRet;
  Standard_Real aTolInt;
  Standard_Integer iErr, aNbV, aNbE;
  TopoDS_Iterator aItW, aItE;
  Geom2dInt_GInter aInter;
  GEOMAlgo_DataMapOfShapeInfoEdge aDMEIE;
  TopTools_DataMapOfShapeListOfShape aDMVLE;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItDMVLE;
  //
  bRet=Standard_False;
  aTolInt=1.0e-10;
  //
  aItW.Initialize(aW);
  for (; aItW.More(); aItW.Next()) {
    const TopoDS_Edge& aE=*((TopoDS_Edge*)&aItW.Value());
    
    aItE.Initialize(aE);
    for (aNbV=0; aItE.More(); aItE.Next(), ++aNbV) {
    }
    if (aNbV<2) {
      return bRet; //
    }
    //
    if (!aDMEIE.IsBound(aE)) {
      GEOMAlgo_InfoEdge aInfoEdge;
      //
      aInfoEdge.Init (aE, aF);
      iErr=aInfoEdge.ErrorStatus();
      if (iErr) {
	return bRet; //
      }
      //
      aDMEIE.Bind(aE, aInfoEdge);
    }
    //
    aItE.Initialize(aE);
    for (; aItE.More(); aItE.Next()) {
      const TopoDS_Shape& aV=aItE.Value();
      if (aDMVLE.IsBound(aV)) {
	TopTools_ListOfShape& aLE=aDMVLE.ChangeFind(aV);
	aLE.Append(aE);
      }
      else {
	TopTools_ListOfShape aLE;
	aLE.Append(aE);
	aDMVLE.Bind(aV, aLE);
      }
    }
  }
  //
  // 2
  Standard_Real aTolV, aD1, aD2, aDmax, aCoeff;
  gp_Pnt aPV;
  Handle(Geom_Surface) aS;
  BRep_Builder aBB;
  //
  aCoeff=1.1;
  aS=BRep_Tool::Surface(aF);
  //
  aItDMVLE.Initialize(aDMVLE);
  for(; aItDMVLE.More(); aItDMVLE.Next()) {
    const TopoDS_Vertex& aV=*((TopoDS_Vertex*)&aItDMVLE.Key());
    const TopTools_ListOfShape& aLE=aItDMVLE.Value();
    aNbE=aLE.Extent();
    if (aNbE!=2) {
      continue;
    }
    //
    aPV=BRep_Tool::Pnt(aV);
    aTolV=BRep_Tool::Tolerance(aV);
    //
    const TopoDS_Edge& aE1=*((TopoDS_Edge*)&aLE.First());
    const GEOMAlgo_InfoEdge& aIE1=aDMEIE.Find(aE1); 
    const Geom2dAdaptor_Curve& aGAC1=aIE1.Adaptor();
    const IntRes2d_Domain& aDomain1=aIE1.Domain();
    //
    const TopoDS_Edge& aE2=*((TopoDS_Edge*)&aLE.Last()); 
    const GEOMAlgo_InfoEdge& aIE2=aDMEIE.Find(aE2);
    const Geom2dAdaptor_Curve& aGAC2=aIE2.Adaptor();
    const IntRes2d_Domain& aDomain2=aIE2.Domain();
    //
    aInter.Perform(aGAC1, aDomain1,aGAC2, aDomain2, aTolInt, aTolInt);
    if(!aInter.IsDone()) { 
      continue;
    }
    //
    Standard_Integer i, aNbP;
    Standard_Real aIP_ParamOnFirst, aIP_ParamOnSecond;
    gp_Pnt aP3D1, aP3D2;
    gp_Pnt2d aP2D1, aP2D2;
    IntRes2d_Transition aTr1, aTr2;
    //
    aNbP=aInter.NbPoints();
    for (i=1; i<=aNbP; ++i) {
      const IntRes2d_IntersectionPoint& aIP = aInter.Point(i);
      aIP_ParamOnFirst  = aIP.ParamOnFirst();
      aIP_ParamOnSecond = aIP.ParamOnSecond();
      aTr1 =aIP.TransitionOfFirst();
      aTr2 =aIP.TransitionOfSecond();
      if(aTr1.PositionOnCurve()==IntRes2d_Middle ||
	 aTr2.PositionOnCurve()==IntRes2d_Middle) {
	//
	const Handle(Geom_Curve)& aC3D1=aIE1.Curve();
	if (!aC3D1.IsNull()) {
	  aP3D1=aC3D1->Value(aIP_ParamOnFirst);
	}
	else {
	  aP2D1=aGAC1.Value(aIP_ParamOnFirst);
	  aS->D0(aP2D1.X(), aP2D1.Y(), aP3D1);
	}
	//
	const Handle(Geom_Curve)& aC3D2=aIE2.Curve();   
	if (!aC3D2.IsNull()) {
	  aP3D2=aC3D2->Value(aIP_ParamOnSecond);
	}
	else {
	  aP2D2=aGAC2.Value(aIP_ParamOnSecond);
	  aS->D0(aP2D2.X(), aP2D2.Y(), aP3D2);
	}
	//
	aD1=aPV.Distance(aP3D1);
	aD2=aPV.Distance(aP3D2);
	aDmax=(aD1>aD2)? aD1 : aD2;
	if (aDmax>aCoeff*aTolV) {
	  if (aDmax<10.*aTolV){
	    aBB.UpdateVertex(aV, aDmax);
	    bRet=Standard_True;
	  }
	}
      }//
    }//for (i=1; i<=aNbP; ++i) {
  }//for(; aItDMVLE.More(); aItDMVLE.Next()) {
  return bRet;
}


