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

//NOTE: This is an intreface to a function for the vector creation.
//
#include "GEOM_Function.hxx"

#define LINE_ARG_PNT1  1
#define LINE_ARG_PNT2  2
#define LINE_ARG_FACE1 3
#define LINE_ARG_FACE2 4

class GEOMImpl_ILine
{
 public:

  GEOMImpl_ILine(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetPoint1(Handle(GEOM_Function) theRef) { _func->SetReference(LINE_ARG_PNT1, theRef); }
  void SetPoint2(Handle(GEOM_Function) theRef) { _func->SetReference(LINE_ARG_PNT2, theRef); }
  void SetFace1(Handle(GEOM_Function) theRef) { _func->SetReference(LINE_ARG_FACE1, theRef); }
  void SetFace2(Handle(GEOM_Function) theRef) { _func->SetReference(LINE_ARG_FACE2, theRef); }

  Handle(GEOM_Function) GetPoint1() { return _func->GetReference(LINE_ARG_PNT1); }
  Handle(GEOM_Function) GetPoint2() { return _func->GetReference(LINE_ARG_PNT2); }
  Handle(GEOM_Function) GetFace1() { return _func->GetReference(LINE_ARG_FACE1); }
  Handle(GEOM_Function) GetFace2() { return _func->GetReference(LINE_ARG_FACE2); }

 private:

  Handle(GEOM_Function) _func;
};
