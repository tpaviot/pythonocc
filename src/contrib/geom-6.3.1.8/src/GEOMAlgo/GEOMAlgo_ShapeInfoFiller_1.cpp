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
#include <GEOMAlgo_ShapeInfoFiller.ixx>

#include <Precision.hxx>

#include <gp_Lin.hxx>
#include <gp_XYZ.hxx>
#include <gp_Ax1.hxx>
#include <gp_Dir.hxx>
#include <gp_Vec.hxx>
#include <gp_Ax2.hxx>
#include <gp_Ax3.hxx>

#include <ElCLib.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Iterator.hxx>

#include <BRep_Tool.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>

#include <TopTools_MapOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <BRepTools_WireExplorer.hxx>

#include <GEOMAlgo_ShapeInfo.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <TColStd_IndexedMapOfInteger.hxx>

//=======================================================================
//function : FillDetails
//purpose  : 
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillDetails(const TopoDS_Solid& aSd)
{
  Standard_Integer i, aNbF, aNbCyl, aNbCon, aNbPgn, aNbRct, aNbCrc, aNbX;
  TopoDS_Shape aFCyl, aFCon;
  TopTools_IndexedMapOfShape aMF;
  GEOMAlgo_KindOfName aKNF;
  //
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aSd);
  aInfo.SetKindOfName(GEOMAlgo_KN_UNKNOWN);
  //
  TopExp::MapShapes(aSd, TopAbs_FACE, aMF);
  //
  aNbF=aMF.Extent();
  if (!aNbF) {
    return;
  }
  //
  if (aNbF==1) {
    const TopoDS_Shape& aF=aMF(1);
    GEOMAlgo_ShapeInfo& aInfoF=myMapInfo.ChangeFromKey(aF);
    aKNF=aInfoF.KindOfName(); // mb: sphere, torus
    if (aKNF==GEOMAlgo_KN_SPHERE ||
	aKNF==GEOMAlgo_KN_TORUS) {
      aInfo.SetKindOfName(aKNF);
      aInfo.SetLocation(aInfoF.Location());
      aInfo.SetPosition(aInfoF.Position());
      aInfo.SetRadius1(aInfoF.Radius1());
      if(aKNF==GEOMAlgo_KN_TORUS) {
	aInfo.SetRadius2(aInfoF.Radius2());
      }
      return;
    }
  }
  //
  aNbCyl=0;
  aNbCon=0;
  aNbPgn=0;
  aNbRct=0;
  aNbCrc=0;
  for (i=1; i<=aNbF; ++i) {
    const TopoDS_Shape& aF=aMF(i);
    GEOMAlgo_ShapeInfo& aInfoF=myMapInfo.ChangeFromKey(aF);
    aKNF=aInfoF.KindOfName(); 
    if (aKNF==GEOMAlgo_KN_CYLINDER) {
      aFCyl=aF;
      ++aNbCyl;
    }
    else if (aKNF==GEOMAlgo_KN_CONE) {
      aFCon=aF;
      ++aNbCon;
    }
    else if (aKNF==GEOMAlgo_KN_DISKCIRCLE) {
      ++aNbCrc;
    }
    else if (aKNF==GEOMAlgo_KN_POLYGON ||
	    aKNF==GEOMAlgo_KN_TRIANGLE ||
	    aKNF==GEOMAlgo_KN_QUADRANGLE) {
      ++aNbPgn;
      
    } 
    else if (aKNF==GEOMAlgo_KN_RECTANGLE) {
      ++aNbPgn;
      ++aNbRct;
    }
  }
  //
  aNbX=aNbCyl+aNbCrc;
  if (aNbCyl==1 && aNbCrc==2 && aNbX==aNbF) {
    // cylinder (as they understand it)
    GEOMAlgo_ShapeInfo& aInfoF=myMapInfo.ChangeFromKey(aFCyl);
    aKNF=aInfoF.KindOfName(); 
    aInfo.SetKindOfName(aKNF);
    aInfo.SetLocation(aInfoF.Location());
    aInfo.SetPosition(aInfoF.Position());
    aInfo.SetRadius1(aInfoF.Radius1());
    aInfo.SetHeight(aInfoF.Height());
    return;
  }
  //
  aNbX=aNbCon+aNbCrc;
  if (aNbCon==1 && (aNbCrc==1 || aNbCrc==2) && aNbX==aNbF) {
    // cone
    GEOMAlgo_ShapeInfo& aInfoF=myMapInfo.ChangeFromKey(aFCon);
    aKNF=aInfoF.KindOfName(); 
    aInfo.SetKindOfName(aKNF);
    aInfo.SetLocation(aInfoF.Location());
    aInfo.SetPosition(aInfoF.Position());
    aInfo.SetRadius1(aInfoF.Radius1());
    aInfo.SetRadius2(aInfoF.Radius2());
    aInfo.SetHeight(aInfoF.Height());
    return;
  }
  //
  if (aNbPgn!=6) {
    aInfo.SetKindOfName(GEOMAlgo_KN_POLYHEDRON);
    return;
  }
  if (aNbPgn!=aNbRct) {
    aInfo.SetKindOfName(GEOMAlgo_KN_POLYHEDRON);
    return;
  }
  //===================================================
  // aNbRct=6;
  // box
  Standard_Integer j, aNbFi, aNbV, iMax, iMin, iMid;
  Standard_Real aDot, aLength, aWidth, aHeight, aDist[3];
  Standard_Real aDistMin, aDistMax;
  gp_Pnt aPi, aPc;
  gp_Dir aDir[3];
  gp_XYZ aXYZc;
  TColStd_IndexedMapOfInteger aMp;
  TopTools_IndexedMapOfShape aMV, aMFi;
  //
  // barycenter aPc
  TopExp::MapShapes(aSd, TopAbs_VERTEX, aMV);
  aNbV=aMV.Extent();
  if (aNbV!=8) {
    return;
  }
  //
  aXYZc.SetCoord(0.,0.,0.);
  for (i=1; i<=aNbV; ++i) {
    const TopoDS_Vertex& aVi=TopoDS::Vertex(aMV(i));
    aPi=BRep_Tool::Pnt(aVi);
    const gp_XYZ& aXYZ=aPi.XYZ();
    aXYZc=aXYZc+aXYZ;
  }
  //
  aXYZc.Divide(aNbV);
  aPc.SetXYZ(aXYZc);
  //
  // 3 faces
  for (i=1; i<=aNbF; ++i) {
    if (aMp.Contains(i)) {
      continue;
    }
    //
    const TopoDS_Shape& aFi=aMF(i);
    const GEOMAlgo_ShapeInfo& aIFi=myMapInfo.FindFromKey(aFi);
    const gp_Dir& aDNi=aIFi.Position().Direction();
    //
    for (j=i+1; j<=aNbF; ++j) {
      if (aMp.Contains(j)) {
	continue;
      }
      //
      const TopoDS_Shape& aFj=aMF(j);
      const GEOMAlgo_ShapeInfo& aIFj=myMapInfo.FindFromKey(aFj);
      const gp_Dir& aDNj=aIFj.Position().Direction();
      //
      aDot=aDNi*aDNj;
      if (fabs(1.-aDot)<0.0001) {
	aMp.Add(i);
	aMp.Add(j);
	aMFi.Add(aFi);
	break;
      }
      //
    }
  }
  aNbFi=aMFi.Extent();
  if (aNbFi!=3) {
    return;
  }
  //
  aDistMin=1.e15;
  aDistMax=-aDistMin;
  for (i=0; i<aNbFi; ++i) {
    const TopoDS_Shape& aFi=aMFi(i+1);
    const GEOMAlgo_ShapeInfo& aIFi=myMapInfo.FindFromKey(aFi);
    aPi=aIFi.Location();
    aDist[i]=aPc.Distance(aPi);
    if (aDist[i]>aDistMax) {
      aDistMax=aDist[i];
      iMax=i;
    }
    if (aDist[i]<aDistMin) {
      aDistMin=aDist[i];
      iMin=i;
    }
    gp_Vec aVi(aPc, aPi);
    gp_Dir aDi(aVi);
    aDir[i]=aDi;
  }
  //
  if (iMax==iMin) {
    iMax=0;
    iMin=1;
  }
  iMid=3-iMax-iMin;
  //
  aLength=2.*aDist[iMax];
  aWidth=2.*aDist[iMid];
  aHeight=2.*aDist[iMin];
  //
  gp_Ax2 aAx2(aPc, aDir[iMin], aDir[iMax]);
  gp_Ax3 aAx3(aAx2);
  //
  aInfo.SetKindOfName(GEOMAlgo_KN_BOX);
  aInfo.SetLocation(aPc);
  aInfo.SetLength(aLength);
  aInfo.SetWidth(aWidth);
  aInfo.SetHeight(aHeight);
  aInfo.SetPosition(aAx3);
}
//=======================================================================
//function : FillDetails
//purpose  : 
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillDetails(const TopoDS_Face& aF,
					     const gp_Pln& aPln)
{
  Standard_Integer aNbV, aNbE, i, j;
  Standard_Real aDot, aD0, aD1, aLength, aWidth;
  gp_Dir aDx[4], aDX;
  gp_Pnt aPx[4], aP, aPc;
  gp_XYZ aXYZc;
  TopExp_Explorer aExp;
  TopoDS_Shape aE;
  TopoDS_Wire aW;
  TopoDS_Edge aEx;
  TopoDS_Iterator aIt;
  TopTools_IndexedMapOfShape aMV;
  BRepTools_WireExplorer aWExp;
  GEOMAlgo_KindOfName aKN, aKNE;
  GEOMAlgo_KindOfShape aKS;
  //
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aF);
  aKN=GEOMAlgo_KN_UNKNOWN;
  aInfo.SetKindOfName(GEOMAlgo_KN_UNKNOWN);
  //
  aKS=aInfo.KindOfShape();
  if (aKS!=GEOMAlgo_KS_PLANE) {
    return;
  }
  //
  if (aInfo.KindOfBounds()==GEOMAlgo_KB_INFINITE) {
    aInfo.SetKindOfName(GEOMAlgo_KN_PLANE);
    return;
  }
  //
  aNbV=aInfo.NbSubShapes(TopAbs_VERTEX);
  aNbE=aInfo.NbSubShapes(TopAbs_EDGE);
  //
  // 1. may be it is circle/ellipse
  if (aNbV==1 && aNbE==1) {
    aExp.Init(aF, TopAbs_EDGE);
    for (; aExp.More(); aExp.Next()) {
      aE=aExp.Current();
      break;
    }
    //
    const GEOMAlgo_ShapeInfo& aInfoE=myMapInfo.FindFromKey(aE);
    aKNE=aInfoE.KindOfName();
    if (aKNE==GEOMAlgo_KN_CIRCLE) {
      aKN=GEOMAlgo_KN_DISKCIRCLE;
      aInfo.SetKindOfName(aKN);
      aInfo.SetRadius1(aInfoE.Radius1());
      aInfo.SetLocation(aInfoE.Location());
      aInfo.SetPosition(aInfoE.Position());
    }
    if (aKNE==GEOMAlgo_KN_ELLIPSE) {
      aKN=GEOMAlgo_KN_DISKELLIPSE;
      aInfo.SetKindOfName(aKN);
      aInfo.SetRadius1(aInfoE.Radius1());
      aInfo.SetRadius2(aInfoE.Radius2());
      aInfo.SetLocation(aInfoE.Location());
      aInfo.SetPosition(aInfoE.Position());
    }
  }
  //
  // 2. may be it is rectangle
  else  {
    aExp.Init(aF, TopAbs_EDGE);
    for (; aExp.More(); aExp.Next()) {
      aE=aExp.Current();
      const GEOMAlgo_ShapeInfo& aInfoE=myMapInfo.FindFromKey(aE);
      aKNE=aInfoE.KindOfName();
      if (aKNE!=GEOMAlgo_KN_SEGMENT) {
	return;
      }
    }
    //
    aInfo.SetKindOfName(GEOMAlgo_KN_POLYGON);
    //
    if (aNbV==3 && aNbE==3) {
      aInfo.SetKindOfName(GEOMAlgo_KN_TRIANGLE);
      //
      aXYZc.SetCoord(0.,0.,0.);
      TopExp::MapShapes(aF, TopAbs_VERTEX, aMV);
      for (i=1; i<=aNbV; ++i) {
	const TopoDS_Vertex& aV=TopoDS::Vertex(aMV(i));
	aP=BRep_Tool::Pnt(aV);
	const gp_XYZ& aXYZ=aP.XYZ();
	aXYZc=aXYZc+aXYZ;
	aPx[i-1]=aP;
      }
      aXYZc.Divide(3.);
      //
      aPc.SetXYZ(aXYZc);
      gp_Vec aVX(aPc, aPx[0]);
      aVX.Normalize();
      aDX.SetXYZ(aVX.XYZ());
      const gp_Dir& aDZ=aPln.Axis().Direction();
      //
      gp_Ax2 aAx2(aPc, aDZ, aDX);
      gp_Ax3 aAx3(aAx2);
      //
      aInfo.SetLocation(aPc);
      aInfo.SetPosition(aAx3);
      //
      return;
    }
    //
    if (!(aNbV==4 && aNbE==4)) {
      return;
    }
    //
    // aNbV==4 && aNbE==4 and all edges are segments
    aIt.Initialize(aF);
    for (; aIt.More(); aIt.Next()){
      aW=TopoDS::Wire(aIt.Value());
      break;
    }
    //
    aWExp.Init(aW, aF);
    for (i=0; aWExp.More(); aWExp.Next(), ++i) {
      aEx=aWExp.Current();
      const GEOMAlgo_ShapeInfo& aInfoEx=myMapInfo.FindFromKey(aEx);
      aDx[i]=aInfoEx.Direction();
      aPx[i]=aInfoEx.Location();
    }
    //
    for (i=0; i<4; ++i) {
      j=(i==3) ? 0 : i+1;
      aDot=aDx[i]*aDx[j];
      if (fabs (aDot) > myTolerance) {
	aInfo.SetKindOfName(GEOMAlgo_KN_QUADRANGLE);
	return;
      }
    }
    //
    // rectangle 
    aInfo.SetKindOfName(GEOMAlgo_KN_RECTANGLE);
    //
    // shift location to the center and calc. sizes
    aXYZc.SetCoord(0.,0.,0.);
    TopExp::MapShapes(aF, TopAbs_VERTEX, aMV);
    for (i=1; i<=aNbV; ++i) {
      const TopoDS_Vertex& aV=TopoDS::Vertex(aMV(i));
      aP=BRep_Tool::Pnt(aV);
      const gp_XYZ& aXYZ=aP.XYZ();
      aXYZc=aXYZc+aXYZ;
    }
    //
    // Location : aPc in center of rectangle
    // Position : 0z is plane normal
    //            0x is along length
    //
    aXYZc.Divide(4.);
    aPc.SetXYZ(aXYZc);
    //
    gp_Lin aL0(aPx[0], aDx[0]);
    gp_Lin aL1(aPx[1], aDx[1]);
    //
    aD0=aL0.Distance(aPc);
    aD1=aL1.Distance(aPc);
    //
    aLength=aD0;
    aWidth =aD1;
    aDX=aL1.Direction();
    if (aD0<aD1) {
      aLength=aD1;
      aWidth =aD0;
      aDX=aL0.Direction();
    }
    //
    aLength=2.*aLength;
    aWidth =2.*aWidth;
    //
    aInfo.SetLocation(aPc);
    aInfo.SetLength(aLength);
    aInfo.SetWidth(aWidth);
    //
    const gp_Dir& aDZ=aPln.Axis().Direction();
    gp_Ax2 aAx2(aPc, aDZ, aDX);
    gp_Ax3 aAx3(aAx2);
    aInfo.SetPosition(aAx3);
  }
  
  return;
}
//=======================================================================
//function : FillDetails
//purpose  : 
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillDetails(const TopoDS_Face& aF,
					     const gp_Sphere& )
{
  Standard_Integer aNbV, aNbE, aNbSE, aNbDE;
  TopoDS_Edge aE; 
  TopExp_Explorer aExp;
  TopTools_MapOfShape aM; 
  GEOMAlgo_KindOfShape aKS, aKSE;
  //
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aF);
  aInfo.SetKindOfName(GEOMAlgo_KN_UNKNOWN);
  //
  aKS=aInfo.KindOfShape();
  if (aKS!=GEOMAlgo_KS_SPHERE) {
    return;
  }
  //
  aNbV=aInfo.NbSubShapes(TopAbs_VERTEX);
  aNbE=aInfo.NbSubShapes(TopAbs_EDGE);
  if (!(aNbV==2 && aNbE==3)) {
    return;
  }
  //
  aNbSE=0;
  aNbDE=0;
  aExp.Init(aF, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    aE=TopoDS::Edge(aExp.Current());
    if(aM.Add(aE)) {
      const GEOMAlgo_ShapeInfo& aInfoE=myMapInfo.FindFromKey(aE);
      aKSE=aInfoE.KindOfShape();
      //
      if (BRep_Tool::IsClosed(aE, aF)) {
	++aNbSE;
      }
      else if (aKSE==GEOMAlgo_KS_DEGENERATED) {
	++aNbDE;
      }
    }
  }
  //
  if (!(aNbSE==1 && aNbDE==2)) {
    return;
  }
  aInfo.SetKindOfName(GEOMAlgo_KN_SPHERE);
}
//=======================================================================
//function : FillDetails
//purpose  : 
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillDetails(const TopoDS_Face& aF,
					     const gp_Cone& )//aCone)
{
  Standard_Integer aNbV, aNbE, aNbCE, aNbSE, aNbDE, i;
  Standard_Real aR[3], aHeight;
  gp_Pnt aPC[3], aPD, aPc, aPX[3];
  TopoDS_Vertex aVD;
  TopoDS_Edge aE;
  TopoDS_Iterator aIt;
  TopExp_Explorer aExp;
  TopTools_MapOfShape aM;
  GEOMAlgo_KindOfShape aKS, aKSE;
  GEOMAlgo_KindOfName aKN, aKNE;
  GEOMAlgo_KindOfClosed aKCE;
  //
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aF);
  aKN=GEOMAlgo_KN_UNKNOWN;
  aInfo.SetKindOfName(aKN);
  //
  aKS=aInfo.KindOfShape();
  if (aKS!=GEOMAlgo_KS_CONE) {
    return;
  }
  //
  if (aInfo.KindOfBounds()==GEOMAlgo_KB_INFINITE) {
    return;
  }
  //
  aNbV=aInfo.NbSubShapes(TopAbs_VERTEX);
  aNbE=aInfo.NbSubShapes(TopAbs_EDGE);
  if (!(aNbV==2 && aNbE==3)) {
    return;
  }
  //
  i=0;
  aNbCE=0;
  aNbSE=0;
  aNbDE=0;
  aExp.Init(aF, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    aE=TopoDS::Edge(aExp.Current());
    if(aM.Add(aE)) {
      const GEOMAlgo_ShapeInfo& aInfoE=myMapInfo.FindFromKey(aE);
      aKNE=aInfoE.KindOfName();
      aKCE=aInfoE.KindOfClosed();
      aKSE=aInfoE.KindOfShape();
      if (aKNE==GEOMAlgo_KN_CIRCLE && aKCE==GEOMAlgo_KC_CLOSED) {
	aPC[i]=aInfoE.Location();
	aR[i]=aInfoE.Radius1();
	//
	aIt.Initialize(aE);
	for (; aIt.More(); aIt.Next()) {
	  aVD=TopoDS::Vertex(aIt.Value());
	  break;
	}
	aPX[i]=BRep_Tool::Pnt(aVD);
	//
	++i;
	++aNbCE;
      }
      else if (aKNE==GEOMAlgo_KN_SEGMENT) {
	if (BRep_Tool::IsClosed(aE, aF)) {
	  ++aNbSE;
	}
      }
      else if (aKSE==GEOMAlgo_KS_DEGENERATED) {
	aIt.Initialize(aE);
	for (; aIt.More(); aIt.Next()) {
	  aVD=TopoDS::Vertex(aIt.Value());
	  break;
	}
	//
	aPD=BRep_Tool::Pnt(aVD);
	//
	++aNbDE;
      }
    }
  }
  //
  if (!((aNbCE==2 || (aNbCE==1 && aNbDE==1)) && aNbSE==1)) {
    return;
  }
  //
  if (aNbDE==1) {
    aPC[1]=aPD;
    aR[1]=0.;
  }
  //
  aHeight=aPC[0].Distance(aPC[1]);
  //
  Standard_Real aRmin, aRmax;
  gp_Ax2 aAx2new;
  //
  if (aR[0]>aR[1]) {
    aRmin=aR[1];
    aRmax=aR[0];
    aPc=aPC[0];
    gp_Vec aVz(aPC[0], aPC[1]);
    gp_Vec aVx(aPC[0], aPX[0]);
    gp_Dir aDz(aVz);
    gp_Dir aDx(aVx);
    gp_Ax2 aAx2(aPc, aDz, aDx);
    aAx2new=aAx2;
  }
  else {
    aRmin=aR[0];
    aRmax=aR[1];
    aPc=aPC[1];
    gp_Vec aVz(aPC[1], aPC[0]);
    gp_Vec aVx(aPC[1], aPX[1]);
    gp_Dir aDz(aVz);
    gp_Dir aDx(aVx);
    gp_Ax2 aAx2(aPc, aDz, aDx);
    aAx2new=aAx2;
  }
  //
  gp_Ax3 aAx3(aAx2new);
  aInfo.SetLocation(aPc);
  aInfo.SetPosition(aAx3);
  aInfo.SetRadius1(aRmax);
  aInfo.SetRadius2(aRmin);
  aInfo.SetHeight(aHeight);
  //
  aInfo.SetKindOfName(GEOMAlgo_KN_CONE);
}
//=======================================================================
//function : FillDetails
//purpose  : 
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillDetails(const TopoDS_Face& aF,
					     const gp_Cylinder& aCyl)
{
  Standard_Integer i, aNbV, aNbE, aNbCE, aNbSE;
  Standard_Real aT0, aT1, aHeight;
  gp_Pnt aPC[3], aPc;
  TopoDS_Edge aE;
  TopExp_Explorer aExp;
  TopTools_MapOfShape aM;
  GEOMAlgo_KindOfShape aKS;
  GEOMAlgo_KindOfName aKN, aKNE;
  GEOMAlgo_KindOfClosed aKCE;
  // 
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aF);
  aKN=GEOMAlgo_KN_UNKNOWN;
  aInfo.SetKindOfName(aKN);
  //
  aKS=aInfo.KindOfShape();
  if (aKS!=GEOMAlgo_KS_CYLINDER) {
    return;
  }
  //
  if (aInfo.KindOfBounds()==GEOMAlgo_KB_INFINITE) {
    return;
  }
  //
  aNbV=aInfo.NbSubShapes(TopAbs_VERTEX);
  aNbE=aInfo.NbSubShapes(TopAbs_EDGE);
  if (!(aNbV==2 && aNbE==3)) {
    return;
  }
  //
  i=0;
  aNbCE=0;
  aNbSE=0;
  aExp.Init(aF, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    aE=TopoDS::Edge(aExp.Current());
    if(aM.Add(aE)) {
      const GEOMAlgo_ShapeInfo& aInfoE=myMapInfo.FindFromKey(aE);
      aKNE=aInfoE.KindOfName();
      aKCE=aInfoE.KindOfClosed();
      if (aKNE==GEOMAlgo_KN_CIRCLE && aKCE==GEOMAlgo_KC_CLOSED) {
	aPC[aNbCE]=aInfoE.Location();
	++aNbCE;
      }
      else if (aKNE==GEOMAlgo_KN_SEGMENT) {
	if (BRep_Tool::IsClosed(aE, aF)) {
	  ++aNbSE;
	}
      }
    }
  }
  //
  if (!(aNbCE==2 && aNbSE==1)) {
    return;
  }
  //
  const gp_Ax1& aAx1=aCyl.Axis();
  const gp_Dir& aDir=aAx1.Direction();
  const gp_Pnt& aPLoc=aAx1.Location();
  gp_Lin aLin(aPLoc, aDir);
  //
  aT0=ElCLib::Parameter(aLin, aPC[0]);
  aT1=ElCLib::Parameter(aLin, aPC[1]);
  //
  aPc=aPC[0];;
  if (aT0>aT1) {
    aPc=aPC[1];
  }
  aHeight=aPC[0].Distance(aPC[1]);
  //
  gp_Ax3 aAx3=aCyl.Position();
  aAx3.SetLocation(aPc);
  //
  aInfo.SetKindOfName(GEOMAlgo_KN_CYLINDER);
  aInfo.SetPosition(aAx3);
  aInfo.SetLocation(aPc);
  aInfo.SetHeight(aHeight);
}

//=======================================================================
//function : FillDetails
//purpose  : 
//=======================================================================
  void GEOMAlgo_ShapeInfoFiller::FillDetails(const TopoDS_Face& aF,
					     const gp_Torus& )
{
  Standard_Integer aNbV, aNbE, aNbSE;
  TopoDS_Edge aE; 
  TopExp_Explorer aExp;
  TopTools_MapOfShape aM; 
  GEOMAlgo_KindOfShape aKS;
  //
  GEOMAlgo_ShapeInfo& aInfo=myMapInfo.ChangeFromKey(aF);
  aInfo.SetKindOfName(GEOMAlgo_KN_UNKNOWN);
  //
  aKS=aInfo.KindOfShape();
  if (aKS!=GEOMAlgo_KS_TORUS) {
    return;
  }
  //
  aNbV=aInfo.NbSubShapes(TopAbs_VERTEX);
  aNbE=aInfo.NbSubShapes(TopAbs_EDGE);
  if (!(aNbV==1 && aNbE==2)) {
    return;
  }
  //
  aNbSE=0;
  aExp.Init(aF, TopAbs_EDGE);
  for (; aExp.More(); aExp.Next()) {
    aE=TopoDS::Edge(aExp.Current());
    if (aM.Add(aE)) {
      //const GEOMAlgo_ShapeInfo& aInfoE=myMapInfo.FindFromKey(aE);
      if (BRep_Tool::IsClosed(aE, aF)) {
	++aNbSE;
      }
    }
  }
  //
  if (aNbSE!=2) {
    return;
  }
  aInfo.SetKindOfName(GEOMAlgo_KN_TORUS);
}
