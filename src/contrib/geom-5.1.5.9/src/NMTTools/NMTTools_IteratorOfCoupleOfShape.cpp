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
// File:	NMTTools_IteratorOfCoupleOfShape.cxx
// Created:	Thu Dec  4 17:00:03 2003
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTTools_IteratorOfCoupleOfShape.ixx>
#include <Standard_NoSuchObject.hxx>
#include <NMTDS_ShapesDataStructure.hxx>
#include <BOPTools_CoupleOfInteger.hxx>
#include <NMTDS_CArray1OfIndexRange.hxx>
#include <BooleanOperations_ShapesDataStructure.hxx>

//=======================================================================
// function: 
// purpose: 
//=======================================================================
  NMTTools_IteratorOfCoupleOfShape::NMTTools_IteratorOfCoupleOfShape()
:
  BOPTools_IteratorOfCoupleOfShape()
{
  myIndex1=0;
  myIndex2=0;
  myWithSubShapeFlag=Standard_False;
}
//=======================================================================
// function: SetDS
// purpose: 
//=======================================================================
  void NMTTools_IteratorOfCoupleOfShape::SetDS(const NMTDS_PShapesDataStructure& PDS)
{
  myPNMTPS=PDS;
  SetDataStructure(myPNMTPS);
}
//=======================================================================
// function: Initialize
// purpose: 
//=======================================================================
  void NMTTools_IteratorOfCoupleOfShape::Initialize(const TopAbs_ShapeEnum Type1,
						    const TopAbs_ShapeEnum Type2)
{
  if(myPDS==NULL) {
    Standard_NoSuchObject::Raise("NMTTools_IteratorOfCoupleOfShape::Initialize: myPDS==NULL");
  }
  //
  myType1 = Type1;
  myType2 = Type2;
  myCurrentIndex1 = -1;
  myCurrentIndex2 = -1;
  //
  myFirstLowerIndex=1;
  myFirstUpperIndex=myPNMTPS->NumberOfShapesOfTheObject();
  mySecondLowerIndex=myFirstUpperIndex+1;
  mySecondUpperIndex=myFirstUpperIndex+myPNMTPS->NumberOfShapesOfTheTool();
  //
  Standard_Integer n1, n2, aIR1, aIR2;//, aN1, aN2, aNS;
  //
  const NMTDS_CArray1OfIndexRange& aRanges=myPNMTPS->Ranges();
  //
  //aNS=myPNMTPS->NumberOfShapesOfTheObject(); 
  myIndex1=0;
  myIndex2=0;
  myWithSubShapeFlag=Standard_False;
  //
  myListOfCouple.Clear();
  myMap.Clear();
  //
  NextP();
  for (; MoreP(); NextP()) {
    CurrentP(n1, n2);
    //
    aIR1=myPNMTPS->ShapeRangeIndex(n1);
    aIR2=myPNMTPS->ShapeRangeIndex(n2);
    if (aIR1==aIR2){
      continue;
    }
    //
    BOPTools_CoupleOfInteger aCouple(n1, n2);
    myListOfCouple.Append(aCouple);
    //
    /*
    aN1=(n1>aNS)? n1-aNS : n1;
    aN2=(n2>aNS)? n2-aNS : n2;
    BOPTools_CoupleOfInteger aCoupleX(aN1, aN2);
    myMap.Add(aCoupleX);
    */
  }
  myIterator.Initialize(myListOfCouple);
} 
//=======================================================================
// function: Current
// purpose: 
//=======================================================================
  void NMTTools_IteratorOfCoupleOfShape::Current(Standard_Integer& aIndex1,
						 Standard_Integer& aIndex2,
						 Standard_Boolean& aWithSubShape) const
{
  aIndex1=myIndex1;
  aIndex2=myIndex2;
  aWithSubShape=myWithSubShapeFlag;
}
//=======================================================================
// function: More
// purpose: 
//=======================================================================
  Standard_Boolean NMTTools_IteratorOfCoupleOfShape::More()const
{
  Standard_Boolean  bMore, bWithSubShape;
  Standard_Integer n1, n2, aNS, aN1, aN2;
  BOPTools_CoupleOfInteger aCoupleX;
  NMTTools_IteratorOfCoupleOfShape* pIt=(NMTTools_IteratorOfCoupleOfShape*)this;
  //
  aNS=myPNMTPS->NumberOfShapesOfTheObject();
  pIt->myIndex1=0;
  pIt->myIndex2=0;
  pIt->myWithSubShapeFlag=Standard_False;
  //
  while (1) {
    bMore=myIterator.More();
    if (!bMore) {
      break;
    }
    //
    BOPTools_IteratorOfCoupleOfShape::Current(n1, n2, bWithSubShape);
    aN1=(n1>aNS)? n1-aNS : n1;
    aN2=(n2>aNS)? n2-aNS : n2;
    aCoupleX.SetCouple(aN1, aN2);
    if (!myMap.Contains(aCoupleX)) {
      pIt->myMap.Add(aCoupleX);
      //
      pIt->myIndex1=aN1;
      pIt->myIndex2=aN2;
      pIt->myWithSubShapeFlag=bWithSubShape;
      break;
    }
    //
    pIt->Next();
  }
  return bMore;
} 
