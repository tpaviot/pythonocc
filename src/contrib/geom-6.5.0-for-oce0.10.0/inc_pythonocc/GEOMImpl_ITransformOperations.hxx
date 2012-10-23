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

#ifndef _GEOMImpl_ITransformOperations_HXX_
#define _GEOMImpl_ITransformOperations_HXX_

//#include "Utils_SALOME_Exception.hxx"
#include "SGEOM_IOperations.hxx"
#include "SGEOM_Engine.hxx"
#include "SGEOM_Object.hxx"

#include <TDocStd_Document.hxx>
#include <TopoDS_Shape.hxx>

class GEOMImpl_ITranslate;
class GEOMImpl_IRotate;

class GEOMImpl_ITransformOperations : public GEOM_IOperations
{
 public:
  Standard_EXPORT GEOMImpl_ITransformOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_ITransformOperations();

  Standard_EXPORT Handle(GEOM_Object) TranslateTwoPoints (Handle(GEOM_Object) theObject,
                                                          Handle(GEOM_Object) thePoint1,
                                                          Handle(GEOM_Object) thePoint2);

  Standard_EXPORT Handle(GEOM_Object) TranslateTwoPointsCopy (Handle(GEOM_Object) theObject,
                                                              Handle(GEOM_Object) thePoint1,
                                                              Handle(GEOM_Object) thePoint2);

  Standard_EXPORT Handle(GEOM_Object) TranslateDXDYDZ (Handle(GEOM_Object) theObject,
                                                       double theX, double theY,  double theZ);

  Standard_EXPORT Handle(GEOM_Object) TranslateDXDYDZCopy (Handle(GEOM_Object) theObject,
                                                           double theX, double theY,  double theZ);

  Standard_EXPORT Handle(GEOM_Object) TranslateVector (Handle(GEOM_Object) theObject,
                                                       Handle(GEOM_Object) theVector);

  Standard_EXPORT Handle(GEOM_Object) TranslateVectorCopy (Handle(GEOM_Object) theObject,
                                                           Handle(GEOM_Object) theVector);

  Standard_EXPORT Handle(GEOM_Object) TranslateVectorDistance (Handle(GEOM_Object) theObject,
                                                               Handle(GEOM_Object) theVector,
                                                               double theDistance,
                                                               bool theCopy);

  Standard_EXPORT Handle(GEOM_Object) Translate1D (Handle(GEOM_Object) theObject,
                                                   Handle(GEOM_Object) theVector,
                                                   double theStep,
                                                   Standard_Integer theNbTimes);

  Standard_EXPORT Handle(GEOM_Object) Translate2D (Handle(GEOM_Object) theObject,
                                                   Handle(GEOM_Object) theVector,
                                                   double theStep1,
                                                   Standard_Integer theNbTimes1,
                                                   Handle(GEOM_Object) theVector2,
                                                   double theStep2,
                                                   Standard_Integer theNbTimes2);

  /*
  Standard_EXPORT static TopoDS_Shape TranslateShape1D (const TopoDS_Shape&  theShape,
                                                        GEOMImpl_ITranslate* theTI);

  Standard_EXPORT static TopoDS_Shape TranslateShape2D (const TopoDS_Shape&  theShape,
                                                        GEOMImpl_ITranslate* theTI);
  */

  Standard_EXPORT Handle(GEOM_Object) MirrorPlane (Handle(GEOM_Object) theObject,
                                                   Handle(GEOM_Object) thePlane);

  Standard_EXPORT Handle(GEOM_Object) MirrorPlaneCopy (Handle(GEOM_Object) theObject,
                                                       Handle(GEOM_Object) thePlane);

  Standard_EXPORT Handle(GEOM_Object) MirrorAxis (Handle(GEOM_Object) theObject,
                                                  Handle(GEOM_Object) theAxis);

  Standard_EXPORT Handle(GEOM_Object) MirrorAxisCopy (Handle(GEOM_Object) theObject,
                                                      Handle(GEOM_Object) theAxis);

  Standard_EXPORT Handle(GEOM_Object) MirrorPoint (Handle(GEOM_Object) theObject,
                                                   Handle(GEOM_Object) thePoint);

  Standard_EXPORT Handle(GEOM_Object) MirrorPointCopy (Handle(GEOM_Object) theObject,
                                                       Handle(GEOM_Object) thePoint);

  Standard_EXPORT Handle(GEOM_Object) OffsetShape (Handle(GEOM_Object) theObject,
                                                   double theOffset);

  Standard_EXPORT Handle(GEOM_Object) OffsetShapeCopy (Handle(GEOM_Object) theObject,
                                                       double theOffset);

  Standard_EXPORT Handle(GEOM_Object) ProjectShapeCopy (Handle(GEOM_Object) theSource,
                                                        Handle(GEOM_Object) theTarget);

  Standard_EXPORT Handle(GEOM_Object) ScaleShape (Handle(GEOM_Object) theObject,
                                                  Handle(GEOM_Object) thePoint,
                                                  double theFactor);

  Standard_EXPORT Handle(GEOM_Object) ScaleShapeCopy (Handle(GEOM_Object) theObject,
                                                      Handle(GEOM_Object) thePoint,
                                                      double theFactor);

  Standard_EXPORT Handle(GEOM_Object) ScaleShapeAlongAxes (Handle(GEOM_Object) theObject,
                                                           Handle(GEOM_Object) thePoint,
                                                           double theFactorX,
                                                           double theFactorY,
                                                           double theFactorZ,
                                                           bool doCopy);

  Standard_EXPORT Handle(GEOM_Object) PositionShape (Handle(GEOM_Object) theObject,
                                                     Handle(GEOM_Object) theStartLCS,
                                                     Handle(GEOM_Object) theEndLCS);

  Standard_EXPORT Handle(GEOM_Object) PositionShapeCopy (Handle(GEOM_Object) theObject,
                                                         Handle(GEOM_Object) theStartLCS,
                                                         Handle(GEOM_Object) theEndLCS);

  Standard_EXPORT Handle(GEOM_Object) PositionAlongPath (Handle(GEOM_Object) theObject,
                                                         Handle(GEOM_Object) thePath,
                                                         double theDistance,
                                                         bool   theCopy,
                                                         bool   theReverse);

  Standard_EXPORT Handle(GEOM_Object) Rotate (Handle(GEOM_Object) theObject,
                                              Handle(GEOM_Object) theAxis,
                                              double theAngle);

  Standard_EXPORT Handle(GEOM_Object) RotateCopy (Handle(GEOM_Object) theObject,
                                                  Handle(GEOM_Object) theAxis,
                                                  double theAngle);

  Standard_EXPORT Handle(GEOM_Object) Rotate1D (Handle(GEOM_Object) theObject,
                                                Handle(GEOM_Object) theAxis,
                                                Standard_Integer theNbTimes);

  Standard_EXPORT Handle(GEOM_Object) Rotate2D (Handle(GEOM_Object) theObject,
                                                Handle(GEOM_Object) theAxis,
                                                double theAngle,
                                                Standard_Integer theNbTimes1,
                                                double theStep,
                                                Standard_Integer theNbTimes2);

  Standard_EXPORT Handle(GEOM_Object) RotateThreePoints (Handle(GEOM_Object) theObject,
                                                         Handle(GEOM_Object) theCentPoint,
                                                         Handle(GEOM_Object) thePoint1,
                                                         Handle(GEOM_Object) thePoint2);

  Standard_EXPORT Handle(GEOM_Object) RotateThreePointsCopy (Handle(GEOM_Object) theObject,
                                                             Handle(GEOM_Object) theCentPoint,
                                                             Handle(GEOM_Object) thePoint1,
                                                             Handle(GEOM_Object) thePoint2);

  Standard_EXPORT Handle(GEOM_Object) TransformLikeOtherCopy (Handle(GEOM_Object) theObject,
                                                              Handle(GEOM_Object) theSample);

};

#endif
