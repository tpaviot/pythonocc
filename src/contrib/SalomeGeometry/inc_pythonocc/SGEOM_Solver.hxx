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

#ifndef _GEOM_Solver_HXX_
#define _GEOM_Solver_HXX_

#include "SGEOM_Engine.hxx"
#include "SGEOM_Object.hxx"
#include "SGEOM_Function.hxx"

#include <TDF_LabelSequence.hxx>

//!Class that updates geometric entities in Data Framework in case
//!of changes in history or variables.
class GEOM_Solver
{
 public:
  Standard_EXPORT GEOM_Solver(GEOM_Engine* theEngine) :_engine(theEngine) {}
  Standard_EXPORT ~GEOM_Solver() {}

  //!Update the values of all GEOM_Object in the document theDocID, theSeq will contain a list of touched labels
  Standard_EXPORT bool Update(int theDocID, TDF_LabelSequence& theSeq); 
 
  //!Updates a value of theObject, theSeq will contain a list of touched labels
  Standard_EXPORT bool UpdateObject(Handle(GEOM_Object) theObject, TDF_LabelSequence& theSeq);

  //!Recomputes the functions of an object
  Standard_EXPORT bool ComputeObject(Handle(GEOM_Object) theObject);

  //!Recomputes a function
  Standard_EXPORT bool ComputeFunction(Handle(GEOM_Function) theFunction);

 private:

  GEOM_Engine* _engine;    

};

#endif
