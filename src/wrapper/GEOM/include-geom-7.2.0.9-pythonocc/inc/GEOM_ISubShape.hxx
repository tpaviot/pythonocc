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
// NOTE: This is an intreface to a function for the Shapes
// (Wire, Face, Shell, Solid and Compound) creation.


#include "SGEOM_Function.hxx"

#include "TColStd_HSequenceOfTransient.hxx"
#include "TColStd_HArray1OfInteger.hxx"

#define SUBSHAPE_ARG_MAIN_SHAPE     1
#define SUBSHAPE_ARG_INDICES        2
#define SUBSHAPE_ARG_SORTED         3

//!Interface class for subshape driver
class GEOM_ISubShape
{
 public:

  GEOM_ISubShape(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetMainShape(Handle(GEOM_Function) theRefBase)
  { _func->SetReference(SUBSHAPE_ARG_MAIN_SHAPE, theRefBase); }

  Handle(GEOM_Function) GetMainShape() { return _func->GetReference(SUBSHAPE_ARG_MAIN_SHAPE); }

  void SetIndices(const Handle(TColStd_HArray1OfInteger)& theIndices)
  { _func->SetIntegerArray(SUBSHAPE_ARG_INDICES, theIndices); }

  Handle(TColStd_HArray1OfInteger) GetIndices()
  { return _func->GetIntegerArray(SUBSHAPE_ARG_INDICES); }

 private:

  Handle(GEOM_Function) _func;
};
