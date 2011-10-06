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
//NOTE: This is an interface to a function for the Variable Fillet and creation.

#include "GEOM_Function.hxx"
#include <TColStd_HArray1OfInteger.hxx>
#include <TColStd_HArray1OfReal.hxx>

#define VARFILLET_ARG_SH   			1
#define VARFILLET_ARG_EDGE_ARRAY    2
#define VARFILLET_ARG_PARAMS_ARRAY 	3
#define VARFILLET_ARG_RADIUS_ARRAY 	4

class GEOMImpl_IVariableFillet
{
 public:

  GEOMImpl_IVariableFillet(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShape(Handle(GEOM_Function) theRef) { _func->SetReference(VARFILLET_ARG_SH, theRef); }

  Handle(GEOM_Function) GetShape() { return _func->GetReference(VARFILLET_ARG_SH); }

  void SetEdgesArray(const Handle(TColStd_HArray1OfInteger)& theArray) {_func->SetIntegerArray(VARFILLET_ARG_EDGE_ARRAY, theArray);}
  Handle(TColStd_HArray1OfInteger) GetEdgesArray() { return _func->GetIntegerArray(VARFILLET_ARG_EDGE_ARRAY); }

  void SetParamsArray(const Handle(TColStd_HArray1OfReal)& theArray) {_func->SetRealArray(VARFILLET_ARG_PARAMS_ARRAY, theArray);}
  void SetParamsArray(const Handle(TColStd_HArray1OfAsciiString)& theArray) {_func->SetRealArray(VARFILLET_ARG_PARAMS_ARRAY, theArray);}
  Handle(TColStd_HArray1OfReal) GetParamsArray() { return _func->GetRealArray(VARFILLET_ARG_PARAMS_ARRAY); }

  void SetRadiusArray(const Handle(TColStd_HArray1OfReal)& theArray) {_func->SetRealArray(VARFILLET_ARG_RADIUS_ARRAY, theArray);}
  void SetRadiusArray(const Handle(TColStd_HArray1OfAsciiString)& theArray) {_func->SetRealArray(VARFILLET_ARG_RADIUS_ARRAY, theArray);}
  Handle(TColStd_HArray1OfReal) GetRadiusArray() { return _func->GetRealArray(VARFILLET_ARG_RADIUS_ARRAY); }

 private:

  Handle(GEOM_Function) _func;
};
