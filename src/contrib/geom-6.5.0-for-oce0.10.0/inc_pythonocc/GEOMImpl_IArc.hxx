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

//NOTE: This is an intreface to a function for the Arc creation.
//
#include "SGEOM_Function.hxx"

#define ARC_ARG_PI  1
#define ARC_ARG_PC  2
#define ARC_ARG_PE  3
#define ARC_ARG_SE  4

class GEOMImpl_IArc
{
 public:

  GEOMImpl_IArc(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetPoint1(Handle(GEOM_Function) theP) { _func->SetReference(ARC_ARG_PI, theP); }
  void SetPoint2(Handle(GEOM_Function) theP) { _func->SetReference(ARC_ARG_PC, theP); }
  void SetPoint3(Handle(GEOM_Function) theP) { _func->SetReference(ARC_ARG_PE, theP); }
  void SetSense(bool theSense) { _func->SetInteger(ARC_ARG_SE, theSense); }

  Handle(GEOM_Function) GetPoint1() { return _func->GetReference(ARC_ARG_PI); }
  Handle(GEOM_Function) GetPoint2() { return _func->GetReference(ARC_ARG_PC); }
  Handle(GEOM_Function) GetPoint3() { return _func->GetReference(ARC_ARG_PE); }
  bool GetSense() { return _func->GetInteger(ARC_ARG_SE); }
  
 private:

  Handle(GEOM_Function) _func;
};
