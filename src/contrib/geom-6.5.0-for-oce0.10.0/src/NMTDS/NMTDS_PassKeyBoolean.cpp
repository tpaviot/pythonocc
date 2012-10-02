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

// File:        NMTDS_PassKeyBoolean.cxx
// Created:     Mon May 15 14:31:05 2006
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <NMTDS_PassKeyBoolean.hxx>

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  NMTDS_PassKeyBoolean::NMTDS_PassKeyBoolean()
:
  myFlag(Standard_False),
  NMTDS_PassKey()
{
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
  NMTDS_PassKeyBoolean::~NMTDS_PassKeyBoolean()
{
}
//=======================================================================
//function :operator =
//purpose  : 
//=======================================================================
  NMTDS_PassKeyBoolean& NMTDS_PassKeyBoolean::operator =(const NMTDS_PassKeyBoolean& anOther)
{
  myFlag=anOther.myFlag;
  NMTDS_PassKey::operator =(anOther);
  return *this;
}
//=======================================================================
//function :SetFlag
//purpose  : 
//=======================================================================
  void NMTDS_PassKeyBoolean::SetFlag(const Standard_Boolean aFlag)
{
  myFlag=aFlag;
}
//=======================================================================
//function :Flag
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_PassKeyBoolean::Flag()const
{
  return myFlag;
}
