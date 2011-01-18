// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
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
//
// File:      ShHealOper_ChangeOrientation.cxx
// Created:   11.07.06 11:46:45
// Author:    Sergey KUUL


#include <ShHealOper_ChangeOrientation.hxx>

#include <BRep_Builder.hxx>
#include <TopoDS_Iterator.hxx>

//=======================================================================
//function : ShHealOper_ChangeOrientation()
//purpose  : Constructor
//=======================================================================

ShHealOper_ChangeOrientation::ShHealOper_ChangeOrientation ( const TopoDS_Shape& theShape )
{
  Init(theShape);
}

//=======================================================================
//function : Init
//purpose  : 
//=======================================================================

void ShHealOper_ChangeOrientation::Init(const TopoDS_Shape& theShape)
{
  ShHealOper_Tool::Init(theShape);
}

//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_ChangeOrientation::Perform()
{
  BRep_Builder B;
  if (myInitShape.ShapeType() == TopAbs_SHELL) {
    myResultShape = myInitShape.EmptyCopied();
    TopoDS_Iterator itr(myInitShape);
    while (itr.More()) {
      B.Add(myResultShape,itr.Value().Reversed());
      itr.Next();
    }
  }
  else if (myInitShape.ShapeType() == TopAbs_FACE) {
    myResultShape = myInitShape.EmptyCopied();
    TopoDS_Iterator itr(myInitShape);
    while (itr.More()) {
      B.Add(myResultShape,itr.Value());
      itr.Next();
    }
    myResultShape.Reverse();
  }
  else if (myInitShape.ShapeType() == TopAbs_WIRE) {
    myResultShape = myInitShape.Reversed();
  }
  else if (myInitShape.ShapeType() == TopAbs_EDGE) {
    myResultShape = myInitShape.Reversed();
  }
  else {
    return false;
  }

  return true;

}
