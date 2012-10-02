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

//NOTE: This is an interface to a function for the Fillet2d and creation.
//
#include "GEOM_Function.hxx"

#define FILLET2D_ARG_SH   1
#define FILLET2D_ARG_R    2
#define FILLET2D_ARG_LENG 3
#define FILLET2D_ARG_LAST 4

class GEOMImpl_IFillet2d
{
 public:

  GEOMImpl_IFillet2d(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShape(Handle(GEOM_Function) theRef) { _func->SetReference(FILLET2D_ARG_SH, theRef); }
  Handle(GEOM_Function) GetShape() { return _func->GetReference(FILLET2D_ARG_SH); }

  void SetR(double theR) { _func->SetReal(FILLET2D_ARG_R, theR); }
  void SetLength(int theLen) { _func->SetInteger(FILLET2D_ARG_LENG, theLen); }
  void SetVertex(int theInd, int theVertex)
              { _func->SetInteger(FILLET2D_ARG_LAST + theInd, theVertex); }

  double GetR() { return _func->GetReal(FILLET2D_ARG_R); }
  int GetLength() { return _func->GetInteger(FILLET2D_ARG_LENG); }
  int GetVertex(int theInd) { return _func->GetInteger(FILLET2D_ARG_LAST + theInd); }

 private:

  Handle(GEOM_Function) _func;
};
