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

// File:        NMTAlgo_WESCorrector.cxx
// Author:      Peter KURNEV

#include <GEOMAlgo_WESCorrector.hxx>

#include <Geom_Surface.hxx>

#include <TopLoc_Location.hxx>
#include <TopoDS.hxx>

#include <TopoDS_Shape.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Edge.hxx>

#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>
#include <BRepAdaptor_Surface.hxx>

#include <TopTools_IndexedMapOfOrientedShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>

#include <BOP_ConnexityBlock.hxx>
#include <BOP_ListIteratorOfListOfConnexityBlock.hxx>

#include <BOPTColStd_ListOfListOfShape.hxx>
#include <BOPTColStd_ListIteratorOfListOfListOfShape.hxx>

#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <NMTTools_IndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include <TopExp.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
#include <TopoDS_Iterator.hxx>
#include <GEOMAlgo_WireSplitter.hxx>
#include <GEOMAlgo_WESScaler.hxx>

static
  void MakeWire(const TopTools_ListOfShape& aLE,
                TopoDS_Wire& newWire);


static
  Standard_Boolean IsToScale(const TopoDS_Face& aF,
                             Standard_Real& aScale);

//=======================================================================
// function:
// purpose:
//=======================================================================
  GEOMAlgo_WESCorrector::GEOMAlgo_WESCorrector()
:
  GEOMAlgo_Algo()
{
}
//=======================================================================
// function: ~
// purpose:
//=======================================================================
  GEOMAlgo_WESCorrector::~GEOMAlgo_WESCorrector()
{
}
//=======================================================================
// function: SetWES
// purpose:
//=======================================================================
  void GEOMAlgo_WESCorrector::SetWES (const GEOMAlgo_WireEdgeSet& aWES)
{
  GEOMAlgo_WireEdgeSet* pWES=(GEOMAlgo_WireEdgeSet*) &aWES;
  myWES=pWES;
}
//=======================================================================
// function: WES
// purpose:
//=======================================================================
  GEOMAlgo_WireEdgeSet& GEOMAlgo_WESCorrector::WES ()
{
  return *myWES;
}
//=======================================================================
// function: NewWES
// purpose:
//=======================================================================
  GEOMAlgo_WireEdgeSet& GEOMAlgo_WESCorrector::NewWES ()
{
  return myNewWES;
}
//=======================================================================
// function: Perform
// purpose:
//=======================================================================
  void GEOMAlgo_WESCorrector::Perform()
{
  myErrorStatus=0;
  //
  DoConnexityBlocks();
  DoCorrections();
}
//=======================================================================
// function: DoConnexityBlocks
// purpose:
//=======================================================================
  void GEOMAlgo_WESCorrector::DoConnexityBlocks()
{
  Standard_Boolean bRegular, bClosed;
  Standard_Integer i, aNbV, j, aNbC, aNbVP, aNbVS;
  TopTools_ListIteratorOfListOfShape aIt;
  TopoDS_Iterator aItE;
  TopoDS_Shape aER;
  TopTools_IndexedMapOfShape aMER, aMEP, aMEC, aMVP;
  TopTools_IndexedMapOfShape aMVS, aMVAdd;
  TopTools_IndexedDataMapOfShapeListOfShape aMVE;
  //
  // 1. aMVE;
  const TopTools_ListOfShape& aLSE=myWES->StartElements();
  aIt.Initialize(aLSE);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aE=aIt.Value();
    if (!aMEP.Contains(aE)) {
      aMEP.Add(aE);
      TopExp::MapShapesAndAncestors(aE, TopAbs_VERTEX, TopAbs_EDGE, aMVE);
    }
    else {
      aMER.Add(aE);
    }
  }
  //
  // 2.
  aNbV=aMVE.Extent();
  for (i=1; i<=aNbV; ++i) {
    const TopoDS_Shape& aV=aMVE.FindKey(i);
    //
    aNbVS=aMVS.Extent();
    if (aNbVS==aNbV) {
      break;
    }
    //
    if (aMVS.Contains(aV)) {
      continue;
    }
    aMVS.Add(aV);    // aMVS - globally processed vertices
    //
    //------------------------------------- goal: aMEC
    aMEC.Clear();    // aMEC - edges of CB
    aMVP.Clear();    // aMVP - vertices to process right now
    aMVAdd.Clear();  // aMVAdd vertices to process on next step of while(1)
    //
    aMVP.Add(aV);
    //
    while(1) {
      aNbVP=aMVP.Extent();
      for (j=1; j<=aNbVP; ++j) {
        const TopoDS_Shape& aVP=aMVP(j);
        const TopTools_ListOfShape& aLE=aMVE.FindFromKey(aVP);
        aIt.Initialize(aLE);
        for (; aIt.More(); aIt.Next()) {
          const TopoDS_Shape& aE=aIt.Value();
          if (aMEC.Contains(aE)) {
            continue;
          }
          aMEC.Add(aE);
          //
          aItE.Initialize(aE);
          for (; aItE.More(); aItE.Next()) {
            const TopoDS_Shape& aVE=aItE.Value();
            if (!aMVS.Contains(aVE)) {
              aMVS.Add(aVE);
              aMVAdd.Add(aVE);
            }
          }
        }
      }//for (j=1; j<=aNbVP; ++j)
      //
      aNbVP=aMVAdd.Extent();
      if (!aNbVP) {
        break; // from while(1)
      }
      //
      aMVP.Clear();
      for (j=1; j<=aNbVP; ++j) {
        const TopoDS_Shape& aVE=aMVAdd(j);
        aMVP.Add(aVE);
      }
      aMVAdd.Clear();
    }// while(1) {
    //-------------------------------------
    BOP_ConnexityBlock aCB;
    TopTools_ListOfShape aLEC;
    TopTools_IndexedDataMapOfShapeListOfShape aMVER;
    //
    bRegular=Standard_True;
    //
    aNbC=aMEC.Extent();
    for (j=1; j<=aNbC; ++j) {
      aER=aMEC(j);
      //
      if (aMER.Contains(aER)) {
        aER.Orientation(TopAbs_FORWARD);
        aLEC.Append(aER);
        aER.Orientation(TopAbs_REVERSED);
        aLEC.Append(aER);
        //
        bRegular=Standard_False;
      }
      else {
        aLEC.Append(aER);
      }
      //
      if (bRegular) {
        const  TopoDS_Edge& aEx=*((TopoDS_Edge*)&aER);
        if (!BRep_Tool::Degenerated(aEx)) {
          TopExp::MapShapesAndAncestors(aER, TopAbs_VERTEX, TopAbs_EDGE, aMVER);
        }
      }
    }//for (j=1; j<=aNbC; ++j) {
    //
    if (bRegular) {
      Standard_Integer k, aNbVR, aNbER;
      //
      aNbVR=aMVER.Extent();
      for (k=1; k<=aNbVR; ++k) {
        const TopTools_ListOfShape& aLER=aMVER(k);
        aNbER=aLER.Extent();
        if (aNbER==1) {
          const TopoDS_Edge& aEx=TopoDS::Edge(aER);
          bClosed=BRep_Tool::IsClosed(aEx, myWES->Face());
          if (!bClosed) {
            bRegular=!bRegular;
            break;
          }
        }
        if (aNbER>2) {
          bRegular=!bRegular;
          break;
        }
      }
    }
    //
    aCB.SetShapes(aLEC);
    aCB.SetRegularity(bRegular);
    myConnexityBlocks.Append(aCB);
    aMEC.Clear();
  }//for (i=1; i<=aNbV; ++i) {
}

//=======================================================================
// function: DoCorrections
// purpose:
//=======================================================================
  void GEOMAlgo_WESCorrector::DoCorrections()
{
  Standard_Boolean bIsRegular, bIsNothingToDo, bToScale;
  Standard_Integer iErr;
  Standard_Real aScale;
  TopoDS_Wire aW;
  BOP_ListIteratorOfListOfConnexityBlock aCBIt;
  GEOMAlgo_WESScaler aWSC;
  //
  const TopoDS_Face& aF=myWES->Face();
  //
  bToScale=IsToScale(aF, aScale);
  //
  myNewWES.SetFace(aF);
  aCBIt.Initialize(myConnexityBlocks);
  for (; aCBIt.More(); aCBIt.Next()) {
    const BOP_ConnexityBlock& aCB=aCBIt.Value();
    const TopTools_ListOfShape& aLE=aCB.Shapes();
    //
    bIsRegular=aCB.IsRegular();
    if (bIsRegular) {
      MakeWire(aLE, aW);
      myNewWES.AddShape (aW);
      continue;
    }
    //
    GEOMAlgo_WireSplitter aWS;
    //
    if(bToScale) {
      TopoDS_Shape aE;
      TopTools_ListIteratorOfListOfShape aIt;
      BOPTColStd_ListIteratorOfListOfListOfShape aItLLSS;
      //
      aWSC.SetScale(aScale);
      aWSC.SetFace(aF);
      aWSC.SetEdges(aLE);
      //
      aWSC.Perform();
      iErr=aWSC.ErrorStatus();
      if (iErr) {
        return;
      }
      //
      const TopoDS_Face& aFS=aWSC.FaceScaled();
      const TopTools_ListOfShape& aLES=aWSC.EdgesScaled();
      //
      aWS.SetFace(aFS);
      aWS.SetEdges(aLES);
      //
      aWS.Perform();
      iErr=aWS.ErrorStatus();
      if (iErr) {
        continue;
      }
      //
      bIsNothingToDo=aWS.IsNothingToDo();
      if (bIsNothingToDo) {
        MakeWire(aLE, aW);
        myNewWES.AddShape (aW);
        continue;
      }
      //
      const BOPTColStd_ListOfListOfShape& aLLSS=aWS.Shapes();
      aItLLSS.Initialize(aLLSS);
      for (; aItLLSS.More(); aItLLSS.Next()) {
        TopTools_ListOfShape aLS;
        //
        const TopTools_ListOfShape& aLSS=aItLLSS.Value();
        aIt.Initialize(aLSS);
        for (; aIt.More(); aIt.Next()) {
          const TopoDS_Shape& aES=aIt.Value();
          aE=aWSC.Origin(aES);
          aLS.Append(aE);
        }
        //
        MakeWire(aLS, aW);
        myNewWES.AddShape (aW);
      }
    }//if(bToScale)
    //
    else {
      aWS.SetFace(aF);
      aWS.SetEdges(aLE);
      //
      aWS.Perform();
      iErr=aWS.ErrorStatus();
      if (iErr) {
        continue;
      }
      bIsNothingToDo=aWS.IsNothingToDo();
      if (bIsNothingToDo) {
        MakeWire(aLE, aW);
        myNewWES.AddShape (aW);
        continue;
      }
      //
      const BOPTColStd_ListOfListOfShape& aSSS=aWS.Shapes();
      //
      BOPTColStd_ListIteratorOfListOfListOfShape aWireIt(aSSS);
      for (; aWireIt.More(); aWireIt.Next()) {
        const TopTools_ListOfShape& aLEx=aWireIt.Value();
        //
        MakeWire(aLEx, aW);
        myNewWES.AddShape (aW);
      }
    }// else
  }
}

//=======================================================================
// function: MakeWire
// purpose:
//=======================================================================
  void MakeWire(const TopTools_ListOfShape& aLE,
                TopoDS_Wire& newWire)
{
  BRep_Builder aBB;
  aBB.MakeWire(newWire);

  TopTools_ListIteratorOfListOfShape anIt(aLE);
  for (; anIt.More(); anIt.Next()){
    const TopoDS_Edge& aE=TopoDS::Edge(anIt.Value());
    aBB.Add(newWire, aE);
  }
}

//=======================================================================
//function : IsToScale
//purpose  :
//=======================================================================
Standard_Boolean IsToScale(const TopoDS_Face& aF,
                           Standard_Real& aScale)
{
  Standard_Boolean bRet;
  Standard_Real aV1, aV2, dV, aTr;
  GeomAbs_SurfaceType aType;
  BRepAdaptor_Surface aBAS;
  //
  bRet=Standard_False;
  aScale=1.;
  //
  aBAS.Initialize(aF);
  aType=aBAS.GetType();
  if (aType==GeomAbs_Cylinder) {
    aTr=1.e5;
    aV1=aBAS.FirstVParameter();
    aV2=aBAS.LastVParameter();
    dV=aV2-aV1;
    //
    if (dV>aTr) {
      bRet=!bRet;
      aScale=1./aTr;
      return bRet;
    }
  }
  return bRet;
}
