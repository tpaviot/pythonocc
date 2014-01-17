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

#ifndef _BlockFix_PeriodicSurfaceModifier_HeaderFile
#define _BlockFix_PeriodicSurfaceModifier_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>

#include <BlockFix_PeriodicSurfaceModifier.hxx>

#include <Standard_Real.hxx>
#include <TopTools_DataMapOfShapeInteger.hxx>
#include <TColStd_IndexedMapOfTransient.hxx>
#include <BRepTools_Modification.hxx>
#include <Standard_Boolean.hxx>
#include <Handle_Geom_Surface.hxx>
#include <Handle_Geom_Curve.hxx>
#include <Handle_Geom2d_Curve.hxx>
#include <GeomAbs_Shape.hxx>

class TopoDS_Face;
class Geom_Surface;
class TopLoc_Location;
class TopoDS_Edge;
class Geom_Curve;
class TopoDS_Vertex;
class gp_Pnt;
class Geom2d_Curve;

DEFINE_STANDARD_HANDLE(BlockFix_PeriodicSurfaceModifier, BRepTools_Modification);

class BlockFix_PeriodicSurfaceModifier : public BRepTools_Modification {

public:
  Standard_EXPORT BlockFix_PeriodicSurfaceModifier();
  Standard_EXPORT ~BlockFix_PeriodicSurfaceModifier();

  Standard_EXPORT void SetTolerance (const Standard_Real Toler) ;
  Standard_EXPORT Standard_Boolean NewSurface (const TopoDS_Face& F,
                                               Handle(Geom_Surface)& S,
                                               TopLoc_Location& L,
                                               Standard_Real& Tol,
                                               Standard_Boolean& RevWires,
                                               Standard_Boolean& RevFace);
  Standard_EXPORT Standard_Boolean NewCurve (const TopoDS_Edge& E,
                                             Handle(Geom_Curve)& C,
                                             TopLoc_Location& L,
                                             Standard_Real& Tol) ;
  Standard_EXPORT Standard_Boolean NewPoint (const TopoDS_Vertex& V, gp_Pnt& P, Standard_Real& Tol);
  Standard_EXPORT Standard_Boolean NewCurve2d (const TopoDS_Edge& E,
                                               const TopoDS_Face& F,
                                               const TopoDS_Edge& NewE,
                                               const TopoDS_Face& NewF,
                                               Handle(Geom2d_Curve)& C,
                                               Standard_Real& Tol);
  Standard_EXPORT Standard_Boolean NewParameter (const TopoDS_Vertex& V,
                                                 const TopoDS_Edge& E,
                                                 Standard_Real& P,
                                                 Standard_Real& Tol);
  Standard_EXPORT GeomAbs_Shape Continuity (const TopoDS_Edge& E,
                                            const TopoDS_Face& F1,
                                            const TopoDS_Face& F2,
                                            const TopoDS_Edge& NewE,
                                            const TopoDS_Face& NewF1,
                                            const TopoDS_Face& NewF2);

  DEFINE_STANDARD_RTTI(BlockFix_PeriodicSurfaceModifier);

private:
  Standard_Real myTolerance;
  TopTools_DataMapOfShapeInteger myMapOfFaces;
  TColStd_IndexedMapOfTransient myMapOfSurfaces;

};

#endif
