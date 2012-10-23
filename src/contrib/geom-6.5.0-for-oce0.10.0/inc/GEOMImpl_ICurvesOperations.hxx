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

#ifndef _GEOMImpl_ICurvesOperations_HXX_
#define _GEOMImpl_ICurvesOperations_HXX_

#include "GEOM_IOperations.hxx"

#include <TCollection_AsciiString.hxx>

#include <list>

class GEOM_Engine;
class Handle(GEOM_Object);

class GEOMImpl_ICurvesOperations : public GEOM_IOperations {
  
 public:

  enum CurveType { Polyline, Bezier, Interpolation };
  
  Standard_EXPORT GEOMImpl_ICurvesOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_ICurvesOperations();

  Standard_EXPORT Handle(GEOM_Object) MakeCircleThreePnt (Handle(GEOM_Object) thePnt1,
                                                          Handle(GEOM_Object) thePnt2,
                                                          Handle(GEOM_Object) thePnt3);
  Standard_EXPORT Handle(GEOM_Object) MakeCircleCenter2Pnt (Handle(GEOM_Object) thePnt1,
                                                            Handle(GEOM_Object) thePnt2,
                                                            Handle(GEOM_Object) thePnt3);
  Standard_EXPORT Handle(GEOM_Object) MakeCirclePntVecR  (Handle(GEOM_Object) thePnt,
                                                          Handle(GEOM_Object) theVec, double theR);

  Standard_EXPORT Handle(GEOM_Object) MakeEllipse (Handle(GEOM_Object) thePnt,
                                                   Handle(GEOM_Object) theVec,
                                                   double theRMajor, double theRMinor,
                                                   Handle(GEOM_Object) theVecMaj);

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

  Standard_EXPORT Handle(GEOM_Object) MakePolyline (std::list<Handle(GEOM_Object)> thePoints,
                                                    bool theIsClosed = false);

  Standard_EXPORT Handle(GEOM_Object) MakeSplineBezier (std::list<Handle(GEOM_Object)> thePoints,
                                                        bool theIsClosed = false);

  Standard_EXPORT Handle(GEOM_Object) MakeSplineInterpolation (std::list<Handle(GEOM_Object)> thePoints,
                                                               bool theIsClosed = false,
                                                               bool theDoReordering = false);

  //  Standard_EXPORT Handle(GEOM_Object) MakeCurveParametric(const char* thexExpr, const char* theyExpr, const char* thezExpr, 
  //							  double theParamMin, double theParamMax, double theParamStep, 
  //							  CurveType theCurveType,
  //                          int theParamNbStep=0, bool theNewMethod=false);

  Standard_EXPORT Handle(GEOM_Object) MakeSketcher (const char* theCommand,
                                                    std::list<double> theWorkingPlane);
  Standard_EXPORT Handle(GEOM_Object) Make3DSketcher (std::list<double> theCoordinates);
  Standard_EXPORT Handle(GEOM_Object) MakeSketcherOnPlane (const char* theCommand,
                                                           Handle(GEOM_Object) theWorkingPlane);
};

#endif
