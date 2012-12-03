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

//NOTE: This is an interface to a function for the Fillet and creation.
//
#include "SGEOM_Function.hxx"

#define FILLET_ARG_SH   1
#define FILLET_ARG_R    2
#define FILLET_ARG_R1   4
#define FILLET_ARG_R2   5
#define FILLET_ARG_LENG 3
#define FILLET_ARG_LAST 3

class GEOMImpl_IFillet
{
 public:

  GEOMImpl_IFillet(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShape(Handle(GEOM_Function) theRef) { _func->SetReference(FILLET_ARG_SH, theRef); }

  Handle(GEOM_Function) GetShape() { return _func->GetReference(FILLET_ARG_SH); }

  void SetR(double theR) { _func->SetReal(FILLET_ARG_R, theR); }
  void SetR1(double theR1) { _func->SetReal(FILLET_ARG_R1, theR1); }
  void SetR2(double theR2) { _func->SetReal(FILLET_ARG_R2, theR2); }

  double GetR() { return _func->GetReal(FILLET_ARG_R); }
  double GetR1() { return _func->GetReal(FILLET_ARG_R1); }
  double GetR2() { return _func->GetReal(FILLET_ARG_R2); }

  void SetLength(int theLen) { _func->SetInteger(FILLET_ARG_LENG, theLen); }

  int GetLength() { return _func->GetInteger(FILLET_ARG_LENG); }

  void SetEdge(int theInd, int theEdge)
              { _func->SetInteger(FILLET_ARG_LAST + theInd, theEdge); }
  void SetFace(int theInd, int theFace)
              { _func->SetInteger(FILLET_ARG_LAST + theInd, theFace); }

  int GetEdge(int theInd) { return _func->GetInteger(FILLET_ARG_LAST + theInd); }
  int GetFace(int theInd) { return _func->GetInteger(FILLET_ARG_LAST + theInd); }

 private:

  Handle(GEOM_Function) _func;
};
