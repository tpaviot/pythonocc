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
// NOTE: This is an interface to a function for the Blocks
// creation and transformation.


#include "GEOM_Function.hxx"

#include "TColStd_HSequenceOfTransient.hxx"

#define BLOCK_ARG_SHAPES 1 // Arguments for creation of block or face of block

class GEOMImpl_IBlocks
{
 public:

  GEOMImpl_IBlocks(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShapes(const Handle(TColStd_HSequenceOfTransient)& theShapes)
  { _func->SetReferenceList(BLOCK_ARG_SHAPES, theShapes); }

  Handle(TColStd_HSequenceOfTransient) GetShapes()
  { return _func->GetReferenceList(BLOCK_ARG_SHAPES); }

 private:

  Handle(GEOM_Function) _func;
};
