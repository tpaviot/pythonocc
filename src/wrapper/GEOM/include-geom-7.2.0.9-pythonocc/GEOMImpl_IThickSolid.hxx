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
//NOTE: This is an interface to a function for the ThickSolid and creation.

#include "SGEOM_Function.hxx"

#define THICKSOLID_ARG_SH   	1
#define THICKSOLID_ARG_OFFSET	2
#define THICKSOLID_ARG_LENG 	3
#define THICKSOLID_ARG_LAST 	3

class GEOMImpl_IThickSolid
{
 public:

  GEOMImpl_IThickSolid(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShape(Handle(GEOM_Function) theRef) { _func->SetReference(THICKSOLID_ARG_SH, theRef); }

  Handle(GEOM_Function) GetShape() { return _func->GetReference(THICKSOLID_ARG_SH); }

  void SetOffset(const double& theOffset) { _func->SetReal(THICKSOLID_ARG_OFFSET, theOffset); }
  void SetOffset(const TCollection_AsciiString& theOffset) { _func->SetReal(THICKSOLID_ARG_OFFSET, theOffset); }

  double GetOffset() { return _func->GetReal(THICKSOLID_ARG_OFFSET); }

  void SetLength(int theLen) { _func->SetInteger(THICKSOLID_ARG_LENG, theLen); }
  void SetLength(const TCollection_AsciiString& theLen) { _func->SetInteger(THICKSOLID_ARG_LENG, theLen); }

  int GetLength() { return _func->GetInteger(THICKSOLID_ARG_LENG); }

  void SetFace(int theInd, int theFace)
			  { _func->SetInteger(THICKSOLID_ARG_LAST + theInd, theFace); }

  int GetFace(int theInd) { return _func->GetInteger(THICKSOLID_ARG_LAST + theInd); }

 private:

  Handle(GEOM_Function) _func;
};
