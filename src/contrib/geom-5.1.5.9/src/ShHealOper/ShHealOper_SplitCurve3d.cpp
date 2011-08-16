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
// File:      ShHealOper_SplitCurve3d.cxx
// Created:   05.05.04 12:48:36
// Author:    Galina KULIKOVA


#include <ShHealOper_SplitCurve3d.hxx>
#include <ShapeExtend_Status.hxx>
#include <ShapeExtend.hxx>

IMPLEMENT_STANDARD_HANDLE (ShHealOper_SplitCurve3d,ShapeUpgrade_SplitCurve3d)
IMPLEMENT_STANDARD_RTTIEXT(ShHealOper_SplitCurve3d,ShapeUpgrade_SplitCurve3d)

//=======================================================================
//function : Compute
//purpose  : 
//=======================================================================

void ShHealOper_SplitCurve3d::Compute()
{
  if(myValues.IsNull())
    myStatus = ShapeExtend::EncodeStatus (ShapeExtend_FAIL);
  else {
    SetSplitValues(myValues);
    myStatus = ShapeExtend::EncodeStatus (ShapeExtend_DONE1);
  }
}


