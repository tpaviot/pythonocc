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
// File:	NMTTools_DEProcessor.cxx
// Created:	Wed Sep 12 12:10:52 2001
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTTools_DEProcessor.ixx>

#include <Precision.hxx>

#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>

#include <gp_Pnt2d.hxx>
#include <gp_Pnt.hxx>
#include <gp_Lin2d.hxx>

#include <ElCLib.hxx>

#include <Geom2d_Curve.hxx>
#include <Geom2d_Line.hxx>
#include <Geom2d_TrimmedCurve.hxx>
#include <Geom2dAdaptor_Curve.hxx>
#include <Geom2dInt_GInter.hxx>

#include <IntRes2d_IntersectionPoint.hxx>

#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Solid.hxx>

#include <TopExp.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>

#include <BRepAdaptor_Surface.hxx>

#include <BooleanOperations_AncestorsSeqAndSuccessorsSeq.hxx>

#include <IntTools_Tools.hxx>
#include <IntTools_Context.hxx>

#include <BOPTools_DEInfo.hxx>
#include <BOPTools_Pave.hxx>
#include <BOPTools_ListOfPave.hxx>
#include <BOPTools_ListIteratorOfListOfPave.hxx>
#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include <BOPTools_PaveBlockIterator.hxx>
#include <BOPTools_SSInterference.hxx>
#include <BOPTools_PavePool.hxx>
#include <BOPTools_PaveSet.hxx>
#include <BOPTools_Tools3D.hxx>
#include <BOPTools_SequenceOfCurves.hxx>
#include <BOPTools_Curve.hxx>
#include <BOPTools_CArray1OfSSInterference.hxx>
#include <BOPTools_SplitShapesPool.hxx>

#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTDS_InterfPool.hxx>

#include <NMTTools_PaveFiller.hxx>

//=======================================================================
// function: 
// purpose: 
//=======================================================================
  NMTTools_DEProcessor::NMTTools_DEProcessor(NMTTools_PaveFiller& aPaveFiller)
:
  myIsDone(Standard_False)
{
  myFiller=(NMTTools_PaveFiller*) &aPaveFiller;
  myDS=myFiller->DS();
}
//=======================================================================
// function: IsDone
// purpose: 
//=======================================================================
  Standard_Boolean NMTTools_DEProcessor::IsDone() const
{
  return myIsDone;
}
//=======================================================================
// function:  Do
// purpose: 
//=======================================================================
  void NMTTools_DEProcessor::Do()
{
  Standard_Integer aNbE;
  //
  myIsDone=Standard_False;
  //
  FindDegeneratedEdges();
  //
  aNbE=myDEMap.Extent();
  if (!aNbE) {
    myIsDone=!myIsDone;
    return;
  }
  //
  DoPaves();
}
//=======================================================================
// function:  FindDegeneratedEdges
// purpose: 
//=======================================================================
  void NMTTools_DEProcessor::FindDegeneratedEdges()
{
  Standard_Integer i, aNb, nV, nF, nVx, ip, iRankE;
  TopoDS_Vertex aV;
  TopTools_IndexedDataMapOfShapeListOfShape aMEF;
  //
  aNb=myDS->NumberOfShapesOfTheObject();
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape aF=myDS->Shape(i);
    if (aF.ShapeType()==TopAbs_FACE) {
      TopExp::MapShapesAndAncestors (aF, TopAbs_EDGE, TopAbs_FACE, aMEF);
    }
  }
  //
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape aS=myDS->Shape(i);
    if (aS.ShapeType()==TopAbs_EDGE) {
      const TopoDS_Edge& aE=TopoDS::Edge(aS);
      
      if (BRep_Tool::Degenerated(aE)) {
	iRankE=myDS->Rank(i);
	aV=TopExp::FirstVertex(aE);
	nVx=myDS->ShapeIndex(aV, iRankE);
	//
	nV=nVx;
	ip=myFiller->FindSDVertex(nV);
	if (ip) {
	  nV=ip;
	}
	//
	TColStd_ListOfInteger aLFn;
	const TopTools_ListOfShape& aLF=aMEF.FindFromKey(aE);
	TopTools_ListIteratorOfListOfShape anIt(aLF);
	for (; anIt.More(); anIt.Next()) {
	  const TopoDS_Shape& aF=anIt.Value();
	  nF=myDS->ShapeIndex(aF, iRankE);
	  aLFn.Append(nF);
	}
	BOPTools_DEInfo aDEInfo;
	aDEInfo.SetVertex(nV);
	aDEInfo.SetFaces(aLFn);

	myDEMap.Add (i, aDEInfo);
      }
    }
  }
}
//=======================================================================
// function:  DoPaves
// purpose: 
//=======================================================================
  void NMTTools_DEProcessor::DoPaves()
{

  Standard_Integer i, aNbE, nED, nVD, aNbLPB, nFD;
  //
  nFD=0;
  aNbE=myDEMap.Extent();
  for (i=1; i<=aNbE; ++i) {
    nED=myDEMap.FindKey(i);
    //
    const BOPTools_DEInfo& aDEInfo=myDEMap(i);
    nVD=aDEInfo.Vertex();
    //
    // Fill PaveSet for the edge nED
    const TColStd_ListOfInteger& nLF=aDEInfo.Faces();
    TColStd_ListIteratorOfListOfInteger anIt(nLF);
    for (; anIt.More(); anIt.Next()) {
      nFD=anIt.Value();
      
      BOPTools_ListOfPaveBlock aLPB;
      FindPaveBlocks(nED, nVD, nFD, aLPB);
      //
      aNbLPB=aLPB.Extent();
      if (!aNbLPB) {
	continue;
      }
      //
      FillPaveSet (nED, nVD, nFD, aLPB);
    }
    // 
    // Fill aSplitEdges for the edge nED
    FillSplitEdgesPool(nED);
    //
    // MakeSplitEdges
    MakeSplitEdges(nED, nFD);
    //
  }// next nED
}
//=======================================================================
// function:  FindPaveBlocks
// purpose: 
//=======================================================================
  void NMTTools_DEProcessor::FindPaveBlocks(const Standard_Integer ,
					    const Standard_Integer nVD,
					    const Standard_Integer nFD,
					    BOPTools_ListOfPaveBlock& aLPBOut)
{
  BOPTools_ListIteratorOfListOfPaveBlock anIt;
  Standard_Integer i, aNb, nF2, nV;
  //
  BOPTools_CArray1OfSSInterference& aFFs=(myFiller->IP())->SSInterferences();
  //
  aNb=aFFs.Extent();
  for (i=1; i<=aNb; ++i) {
    BOPTools_SSInterference& aFF=aFFs(i);
    //
    nF2=aFF.OppositeIndex(nFD);
    if (!nF2) {
      continue;
    }
    //
    // Split Parts 
    const BOPTools_ListOfPaveBlock& aLPBSplits=aFF.PaveBlocks();
    anIt.Initialize(aLPBSplits);
    for (; anIt.More(); anIt.Next()) {
      const BOPTools_PaveBlock& aPBSp=anIt.Value();
      //
      const BOPTools_Pave& aPave1=aPBSp.Pave1();
      nV=aPave1.Index();
      if (nV==nVD) {
	aLPBOut.Append(aPBSp);
	continue;
      }
      //
      const BOPTools_Pave& aPave2=aPBSp.Pave2();
      nV=aPave2.Index();
      if (nV==nVD) {
	aLPBOut.Append(aPBSp);
	continue;
      }
    }
    //
    // Section Parts
    Standard_Integer j, aNbCurves;   
    //
    BOPTools_SequenceOfCurves& aSC=aFF.Curves();
    aNbCurves=aSC.Length();
    for (j=1; j<=aNbCurves; ++j) {
      const BOPTools_Curve& aBC=aSC(j);
      const BOPTools_ListOfPaveBlock& aLPBSe=aBC.NewPaveBlocks();
      //
      anIt.Initialize(aLPBSe);
      for (; anIt.More(); anIt.Next()) {
	const BOPTools_PaveBlock& aPBSe=anIt.Value();
	//
	const BOPTools_Pave& aPv1=aPBSe.Pave1();
	nV=aPv1.Index();
	if (nV==nVD) {
	  aLPBOut.Append(aPBSe);
	  continue;
	}
	//
	const BOPTools_Pave& aPv2=aPBSe.Pave2();
	nV=aPv2.Index();
	if (nV==nVD) {
	  aLPBOut.Append(aPBSe);
	  continue;
	}
      }
    }
  }
}
//=======================================================================
// function:  FillPaveSet
// purpose: 
//=======================================================================
  void NMTTools_DEProcessor::FillPaveSet (const Standard_Integer nED,
					  const Standard_Integer nVD,
					  const Standard_Integer nFD,
					  const BOPTools_ListOfPaveBlock& aLPB)
{
  Standard_Boolean bIsDone, bXDir, bRejectFlag;
  Standard_Integer nE, aNbPoints, j;
  Standard_Real aTD1, aTD2, aT1, aT2, aTolInter, aX, aDT, aXx;
  gp_Pnt2d aP2d1, aP2d2, aP2D;
  gp_Lin2d aLDE;
  //
  aDT=Precision::PConfusion();
  //
  BOPTools_PaveSet& aPaveSet= 
    (myFiller->ChangePavePool()).ChangeValue(myDS->RefEdge(nED));
  //
  // Clear aPaveSet, aSplitEdges
  aPaveSet.ChangeSet().Clear();
  //
  const TopoDS_Edge aDE=TopoDS::Edge(myDS->Shape(nED));
  const TopoDS_Face aDF=TopoDS::Face(myDS->Shape(nFD));
  //
  // 2D Curve of degenerated edge on the face aDF
  Handle(Geom2d_Curve) aC2DDE1=BRep_Tool::CurveOnSurface(aDE, aDF, aTD1, aTD2);
  Handle(Geom2d_TrimmedCurve)aC2DDE=new Geom2d_TrimmedCurve(aC2DDE1, aTD1, aTD2);
  //
  // Choose direction for degenerated edge
  aC2DDE->D0(aTD1, aP2d1);
  aC2DDE->D0(aTD2, aP2d2);

  bXDir=Standard_False;
  if (fabs(aP2d1.Y()-aP2d2.Y()) < aDT){
    bXDir=!bXDir;
  }
  //
  // Prepare bounding Paves
  BOPTools_Pave aPave1 (nVD, aTD1, BooleanOperations_UnknownInterference);
  aPaveSet.Append(aPave1);
  BOPTools_Pave aPave2 (nVD, aTD2, BooleanOperations_UnknownInterference);
  aPaveSet.Append(aPave2);
  //
  // Fill other paves 
  BOPTools_ListIteratorOfListOfPaveBlock anIt(aLPB);
  for (; anIt.More(); anIt.Next()) {
    const BOPTools_PaveBlock& aPB=anIt.Value();
    nE=aPB.Edge();
    const TopoDS_Edge aE=TopoDS::Edge(myDS->Shape(nE));
    
    Handle(Geom2d_Curve) aC2D=BRep_Tool::CurveOnSurface(aE, aDF, aT1, aT2);
    //
    // Intersection
    Geom2dAdaptor_Curve aGAC1, aGAC2;
    //
    aGAC1.Load(aC2DDE, aTD1, aTD2);
    Handle(Geom2d_Line) aL2D= Handle(Geom2d_Line)::DownCast(aC2D);
    if (!aL2D.IsNull()) {
      aGAC2.Load(aC2D);
    }
    else {
      aGAC2.Load(aC2D, aT1, aT2);
    }
    //
    aTolInter=0.001;
    Geom2dInt_GInter aGInter(aGAC1, aGAC2, aTolInter, aTolInter);
    bIsDone=aGInter.IsDone();
    if(bIsDone) {
      aNbPoints=aGInter.NbPoints();
      if (aNbPoints) { 
	for (j=1; j<=aNbPoints; ++j) {
	  aP2D=aGInter.Point(j).Value();
	  Handle(Geom2d_Line) aCLDE;
	  //
	  //modified by NIZNHY-PKV Thu Mar 20 17:37:32 2008f
	  Handle(Geom2d_TrimmedCurve) aCLDET1=
	    Handle(Geom2d_TrimmedCurve)::DownCast(aC2DDE1);
	  if (aCLDET1.IsNull()) {
	    aCLDE=Handle(Geom2d_Line)::DownCast(aC2DDE1);
	  }
	  else {
	    Handle(Geom2d_Curve) aBasisCurve=aCLDET1->BasisCurve();
	    aCLDE=Handle(Geom2d_Line)::DownCast(aBasisCurve);
	  }
	  //aCLDE=Handle(Geom2d_Line)::DownCast(aC2DDE1);
	  //modified by NIZNHY-PKV Thu Mar 20 17:37:37 2008t
	  
	  if (aCLDE.IsNull()) {
	    continue;
	  }

	  aLDE=aCLDE->Lin2d();
	  aX=ElCLib::Parameter(aLDE, aP2D);
	  //
	  if (fabs (aX-aTD1) < aDT || fabs (aX-aTD2) < aDT) {
	    continue; 
	  }
	  if (aX < aTD1 || aX > aTD2) {
	    continue; 
	  }
	  //
	  bRejectFlag=Standard_False;
	  const BOPTools_ListOfPave& aListOfPave=aPaveSet.Set();
	  BOPTools_ListIteratorOfListOfPave aPaveIt(aListOfPave);
	  for (; aPaveIt.More(); aPaveIt.Next()) {
	    const BOPTools_Pave& aPavex=aPaveIt.Value();
	    aXx=aPavex.Param();
	    if (fabs (aX-aXx) < aDT) {
	      bRejectFlag=Standard_True;
	      break;
	    }
	  }
	  if (bRejectFlag) {
	    continue; 
	  }
	  //
	  BOPTools_Pave aPave(nVD, aX, BooleanOperations_UnknownInterference);
	  aPaveSet.Append(aPave);
	}
      }
    }
  }
}
//=======================================================================
// function:  FillSplitEdgesPool
// purpose: 
//=======================================================================
  void NMTTools_DEProcessor::FillSplitEdgesPool (const Standard_Integer nED)
{
  BOPTools_SplitShapesPool& aSplitShapesPool=
    myFiller->ChangeSplitShapesPool();
  BOPTools_ListOfPaveBlock& aSplitEdges=
    aSplitShapesPool.ChangeValue(myDS->RefEdge(nED));
  //
  aSplitEdges.Clear();
  //
  const BOPTools_PavePool& aPavePool=myFiller->PavePool();
  BOPTools_PavePool* pPavePool=(BOPTools_PavePool*) &aPavePool;
  BOPTools_PaveSet& aPaveSet= pPavePool->ChangeValue(myDS->RefEdge(nED));
  
  BOPTools_PaveBlockIterator aPBIt(nED, aPaveSet);
  for (; aPBIt.More(); aPBIt.Next()) {
    BOPTools_PaveBlock& aPB=aPBIt.Value();
    aSplitEdges.Append(aPB);
  }
}
//=======================================================================
// function:  MakeSplitEdges
// purpose: 
//=======================================================================
  void NMTTools_DEProcessor::MakeSplitEdges (const Standard_Integer nED,
					     const Standard_Integer nFD)
{
  const BOPTools_SplitShapesPool& aSplitShapesPool=myFiller->SplitShapesPool();
  const BOPTools_ListOfPaveBlock& aSplitEdges=aSplitShapesPool(myDS->RefEdge(nED));

  Standard_Integer nV1, nV2, aNewShapeIndex;
  Standard_Real    t1, t2;
  TopoDS_Edge aE, aESplit;
  TopoDS_Vertex aV1, aV2;

  const TopoDS_Edge aDE=TopoDS::Edge(myDS->Shape(nED));
  const TopoDS_Face aDF=TopoDS::Face(myDS->Shape(nFD));

  BOPTools_ListIteratorOfListOfPaveBlock aPBIt(aSplitEdges);

  for (; aPBIt.More(); aPBIt.Next()) {
    BOPTools_PaveBlock& aPB=aPBIt.Value();
    
    const BOPTools_Pave& aPave1=aPB.Pave1();
    nV1=aPave1.Index();
    t1=aPave1.Param();
    aV1=TopoDS::Vertex(myDS->GetShape(nV1));
    aV1.Orientation(TopAbs_FORWARD);
    
    const BOPTools_Pave& aPave2=aPB.Pave2();
    nV2=aPave2.Index();
    t2=aPave2.Param();
    aV2=TopoDS::Vertex(myDS->GetShape(nV2));
    aV2.Orientation(TopAbs_REVERSED);
    
    MakeSplitEdge(aDE, aDF, aV1, t1, aV2, t2, aESplit); 
    //
    // Add Split Part of the Original Edge to the DS
    BooleanOperations_AncestorsSeqAndSuccessorsSeq anASSeq;
    
    anASSeq.SetNewSuccessor(nV1);
    anASSeq.SetNewOrientation(aV1.Orientation());
    
    anASSeq.SetNewSuccessor(nV2);
    anASSeq.SetNewOrientation(aV2.Orientation());
    
    myDS->InsertShapeAndAncestorsSuccessors(aESplit, anASSeq);
    aNewShapeIndex=myDS->NumberOfInsertedShapes();
    myDS->SetState(aNewShapeIndex, BooleanOperations_UNKNOWN);
    //
    // Fill Split Set for the Original Edge
    aPB.SetEdge(aNewShapeIndex);
    //
  }
}
//=======================================================================
// function:  MakeSplitEdge
// purpose: 
//=======================================================================
  void NMTTools_DEProcessor::MakeSplitEdge (const TopoDS_Edge&   aE,
					    const TopoDS_Face&   aF,
					    const TopoDS_Vertex& aV1,
					    const Standard_Real  aP1,
					    const TopoDS_Vertex& aV2,
					    const Standard_Real  aP2,
					    TopoDS_Edge& aNewEdge)
{
  Standard_Real aTol=1.e-7;

  TopoDS_Edge E=aE;

  E.EmptyCopy();
  BRep_Builder BB;
  BB.Add  (E, aV1);
  BB.Add  (E, aV2);

  BB.Range(E, aF, aP1, aP2);

  BB.Degenerated(E, Standard_True);

  BB.UpdateEdge(E, aTol);
  aNewEdge=E;
}

