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
//NOTE: This is an intreface to a function for the Archimede operation.


#include "SGEOM_Function.hxx"

#define ARG_WEIGHT   1  
#define ARG_DENSITY  2
#define ARG_DEFLECT  3 
#define ARG_SHAPE    4

class GEOMImpl_IArchimede
{
 public:
  
  GEOMImpl_IArchimede(Handle(GEOM_Function) theFunction): _func(theFunction) {}


  void SetWeight(const double& theWeight) { _func->SetReal(ARG_WEIGHT, theWeight); }
  void SetWeight(const TCollection_AsciiString& theWeight) { _func->SetReal(ARG_WEIGHT, theWeight); }
  
  Standard_Real GetWeight() { return _func->GetReal(ARG_WEIGHT); }

  void SetDensity(const double& theDensity) { _func->SetReal(ARG_DENSITY, theDensity); }
  void SetDensity(const TCollection_AsciiString& theDensity) { _func->SetReal(ARG_DENSITY, theDensity); }

  Standard_Real GetDensity() { return _func->GetReal(ARG_DENSITY); }

  void SetDeflection(const double& theDeflection) { _func->SetReal(ARG_DEFLECT, theDeflection); }
  void SetDeflection(const TCollection_AsciiString& theDeflection) { _func->SetReal(ARG_DEFLECT, theDeflection); }

  Standard_Real GetDeflection() { return _func->GetReal(ARG_DEFLECT); }
  
  void SetBasicShape(Handle(GEOM_Function) theShape) { _func->SetReference(ARG_SHAPE, theShape); }

  Handle(GEOM_Function) GetBasicShape() { return _func->GetReference(ARG_SHAPE); }
  
 private:
  
  Handle(GEOM_Function) _func;  
};
