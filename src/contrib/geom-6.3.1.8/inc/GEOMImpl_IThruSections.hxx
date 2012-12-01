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
//NOTE: This is an intreface to a function for the Pipe creation.


#include "GEOM_Function.hxx"
#include <TColStd_HSequenceOfTransient.hxx>


#define THRUSECTIONS_LIST_SECTIONS 1
#define THRUSECTIONS_SOLIDMODE 2
#define THRUSECTIONS_PRECISION 3

class GEOMImpl_IThruSections
{
 public:

  GEOMImpl_IThruSections(const Handle(GEOM_Function)& theFunction): _func(theFunction) {}

  void SetSections (const Handle(TColStd_HSequenceOfTransient)& theSections) 
  { _func->SetReferenceList(THRUSECTIONS_LIST_SECTIONS,theSections); }

  Handle(TColStd_HSequenceOfTransient) GetSections ()
  { return _func->GetReferenceList(THRUSECTIONS_LIST_SECTIONS); }

  void SetSolidMode(int theSolidMode)
  { _func->SetInteger(THRUSECTIONS_SOLIDMODE,theSolidMode); }

  int GetSolidMode()
  { return _func->GetInteger(THRUSECTIONS_SOLIDMODE); }

  void SetPrecision(double thePreci)
  { _func->SetReal(THRUSECTIONS_PRECISION,thePreci); }
  
  double GetPrecision()
  { return _func->GetReal(THRUSECTIONS_PRECISION);}

  
 private:

  Handle(GEOM_Function) _func;
};
