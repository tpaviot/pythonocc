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

#ifndef _GEOMImpl_I3DPrimOperations_HXX_
#define _GEOMImpl_I3DPrimOperations_HXX_

#include <list>

//#include "Utils_SALOME_Exception.hxx"
#include "GEOM_IOperations.hxx"
#include "GEOM_Engine.hxx"
#include "GEOM_Object.hxx"
#include <TDocStd_Document.hxx>
#include <TColStd_HSequenceOfTransient.hxx>

class GEOMImpl_I3DPrimOperations : public GEOM_IOperations {
 public:
  Standard_EXPORT GEOMImpl_I3DPrimOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_I3DPrimOperations();

  Standard_EXPORT Handle(GEOM_Object) MakeBoxDXDYDZ (const GEOM_Parameter& theDX, const GEOM_Parameter& theDY, const GEOM_Parameter& theDZ);
  Standard_EXPORT Handle(GEOM_Object) MakeBoxTwoPnt (Handle(GEOM_Object) thePnt1,
									 Handle(GEOM_Object) thePnt2);

  Standard_EXPORT Handle(GEOM_Object) MakeFaceHW (const GEOM_Parameter& theH, const GEOM_Parameter& theW, int theOrientation);
  Standard_EXPORT Handle(GEOM_Object) MakeFaceObjHW (Handle(GEOM_Object) theObj,
						     const GEOM_Parameter& theH, const GEOM_Parameter& theW);
  Standard_EXPORT Handle(GEOM_Object) MakeDiskThreePnt (Handle(GEOM_Object) thePnt1,
							Handle(GEOM_Object) thePnt2,
							Handle(GEOM_Object) thePnt3);
  Standard_EXPORT Handle(GEOM_Object) MakeDiskPntVecR (Handle(GEOM_Object) thePnt1,
						       Handle(GEOM_Object) theVec,
						       const GEOM_Parameter& theR);
  Standard_EXPORT Handle(GEOM_Object) MakeDiskR (const GEOM_Parameter& theR, int theOrientation);

  Standard_EXPORT Handle(GEOM_Object) MakeCylinderRH       (const GEOM_Parameter& theR, const GEOM_Parameter& theH, const GEOM_Parameter& theAngle = 0.);
  Standard_EXPORT Handle(GEOM_Object) MakeCylinderPntVecRH (Handle(GEOM_Object) thePnt,
											Handle(GEOM_Object) theVec,
											const GEOM_Parameter& theR, const GEOM_Parameter& theH, const GEOM_Parameter& theAngle = 0.);

  Standard_EXPORT Handle(GEOM_Object) MakeConeR1R2H       (const GEOM_Parameter& theR1, const GEOM_Parameter& theR2, const GEOM_Parameter& theH, const GEOM_Parameter& theAngle = 0.);
  Standard_EXPORT Handle(GEOM_Object) MakeConePntVecR1R2H (Handle(GEOM_Object) thePnt,
                                           Handle(GEOM_Object) theVec,
										   const GEOM_Parameter& theR1, const GEOM_Parameter& theR2, const GEOM_Parameter& theH, const GEOM_Parameter& theAngle = 0.);

  Standard_EXPORT Handle(GEOM_Object) MakeSphereR    (const GEOM_Parameter& theR, const GEOM_Parameter& theVmin = 0.,
													  const GEOM_Parameter& theVmax = 0., const GEOM_Parameter& theAngle = 0.);
  Standard_EXPORT Handle(GEOM_Object) MakeSpherePntR (Handle(GEOM_Object) thePnt, const GEOM_Parameter& theR, const GEOM_Parameter& theVmin = 0.,
													  const GEOM_Parameter& theVmax = 0., const GEOM_Parameter& theAngle = 0.);

  Standard_EXPORT Handle(GEOM_Object) MakeTorusRR (const GEOM_Parameter& theRMajor, const GEOM_Parameter& theRMinor, const GEOM_Parameter& theVmin = 0.,
												   const GEOM_Parameter& theVmax = 0., const GEOM_Parameter& theAngle = 0.);

  Standard_EXPORT Handle(GEOM_Object) MakeTorusPntVecRR (Handle(GEOM_Object) thePnt,
                                         Handle(GEOM_Object) theVec,
										 const GEOM_Parameter& theRMajor, const GEOM_Parameter& theRMinor, const GEOM_Parameter& theVmin = 0.,
										 const GEOM_Parameter& theVmax = 0., const GEOM_Parameter& theAngle = 0.);

  Standard_EXPORT Handle(GEOM_Object) MakePrismVecH (Handle(GEOM_Object) theBase,
									 Handle(GEOM_Object) theVec, const GEOM_Parameter& theH, const GEOM_Parameter& theScaleFactor = -1.0);

  Standard_EXPORT Handle(GEOM_Object) MakePrismVecH2Ways (Handle(GEOM_Object) theBase,
										Handle(GEOM_Object) theVec, const GEOM_Parameter& theH);

  Standard_EXPORT Handle(GEOM_Object) MakePrismTwoPnt (Handle(GEOM_Object) theBase,
                                       Handle(GEOM_Object) thePoint1,
									   Handle(GEOM_Object) thePoint2, const GEOM_Parameter& theScaleFactor);

  Standard_EXPORT Handle(GEOM_Object) MakePrismVecHAng ( Handle(GEOM_Object) theBase,Handle(GEOM_Object) theVec,
														 const GEOM_Parameter& theH, const GEOM_Parameter& theAng,
                                                         const GEOM_Parameter& theScaleFactor);
  
  Standard_EXPORT Handle(GEOM_Object) MakePrismTwoPnt2Ways (Handle(GEOM_Object) theBase,
                                       Handle(GEOM_Object) thePoint1,
                                       Handle(GEOM_Object) thePoint2);

  Standard_EXPORT Handle(GEOM_Object) MakePrismDXDYDZ (Handle(GEOM_Object) theBase,
                                     const GEOM_Parameter& theDX, const GEOM_Parameter& theDY, const GEOM_Parameter& theDZ);

  Standard_EXPORT Handle(GEOM_Object) MakePrismDXDYDZ2Ways (Handle(GEOM_Object) theBase,
                                     const GEOM_Parameter& theDX, const GEOM_Parameter& theDY, const GEOM_Parameter& theDZ);

  Standard_EXPORT Handle(GEOM_Object) MakePipe (Handle(GEOM_Object) theBase,
                                Handle(GEOM_Object) thePath);

  Standard_EXPORT Handle(GEOM_Object) MakePipeRigid (Handle(GEOM_Object) theBase,
                                Handle(GEOM_Object) thePath);

  Standard_EXPORT Handle(GEOM_Object) MakeRevolutionAxisAngle (Handle(GEOM_Object) theBase,
                                               Handle(GEOM_Object) theAxis,
											   const GEOM_Parameter& theAngle);

  Standard_EXPORT Handle(GEOM_Object) MakeRevolutionAxisAngleOffset (Handle(GEOM_Object) theBase,
                                               Handle(GEOM_Object) theAxis,
											   const GEOM_Parameter& theAngle, 
											   const GEOM_Parameter& theOffset,
											   const GEOM_Parameter& theConeAngle = 0.);

  Standard_EXPORT Handle(GEOM_Object) MakeRevolutionAxisAngle2Ways (Handle(GEOM_Object) theBase,
								    Handle(GEOM_Object) theAxis,
									const GEOM_Parameter& theAngle);

  Standard_EXPORT Handle(GEOM_Object) MakeFilling (Handle(GEOM_Object) theShape, int theMinDeg, int theMaxDeg, double theTol2D, double theTol3D, int theNbIter, int theMethod, bool isApprox);

  Standard_EXPORT Handle(GEOM_Object) MakeThruSections(const Handle(TColStd_HSequenceOfTransient)& theSeqSections,
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

  Standard_EXPORT Handle(GEOM_Object) MakePlateWithShapesList (std::list<Handle(GEOM_Object)> theShapes, Handle(GEOM_Object) theInitialFace);

  Standard_EXPORT Handle(GEOM_Object) MakePipeShellsWithoutPath(
		const Handle(TColStd_HSequenceOfTransient)& theBases,
		const Handle(TColStd_HSequenceOfTransient)& theLocations);

  Standard_EXPORT Handle(GEOM_Object) MakePipeBiNormalAlongVector (Handle(GEOM_Object) theBase,
								   Handle(GEOM_Object) thePath,
								   Handle(GEOM_Object) theVec);
};

#endif
