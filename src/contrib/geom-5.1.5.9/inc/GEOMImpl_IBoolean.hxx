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
//NOTE: This is an intreface to a function for the Common, Cut and Fuse creation.


#include "GEOM_Function.hxx"

#define BOOL_ARG_SHAPE1  1
#define BOOL_ARG_SHAPE2  2

class GEOMImpl_IBoolean
{
 public:

  GEOMImpl_IBoolean(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShape1(Handle(GEOM_Function) theRef) { _func->SetReference(BOOL_ARG_SHAPE1, theRef); }
  void SetShape2(Handle(GEOM_Function) theRef) { _func->SetReference(BOOL_ARG_SHAPE2, theRef); }

  Handle(GEOM_Function) GetShape1() { return _func->GetReference(BOOL_ARG_SHAPE1); }
  Handle(GEOM_Function) GetShape2() { return _func->GetReference(BOOL_ARG_SHAPE2); }

 private:

  Handle(GEOM_Function) _func;
};
