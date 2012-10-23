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

// File:      ShHealOper_Tool.hxx
// Created:   26.04.04 11:36:04
// Author:    Galina KULIKOVA
//
#ifndef ShHealOper_Tool_HeaderFile
#define ShHealOper_Tool_HeaderFile

#include <MMgt_TShared.hxx>
#include <ShapeBuild_ReShape.hxx>
#include <TopoDS_Shape.hxx>

///  Class ShHealOper_Tool
//
//enumeration for definition of the status of the error if operation failed
enum ShHealOper_Error {
  ShHealOper_NotError,
  ShHealOper_InvalidParameters,
  ShHealOper_ErrorExecution
};

class ShHealOper_Tool 
{
 public:
  // ---------- PUBLIC METHODS ----------

  /// Empty constructor
  Standard_EXPORT ShHealOper_Tool () ;

  Standard_EXPORT ShHealOper_Tool (const TopoDS_Shape& theShape);
  // Constructor initialized by shape from which faces will be removed.

  Standard_EXPORT virtual void Init(const TopoDS_Shape& theShape);
  //Method for initalization by whole shape.
  
  inline const TopoDS_Shape& GetResultShape() const
  {
    return myResultShape;

  }
  //Returns result shape.

  inline Standard_Boolean GetModifiedShape(const TopoDS_Shape& theOldShape,
                                           TopoDS_Shape& theNewShape) const
  {
    theNewShape = myContext->Apply(theOldShape);
    return (!theNewShape.IsSame(theOldShape));
  }
  //Returns modified shape obtained after operation from initial shape.

  inline Standard_Boolean IsDone() const 
  {
    return myDone;
  }
  //Returns status of the operation.
  
  inline void SetContext(Handle(ShapeBuild_ReShape)& theContext)
  {
    myContext = theContext;
  }
  //Initialization by context keeping modification of sub-shapes.

  inline Handle(ShapeBuild_ReShape) Context()
  {
    return myContext;
  }
  //Returns context keeping modification of sub-shapes

  inline Standard_Integer GetErrorStatus()
  {
    return myErrorStatus;
  }
 protected:
  // ---------- PROTECTED FIELDS ----------

  Handle(ShapeBuild_ReShape) myContext;
  TopoDS_Shape myInitShape;
  TopoDS_Shape myResultShape;
  Standard_Boolean myDone;
  ShHealOper_Error myErrorStatus;
 public:
// Declaration of CASCADE RTTI
//DEFINE_STANDARD_RTTI (ShHealOper_Tool)
};

// Definition of HANDLE object using Standard_DefineHandle.hxx
//DEFINE_STANDARD_HANDLE (ShHealOper_Tool, )


#endif
