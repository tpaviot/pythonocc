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
//NOTE: This is an intreface to a function for the point creation.


#include "GEOM_Function.hxx"

#define ARG_X     1
#define ARG_Y     2
#define ARG_Z     3

#define ARG_REF   4

#define ARG_PARAM 5
#define ARG_CURVE 6

#define ARG_LINE1 7
#define ARG_LINE2 8 

#define ARG_SURFACE 9
#define ARG_PARAM2 10

class GEOMImpl_IPoint
{
 public:

  GEOMImpl_IPoint(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetX(const TCollection_AsciiString& theX) { _func->SetReal(ARG_X, theX); }
  void SetY(const TCollection_AsciiString& theY) { _func->SetReal(ARG_Y, theY); }
  void SetZ(const TCollection_AsciiString& theZ) { _func->SetReal(ARG_Z, theZ); }
  
  void SetX(const double theX) { _func->SetReal(ARG_X, theX); }
  void SetY(const double theY) { _func->SetReal(ARG_Y, theY); }
  void SetZ(const double theZ) { _func->SetReal(ARG_Z, theZ); }

  double GetX() { return _func->GetReal(ARG_X); }
  double GetY() { return _func->GetReal(ARG_Y); }
  double GetZ() { return _func->GetReal(ARG_Z); }

  void SetRef(Handle(GEOM_Function) theRefPoint) { _func->SetReference(ARG_REF, theRefPoint); }

  Handle(GEOM_Function) GetRef() { return _func->GetReference(ARG_REF); }

  void SetCurve(Handle(GEOM_Function) theRef) { _func->SetReference(ARG_CURVE, theRef); }

  Handle(GEOM_Function) GetCurve() { return _func->GetReference(ARG_CURVE); }

  void SetParameter(const double& theParam) { _func->SetReal(ARG_PARAM, theParam); }
  void SetParameter(const TCollection_AsciiString& theParam) { _func->SetReal(ARG_PARAM, theParam); }

  double GetParameter() { return _func->GetReal(ARG_PARAM); }

  void SetSurface(Handle(GEOM_Function) theRef) { _func->SetReference(ARG_SURFACE, theRef); }
  void SetLine1(Handle(GEOM_Function) theRef) { _func->SetReference(ARG_LINE1, theRef); }
  void SetLine2(Handle(GEOM_Function) theRef) { _func->SetReference(ARG_LINE2, theRef); }

  Handle(GEOM_Function) GetSurface() { return _func->GetReference(ARG_SURFACE); }
  Handle(GEOM_Function) GetLine1() { return _func->GetReference(ARG_LINE1); }
  Handle(GEOM_Function) GetLine2() { return _func->GetReference(ARG_LINE2); }

  void SetParameter2(double theParam) { _func->SetReal(ARG_PARAM2, theParam); }
  void SetParameter2(const TCollection_AsciiString& theParam) { _func->SetReal(ARG_PARAM2, theParam); }

  double GetParameter2() { return _func->GetReal(ARG_PARAM2); }
  
 private:

  Handle(GEOM_Function) _func;
};
