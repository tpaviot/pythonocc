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
//NOTE: This is an intreface to a function for the Cylinder creation.


#include "GEOM_Function.hxx"

#define CYL_ARG_R   1
#define CYL_ARG_H   2
#define CYL_ARG_PNT 3
#define CYL_ARG_VEC 4
#define CYL_ARG_ANG 5

class GEOMImpl_ICylinder
{
 public:

  GEOMImpl_ICylinder(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetR(const TCollection_AsciiString& theR) { _func->SetReal(CYL_ARG_R, theR); }
  void SetR(const double& theR) { _func->SetReal(CYL_ARG_R, theR); }

  double GetR() { return _func->GetReal(CYL_ARG_R); }

  void SetH(const TCollection_AsciiString& theH) { _func->SetReal(CYL_ARG_H, theH); }
  void SetH(const double& theH) { _func->SetReal(CYL_ARG_H, theH); }

  double GetH() { return _func->GetReal(CYL_ARG_H); }

  void SetAngle(const TCollection_AsciiString& theAngle) { _func->SetReal(CYL_ARG_ANG, theAngle); }
  void SetAngle(const double& theAngle) { _func->SetReal(CYL_ARG_ANG, theAngle); }

  double GetAngle() { return _func->GetReal(CYL_ARG_ANG); }

  void SetPoint(Handle(GEOM_Function) theRefPoint) { _func->SetReference(CYL_ARG_PNT, theRefPoint); }

  Handle(GEOM_Function) GetPoint() { return _func->GetReference(CYL_ARG_PNT); }

  void SetVector(Handle(GEOM_Function) theRefVector) { _func->SetReference(CYL_ARG_VEC, theRefVector); }

  Handle(GEOM_Function) GetVector() { return _func->GetReference(CYL_ARG_VEC); }

 private:

  Handle(GEOM_Function) _func;
};
