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

// File:      ShHealOper_CloseContour.hxx
// Created:   20.04.04 10:25:46
// Author:    Galina KULIKOVA
//
#ifndef ShHealOper_CloseContour_HeaderFile
#define ShHealOper_CloseContour_HeaderFile

#include <MMgt_TShared.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_SequenceOfShape.hxx>
#include <TopoDS_Wire.hxx>
#include <BRepTools_ReShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <ShapeExtend_WireData.hxx>
#include <ShapeAnalysis_Wire.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <ShHealOper_Tool.hxx>
#include <TopoDS_Edge.hxx>
///  Class ShHealOper_CloseContour
//

class ShHealOper_CloseContour : public ShHealOper_Tool
{
 public:
  // ---------- PUBLIC METHODS ----------
  Standard_EXPORT ShHealOper_CloseContour() : ShHealOper_Tool() {}

  Standard_EXPORT ShHealOper_CloseContour (const TopoDS_Shape& theShape);
  //Initalizes by whole shape.

  Standard_EXPORT virtual void Init(const TopoDS_Shape& theShape);
   //Method for initalization by whole shape.

  Standard_EXPORT Standard_Boolean Perform(const TopTools_SequenceOfShape& theSeqEdges,
                          const Standard_Boolean theModeVertex = Standard_False,
                          const Standard_Boolean theModeFixGapsCurves = Standard_True);
                          
  //Build wire from specified edges and close gap between edges by segment of line
  // or by vertex in according to specified mode.

  Standard_EXPORT Standard_Boolean Perform(const TopoDS_Wire& theWire,
                          const Standard_Boolean theModeVertex= Standard_False,
                          const Standard_Boolean theModeFixGapsCurves = Standard_True);
                         
  //Close gap into specified wire by segment of line or by vertex in according 
  //to specified mode.
  
  inline void SetTolerance(const Standard_Real theTolerance)
  {
    myTolerance = theTolerance;
  }
  //Sets tolerance for checking closure of the contour.
 
  inline Standard_Real GetTolerance()
  {
    return  myTolerance;
  }
  //Returns value of the tolerance.
  
  inline void SetMaxTolerance(const Standard_Real theMaxTolerance)
  {
    myMaxTolerance = theMaxTolerance;
  }
  //Sets tolerance for checking closure of the contour.
 
  inline Standard_Real GetMaxTolerance()
  {
    return  myMaxTolerance;
  }
  //Returns value of the tolerance.

  inline void SetModeVertex(const Standard_Boolean theModeVertex)
  {
    myModeVertex = theModeVertex;
  }
  //Sets mode for closure of the contour.

  inline Standard_Boolean GetModeVertex() 
  {
    return myModeVertex;
  }
  //Get mode for closure of the contour.
  
  
 private:
  // ---------- PRIVATE METHODS ----------
  
  void build(Handle(ShapeExtend_WireData)& theSewd);
  
  Standard_Boolean fixGaps(const Handle(ShapeExtend_WireData)& theWire,
                           const TopTools_SequenceOfShape& theCommonFaces);

  Standard_Boolean checkOneFace(const Handle(ShapeExtend_WireData)& theSewd,
                                TopTools_SequenceOfShape& theCommonFaces) const;
  
  void buildEdge(const TopoDS_Edge& aE1, 
                 const TopoDS_Edge& aE2,
                 const TopTools_SequenceOfShape& theCommonFaces);

  void updateWire (Handle(ShapeExtend_WireData)& sbwd);
 private:
  // ---------- PRIVATE FIELDS ----------


  Standard_Boolean myModeVertex;
  Standard_Boolean myModeFixGapsCurves;
  
  Standard_Real myMaxTolerance;
  Standard_Real myTolerance;
  TopTools_IndexedDataMapOfShapeListOfShape myMapEdgesFace;
  TopTools_SequenceOfShape myFreeEdges;
 public:
// Declaration of CASCADE RTTI
//DEFINE_STANDARD_RTTI (ShHealOper_CloseContour)
};

// Definition of HANDLE object using Standard_DefineHandle.hxx
//DEFINE_STANDARD_HANDLE (ShHealOper_CloseContour, )


#endif
