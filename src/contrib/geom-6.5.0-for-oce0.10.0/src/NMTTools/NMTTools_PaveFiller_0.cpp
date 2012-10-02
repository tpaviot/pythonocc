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

// File:        NMTTools_PaveFiller_0.cxx
// Created:     Mon Dec  8 11:45:51 2003
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <NMTTools_PaveFiller.hxx>

#include <TColStd_IndexedMapOfInteger.hxx>
#include <TopAbs_ShapeEnum.hxx>

#include <NMTDS_InterfPool.hxx>
#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTDS_Iterator.hxx>

//=======================================================================
// function:IsSuccesstorsComputed
// purpose:
//=======================================================================
  Standard_Boolean NMTTools_PaveFiller::IsSuccessorsComputed(const Standard_Integer aN1,
                                                             const Standard_Integer aN2)const
{
  Standard_Boolean bComputed;
  Standard_Integer i, nSuc, n1, n2, ntmp, aNbS;
  TopAbs_ShapeEnum aType;
  TColStd_IndexedMapOfInteger aMSuc;
  //
  n1=aN1;
  n2=aN2;
  aType=myDS->GetShapeType(aN1);
  if (aType!=TopAbs_VERTEX) {
    ntmp=n1;
    n1=n2;
    n2=ntmp;
  }
  //
  myDS->GetAllSuccessors(n2, aMSuc);
  aNbS=aMSuc.Extent();
  for (i=1; i<=aNbS; ++i) {
    nSuc=aMSuc(i);
    bComputed=myIP->Contains(n1, nSuc);
    if (bComputed) {
      break;
    }
  }
  return bComputed;
}
/*
//=======================================================================
// function:  ExpectedPoolLength
// purpose:
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::ExpectedPoolLength()const
{
  Standard_Integer aNbIIs;
  Standard_Real aCfPredict=.5;
  // Modified  Thu Sep 14 14:35:18 2006
  // Contribution of Samtech www.samcef.com BEGIN
  //const BOPTools_ListOfCoupleOfInteger& aLC=myDSIt.ListOfCouple();
  //aNbIIs=aLC.Extent();
  aNbIIs=myDSIt->ExpectedLength();
  // Contribution of Samtech www.samcef.com END
  //
  if (aNbIIs==1) {
    return aNbIIs;
  }
  //
  aNbIIs=(Standard_Integer) (aCfPredict*(Standard_Real)aNbIIs);

  return aNbIIs;
}
*/
/*
//=======================================================================
//function : SortTypes
//purpose  :
//=======================================================================
  void NMTTools_PaveFiller::SortTypes(Standard_Integer& theWhat,
                                      Standard_Integer& theWith)const
{
  Standard_Integer aWhat, aWith;
  Standard_Boolean aReverseFlag;
  TopAbs_ShapeEnum aType1, aType2;
  //
  aType1= myDS->GetShapeType(theWhat),
  aType2= myDS->GetShapeType(theWith);
  //
  if (aType1==aType2) {
    return;
  }
  //
  aReverseFlag=Standard_True;
  if (aType1==TopAbs_EDGE && aType2==TopAbs_FACE) {
    aReverseFlag=Standard_False;
  }
  if (aType1==TopAbs_VERTEX &&
      (aType2==TopAbs_FACE || aType2==TopAbs_EDGE)) {
    aReverseFlag=Standard_False;
  }
  //
  aWhat=(aReverseFlag) ? theWith : theWhat;
  aWith=(aReverseFlag) ? theWhat : theWith;
  //
  theWhat=aWhat;
  theWith=aWith;
}
*/
