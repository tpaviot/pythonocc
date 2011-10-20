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
// File:      ShHealOper_ChangeOrientation.hxx
// Created:   11.07.06 11:22:26
// Author:    Sergey KUUL


#ifndef ShHealOper_ChangeOrientation_HeaderFile
#define ShHealOper_ChangeOrientation_HeaderFile

#include <MMgt_TShared.hxx>
#include <ShHealOper_Tool.hxx>
#include <TopoDS_Shape.hxx>

//  Class ShHealOper_ChangeOrientation

//! Intended for change orientation of given shape
//! if shape is Shell - create empty copy and put to it
//! each face as Reversed()
class ShHealOper_ChangeOrientation : public ShHealOper_Tool
{
 public:
  // ---------- PUBLIC METHODS ----------

  //! Empty constructor
  Standard_EXPORT ShHealOper_ChangeOrientation () {}

  //!Constructor for initalization by whole shape.
  Standard_EXPORT ShHealOper_ChangeOrientation (const TopoDS_Shape& theShape);
  
  //!Method for initalization by whole shape.
  Standard_EXPORT virtual void Init(const TopoDS_Shape& theShape);
  
  //!Change orientation
  Standard_EXPORT Standard_Boolean Perform();


 public:
// Declaration of CASCADE RTTI
//DEFINE_STANDARD_RTTI (ShHealOper_RemoveInternalWires)
};

// Definition of HANDLE object using Standard_DefineHandle.hxx
//DEFINE_STANDARD_HANDLE (ShHealOper_RemoveInternalWires, )


#endif
