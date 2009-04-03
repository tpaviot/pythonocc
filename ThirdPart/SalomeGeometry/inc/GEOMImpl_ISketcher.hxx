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
//NOTE: This is an interface to a function for the Sketcher creation.


#include "SGEOM_Function.hxx"

#define SKETCH_ARG_CMD 1
#define SKETCH_ARG_DOUBLE 2
#define SKETCH_ARG_WPLANE 12

class GEOMImpl_ISketcher
{
 public:

  GEOMImpl_ISketcher(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetCommand(const TCollection_AsciiString& theCommand)
  { _func->SetString(SKETCH_ARG_CMD, theCommand); }

  TCollection_AsciiString GetCommand() { return _func->GetString(SKETCH_ARG_CMD); }

  void SetWorkingPlane(int theInd, double theValue)
			  { _func->SetReal(SKETCH_ARG_DOUBLE + theInd, theValue); }

  void SetWorkingPlane(int theInd, const TCollection_AsciiString& theValue)
			  { _func->SetReal(SKETCH_ARG_DOUBLE + theInd, theValue); }

  double GetWorkingPlane(int theInd) { return _func->GetReal(SKETCH_ARG_DOUBLE + theInd); }

  void SetWorkingPlane(Handle(GEOM_Function) thePlane)
              { _func->SetReference(SKETCH_ARG_WPLANE, thePlane); }

  Handle(GEOM_Function) GetWorkingPlane() { return _func->GetReference(SKETCH_ARG_WPLANE); }

 private:

  Handle(GEOM_Function) _func;
};
