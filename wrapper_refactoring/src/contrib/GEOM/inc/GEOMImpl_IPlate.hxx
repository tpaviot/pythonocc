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
//NOTE: This is an intreface to a function for the Plate creation.
//
//Author : Sioutis Fotios
//Date : 5/8/2008
//for the salome geom win32 port

#include "GEOM_Function.hxx"

#define PLT_ARG_LENG 	1
#define PLT_ARG_INIT_SH	1
#define PLT_ARG_LAST 	2

class GEOMImpl_IPlate
{
 public:

  GEOMImpl_IPlate(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetLength(int theLen) { _func->SetInteger(PLT_ARG_LENG, theLen); }

  void SetShape(int theId, Handle(GEOM_Function) theP) { _func->SetReference(PLT_ARG_LAST + theId, theP); }

  void SetInitialShape(Handle(GEOM_Function) theRef) { _func->SetReference(PLT_ARG_INIT_SH, theRef); }

  int GetLength() { return _func->GetInteger(PLT_ARG_LENG); }

  Handle(GEOM_Function) GetShape(int theId) { return _func->GetReference(PLT_ARG_LAST + theId); }

  Handle(GEOM_Function) GetInitialShape() { return _func->GetReference(PLT_ARG_INIT_SH); }

 private:

  Handle(GEOM_Function) _func;
};
