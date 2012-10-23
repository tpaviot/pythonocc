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

// File:        NMTDS_PassKeyShape.cxx
// Created:     
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <NMTDS_PassKeyShape.hxx>

#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopoDS_Shape.hxx>


static 
  Standard_Integer NormalizedId(const Standard_Integer aId,
                                const Standard_Integer aDiv);
//=======================================================================
//function :
//purpose  : 
//=======================================================================
  NMTDS_PassKeyShape::NMTDS_PassKeyShape()
{
  myUpper=432123;
}
//=======================================================================
//function :
//purpose  : 
//=======================================================================
  NMTDS_PassKeyShape::NMTDS_PassKeyShape(const NMTDS_PassKeyShape& aOther)
{
  myUpper=432123;
  myNbIds=aOther.myNbIds;
  mySum=aOther.mySum;
  myMap=aOther.myMap;
}
//=======================================================================
//function :~
//purpose  : 
//=======================================================================
  NMTDS_PassKeyShape::~NMTDS_PassKeyShape()
{
}
//=======================================================================
//function :Assign
//purpose  : 
//=======================================================================
  NMTDS_PassKeyShape& NMTDS_PassKeyShape::Assign(const NMTDS_PassKeyShape& aOther)
{
  myUpper=432123;
  myNbIds=aOther.myNbIds;
  mySum=aOther.mySum;
  myMap=aOther.myMap;
  return *this;
}
//=======================================================================
//function :Clear
//purpose  : 
//=======================================================================
  void NMTDS_PassKeyShape::Clear()
{
  myNbIds=0;
  mySum=0;
  myMap.Clear();
}
//=======================================================================
//function :SetShapes
//purpose  : 
//=======================================================================
  void NMTDS_PassKeyShape::SetShapes(const TopoDS_Shape& aS1)
                               
{
  Standard_Integer aHC;
  //
  Clear();
  myNbIds=1;
  myMap.Add(aS1);
  aHC=aS1.HashCode(myUpper);
  mySum=NormalizedId(aHC, myNbIds);
}
//=======================================================================
//function :SetShapes
//purpose  : 
//=======================================================================
  void NMTDS_PassKeyShape::SetShapes(const TopoDS_Shape& aS1,
                                        const TopoDS_Shape& aS2)
{
  TopTools_ListOfShape aLS;
  //
  aLS.Append(aS1);
  aLS.Append(aS2);
  SetShapes(aLS);
}
//=======================================================================
//function :SetShapes
//purpose  : 
//=======================================================================
  void NMTDS_PassKeyShape::SetShapes(const TopoDS_Shape& aS1,
                                        const TopoDS_Shape& aS2,
                                        const TopoDS_Shape& aS3)
{
  TopTools_ListOfShape aLS;
  //
  aLS.Append(aS1);
  aLS.Append(aS2);
  aLS.Append(aS3);
  SetShapes(aLS);
}
//=======================================================================
//function :SetShapes
//purpose  : 
//=======================================================================
  void NMTDS_PassKeyShape::SetShapes(const TopoDS_Shape& aS1,
                                        const TopoDS_Shape& aS2,
                                        const TopoDS_Shape& aS3,
                                        const TopoDS_Shape& aS4)
{
  TopTools_ListOfShape aLS;
  //
  aLS.Append(aS1);
  aLS.Append(aS2);
  aLS.Append(aS3);
  aLS.Append(aS4);
  SetShapes(aLS);
}
//=======================================================================
//function :SetShapes
//purpose  : 
//=======================================================================
  void NMTDS_PassKeyShape::SetShapes(const TopTools_ListOfShape& aLS)
{
  Standard_Integer i, aId, aIdN;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  Clear();
  aIt.Initialize(aLS);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    myMap.Add(aS);
  }
  myNbIds=myMap.Extent();
  for(i=1; i<=myNbIds; ++i) {
    const TopoDS_Shape& aS=myMap(i);
    aId=aS.HashCode(myUpper);
    aIdN=NormalizedId(aId, myNbIds);
    mySum+=aIdN;
  }
}
//=======================================================================
//function :NbIds
//purpose  : 
//=======================================================================
  Standard_Integer NMTDS_PassKeyShape::NbIds()const
{
  return myNbIds;
}
//=======================================================================
//function :IsEqual
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_PassKeyShape::IsEqual(const NMTDS_PassKeyShape& aOther) const
{
  Standard_Boolean bRet;
  Standard_Integer i;
  //
  bRet=Standard_False;
  //
  if (myNbIds!=aOther.myNbIds) {
    return bRet;
  }
  for (i=1; i<=myNbIds; ++i) {
    const TopoDS_Shape& aS=myMap(i);
    if (!aOther.myMap.Contains(aS)) {
      return bRet;
    }
  }
  return !bRet;
}
//=======================================================================
//function : HashCode
//purpose  : 
//=======================================================================
  Standard_Integer NMTDS_PassKeyShape::HashCode(const Standard_Integer aUpper) const
{
  return ::HashCode(mySum, aUpper);
}
//=======================================================================
//function : Dump
//purpose  : 
//=======================================================================
  void NMTDS_PassKeyShape::Dump(const Standard_Integer)const
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
