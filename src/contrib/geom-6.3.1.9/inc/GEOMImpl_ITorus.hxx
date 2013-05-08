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
//NOTE: This is an intreface to a function for the Torus creation.


#include "GEOM_Function.hxx"

#define TORUS_ARG_CC   1
#define TORUS_ARG_VV   2
#define TORUS_ARG_RMAJ 3
#define TORUS_ARG_RMIN 4
#define TORUS_ARG_ANG  5
#define TORUS_ARG_VMIN 6
#define TORUS_ARG_VMAX 7

class GEOMImpl_ITorus
{
 public:

  GEOMImpl_ITorus(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetCenter(Handle(GEOM_Function) theP) { _func->SetReference(TORUS_ARG_CC, theP); }
  void SetVector(Handle(GEOM_Function) theV) { _func->SetReference(TORUS_ARG_VV, theV); }

  void SetRMajor(const double& theR) { _func->SetReal(TORUS_ARG_RMAJ, theR); }
  void SetRMinor(const double& theR) { _func->SetReal(TORUS_ARG_RMIN, theR); }

  void SetRMajor(const TCollection_AsciiString& theR) { _func->SetReal(TORUS_ARG_RMAJ, theR); }
  void SetRMinor(const TCollection_AsciiString& theR) { _func->SetReal(TORUS_ARG_RMIN, theR); }



  void SetAngle(const TCollection_AsciiString& theAngle) { _func->SetReal(TORUS_ARG_ANG, theAngle); }
  void SetAngle(const double& theAngle) { _func->SetReal(TORUS_ARG_ANG, theAngle); }

  double GetAngle() { return _func->GetReal(TORUS_ARG_ANG); }

  void SetVCoordStart(const TCollection_AsciiString& theAngle) { _func->SetReal(TORUS_ARG_VMIN, theAngle); }
  void SetVCoordStart(const double& theAngle) { _func->SetReal(TORUS_ARG_VMIN, theAngle); }

  double GetVCoordStart() { return _func->GetReal(TORUS_ARG_VMIN); }

  void SetVCoordEnd(const TCollection_AsciiString& theAngle) { _func->SetReal(TORUS_ARG_VMAX, theAngle); }
  void SetVCoordEnd(const double& theAngle) { _func->SetReal(TORUS_ARG_VMAX, theAngle); }

  double GetVCoordEnd() { return _func->GetReal(TORUS_ARG_VMAX); }


  Handle(GEOM_Function) GetCenter() { return _func->GetReference(TORUS_ARG_CC); }
  Handle(GEOM_Function) GetVector() { return _func->GetReference(TORUS_ARG_VV); }

  double GetRMajor() { return _func->GetReal(TORUS_ARG_RMAJ); }
  double GetRMinor() { return _func->GetReal(TORUS_ARG_RMIN); }

 private:

  Handle(GEOM_Function) _func;
};
