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

#ifndef _GEOMImpl_IBasicOperations_HXX_
#define _GEOMImpl_IBasicOperations_HXX_

//#include "Utils_SALOME_Exception.hxx"
#include "GEOM_IOperations.hxx"
#include "GEOM_Engine.hxx"
#include "GEOM_Object.hxx"
#include <TDocStd_Document.hxx>

class GEOMImpl_IBasicOperations : public GEOM_IOperations {
 public:
  Standard_EXPORT GEOMImpl_IBasicOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_IBasicOperations();

  // Point
  Standard_EXPORT Handle(GEOM_Object) MakePointXYZ (double theX, double theY, double theZ);

  Standard_EXPORT Handle(GEOM_Object) MakePointWithReference (Handle(GEOM_Object) theReference,
                                              double theX, double theY, double theZ);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnCurve (Handle(GEOM_Object) theCurve,
                                                        double theParameter);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnCurveByLength (Handle(GEOM_Object) theCurve,
								double              theLength,
								Handle(GEOM_Object) theStartPoint);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnCurveByCoord (Handle(GEOM_Object) theCurve,
                                                               double theXParam,
                                                               double theYParam,
                                                               double theZParam);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnLinesIntersection
                                      (Handle(GEOM_Object) theLine1, Handle(GEOM_Object) theLine2);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnSurface (Handle(GEOM_Object) theSurface,
                                                          double theUParameter,
                                                          double theVParameter);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnSurfaceByCoord (Handle(GEOM_Object) theSurface,
                                                                 double theXParam,
                                                                 double theYParam,
                                                                 double theZParam);

  // Vector
  Standard_EXPORT Handle(GEOM_Object) MakeVectorDXDYDZ (double theDX, double theDY, double theDZ);

  Standard_EXPORT Handle(GEOM_Object) MakeVectorTwoPnt (Handle(GEOM_Object) thePnt1,
                                        Handle(GEOM_Object) thePnt2);

  Standard_EXPORT Handle(GEOM_Object) MakeTangentOnCurve(const Handle(GEOM_Object)& theCurve, 
                                                         double theParameter);

  // Line
  Standard_EXPORT Handle(GEOM_Object) MakeLineTwoPnt (Handle(GEOM_Object) thePnt1,
                                      Handle(GEOM_Object) thePnt2);

  Standard_EXPORT Handle(GEOM_Object) MakeLineTwoFaces (Handle(GEOM_Object) theFace1,
                                      Handle(GEOM_Object) theFace2);

  Standard_EXPORT Handle(GEOM_Object) MakeLine (Handle(GEOM_Object) thePnt,
                                Handle(GEOM_Object) theDir);

  // Plane
  Standard_EXPORT Handle(GEOM_Object) MakePlaneThreePnt (Handle(GEOM_Object) thePnt1,
                                         Handle(GEOM_Object) thePnt2,
                                         Handle(GEOM_Object) thePnt3,
                                         double theSize);

  Standard_EXPORT Handle(GEOM_Object) MakePlanePntVec (Handle(GEOM_Object) thePnt,
                                       Handle(GEOM_Object) theVec,
                                       double theSize);

  Standard_EXPORT Handle(GEOM_Object) MakePlaneFace (Handle(GEOM_Object) theFace, double theSize);
  
  Standard_EXPORT Handle(GEOM_Object) MakePlane2Vec (Handle(GEOM_Object) theVec1,
                                                     Handle(GEOM_Object) theVec2,
                                                     double theSize);
                                                     
  Standard_EXPORT Handle(GEOM_Object) MakePlaneLCS (Handle(GEOM_Object) theFace, double theSize, int theOrientation);

  // Marker
  Standard_EXPORT Handle(GEOM_Object) MakeMarker (double theOX,  double theOY,  double theOZ,
                                  double theXDX, double theXDY, double theXDZ,
                                  double theYDX, double theYDY, double theYDZ);
				  
  Standard_EXPORT Handle(GEOM_Object) MakeMarkerFromShape (const Handle(GEOM_Object)& theShape);
  
  Standard_EXPORT Handle(GEOM_Object) MakeMarkerPntTwoVec (const Handle(GEOM_Object)& theOrigin,
                                                           const Handle(GEOM_Object)& theXVec,
                                                           const Handle(GEOM_Object)& theYVec);

  Standard_EXPORT Handle(GEOM_Object) MakeTangentPlaneOnFace(const Handle(GEOM_Object)& theFace,
                                                             double theParamU,
                                                             double theParamV,
                                                             double theSize);

  private:
  // Private methods

  //! Enumeration describes point position on geometric object (curve or surface)
  //! Point location can be determined by parameter (or U, V parameters) or 3D coordinates
  enum PointLocation
  { 
    PointOn_CurveByParam,
    PointOn_CurveByCoord,
    PointOn_CurveByLength,   
    PointOn_SurfaceByParam,
    PointOn_SurfaceByCoord
  };

  Handle(GEOM_Object) makePointOnGeom (Handle(GEOM_Object) theGeomObj,
                                       double theParam1,
                                       double theParam2,
                                       double theParam3,
                                       const PointLocation theLocation,
				       Handle(GEOM_Object) theRefPoint = 0);
};

#endif
