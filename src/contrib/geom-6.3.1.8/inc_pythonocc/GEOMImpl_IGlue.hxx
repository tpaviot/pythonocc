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
// NOTE: This is an interface to a function for the Glueing of faces


#include "SGEOM_Function.hxx"

#include <TColStd_HSequenceOfTransient.hxx>

#define GLUE_ARG_BASE   1
#define GLUE_ARG_TOLER  2
#define GLUE_ARG_FACES  3
#define GLUE_ARG_KEEPALL 4
#define GLUE_ARG_GLUEEDG 5

class GEOMImpl_IGlue
{
 public:

  GEOMImpl_IGlue(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetBase(Handle(GEOM_Function) theRefBase)
  { _func->SetReference(GLUE_ARG_BASE, theRefBase); }

  Handle(GEOM_Function) GetBase() { return _func->GetReference(GLUE_ARG_BASE); }

  void SetTolerance(const Standard_Real theTolerance)
  { _func->SetReal(GLUE_ARG_TOLER, theTolerance); }

  Standard_Real GetTolerance() { return _func->GetReal(GLUE_ARG_TOLER); }

  void SetFaces(const Handle(TColStd_HSequenceOfTransient)& theShapes)
  { _func->SetReferenceList(GLUE_ARG_FACES, theShapes); }

  Handle(TColStd_HSequenceOfTransient) GetFaces()
  { return _func->GetReferenceList(GLUE_ARG_FACES); }

  void SetKeepNonSolids (Standard_Boolean theFlag) { _func->SetInteger(GLUE_ARG_KEEPALL, theFlag ? 1 : 0); }
  Standard_Boolean GetKeepNonSolids() { return (_func->GetInteger(GLUE_ARG_KEEPALL) != 0); }

  void SetGlueAllEdges (Standard_Boolean theFlag) { _func->SetInteger(GLUE_ARG_GLUEEDG, theFlag ? 1 : 0); }
  Standard_Boolean GetGlueAllEdges() { return (_func->GetInteger(GLUE_ARG_GLUEEDG) != 0); }

 private:

  Handle(GEOM_Function) _func;
};
