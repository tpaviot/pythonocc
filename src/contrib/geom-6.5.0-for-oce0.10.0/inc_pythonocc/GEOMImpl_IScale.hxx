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

//NOTE: This is an intreface to a function for the Scale creation.
//
#include "SGEOM_Function.hxx"

#define SCALE_ARG_SHAPE 1
#define SCALE_ARG_VALUE 2
#define SCALE_ARG_POINT 3
#define SCALE_ARG_VALUE_Y 4
#define SCALE_ARG_VALUE_Z 5

class GEOMImpl_IScale
{
 public:

  GEOMImpl_IScale(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShape(Handle(GEOM_Function) theShape) { _func->SetReference(SCALE_ARG_SHAPE, theShape); }

  Handle(GEOM_Function) GetShape() { return _func->GetReference(SCALE_ARG_SHAPE); }

  void SetFactor(double theValue) { _func->SetReal(SCALE_ARG_VALUE, theValue); }

  double GetFactor() { return _func->GetReal(SCALE_ARG_VALUE); }

  void SetPoint(Handle(GEOM_Function) thePoint) { _func->SetReference(SCALE_ARG_POINT, thePoint); }

  Handle(GEOM_Function) GetPoint() { return _func->GetReference(SCALE_ARG_POINT); }

  void SetFactorX(double theValue) { _func->SetReal(SCALE_ARG_VALUE  , theValue); }
  void SetFactorY(double theValue) { _func->SetReal(SCALE_ARG_VALUE_Y, theValue); }
  void SetFactorZ(double theValue) { _func->SetReal(SCALE_ARG_VALUE_Z, theValue); }

  double GetFactorX() { return _func->GetReal(SCALE_ARG_VALUE  ); }
  double GetFactorY() { return _func->GetReal(SCALE_ARG_VALUE_Y); }
  double GetFactorZ() { return _func->GetReal(SCALE_ARG_VALUE_Z); }

 private:

  Handle(GEOM_Function) _func;
};
