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

// File:        GEOMAlgo_WireSolid.cxx
// Created:     Wed Jan 12 10:19:31 2005
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <GEOMAlgo_WireSolid.hxx>

#include <Standard_Failure.hxx>

#include <TopAbs_ShapeEnum.hxx>

#include <TopTools_ListIteratorOfListOfShape.hxx>

#include <BOPTColStd_Dump.hxx>

#include <BooleanOperations_ShapesDataStructure.hxx>
#include <BooleanOperations_StateOfShape.hxx>

#include <BOPTools_PaveFiller.hxx>
#include <BOPTools_SplitShapesPool.hxx>
#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_DSFiller.hxx>
#include <BOPTools_WireStateFiller.hxx>

//=======================================================================
//function : GEOMAlgo_WireSolid
//purpose  :
//=======================================================================
GEOMAlgo_WireSolid::GEOMAlgo_WireSolid()
:
  GEOMAlgo_ShapeSolid()
{
}
//=======================================================================
//function : ~
//purpose  :
//=======================================================================
GEOMAlgo_WireSolid::~GEOMAlgo_WireSolid()
{
}
//=======================================================================
// function: Perform
// purpose:
//=======================================================================
void GEOMAlgo_WireSolid::Perform()
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
    BuildResult();
  }
  //
  catch (Standard_Failure) {
    myErrorStatus= 12;
  }
}
//=======================================================================
// function: Prepare
// purpose:
//=======================================================================
void GEOMAlgo_WireSolid::Prepare()
{
  const BOPTools_PaveFiller& aPaveFiller=myDSFiller->PaveFiller();
  //
  BOPTools_WireStateFiller aStateFiller(aPaveFiller);
  aStateFiller.Do();
  //
}
//=======================================================================
// function: BuildResult
// purpose:
//=======================================================================
void GEOMAlgo_WireSolid::BuildResult()
{
  const BooleanOperations_ShapesDataStructure& aDS=myDSFiller->DS();
  const BOPTools_PaveFiller& aPaveFiller=myDSFiller->PaveFiller();
  const BOPTools_SplitShapesPool& aSplitShapesPool=aPaveFiller.SplitShapesPool();
  //
  Standard_Integer i, aNbPB, nSp, iBeg, iEnd;
  TopAbs_ShapeEnum aType;
  BooleanOperations_StateOfShape aState;
  //
  myLSIN.Clear();
  myLSOUT.Clear();
  myLSON.Clear();
  //
  iBeg=1;
  iEnd=aDS.NumberOfShapesOfTheObject();
  if (aDS.Tool().ShapeType()==TopAbs_WIRE) {
    iBeg=iEnd+1;
    iEnd=aDS.NumberOfSourceShapes();
  }
  //
  for (i=iBeg; i<=iEnd; ++i) {
    aType=aDS.GetShapeType(i);
    if (aType==TopAbs_EDGE) {
      const TopoDS_Shape& aE=aDS.Shape(i);
      const BOPTools_ListOfPaveBlock& aLPB=aSplitShapesPool(aDS.RefEdge(i));
      aNbPB=aLPB.Extent();
      //
      if (!aNbPB) {
        aState=aDS.GetState(i);
        //
        if (aState==BooleanOperations_IN) {
          myLSIN.Append(aE);
        }
        else if (aState==BooleanOperations_OUT) {
          myLSOUT.Append(aE);
        }
        else if (aState==BooleanOperations_ON) {
          myLSON.Append(aE);
        }
      }
      //
      else if (aNbPB==1) {
        const BOPTools_PaveBlock& aPB=aLPB.First();
        nSp=aPB.Edge();
        /*const TopoDS_Shape& aSp=*/aDS.Shape(nSp);
        aState=aDS.GetState(nSp);
         //
        if (aState==BooleanOperations_IN) {
          myLSIN.Append(aE);
        }
        else if (aState==BooleanOperations_OUT) {
          myLSOUT.Append(aE);
        }
        else if (aState==BooleanOperations_ON) {
          myLSON.Append(aE);
        }
      }
    }
  }
}
