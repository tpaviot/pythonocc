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

//  NOTE: This is an interface to a function for the Rotate operation.

#include "GEOM_Function.hxx"

#include <gp_XYZ.hxx>

#define ROTATE_ANGLE    1  
#define ROTATE_AXIS     2
#define ROTATE_ORGN     3
#define ROTATE_STEP1      4
#define ROTATE_NBITER1    5
#define ROTATE_NBITER2    6
#define ROTATE_CENTRAL_POINT    7  
#define ROTATE_POINT1           8
#define ROTATE_POINT2           9
#define ROTATE_DIR2_X     10
#define ROTATE_DIR2_Y     11
#define ROTATE_DIR2_Z     12

class GEOMImpl_IRotate
{
 public:
  
  GEOMImpl_IRotate(Handle(GEOM_Function) theFunction): _func(theFunction) {}
  
  void SetCentPoint(Handle(GEOM_Function) theCentPoint) { _func->SetReference(ROTATE_CENTRAL_POINT, theCentPoint); }
  
  Handle(GEOM_Function) GetCentPoint() { return _func->GetReference(ROTATE_CENTRAL_POINT); }

  void SetPoint1(Handle(GEOM_Function) thePoint1) { _func->SetReference(ROTATE_POINT1, thePoint1); }
  
  Handle(GEOM_Function) GetPoint1() { return _func->GetReference(ROTATE_POINT1); }
  
  void SetPoint2(Handle(GEOM_Function) thePoint2) { _func->SetReference(ROTATE_POINT2, thePoint2); }
  
  Handle(GEOM_Function) GetPoint2() { return _func->GetReference(ROTATE_POINT2); }
  
  void SetAngle(Standard_Real theAngle) { _func->SetReal(ROTATE_ANGLE, theAngle); }
  
  Standard_Real GetAngle() { return _func->GetReal(ROTATE_ANGLE); }
  
  void SetAxis(Handle(GEOM_Function) theVector) { _func->SetReference(ROTATE_AXIS, theVector); }
  
  Handle(GEOM_Function) GetAxis() { return _func->GetReference(ROTATE_AXIS); } 
  
  void SetOriginal(Handle(GEOM_Function) theOriginal) { _func->SetReference(ROTATE_ORGN, theOriginal); }

  Handle(GEOM_Function) GetOriginal() { return _func->GetReference(ROTATE_ORGN); }

  void SetStep(double theStep) { _func->SetReal(ROTATE_STEP1, theStep); }

  double GetStep() { return _func->GetReal(ROTATE_STEP1); }

  void SetNbIter1(int theNbIter) { _func->SetInteger(ROTATE_NBITER1, theNbIter); }

  int GetNbIter1() { return _func->GetInteger(ROTATE_NBITER1); } 

  void SetNbIter2(int theNbIter) { _func->SetInteger(ROTATE_NBITER2, theNbIter); }

  int GetNbIter2() { return _func->GetInteger(ROTATE_NBITER2); } 

  void SetDir2 (gp_XYZ theDir2)
  {
    _func->SetReal(ROTATE_DIR2_X, theDir2.X());
    _func->SetReal(ROTATE_DIR2_Y, theDir2.Y());
    _func->SetReal(ROTATE_DIR2_Z, theDir2.Z());
  }

  gp_XYZ GetDir2()
  {
    gp_XYZ aRes (0., 0., 0.);
    aRes.SetX(_func->GetReal(ROTATE_DIR2_X));
    aRes.SetY(_func->GetReal(ROTATE_DIR2_Y));
    aRes.SetZ(_func->GetReal(ROTATE_DIR2_Z));
    return aRes;
  }
  
 private:
  
  Handle(GEOM_Function) _func;  
};
