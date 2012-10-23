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

// File:        GEOMAlgo_ShapeSet.cxx
// Created:
// Author:      Peter KURNEV
//
#include <GEOMAlgo_ShapeSet.hxx>

#include <TopExp_Explorer.hxx>

#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfOrientedShape.hxx>

//=======================================================================
//function :
//purpose  :
//=======================================================================
  GEOMAlgo_ShapeSet::GEOMAlgo_ShapeSet()
{
}
//=======================================================================
//function : Clear
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeSet::Clear()
{
  myMap.Clear();
  myList.Clear();
}
//=======================================================================
//function : Add
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeSet::Add(const TopoDS_Shape& theShape)
{
  if (myMap.Add(theShape)) {
    myList.Append(theShape);
  }
}
//=======================================================================
//function : Add
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeSet::Add(const TopoDS_Shape& theShape,
                              const TopAbs_ShapeEnum theType)
{
  TopExp_Explorer aExp;
  //
  aExp.Init(theShape, theType);
  for (; aExp.More(); aExp.Next()) {
    const TopoDS_Shape& aS=aExp.Current();
    if (myMap.Add(aS)) {
      myList.Append(aS);
    }
  }
}
//=======================================================================
//function : Add
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeSet::Add(const TopTools_ListOfShape& theLS)
{
  TopTools_ListIteratorOfListOfShape aIt;
  //
  aIt.Initialize(theLS);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    if (myMap.Add(aS)) {
      myList.Append(aS);
    }
  }
}
//=======================================================================
//function :GetSet
//purpose  :
//=======================================================================
  const TopTools_ListOfShape& GEOMAlgo_ShapeSet::GetSet()const
{
  return myList;
}
//=======================================================================
//function : Contains
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_ShapeSet::Contains(const GEOMAlgo_ShapeSet& theOther)const
{
  Standard_Boolean bRet;
  TopAbs_Orientation aOr;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  bRet=Standard_True;
  const TopTools_ListOfShape& aLS=theOther.GetSet();
  aIt.Initialize(aLS);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aF=aIt.Value();
    aOr=aF.Orientation();
    if (aOr==TopAbs_FORWARD || aOr==TopAbs_REVERSED) {
      bRet=myMap.Contains(aF);
      if (!bRet) {
        break;
      }
    }
  }
  return bRet;
}
//=======================================================================
//function : Subtract
//purpose  :
//=======================================================================
  void GEOMAlgo_ShapeSet::Subtract(const GEOMAlgo_ShapeSet& theOther)
{
  TopTools_ListIteratorOfListOfShape aIt;
  TopTools_ListOfShape aLS;
  //
  myMap.Clear();
  aIt.Initialize(myList);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    if (!theOther.myMap.Contains(aS)) {
      if(myMap.Add(aS)){
        aLS.Append(aS);
      }
    }
  }
  //
  myList=aLS;
}
//modified by NIZNHY-PKV Wed Oct 28 13:51:36 2010f
//=======================================================================
//function : IsEqual
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_ShapeSet::IsEqual(const GEOMAlgo_ShapeSet& theOther)const
{
  Standard_Boolean bRet;
  Standard_Integer aNb1, aNb2;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  bRet=Standard_True;
  aNb1=myList.Extent();
  const TopTools_ListOfShape& aLS2=theOther.GetSet();
  aNb2=aLS2.Extent();
  if (aNb1!=aNb2) {
    return !bRet;
  }
  //
  aIt.Initialize(myList);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    if(!theOther.myMap.Contains(aS)) {
      bRet=!bRet;
      break;
    }
  }
  return bRet;
}
//modified by NIZNHY-PKV Wed Oct 28 13:51:38 2010t
