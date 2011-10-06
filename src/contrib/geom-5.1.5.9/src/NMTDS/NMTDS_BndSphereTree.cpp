//  Copyright (C) 2007-2010  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:	NMTDS_BndSphereTree.cxx
// Created:	
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTDS_BndSphereTree.hxx>
//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  NMTDS_BndSphereTreeSelector::NMTDS_BndSphereTreeSelector()
{
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
  NMTDS_BndSphereTreeSelector::~NMTDS_BndSphereTreeSelector()
{
}
//=======================================================================
//function : Reject
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_BndSphereTreeSelector::Reject (const NMTDS_BndSphere& aBox) const
{
  Standard_Boolean bRet;
  //
  bRet=myBox.IsOut(aBox);
  return bRet;
}
//=======================================================================
//function : Accept
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_BndSphereTreeSelector::Accept (const Standard_Integer& aIndex)
{
  Standard_Boolean bRet=Standard_False;
  //
  if (myFence.Add(aIndex)) {
    myIndices.Append(aIndex);
    bRet=!bRet;
  }
  return bRet;
}
//=======================================================================
//function : SetBox
//purpose  : 
//=======================================================================
  void NMTDS_BndSphereTreeSelector::SetBox(const NMTDS_BndSphere& aBox)
{
  myBox=aBox;
}
//=======================================================================
//function : Clear
//purpose  : 
//=======================================================================
  void NMTDS_BndSphereTreeSelector::Clear()
{
  myFence.Clear();
  myIndices.Clear();
}
//=======================================================================
//function : Indices
//purpose  : 
//=======================================================================
  const TColStd_ListOfInteger& NMTDS_BndSphereTreeSelector::Indices() const
{
  return myIndices;
}
