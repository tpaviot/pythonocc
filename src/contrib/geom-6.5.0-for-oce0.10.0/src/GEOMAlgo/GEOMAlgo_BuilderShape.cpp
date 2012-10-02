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

// File:        GEOMAlgo_BuilderShape.cxx
// Created:
// Author:      Peter KURNEV
//
#include <GEOMAlgo_BuilderShape.hxx>
//=======================================================================
//function :
//purpose  :
//=======================================================================
  GEOMAlgo_BuilderShape::GEOMAlgo_BuilderShape()
:
  GEOMAlgo_Algo()
{
  myHasDeleted=Standard_False;
  myHasGenerated=Standard_False;
  myHasModified=Standard_False;
}
//=======================================================================
//function : ~
//purpose  :
//=======================================================================
  GEOMAlgo_BuilderShape::~GEOMAlgo_BuilderShape()
{
}
//=======================================================================
//function : Shape
//purpose  :
//=======================================================================
  const TopoDS_Shape& GEOMAlgo_BuilderShape::Shape() const
{
  return myShape;
}
//
//=======================================================================
//function : Generated
//purpose  :
//=======================================================================
  const TopTools_ListOfShape& GEOMAlgo_BuilderShape::Generated(const TopoDS_Shape& )
{
  myHistShapes.Clear();
  return myHistShapes;
}
//=======================================================================
//function : Modified
//purpose  :
//=======================================================================
  const TopTools_ListOfShape& GEOMAlgo_BuilderShape::Modified(const TopoDS_Shape& )
{
  myHistShapes.Clear();
  return myHistShapes;
}
//=======================================================================
//function : IsDeleted
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_BuilderShape::IsDeleted(const TopoDS_Shape& theS)
{
  Standard_Boolean bRet;
  //
  bRet=!myMapShape.Contains(theS);
  return bRet;
}
//=======================================================================
//function : HasDeleted
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_BuilderShape::HasDeleted()const
{
  return myHasDeleted;
}
//=======================================================================
//function : HasGenerated
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_BuilderShape::HasGenerated()const
{
  return myHasGenerated;
}
//=======================================================================
//function : HasModified
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_BuilderShape::HasModified()const
{
  return myHasModified;
}
//=======================================================================
//function : PrepareHistory
//purpose  :
//=======================================================================
  void GEOMAlgo_BuilderShape::PrepareHistory()
{
  myHistShapes.Clear();
  myMapShape.Clear();
  myHasDeleted=Standard_False;
  myHasGenerated=Standard_False;
  myHasModified=Standard_False;
  //modified by NIZNHY-PKV Thu Dec  7 11:14:15 2006
  myImagesResult.Clear();
  //modified by NIZNHY-PKV Thu Dec  7 11:14:17 2006t
}
//modified by NIZNHY-PKV Thu Dec  7 11:57:00 2006f
//=======================================================================
//function : ImagesResult
//purpose  :
//=======================================================================
  const TopTools_IndexedDataMapOfShapeListOfShape& GEOMAlgo_BuilderShape::ImagesResult()const
{
  return myImagesResult;
}
//modified by NIZNHY-PKV Thu Dec  7 11:57:04 2006t
