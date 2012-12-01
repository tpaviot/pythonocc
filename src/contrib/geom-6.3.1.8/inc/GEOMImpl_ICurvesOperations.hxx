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

#ifndef _GEOMImpl_ICurvesOperations_HXX_
#define _GEOMImpl_ICurvesOperations_HXX_

#include "GEOM_IOperations.hxx"

#include <TCollection_AsciiString.hxx>

#include <list>

class GEOM_Engine;
class Handle(GEOM_Object);

class GEOMImpl_ICurvesOperations : public GEOM_IOperations {
 public:
  Standard_EXPORT GEOMImpl_ICurvesOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_ICurvesOperations();

  Standard_EXPORT Handle(GEOM_Object) MakePolyline (std::list<Handle(GEOM_Object)> thePoints, bool isClosed = false);

  Standard_EXPORT Handle(GEOM_Object) MakeCircleThreePnt (Handle(GEOM_Object) thePnt1,
                                                          Handle(GEOM_Object) thePnt2,
                                                          Handle(GEOM_Object) thePnt3);
  Standard_EXPORT Handle(GEOM_Object) MakeCircleCenter2Pnt (Handle(GEOM_Object) thePnt1,
                                                            Handle(GEOM_Object) thePnt2,
                                                            Handle(GEOM_Object) thePnt3);
  Standard_EXPORT Handle(GEOM_Object) MakeCirclePntVecR  (Handle(GEOM_Object) thePnt,
                                                          Handle(GEOM_Object) theVec, const GEOM_Parameter& theR);

  Standard_EXPORT Handle(GEOM_Object) MakeEllipse (Handle(GEOM_Object) thePnt,
                                                   Handle(GEOM_Object) theVec,
                                                   const GEOM_Parameter& theRMajor, const GEOM_Parameter& theRMinor,
                                                   Handle(GEOM_Object) theVecMaj);

  Standard_EXPORT Handle(GEOM_Object) MakeEllipseThreePnt (Handle(GEOM_Object) theMajor,
                                                           Handle(GEOM_Object) theMinor,
                                                           Handle(GEOM_Object) theCenter);

  Standard_EXPORT Handle(GEOM_Object) MakeArc (Handle(GEOM_Object) thePnt1,
                                               Handle(GEOM_Object) thePnt2,
                                               Handle(GEOM_Object) thePnt3);
 
  Standard_EXPORT Handle(GEOM_Object) MakeArcCenter (Handle(GEOM_Object) thePnt1,
                                                     Handle(GEOM_Object) thePnt2,
                                                     Handle(GEOM_Object) thePnt3,
                                                     bool                theSense);

  Standard_EXPORT Handle(GEOM_Object) MakeArcOfEllipse (Handle(GEOM_Object) thePnt1,
                            Handle(GEOM_Object) thePnt2,
                            Handle(GEOM_Object) thePnt3);

  Standard_EXPORT Handle(GEOM_Object) MakeSplineBezier        (std::list<Handle(GEOM_Object)> thePoints, bool theIsClosed = false);
  Standard_EXPORT Handle(GEOM_Object) MakeSplineInterpolation (std::list<Handle(GEOM_Object)> thePoints,
                                                               bool theIsClosed = false,
                                                               bool theDoReordering = false);

  Standard_EXPORT Handle(GEOM_Object) MakeSketcher (const TCollection_AsciiString& theCommand,
                                                    std::list<GEOM_Parameter> theWorkingPlane);

  Standard_EXPORT Handle(GEOM_Object) Make3DSketcher (std::list<TCollection_AsciiString> theCoordinates);

  Standard_EXPORT Handle(GEOM_Object) MakeSketcherOnPlane (const TCollection_AsciiString& theCommand,
                                                           Handle(GEOM_Object) theWorkingPlane);
  Standard_EXPORT Handle(GEOM_Object) MakeCurveSplitByParam (Handle(GEOM_Object) theCurve, 
                                                             const GEOM_Parameter& thePar);
  Standard_EXPORT Handle(GEOM_Object) MakeCurveSplitByCurve (Handle(GEOM_Object) theCurve,
                                                             Handle(GEOM_Object) theTool);
};

#endif
