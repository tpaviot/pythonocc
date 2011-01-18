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
//NOTE: This is an intreface to a function for the Translate creation.


#include "GEOM_Function.hxx"

#define TRANSLATE_ARG_POINT1   1  
#define TRANSLATE_ARG_POINT2   2
#define TRANSLATE_ARG_VECTOR   3
#define TRANSLATE_ARG_ORIGINAL 6
#define TRANSLATE_ARG_STEP1    7
#define TRANSLATE_ARG_NBITER1  8
#define TRANSLATE_ARG_STEP2    9
#define TRANSLATE_ARG_NBITER2  10
#define TRANSLATE_ARG_VECTOR2  11
#define TRANSLATE_ARG_DX       12
#define TRANSLATE_ARG_DY       13
#define TRANSLATE_ARG_DZ       14
#define TRANSLATE_ARG_DISTANCE 15
#define TRANSLATE_ARG_RAIL     16

class GEOMImpl_ITranslate
{
 public:
  
  GEOMImpl_ITranslate(Handle(GEOM_Function) theFunction): _func(theFunction) {}
  
  void SetPoint1(Handle(GEOM_Function) thePoint1) { _func->SetReference(TRANSLATE_ARG_POINT1, thePoint1); }
  
  Handle(GEOM_Function) GetPoint1() { return _func->GetReference(TRANSLATE_ARG_POINT1); }
  
  void SetPoint2(Handle(GEOM_Function) thePoint2) { _func->SetReference(TRANSLATE_ARG_POINT2, thePoint2); }
  
  Handle(GEOM_Function) GetPoint2() { return _func->GetReference(TRANSLATE_ARG_POINT2); }
  
  void SetVector(Handle(GEOM_Function) theVector) { _func->SetReference(TRANSLATE_ARG_VECTOR, theVector); }
  
  Handle(GEOM_Function) GetVector() { return _func->GetReference(TRANSLATE_ARG_VECTOR); } 
  
  void SetOriginal(Handle(GEOM_Function) theOriginal) { _func->SetReference(TRANSLATE_ARG_ORIGINAL, theOriginal); }

  Handle(GEOM_Function) GetOriginal() { return _func->GetReference(TRANSLATE_ARG_ORIGINAL); }

  void SetStep1(double theStep) { return _func->SetReal(TRANSLATE_ARG_STEP1, theStep); }
  void SetStep1(const TCollection_AsciiString& theStep) { return _func->SetReal(TRANSLATE_ARG_STEP1, theStep); }

  double GetStep1() { return _func->GetReal(TRANSLATE_ARG_STEP1); }

  void SetNbIter1(int theNbIter) { _func->SetInteger(TRANSLATE_ARG_NBITER1, theNbIter); }
  void SetNbIter1(const TCollection_AsciiString& theNbIter) { _func->SetInteger(TRANSLATE_ARG_NBITER1, theNbIter); }

  int GetNbIter1() { return _func->GetInteger(TRANSLATE_ARG_NBITER1); } 

  void SetStep2(double theStep) { return _func->SetReal(TRANSLATE_ARG_STEP2, theStep); }
  void SetStep2(const TCollection_AsciiString& theStep) { return _func->SetReal(TRANSLATE_ARG_STEP2, theStep); }

  double GetStep2() { return _func->GetReal(TRANSLATE_ARG_STEP2); }

  void SetNbIter2(int theNbIter) { _func->SetInteger(TRANSLATE_ARG_NBITER2, theNbIter); }
  void SetNbIter2(const TCollection_AsciiString& theNbIter) { _func->SetInteger(TRANSLATE_ARG_NBITER2, theNbIter); }

  int GetNbIter2() { return _func->GetInteger(TRANSLATE_ARG_NBITER2); } 

  void SetVector2(Handle(GEOM_Function) theVector) { _func->SetReference(TRANSLATE_ARG_VECTOR2, theVector); }
  
  Handle(GEOM_Function) GetVector2() { return _func->GetReference(TRANSLATE_ARG_VECTOR2); } 

  void SetDX(double theDX) { return _func->SetReal(TRANSLATE_ARG_DX, theDX); }
  void SetDX(const TCollection_AsciiString& theDX) { return _func->SetReal(TRANSLATE_ARG_DX, theDX); }

  double GetDX() { return _func->GetReal(TRANSLATE_ARG_DX); }

  void SetDY(double theDY) { return _func->SetReal(TRANSLATE_ARG_DY, theDY); }
  void SetDY(const TCollection_AsciiString& theDY) { return _func->SetReal(TRANSLATE_ARG_DY, theDY); }

  double GetDY() { return _func->GetReal(TRANSLATE_ARG_DY); }

  void SetDZ(double theDZ) { return _func->SetReal(TRANSLATE_ARG_DZ, theDZ); }
  void SetDZ(const TCollection_AsciiString& theDZ) { return _func->SetReal(TRANSLATE_ARG_DZ, theDZ); }

  double GetDZ() { return _func->GetReal(TRANSLATE_ARG_DZ); }

  void SetDistance(double theDistance) { return _func->SetReal(TRANSLATE_ARG_DISTANCE, theDistance); }
  void SetDistance(const TCollection_AsciiString& theDistance) { return _func->SetReal(TRANSLATE_ARG_DISTANCE, theDistance); }

  double GetDistance() { return _func->GetReal(TRANSLATE_ARG_DISTANCE); }

  void SetRailShape(Handle(GEOM_Function) theRail) { _func->SetReference(TRANSLATE_ARG_RAIL, theRail); }

  Handle(GEOM_Function) GetRailShape() { return _func->GetReference(TRANSLATE_ARG_RAIL); }

 private:
  
  Handle(GEOM_Function) _func;  
};
