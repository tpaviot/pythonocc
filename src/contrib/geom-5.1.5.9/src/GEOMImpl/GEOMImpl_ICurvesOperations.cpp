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
#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOMImpl_ICurvesOperations.hxx>

#include <GEOM_Function.hxx>
#include <GEOM_PythonDump.hxx>

#include <GEOMImpl_Types.hxx>

#include <GEOMImpl_PolylineDriver.hxx>
#include <GEOMImpl_CircleDriver.hxx>
#include <GEOMImpl_SplineDriver.hxx>
#include <GEOMImpl_EllipseDriver.hxx>
#include <GEOMImpl_ArcDriver.hxx>
#include <GEOMImpl_SketcherDriver.hxx>
#include <GEOMImpl_CurveDriver.hxx>
#include <GEOMImpl_3DSketcherDriver.hxx>

#include <GEOMImpl_IPolyline.hxx>
#include <GEOMImpl_ICircle.hxx>
#include <GEOMImpl_ISpline.hxx>
#include <GEOMImpl_IEllipse.hxx>
#include <GEOMImpl_IArc.hxx>
#include <GEOMImpl_ISketcher.hxx>
#include <GEOMImpl_ICurve.hxx>
#include <GEOMImpl_I3DSketcher.hxx>

#define SETPARAM(aFUNC,aVAL)  \
  if (aVAL.IsString())         \
	aFUNC( aVAL.GetString() ); \
  else                         \
	aFUNC( aVAL.GetDouble() );

#define SETSKETCHPARAM(aFUNC,anInd,aVAL)  \
  if (aVAL.IsString())         \
	aFUNC( anInd, aVAL.GetString() ); \
  else                         \
	aFUNC( anInd, aVAL.GetDouble() );

#include <TDF_Tool.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC


//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================
GEOMImpl_ICurvesOperations::GEOMImpl_ICurvesOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  //MESSAGE("GEOMImpl_ICurvesOperations::GEOMImpl_ICurvesOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_ICurvesOperations::~GEOMImpl_ICurvesOperations()
{
  //MESSAGE("GEOMImpl_ICurvesOperations::~GEOMImpl_ICurvesOperations");
}


//=============================================================================
/*!
 *  MakePolyline
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakePolyline (std::list<Handle(GEOM_Object)> thePoints, bool isClosed)
{
  SetErrorCode(GEOM_KO);

  //Add a new Polyline object
  Handle(GEOM_Object) aPolyline = GetEngine()->AddObject(GetDocID(), GEOM_POLYLINE);

  //Add a new Polyline function for creation a polyline relatively to points set
  Handle(GEOM_Function) aFunction =
    aPolyline->AddFunction(GEOMImpl_PolylineDriver::GetID(), POLYLINE_POINTS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PolylineDriver::GetID()) return NULL;

  GEOMImpl_IPolyline aCI (aFunction);

  int aLen = thePoints.size();
  aCI.SetLength(aLen);
  aCI.SetIsClosed(isClosed);

  int ind = 1;
  std::list<Handle(GEOM_Object)>::iterator it = thePoints.begin();
  for (; it != thePoints.end(); it++, ind++) {
    Handle(GEOM_Function) aRefPnt = (*it)->GetLastFunction();
    if (aRefPnt.IsNull()) {
      SetErrorCode("NULL point for Polyline");
      return NULL;
    }
    aCI.SetPoint(ind, aRefPnt);
  }

  //Compute the Polyline value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Polyline driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << aPolyline << " = MakePolyline([";

  it = thePoints.begin();
  pd << (*it++);
  while (it != thePoints.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aPolyline;
}

//=============================================================================
/*!
 *  MakeCircleThreePnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeCircleThreePnt (Handle(GEOM_Object) thePnt1,
                                                                    Handle(GEOM_Object) thePnt2,
                                                                    Handle(GEOM_Object) thePnt3)
{
  SetErrorCode(GEOM_KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Circle object
  Handle(GEOM_Object) aCircle = GetEngine()->AddObject(GetDocID(), GEOM_CIRCLE);

  //Add a new Circle function for creation a circle relatively to three points
  Handle(GEOM_Function) aFunction =
    aCircle->AddFunction(GEOMImpl_CircleDriver::GetID(), CIRCLE_THREE_PNT);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_CircleDriver::GetID()) return NULL;

  GEOMImpl_ICircle aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);

  //Compute the Circle value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Circle driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCircle << " = MakeCircleThreePnt("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ")";

  SetErrorCode(GEOM_OK);
  return aCircle;
}

//=============================================================================
/*!
 *  MakeCircleCenter2Pnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeCircleCenter2Pnt (Handle(GEOM_Object) thePnt1,
                                                                      Handle(GEOM_Object) thePnt2,
                                                                      Handle(GEOM_Object) thePnt3)
{
  SetErrorCode(GEOM_KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Circle object
  Handle(GEOM_Object) aCircle = GetEngine()->AddObject(GetDocID(), GEOM_CIRCLE);

  //Add a new Circle function for creation a circle relatively to center and 2 points
  Handle(GEOM_Function) aFunction =
    aCircle->AddFunction(GEOMImpl_CircleDriver::GetID(), CIRCLE_CENTER_TWO_PNT);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_CircleDriver::GetID()) return NULL;

  GEOMImpl_ICircle aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);

  //Compute the Circle value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Circle driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCircle << " = MakeCircleCenter2Pnt("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ")";

  SetErrorCode(GEOM_OK);
  return aCircle;
}

//=============================================================================
/*!
 *  MakeCirclePntVecR
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeCirclePntVecR
	   (Handle(GEOM_Object) thePnt, Handle(GEOM_Object) theVec, const GEOM_Parameter& theR)
{
  SetErrorCode(GEOM_KO);
  
  // Not set thePnt means origin of global CS,
  // Not set theVec means Z axis of global CS
  //if (thePnt.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Circle object
  Handle(GEOM_Object) aCircle = GetEngine()->AddObject(GetDocID(), GEOM_CIRCLE);

  //Add a new Circle function for creation a circle relatively to point and vector
  Handle(GEOM_Function) aFunction =
    aCircle->AddFunction(GEOMImpl_CircleDriver::GetID(), CIRCLE_PNT_VEC_R);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_CircleDriver::GetID()) return NULL;

  GEOMImpl_ICircle aCI (aFunction);

  if (!thePnt.IsNull()) {
    Handle(GEOM_Function) aRefPnt = thePnt->GetLastFunction();
    if (aRefPnt.IsNull()) return NULL;
    aCI.SetCenter(aRefPnt);
  }

  if (!theVec.IsNull()) {
    Handle(GEOM_Function) aRefVec = theVec->GetLastFunction();
    if (aRefVec.IsNull()) return NULL;
    aCI.SetVector(aRefVec);
  }

  SETPARAM(aCI.SetRadius, theR);

  //Compute the Circle value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Circle driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCircle << " = MakeCirclePntVecR("
    << thePnt << ", " << theVec << ", " << theR << ")";

  SetErrorCode(GEOM_OK);
  return aCircle;
}

//=============================================================================
/*!
 *  MakeEllipse
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeEllipse
                       (Handle(GEOM_Object) thePnt, Handle(GEOM_Object) theVec,
						const GEOM_Parameter& theRMajor, const GEOM_Parameter& theRMinor,
                        Handle(GEOM_Object) theVecMaj)
{
  SetErrorCode(GEOM_KO);

  // Not set thePnt means origin of global CS,
  // Not set theVec means Z axis of global CS
  // Not set theVecMaj means X axis of global CS
  //if (thePnt.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Ellipse object
  Handle(GEOM_Object) anEll = GetEngine()->AddObject(GetDocID(), GEOM_ELLIPSE);

  //Add a new Ellipse function
  Handle(GEOM_Function) aFunction =
    anEll->AddFunction(GEOMImpl_EllipseDriver::GetID(), ELLIPSE_PNT_VEC_RR);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_EllipseDriver::GetID()) return NULL;

  GEOMImpl_IEllipse aCI (aFunction);

  if (!thePnt.IsNull()) {
    Handle(GEOM_Function) aRefPnt = thePnt->GetLastFunction();
    if (aRefPnt.IsNull()) return NULL;
    aCI.SetCenter(aRefPnt);
  }

  if (!theVec.IsNull()) {
    Handle(GEOM_Function) aRefVec = theVec->GetLastFunction();
    if (aRefVec.IsNull()) return NULL;
    aCI.SetVector(aRefVec);
  }

  SETPARAM(aCI.SetRMajor,theRMajor);
  SETPARAM(aCI.SetRMinor,theRMinor);

  if (!theVecMaj.IsNull()) {
    Handle(GEOM_Function) aRefVecMaj = theVecMaj->GetLastFunction();
    if (aRefVecMaj.IsNull()) return NULL;
    aCI.SetVectorMajor(aRefVecMaj);
  }

  //Compute the Ellipse value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Ellipse driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  if (!theVecMaj.IsNull()) {
    GEOM::TPythonDump(aFunction) << anEll << " = MakeEllipse("
                << thePnt << ", " << theVec << ", " << theRMajor << ", " << theRMinor
                << ", " << theVecMaj << ")";
  }
  else {
    GEOM::TPythonDump(aFunction) << anEll << " = MakeEllipse("
                << thePnt << ", " << theVec << ", " << theRMajor << ", " << theRMinor << ")";
  }

  SetErrorCode(GEOM_OK);
  return anEll;
}

//=============================================================================
/*!
 *  MakeEllipseThreePnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeEllipseThreePnt
                       (Handle(GEOM_Object) theMajor, Handle(GEOM_Object) theMinor,
						Handle(GEOM_Object) theCenter)
{
  SetErrorCode(GEOM_KO);

  if (theMajor.IsNull() || theMinor.IsNull() || theCenter.IsNull()) return NULL;

  //Add a new Ellipse object
  Handle(GEOM_Object) anEll = GetEngine()->AddObject(GetDocID(), GEOM_ELLIPSE);

  //Add a new Ellipse function
  Handle(GEOM_Function) aFunction =
    anEll->AddFunction(GEOMImpl_EllipseDriver::GetID(), ELLIPSE_THREE_PNT);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_EllipseDriver::GetID()) return NULL;

  GEOMImpl_IEllipse aCI (aFunction);

  Handle(GEOM_Function) aRefCenter = theCenter->GetLastFunction();
  Handle(GEOM_Function) aRefMinor = theMinor->GetLastFunction();
  Handle(GEOM_Function) aRefMajor = theMajor->GetLastFunction();

  if (aRefCenter.IsNull() || aRefMinor.IsNull() || aRefMajor.IsNull()) return NULL;

  aCI.SetCenter(aRefCenter);
  aCI.SetPMajor(aRefMajor);
  aCI.SetPMinor(aRefMinor);

  //Compute the Ellipse value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Ellipse driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << anEll << " = MakeEllipseThreePnt("
    << theMajor << ", " << theMinor << ", " << theCenter << ")";

  SetErrorCode(GEOM_OK);
  return anEll;
}

//=============================================================================
/*!
 *  MakeArc
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeArc (Handle(GEOM_Object) thePnt1,
                                                         Handle(GEOM_Object) thePnt2,
                                                         Handle(GEOM_Object) thePnt3)
{
  SetErrorCode(GEOM_KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Circle Arc object
  Handle(GEOM_Object) anArc = GetEngine()->AddObject(GetDocID(), GEOM_CIRC_ARC);

  //Add a new Circle Arc function
  Handle(GEOM_Function) aFunction =
      anArc->AddFunction(GEOMImpl_ArcDriver::GetID(), CIRC_ARC_THREE_PNT);  

  if (aFunction.IsNull()) return NULL;
  
  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ArcDriver::GetID()) return NULL;
  GEOMImpl_IArc aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();
  

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);
  
  //Compute the Arc value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Arc driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << anArc << " = MakeArc("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ")";

  SetErrorCode(GEOM_OK);
  return anArc;
}

//=============================================================================
/*!
 *  MakeArcCenter
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeArcCenter (Handle(GEOM_Object) thePnt1,
                                                               Handle(GEOM_Object) thePnt2,
                                                               Handle(GEOM_Object) thePnt3,
                                                               bool                theSense)
{
  SetErrorCode(GEOM_KO);
  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Circle Arc object
  Handle(GEOM_Object) anArc = GetEngine()->AddObject(GetDocID(), GEOM_CIRC_ARC);

  //Add a new Circle Arc function
  Handle(GEOM_Function) aFunction =
      anArc->AddFunction(GEOMImpl_ArcDriver::GetID(), CIRC_ARC_CENTER);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ArcDriver::GetID()) return NULL;

  GEOMImpl_IArc aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);
  aCI.SetSense(theSense);

  //Compute the Arc value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
  SetErrorCode("Arc driver failed");
  return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }
  //Make a Python command
  GEOM::TPythonDump(aFunction) << anArc << " = MakeArcCenter("
      << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << "," <<(long) theSense << ")";

  SetErrorCode(GEOM_OK);
  return anArc;
}

//=============================================================================
/*!
 *  MakeArcOfEllipse
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeArcOfEllipse (Handle(GEOM_Object) thePnt1,
                                Handle(GEOM_Object) thePnt2,
                                Handle(GEOM_Object) thePnt3)
{
  SetErrorCode(GEOM_KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Circle Arc object
  Handle(GEOM_Object) anArc = GetEngine()->AddObject(GetDocID(), GEOM_ELLIPSE_ARC);

  //Add a new Circle Arc function
  Handle(GEOM_Function) aFunction =
      anArc->AddFunction(GEOMImpl_ArcDriver::GetID(), ELLIPSE_ARC_CENTER_TWO_PNT);

  if (aFunction.IsNull()) return NULL;
  
  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ArcDriver::GetID()) return NULL;
  GEOMImpl_IArc aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();
  

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);
  
  //Compute the Arc value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Arc driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << anArc << " = MakeArcOfEllipse("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ")";

  SetErrorCode(GEOM_OK);
  return anArc;
}

//=============================================================================
/*!
 *  MakeSplineBezier
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeSplineBezier
                                          (std::list<Handle(GEOM_Object)> thePoints)
{
  SetErrorCode(GEOM_KO);

  //Add a new Spline object
  Handle(GEOM_Object) aSpline = GetEngine()->AddObject(GetDocID(), GEOM_SPLINE);

  //Add a new Spline function for creation a bezier curve relatively to points set
  Handle(GEOM_Function) aFunction =
    aSpline->AddFunction(GEOMImpl_SplineDriver::GetID(), SPLINE_BEZIER);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_SplineDriver::GetID()) return NULL;

  GEOMImpl_ISpline aCI (aFunction);

  int aLen = thePoints.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<Handle(GEOM_Object)>::iterator it = thePoints.begin();
  for (; it != thePoints.end(); it++, ind++) {
    Handle(GEOM_Function) aRefPnt = (*it)->GetLastFunction();

    if (aRefPnt.IsNull()) return NULL;

    aCI.SetPoint(ind, aRefPnt);
  }

  //Compute the Spline value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Spline driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << aSpline << " = MakeSplineBezier([";

  it = thePoints.begin();
  pd << (*it++);
  while (it != thePoints.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aSpline;
}

//=============================================================================
/*!
 *  MakeSplineInterpolation
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeSplineInterpolation
                                          (std::list<Handle(GEOM_Object)> thePoints,
                                           bool                           theIsClosed)
{
  SetErrorCode(GEOM_KO);

  //Add a new Spline object
  Handle(GEOM_Object) aSpline = GetEngine()->AddObject(GetDocID(), GEOM_SPLINE);

  //Add a new Spline function for creation a bezier curve relatively to points set
  Handle(GEOM_Function) aFunction =
    aSpline->AddFunction(GEOMImpl_SplineDriver::GetID(), SPLINE_INTERPOLATION);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_SplineDriver::GetID()) return NULL;

  GEOMImpl_ISpline aCI (aFunction);

  int aLen = thePoints.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<Handle(GEOM_Object)>::iterator it = thePoints.begin();
  for (; it != thePoints.end(); it++, ind++) {
    Handle(GEOM_Function) aRefPnt = (*it)->GetLastFunction();

    if (aRefPnt.IsNull()) return NULL;

    aCI.SetPoint(ind, aRefPnt);
  }

  aCI.SetIsClosed(theIsClosed);

  //Compute the Spline value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Spline driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << aSpline << " = MakeSplineInterpolation([";

  it = thePoints.begin();
  pd << (*it++);
  while (it != thePoints.end()) {
    pd << ", " << (*it++);
  }
  pd << "]";
  if ( theIsClosed ) pd << ", True";
  pd << ")";

  SetErrorCode(GEOM_OK);
  return aSpline;
}

//=============================================================================
/*!
 *  MakeSketcher
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeSketcher
                               (const TCollection_AsciiString& theCommand,
								std::list<GEOM_Parameter>           theWorkingPlane)
{
  SetErrorCode(GEOM_KO);

  if (theCommand.IsEmpty()) return NULL;

  //Add a new Sketcher object
  Handle(GEOM_Object) aSketcher = GetEngine()->AddObject(GetDocID(), GEOM_SKETCHER);

  //Add a new Sketcher function
  Handle(GEOM_Function) aFunction =
    aSketcher->AddFunction(GEOMImpl_SketcherDriver::GetID(), SKETCHER_NINE_DOUBLS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_SketcherDriver::GetID()) return NULL;

  GEOMImpl_ISketcher aCI (aFunction);

  aCI.SetCommand(theCommand);

  int ind = 1;
  std::list<GEOM_Parameter>::iterator it = theWorkingPlane.begin();
  for (; it != theWorkingPlane.end(); it++, ind++)
  {
	GEOM_Parameter aParam = *it;
	SETSKETCHPARAM(aCI.SetWorkingPlane, ind, aParam );
  }

  //Compute the Sketcher value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Sketcher driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << aSketcher << " = MakeSketcher(\"" << theCommand.ToCString() << "\", [";

  it = theWorkingPlane.begin();
  pd << (*it++);
  while (it != theWorkingPlane.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aSketcher;
}

//=============================================================================
/*!
 *  Make3DSketcher
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::Make3DSketcher (std::list<TCollection_AsciiString> theCoordinates)
{
  SetErrorCode(GEOM_KO);

  //Add a new Sketcher object
  Handle(GEOM_Object) a3DSketcher = GetEngine()->AddObject(GetDocID(), GEOM_3DSKETCHER);

  //Add a new Sketcher function
  Handle(GEOM_Function) aFunction =
    a3DSketcher->AddFunction(GEOMImpl_3DSketcherDriver::GetID(), GEOM_3DSKETCHER);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_3DSketcherDriver::GetID()) return NULL;

  GEOMImpl_I3DSketcher aCI (aFunction);

  int nbOfCoords = 0;
  std::list<TCollection_AsciiString>::iterator it = theCoordinates.begin();
  for (; it != theCoordinates.end(); it++)
    nbOfCoords++;

  Handle(TColStd_HArray1OfAsciiString) aCoordsArray = new TColStd_HArray1OfAsciiString (1, nbOfCoords);

  it = theCoordinates.begin();
  int ind = 1;
  for (; it != theCoordinates.end(); it++, ind++)
    aCoordsArray->SetValue(ind, *it);

  aCI.SetCoordinates(aCoordsArray);
    
  //Compute the Sketcher value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("3D Sketcher driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << a3DSketcher << " = Make3DSketcher([";

  it = theCoordinates.begin();
  pd << (*it++);
  while (it != theCoordinates.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return a3DSketcher;
}

//=============================================================================
/*!
 *  MakeSketcherOnPlane
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeSketcherOnPlane
                               (const TCollection_AsciiString& theCommand,
                                Handle(GEOM_Object)            theWorkingPlane)
{
  SetErrorCode(GEOM_KO);

  if (theCommand.IsEmpty()) return NULL;

  //Add a new Sketcher object
  Handle(GEOM_Object) aSketcher = GetEngine()->AddObject(GetDocID(), GEOM_SKETCHER);

  //Add a new Sketcher function
  Handle(GEOM_Function) aFunction =
    aSketcher->AddFunction(GEOMImpl_SketcherDriver::GetID(), SKETCHER_PLANE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_SketcherDriver::GetID()) return NULL;

  GEOMImpl_ISketcher aCI (aFunction);
  aCI.SetCommand(theCommand);

  Handle(GEOM_Function) aRefPlane = theWorkingPlane->GetLastFunction();
  if (aRefPlane.IsNull()) return NULL;
  aCI.SetWorkingPlane( aRefPlane );

  //Compute the Sketcher value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Sketcher driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump (aFunction) << aSketcher << " = MakeSketcherOnPlane(\""
    << theCommand.ToCString() << "\", " << theWorkingPlane << " )";

  SetErrorCode(GEOM_OK);
  return aSketcher;
}

//=============================================================================
/*!
 *  MakeCurveSplitByParam
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeCurveSplitByParam
							(Handle(GEOM_Object) theCurve, const GEOM_Parameter& thePar)
{
  SetErrorCode(GEOM_KO);

  if (theCurve.IsNull()) return NULL;

  //Add a new Edge object
  Handle(GEOM_Object) anEdge = GetEngine()->AddObject(GetDocID(), GEOM_EDGE);

  //Add a new edge function for creation of an edge by trimming another edge
  Handle(GEOM_Function) aFunction =
    anEdge->AddFunction(GEOMImpl_CurveDriver::GetID(), CURVE_SPLIT_BY_PAR);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_CurveDriver::GetID()) return NULL;

  GEOMImpl_ICurve aCu (aFunction);

  Handle(GEOM_Function) aRefCurve = theCurve->GetLastFunction();

  if (aRefCurve.IsNull()) return NULL;

  aCu.SetEdge( aRefCurve );
  SETPARAM(aCu.SetPar, thePar);

  //Compute the trimmed curve value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Curve driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << anEdge << " = MakeCurveSplitByParam("
    << theCurve << ", " << thePar << ")";

  SetErrorCode(GEOM_OK);
  return anEdge;
}

//=============================================================================
/*!
 *  MakeCurveSplitByCurve
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeCurveSplitByCurve
							(Handle(GEOM_Object) theCurve, Handle(GEOM_Object) theTool)
{
  SetErrorCode(GEOM_KO);

  if (theCurve.IsNull()) return NULL;

  //Add a new Wire object
  Handle(GEOM_Object) aWire = GetEngine()->AddObject(GetDocID(), GEOM_WIRE);

  //Add a new curve function for creation of two or more edges by splitting an edge 
  // with another edge intersecting the first edge
  Handle(GEOM_Function) aFunction =
    aWire->AddFunction(GEOMImpl_CurveDriver::GetID(), CURVE_SPLIT_BY_CURVE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_CurveDriver::GetID()) return NULL;

  GEOMImpl_ICurve aCu (aFunction);

  Handle(GEOM_Function) aRefCurve = theCurve->GetLastFunction();
  Handle(GEOM_Function) aRefTool = theTool->GetLastFunction();

  if (aRefCurve.IsNull() || aRefTool.IsNull()) return NULL;

  aCu.SetEdge( aRefCurve );
  aCu.SetTool( aRefTool );

  //Compute the sections
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Curve driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aWire << " = MakeCurveSplitByCurve("
    << theCurve << ", " << theTool << ")";

  SetErrorCode(GEOM_OK);
  return aWire;
}

