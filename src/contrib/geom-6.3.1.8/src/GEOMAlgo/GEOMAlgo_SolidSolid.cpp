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
// File:	GEOMAlgo_SolidSolid.cxx
// Created:	Wed Jan 26 12:06:26 2005
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_SolidSolid.ixx>

#include <Standard_Failure.hxx>

#include <TopAbs_State.hxx>
#include <TopoDS_Shape.hxx>
#include <TopExp.hxx>

#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <BooleanOperations_ShapesDataStructure.hxx>
#include <BOPTools_DSFiller.hxx>

#include <GEOMAlgo_IndexedDataMapOfShapeState.hxx>

//=======================================================================
//function : GEOMAlgo_SolidSolid
//purpose  : 
//=======================================================================
GEOMAlgo_SolidSolid::GEOMAlgo_SolidSolid()
:
  GEOMAlgo_ShellSolid()
{
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
GEOMAlgo_SolidSolid::~GEOMAlgo_SolidSolid()
{
}
//=======================================================================
// function: SetShape2
// purpose: 
//=======================================================================
void GEOMAlgo_SolidSolid::SetShape2(const TopoDS_Shape& aS2)
{
  myS2=aS2;
} 
//=======================================================================
// function: Shape2
// purpose: 
//=======================================================================
const TopoDS_Shape& GEOMAlgo_SolidSolid::Shape2()const
{
  return myS2;
} 
//=======================================================================
// function: Perform
// purpose: 
//=======================================================================
void GEOMAlgo_SolidSolid::Perform() 
{
  myErrorStatus=0;
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
    myRank=2;
    BuildResult();
  }
  catch (Standard_Failure) {
    myErrorStatus=12;
  }
}
//=================================================================================
// function: BuildResult
// purpose: 
//=================================================================================
void GEOMAlgo_SolidSolid::BuildResult() 
{
  myErrorStatus=0;
  //
  Standard_Integer i, j, aNbF, aNbS;
  Standard_Integer aNbFIN, aNbFOUT, aNbFON, aNbFINTR;
  TopAbs_State aState;
  TopTools_ListIteratorOfListOfShape aIt;
  TopTools_IndexedMapOfShape aMF, aMS;
  GEOMAlgo_IndexedDataMapOfShapeState aMFS;
  //
  // 1. classify the faces
  GEOMAlgo_ShellSolid::BuildResult(); 
  //
  // 2. fill Shape-State map
  aIt.Initialize(myLSIN);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aF=aIt.Value();
    aMFS.Add(aF, TopAbs_IN);
  }
  aIt.Initialize(myLSOUT);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aF=aIt.Value();
    aMFS.Add(aF, TopAbs_OUT);
  }
  aIt.Initialize(myLSON);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aF=aIt.Value();
    aMFS.Add(aF, TopAbs_ON);
  }
  myLSIN.Clear();
  myLSON.Clear();
  myLSOUT.Clear();
  //
  // 3. fill states for solids
  TopExp::MapShapes(myS2, TopAbs_SOLID, aMS);
  //
  aNbS=aMS.Extent();
  for (i=1; i<=aNbS; ++i) {
    const TopoDS_Shape& aSolid=aMS(i);
    //
    aMF.Clear();
    TopExp::MapShapes(aSolid, TopAbs_FACE, aMF);
    //
    aNbFIN=0;
    aNbFOUT=0;
    aNbFON=0;
    aNbFINTR=0;
    //
    aNbF=aMF.Extent();
    for(j=1; j<aNbF; ++j) {
      const TopoDS_Shape& aF=aMF(j);
      //
      if (!aMFS.Contains(aF)) {// the face is intesected 
	++aNbFINTR;
	break; 
      }
      //
      aState=aMFS.FindFromKey(aF);
      switch (aState) {
        case TopAbs_IN:
	  ++aNbFIN;
	  break;
	case TopAbs_OUT:
	  ++aNbFOUT;
	  break;
	case TopAbs_ON:
	  ++aNbFON;
	  break;
	default:
	  break;
      }
      if (aNbFIN && aNbFOUT) {
	++aNbFINTR;
	break;
      }
    }
    //
    if (!aNbFINTR) {
      if (aNbFON==aNbF) {
	myLSON.Append(aSolid);
      }
      else if (aNbFIN) {
	myLSIN.Append(aSolid);
      }
      else if (aNbFOUT) {
	myLSOUT.Append(aSolid);
      }
    }
  }
}
