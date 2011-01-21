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
// File:	NMTDS_.InterfPoolcxx
// Created:	Wed Feb 21 10:35:35 2007
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTDS_InterfPool.ixx>
#include <NMTDS_PassKeyBoolean.hxx>
#include <NMTDS_ListOfPassKeyBoolean.hxx>
#include <NMTDS_MapIteratorOfMapOfPassKeyBoolean.hxx>
#include <NMTDS_ListIteratorOfListOfPassKeyBoolean.hxx>

static
  Standard_Integer TypeToInteger(const NMTDS_InterfType aType);

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  NMTDS_InterfPool::NMTDS_InterfPool()
{
  myMaxInd=6;
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
  NMTDS_InterfPool::~NMTDS_InterfPool()
{
}
//=======================================================================
//function : Add
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_InterfPool::Add (const NMTDS_PassKeyBoolean& aPKB,
					  const NMTDS_InterfType aType)
{
  Standard_Boolean bRet;
  Standard_Integer iType;
  //
  bRet=Standard_False;
  //
  iType=TypeToInteger(aType);
  if (iType>-1 && iType<myMaxInd) {
    bRet=myTable[iType].Add(aPKB);
  }
  return bRet;
}
//=======================================================================
//function : Add
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_InterfPool::Add (const Standard_Integer aInd1,
					  const Standard_Integer aInd2,
					  const NMTDS_InterfType aType)
{
  NMTDS_PassKeyBoolean aPKB;
  //
  aPKB.SetIds(aInd1, aInd2);
  return Add(aPKB, aType);
}
//=======================================================================
//function : Add
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_InterfPool::Add (const Standard_Integer aInd1,
					  const Standard_Integer aInd2,
					  const Standard_Boolean bFlag,
					  const NMTDS_InterfType aType)
{
  NMTDS_PassKeyBoolean aPKB;
  //
  aPKB.SetIds(aInd1, aInd2);
  aPKB.SetFlag(bFlag);
  return Add(aPKB, aType);
}
//=======================================================================
//function : Contains 
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_InterfPool::Contains(const NMTDS_PassKeyBoolean& aPKB)const
{
  Standard_Boolean bRet;
  Standard_Integer i;
  //
  for (i=0; i<myMaxInd; ++i) {
    bRet=myTable[i].Contains(aPKB);
    if (bRet) {
      break;
    }
  }
  return bRet;
}
//=======================================================================
//function : Contains 
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_InterfPool::Contains(const Standard_Integer aInd1,
					      const Standard_Integer aInd2)const
{
  NMTDS_PassKeyBoolean aPKB;
  //
  aPKB.SetIds(aInd1, aInd2);
  return Contains(aPKB);
}
//=======================================================================
//function :  Get
//purpose  : 
//=======================================================================
  const NMTDS_ListOfPassKeyBoolean& NMTDS_InterfPool::Get()const
{
  Standard_Integer i;
  NMTDS_ListOfPassKeyBoolean* pL;
  //
  pL=(NMTDS_ListOfPassKeyBoolean*)&myList;
  pL->Clear();
  //
  for (i=0; i<myMaxInd; ++i) {
    NMTDS_MapIteratorOfMapOfPassKeyBoolean aIt;
    //
    aIt.Initialize(myTable[i]);
    for(; aIt.More(); aIt.Next()) {
      const NMTDS_PassKeyBoolean& aPKB=aIt.Key();
      pL->Append(aPKB);
    }
  }
  return myList;
}
//=======================================================================
//function :  Get
//purpose  : 
//=======================================================================
  const NMTDS_ListOfPassKeyBoolean& NMTDS_InterfPool::Get(const Standard_Integer aInd)const
{
  Standard_Integer i, n1, n2;
  NMTDS_ListOfPassKeyBoolean* pL;
  //
  pL=(NMTDS_ListOfPassKeyBoolean*)&myList;
  pL->Clear();
  //
  for (i=0; i<myMaxInd; ++i) {
    NMTDS_MapIteratorOfMapOfPassKeyBoolean aIt;
    //
    aIt.Initialize(myTable[i]);
    for(; aIt.More(); aIt.Next()) {
      const NMTDS_PassKeyBoolean& aPKB=aIt.Key();
      aPKB.Ids(n1, n2);
      if(n1==aInd || n2==aInd) {
	pL->Append(aPKB);
      }
    }
  }
  return myList;
}
//=======================================================================
//function :  Get
//purpose  : 
//=======================================================================
  const NMTDS_ListOfPassKeyBoolean& NMTDS_InterfPool::Get(const NMTDS_InterfType aType)const
{
  Standard_Integer iType;
  NMTDS_ListOfPassKeyBoolean* pL;
  //
  pL=(NMTDS_ListOfPassKeyBoolean*)&myList;
  pL->Clear();
  //
  iType=TypeToInteger(aType);
  if (iType>-1 && iType<myMaxInd) {
    NMTDS_MapIteratorOfMapOfPassKeyBoolean aIt;
    //
    aIt.Initialize(myTable[iType]);
    for(; aIt.More(); aIt.Next()) {
      const NMTDS_PassKeyBoolean& aPKB=aIt.Key();
      pL->Append(aPKB);
    }
  }
  return myList;
}
//=======================================================================
//function :  Get
//purpose  : 
//=======================================================================
  const NMTDS_ListOfPassKeyBoolean& NMTDS_InterfPool::Get(const Standard_Integer aInd,
							  const NMTDS_InterfType aType)const
{
  Standard_Integer n1, n2;
  NMTDS_ListOfPassKeyBoolean *pL, aLPKB;
  NMTDS_ListIteratorOfListOfPassKeyBoolean aIt;
  //
  aLPKB=Get(aType);
  //
  pL=(NMTDS_ListOfPassKeyBoolean*)&myList;
  pL->Clear();
  //
  aIt.Initialize (aLPKB);
  for (; aIt.More(); aIt.Next()) {
    const NMTDS_PassKeyBoolean& aPKB=aIt.Value();
    aPKB.Ids(n1, n2);
    if(n1==aInd || n2==aInd) {
      pL->Append(aPKB);
    }
  }
  return myList;
}
////////////////////
//===========================================================================
//function : SSInterferences
//purpose  : 
//===========================================================================
  BOPTools_CArray1OfSSInterference&  NMTDS_InterfPool::SSInterferences()
{
  return mySSInterferences;
}
//===========================================================================
//function : ESInterferences
//purpose  : 
//===========================================================================
  BOPTools_CArray1OfESInterference&  NMTDS_InterfPool::ESInterferences()
{
  return myESInterferences;
}
//===========================================================================
//function : VSInterferences
//purpose  : 
//===========================================================================
  BOPTools_CArray1OfVSInterference&  NMTDS_InterfPool::VSInterferences()
{
  return myVSInterferences;
}
//===========================================================================
//function : EEInterferences
//purpose  : 
//===========================================================================
  BOPTools_CArray1OfEEInterference&  NMTDS_InterfPool::EEInterferences()
{
  return myEEInterferences;
}
//===========================================================================
//function : VEInterferences
//purpose  : 
//===========================================================================
  BOPTools_CArray1OfVEInterference&  NMTDS_InterfPool::VEInterferences()
{
  return myVEInterferences;
}
//===========================================================================
//function : VVInterferences
//purpose  : 
//===========================================================================
  BOPTools_CArray1OfVVInterference&  NMTDS_InterfPool::VVInterferences()
{
  return myVVInterferences;
}
////////////////////
//=======================================================================
//function : TypeToInteger
//purpose  : 
//=======================================================================
Standard_Integer TypeToInteger(const NMTDS_InterfType aType)
{
  return (Standard_Integer)aType;
}
