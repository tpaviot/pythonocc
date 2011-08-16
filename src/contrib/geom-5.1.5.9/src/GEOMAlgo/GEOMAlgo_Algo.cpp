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
// File:	GEOMAlgo_Algo.cxx
// Created:	Sat Dec 04 12:39:47 2004
// Author:	Peter KURNEV
//		<peter@PREFEX>
//
#include <GEOMAlgo_Algo.ixx>

//=======================================================================
// function: 
// purpose: 
//=======================================================================
  GEOMAlgo_Algo::GEOMAlgo_Algo()
:
  myErrorStatus(1),
  myWarningStatus(0)
{}
//=======================================================================
// function: ~
// purpose: 
//=======================================================================
  GEOMAlgo_Algo::~GEOMAlgo_Algo()
{
}
//=======================================================================
// function: CheckData
// purpose: 
//=======================================================================
  void GEOMAlgo_Algo::CheckData()
{
  myErrorStatus=0;
}
//=======================================================================
// function: CheckResult
// purpose: 
//=======================================================================
  void GEOMAlgo_Algo::CheckResult()
{
  myErrorStatus=0;
}
//=======================================================================
// function: ErrorStatus
// purpose: 
//=======================================================================
  Standard_Integer GEOMAlgo_Algo::ErrorStatus()const
{
  return myErrorStatus;
}
//=======================================================================
// function: WarningStatus
// purpose: 
//=======================================================================
  Standard_Integer GEOMAlgo_Algo::WarningStatus()const
{
  return myWarningStatus;
}
//  myErrorStatus
//
// 1 - object is just initialized
