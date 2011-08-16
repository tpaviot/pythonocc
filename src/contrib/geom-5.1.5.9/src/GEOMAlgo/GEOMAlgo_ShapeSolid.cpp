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
// File:	GEOMAlgo_ShapeSolid.cxx
// Created:	Thu Jan 13 12:54:48 2005
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_ShapeSolid.ixx>

#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_ListOfShape.hxx>

//=======================================================================
//function : GEOMAlgo_ShapeSolid
//purpose  : 
//=======================================================================
GEOMAlgo_ShapeSolid::GEOMAlgo_ShapeSolid()
:
  GEOMAlgo_Algo(),
  myRank(0),
  myDSFiller(NULL)
{
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
GEOMAlgo_ShapeSolid::~GEOMAlgo_ShapeSolid()
{
}
//=======================================================================
//function : SetFiller
//purpose  : 
//=======================================================================
void GEOMAlgo_ShapeSolid::SetFiller(const BOPTools_DSFiller& aDSFiller)
{
  myDSFiller=(BOPTools_DSFiller*) &aDSFiller;
}
//=======================================================================
// function: Shapes
// purpose: 
//=======================================================================
const TopTools_ListOfShape& GEOMAlgo_ShapeSolid::Shapes(const TopAbs_State aState) const
{
  const TopTools_ListOfShape *pL;
  //
  switch (aState) {
    case TopAbs_IN:
      pL=&myLSIN;
      break;
    case TopAbs_OUT:
      pL=&myLSOUT;
      break;
    case TopAbs_ON:
      pL=&myLSON;
      break;  
    default:
      pL=&myLSON;
      break; 
  }
  return *pL;
}
