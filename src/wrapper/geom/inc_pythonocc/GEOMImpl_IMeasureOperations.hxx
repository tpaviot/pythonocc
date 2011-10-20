//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
#ifndef _GEOMImpl_IMeasureOperations_HXX_
#define _GEOMImpl_IMeasureOperations_HXX_

#include "SGEOM_IOperations.hxx"

#include <BRepCheck_Analyzer.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_HSequenceOfShape.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TCollection_AsciiString.hxx>
#include <TColStd_HSequenceOfInteger.hxx>
#include <TColStd_HSequenceOfReal.hxx>
#include <gp_Ax3.hxx>
#include <Geom_Surface.hxx>
#include <Precision.hxx>

class GEOM_Engine;
class Handle(GEOM_Object);

class GEOMImpl_IMeasureOperations : public GEOM_IOperations {
 public:
  Standard_EXPORT GEOMImpl_IMeasureOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_IMeasureOperations();

  enum ShapeKind {
	SK_NO_SHAPE,

    // COMPOSITEs
    SK_COMPOUND,
    SK_COMPSOLID,
    SK_SHELL,
	SK_WIRE,

    // SOLIDs
    SK_SPHERE,       // full sphere
    SK_CYLINDER,     // cylinder
    SK_BOX,          // box with faces, parallel to global coordinate planes
    SK_ROTATED_BOX,  // other box
    SK_TORUS,        // full torus
    SK_CONE,         // cone
    SK_POLYHEDRON,   // solid, bounded by polygons
	SK_SOLID,        // other solid

    // FACEs
    SK_SPHERE2D,     // spherical face (closed)
    SK_CYLINDER2D,   // cylindrical face with defined height
    SK_TORUS2D,      // toroidal face (closed)
    SK_CONE2D,       // conical face with defined height
    SK_DISK_CIRCLE,  // planar, bounded by circle
    SK_DISK_ELLIPSE, // planar, bounded by ellipse
    SK_POLYGON,      // planar, bounded by segments
    SK_PLANE,        // infinite planar
    SK_PLANAR,       // other planar
	SK_FACE,         // other face

    // EDGEs
    SK_CIRCLE,       // full circle
    SK_ARC_CIRCLE,   // arc of circle
    SK_ELLIPSE,      // full ellipse
    SK_ARC_ELLIPSE,  // arc of ellipse
    SK_LINE,         // infinite segment
    SK_SEGMENT,      // segment
	SK_EDGE,         // other edge
	
    // VERTEX
    SK_VERTEX,
    // ADVANCED shapes
    SK_ADVANCED,     // all advanced shapes (temporary implementation)
  };

  Standard_EXPORT ShapeKind KindOfShape (Handle(GEOM_Object) theShape,
                                         Handle(TColStd_HSequenceOfInteger)& theIntegers,
                                         Handle(TColStd_HSequenceOfReal)&    theDoubles);

  Standard_EXPORT void GetPosition (Handle(GEOM_Object) theShape,
                                    Standard_Real& Ox, Standard_Real& Oy, Standard_Real& Oz,
                                    Standard_Real& Zx, Standard_Real& Zy, Standard_Real& Zz,
                                    Standard_Real& Xx, Standard_Real& Xy, Standard_Real& Xz);

  Standard_EXPORT Handle(GEOM_Object) GetCentreOfMass (Handle(GEOM_Object) theShape);

  Standard_EXPORT Handle(GEOM_Object) GetVertexByIndex (Handle(GEOM_Object) theShape,
                                                        Standard_Integer theIndex);

  Standard_EXPORT Handle(GEOM_Object) GetNormal (Handle(GEOM_Object) theFace,
                                                 Handle(GEOM_Object) theOptionalPoint);

  Standard_EXPORT void GetBasicProperties (Handle(GEOM_Object) theShape,
                                           Standard_Real& theLength,
                                           Standard_Real& theSurfArea,
                                           Standard_Real& theVolume);

  Standard_EXPORT void GetInertia (Handle(GEOM_Object) theShape,
                                   Standard_Real& I11, Standard_Real& I12, Standard_Real& I13,
                                   Standard_Real& I21, Standard_Real& I22, Standard_Real& I23,
                                   Standard_Real& I31, Standard_Real& I32, Standard_Real& I33,
                                   Standard_Real& Ix , Standard_Real& Iy , Standard_Real& Iz);

  Standard_EXPORT void GetBoundingBox (Handle(GEOM_Object) theShape,
                                       Standard_Real& Xmin, Standard_Real& Xmax,
                                       Standard_Real& Ymin, Standard_Real& Ymax,
                                       Standard_Real& Zmin, Standard_Real& Zmax);

  Standard_EXPORT void GetTolerance (Handle(GEOM_Object) theShape,
                                     Standard_Real& FaceMin, Standard_Real& FaceMax,
                                     Standard_Real& EdgeMin, Standard_Real& EdgeMax,
                                     Standard_Real& VertMin, Standard_Real& VertMax);

  Standard_EXPORT bool CheckShape (Handle(GEOM_Object)      theShape,
                                   const Standard_Boolean   theIsCheckGeom,
                                   TCollection_AsciiString& theDump);

  Standard_EXPORT TCollection_AsciiString IsGoodForSolid (Handle(GEOM_Object) theShape);

  Standard_EXPORT TCollection_AsciiString WhatIs (Handle(GEOM_Object) theShape);

  Standard_EXPORT std::vector<bool> AreCoordsInside (Handle(GEOM_Object) theShape,
                                                     const std::vector<double>& coords,
                                                     double tolerance = Precision::Confusion());

  Standard_EXPORT Standard_Real GetMinDistance (Handle(GEOM_Object) theShape1,
                                                Handle(GEOM_Object) theShape2,
                                                Standard_Real& X1, Standard_Real& Y1, Standard_Real& Z1,
                                                Standard_Real& X2, Standard_Real& Y2, Standard_Real& Z2);

  Standard_EXPORT void PointCoordinates (Handle(GEOM_Object) theShape,
                                         Standard_Real& theX, Standard_Real& theY, Standard_Real& theZ);

  Standard_EXPORT Standard_Real GetAngle (Handle(GEOM_Object) theLine1, Handle(GEOM_Object) theLine2);

  Standard_EXPORT Standard_Real GetAngleBtwVectors (Handle(GEOM_Object) theVec1, Handle(GEOM_Object) theVec2);


  // Methods for recieving radiuses of curvature of curves and surfaces
  // in the given point
  Standard_EXPORT Standard_Real CurveCurvatureByParam (Handle(GEOM_Object) theCurve,
                                                       Standard_Real& theParam);
  Standard_EXPORT Standard_Real CurveCurvatureByPoint (Handle(GEOM_Object) theCurve,
                                                       Handle(GEOM_Object) thePoint);
  Standard_EXPORT Standard_Real MaxSurfaceCurvatureByParam (Handle(GEOM_Object) theSurf,
                                                            Standard_Real& theUParam,
                                                            Standard_Real& theVParam);
  Standard_EXPORT Standard_Real MaxSurfaceCurvatureByPoint (Handle(GEOM_Object) theSurf,
                                                            Handle(GEOM_Object) thePoint);
  Standard_EXPORT Standard_Real MinSurfaceCurvatureByParam (Handle(GEOM_Object) theSurf,
                                                            Standard_Real& theUParam,
                                                            Standard_Real& theVParam);
  Standard_EXPORT Standard_Real MinSurfaceCurvatureByPoint (Handle(GEOM_Object) theSurf,
                                                            Handle(GEOM_Object) thePoint);

 public:
  Standard_EXPORT static gp_Ax3 GetPosition (const TopoDS_Shape& theShape);

 private:
  void StructuralDump (const BRepCheck_Analyzer& theAna,
                       const TopoDS_Shape&       theShape,
                       TCollection_AsciiString&  theDump);

  void GetProblemShapes (const BRepCheck_Analyzer&           theAna,
                         const TopoDS_Shape&                 theShape,
                         Handle(TopTools_HSequenceOfShape)&  sl,
                         Handle(TColStd_HArray1OfInteger)&   NbProblems,
                         TopTools_DataMapOfShapeListOfShape& theMap);

  void GetProblemSub (const BRepCheck_Analyzer&           theAna,
                      const TopoDS_Shape&                 theShape,
                      Handle(TopTools_HSequenceOfShape)&  sl,
                      Handle(TColStd_HArray1OfInteger)&   NbProblems,
                      const TopAbs_ShapeEnum              Subtype,
                      TopTools_DataMapOfShapeListOfShape& theMap);

  Standard_Real getSurfaceCurvatures (const Handle(Geom_Surface)& aSurf,
                                      Standard_Real theUParam,
                                      Standard_Real theVParam,
                                      Standard_Boolean theNeedMaxCurv);
};

#endif
