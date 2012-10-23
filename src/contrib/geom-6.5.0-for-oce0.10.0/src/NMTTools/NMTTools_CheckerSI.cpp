// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

//  File:       NMTTools_CheckerSI.cxx
//  Created:    Mon Feb 19 11:32:08 2007
//  Author:     Peter KURNEV
//
#include <NMTTools_CheckerSI.hxx>

#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTDS_IteratorCheckerSI.hxx>
#include <NMTDS_InterfPool.hxx>
#include <NMTTools_DEProcessor.hxx>
#include <IntTools_Context.hxx>

//=======================================================================
//function :
//purpose  :
//=======================================================================
  NMTTools_CheckerSI::NMTTools_CheckerSI()
:
  NMTTools_PaveFiller()
{
  myStopStatus=0;
}
//=======================================================================
//function : ~
//purpose  :
//=======================================================================
  NMTTools_CheckerSI::~NMTTools_CheckerSI()
{
}
//=======================================================================
//function : Clear
//purpose  :
//=======================================================================
  void NMTTools_CheckerSI::Clear()
{
  NMTTools_PaveFiller::Clear();
}
//=======================================================================
//function : StopStatus
//purpose  :
//=======================================================================
  Standard_Integer NMTTools_CheckerSI::StopStatus()const
{
  return myStopStatus;
}
//=======================================================================
//function : Init
//purpose  :
//=======================================================================
  void NMTTools_CheckerSI::Init()
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
  myDSIt=new NMTDS_IteratorCheckerSI;
  myDSIt->SetDS(myDS);
  myDSIt->Prepare();
  //
  // 3.
  myNbSources=myDS->NumberOfShapesOfTheObject()+
              myDS->NumberOfShapesOfTheTool();
  myNbEdges=myDS->NbEdges();
  // 4
  myIP=new NMTDS_InterfPool;
  //
  // 5
  myContext=new IntTools_Context;
}
//=======================================================================
//function : Perform
//purpose  :
//=======================================================================
  void NMTTools_CheckerSI::Perform()
{
  myIsDone=Standard_False;
  myStopStatus=0;
  //
  Init();
  //1.VV
  //
  PerformVV();
  //
  // 2.VE
  myPavePool.Resize (myNbEdges);

  PrepareEdges();
  //
  PerformVE();
  //
  // 3.VF
  PerformVF();
  //
  // 4.EE
  myCommonBlockPool.Resize (myNbEdges);
  mySplitShapesPool.Resize (myNbEdges);
  myPavePoolNew    .Resize (myNbEdges);
  //
  PreparePaveBlocks(TopAbs_VERTEX, TopAbs_EDGE);
  if (myStopStatus) {
    return;
  }
  PreparePaveBlocks(TopAbs_EDGE, TopAbs_EDGE);
  if (myStopStatus) {
    return;
  }
  //
  PerformEE();
  //
  RefinePavePool ();
  if (myStopStatus) {
    return;
  }
  //
  myPavePoolNew.Destroy();
  myPavePoolNew.Resize (myNbEdges);
  //
  // 5.EF
  PreparePaveBlocks(TopAbs_EDGE, TopAbs_FACE);
  if (myStopStatus) {
    return;
  }
  //
  PerformEF();
  //
  RefinePavePool();
  if (myStopStatus) {
    return;
  }
  //
  myPavePoolNew.Destroy();
  //
  MakeSplitEdges();
  //
  UpdateCommonBlocks();
  //
  // 6. FF
  PerformFF ();
  //
  MakeBlocks();
  //
  MakePCurves();
  //
  // 7. Postprocessing
  UpdatePaveBlocks();
  //
  NMTTools_DEProcessor aDEP(*this);
  aDEP.Do();
  //
  MakeAloneVertices();
  //
  myIsDone=Standard_True;
}
