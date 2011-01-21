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
// File:	GEOMAlgo_Algo.cxx
// Created:	Sat Dec 04 12:39:47 2004
// Author:	Peter KURNEV
//		<peter@PREFEX>
//
#include <GEOMAlgo_PassKey.ixx>

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
  GEOMAlgo_PassKey::GEOMAlgo_PassKey()
{
 Clear(); 
}
//=======================================================================
//function :
//purpose  : 
//=======================================================================
  GEOMAlgo_PassKey::GEOMAlgo_PassKey(const GEOMAlgo_PassKey& aOther)
{
  myNbIds=aOther.myNbIds;
  mySum=aOther.mySum;
  myMap=aOther.myMap;
}
//=======================================================================
//function :Assign
//purpose  : 
//=======================================================================
  GEOMAlgo_PassKey& GEOMAlgo_PassKey::Assign(const GEOMAlgo_PassKey& aOther)
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
  GEOMAlgo_PassKey::~GEOMAlgo_PassKey()
{
}
//=======================================================================
//function :Clear
//purpose  : 
//=======================================================================
  void GEOMAlgo_PassKey::Clear()
{
  myNbIds=0;
  mySum=0;
  myMap.Clear();
}
//=======================================================================
//function :SetIds
//purpose  : 
//=======================================================================
  void GEOMAlgo_PassKey::SetIds(const Standard_Integer aId1)
			       
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
  void GEOMAlgo_PassKey::SetIds(const Standard_Integer aId1,
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
  void GEOMAlgo_PassKey::SetIds(const Standard_Integer aId1,
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
  void GEOMAlgo_PassKey::SetIds(const Standard_Integer aId1,
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
  void GEOMAlgo_PassKey::SetIds(const TColStd_ListOfInteger& aLI)
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
  Standard_Integer GEOMAlgo_PassKey::NbIds()const
{
  return myNbIds;
}
//=======================================================================
//function :Id
//purpose  : 
//=======================================================================
  Standard_Integer GEOMAlgo_PassKey::Id(const Standard_Integer aIndex) const
{
  if (aIndex<1 || aIndex>myNbIds) {
    return -1;
  }
  return myMap(aIndex);
}
//=======================================================================
//function :IsEqual
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_PassKey::IsEqual(const GEOMAlgo_PassKey& aOther) const
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
  Standard_Integer GEOMAlgo_PassKey::HashCode(const Standard_Integer aUpper) const
{
  return ::HashCode(mySum, aUpper);
}
//=======================================================================
//function : Dump
//purpose  : 
//=======================================================================
  void GEOMAlgo_PassKey::Dump(const Standard_Integer )const
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
