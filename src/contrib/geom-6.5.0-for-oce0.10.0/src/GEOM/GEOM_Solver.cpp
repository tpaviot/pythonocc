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

#include "GEOM_Solver.hxx"
#include <TDF_Label.hxx>
#include <TFunction_Function.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_Logbook.hxx>
#include <TFunction_DriverTable.hxx>
#include "GEOM_Function.hxx"
#include <Standard_GUID.hxx>

//=============================================================================
/*!
 *  Update
 */
//=============================================================================
bool GEOM_Solver::Update(int theDocID, TDF_LabelSequence& theSeq)
{
  return false;
} 

//=============================================================================
/*!
 *  UpdateObject
 */
//=============================================================================
bool GEOM_Solver::UpdateObject(Handle(GEOM_Object) theObject, TDF_LabelSequence& theSeq)
{
  return false;
}

//=============================================================================
/*!
 *  ComputeFunction
 */
//=============================================================================  
bool GEOM_Solver::ComputeFunction(Handle(GEOM_Function) theFunction)
{
  if(theFunction == NULL) return false;
  Standard_GUID aGUID = theFunction->GetDriverGUID();
      
  Handle(TFunction_Driver) aDriver;
  if(!TFunction_DriverTable::Get()->FindDriver(aGUID, aDriver)) return false;
          
  aDriver->Init(theFunction->GetEntry());
            
  TFunction_Logbook aLog;
  if(aDriver->Execute(aLog) == 0) return false;
                
  return true;     
}
