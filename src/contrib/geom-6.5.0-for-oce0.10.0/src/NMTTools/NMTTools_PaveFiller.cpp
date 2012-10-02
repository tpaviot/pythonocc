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

// File:        NMTTools_PaveFiller.cxx
// Created:     Fri Dec  5 14:58:54 2003
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <NMTTools_PaveFiller.hxx>
//
#include <BOPTColStd_Failure.hxx>
#include <IntTools_Context.hxx>
#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTTools_DEProcessor.hxx>
#include <NMTDS_Iterator.hxx>
#include <NMTDS_InterfPool.hxx>

//=======================================================================
// function: NMTTools_PaveFiller::NMTTools_PaveFiller
// purpose:
//=======================================================================
  NMTTools_PaveFiller::NMTTools_PaveFiller()
{
  myDS=NULL;
  myDSIt=NULL;
  myIsDone=Standard_False;
  myNbSources=0;
  myNbEdges=0;
  myIP=NULL;
}
//=======================================================================
// function: ~
// purpose:
//=======================================================================
  NMTTools_PaveFiller::~NMTTools_PaveFiller()
{
  Clear();
}
//=======================================================================
// function: Clear
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::Clear()
{
  if (myDSIt) {
    delete myDSIt;
  }
  if (myDS) {
    delete myDS;
  }
  myDSIt=NULL;
  myDS=NULL;

  if (myIP) {
    delete myIP;
  }
  myIP=NULL;
}
//=======================================================================
// function: SetCompositeShape
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::SetCompositeShape(const TopoDS_Shape& aS)
{
  myCompositeShape=aS;
}
//=======================================================================
// function: CompositeShape
// purpose:
//=======================================================================
  const TopoDS_Shape& NMTTools_PaveFiller::CompositeShape()const
{
  return myCompositeShape;
}
//=======================================================================
// function:  DS
// purpose:
//=======================================================================
  NMTDS_PShapesDataStructure NMTTools_PaveFiller::DS()
{
  return myDS;
}
//=======================================================================
// function: DSIt
// purpose:
//=======================================================================
  NMTDS_PIterator NMTTools_PaveFiller::DSIt()
{
  return myDSIt;
}
//=======================================================================
// function:  IP
// purpose:
//=======================================================================
  NMTDS_PInterfPool NMTTools_PaveFiller::IP()
{
  return myIP;
}
//=======================================================================
// function:IsDone
// purpose:
//=======================================================================
  Standard_Boolean NMTTools_PaveFiller::IsDone() const
{
  return myIsDone;
}
//=======================================================================
// function: Context
// purpose:
//=======================================================================
  const Handle(IntTools_Context)& NMTTools_PaveFiller::Context() const
{
  return myContext;
}
//=======================================================================
// function: PavePool
// purpose:
//=======================================================================
  const BOPTools_PavePool& NMTTools_PaveFiller::PavePool() const
{
  return myPavePool;
}
//=======================================================================
// function: ChangePavePool
// purpose:
//=======================================================================
  BOPTools_PavePool& NMTTools_PaveFiller::ChangePavePool()
{
  return myPavePool;
}
//=======================================================================
// function: ChangePavePoolNew
// purpose:
//=======================================================================
  BOPTools_PavePool& NMTTools_PaveFiller::ChangePavePoolNew()
{
  return myPavePoolNew;
}
//=======================================================================
// function:  CommonBlockPool
// purpose:
//=======================================================================
  const NMTTools_CommonBlockPool& NMTTools_PaveFiller::CommonBlockPool() const
{
  return myCommonBlockPool;
}
//=======================================================================
// function:  ChangeCommonBlockPool
// purpose:
//=======================================================================
  NMTTools_CommonBlockPool& NMTTools_PaveFiller::ChangeCommonBlockPool()
{
  return myCommonBlockPool;
}
//=======================================================================
// function:  SplitShapesPool
// purpose:
//=======================================================================
  const BOPTools_SplitShapesPool& NMTTools_PaveFiller::SplitShapesPool() const
{
  return mySplitShapesPool;
}
//=======================================================================
// function:  ChangeSplitShapesPool
// purpose:
//=======================================================================
  BOPTools_SplitShapesPool& NMTTools_PaveFiller::ChangeSplitShapesPool()
{
  return mySplitShapesPool;
}
//=======================================================================
// function: Init
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::Init()
{
  myIsDone=Standard_False;
  if (myCompositeShape.IsNull()) {
    return;
  }
  //
  Clear();
  // 1.
  myDS=new NMTDS_ShapesDataStructure;
  myDS->SetCompositeShape(myCompositeShape);
  myDS->Init();
  //
  // 2.
  myDSIt=new NMTDS_Iterator;
  myDSIt->SetDS(myDS);
  myDSIt->Prepare();
  //
  // 3.
  myNbSources=myDS->NumberOfShapesOfTheObject()+
              myDS->NumberOfShapesOfTheTool();
  myNbEdges=myDS->NbEdges();
  //
  // 4
  myIP=new NMTDS_InterfPool;
  //
  // 5
  myContext=new IntTools_Context;
}

//=======================================================================
// function: Perform
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::Perform()
{
  myIsDone=Standard_False;
  //
  //----------------
  try {
    // 0.
    Init();
    //1.VV
    //
    PerformVV();
    //
    // 2.VE
    myPavePool.Resize (myNbEdges);

    PrepareEdges();

    PerformVE();
    //
    // 3.VF
    PerformVF();
    //
    // 4.EE
    myCommonBlockPool.Resize (myNbEdges);
    mySplitShapesPool.Resize (myNbEdges);
    myPavePoolNew    .Resize (myNbEdges);

    PreparePaveBlocks(TopAbs_VERTEX, TopAbs_EDGE);
    PreparePaveBlocks(TopAbs_EDGE, TopAbs_EDGE);
    //
    PerformEE();
    //
    RefinePavePool ();
    //
    myPavePoolNew.Destroy();
    myPavePoolNew.Resize (myNbEdges);
    //
    //modified by NIZNHY-PKV Mon Dec 12 09:13:53 2011f
    UpdateCommonBlocks(0);
    //modified by NIZNHY-PKV Mon Dec 12 09:13:56 2011t
    //
    // 5.EF
    PreparePaveBlocks(TopAbs_EDGE, TopAbs_FACE);
    PerformEF();
    //
    RefinePavePool();
    //
    myPavePoolNew.Destroy();

    MakeSplitEdges();

    UpdateCommonBlocks();
    //
    // 6. FF
    PerformFF ();
    //
    MakeBlocks();
    //
    MakePCurves();
    //
    // 7.Postprocessing
    UpdatePaveBlocks();
    //
    NMTTools_DEProcessor aDEP(*this);
    aDEP.Do();
    //
    MakeAloneVertices();
    //
    //modified by NIZNHY-PKV Mon Dec 12 09:14:23 2011f
    myIP->Purge();
    //modified by NIZNHY-PKV Mon Dec 12 09:14:27 2011t
    myIsDone=Standard_True;
  }
  catch (BOPTColStd_Failure& ) {
  }
}
