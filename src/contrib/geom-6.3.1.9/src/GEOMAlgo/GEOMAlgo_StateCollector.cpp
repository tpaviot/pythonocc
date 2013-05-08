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
// File:	GEOMAlgo_StateCollector.cxx
// Created:	Thu Mar 10 09:42:11 2005
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_StateCollector.ixx>

//=======================================================================
//function : GEOMAlgo_StateCollector
//purpose  : 
//=======================================================================
GEOMAlgo_StateCollector::GEOMAlgo_StateCollector() 
{
  myCounter[0]=0;
  myCounter[1]=0;
  myCounter[2]=0;
}
//=======================================================================
//function : AppendState
//purpose  : 
//=======================================================================
Standard_Boolean GEOMAlgo_StateCollector::AppendState(const TopAbs_State aSt) 
{
  Standard_Boolean bIsToBreak;
  //
  switch(aSt) {
    case TopAbs_IN:
      ++myCounter[0];
      break;
    case TopAbs_OUT:
      ++myCounter[1];
      break; 
    case TopAbs_ON:
      ++myCounter[2];
      break;
    default:
      break;
  }
  bIsToBreak=(myCounter[0] && myCounter[1]);
  //
  return bIsToBreak;
}
//=======================================================================
//function : State
//purpose  : 
//=======================================================================
TopAbs_State GEOMAlgo_StateCollector::State()const 
{
  TopAbs_State aSt;
  //
  aSt=TopAbs_UNKNOWN;
  //
  if (myCounter[0] && myCounter[1]) {
    return aSt;
  }
  //
  else if (myCounter[0] && myCounter[2]>=0) {
    aSt=TopAbs_IN;
  }
  //
  else if (myCounter[1] && myCounter[2]>=0) {
    aSt=TopAbs_OUT;
  }
  //
  else if (!myCounter[0] && !myCounter[1] && myCounter[2]) {
    aSt=TopAbs_ON;
  }
  //
  return aSt;
}
