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

//NOTE: This is an intreface to a function for the Face creation.
//
#include "SGEOM_Function.hxx"

#define FACE_ARG_REF1    1
#define FACE_ARG_ORIENT  2

#define FACE_ARG_PLANE   4
#define FACE_ARG_H       5
#define FACE_ARG_W       6

class GEOMImpl_IFace
{
 public:

  GEOMImpl_IFace(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetRef1(Handle(GEOM_Function) theRefPoint1) { _func->SetReference(FACE_ARG_REF1, theRefPoint1); }
  Handle(GEOM_Function) GetRef1() { return _func->GetReference(FACE_ARG_REF1); }

  void SetOrientation(int theOrientation) { _func->SetReal(FACE_ARG_ORIENT, theOrientation); }
  int  GetOrientation() { return _func->GetReal(FACE_ARG_ORIENT); }

  void SetH(double theH) { _func->SetReal(FACE_ARG_H, theH); }
  void SetW(double theW) { _func->SetReal(FACE_ARG_W, theW); }

  double GetH() { return _func->GetReal(FACE_ARG_H); }
  double GetW() { return _func->GetReal(FACE_ARG_W); }

 private:

  Handle(GEOM_Function) _func;
};
