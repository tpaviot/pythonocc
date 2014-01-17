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
//
// File:      ShHealOper_RemoveInternalWires.hxx
// Created:   26.04.04 11:22:26
// Author:    Galina KULIKOVA


#ifndef ShHealOper_RemoveInternalWires_HeaderFile
#define ShHealOper_RemoveInternalWires_HeaderFile

#include <MMgt_TShared.hxx>
#include <ShHealOper_Tool.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_SequenceOfShape.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Wire.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>

//  Class ShHealOper_RemoveInternalWires

//! Intended for removing internal wires from faces.
class ShHealOper_RemoveInternalWires : public ShHealOper_Tool
{
 public:
  // ---------- PUBLIC METHODS ----------

  //! Empty constructor
  Standard_EXPORT ShHealOper_RemoveInternalWires () {}

  //! Constructor for initalization by whole shape.
  Standard_EXPORT ShHealOper_RemoveInternalWires (const TopoDS_Shape& theShape);

  //!Method for initalization by whole shape.
  Standard_EXPORT virtual void Init(const TopoDS_Shape& theShape);

  //!Removes all internal wires from all faces of the shape
  Standard_EXPORT Standard_Boolean Remove();
  
  //!Removes wires specified in the sequence of shapes or internal wires
  //!belonging faces specified in the sequence of shape.
  Standard_EXPORT Standard_Boolean Remove(const TopTools_SequenceOfShape& theRemovedShapes);

 private:
  // ---------- PRIVATE METHODS ----------
  
  Standard_Boolean removeWire(const TopoDS_Face& theFace, 
                              const TopoDS_Wire& theWire);
  void fixShape(const TopoDS_Shape& theShape );

 private:
  // ---------- PRIVATE FIELDS ----------
  TopTools_IndexedDataMapOfShapeListOfShape myMapWiresFace;



 public:
// Declaration of CASCADE RTTI
//DEFINE_STANDARD_RTTI (ShHealOper_RemoveInternalWires)
};

// Definition of HANDLE object using Standard_DefineHandle.hxx
//DEFINE_STANDARD_HANDLE (ShHealOper_RemoveInternalWires, )


#endif
