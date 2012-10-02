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
// File:        GEOMAlgo_CoupleOfShapes.cxx
// Created:     Wed Dec 15 13:03:52 2004
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <GEOMAlgo_CoupleOfShapes.hxx>
//=======================================================================
//function : GEOMAlgo_CoupleOfShapes
//purpose  :
//=======================================================================
GEOMAlgo_CoupleOfShapes::GEOMAlgo_CoupleOfShapes()
{}
//=======================================================================
//function : SetShapes
//purpose  :
//=======================================================================
void GEOMAlgo_CoupleOfShapes::SetShapes(const TopoDS_Shape& aS1,
                                        const TopoDS_Shape& aS2)
{
  myShape1=aS1;
  myShape2=aS2;
}
//=======================================================================
//function : Shapes
//purpose  :
//=======================================================================
void GEOMAlgo_CoupleOfShapes::Shapes(TopoDS_Shape& aS1,
                                     TopoDS_Shape& aS2)const
{
  aS1=myShape1;
  aS2=myShape2;
}
//=======================================================================
//function : SetShape1
//purpose  :
//=======================================================================
void GEOMAlgo_CoupleOfShapes::SetShape1(const TopoDS_Shape& aS1)
{
  myShape1=aS1;
}
//=======================================================================
//function : SetShape2
//purpose  :
//=======================================================================
void GEOMAlgo_CoupleOfShapes::SetShape2(const TopoDS_Shape& aS2)
{
  myShape2=aS2;
}
//=======================================================================
//function : Shape1
//purpose  :
//=======================================================================
const TopoDS_Shape& GEOMAlgo_CoupleOfShapes::Shape1()const
{
  return myShape1;
}
//=======================================================================
//function : Shape2
//purpose  :
//=======================================================================
const TopoDS_Shape& GEOMAlgo_CoupleOfShapes::Shape2()const
{
  return myShape2;
}
