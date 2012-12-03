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
//NOTE: This is an interface to a function for the Sketcher creation.


#include "SGEOM_Function.hxx"

#include <TColStd_HArray1OfReal.hxx>

#define SKETCH_ARG_COORDS  1

class GEOMImpl_I3DSketcher
{
 public:

  GEOMImpl_I3DSketcher(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetCoordinates(const Handle(TColStd_HArray1OfAsciiString)& theValue)
              { _func->SetRealArray(SKETCH_ARG_COORDS, theValue); }

  Handle(TColStd_HArray1OfReal) GetCoordinates() { return _func->GetRealArray(SKETCH_ARG_COORDS); }

 private:

  Handle(GEOM_Function) _func;
};
