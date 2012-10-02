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

// File:        NMTDS_InterfPool.cxx
// Author:      Peter KURNEV

#include <NMTDS_InterfPool.hxx>

#include <NMTDS_PairBoolean.hxx>
#include <NMTDS_ListOfPairBoolean.hxx>
#include <NMTDS_MapIteratorOfMapOfPairBoolean.hxx>
#include <NMTDS_ListIteratorOfListOfPairBoolean.hxx>

#include <Basics_OCCTVersion.hxx>

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
Standard_Boolean NMTDS_InterfPool::Add (const NMTDS_PairBoolean& aPKB,
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
  NMTDS_PairBoolean aPKB;
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
  NMTDS_PairBoolean aPKB;
  //
  aPKB.SetIds(aInd1, aInd2);
  aPKB.SetFlag(bFlag);
  return Add(aPKB, aType);
}
//=======================================================================
//function : Contains 
//purpose  : 
//=======================================================================
Standard_Boolean NMTDS_InterfPool::Contains(const NMTDS_PairBoolean& aPKB)const
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
  NMTDS_PairBoolean aPKB;
  //
  aPKB.SetIds(aInd1, aInd2);
  return Contains(aPKB);
}
//=======================================================================
//function :  Get
//purpose  : 
//=======================================================================
const NMTDS_ListOfPairBoolean& NMTDS_InterfPool::Get()const
{
  Standard_Integer i;
  NMTDS_ListOfPairBoolean* pL;
  //
  pL=(NMTDS_ListOfPairBoolean*)&myList;
  pL->Clear();
  //
  for (i=0; i<myMaxInd; ++i) {
    NMTDS_MapIteratorOfMapOfPairBoolean aIt;
    //
    aIt.Initialize(myTable[i]);
    for(; aIt.More(); aIt.Next()) {
      const NMTDS_PairBoolean& aPKB=aIt.Key();
      pL->Append(aPKB);
    }
  }
  return myList;
}
//=======================================================================
//function :  Get
//purpose  : 
//=======================================================================
const NMTDS_ListOfPairBoolean& NMTDS_InterfPool::Get
  (const Standard_Integer aInd)const
{
  Standard_Integer i, n1, n2;
  NMTDS_ListOfPairBoolean* pL;
  //
  pL=(NMTDS_ListOfPairBoolean*)&myList;
  pL->Clear();
  //
  for (i=0; i<myMaxInd; ++i) {
    NMTDS_MapIteratorOfMapOfPairBoolean aIt;
    //
    aIt.Initialize(myTable[i]);
    for(; aIt.More(); aIt.Next()) {
      const NMTDS_PairBoolean& aPKB=aIt.Key();
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
const NMTDS_ListOfPairBoolean& NMTDS_InterfPool::Get
  (const NMTDS_InterfType aType)const
{
  Standard_Integer iType;
  NMTDS_ListOfPairBoolean* pL;
  //
  pL=(NMTDS_ListOfPairBoolean*)&myList;
  pL->Clear();
  //
  iType=TypeToInteger(aType);
  if (iType>-1 && iType<myMaxInd) {
    NMTDS_MapIteratorOfMapOfPairBoolean aIt;
    //
    aIt.Initialize(myTable[iType]);
    for(; aIt.More(); aIt.Next()) {
      const NMTDS_PairBoolean& aPKB=aIt.Key();
      pL->Append(aPKB);
    }
  }
  return myList;
}
//=======================================================================
//function :  Get
//purpose  : 
//=======================================================================
const NMTDS_ListOfPairBoolean& NMTDS_InterfPool::Get
  (const Standard_Integer aInd,
   const NMTDS_InterfType aType)const
{
  Standard_Integer n1, n2;
  NMTDS_ListOfPairBoolean *pL, aLPKB;
  NMTDS_ListIteratorOfListOfPairBoolean aIt;
  //
  aLPKB=Get(aType);
  //
  pL=(NMTDS_ListOfPairBoolean*)&myList;
  pL->Clear();
  //
  aIt.Initialize (aLPKB);
  for (; aIt.More(); aIt.Next()) {
    const NMTDS_PairBoolean& aPKB=aIt.Value();
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

//modified by NIZNHY-PKV Mon Dec 12 09:07:54 2011f
//=======================================================================
//function : Purge
//purpose  : 
//=======================================================================
void NMTDS_InterfPool::Purge()
{
#if OCC_VERSION_LARGE > 0x06050200
  myVVInterferences.Purge();
  myVEInterferences.Purge();
  myEEInterferences.Purge();
  myVSInterferences.Purge();
  myESInterferences.Purge();
  mySSInterferences.Purge();
#endif
}
//modified by NIZNHY-PKV Mon Dec 12 09:07:58 2011t

//=======================================================================
//function : TypeToInteger
//purpose  : 
//=======================================================================
Standard_Integer TypeToInteger(const NMTDS_InterfType aType)
{
  return (Standard_Integer)aType;
}
