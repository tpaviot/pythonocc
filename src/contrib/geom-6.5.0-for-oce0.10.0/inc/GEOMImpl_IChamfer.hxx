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

//NOTE: This is an interface to a function for the Chamfer and creation.
//
#include "GEOM_Function.hxx"

#define CHAM_ARG_SH    1
#define CHAM_ARG_D1    2
#define CHAM_ARG_D2    3
#define CHAM_ARG_ANGLE 3
#define CHAM_ARG_LENG  4
#define CHAM_ARG_LAST  4

class GEOMImpl_IChamfer
{
 public:

  GEOMImpl_IChamfer(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShape(Handle(GEOM_Function) theRef) { _func->SetReference(CHAM_ARG_SH, theRef); }

  Handle(GEOM_Function) GetShape() { return _func->GetReference(CHAM_ARG_SH); }

  void SetD (double theD) { _func->SetReal(CHAM_ARG_D1, theD); }
  void SetD1(double theD) { _func->SetReal(CHAM_ARG_D1, theD); }
  void SetD2(double theD) { _func->SetReal(CHAM_ARG_D2, theD); }
  void SetAngle(double theAngle) { _func->SetReal(CHAM_ARG_ANGLE, theAngle); }

  double GetD () { return _func->GetReal(CHAM_ARG_D1); }
  double GetD1() { return _func->GetReal(CHAM_ARG_D1); }
  double GetD2() { return _func->GetReal(CHAM_ARG_D2); }
  double GetAngle() { return _func->GetReal(CHAM_ARG_ANGLE); }

  void SetLength(int theLen) { _func->SetInteger(CHAM_ARG_LENG, theLen); }

  int GetLength() { return _func->GetInteger(CHAM_ARG_LENG); }

  void SetFace(int theInd, int theFace)
              { _func->SetInteger(CHAM_ARG_LAST + theInd, theFace); }
  void SetFace1(int theFace)
              { _func->SetInteger(CHAM_ARG_LAST + 1, theFace); }
  void SetFace2(int theFace)
              { _func->SetInteger(CHAM_ARG_LAST + 2, theFace); }
  void SetEdge(int theInd, int theEdge)
              { _func->SetInteger(CHAM_ARG_LAST + theInd, theEdge); }

  int GetFace(int theInd) { return _func->GetInteger(CHAM_ARG_LAST + theInd); }
  int GetFace1() { return _func->GetInteger(CHAM_ARG_LAST + 1); }
  int GetFace2() { return _func->GetInteger(CHAM_ARG_LAST + 2); }
  int GetEdge(int theInd) { return _func->GetInteger(CHAM_ARG_LAST + theInd); }

 private:

  Handle(GEOM_Function) _func;
};
