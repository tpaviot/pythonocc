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
//NOTE: This is an intreface to a function for the vector creation.


#include "GEOM_Function.hxx"

#define PLN_ARG_SIZE 1

#define PLN_ARG_PNT1 2
#define PLN_ARG_PNT2 3
#define PLN_ARG_PNT3 4

#define PLN_ARG_VEC 5

#define PLN_ARG_REF 6

#define PLN_ARG_PARAM_U 7

#define PLN_ARG_PARAM_V 8

#define PLN_ARG_VEC1    9
#define PLN_ARG_VEC2    10

#define PLN_ARG_ORIENT  11

#define PLN_ARG_LCS     12


class GEOMImpl_IPlane
{
 public:

  GEOMImpl_IPlane(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetSize(const double& theSize) { _func->SetReal(PLN_ARG_SIZE, theSize); }
  void SetSize(const TCollection_AsciiString& theSize) { _func->SetReal(PLN_ARG_SIZE, theSize); }

  double GetSize() { return _func->GetReal(PLN_ARG_SIZE); }
  
  void SetOrientation(double theOrientation) { _func->SetReal(PLN_ARG_ORIENT, theOrientation); }
  void SetOrientation(const TCollection_AsciiString& theOrientation) { _func->SetReal(PLN_ARG_ORIENT, theOrientation); }
  
  double GetOrientation() { return _func->GetReal(PLN_ARG_ORIENT); }

  void SetPoint (Handle(GEOM_Function) theRef) { _func->SetReference(PLN_ARG_PNT1, theRef); }
  void SetVector(Handle(GEOM_Function) theRef) { _func->SetReference(PLN_ARG_VEC , theRef); }
  void SetVector1(Handle(GEOM_Function) theRef) { _func->SetReference(PLN_ARG_VEC1 , theRef); }
  void SetVector2(Handle(GEOM_Function) theRef) { _func->SetReference(PLN_ARG_VEC2 , theRef); }

  void SetFace  (Handle(GEOM_Function) theRef) { _func->SetReference(PLN_ARG_REF , theRef); }
  void SetLCS   (Handle(GEOM_Function) theRef) { _func->SetReference(PLN_ARG_LCS , theRef); }

  void SetPoint1(Handle(GEOM_Function) theRef) { _func->SetReference(PLN_ARG_PNT1, theRef); }
  void SetPoint2(Handle(GEOM_Function) theRef) { _func->SetReference(PLN_ARG_PNT2, theRef); }
  void SetPoint3(Handle(GEOM_Function) theRef) { _func->SetReference(PLN_ARG_PNT3, theRef); }

  Handle(GEOM_Function) GetPoint () { return _func->GetReference(PLN_ARG_PNT1); }
  Handle(GEOM_Function) GetVector() { return _func->GetReference(PLN_ARG_VEC ); }
  Handle(GEOM_Function) GetVector1() { return _func->GetReference(PLN_ARG_VEC1 ); }
  Handle(GEOM_Function) GetVector2() { return _func->GetReference(PLN_ARG_VEC2 ); }


  Handle(GEOM_Function) GetFace  () { return _func->GetReference(PLN_ARG_REF ); }
  Handle(GEOM_Function) GetLCS   () { return _func->GetReference(PLN_ARG_LCS ); }
  
  Handle(GEOM_Function) GetPoint1() { return _func->GetReference(PLN_ARG_PNT1); }
  Handle(GEOM_Function) GetPoint2() { return _func->GetReference(PLN_ARG_PNT2); }
  Handle(GEOM_Function) GetPoint3() { return _func->GetReference(PLN_ARG_PNT3); }
  
  void SetParameterU(const double& theParamU) { _func->SetReal(PLN_ARG_PARAM_U, theParamU); }
  void SetParameterU(const TCollection_AsciiString& theParamU) { _func->SetReal(PLN_ARG_PARAM_U, theParamU); }

  double GetParameterU() { return _func->GetReal(PLN_ARG_PARAM_U); }

  void SetParameterV(const double& theParamV) { _func->SetReal(PLN_ARG_PARAM_V, theParamV); }
  void SetParameterV(const TCollection_AsciiString& theParamV) { _func->SetReal(PLN_ARG_PARAM_V, theParamV); }

  double GetParameterV() { return _func->GetReal(PLN_ARG_PARAM_V); }

 private:

  Handle(GEOM_Function) _func;
};
