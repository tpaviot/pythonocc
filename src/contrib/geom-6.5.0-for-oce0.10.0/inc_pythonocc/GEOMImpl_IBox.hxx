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

//NOTE: This is an intreface to a function for the Box creation.
//
#include "SGEOM_Function.hxx"

#define BOX_ARG_DX   1
#define BOX_ARG_DY   2
#define BOX_ARG_DZ   3
#define BOX_ARG_REF1 4
#define BOX_ARG_REF2 5

class GEOMImpl_IBox
{
 public:

  GEOMImpl_IBox(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetDX(double theX) { _func->SetReal(BOX_ARG_DX, theX); }

  double GetDX() { return _func->GetReal(BOX_ARG_DX); }

  void SetDY(double theY) { _func->SetReal(BOX_ARG_DY, theY); }

  double GetDY() { return _func->GetReal(BOX_ARG_DY); }

  void SetDZ(double theZ) { _func->SetReal(BOX_ARG_DZ, theZ); }

  double GetDZ() { return _func->GetReal(BOX_ARG_DZ); }

  void SetRef1(Handle(GEOM_Function) theRefPoint1) { _func->SetReference(BOX_ARG_REF1, theRefPoint1); }

  Handle(GEOM_Function) GetRef1() { return _func->GetReference(BOX_ARG_REF1); }

  void SetRef2(Handle(GEOM_Function) theRefPoint2) { _func->SetReference(BOX_ARG_REF2, theRefPoint2); }

  Handle(GEOM_Function) GetRef2() { return _func->GetReference(BOX_ARG_REF2); }

 private:

  Handle(GEOM_Function) _func;
};
