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

// File:      ShHealOper_FillHoles.hxx
// Created:   26.04.04 17:15:10
// Author:    Galina KULIKOVA
//
#ifndef ShHealOper_FillHoles_HeaderFile
#define ShHealOper_FillHoles_HeaderFile

#include <MMgt_TShared.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_SequenceOfShape.hxx>
#include <TopoDS_Wire.hxx>
#include <TColGeom2d_HArray1OfCurve.hxx>
#include <Geom_Surface.hxx>
#include <TColStd_HArray1OfInteger.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <ShHealOper_Tool.hxx>
#include <TopTools_HSequenceOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

///  Class ShHealOper_FillHoles
//Intended for filling holes.

class ShHealOper_FillHoles : public ShHealOper_Tool
{
 public:
  // ---------- PUBLIC METHODS ----------

  Standard_EXPORT ShHealOper_FillHoles ();
  // Empty constructor initializes class by default parameters.
  
  Standard_EXPORT ShHealOper_FillHoles (const TopoDS_Shape& theShape);

  Standard_EXPORT virtual void Init(const TopoDS_Shape& theShape);
  //Method for initalization by whole shape.
  
  Standard_EXPORT void InitParameters(Standard_Integer theDegree = 3,//3(2)
                                 Standard_Integer theNbPtsOnCur =5,//3,
                                 Standard_Integer theNbIter = 12,//3
                                 Standard_Real theTol3d = 0.0001,//0.001,
                                 Standard_Real theTol2d = 1.e-5,
                                 Standard_Real theTolAng = 0.01,
                                 Standard_Real theTolCrv = 0.01,
                                 Standard_Integer theMaxDeg = 8,
                                 Standard_Integer theMaxSeg =9);
  //Initialization of the parameters for creation of the surface by GeomPlate.

  Standard_EXPORT Standard_Boolean Fill();
  //Fill all holes detectected as free boundaries.
  
   Standard_EXPORT Standard_Boolean Fill(const TopTools_SequenceOfShape& theFillShapes);
  //Fill hole specified by wires or edges.


 private:
  // ---------- PRIVATE METHODS ----------
  
  Standard_Boolean prepareWires(const TopTools_SequenceOfShape& theFillShapes,
                                Handle(TopTools_HSequenceOfShape)& theSeqWires);

  Handle(Geom_Surface) buildSurface(const TopoDS_Wire& theWire,
                                    Handle(TColGeom2d_HArray1OfCurve)& theCurves2d,
                                    Handle(TColStd_HArray1OfInteger)& theOrders,
                                    Handle(TColStd_HArray1OfInteger)& theSenses);
  
  Standard_Boolean addFace(const Handle(Geom_Surface)& theSurf,
                           const TopoDS_Wire& theWire,
                           const Handle(TColGeom2d_HArray1OfCurve)& theCurves2d,
                           const Handle(TColStd_HArray1OfInteger)& theOrders,
                           const Handle(TColStd_HArray1OfInteger)& theSenses);

  void getResShape(const TopoDS_Shape& theAddShape,
                   const TopTools_IndexedMapOfShape& aMapParent,
                   const Standard_Boolean theHasShell);
 private:
  // ---------- PRIVATE FIELDS ----------

  TopTools_IndexedDataMapOfShapeListOfShape myEdgeShells;
  
  TopTools_IndexedDataMapOfShapeListOfShape myEdgeComps;
  TopTools_IndexedDataMapOfShapeListOfShape myEdgeFaces;
  Standard_Integer myNbPtsOnCur;
  Standard_Integer myNbIter;
  Standard_Integer myDegree;
  Standard_Real myTol2d;
  Standard_Real  myTol3d;
  Standard_Real myTolAng;
  Standard_Real myTolCrv;
  Standard_Integer  myMaxDeg;
  Standard_Integer myMaxSeg;
 public:
// Declaration of CASCADE RTTI
//DEFINE_STANDARD_RTTI (ShHealOper_FillHoles)
};

// Definition of HANDLE object using Standard_DefineHandle.hxx
//DEFINE_STANDARD_HANDLE (ShHealOper_FillHoles, )


#endif
