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
// File:	GEOMAlgo_WireEdgeSet.cxx
// Created:	
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_WireEdgeSet.ixx>

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  GEOMAlgo_WireEdgeSet::GEOMAlgo_WireEdgeSet()
{
  Clear();
}

//=======================================================================
//function : Clear
//purpose  : 
//=======================================================================
  void GEOMAlgo_WireEdgeSet::Clear()
{
  myStartShapes.Clear();
  myShapes.Clear();
}
//=======================================================================
//function : SetFace
//purpose  : 
//=======================================================================
  void GEOMAlgo_WireEdgeSet::SetFace(const TopoDS_Face& aF)
{
  myFace=aF;
}
//=======================================================================
//function : Face
//purpose  : 
//=======================================================================
  const TopoDS_Face& GEOMAlgo_WireEdgeSet::Face()const 
{
  return myFace;
}
//=======================================================================
//function : AddStartElement
//purpose  : 
//=======================================================================
  void GEOMAlgo_WireEdgeSet::AddStartElement(const TopoDS_Shape& aE)
{
  myStartShapes.Append(aE);
}
//=======================================================================
//function : StartElements
//purpose  : 
//=======================================================================
  const  TopTools_ListOfShape& GEOMAlgo_WireEdgeSet::StartElements()const
{
  return myStartShapes;
}
//=======================================================================
//function : AddShape
//purpose  : 
//=======================================================================
  void GEOMAlgo_WireEdgeSet::AddShape(const TopoDS_Shape& aW)
{
  myShapes.Append(aW);
}
//=======================================================================
//function : Shapes
//purpose  : 
//=======================================================================
  const  TopTools_ListOfShape& GEOMAlgo_WireEdgeSet::Shapes()const
{
  return myShapes;
}
