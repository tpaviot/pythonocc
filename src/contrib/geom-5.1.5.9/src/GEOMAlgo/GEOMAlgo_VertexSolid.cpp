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
// File:	GEOMAlgo_VertexSolid.cxx
// Created:	Wed Jan 12 16:36:40 2005
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_VertexSolid.ixx>

#include <gp_Pnt.hxx>

#include <TopAbs_ShapeEnum.hxx>
#include <TopAbs_State.hxx>

#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Vertex.hxx>

#include <TopExp.hxx>

#include <BRep_Tool.hxx>
#include <BRepClass3d_SolidClassifier.hxx>

#include <BOPTColStd_Dump.hxx>

#include <IntTools_Context.hxx>

#include <BooleanOperations_StateOfShape.hxx>
#include <BooleanOperations_ShapesDataStructure.hxx>

#include <BOPTools_InterferencePool.hxx>
#include <BOPTools_CArray1OfVVInterference.hxx>
#include <BOPTools_VVInterference.hxx>
#include <BOPTools_PaveFiller.hxx>
#include <BOPTools_DSFiller.hxx>

//=======================================================================
//function : GEOMAlgo_VertexSolid
//purpose  : 
//=======================================================================
GEOMAlgo_VertexSolid::GEOMAlgo_VertexSolid()
:
  GEOMAlgo_ShapeSolid()
{
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
GEOMAlgo_VertexSolid::~GEOMAlgo_VertexSolid()
{
}
//=======================================================================
// function: Perform
// purpose: 
//=======================================================================
void GEOMAlgo_VertexSolid::Perform()
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
    Standard_Integer aNbF;
    TopTools_IndexedMapOfShape aM;
    //
    const BooleanOperations_ShapesDataStructure& aDS=myDSFiller->DS();
    const TopoDS_Shape& aObj=aDS.Object();
    //
    TopExp::MapShapes(aObj, TopAbs_FACE, aM);
    aNbF=aM.Extent();
    myRank=(aNbF) ? 2 : 1;
    //
    bIsNewFiller=myDSFiller->IsNewFiller();
    
    if (bIsNewFiller) {
      Prepare();
      myDSFiller->SetNewFiller(!bIsNewFiller);
    }
    BuildResult();
  }
  //
  catch (Standard_Failure) {
    myErrorStatus = 12;
  }
} 
//=======================================================================
// function: Prepare
// purpose: 
//=======================================================================
void GEOMAlgo_VertexSolid::Prepare()
{
  Standard_Integer i, iBeg, iEnd, aNbVV, j, n1, n2, iFound;
  Standard_Real aTol;
  TopAbs_State aSt;
  TopAbs_ShapeEnum aType;
  BooleanOperations_StateOfShape aState;
  gp_Pnt aP3D;
  //
  const BooleanOperations_ShapesDataStructure& aDS=myDSFiller->DS();
  BooleanOperations_ShapesDataStructure* pDS=(BooleanOperations_ShapesDataStructure*)&aDS;
  const BOPTools_InterferencePool& aIP=myDSFiller->InterfPool();
  BOPTools_InterferencePool* pIP=(BOPTools_InterferencePool*) &aIP;
  BOPTools_CArray1OfVVInterference& aVVs=pIP->VVInterferences();
  const BOPTools_PaveFiller& aPF=myDSFiller->PaveFiller();
  BOPTools_PaveFiller* pPF=(BOPTools_PaveFiller*)&aPF; 
  IntTools_Context& aCtx=pPF->ChangeContext();
  //
  const TopoDS_Shape& aObj=aDS.Object();
  const TopoDS_Shape& aTool=aDS.Tool();
  //
  const TopoDS_Solid& aSolid=(myRank==1) ? TopoDS::Solid(aTool) : TopoDS::Solid(aObj);
  const TopoDS_Shape& aSV   =(myRank==1)? aObj : aTool;
  //
  BRepClass3d_SolidClassifier& aSC=aCtx.SolidClassifier(aSolid);
  //
  iBeg=1;
  iEnd=aDS.NumberOfShapesOfTheObject();
  if (myRank==2) {
    iBeg=iEnd+1;
    iEnd=aDS.NumberOfSourceShapes();
  }
  //
  for (i=iBeg; i<=iEnd; ++i) {
    aType=aDS.GetShapeType(i);
    if (aType!=TopAbs_VERTEX) {
      continue;
    }
    //
    const TopoDS_Vertex& aV=TopoDS::Vertex(aDS.Shape(i));
    //
    aState=aDS.GetState(i);
    if (aState==BooleanOperations_ON ||
	aState==BooleanOperations_IN ||
	aState==BooleanOperations_OUT) {
      continue;
    }
    //
    iFound=0;
    aNbVV=aVVs.Extent();
    for (j=1; j<=aNbVV; ++j) {
      BOPTools_VVInterference& aVV=aVVs(j);
      aVV.Indices(n1, n2);
      if (n1==i || n2==i) {
	pDS->SetState (n1, BooleanOperations_ON);
	pDS->SetState (n2, BooleanOperations_ON);
	iFound=1;
	break;
      } 
    }
    if (iFound) {
      continue;
    }
    // 
    aP3D=BRep_Tool::Pnt(aV);
    aTol=1.E-7;
    aSC.Perform(aP3D, aTol);
    aSt=aSC.State();
    if (aSt==TopAbs_IN) {
      pDS->SetState (i, BooleanOperations_IN);
    }
    else if (aSt==TopAbs_OUT) {
      pDS->SetState (i, BooleanOperations_OUT);
    }
  }
}
//=======================================================================
// function: BuildResult
// purpose: 
//=======================================================================
void GEOMAlgo_VertexSolid::BuildResult()
{
  const BooleanOperations_ShapesDataStructure& aDS=myDSFiller->DS();
  //
  Standard_Integer i, iBeg, iEnd;
  TopAbs_ShapeEnum aType;
  BooleanOperations_StateOfShape aState;
  //
  myLSIN.Clear();
  myLSOUT.Clear();
  myLSON.Clear();
  //
  iBeg=1;
  iEnd=aDS.NumberOfShapesOfTheObject();
  if (myRank==2) {
    iBeg=iEnd+1;
    iEnd=aDS.NumberOfSourceShapes();
  }
  //
  for (i=iBeg; i<=iEnd; ++i) {
    aType=aDS.GetShapeType(i);
    if (aType!=TopAbs_VERTEX) {
      continue;
    }
    const TopoDS_Shape& aV=aDS.Shape(i);
    aState=aDS.GetState(i);
    //
    if (aState==BooleanOperations_IN) {
      myLSIN.Append(aV);
    }
    else if (aState==BooleanOperations_OUT) {
      myLSOUT.Append(aV);
    }
    else if (aState==BooleanOperations_ON) {
      myLSON.Append(aV);
    }
  }
}
