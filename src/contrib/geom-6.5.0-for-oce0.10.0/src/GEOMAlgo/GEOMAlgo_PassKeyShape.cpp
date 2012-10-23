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

// File:        GEOMAlgo_PassKeyShape.cxx
// Created:
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <GEOMAlgo_PassKeyShape.hxx>

#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>


static
  Standard_Integer NormalizedId(const Standard_Integer aId,
                                const Standard_Integer aDiv);
//=======================================================================
//function :
//purpose  :
//=======================================================================
  GEOMAlgo_PassKeyShape::GEOMAlgo_PassKeyShape()
{
  myUpper=432123;
}
//=======================================================================
//function :
//purpose  :
//=======================================================================
  GEOMAlgo_PassKeyShape::GEOMAlgo_PassKeyShape(const GEOMAlgo_PassKeyShape& aOther)
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
  GEOMAlgo_PassKeyShape::~GEOMAlgo_PassKeyShape()
{
}
//=======================================================================
//function :Assign
//purpose  :
//=======================================================================
  GEOMAlgo_PassKeyShape& GEOMAlgo_PassKeyShape::Assign(const GEOMAlgo_PassKeyShape& aOther)
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
  void GEOMAlgo_PassKeyShape::Clear()
{
  myNbIds=0;
  mySum=0;
  myMap.Clear();
}
//=======================================================================
//function :SetShapes
//purpose  :
//=======================================================================
  void GEOMAlgo_PassKeyShape::SetShapes(const TopoDS_Shape& aS1)

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
  void GEOMAlgo_PassKeyShape::SetShapes(const TopoDS_Shape& aS1,
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
  void GEOMAlgo_PassKeyShape::SetShapes(const TopoDS_Shape& aS1,
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
  void GEOMAlgo_PassKeyShape::SetShapes(const TopoDS_Shape& aS1,
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
  void GEOMAlgo_PassKeyShape::SetShapes(const TopTools_ListOfShape& aLS)
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
  Standard_Integer GEOMAlgo_PassKeyShape::NbIds()const
{
  return myNbIds;
}
//=======================================================================
//function :IsEqual
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_PassKeyShape::IsEqual(const GEOMAlgo_PassKeyShape& aOther) const
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
  Standard_Integer GEOMAlgo_PassKeyShape::HashCode(const Standard_Integer aUpper) const
{
  return ::HashCode(mySum, aUpper);
}
//=======================================================================
//function : Dump
//purpose  :
//=======================================================================
  void GEOMAlgo_PassKeyShape::Dump(const Standard_Integer)const
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
