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

//NOTE: This is an intreface to a function for the Setting In Position.
//
#include "SGEOM_Function.hxx"

#define POSITION_ARG_SHAPE     1
#define POSITION_ARG_START_LCS 2
#define POSITION_ARG_END_LCS   3
#define POSITION_ARG_PATH      5
#define POSITION_ARG_DISTANCE  6
#define POSITION_ARG_REVERSE   7

class GEOMImpl_IPosition
{
 public:

  GEOMImpl_IPosition(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShape(Handle(GEOM_Function) theShape) { _func->SetReference(POSITION_ARG_SHAPE, theShape); }

  Handle(GEOM_Function) GetShape() { return _func->GetReference(POSITION_ARG_SHAPE); }

  void SetStartLCS(Handle(GEOM_Function) theStartLCS)
  { _func->SetReference(POSITION_ARG_START_LCS, theStartLCS); }

  Handle(GEOM_Function) GetStartLCS() { return _func->GetReference(POSITION_ARG_START_LCS); }

  void SetEndLCS(Handle(GEOM_Function) theEndLCS)
  { _func->SetReference(POSITION_ARG_END_LCS, theEndLCS); }

  Handle(GEOM_Function) GetEndLCS() { return _func->GetReference(POSITION_ARG_END_LCS); }

  void SetPath(Handle(GEOM_Function) thePath) { _func->SetReference(POSITION_ARG_PATH, thePath); }

  Handle(GEOM_Function) GetPath() { return _func->GetReference(POSITION_ARG_PATH); }

  void SetDistance(double theDistance) { _func->SetReal(POSITION_ARG_DISTANCE, theDistance); }

  double GetDistance() { return _func->GetReal(POSITION_ARG_DISTANCE); }

  void SetReverse(bool theReverse) { _func->SetReal(POSITION_ARG_REVERSE, theReverse); }
  bool GetReverse() { return _func->GetReal(POSITION_ARG_REVERSE); }

 private:

  Handle(GEOM_Function) _func;
};
