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

#ifndef _GEOMImpl_IBasicOperations_HXX_
#define _GEOMImpl_IBasicOperations_HXX_

//#include "Utils_SALOME_Exception.hxx"
#include "GEOM_IOperations.hxx"
#include "GEOM_Engine.hxx"
#include "GEOM_Object.hxx"

#include <TDocStd_Document.hxx>

//!Interface class for basic geometric operations
class GEOMImpl_IBasicOperations : public GEOM_IOperations {

 public:
  Standard_EXPORT GEOMImpl_IBasicOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_IBasicOperations();

  //! Point
  Standard_EXPORT Handle(GEOM_Object) MakePointXYZ (const GEOM_Parameter& theX, const GEOM_Parameter& theY, const GEOM_Parameter& theZ);

  Standard_EXPORT Handle(GEOM_Object) MakePointWithReference (Handle(GEOM_Object) theReference,
											  const GEOM_Parameter& theX, const GEOM_Parameter& theY, const GEOM_Parameter& theZ);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnCurve (Handle(GEOM_Object) theCurve,
										const GEOM_Parameter& theParameter);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnCurveByCoord (Handle(GEOM_Object) theCurve,
                                                               const GEOM_Parameter& theXParam,
                                                               const GEOM_Parameter& theYParam,
                                                               const GEOM_Parameter& theZParam);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnLinesIntersection
                                      (Handle(GEOM_Object) theLine1, Handle(GEOM_Object) theLine2);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnSurface (Handle(GEOM_Object) theSurface,
														  const GEOM_Parameter& theUParameter,
														  const GEOM_Parameter& theVParameter);

  Standard_EXPORT Handle(GEOM_Object) MakePointOnSurfaceByCoord (Handle(GEOM_Object) theSurface,
                                                                 const GEOM_Parameter& theXParam,
                                                                 const GEOM_Parameter& theYParam,
                                                                 const GEOM_Parameter& theZParam);

  //! Vector
  Standard_EXPORT Handle(GEOM_Object) MakeVectorDXDYDZ (const GEOM_Parameter& theDX, const GEOM_Parameter& theDY, const GEOM_Parameter& theDZ);

  Standard_EXPORT Handle(GEOM_Object) MakeVectorTwoPnt (Handle(GEOM_Object) thePnt1,
                                        Handle(GEOM_Object) thePnt2);

  Standard_EXPORT Handle(GEOM_Object) MakeTangentOnCurve(const Handle(GEOM_Object)& theCurve,
							 const GEOM_Parameter& theParameter);

  Standard_EXPORT Handle(GEOM_Object) MakeVectorPntDXDYDZ(Handle(GEOM_Object) thePnt,
  							const GEOM_Parameter& theDX, const GEOM_Parameter& theDY, const GEOM_Parameter& theDZ);

  //! Line
  Standard_EXPORT Handle(GEOM_Object) MakeLineTwoPnt (Handle(GEOM_Object) thePnt1,
                                      Handle(GEOM_Object) thePnt2);

  Standard_EXPORT Handle(GEOM_Object) MakeLineTwoFaces (Handle(GEOM_Object) theFace1,
                                      Handle(GEOM_Object) theFace2);

  Standard_EXPORT Handle(GEOM_Object) MakeLine (Handle(GEOM_Object) thePnt,
                                Handle(GEOM_Object) theDir);

  //! Plane
  Standard_EXPORT Handle(GEOM_Object) MakePlaneThreePnt (Handle(GEOM_Object) thePnt1,
                                         Handle(GEOM_Object) thePnt2,
                                         Handle(GEOM_Object) thePnt3,
										 const GEOM_Parameter& theSize);

  Standard_EXPORT Handle(GEOM_Object) MakePlanePntVec (Handle(GEOM_Object) thePnt,
                                       Handle(GEOM_Object) theVec,
									   const GEOM_Parameter& theSize);

  Standard_EXPORT Handle(GEOM_Object) MakePlaneFace (Handle(GEOM_Object) theFace, const GEOM_Parameter& theSize);

  Standard_EXPORT Handle(GEOM_Object) MakePlane2Vec (Handle(GEOM_Object) theVec1,
                                                     Handle(GEOM_Object) theVec2,
                                                     const GEOM_Parameter& theSize);

  Standard_EXPORT Handle(GEOM_Object) MakePlaneLCS (Handle(GEOM_Object) theFace, const GEOM_Parameter& theSize, const GEOM_Parameter& theOrientation);


  //! Marker
  Standard_EXPORT Handle(GEOM_Object) MakeMarker (const GEOM_Parameter& theOX,  const GEOM_Parameter& theOY,  const GEOM_Parameter& theOZ,
								  const GEOM_Parameter& theXDX, const GEOM_Parameter& theXDY, const GEOM_Parameter& theXDZ,
								  const GEOM_Parameter& theYDX, const GEOM_Parameter& theYDY, const GEOM_Parameter& theYDZ);

  Standard_EXPORT Handle(GEOM_Object) MakeTangentPlaneOnFace(const Handle(GEOM_Object)& theFace,
								 const GEOM_Parameter& theParamU,
								 const GEOM_Parameter& theParamV,
							     const GEOM_Parameter& theSize);

  //! Face
  Standard_EXPORT Handle(GEOM_Object) MakeFaceThreePnt( const Handle(GEOM_Object) thePnt1, const Handle(GEOM_Object) thePnt2, 
  								const Handle(GEOM_Object) thePnt3 );
  
  Standard_EXPORT Handle(GEOM_Object) MakeFaceFourPnt( const Handle(GEOM_Object) thePnt1, const Handle(GEOM_Object) thePnt2, 
  								const Handle(GEOM_Object) thePnt3, const Handle(GEOM_Object) thePnt4 );

/*  Standard_EXPORT Handle(GEOM_Object) MakeFaceRectangle( const Handle(GEOM_Object) thePnt1, const Handle(GEOM_Object) thePnt2,
								 const Handle(GEOM_Object) thePnt3, const Handle(GEOM_Object) thePnt4 );*/

  private:
  // Private methods

  //! Enumeration describes point position on geometric object (curve or surface)
  //! Point location can be determined by parameter (or U, V parameters) or 3D coordinates
  enum PointLocation
  { 
    PointOn_CurveByParam,
    PointOn_CurveByCoord,
    PointOn_SurfaceByParam,
    PointOn_SurfaceByCoord
  };

  Handle(GEOM_Object) makePointOnGeom (Handle(GEOM_Object) theGeomObj,
                                       const GEOM_Parameter& theParam1,
                                       const GEOM_Parameter& theParam2,
                                       const GEOM_Parameter& theParam3,
                                       const PointLocation theLocation);
};
#endif
