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

//NOTE: This is an intreface to a function for the Disk creation.
//
#include "SGEOM_Function.hxx"

#define DISK_ARG_P1      1
#define DISK_ARG_P2      2
#define DISK_ARG_P3      3

#define DISK_ARG_CC      4
#define DISK_ARG_VV      5
#define DISK_ARG_RR      6

#define DISK_ARG_ORIENT  7

class GEOMImpl_IDisk
{
 public:

  GEOMImpl_IDisk(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetPoint1(Handle(GEOM_Function) theP) { _func->SetReference(DISK_ARG_P1, theP); }
  void SetPoint2(Handle(GEOM_Function) theP) { _func->SetReference(DISK_ARG_P2, theP); }
  void SetPoint3(Handle(GEOM_Function) theP) { _func->SetReference(DISK_ARG_P3, theP); }

  void SetCenter(Handle(GEOM_Function) theP) { _func->SetReference(DISK_ARG_CC, theP); }
  void SetVector(Handle(GEOM_Function) theV) { _func->SetReference(DISK_ARG_VV, theV); }

  void SetRadius(double theR) { _func->SetReal(DISK_ARG_RR, theR); }
  void SetOrientation(double theO) { _func->SetReal(DISK_ARG_ORIENT, theO); }

  Handle(GEOM_Function) GetPoint1() { return _func->GetReference(DISK_ARG_P1); }
  Handle(GEOM_Function) GetPoint2() { return _func->GetReference(DISK_ARG_P2); }
  Handle(GEOM_Function) GetPoint3() { return _func->GetReference(DISK_ARG_P3); }

  Handle(GEOM_Function) GetCenter() { return _func->GetReference(DISK_ARG_CC); }
  Handle(GEOM_Function) GetVector() { return _func->GetReference(DISK_ARG_VV); }

  double GetRadius() { return _func->GetReal(DISK_ARG_RR); }
  double GetOrientation() { return _func->GetReal(DISK_ARG_ORIENT); }

 private:

  Handle(GEOM_Function) _func;
};
