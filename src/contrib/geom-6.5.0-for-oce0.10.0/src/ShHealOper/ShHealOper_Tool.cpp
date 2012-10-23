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

// File:      ShHealOper_Tool.cxx
// Created:   26.04.04 12:11:33
// Author:    Galina KULIKOVA
//
#include <ShHealOper_Tool.hxx>

//=======================================================================
//function : ShHealOper_Tool()
//purpose  : Constructor
//=======================================================================

ShHealOper_Tool::ShHealOper_Tool (  )
{
  myContext = new ShapeBuild_ReShape;
  myDone = Standard_False;
  myErrorStatus =ShHealOper_NotError;
}
//=======================================================================
//function : ShHealOper_Tool
//purpose  : 
//=======================================================================

ShHealOper_Tool::ShHealOper_Tool ( const TopoDS_Shape& theShape )
{
  
  myContext = new ShapeBuild_ReShape;
  Init(theShape);
}
//=======================================================================
//function : Init
//purpose  : 
//=======================================================================

void ShHealOper_Tool::Init(const TopoDS_Shape& theShape)
{
  myDone = Standard_False;
  myErrorStatus =ShHealOper_NotError;
  myInitShape = theShape;
  myContext->Apply(myInitShape);
}
