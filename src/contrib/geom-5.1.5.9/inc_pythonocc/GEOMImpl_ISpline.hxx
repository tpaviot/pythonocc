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
//NOTE: This is an intreface to a function for the Spline creation.


#include "SGEOM_Function.hxx"

#define SPL_ARG_LENG 1
#define SPL_ARG_CLOS 2
#define SPL_ARG_LAST 2

class GEOMImpl_ISpline
{
 public:

  GEOMImpl_ISpline(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetLength(int theLen) { _func->SetInteger(SPL_ARG_LENG, theLen); }

  void SetIsClosed(bool theIsClosed) { _func->SetInteger(SPL_ARG_CLOS, (int)theIsClosed); }

  void SetPoint(int theId, Handle(GEOM_Function) theP) { _func->SetReference(SPL_ARG_LAST + theId, theP); }

  int GetLength() { return _func->GetInteger(SPL_ARG_LENG); }

  bool GetIsClosed() { return (bool)_func->GetInteger(SPL_ARG_CLOS); }

  Handle(GEOM_Function) GetPoint(int theId) { return _func->GetReference(SPL_ARG_LAST + theId); }

 private:

  Handle(GEOM_Function) _func;
};
