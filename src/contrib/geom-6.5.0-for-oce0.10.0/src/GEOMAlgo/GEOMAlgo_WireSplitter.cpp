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

// File:        GEOMAlgo_WireSplitter.cxx
// Author:      Peter KURNEV

#include <GEOMAlgo_WireSplitter.hxx>

#include <TColStd_SequenceOfReal.hxx>
#include <Precision.hxx>

#include <gp_Pnt2d.hxx>
#include <gp_Vec2d.hxx>
#include <TColgp_SequenceOfPnt2d.hxx>

#include <Geom_Curve.hxx>
#include <Geom2d_Curve.hxx>
#include <GeomAdaptor_Surface.hxx>

#include <TopAbs_Orientation.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Iterator.hxx>

#include <BRep_Tool.hxx>
#include <BRepAdaptor_Surface.hxx>
#include <BRepAdaptor_Curve2d.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>

#include <TopTools_SequenceOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <BOPTColStd_ListOfListOfShape.hxx>
#include <BOPTColStd_ListIteratorOfListOfListOfShape.hxx>

#include <BOPTools_Tools2D.hxx>

#include <BOP_EdgeInfo.hxx>
#include <BOP_ListOfEdgeInfo.hxx>
#include <BOP_ListIteratorOfListOfEdgeInfo.hxx>
#include <BOP_IndexedDataMapOfVertexListEdgeInfo.hxx>

static
  void Path (const GeomAdaptor_Surface& aGAS,
             const TopoDS_Face& myFace,
             const TopoDS_Vertex& aVa,
             const TopoDS_Edge& aEOuta,
             BOP_EdgeInfo& anEdgeInfo,
             TopTools_SequenceOfShape& aLS,
             TopTools_SequenceOfShape& aVertVa,
             TColgp_SequenceOfPnt2d& aCoordVa,
             BOPTColStd_ListOfListOfShape& myShapes,
             BOP_IndexedDataMapOfVertexListEdgeInfo& mySmartMap);


static
  Standard_Real Angle (const gp_Dir2d& aDir2D);


static
  void GetNextVertex(const TopoDS_Vertex& aV,
                     const TopoDS_Edge& aE,
                     TopoDS_Vertex& aV1);
static
  Standard_Real ClockWiseAngle(const Standard_Real aAngleIn,
                               const Standard_Real aAngleOut);

static
  Standard_Real AngleIn(const TopoDS_Edge& aEIn,
                        const BOP_ListOfEdgeInfo& aLEInfo);

static
  Standard_Real Angle2D (const TopoDS_Vertex& aV,
                         const TopoDS_Edge& anEdge,
                         const TopoDS_Face& myFace,
                         const GeomAdaptor_Surface& aGAS,
                         const Standard_Boolean aFlag);
static
  gp_Pnt2d Coord2d (const TopoDS_Vertex& aV1,
                    const TopoDS_Edge& aE1,
                    const TopoDS_Face& aF);
static
  gp_Pnt2d Coord2dVf (const TopoDS_Edge& aE,
                      const TopoDS_Face& aF);
static
  Standard_Real Tolerance2D (const TopoDS_Vertex& aV,
                            const GeomAdaptor_Surface& aGAS);


//modified by NIZNHY-PKV Thu Apr 19 09:04:59 2012f
static
  Standard_Integer NbWaysOut(const TopoDS_Edge& aEOuta,
			     const BOP_ListOfEdgeInfo& aLEInfo);
//static
//  Standard_Integer NbWaysOut(const BOP_ListOfEdgeInfo& );
//modified by NIZNHY-PKV Thu Apr 19 09:04:53 2012t

//=======================================================================
// function:
// purpose:
//=======================================================================
  GEOMAlgo_WireSplitter::GEOMAlgo_WireSplitter()
:
  GEOMAlgo_Algo(),
  myNothingToDo(Standard_False)
{
}
//=======================================================================
// function: ~
// purpose:
//=======================================================================
  GEOMAlgo_WireSplitter::~GEOMAlgo_WireSplitter()
{
}
//=======================================================================
// function: SetFace
// purpose:
//=======================================================================
  void GEOMAlgo_WireSplitter::SetFace(const TopoDS_Face& aFace)
{
  myFace=aFace;
}
//=======================================================================
// function: Face
// purpose:
//=======================================================================
  const TopoDS_Face& GEOMAlgo_WireSplitter::Face()const
{
  return myFace;
}
//=======================================================================
// function: SetEdges
// purpose:
//=======================================================================
  void GEOMAlgo_WireSplitter::SetEdges(const TopTools_ListOfShape& aLE)
{
  TopTools_ListIteratorOfListOfShape anIt;
  //
  myEdges.Clear();
  anIt.Initialize(aLE);
  for (; anIt.More(); anIt.Next()) {
    const TopoDS_Shape& aE =anIt.Value();
    //
    if (aE.Orientation()==TopAbs_INTERNAL){
      continue;
    }
    //
    myEdges.Append(aE);
  }
}
//=======================================================================
// function: Edges
// purpose:
//=======================================================================
  const TopTools_ListOfShape& GEOMAlgo_WireSplitter::Edges()const
{
  return myEdges;
}
//=======================================================================
// function: IsNothingToDo
// purpose:
//=======================================================================
  Standard_Boolean GEOMAlgo_WireSplitter::IsNothingToDo()const
{
  return myNothingToDo;
}
//=======================================================================
// function: Shapes
// purpose:
//=======================================================================
  const BOPTColStd_ListOfListOfShape& GEOMAlgo_WireSplitter::Shapes()const
{
  return myShapes;
}
//=======================================================================
// function: Perform
// purpose:
//=======================================================================
  void GEOMAlgo_WireSplitter::Perform()
{
  myErrorStatus=2;
  myNothingToDo=Standard_True;

  Standard_Integer index, i, aNb, aCntIn, aCntOut;
  Standard_Boolean anIsIn;
  Standard_Real anAngle;

  BOP_ListOfEdgeInfo emptyInfo;
  TopTools_ListIteratorOfListOfShape anItList;
  //
  // 1.Filling mySmartMap
  mySmartMap.Clear();

  anItList.Initialize(myEdges);
  for (; anItList.More(); anItList.Next()) {
    const TopoDS_Edge& anEdge = TopoDS::Edge(anItList.Value());
    //
    if (!BOPTools_Tools2D::HasCurveOnSurface (anEdge, myFace)) {
      continue;
    }
    //
    TopExp_Explorer anExpVerts (anEdge, TopAbs_VERTEX);
    for (; anExpVerts.More(); anExpVerts.Next()) {
      const TopoDS_Shape& aVertex= anExpVerts.Current();

      index = mySmartMap.FindIndex(aVertex);
      if (!index) {
        index=mySmartMap.Add(aVertex, emptyInfo);
      }

      BOP_ListOfEdgeInfo& aListOfEInfo=mySmartMap(index);

      BOP_EdgeInfo aEInfo;
      aEInfo.SetEdge(anEdge);

      TopAbs_Orientation anOr=aVertex.Orientation();

      if (anOr==TopAbs_FORWARD) {
        aEInfo.SetInFlag(Standard_False);
      }

      else if (anOr==TopAbs_REVERSED) {
        aEInfo.SetInFlag(Standard_True);
      }

      aListOfEInfo.Append(aEInfo);
    }
  }
  //
  aNb=mySmartMap.Extent();
  //
  // 2. myNothingToDo
  myNothingToDo=Standard_True;

  for (i=1; i<=aNb; i++) {
    aCntIn=0;
    aCntOut=0;
    const BOP_ListOfEdgeInfo& aLEInfo= mySmartMap(i);
    BOP_ListIteratorOfListOfEdgeInfo anIt(aLEInfo);
    for (; anIt.More(); anIt.Next()) {
      const BOP_EdgeInfo& anEdgeInfo=anIt.Value();
      anIsIn=anEdgeInfo.IsIn();
      if (anIsIn) {
        aCntIn++;
      }
      else {
        aCntOut++;
      }
    }
    if (aCntIn!=1 || aCntOut!=1) {
      myNothingToDo=Standard_False;
      break;
    }
  }
  //
  // Each vertex has one edge In and one - Out. Good. But it is not enought
  // to consider that nothing to do with this. We must check edges on TShape
  // coinsidence. If there are such edges there is something to do with.
  //
  if (myNothingToDo) {
    Standard_Integer aNbE, aNbMapEE;
    TopTools_IndexedDataMapOfShapeListOfShape aMapEE;
    aNbE=myEdges.Extent();

    anItList.Initialize(myEdges);
    for (; anItList.More(); anItList.Next()) {
      const TopoDS_Shape& aE = anItList.Value();

      if (!aMapEE.Contains(aE)) {
        TopTools_ListOfShape aLEx;
        aLEx.Append(aE);
        aMapEE.Add(aE, aLEx);
      }
      else {
        TopTools_ListOfShape& aLEx=aMapEE.ChangeFromKey(aE);
        aLEx.Append(aE);
      }
    }

    Standard_Boolean bFlag;
    bFlag=Standard_True;
    aNbMapEE=aMapEE.Extent();
    for (i=1; i<=aNbMapEE; i++) {
      const TopTools_ListOfShape& aLEx=aMapEE(i);
      aNbE=aLEx.Extent();
      if (aNbE==1) {
        // usual case
        continue;
      }
      else if (aNbE==2){
        const TopoDS_Shape& aE1=aLEx.First();
        const TopoDS_Shape& aE2=aLEx.Last();
        if (aE1.IsSame(aE2)) {
          bFlag=Standard_False;
          break;
        }
      }
      else {
        bFlag=Standard_False;
        break;
      }
    }
    myNothingToDo=myNothingToDo && bFlag;
  }
  //
  //
  if (myNothingToDo) {
    myErrorStatus=0;
    return;
  }
  //
  // 3. Angles in mySmartMap
  BRepAdaptor_Surface aBAS(myFace);
  const GeomAdaptor_Surface& aGAS=aBAS.Surface();
  for (i=1; i<=aNb; i++) {
    const TopoDS_Vertex& aV=TopoDS::Vertex (mySmartMap.FindKey(i));
    const BOP_ListOfEdgeInfo& aLEInfo= mySmartMap(i);

    BOP_ListIteratorOfListOfEdgeInfo anIt(aLEInfo);
    for (; anIt.More(); anIt.Next()) {
      BOP_EdgeInfo& anEdgeInfo=anIt.Value();
      const TopoDS_Edge& aE=anEdgeInfo.Edge();
      //
      TopoDS_Vertex aVV=aV;
      //
      anIsIn=anEdgeInfo.IsIn();
      if (anIsIn) {
        //
        aVV.Orientation(TopAbs_REVERSED);
        anAngle=Angle2D (aVV, aE, myFace, aGAS, Standard_True);
      }
      //
      else { // OUT
        //
        aVV.Orientation(TopAbs_FORWARD);
        anAngle=Angle2D (aVV, aE, myFace, aGAS, Standard_False);
      }
      anEdgeInfo.SetAngle(anAngle);

    }
  }
  //
  // 4. Do
  //
  Standard_Boolean anIsOut, anIsNotPassed;

  TopTools_SequenceOfShape aLS, aVertVa;
  TColgp_SequenceOfPnt2d aCoordVa;

  BOP_ListIteratorOfListOfEdgeInfo anIt;

  for (i=1; i<=aNb; i++) {
    const TopoDS_Vertex aVa=TopoDS::Vertex (mySmartMap.FindKey(i));
    const BOP_ListOfEdgeInfo& aLEInfo=mySmartMap(i);

    anIt.Initialize(aLEInfo);
    for (; anIt.More(); anIt.Next()) {
      BOP_EdgeInfo& anEdgeInfo=anIt.Value();
      const TopoDS_Edge& aEOuta=anEdgeInfo.Edge();

      anIsOut=!anEdgeInfo.IsIn();
      anIsNotPassed=!anEdgeInfo.Passed();

      if (anIsOut && anIsNotPassed) {
        //
        aLS.Clear();
        aVertVa.Clear();
        aCoordVa.Clear();
        //
        Path(aGAS, myFace, aVa, aEOuta, anEdgeInfo, aLS,
             aVertVa, aCoordVa, myShapes, mySmartMap);
      }
    }
  }
  //
  {
    Standard_Integer aNbV, aNbE;
    TopoDS_Vertex aV1, aV2;
    BOPTColStd_ListOfListOfShape aShapes;
    BOPTColStd_ListIteratorOfListOfListOfShape anItW(myShapes);

    for (; anItW.More(); anItW.Next()) {
      TopTools_IndexedMapOfShape aMV, aME;
      const TopTools_ListOfShape& aLE=anItW.Value();
      TopTools_ListIteratorOfListOfShape anItE(aLE);
      for (; anItE.More(); anItE.Next()) {
        const TopoDS_Edge& aE=TopoDS::Edge(anItE.Value());
        aME.Add(aE);
        TopExp::Vertices(aE, aV1, aV2);
        aMV.Add(aV1);
        aMV.Add(aV2);
      }
      aNbV=aMV.Extent();
      aNbE=aME.Extent();
      if (aNbV<=aNbE) {
        aShapes.Append(aLE);
      }
    }
    //
    myShapes.Clear();
    anItW.Initialize(aShapes);
    for (; anItW.More(); anItW.Next()) {
      const TopTools_ListOfShape& aLE=anItW.Value();
      myShapes.Append(aLE);
    }
  }
  //
  myErrorStatus=0;
}
//=======================================================================
// function: Path
// purpose:
//=======================================================================
  void Path (const GeomAdaptor_Surface& aGAS,
             const TopoDS_Face& myFace,
             const TopoDS_Vertex& aVa,
             const TopoDS_Edge& aEOuta,
             BOP_EdgeInfo& anEdgeInfo,
             TopTools_SequenceOfShape& aLS,
             TopTools_SequenceOfShape& aVertVa,
             TColgp_SequenceOfPnt2d& aCoordVa,
             BOPTColStd_ListOfListOfShape& myShapes,
             BOP_IndexedDataMapOfVertexListEdgeInfo& mySmartMap)
{
  Standard_Integer i,j, aNb, aNbj, iCnt;
  Standard_Real aTol, anAngleIn, anAngleOut, anAngle, aMinAngle;
  Standard_Real aTol2D, aTol2D2;
  Standard_Real aTol2, aD2;
  Standard_Boolean anIsSameV2d, anIsSameV, anIsFound, anIsOut, anIsNotPassed;
  BOP_ListIteratorOfListOfEdgeInfo anIt;
  TopoDS_Vertex aVb;
  TopoDS_Edge aEOutb;
  //
  aTol=1.e-7;
  //
  // append block
  //
  // Do not escape through edge from which you enter
  aNb=aLS.Length();
  if (aNb==1) {
    const TopoDS_Shape& anEPrev=aLS(aNb);
    if (anEPrev.IsSame(aEOuta)) {
      return;
    }
  }
  //
  //
  anEdgeInfo.SetPassed(Standard_True);
  aLS.Append(aEOuta);
  aVertVa.Append(aVa);

  TopoDS_Vertex pVa=aVa;
  pVa.Orientation(TopAbs_FORWARD);
  gp_Pnt2d aPa=Coord2d(pVa, aEOuta, myFace);
  aCoordVa.Append(aPa);

  GetNextVertex (pVa, aEOuta, aVb);

  gp_Pnt2d aPb=Coord2d(aVb, aEOuta, myFace);
  //
  aTol=2.*Tolerance2D(aVb, aGAS);
  aTol2=10.*aTol*aTol;
  //
  aNb=aLS.Length();
  if (aNb>0) {
    //
    TopTools_ListOfShape aBuf;
    //
    for (i=aNb; i>0; i--) {
      const TopoDS_Shape& aVPrev=aVertVa(i);
      const gp_Pnt2d& aPaPrev=aCoordVa(i);
      const TopoDS_Shape& aEPrev=aLS(i);

      aBuf.Append(aEPrev);

      anIsSameV=aVPrev.IsSame(aVb);
      anIsSameV2d=Standard_False;

      if (anIsSameV) {
        anIsSameV2d = Standard_True;
        //
        aD2=aPaPrev.SquareDistance(aPb);
        anIsSameV2d =aD2<aTol2;
      }//if (anIsSameV) {
      //
      if (anIsSameV && anIsSameV2d) {
        myShapes.Append(aBuf);
        //
        TopTools_SequenceOfShape aLSt, aVertVat;
        TColgp_SequenceOfPnt2d aCoordVat;
        //
        aNbj=i-1;
        if (aNbj<1) {
          //
          aLS.Clear();
          aVertVa.Clear();
          aCoordVa.Clear();
          //
          return;
        }

        aVb=TopoDS::Vertex(aVertVa(i));

        for (j=1; j<=aNbj; j++) {
          aLSt.Append(aLS(j));
          aVertVat.Append(aVertVa(j));
          aCoordVat.Append(aCoordVa(j));
        }
        //
        aLS.Clear();
        aVertVa.Clear();
        aCoordVa.Clear();

        aLS=aLSt;
        aVertVa=aVertVat;
        aCoordVa=aCoordVat;
        //
        break;
      }
    }
  }
  //
  aTol2D=2.*Tolerance2D(aVb, aGAS);
  aTol2D2=100.*aTol2D*aTol2D;
  //
  // anAngleIn in Vb from edge aEOuta
  const BOP_ListOfEdgeInfo& aLEInfo=mySmartMap.FindFromKey(aVb);
  //
  anAngleIn=AngleIn(aEOuta, aLEInfo);
  //
  // aEOutb
  BOP_EdgeInfo *pEdgeInfo=NULL;

  aMinAngle=100.;
  anIsFound=Standard_False;
  //
  //modified by NIZNHY-PKV Thu Apr 19 09:05:09 2012f
  iCnt=NbWaysOut (aEOuta, aLEInfo); 
  //iCnt=NbWaysOut (aLEInfo); 
  //modified by NIZNHY-PKV Thu Apr 19 09:05:12 2012t
  if (!iCnt) { // no way to go . (Error)
    return ;
  }
  //
  anIt.Initialize(aLEInfo);
  for (; anIt.More(); anIt.Next()) {
    BOP_EdgeInfo& anEI=anIt.Value();
    const TopoDS_Edge& aE=anEI.Edge();
    anIsOut=!anEI.IsIn();
    anIsNotPassed=!anEI.Passed();
    //
    if (anIsOut && anIsNotPassed) {
      if (aE.IsSame(aEOuta)) {
	continue;
      }
      //
      if (iCnt==1) {
        // the one and only way to go out .
        pEdgeInfo=&anEI;
        anIsFound=Standard_True;
        break;
      }
      //
      // Look for minimal angle and make the choice.
      gp_Pnt2d aP2Dx;
      //
      aP2Dx=Coord2dVf(aE, myFace);
      //
      aD2=aP2Dx.SquareDistance(aPb);
      if (aD2 > aTol2D2){
        continue;
      }
      //
      anAngleOut=anEI.Angle();
      //
      anAngle=ClockWiseAngle(anAngleIn, anAngleOut);
      if (anAngle < aMinAngle) {
        aMinAngle=anAngle;
        pEdgeInfo=&anEI;
        anIsFound=Standard_True;
      }
    }
  } // for (; anIt.More(); anIt.Next())
  //
  if (!anIsFound) {
    // no way to go . (Error)
    return;
  }
  //
  aEOutb=pEdgeInfo->Edge();
  //
  Path (aGAS, myFace, aVb, aEOutb, *pEdgeInfo, aLS,
        aVertVa, aCoordVa, myShapes, mySmartMap);
}
//=======================================================================
// function:  Coord2dVf
// purpose:
//=======================================================================
 gp_Pnt2d Coord2dVf (const TopoDS_Edge& aE,
                     const TopoDS_Face& aF)
{
  Standard_Real aCoord=99.;
  gp_Pnt2d aP2D1(aCoord, aCoord);
  TopoDS_Iterator aIt;
  //
  aIt.Initialize(aE);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aVx=aIt.Value();
    if (aVx.Orientation()==TopAbs_FORWARD) {
      const TopoDS_Vertex& aVxx=TopoDS::Vertex(aVx);
      aP2D1=Coord2d(aVxx, aE, aF);
      return aP2D1;
    }
  }
  return aP2D1;
}
//=======================================================================
// function:  Tolerance2D
// purpose:
//=======================================================================
 Standard_Real Tolerance2D (const TopoDS_Vertex& aV,
                            const GeomAdaptor_Surface& aGAS)
{
  Standard_Real aTol2D, anUr, aVr, aTolV3D;
  GeomAbs_SurfaceType aType;
  //
  aType=aGAS.GetType();
  aTolV3D=BRep_Tool::Tolerance(aV);

  anUr=aGAS.UResolution(aTolV3D);
  aVr =aGAS.VResolution(aTolV3D);
  aTol2D=(aVr>anUr) ? aVr : anUr;
  //
  if (aType==GeomAbs_BSplineSurface||
      aType==GeomAbs_Sphere||
      GeomAbs_SurfaceOfRevolution) {
    if (aTol2D < aTolV3D) {
      aTol2D=aTolV3D;
    }
  }
  if (aType==GeomAbs_BSplineSurface) {
    aTol2D=1.1*aTol2D;
  }
  //
  return aTol2D;
}

//=======================================================================
// function:  Coord2d
// purpose:
//=======================================================================
 gp_Pnt2d Coord2d (const TopoDS_Vertex& aV1,
                   const TopoDS_Edge& aE1,
                   const TopoDS_Face& aF)
{
  Standard_Real aT, aFirst, aLast;
  Handle(Geom2d_Curve) aC2D;
  gp_Pnt2d aP2D1;
  //
  aT=BRep_Tool::Parameter (aV1, aE1, aF);
  aC2D=BRep_Tool::CurveOnSurface(aE1, aF, aFirst, aLast);
  aC2D->D0 (aT, aP2D1);
  //
  return aP2D1;
}
//=======================================================================
// function:  AngleIn
// purpose:
//=======================================================================
 Standard_Real AngleIn(const TopoDS_Edge& aEIn,
                       const BOP_ListOfEdgeInfo& aLEInfo)
{
  Standard_Real anAngleIn;
  Standard_Boolean anIsIn;
  BOP_ListIteratorOfListOfEdgeInfo anIt;

  anIt.Initialize(aLEInfo);
  for (; anIt.More(); anIt.Next()) {
    BOP_EdgeInfo& anEdgeInfo=anIt.Value();
    const TopoDS_Edge& aE=anEdgeInfo.Edge();
    anIsIn=anEdgeInfo.IsIn();
    //
    if (anIsIn && aE==aEIn) {
      anAngleIn=anEdgeInfo.Angle();
      return anAngleIn;
    }
  }
  anAngleIn=0.;
  return anAngleIn;
}
//=======================================================================
// function:  ClockWiseAngle
// purpose:
//=======================================================================
 Standard_Real ClockWiseAngle(const Standard_Real aAngleIn,
                              const Standard_Real aAngleOut)
{
  Standard_Real aTwoPi = M_PI+M_PI;
  Standard_Real dA, A1, A2, AIn, AOut ;

  AIn=aAngleIn;
  AOut=aAngleOut;
  if (AIn >= aTwoPi) {
    AIn=AIn-aTwoPi;
  }

  if (AOut >= aTwoPi) {
    AOut=AOut-aTwoPi;
  }

  A1 = AIn + M_PI;

  if (A1 >= aTwoPi) {
    A1=A1-aTwoPi;
  }

  A2=AOut;

  dA=A1-A2;
  if (dA <= 0.) {
    dA=aTwoPi+dA;
    if (dA <= 1.e-14) {
      dA=aTwoPi;
    }
  }
  //xx
  else if (dA <= 1.e-14) {
    dA=aTwoPi;
  }
  return dA;
}
//=======================================================================
// function: GetNextVertex
// purpose:
//=======================================================================
 void GetNextVertex(const TopoDS_Vertex& aV,
                    const TopoDS_Edge& aE,
                    TopoDS_Vertex& aV1)
{
  TopoDS_Iterator aIt;
  //
  aIt.Initialize(aE);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aVx=aIt.Value();
    if (!aVx.IsEqual(aV)) {
      aV1=TopoDS::Vertex(aVx);
      return ;
    }
  }
  aV1=aV;
}
//=======================================================================
// function: Angle2D
// purpose:
//=======================================================================
  Standard_Real Angle2D (const TopoDS_Vertex& aV,
                         const TopoDS_Edge& anEdge,
                         const TopoDS_Face& myFace,
                         const GeomAdaptor_Surface& aGAS,
                         const Standard_Boolean aFlag)
{
  Standard_Real aFirst, aLast, aToler, dt, aTV, aTV1, anAngle, aTX;
  gp_Pnt2d aPV, aPV1;
  gp_Vec2d aV2D;
  Handle(Geom2d_Curve) aC2D;
  //
  aTV=BRep_Tool::Parameter (aV, anEdge, myFace);
  if (Precision::IsInfinite(aTV)) {
    return 0.;
  }
  //
  BOPTools_Tools2D::CurveOnSurface (anEdge, myFace, aC2D,
                                    aFirst, aLast, aToler, Standard_True);
  //dt=1.e-7;
  dt=2.*Tolerance2D(aV, aGAS);
  //
  aTX=0.25*(aLast - aFirst);
  if(dt > aTX) {
    // to save direction of the curve as much as it possible
    // in the case of big tolerances
    dt = aTX;
  }
  //
  if (fabs (aTV-aFirst) < fabs(aTV - aLast)) {
    aTV1=aTV + dt;
  }
  else {
    aTV1=aTV - dt;
  }
  //
  aC2D->D0 (aTV, aPV);
  aC2D->D0 (aTV1, aPV1);
  //
  if (aFlag) {//IN
    gp_Vec2d aV2DIn(aPV1, aPV);
    aV2D=aV2DIn;
  }
  else {
    gp_Vec2d aV2DOut(aPV, aPV1);
    aV2D=aV2DOut;
  }
  //
  gp_Dir2d aDir2D(aV2D);
  anAngle=Angle(aDir2D);
  //
  return anAngle;
}
//=======================================================================
// function: Angle
// purpose:
//=======================================================================
Standard_Real Angle (const gp_Dir2d& aDir2D)
{
  gp_Dir2d      aRefDir(1., 0.);
  Standard_Real anAngle = aRefDir.Angle(aDir2D);

  if (anAngle < 0.)
    anAngle += M_PI + M_PI;

  return anAngle;
}
//modified by NIZNHY-PKV Thu Apr 19 09:02:04 2012f
//=======================================================================
// function: NbWaysOut
// purpose:
//=======================================================================
Standard_Integer NbWaysOut(const TopoDS_Edge& aEOuta,
			   const BOP_ListOfEdgeInfo& aLEInfo)
{
  Standard_Boolean bIsOut, bIsNotPassed;
  Standard_Integer iCnt=0;
  BOP_ListIteratorOfListOfEdgeInfo anIt;
  //
  anIt.Initialize(aLEInfo);
  for (; anIt.More(); anIt.Next()) {
    BOP_EdgeInfo& aEI=anIt.Value();
    const TopoDS_Edge& aE=aEI.Edge();
    bIsOut=!aEI.IsIn();
    bIsNotPassed=!aEI.Passed();
    if (bIsOut && bIsNotPassed) {
      if (!aE.IsSame(aEOuta)) {
	iCnt++;
      }
    }
  }
  return iCnt;
}
/*
//=======================================================================
// function: NbWaysOut
// purpose:
//=======================================================================
Standard_Integer NbWaysOut(const BOP_ListOfEdgeInfo& aLEInfo)
{
  Standard_Boolean bIsOut, bIsNotPassed;
  Standard_Integer iCnt=0;
  BOP_ListIteratorOfListOfEdgeInfo anIt;
  //
  anIt.Initialize(aLEInfo);
  for (; anIt.More(); anIt.Next()) {
    BOP_EdgeInfo& anEI=anIt.Value();
    //
    bIsOut=!anEI.IsIn();
    bIsNotPassed=!anEI.Passed();
    if (bIsOut && bIsNotPassed) {
      iCnt++;
    }
  }
  return iCnt;
}
*/
//modified by NIZNHY-PKV Thu Apr 19 09:01:57 2012t
