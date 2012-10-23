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

// File:        GEOMAlgo_Clsf.cxx
// Created:     Wed Nov 22 10:23:04 2006
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <GEOMAlgo_Clsf.hxx>

IMPLEMENT_STANDARD_HANDLE(GEOMAlgo_Clsf, GEOMAlgo_HAlgo);
IMPLEMENT_STANDARD_RTTIEXT(GEOMAlgo_Clsf, GEOMAlgo_HAlgo);

//=======================================================================
//function :
//purpose  :
//=======================================================================
  GEOMAlgo_Clsf::GEOMAlgo_Clsf()
:
  GEOMAlgo_HAlgo()
{
  myState=TopAbs_UNKNOWN;
  myPnt.SetCoord(99.,99.,99.);
  myTolerance=0.0001;
}
//=======================================================================
//function : ~
//purpose  :
//=======================================================================
  GEOMAlgo_Clsf::~GEOMAlgo_Clsf()
{
}
//=======================================================================
//function : SetTolerance
//purpose  :
//=======================================================================
  void GEOMAlgo_Clsf::SetTolerance(const Standard_Real aT)
{
  myTolerance=aT;
}
//=======================================================================
//function : Tolerance
//purpose  :
//=======================================================================
  Standard_Real GEOMAlgo_Clsf::Tolerance()const
{
  return myTolerance;
}
//=======================================================================
//function : SetPnt
//purpose  :
//=======================================================================
  void GEOMAlgo_Clsf::SetPnt(const gp_Pnt& aP)
{
  myPnt=aP;
}
//=======================================================================
//function : Pnt
//purpose  :
//=======================================================================
  const gp_Pnt& GEOMAlgo_Clsf::Pnt()const
{
  return myPnt;
}
//=======================================================================
//function : State
//purpose  :
//=======================================================================
  TopAbs_State GEOMAlgo_Clsf::State() const
{
  return myState;
}
//=======================================================================
//function : CanBeON
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_Clsf::CanBeON(const Handle(Geom_Curve)& ) const
{
  return Standard_True;
}
//=======================================================================
//function : CanBeON
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_Clsf::CanBeON(const Handle(Geom_Surface)& ) const
{
  return Standard_True;
}
