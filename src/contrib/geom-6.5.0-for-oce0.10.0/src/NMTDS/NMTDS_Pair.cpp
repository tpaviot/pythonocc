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

// File:        NMTDS_Pair.cxx
// Author:      Peter KURNEV

#include <NMTDS_Pair.hxx>

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
NMTDS_Pair::NMTDS_Pair()
{
  Clear(); 
}
//=======================================================================
//function :
//purpose  : 
//=======================================================================
NMTDS_Pair::NMTDS_Pair(const NMTDS_Pair& aOther)
{
  myId1=aOther.myId1;
  myId2=aOther.myId2;
}
//=======================================================================
//function :operator =
//purpose  : 
//=======================================================================
  NMTDS_Pair& NMTDS_Pair::operator =(const NMTDS_Pair& aOther)
{
  myId1=aOther.myId1;
  myId2=aOther.myId2;
  return *this;
}
//=======================================================================
//function :~
//purpose  : 
//=======================================================================
  NMTDS_Pair::~NMTDS_Pair()
{
}
//=======================================================================
//function :Clear
//purpose  : 
//=======================================================================
  void NMTDS_Pair::Clear()
{
  myId1=0;
  myId2=0;
}
//=======================================================================
//function :SetIds
//purpose  : 
//=======================================================================
  void NMTDS_Pair::SetIds(const Standard_Integer aId1,
			  const Standard_Integer aId2)
{
  Clear();
  myId1=aId1;
  myId2=aId2;
  if (aId1>aId2) {
    myId1=aId2;
    myId2=aId1;
  }
}
//=======================================================================
//function :Ids
//purpose  : 
//=======================================================================
  void NMTDS_Pair::Ids(Standard_Integer& aId1,
		       Standard_Integer& aId2) const
{
  aId1=myId1;
  aId2=myId2;
}
//=======================================================================
//function :IsEqual
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_Pair::IsEqual(const NMTDS_Pair& aOther) const
{
 
  Standard_Boolean bRet;
  //
  bRet=(myId1==aOther.myId1 && myId2==aOther.myId2);//ZZ
  return bRet;
}
//=======================================================================
//function : HashCode
//purpose  : 
//=======================================================================
  Standard_Integer NMTDS_Pair::HashCode(const Standard_Integer aUpper) const
{
  Standard_Integer aSum;
  //
  aSum=0;
  aSum+=NormalizedId(myId1, 2);
  aSum+=NormalizedId(myId2, 2);
  return ::HashCode(aSum, aUpper);
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
