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

//NOTE: This is an intreface to a function for the Cone creation.
//
#include "SGEOM_Function.hxx"

#define CONE_ARG_R1  1
#define CONE_ARG_R2  2
#define CONE_ARG_H   3
#define CONE_ARG_PNT 4
#define CONE_ARG_VEC 5

class GEOMImpl_ICone
{
 public:

  GEOMImpl_ICone(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetR1(double theR) { _func->SetReal(CONE_ARG_R1, theR); }

  double GetR1() { return _func->GetReal(CONE_ARG_R1); }

  void SetR2(double theR) { _func->SetReal(CONE_ARG_R2, theR); }

  double GetR2() { return _func->GetReal(CONE_ARG_R2); }

  void SetH(double theH) { _func->SetReal(CONE_ARG_H, theH); }

  double GetH() { return _func->GetReal(CONE_ARG_H); }

  void SetPoint(Handle(GEOM_Function) theRefPoint) { _func->SetReference(CONE_ARG_PNT, theRefPoint); }

  Handle(GEOM_Function) GetPoint() { return _func->GetReference(CONE_ARG_PNT); }

  void SetVector(Handle(GEOM_Function) theRefVector) { _func->SetReference(CONE_ARG_VEC, theRefVector); }

  Handle(GEOM_Function) GetVector() { return _func->GetReference(CONE_ARG_VEC); }

 private:

  Handle(GEOM_Function) _func;
};
