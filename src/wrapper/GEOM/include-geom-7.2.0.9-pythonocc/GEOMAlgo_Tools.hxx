// Copyright (C) 2007-2013  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:        GEOMAlgo_Tools.hxx
// Created:     Mon Dec  6 11:35:29 2004
// Author:      Peter KURNEV

#ifndef _GEOMAlgo_Tools_HeaderFile
#define _GEOMAlgo_Tools_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Integer.hxx>
#include <Standard_Real.hxx>
#include <Handle_XIntTools_Context.hxx>
#include <Handle_Geom_Surface.hxx>
#include <TopoDS_Shape.hxx>
#include <GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include <XIntTools_Context.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <gp_Pnt.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Face.hxx>
#include <Geom_Surface.hxx>

//=======================================================================
//class    : GEOMAlgo_Tools
//purpose  :
//=======================================================================
class GEOMAlgo_Tools
 {
public:
  Standard_EXPORT
    static  Standard_Boolean IsCompositeShape(const TopoDS_Shape& aS) ;

  Standard_EXPORT
    static  Standard_Integer RefineSDShapes(GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape& aMSD,
                                            const Standard_Real aTol,
                                            const Handle(XIntTools_Context)& aCtx) ;

  Standard_EXPORT
    static  Standard_Integer FindSDShapes(const TopTools_ListOfShape& aLE,
                                          const Standard_Real aTol,
                                          TopTools_IndexedDataMapOfShapeListOfShape& aMEE,
                                          const Handle(XIntTools_Context)& aCtx) ;

  Standard_EXPORT
    static  Standard_Integer FindSDShapes(const TopoDS_Shape& aE1,
                                          const TopTools_ListOfShape& aLE,
                                          const Standard_Real aTol,
                                          TopTools_ListOfShape& aLESD,
                                          const Handle(XIntTools_Context)& aCtx) ;

  Standard_EXPORT
    static  Standard_Boolean ProjectPointOnShape(const gp_Pnt& aP1,
                                                 const TopoDS_Shape& aS,gp_Pnt& aP2,
                                                 const Handle(XIntTools_Context)& aCtx) ;

  Standard_EXPORT
    static  void PointOnShape(const TopoDS_Shape& aS,
                              gp_Pnt& aP3D) ;

  Standard_EXPORT
    static  void PointOnEdge(const TopoDS_Edge& aE,
                             gp_Pnt& aP3D) ;

  Standard_EXPORT
    static  void PointOnEdge(const TopoDS_Edge& aE,
                             const Standard_Real aT,gp_Pnt& aP3D) ;

  Standard_EXPORT
    static  void PointOnFace(const TopoDS_Face& aF,
                             gp_Pnt& aP3D) ;

  Standard_EXPORT
    static  void PointOnFace(const TopoDS_Face& aF,
                             const Standard_Real aU,
                             const Standard_Real aV,
                             gp_Pnt& aP3D) ;

  Standard_EXPORT
    static  void RefinePCurveForEdgeOnFace(const TopoDS_Edge& aE,
                                           const TopoDS_Face& aF,
                                           const Standard_Real aU1,
                                           const Standard_Real aU2) ;

  Standard_EXPORT
    static  Standard_Boolean IsUPeriodic(const Handle(Geom_Surface)& aS) ;

  Standard_EXPORT
    static  Standard_Boolean CorrectWires(const TopoDS_Shape& aS) ;

  Standard_EXPORT
    static  Standard_Integer BuildPCurveForEdgeOnFace(const TopoDS_Edge& aE,
                                                      const TopoDS_Edge& aEold,
                                                      const TopoDS_Face& aF,
                                                      const Handle(XIntTools_Context)& aCtx) ;

};
#endif
