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
// File:	GEOMAlgo_Gluer2_2.cxx
// Created:
// Author:	Peter KURNEV
//		<peter@PREFEX>
//
#include <GEOMAlgo_Gluer2.hxx>

#include <TopAbs_ShapeEnum.hxx>

#include <TopoDS_Iterator.hxx>
#include <TopoDS_Shape.hxx>

#include <GEOMAlgo_BuilderShape.hxx>
#include <GEOMAlgo_Tools3D.hxx>

//=======================================================================
//function : PrepareHistory
//purpose  :
//=======================================================================
void GEOMAlgo_Gluer2::PrepareHistory()
{
  //Standard_Boolean bHasImage, bContainsSD;
  //
  // 1. Clearing
  GEOMAlgo_BuilderShape::PrepareHistory();
  //
  if(myShape.IsNull()) {
    return;
  }
  //
  GEOMAlgo_Gluer2::MapShapes(myShape, myMapShape);
  //
}
//=======================================================================
//function : Generated
//purpose  :
//=======================================================================
const TopTools_ListOfShape& GEOMAlgo_Gluer2::Generated(const TopoDS_Shape& )
{
  myHistShapes.Clear();
  return myHistShapes;
}
//=======================================================================
//function : Modified
//purpose  :
//=======================================================================
const TopTools_ListOfShape& GEOMAlgo_Gluer2::Modified(const TopoDS_Shape& theS)
{
  Standard_Boolean bIsDeleted, bHasImage, bToReverse;
  TopAbs_ShapeEnum aType;
  TopoDS_Shape aSim;
  //
  myHistShapes.Clear();
  //
  aType=theS.ShapeType();
  if (!(aType==TopAbs_VERTEX || aType==TopAbs_EDGE ||
	aType==TopAbs_FACE || aType==TopAbs_SOLID)) {
    return myHistShapes;
  }
  //
  bIsDeleted=IsDeleted(theS);
  if (bIsDeleted) {
    return myHistShapes;
  }
  //
  bHasImage=myOrigins.IsBound(theS);
  if (!bHasImage) {
    return myHistShapes;
  }
  //
  aSim=myOrigins.Find(theS);
  if (aSim.IsSame(theS)){
    return myHistShapes;
  }
  //
  if (aType==TopAbs_VERTEX || aType==TopAbs_SOLID) {
    aSim.Orientation(theS.Orientation());
  }
  else {
    bToReverse=GEOMAlgo_Tools3D::IsSplitToReverse(aSim, theS, myContext);
    if (bToReverse) {
      aSim.Reverse();
    }
  }
  //
  myHistShapes.Append(aSim);
  //
  return myHistShapes;
}
//=======================================================================
//function : IsDeleted
//purpose  :
//=======================================================================
Standard_Boolean GEOMAlgo_Gluer2::IsDeleted(const TopoDS_Shape& theS)
{
  Standard_Boolean bRet, bContains, bHasImage;
  //
  bRet=Standard_False;
  //
  if (theS.IsNull()) {
    return !bRet; //true
  }
  //
  bContains=myMapShape.Contains(theS);
  if (bContains) {
    return bRet; //false
  }
  //
  bHasImage=myOrigins.IsBound(theS);
  if (bHasImage) {
    const TopoDS_Shape& aSim=myOrigins.Find(theS);
    bContains=myMapShape.Contains(aSim);
    if (bContains) {
      return bRet; //false
    }
  }
  //
  return !bRet; //true
}
//=======================================================================
//function : MapShapes
//purpose  :
//=======================================================================
void GEOMAlgo_Gluer2::MapShapes(const TopoDS_Shape& theS,
				TopTools_MapOfShape& theM)
{
  TopoDS_Iterator aIt;
  //
  theM.Add(theS);
  aIt.Initialize(theS);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aSx=aIt.Value();
    GEOMAlgo_Gluer2::MapShapes(aSx, theM);
  }
}
