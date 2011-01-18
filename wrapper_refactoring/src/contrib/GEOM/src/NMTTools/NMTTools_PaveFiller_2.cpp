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
// File:	NMTTools_PaveFiller_2.cxx
// Created:	Mon Dec  8 12:02:56 2003
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTTools_PaveFiller.ixx>

#include <Precision.hxx>

#include <gp_Pnt.hxx>

#include <Geom_Curve.hxx>

#include <TopAbs_Orientation.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Iterator.hxx>

#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>

#include <BOPTools_Pave.hxx>
#include <BOPTools_PaveSet.hxx>
#include <BOPTools_CArray1OfVEInterference.hxx>
#include <BOPTools_VEInterference.hxx>

#include <BooleanOperations_AncestorsSeqAndSuccessorsSeq.hxx>
#include <NMTDS_Iterator.hxx>
#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTDS_InterfPool.hxx>
//
// Modified  Thu Sep 14 14:35:18 2006 
// Contribution of Samtech www.samcef.com BEGIN
#include <BOPTools_IndexedMapOfCoupleOfInteger.hxx>
#include <BOPTools_CoupleOfInteger.hxx>
#include <BooleanOperations_OnceExplorer.hxx>


static
  Standard_Boolean Contains(const TopoDS_Edge& aE,
			    const TopoDS_Vertex& aV);
// Contribution of Samtech www.samcef.com END

//=======================================================================
// function: PerformVE
// purpose: 
//=======================================================================
  void NMTTools_PaveFiller::PerformVE() 
{
  myIsDone=Standard_False;
  //
  Standard_Boolean bJustAdd;
  Standard_Integer n1, n2, anIndexIn, aFlag, aWhat, aWith, aNbVEs, aBlockLength, iSDV, nV1;
  Standard_Real aT;
  TopoDS_Vertex aV1;
  TopoDS_Edge aE2;
  BOPTools_IndexedMapOfCoupleOfInteger aSnareMap;
  BOPTools_CoupleOfInteger aCouple;
  //
  BOPTools_CArray1OfVEInterference& aVEs=myIP->VEInterferences();
  //
  myDSIt->Initialize (TopAbs_VERTEX, TopAbs_EDGE);
  //
  // BlockLength correction
  aNbVEs=myDSIt->BlockLength();
  aBlockLength=aVEs.BlockLength();
  if (aNbVEs > aBlockLength) {
    aVEs.SetBlockLength(aNbVEs);
  }
  //
  for (; myDSIt->More(); myDSIt->Next()) {
    myDSIt->Current(n1, n2, bJustAdd);
    if (!IsSuccessorsComputed(n1, n2)) {
      anIndexIn=0;
      aWhat=n1; // Vertex
      aWith=n2; // Edge
      if (myDS->GetShapeType(n1)==TopAbs_EDGE) {
	aWhat=n2;
	aWith=n1;
      }
      //
      if(bJustAdd) {
	//myIntrPool->AddInterference(aWhat, aWith, BooleanOperations_VertexEdge, anIndexIn);
	continue;
      }
      // Edge
      aE2=TopoDS::Edge(myDS->Shape(aWith));
      if (BRep_Tool::Degenerated(aE2)){
	continue;
      }
      // Vertex
      nV1=aWhat;
      aV1=TopoDS::Vertex(myDS->Shape(aWhat));
      //
      iSDV=FindSDVertex(aWhat);
      if (iSDV) {
	nV1=iSDV;
	aV1=TopoDS::Vertex(myDS->Shape(nV1));
	// Modified to find same domain vertex Thu Sep 14 14:35:18 2006 
	// Contribution of Samtech www.samcef.com BEGIN
	Standard_Integer nVE, iSDVE, iRet;
	//
	BooleanOperations_OnceExplorer aExp(*myDS);
	iRet=0;
	aExp.Init(aWith, TopAbs_VERTEX);
	for (; aExp.More(); aExp.Next()) {
	  nVE=aExp.Current();
	  iSDVE=FindSDVertex(nVE);
	  if (iSDVE==iSDV) {
	    iRet=1;
	    break;
	  }
	}
	if (iRet) {
	  continue;
	}
      }
      else {
	if (Contains(aE2, aV1)) {
	  continue;
	}
	// Contribution of Samtech www.samcef.com END
      }
      //
      aFlag=myContext.ComputeVE (aV1, aE2, aT);
      //
      if (!aFlag) {
	// Add Interference to the Pool
	BOPTools_VEInterference anInterf (aWhat, aWith, aT);
	anIndexIn=aVEs.Append(anInterf);
	//
	// Add Pave to the Edge's myPavePool
	aCouple.SetCouple(nV1, aWith);
	if (!aSnareMap.Contains(aCouple)){
	  aSnareMap.Add(aCouple);
	  //
	  BOPTools_Pave aPave(nV1, aT, BooleanOperations_VertexEdge);
	  aPave.SetInterference(anIndexIn);
	  BOPTools_PaveSet& aPaveSet= myPavePool(myDS->RefEdge(aWith));
	  aPaveSet.Append(aPave);
	}
	//
	// State for the Vertex in DS;
	myDS->SetState (aWhat, BooleanOperations_ON);
	// Insert Vertex in Interference Object
	BOPTools_VEInterference& aVE=aVEs(anIndexIn);
	aVE.SetNewShape(aWhat);
	// qqf
	{
	  myIP->Add(aWhat, aWith, Standard_True, NMTDS_TI_VE);
	}	  
	// qqt
      }
      //myIntrPool->AddInterference(aWhat, aWith, BooleanOperations_VertexEdge, anIndexIn);
    }
  }
  myIsDone=Standard_True;
}
//=======================================================================
// function: PrepareEdges
// purpose: 
//=======================================================================
  void NMTTools_PaveFiller::PrepareEdges() 
{
  Standard_Integer  i, nV, ii, aNBSuc, ip, aNbShapesObject;
  Standard_Real aT;
  TopAbs_Orientation anOr;
  TopoDS_Edge   aE;
  TopoDS_Vertex aV;
  //
  aNbShapesObject=myDS->NumberOfShapesOfTheObject();
  for (i=1; i<=myNbSources; ++i) {
    if (myDS->GetShapeType(i)==TopAbs_EDGE) {
      aE=TopoDS::Edge(myDS->Shape(i));
      //
      if (BRep_Tool::Degenerated(aE)){
	continue;
      }
      //
      BOPTools_PaveSet& aPaveSet=myPavePool(myDS->RefEdge(i));
      //
      // A <-
      aNBSuc=myDS->NumberOfSuccessors(i);
      for (ii=1; ii <=aNBSuc; ii++) {
	nV=myDS->GetSuccessor(i, ii);
	anOr=myDS->GetOrientation(i, ii);
	aV=TopoDS::Vertex(myDS->Shape(nV));
	aV.Orientation(anOr);
	aT=BRep_Tool::Parameter(aV, aE);
	//
	ip=FindSDVertex(nV);
	if (ip) {
	  aV=TopoDS::Vertex(myDS->Shape(ip));
	  aV.Orientation(anOr);// XX ? if the edge is closed it'll be amazing result 
	  nV=ip;
	}
	//
	BOPTools_Pave aPave(nV, aT); 
	aPaveSet.Append (aPave);
      }
    }
  }
}

// Modified  Thu Sep 14 14:35:18 2006 
// Contribution of Samtech www.samcef.com BEGIN
//=======================================================================
//function : Contains
//purpose  : 
//=======================================================================
Standard_Boolean Contains(const TopoDS_Edge& aE,
			  const TopoDS_Vertex& aV)
{
  Standard_Boolean bRet;
  TopoDS_Iterator aIt;
  //
  bRet=Standard_False;
  aIt.Initialize(aE);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aVE=aIt.Value();
    if (aVE.IsSame(aV)) {
      bRet=!bRet;
      break;
    }
  }
  return bRet;
}
// Contribution of Samtech www.samcef.com END
