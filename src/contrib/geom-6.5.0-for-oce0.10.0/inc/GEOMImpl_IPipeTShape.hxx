// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

#ifndef _GEOMImpl_IPipeTShape_HXX_
#define _GEOMImpl_IPipeTShape_HXX_

#include "GEOM_Function.hxx"

#define TSHAPE_ARG_R1   1
#define TSHAPE_ARG_W1   2
#define TSHAPE_ARG_L1   3
#define TSHAPE_ARG_R2   4
#define TSHAPE_ARG_W2   5
#define TSHAPE_ARG_L2   6

// chamfer
#define TSHAPE_ARG_H    7
#define TSHAPE_ARG_W    8

// fillet
#define TSHAPE_ARG_RF   9

// partition
#define TSHAPE_ARG_HEXMESH 10

// junction points
#define TSHAPE_ARG_P1 11
#define TSHAPE_ARG_P2 12
#define TSHAPE_ARG_P3 13

class GEOMImpl_IPipeTShape
{
public:
  GEOMImpl_IPipeTShape(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetR1(double theR1) { _func->SetReal(TSHAPE_ARG_R1, theR1); }
  double GetR1() { return _func->GetReal(TSHAPE_ARG_R1); }

  void SetW1(double theW1) { _func->SetReal(TSHAPE_ARG_W1, theW1); }
  double GetW1() { return _func->GetReal(TSHAPE_ARG_W1); }

  void SetL1(double theL1) { _func->SetReal(TSHAPE_ARG_L1, theL1); }
  double GetL1() { return _func->GetReal(TSHAPE_ARG_L1); }

  void SetR2(double theR2) { _func->SetReal(TSHAPE_ARG_R2, theR2); }
  double GetR2() { return _func->GetReal(TSHAPE_ARG_R2); }

  void SetW2(double theW2) { _func->SetReal(TSHAPE_ARG_W2, theW2); }
  double GetW2() { return _func->GetReal(TSHAPE_ARG_W2); }

  void SetL2(double theL2) { _func->SetReal(TSHAPE_ARG_L2, theL2); }
  double GetL2() { return _func->GetReal(TSHAPE_ARG_L2); }

  void SetH(double theH) { _func->SetReal(TSHAPE_ARG_H, theH); }
  double GetH() { return _func->GetReal(TSHAPE_ARG_H); }

  void SetW(double theW) { _func->SetReal(TSHAPE_ARG_W, theW); }
  double GetW() { return _func->GetReal(TSHAPE_ARG_W); }

  void SetRF(double theRF) { _func->SetReal(TSHAPE_ARG_RF, theRF); }
  double GetRF() { return _func->GetReal(TSHAPE_ARG_RF); }

  void SetHexMesh(int theHexMesh) { _func->SetInteger(TSHAPE_ARG_HEXMESH, theHexMesh); }
  int GetHexMesh() { return _func->GetInteger(TSHAPE_ARG_HEXMESH); }

  void SetP1(const Handle(GEOM_Function)& theP1){_func->SetReference(TSHAPE_ARG_P1, theP1); }
  Handle(GEOM_Function) GetP1() { return _func->GetReference(TSHAPE_ARG_P1); }

  void SetP2(const Handle(GEOM_Function)& theP2){_func->SetReference(TSHAPE_ARG_P2, theP2); }
  Handle(GEOM_Function) GetP2() { return _func->GetReference(TSHAPE_ARG_P2); }

  void SetP3(const Handle(GEOM_Function)& theP3){_func->SetReference(TSHAPE_ARG_P3, theP3); }
  Handle(GEOM_Function) GetP3() { return _func->GetReference(TSHAPE_ARG_P3); }

private:
  Handle(GEOM_Function) _func;
};

#endif // _GEOMImpl_IPipeTShape_HXX_
