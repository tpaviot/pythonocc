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

// File:      ShHealOper_EdgeDivide.hxx
// Created:   30.04.04 16:06:25
// Author:    Galina KULIKOVA
//
#ifndef ShHealOper_EdgeDivide_HeaderFile
#define ShHealOper_EdgeDivide_HeaderFile

#include <TColStd_HSequenceOfReal.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Shape.hxx>
#include <ShHealOper_Tool.hxx>
#include <TColStd_SequenceOfReal.hxx>

///  Class ShHealOper_EdgeDivide
//Intended for spitting edge in accordance to the specified mode and value.

class ShHealOper_EdgeDivide : public ShHealOper_Tool
{
 public:
  // ---------- PUBLIC METHODS ----------

  
  Standard_EXPORT ShHealOper_EdgeDivide () : ShHealOper_Tool() {}
  /// Empty constructor
 
  Standard_EXPORT ShHealOper_EdgeDivide (const TopoDS_Shape& theShape);
   /// Constructor initializes by shape.

  Standard_EXPORT virtual void Init(const TopoDS_Shape& theShape);
  //Method for initalization by whole shape.

  Standard_EXPORT Standard_Boolean Perform(const TopoDS_Shape& theEdge, 
                                           const Standard_Real theValue,
                                           const Standard_Boolean theDivideParamMode = Standard_True);
  //Performs spitting of the specified edge in the accoradnce to
  //specified mode and value.
  //If theDivideParamMode is equal to true edge will be splitted by parameter.
  //Else edge will be spliited by length (default true).
  //theValue is koefficient for splitting from 0 to 1.

  Standard_EXPORT Standard_Boolean Perform(const TopoDS_Shape& theEdge, 
                                           const TColStd_SequenceOfReal& theValues,
                                           const Standard_Boolean theDivideParamMode = Standard_True);
  //Performs spitting of the specified edge in the accoradnce to
  //specified mode and sequence of values the same way as previous.

 protected:
  // ---------- PROTECTED METHODS ----------


  Standard_Boolean build(const Handle(TColStd_HSequenceOfReal)& theValues);
  
  Standard_Boolean computeValues(const Handle(TColStd_HSequenceOfReal)& theValues,
                                 Standard_Boolean& theHas3d,
                                 Standard_Boolean& theHas2d,
                                 Standard_Boolean& hasPCurves);

 private:
  // ---------- PRIVATE FIELDS ----------

  TopTools_IndexedDataMapOfShapeListOfShape myMapEdgesFace;
  Standard_Boolean myDivideParamMode;
  TopoDS_Edge myEdge;

 public:
// Declaration of CASCADE RTTI
//DEFINE_STANDARD_RTTI (ShHealOper_EdgeDivide)
};

// Definition of HANDLE object using Standard_DefineHandle.hxx
//DEFINE_STANDARD_HANDLE (ShHealOper_EdgeDivide, )


#endif
