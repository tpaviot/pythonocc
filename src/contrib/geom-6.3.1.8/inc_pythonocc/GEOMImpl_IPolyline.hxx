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
//NOTE: This is an intreface to a function for the Polyline creation.


#include "SGEOM_Function.hxx"
#include <TColStd_HArray1OfReal.hxx>

#define POLY_ARG_LENG       1
#define POLY_ARG_CLOS       2
#define POLY_ARG_LAST       3

#define POLY_CONSTRUCTOR    4
#define POLY_ARG_ARRAY      5

class GEOMImpl_IPolyline
{
 public:

  GEOMImpl_IPolyline(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetLength(int theLen) { _func->SetInteger(POLY_ARG_LENG, theLen); }

  void SetPoint(int theId, Handle(GEOM_Function) theP) { _func->SetReference(POLY_ARG_LAST + theId, theP); }

  void SetIsClosed(bool theIsClosed) { _func->SetInteger(POLY_ARG_CLOS, (int)theIsClosed); }

  int GetLength() { return _func->GetInteger(POLY_ARG_LENG); }

  Handle(GEOM_Function) GetPoint(int theId) { return _func->GetReference(POLY_ARG_LAST + theId); }
 
  bool GetIsClosed() { return (bool)_func->GetInteger(POLY_ARG_CLOS); }
  void SetConstructorType(int theConstructor) {_func->SetInteger(POLY_CONSTRUCTOR,theConstructor); }

  int GetConstructorType() { return _func->GetInteger(POLY_CONSTRUCTOR); }

  void SetCoordinates(const Handle(TColStd_HArray1OfReal)& theValue)
              { _func->SetRealArray(POLY_ARG_ARRAY, theValue); }


  Handle(TColStd_HArray1OfReal) GetCoordinates() { return _func->GetRealArray(POLY_ARG_ARRAY); }

  

 private:

  Handle(GEOM_Function) _func;
};
