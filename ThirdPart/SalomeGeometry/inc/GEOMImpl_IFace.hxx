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
//NOTE: This is an intreface to a function for the face creation.


#include "SGEOM_Function.hxx"

#define FACE_ARG_PNT1 1
#define FACE_ARG_PNT2 2
#define FACE_ARG_PNT3 3
#define FACE_ARG_PNT4 4

class GEOMImpl_IFace
{
 public:

  GEOMImpl_IFace(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetPoint1(Handle(GEOM_Function) theP) { _func->SetReference(FACE_ARG_PNT1, theP); }
  void SetPoint2(Handle(GEOM_Function) theP) { _func->SetReference(FACE_ARG_PNT2, theP); }
  void SetPoint3(Handle(GEOM_Function) theP) { _func->SetReference(FACE_ARG_PNT3, theP); }
  void SetPoint4(Handle(GEOM_Function) theP) { _func->SetReference(FACE_ARG_PNT4, theP); }

  Handle(GEOM_Function) GetPoint1() { return _func->GetReference(FACE_ARG_PNT1); }
  Handle(GEOM_Function) GetPoint2() { return _func->GetReference(FACE_ARG_PNT2); }
  Handle(GEOM_Function) GetPoint3() { return _func->GetReference(FACE_ARG_PNT3); }
  Handle(GEOM_Function) GetPoint4() { return _func->GetReference(FACE_ARG_PNT4); }

 private:

  Handle(GEOM_Function) _func;
};
