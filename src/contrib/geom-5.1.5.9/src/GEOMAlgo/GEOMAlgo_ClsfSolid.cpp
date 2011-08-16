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
// File:	GEOMAlgo_ClsfSolid.cxx
// Created:	Mon Jan 29 10:35:46 2007
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_ClsfSolid.ixx>

#include <TopAbs_ShapeEnum.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Solid.hxx>
#include <BRep_Builder.hxx>
#include <BRepClass3d_SolidClassifier.hxx>

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  GEOMAlgo_ClsfSolid::GEOMAlgo_ClsfSolid()
:
  GEOMAlgo_Clsf()
{
  myPClsf=NULL;
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
  GEOMAlgo_ClsfSolid::~GEOMAlgo_ClsfSolid()
{
  if (myPClsf) {
    BRepClass3d_SolidClassifier* pSC;
    //
    pSC=(BRepClass3d_SolidClassifier*)myPClsf;
    delete pSC;
  }
}
//=======================================================================
//function : SetShape
//purpose  : 
//=======================================================================
  void GEOMAlgo_ClsfSolid::SetShape(const TopoDS_Shape& aS)
{
  myShape=aS;
}
//=======================================================================
//function : Shape
//purpose  : 
//=======================================================================
  const TopoDS_Shape& GEOMAlgo_ClsfSolid::Shape()const
{
  return myShape;
}
//=======================================================================
//function : CheckData
//purpose  : 
//=======================================================================
  void GEOMAlgo_ClsfSolid::CheckData()
{
  myErrorStatus=0;
  //
  BRepClass3d_SolidClassifier* pSC;
  TopAbs_ShapeEnum aType;
  BRep_Builder aBB;
  TopoDS_Solid aS;
  //
  if (myShape.IsNull()) {
    myErrorStatus=10; // mySolid=NULL
    return;
  }
  //
  aType=myShape.ShapeType();
  if (!(aType==TopAbs_SOLID || aType==TopAbs_SHELL)) {
    myErrorStatus=12; 
    return;
  }
  //
  //===
  if (aType==TopAbs_SOLID) {
    aS=TopoDS::Solid(myShape);
  }
  else {
    aBB.MakeSolid(aS);
    aBB.Add(aS, myShape);
  }
  //
  if (myPClsf) {
    pSC=(BRepClass3d_SolidClassifier*)myPClsf;
    delete pSC;
  }
  //
  pSC=new BRepClass3d_SolidClassifier(aS);
  myPClsf=pSC;
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
  void GEOMAlgo_ClsfSolid::Perform()
{
  myErrorStatus=0;
  //
  if (!myPClsf) {
    myErrorStatus=11;
    return;
  }
  //
  BRepClass3d_SolidClassifier* pSC;
  //
  pSC=(BRepClass3d_SolidClassifier*)myPClsf;
  pSC->Perform(myPnt, myTolerance);
  myState=pSC->State();
}
//
// myErrorStatus :
//
// 10 - mySolid=NULL
// 11 - myPClsf=NULL
// 12 - unallowed type of myShape

