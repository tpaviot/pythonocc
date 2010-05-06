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
//NOTE: This is an intreface to a function for the Offset creation.


#include "SGEOM_Function.hxx"

#define OFF_ARG_SHAPE 1
#define OFF_ARG_VALUE 2
#define OFF_ARG_ALT_VALUE 3

class GEOMImpl_IOffset
{
 public:

  GEOMImpl_IOffset(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShape(Handle(GEOM_Function) theShape) { _func->SetReference(OFF_ARG_SHAPE, theShape); }

  Handle(GEOM_Function) GetShape() { return _func->GetReference(OFF_ARG_SHAPE); }

  void SetValue(double theValue) { _func->SetReal(OFF_ARG_VALUE, theValue); }
  void SetValue(const TCollection_AsciiString& theValue) { _func->SetReal(OFF_ARG_VALUE, theValue); }

  double GetValue() { return _func->GetReal(OFF_ARG_VALUE); }

  void SetAltValue(double theValue) { _func->SetReal(OFF_ARG_ALT_VALUE, theValue); }
  void SetAltValue(const TCollection_AsciiString& theValue) { _func->SetReal(OFF_ARG_ALT_VALUE, theValue); }

  double GetAltValue() { return _func->GetReal(OFF_ARG_ALT_VALUE); }

 private:

  Handle(GEOM_Function) _func;
};
