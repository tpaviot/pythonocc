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

#ifndef _GEOMImpl_I3DPrimOperations_HXX_
#define _GEOMImpl_I3DPrimOperations_HXX_

//#include "Utils_SALOME_Exception.hxx"
#include "SGEOM_IOperations.hxx"
#include "SGEOM_Engine.hxx"
#include "SGEOM_Object.hxx"
#include <TDocStd_Document.hxx>
#include <TColStd_HSequenceOfTransient.hxx>

class GEOMImpl_I3DPrimOperations : public GEOM_IOperations {
 public:
  Standard_EXPORT GEOMImpl_I3DPrimOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_I3DPrimOperations();

  Standard_EXPORT Handle(GEOM_Object) MakeBoxDXDYDZ (double theDX, double theDY, double theDZ);
  Standard_EXPORT Handle(GEOM_Object) MakeBoxTwoPnt (Handle(GEOM_Object) thePnt1,
                                                     Handle(GEOM_Object) thePnt2);
  Standard_EXPORT Handle(GEOM_Object) MakeFaceHW (double theH, double theW, int theOrientation);
  Standard_EXPORT Handle(GEOM_Object) MakeFaceObjHW (Handle(GEOM_Object) theObj,
                                                     double theH, double theW);
  Standard_EXPORT Handle(GEOM_Object) MakeDiskThreePnt (Handle(GEOM_Object) thePnt1,
                                                        Handle(GEOM_Object) thePnt2,
                                                        Handle(GEOM_Object) thePnt3);
  Standard_EXPORT Handle(GEOM_Object) MakeDiskPntVecR (Handle(GEOM_Object) thePnt1,
                                                       Handle(GEOM_Object) theVec,
                                                       double theR);
  Standard_EXPORT Handle(GEOM_Object) MakeDiskR (double theR, int theOrientation);
  Standard_EXPORT Handle(GEOM_Object) MakeCylinderRH       (double theR, double theH);
  Standard_EXPORT Handle(GEOM_Object) MakeCylinderPntVecRH (Handle(GEOM_Object) thePnt,
                                            Handle(GEOM_Object) theVec,
                                            double theR, double theH);

  Standard_EXPORT Handle(GEOM_Object) MakeConeR1R2H       (double theR1, double theR2, double theH);
  Standard_EXPORT Handle(GEOM_Object) MakeConePntVecR1R2H (Handle(GEOM_Object) thePnt,
                                           Handle(GEOM_Object) theVec,
                                           double theR1, double theR2, double theH);

  Standard_EXPORT Handle(GEOM_Object) MakeSphereR    (double theR);
  Standard_EXPORT Handle(GEOM_Object) MakeSpherePntR (Handle(GEOM_Object) thePnt, double theR);

  Standard_EXPORT Handle(GEOM_Object) MakeTorusRR (double theRMajor, double theRMinor);

  Standard_EXPORT Handle(GEOM_Object) MakeTorusPntVecRR (Handle(GEOM_Object) thePnt,
                                         Handle(GEOM_Object) theVec,
                                         double theRMajor, double theRMinor);

  Standard_EXPORT Handle(GEOM_Object) MakePrismVecH (Handle(GEOM_Object) theBase,
                                                     Handle(GEOM_Object) theVec,
                                                     double theH, double theScaleFactor = -1.0);

  Standard_EXPORT Handle(GEOM_Object) MakePrismVecH2Ways (Handle(GEOM_Object) theBase,
                                                          Handle(GEOM_Object) theVec, double theH);

  Standard_EXPORT Handle(GEOM_Object) MakePrismTwoPnt (Handle(GEOM_Object) theBase,
                                                       Handle(GEOM_Object) thePoint1,
                                                       Handle(GEOM_Object) thePoint2,
                                                       double theScaleFactor = -1.0);

  Standard_EXPORT Handle(GEOM_Object) MakePrismTwoPnt2Ways (Handle(GEOM_Object) theBase,
                                                            Handle(GEOM_Object) thePoint1,
                                                            Handle(GEOM_Object) thePoint2);

  Standard_EXPORT Handle(GEOM_Object) MakePrismDXDYDZ (Handle(GEOM_Object) theBase,
                                                       double theDX, double theDY, double theDZ,
                                                       double theScaleFactor = -1.0);

  Standard_EXPORT Handle(GEOM_Object) MakePrismDXDYDZ2Ways (Handle(GEOM_Object) theBase,
                                                            double theDX, double theDY, double theDZ);
  
  Standard_EXPORT Handle(GEOM_Object) MakeDraftPrism  (Handle(GEOM_Object) theInitShape, Handle(GEOM_Object) theBase,
                                                       double theHeight, double theAngle, bool theFuse);
  
  Standard_EXPORT Handle(GEOM_Object) MakePipe (Handle(GEOM_Object) theBase,
                                                Handle(GEOM_Object) thePath);

  Standard_EXPORT Handle(GEOM_Object) MakeRevolutionAxisAngle (Handle(GEOM_Object) theBase,
                                                               Handle(GEOM_Object) theAxis,
                                                               double theAngle);

  Standard_EXPORT Handle(GEOM_Object) MakeRevolutionAxisAngle2Ways (Handle(GEOM_Object) theBase,
                                                                    Handle(GEOM_Object) theAxis,
                                                                    double theAngle);

  Standard_EXPORT Handle(GEOM_Object) MakeFilling (Handle(GEOM_Object) theShape,
                                                   int theMinDeg, int theMaxDeg,
                                                   double theTol2D, double theTol3D,
                                                   int theNbIter, int theMethod,
                                                   bool isApprox);

  Standard_EXPORT Handle(GEOM_Object) MakeThruSections
                                      (const Handle(TColStd_HSequenceOfTransient)& theSeqSections,
                                       bool theModeSolid,
                                       double thePreci,
                                       bool theRuled);

  Standard_EXPORT Handle(GEOM_Object) MakePipeWithDifferentSections(
                const Handle(TColStd_HSequenceOfTransient)& theBases,
                const Handle(TColStd_HSequenceOfTransient)& theLocations,
                const Handle(GEOM_Object)& thePath,
                bool theWithContact,
                bool theWithCorrections);

  Standard_EXPORT Handle(GEOM_Object) MakePipeWithShellSections(
                const Handle(TColStd_HSequenceOfTransient)& theBases,
                const Handle(TColStd_HSequenceOfTransient)& theSubBases,
                const Handle(TColStd_HSequenceOfTransient)& theLocations,
                const Handle(GEOM_Object)& thePath,
                bool theWithContact,
                bool theWithCorrections);

  Standard_EXPORT Handle(GEOM_Object) MakePipeShellsWithoutPath(
                const Handle(TColStd_HSequenceOfTransient)& theBases,
                const Handle(TColStd_HSequenceOfTransient)& theLocations);

  Standard_EXPORT Handle(GEOM_Object) MakePipeBiNormalAlongVector (Handle(GEOM_Object) theBase,
                                                                   Handle(GEOM_Object) thePath,
                                                                   Handle(GEOM_Object) theVec);

};

#endif
