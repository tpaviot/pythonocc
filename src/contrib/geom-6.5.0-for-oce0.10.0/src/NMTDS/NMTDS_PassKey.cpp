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

// File:        NMTDS_PassKey.cxx
// Created:     
// Author:      Peter KURNEV
//              <peter@PREFEX>
//
#include <NMTDS_PassKey.hxx>

#include <stdio.h>
#include <string.h>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>

#ifdef WNT
#pragma warning( disable : 4101) 
#endif

static
  Standard_Integer NormalizedId(const Standard_Integer aId,
                                const Standard_Integer aDiv);

//=======================================================================
//function :
//purpose  : 
//=======================================================================
  NMTDS_PassKey::NMTDS_PassKey()
{
 Clear(); 
}
//=======================================================================
//function :
//purpose  : 
//=======================================================================
  NMTDS_PassKey::NMTDS_PassKey(const NMTDS_PassKey& aOther)
{
  myNbIds=aOther.myNbIds;
  mySum=aOther.mySum;
  myMap=aOther.myMap;
}
//=======================================================================
//function :operator =
//purpose  : 
//=======================================================================
  NMTDS_PassKey& NMTDS_PassKey::operator =(const NMTDS_PassKey& aOther)
{
  myNbIds=aOther.myNbIds;
  mySum=aOther.mySum;
  myMap=aOther.myMap;
  return *this;
}
//=======================================================================
//function :~
//purpose  : 
//=======================================================================
  NMTDS_PassKey::~NMTDS_PassKey()
{
}
//=======================================================================
//function :Clear
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::Clear()
{
  myNbIds=0;
  mySum=0;
  myMap.Clear();
}
//=======================================================================
//function :SetIds
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::SetIds(const Standard_Integer aId1)
                               
{
  Clear();
  myNbIds=1;
  myMap.Add(aId1);
  mySum=NormalizedId(aId1, myNbIds);
}
//=======================================================================
//function :SetIds
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::SetIds(const Standard_Integer aId1,
                             const Standard_Integer aId2)
{
  TColStd_ListOfInteger aLI;
  //
  aLI.Append(aId1);
  aLI.Append(aId2);
  SetIds(aLI);
}
//=======================================================================
//function :SetIds
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::SetIds(const Standard_Integer aId1,
                             const Standard_Integer aId2,
                             const Standard_Integer aId3)
{
  TColStd_ListOfInteger aLI;
  //
  aLI.Append(aId1);
  aLI.Append(aId2);
  aLI.Append(aId3);
  SetIds(aLI);
}
//=======================================================================
//function :SetIds
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::SetIds(const Standard_Integer aId1,
                             const Standard_Integer aId2,
                             const Standard_Integer aId3,
                             const Standard_Integer aId4)
{ 
  TColStd_ListOfInteger aLI;
  //
  aLI.Append(aId1);
  aLI.Append(aId2);
  aLI.Append(aId3);
  aLI.Append(aId4);
  SetIds(aLI);
}
//=======================================================================
//function :SetIds
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::SetIds(const TColStd_ListOfInteger& aLI)
{
  Standard_Integer i, aId, aIdN;
  TColStd_ListIteratorOfListOfInteger aIt;
  //
  Clear();
  aIt.Initialize(aLI);
  for (; aIt.More(); aIt.Next()) {
    aId=aIt.Value();
    myMap.Add(aId);
  }
  myNbIds=myMap.Extent();
  for(i=1; i<=myNbIds; ++i) {
    aId=myMap(i);
    aIdN=NormalizedId(aId, myNbIds);
    mySum+=aIdN;
  }
}

//=======================================================================
//function :NbIds
//purpose  : 
//=======================================================================
  Standard_Integer NMTDS_PassKey::NbIds()const
{
  return myNbIds;
}
//=======================================================================
//function :Id
//purpose  : 
//=======================================================================
  Standard_Integer NMTDS_PassKey::Id(const Standard_Integer aIndex) const
{
  if (aIndex<1 || aIndex>myNbIds) {
    return -1;
  }
  return myMap(aIndex);
}
//=======================================================================
//function :Ids
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::Ids(Standard_Integer& aId1,
                          Standard_Integer& aId2) const
{
  aId1=0;
  aId2=0;
  if (myNbIds>1) {
    aId1=myMap(1);
    aId2=myMap(2);
  }
}
//=======================================================================
//function :IsEqual
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_PassKey::IsEqual(const NMTDS_PassKey& aOther) const
{
  Standard_Boolean bRet;
  Standard_Integer i, aId;
  //
  bRet=Standard_False;
  //
  if (myNbIds!=aOther.myNbIds) {
    return bRet;
  }
  for (i=1; i<=myNbIds; ++i) {
    aId=myMap(i);
    if (!aOther.myMap.Contains(aId)) {
      return bRet;
    }
  }
  return !bRet;
}
//=======================================================================
//function : HashCode
//purpose  : 
//=======================================================================
  Standard_Integer NMTDS_PassKey::HashCode(const Standard_Integer aUpper) const
{
  return ::HashCode(mySum, aUpper);
}
//=======================================================================
//function : Dump
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::Dump(const Standard_Integer )const
{
}

//=======================================================================
// function: NormalizedId
// purpose : 
//=======================================================================
Standard_Integer NormalizedId(const Standard_Integer aId,
                              const Standard_Integer aDiv)
{
  Standard_Integer aMax, aTresh, aIdRet;
  //
  aIdRet=aId;
  aMax=::IntegerLast();
  aTresh=aMax/aDiv;
  if (aId>aTresh) {
    aIdRet=aId%aTresh;
  }
  return aIdRet;
}
/*
//=========
//=======================================================================
//function : Contains
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_PassKey::Contains(const Standard_Integer aId) const
{
  return myMap.Contains(aId);
}
//=======================================================================
//function :Contains
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_PassKey::Contains(const NMTDS_PassKey& aOther) const
{
  Standard_Boolean bRet;
  Standard_Integer i, aId;
  //
  bRet=Standard_False;
  //
  if (myNbIds<aOther.myNbIds) {
    return bRet;
  }
  for (i=1; i<=aOther.myNbIds; ++i) {
    aId=aOther.myMap(i);
    if (!myMap.Contains(aId)) {
      return bRet;
    }
  }
  return !bRet;
}
//=======================================================================
//function :Intersected
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_PassKey::Intersected(const NMTDS_PassKey& aOther) const
{
  Standard_Boolean bRet;
  Standard_Integer i, aId;
  //
  bRet=Standard_False;
  //
  for (i=1; i<=myNbIds; ++i) {
    aId=myMap(i);
    if (aOther.Contains(aId)) {
      return !bRet;
    }
  }
  return bRet;
}
//=======================================================================
//function : Add
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::Add(const Standard_Integer aId)
{
  TColStd_ListOfInteger aLI;
  aLI.Append(aId);
  //
  Add(aLI);
}
//=======================================================================
//function : Add
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::Add(const NMTDS_PassKey& aOther) 
{
  Standard_Integer i, aId;
  TColStd_ListOfInteger aLS;
  //
  for(i=1; i<=myNbIds; ++i) {
    aId=myMap(i);
    aLS.Append(aId);
  }
  for(i=1; i<=aOther.myNbIds; ++i) {
    aId=aOther.myMap(i);
    aLS.Append(aId);
  }
  //
  Add(aLS);
}
//=======================================================================
//function : Add
//purpose  : 
//=======================================================================
  void NMTDS_PassKey::Add(const TColStd_ListOfInteger& aLI)
{
  Standard_Integer i, aId;
  TColStd_ListOfInteger aLS;
  TColStd_ListIteratorOfListOfInteger aIt;
  //
  for(i=1; i<=myNbIds; ++i) {
    aId=myMap(i);
    aLS.Append(aId);
  }
  aIt.Initialize(aLI);
  for (; aIt.More(); aIt.Next()) {
    aId=aIt.Value();
    aLS.Append(aId);
  }
  //
  SetIds(aLS);
}
//=========
*/
