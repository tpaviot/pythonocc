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
// File:	GEOMAlgo_ShellSolid.cxx
// Created:	Wed Jan 12 12:49:45 2005
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_ShellSolid.ixx>

#include <Standard_Failure.hxx>

#include <gp_Pnt2d.hxx>
#include <gp_Pnt.hxx>
#include <gp_Dir.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Solid.hxx>

#include <BRep_Tool.hxx>
#include <BRepTools.hxx>

#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopExp_Explorer.hxx>

#include <BRepClass3d_SolidClassifier.hxx>

#include <IntTools_Context.hxx>
#include <BOPTColStd_Dump.hxx>
#include <BooleanOperations_ShapesDataStructure.hxx>

#include <BOPTools_PaveFiller.hxx>
#include <BOPTools_SolidStateFiller.hxx>
#include <BOPTools_PCurveMaker.hxx>
#include <BOPTools_DEProcessor.hxx>
#include <BOPTools_InterferencePool.hxx>
#include <BOPTools_CArray1OfSSInterference.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_SSInterference.hxx>
#include <BOPTools_SequenceOfCurves.hxx>
#include <BOPTools_Curve.hxx>
#include <BOPTools_PaveFiller.hxx>
#include <BOPTools_SplitShapesPool.hxx>
#include <BOPTools_Tools3D.hxx>
#include <BOPTools_DSFiller.hxx>

#include <BOP_WireEdgeSet.hxx>
#include <BOP_SDFWESFiller.hxx>
#include <BOP_FaceBuilder.hxx>

//=======================================================================
//function : GEOMAlgo_ShellSolid
//purpose  : 
//=======================================================================
GEOMAlgo_ShellSolid::GEOMAlgo_ShellSolid()
:
  GEOMAlgo_ShapeSolid()
{
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
GEOMAlgo_ShellSolid::~GEOMAlgo_ShellSolid()
{
}
//=======================================================================
// function: 
// purpose: 
//=======================================================================
void GEOMAlgo_ShellSolid::Perform() 
{
  myErrorStatus=0;
  //
  try {
    if (myDSFiller==NULL) {
      myErrorStatus=10;
      return;
    }
    if(!myDSFiller->IsDone()) {
      myErrorStatus=11;
      return;
    }
    //
    Standard_Boolean bIsNewFiller;
    //
    bIsNewFiller=myDSFiller->IsNewFiller();
    if (bIsNewFiller) {
      Prepare();
      myDSFiller->SetNewFiller(!bIsNewFiller);
    }
    //
    myRank=(myDSFiller->DS().Object().ShapeType()==TopAbs_SHELL) ? 1 : 2;
    BuildResult();
  }
  catch (Standard_Failure) {
    myErrorStatus=12;
  }
}
//=======================================================================
// function: Prepare
// purpose: 
//=======================================================================
void GEOMAlgo_ShellSolid::Prepare() 
{
  const BOPTools_PaveFiller& aPaveFiller=myDSFiller->PaveFiller();
  // 
  // 1 States
  BOPTools_SolidStateFiller aStateFiller(aPaveFiller);
  aStateFiller.Do();
  //
  // 2 Project section edges on corresp. faces -> P-Curves on edges.
  BOPTools_PCurveMaker aPCurveMaker(aPaveFiller);
  aPCurveMaker.Do();
  //
  // 3. Degenerated Edges Processing
  BOPTools_DEProcessor aDEProcessor(aPaveFiller);
  aDEProcessor.Do();
  //
  // 4. Detect Same Domain Faces
  DetectSDFaces();
}
//=================================================================================
// function: BuildResult
// purpose: 
//=================================================================================
void GEOMAlgo_ShellSolid::BuildResult() 
{
  Standard_Boolean bIsTouchCase;
  Standard_Integer i, j, nF1, nF2, aNbFFs, aNbS, aNbCurves, nSp, iRank1;
  Standard_Integer nE, nF, aNbPB, iBeg, iEnd;
  BooleanOperations_StateOfShape aState;
  TopExp_Explorer anExp;
  TopAbs_ShapeEnum aType;
  gp_Pnt2d aP2D;
  gp_Pnt aP3D;
  //
  const BooleanOperations_ShapesDataStructure& aDS=myDSFiller->DS();
  const BOPTools_InterferencePool& anInterfPool=myDSFiller->InterfPool();
  BOPTools_InterferencePool* pInterfPool=(BOPTools_InterferencePool*) &anInterfPool;
  BOPTools_CArray1OfSSInterference& aFFs=pInterfPool->SSInterferences();
  const BOPTools_PaveFiller& aPaveFiller=myDSFiller->PaveFiller();
  const BOPTools_SplitShapesPool& aSplitShapesPool=aPaveFiller.SplitShapesPool();
  //
  // 1. process pf non-interferring faces
  iBeg=1;
  iEnd=aDS.NumberOfShapesOfTheObject();
  if (myRank==2) {
    iBeg=iEnd+1;
    iEnd=aDS.NumberOfSourceShapes();
  }
  //
  for (i=iBeg; i<=iEnd; ++i) {
    aType=aDS.GetShapeType(i);
    if (aType!=TopAbs_FACE) {
      continue;
    }
    //
    const TopoDS_Face& aF1=TopoDS::Face(aDS.Shape(i));
    aState=aDS.GetState(i);
    if (aState==BooleanOperations_IN) {
      myLSIN.Append(aF1);
    }
    else if (aState==BooleanOperations_OUT) {
      myLSOUT.Append(aF1);
    }
  }
  //
  // 2. process pf interferred faces
  aNbFFs=aFFs.Extent();
  for (i=1; i<=aNbFFs; ++i) {
    BOPTools_SSInterference& aFFi=aFFs(i);
    //
    nF1=aFFi.Index1();
    nF2=aFFi.Index2();
    iRank1=aDS.Rank(nF1);
    nF=(iRank1==myRank) ? nF1 : nF2;
    const TopoDS_Face& aF1=TopoDS::Face(aDS.Shape(nF));
    //
    bIsTouchCase=aFFi.IsTangentFaces();
    //
    if (bIsTouchCase) {
      myLSON.Append(aF1);
      continue;
    }
    //
    // Has section edges ?
    aNbS=0;
    BOPTools_SequenceOfCurves& aBCurves=aFFi.Curves();
    aNbCurves=aBCurves.Length();
    for (j=1; j<=aNbCurves; j++) {
      BOPTools_Curve& aBC=aBCurves(j);
      const BOPTools_ListOfPaveBlock& aSectEdges=aBC.NewPaveBlocks();
      aNbS=aSectEdges.Extent();
      if (aNbS) {
	break;
      }
    }
    //
    if (aNbS) { // it has
      continue;
    }
    //
    anExp.Init(aF1, TopAbs_EDGE);
    for (; anExp.More(); anExp.Next()) {
      const TopoDS_Edge& aE=TopoDS::Edge(anExp.Current());
      if (BRep_Tool::Degenerated(aE)) {
	continue;
      }
      //
      nE=aDS.ShapeIndex(aE, myRank);
      const BOPTools_ListOfPaveBlock& aLPB=aSplitShapesPool(aDS.RefEdge(nE));
      aNbPB=aLPB.Extent();
      //
      if (aNbPB<2) {
	nSp=nE;
	if (aNbPB) {
	  const BOPTools_PaveBlock& aPB=aLPB.First();
	  nSp=aPB.Edge();
	}
        /*const TopoDS_Shape& aSp=*/aDS.Shape(nSp);
	//
	aState=aDS.GetState(nSp);
	if (aState==BooleanOperations_IN) {
	  myLSIN.Append(aF1);
	}
	else if (aState==BooleanOperations_OUT) {
	  myLSOUT.Append(aF1);
	}
	else if (aState==BooleanOperations_ON) {
	  Standard_Real aTol;
	  TopAbs_State aSt;
	  //
	  //const TopoDS_Face& aF2=TopoDS::Face(aDS.Shape((iRank1==myRank)? nF2 : nF1));
	  //aTol=BRep_Tool::Tolerance(aF2);
	  aTol=1.e-7;
	  //
	  BOPTools_Tools3D::PointNearEdge(aE, aF1, aP2D, aP3D);
	  const TopoDS_Solid& aRefSolid=(myRank==1) ? 
	    TopoDS::Solid(aDS.Tool()) : TopoDS::Solid(aDS.Object());
	  //
	  BOPTools_PaveFiller* pPF=(BOPTools_PaveFiller*)& aPaveFiller;
	  const Handle(IntTools_Context)& aCtx=pPF->Context();
	  //
	  BRepClass3d_SolidClassifier& aSC=aCtx->SolidClassifier(aRefSolid);
	  aSC.Perform(aP3D, aTol);
	  aSt=aSC.State();
	  if (aSt==TopAbs_IN) {
	    myLSIN.Append(aF1);
	  }
	  else if (aSt==TopAbs_OUT) {
	    myLSOUT.Append(aF1);
	  }
	} 
	break; 
      } // if (aNbPB<2) { 
    } //for (; anExp.More(); anExp.Next())
  } 
}
//=======================================================================
// function: DetectSDFaces
// purpose: 
//=======================================================================
void GEOMAlgo_ShellSolid::DetectSDFaces()
{
  const BooleanOperations_ShapesDataStructure& aDS=myDSFiller->DS();
  BOPTools_InterferencePool* pIntrPool=(BOPTools_InterferencePool*)&myDSFiller->InterfPool();
  BOPTools_CArray1OfSSInterference& aFFs=pIntrPool->SSInterferences();
  //
  Standard_Boolean bFlag;
  Standard_Integer i, aNb, nF1, nF2,  iZone, aNbSps, iSenseFlag;
  gp_Dir aDNF1, aDNF2;

  aNb=aFFs.Extent();
  for (i=1; i<=aNb; i++) {
    bFlag=Standard_False;
    
    BOPTools_SSInterference& aFF=aFFs(i);
    
    nF1=aFF.Index1();
    nF2=aFF.Index2();
    const TopoDS_Face& aF1=TopoDS::Face(aDS.Shape(nF1));
    const TopoDS_Face& aF2=TopoDS::Face(aDS.Shape(nF2));
    //
    // iSenseFlag;
    const BOPTools_ListOfPaveBlock& aLPB=aFF.PaveBlocks();
    aNbSps=aLPB.Extent();

    if (!aNbSps) {
      continue;
    }
    
    const BOPTools_PaveBlock& aPB=aLPB.First();
    const TopoDS_Edge& aSpE=TopoDS::Edge(aDS.Shape(aPB.Edge()));
    
    BOPTools_Tools3D::GetNormalToFaceOnEdge (aSpE, aF1, aDNF1); 
    BOPTools_Tools3D::GetNormalToFaceOnEdge (aSpE, aF2, aDNF2);
    iSenseFlag=BOPTools_Tools3D::SenseFlag (aDNF1, aDNF2);
    //
    if (iSenseFlag==1 || iSenseFlag==-1) {
    //
    //
      TopoDS_Face aF1FWD=aF1;
      aF1FWD.Orientation (TopAbs_FORWARD);
      
      BOP_WireEdgeSet aWES (aF1FWD);
      BOP_SDFWESFiller aWESFiller(nF1, nF2, *myDSFiller);
      aWESFiller.SetSenseFlag(iSenseFlag);
      aWESFiller.SetOperation(BOP_COMMON);
      aWESFiller.Do(aWES);
      
      BOP_FaceBuilder aFB;
      aFB.Do(aWES);
      const TopTools_ListOfShape& aLF=aFB.NewFaces();

      iZone=0;
      TopTools_ListIteratorOfListOfShape anIt(aLF);
      for (; anIt.More(); anIt.Next()) {
	const TopoDS_Shape& aFR=anIt.Value();

	if (aFR.ShapeType()==TopAbs_FACE) {
	  const TopoDS_Face& aFaceResult=TopoDS::Face(aFR);
	  //
	  Standard_Boolean bIsValidIn2D, bNegativeFlag;
	  bIsValidIn2D=BOPTools_Tools3D::IsValidArea (aFaceResult, bNegativeFlag);
	  if (bIsValidIn2D) { 
	    //if(CheckSameDomainFaceInside(aFaceResult, aF2)) {
	    iZone=1;
	    break;
	    //}
	  }
	  //
	}
      }
      
      if (iZone) { 
	bFlag=Standard_True;
	aFF.SetStatesMap(aWESFiller.StatesMap());
      }
      
    }// if (iSenseFlag)
  
  aFF.SetTangentFacesFlag(bFlag);
  aFF.SetSenseFlag (iSenseFlag);
  }// end of for (i=1; i<=aNb; i++) 
}
