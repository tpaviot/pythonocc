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
//NOTE: This is an interface to a function for the Draft creation.


#include "GEOM_Function.hxx"

#define DRAFT_ARG_SHAPE     1
#define DRAFT_ARG_PLANE     2
#define DRAFT_ARG_STAIND    3
#define DRAFT_ARG_ANG       4
#define DRAFT_ARG_FACE_LEN  5
#define DRAFT_ARG_FACE_LAST 6

class GEOMImpl_IDraft
{
 public:

  GEOMImpl_IDraft(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShape(Handle(GEOM_Function) theRef) { _func->SetReference(DRAFT_ARG_SHAPE, theRef); }
  Handle(GEOM_Function) GetShape() { return _func->GetReference(DRAFT_ARG_SHAPE); }

  void SetPlane(Handle(GEOM_Function) theRef) { _func->SetReference(DRAFT_ARG_PLANE, theRef); }
  Handle(GEOM_Function) GetPlane() { return _func->GetReference(DRAFT_ARG_PLANE); }

  void SetStationary(int theFaceIndex) { _func->SetInteger(DRAFT_ARG_STAIND, theFaceIndex); }
  int GetStationary() { return _func->GetInteger(DRAFT_ARG_STAIND); }

  void SetAngle (const double& theAngle) { _func->SetReal(DRAFT_ARG_ANG, theAngle); }
  void SetAngle (const TCollection_AsciiString& theAngle) { _func->SetReal(DRAFT_ARG_ANG, theAngle); }
  double GetAngle () { return _func->GetReal(DRAFT_ARG_ANG); }

  void SetLength(int theLen) { _func->SetInteger(DRAFT_ARG_FACE_LEN, theLen); }
  int GetLength() { return _func->GetInteger(DRAFT_ARG_FACE_LEN); }

  void SetFace(int theInd, int theFaceIndex)
			  { _func->SetInteger(DRAFT_ARG_FACE_LAST + theInd, theFaceIndex); }
  int GetFace(int theInd) { return _func->GetInteger(DRAFT_ARG_FACE_LAST + theInd); }

 private:

  Handle(GEOM_Function) _func;
};
