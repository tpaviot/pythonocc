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

#include "GEOM_Function.hxx"

#include "TColStd_HSequenceOfTransient.hxx"
#include "TColStd_HArray1OfInteger.hxx"

#define SHAPE_ARG_MAIN_SHAPE  1
#define SHAPE_ARG_INDICES     2

class GEOM_ISubShape
{
 public:

  GEOM_ISubShape(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetMainShape(Handle(GEOM_Function) theRefBase)
  { _func->SetReference(SHAPE_ARG_MAIN_SHAPE, theRefBase); }

  Handle(GEOM_Function) GetMainShape() { return _func->GetReference(SHAPE_ARG_MAIN_SHAPE); }

  void SetIndices(const Handle(TColStd_HArray1OfInteger)& theIndices)
  { _func->SetIntegerArray(SHAPE_ARG_INDICES, theIndices); }

  Handle(TColStd_HArray1OfInteger) GetIndices()
  { return _func->GetIntegerArray(SHAPE_ARG_INDICES); }

 private:

  Handle(GEOM_Function) _func;
};
