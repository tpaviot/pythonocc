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
//NOTE: This is an intreface to a function for the Prism creation.


#include "GEOM_Function.hxx"

#define PRISM_ARG_H     1
#define PRISM_ARG_VEC   2
#define PRISM_ARG_BASE  3
#define PRISM_ARG_PNT_F 4
#define PRISM_ARG_PNT_L 5
#define PRISM_ARG_ANG 	6

class GEOMImpl_IPrism
{
 public:

  GEOMImpl_IPrism(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetBase  (Handle(GEOM_Function) theRefBase  ) { _func->SetReference(PRISM_ARG_BASE, theRefBase); }
  void SetVector(Handle(GEOM_Function) theRefVector) { _func->SetReference(PRISM_ARG_VEC , theRefVector); }
  void SetFirstPoint(Handle(GEOM_Function) thePoint) { _func->SetReference(PRISM_ARG_PNT_F, thePoint); }
  void SetLastPoint (Handle(GEOM_Function) thePoint) { _func->SetReference(PRISM_ARG_PNT_L, thePoint); }

  Handle(GEOM_Function) GetBase  () { return _func->GetReference(PRISM_ARG_BASE); }
  Handle(GEOM_Function) GetVector() { return _func->GetReference(PRISM_ARG_VEC ); }
  Handle(GEOM_Function) GetFirstPoint() { return _func->GetReference(PRISM_ARG_PNT_F ); }
  Handle(GEOM_Function) GetLastPoint () { return _func->GetReference(PRISM_ARG_PNT_L ); }

  void SetH(const double& theH) { _func->SetReal(PRISM_ARG_H, theH); }
  void SetH(const TCollection_AsciiString& theH) { _func->SetReal(PRISM_ARG_H, theH); }

  void SetAngle(const double& theAngle) { _func->SetReal(PRISM_ARG_ANG, theAngle); }
  void SetAngle(const TCollection_AsciiString& theAngle) { _func->SetReal(PRISM_ARG_ANG, theAngle); }

  double GetH() { return _func->GetReal(PRISM_ARG_H); }
  double GetAngle() { return _func->GetReal(PRISM_ARG_ANG); }

 private:

  Handle(GEOM_Function) _func;
};
