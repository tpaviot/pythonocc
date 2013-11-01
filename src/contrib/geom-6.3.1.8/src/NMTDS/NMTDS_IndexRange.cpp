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
// File:	NMTDS_IndexRange.cxx
// Created:	Fri Nov 28 10:34:59 2003
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTDS_IndexRange.ixx>
//=======================================================================
//function :NMTDS_IndexRange::NMTDS_IndexRange
//purpose  : 
//=======================================================================
  NMTDS_IndexRange::NMTDS_IndexRange()
:
  myFirst(0),
  myLast(0)
{
}
//=======================================================================
//function :SetFirst
//purpose  : 
//=======================================================================
  void NMTDS_IndexRange::SetFirst(const Standard_Integer aFirst)
{
  myFirst=aFirst;
}
//=======================================================================
//function :First
//purpose  : 
//=======================================================================
  Standard_Integer NMTDS_IndexRange::First()const
{
  return myFirst;
}
//=======================================================================
//function :SetLast
//purpose  : 
//=======================================================================
  void NMTDS_IndexRange::SetLast(const Standard_Integer aLast)
{
  myLast=aLast;
}
//=======================================================================
//function :Last
//purpose  : 
//=======================================================================
  Standard_Integer NMTDS_IndexRange::Last()const
{
  return myLast;
}
//=======================================================================
//function :IsInRange
//purpose  : 
//=======================================================================
  Standard_Boolean NMTDS_IndexRange::IsInRange(const Standard_Integer aIndex)const
{
  return (Standard_Boolean)(aIndex>=myFirst && aIndex<=myLast);
}
