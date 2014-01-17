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
//NOTE: This is an intreface to a function for the Circle creation.


#include "SGEOM_Function.hxx"

#define CURVE_ARG_EDGE  1
#define CURVE_ARG_PAR   2
#define CURVE_ARG_TOOL  3

class GEOMImpl_ICurve
{
 public:

  GEOMImpl_ICurve(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetEdge(Handle(GEOM_Function) theE) { _func->SetReference(CURVE_ARG_EDGE, theE); }
  void SetTool(Handle(GEOM_Function) theT) { _func->SetReference(CURVE_ARG_TOOL, theT); }
  void SetPar(double theP) { _func->SetReal(CURVE_ARG_PAR, theP); }
  void SetPar(const TCollection_AsciiString& theP) { _func->SetReal(CURVE_ARG_PAR, theP); }

  Handle(GEOM_Function) GetEdge() { return _func->GetReference(CURVE_ARG_EDGE); }
  Handle(GEOM_Function) GetTool() { return _func->GetReference(CURVE_ARG_TOOL); }
  double GetPar() { return _func->GetReal(CURVE_ARG_PAR); }

 private:

  Handle(GEOM_Function) _func;
};
