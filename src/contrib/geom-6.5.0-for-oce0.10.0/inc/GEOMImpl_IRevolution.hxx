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

//NOTE: This is an intreface to a function for the Revolution creation.
//
#include "GEOM_Function.hxx"

#define REVOL_ARG_ANGLE 1
#define REVOL_ARG_AXIS  2
#define REVOL_ARG_BASE  3

class GEOMImpl_IRevolution
{
 public:

  GEOMImpl_IRevolution(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetAngle(double theAngle) { _func->SetReal(REVOL_ARG_ANGLE, theAngle); }

  double GetAngle() { return _func->GetReal(REVOL_ARG_ANGLE); }

  void SetAxis(Handle(GEOM_Function) theRefAxis) { _func->SetReference(REVOL_ARG_AXIS, theRefAxis); }

  Handle(GEOM_Function) GetAxis() { return _func->GetReference(REVOL_ARG_AXIS); }

  void SetBase(Handle(GEOM_Function) theRefBase) { _func->SetReference(REVOL_ARG_BASE, theRefBase); }

  Handle(GEOM_Function) GetBase() { return _func->GetReference(REVOL_ARG_BASE); }

 private:

  Handle(GEOM_Function) _func;
};
