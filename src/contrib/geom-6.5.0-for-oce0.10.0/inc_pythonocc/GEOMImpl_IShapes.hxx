// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
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

//  NOTE: This is an interface to a function for the Shapes
//  (Edge, Wire, Face, Shell, Solid and Compound) creation.

#include "SGEOM_Function.hxx"

#include "TColStd_HSequenceOfTransient.hxx"
#include "TColStd_HArray1OfInteger.hxx"

#define SHAPE_ARG_SHAPES    1 // for Wire, Shell, Solid and Compound
#define SHAPE_ARG_BASE      2 // for Face, Solid and Sub-shape
#define SHAPE_ARG_PLANAR    3 // for Face
#define SHAPE_ARG_SUBTYPE   4 // for Sub-shape
#define SHAPE_ARG_INDICES   5 // for Sub-shape
#define SHAPE_ARG_TOLERANCE 6 // linear tolerance (for Wire, Edge)
#define SHAPE_ARG_ANGLE_TOL 7 // angular tolerance (for Edge)

class GEOMImpl_IShapes
{
 public:
  GEOMImpl_IShapes(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShapes(const Handle(TColStd_HSequenceOfTransient)& theShapes)
  { _func->SetReferenceList(SHAPE_ARG_SHAPES, theShapes); }

  Handle(TColStd_HSequenceOfTransient) GetShapes()
  { return _func->GetReferenceList(SHAPE_ARG_SHAPES); }

  void SetBase(Handle(GEOM_Function) theRefBase)
  { _func->SetReference(SHAPE_ARG_BASE, theRefBase); }

  Handle(GEOM_Function) GetBase() { return _func->GetReference(SHAPE_ARG_BASE); }

  void SetIsPlanar(const Standard_Boolean isPlanarWanted)
  { _func->SetInteger(SHAPE_ARG_PLANAR, isPlanarWanted ? 1 : 0); }

  Standard_Boolean GetIsPlanar() { return (_func->GetInteger(SHAPE_ARG_PLANAR) == 1); }

  void SetSubShapeType(const Standard_Integer theType)
  { _func->SetInteger(SHAPE_ARG_SUBTYPE, theType); }

  Standard_Integer GetSubShapeType() { return _func->GetInteger(SHAPE_ARG_SUBTYPE); }

  void SetIndices(const Handle(TColStd_HArray1OfInteger)& theIndices)
  { _func->SetIntegerArray(SHAPE_ARG_INDICES, theIndices); }

  Handle(TColStd_HArray1OfInteger) GetIndices()
  { return _func->GetIntegerArray(SHAPE_ARG_INDICES); }

  void SetTolerance(const Standard_Real theValue)
  { _func->SetReal(SHAPE_ARG_TOLERANCE, theValue); }

  Standard_Real GetTolerance() { return _func->GetReal(SHAPE_ARG_TOLERANCE); }

  void SetAngularTolerance(const Standard_Real theValue)
  { _func->SetReal(SHAPE_ARG_ANGLE_TOL, theValue); }

  Standard_Real GetAngularTolerance() { return _func->GetReal(SHAPE_ARG_ANGLE_TOL); }

 private:

  Handle(GEOM_Function) _func;
};
