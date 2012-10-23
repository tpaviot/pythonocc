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

#include <Standard_Stream.hxx>

#include <GEOMImpl_IBasicOperations.hxx>

#include <Basics_OCCTVersion.hxx>

#include "utilities.h"
//#include <OpUtil.hxx>
//#include <Utils_ExceptHandlers.hxx>

#include <TFunction_DriverTable.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_Logbook.hxx>
#include <TDF_Tool.hxx>

#include <GEOM_Function.hxx>
#include <GEOM_PythonDump.hxx>

#include <GEOMImpl_PointDriver.hxx>
#include <GEOMImpl_VectorDriver.hxx>
#include <GEOMImpl_LineDriver.hxx>
#include <GEOMImpl_PlaneDriver.hxx>
#include <GEOMImpl_MarkerDriver.hxx>

#include <GEOMImpl_IPoint.hxx>
#include <GEOMImpl_IVector.hxx>
#include <GEOMImpl_ILine.hxx>
#include <GEOMImpl_IPlane.hxx>
#include <GEOMImpl_IMarker.hxx>

#include <GEOMImpl_Types.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================
GEOMImpl_IBasicOperations::GEOMImpl_IBasicOperations(GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  MESSAGE("GEOMImpl_IBasicOperations::GEOMImpl_IBasicOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_IBasicOperations::~GEOMImpl_IBasicOperations()
{
  MESSAGE("GEOMImpl_IBasicOperations::~GEOMImpl_IBasicOperations");
}


//=============================================================================
/*!
 *  MakePointXYZ
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointXYZ
                                        (double theX, double theY, double theZ)
{
  SetErrorCode(KO);

  //Add a new Point object
  Handle(GEOM_Object) aPoint = GetEngine()->AddObject(GetDocID(), GEOM_POINT);

  //Add a new Point function with XYZ parameters
  Handle(GEOM_Function) aFunction =
    aPoint->AddFunction(GEOMImpl_PointDriver::GetID(), POINT_XYZ);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PointDriver::GetID()) return NULL;

  GEOMImpl_IPoint aPI(aFunction);

  aPI.SetX(theX);
  aPI.SetY(theY);
  aPI.SetZ(theZ);

  //Compute the point value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Point driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPoint << " = geompy.MakeVertex("
    << theX << ", " << theY << ", " << theZ << ")";

  SetErrorCode(OK);
  return aPoint;
}

//=============================================================================
/*!
 *  MakePointWithReference
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointWithReference
      (Handle(GEOM_Object) theReference, double theX, double theY, double theZ)
{
  SetErrorCode(KO);

  if (theReference.IsNull()) return NULL;

  //Add a new Point object
  Handle(GEOM_Object) aPoint = GetEngine()->AddObject(GetDocID(), GEOM_POINT);

  //Add a new Point function for creation a point relativley another point
  Handle(GEOM_Function) aFunction = aPoint->AddFunction(GEOMImpl_PointDriver::GetID(), POINT_XYZ_REF);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PointDriver::GetID()) return NULL;

  GEOMImpl_IPoint aPI(aFunction);

  Handle(GEOM_Function) aRefFunction = theReference->GetLastFunction();
  if (aRefFunction.IsNull()) return NULL;

  aPI.SetRef(aRefFunction);
  aPI.SetX(theX);
  aPI.SetY(theY);
  aPI.SetZ(theZ);

  //Compute the point value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Point driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPoint << " = geompy.MakeVertexWithRef("
    << theReference << ", " << theX << ", " << theY << ", " << theZ << ")";

  SetErrorCode(OK);
  return aPoint;
}

//=============================================================================
/*!
 *  makePointOnGeom
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::makePointOnGeom
                    (Handle(GEOM_Object) theGeomObj,
                     double theParam1,
                     double theParam2,
                     double theParam3,
                     const PointLocation theLocation,
		     Handle(GEOM_Object) theRefPoint)
{
  SetErrorCode(KO);

  if (theGeomObj.IsNull()) return NULL;

  //Add a new Point object
  Handle(GEOM_Object) aPoint = GetEngine()->AddObject(GetDocID(), GEOM_POINT);

  //Add a new Point function for creation a point relativley another point
  int fType = POINT_CURVE_PAR;
  switch( theLocation )
    {
    case PointOn_CurveByParam:   fType = POINT_CURVE_PAR; break;
    case PointOn_CurveByLength:  fType = POINT_CURVE_LENGTH; break; 				 
    case PointOn_CurveByCoord:   fType = POINT_CURVE_COORD; break;
    case PointOn_SurfaceByParam: fType = POINT_SURFACE_PAR; break;
    case PointOn_SurfaceByCoord: fType = POINT_SURFACE_COORD; break;
    default: break;
    }
  Handle(GEOM_Function) aFunction = aPoint->AddFunction(GEOMImpl_PointDriver::GetID(), fType);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PointDriver::GetID()) return NULL;

  GEOMImpl_IPoint aPI (aFunction);

  Handle(GEOM_Function) aRefFunction = theGeomObj->GetLastFunction();
  if (aRefFunction.IsNull()) return NULL;

  switch( theLocation )
    {
    case PointOn_CurveByParam:
      aPI.SetCurve(aRefFunction);
      aPI.SetParameter(theParam1);
      break;
    case PointOn_CurveByLength:
      aPI.SetCurve(aRefFunction);
      aPI.SetLength(theParam1);
      if (!theRefPoint.IsNull()) {
        Handle(GEOM_Function) aRefPoint = theRefPoint->GetLastFunction();
        aPI.SetRef(aRefPoint);
      }
      break;
    case PointOn_CurveByCoord:
      aPI.SetCurve(aRefFunction);
      aPI.SetX(theParam1);
      aPI.SetY(theParam2);
      aPI.SetZ(theParam3);
      break;
    case PointOn_SurfaceByParam:
      aPI.SetSurface(aRefFunction);
      aPI.SetParameter(theParam1);
      aPI.SetParameter2(theParam2);
      break;
    case PointOn_SurfaceByCoord:
      aPI.SetSurface(aRefFunction);
      aPI.SetX(theParam1);
      aPI.SetY(theParam2);
      aPI.SetZ(theParam3);
    default: break;
    }
  
  //Compute the point value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Point driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  switch( theLocation )
    {
    case PointOn_CurveByParam:
      GEOM::TPythonDump(aFunction) << aPoint << " = geompy.MakeVertexOnCurve("
                                   << theGeomObj << ", " << theParam1 << ")";
      break;
    case PointOn_CurveByLength:
      GEOM::TPythonDump(aFunction) << aPoint << " = geompy.MakeVertexOnCurveByLength("
                                   << theGeomObj << ", " << theParam1 << ", " << theRefPoint <<  ")";
      break;
    case PointOn_CurveByCoord:
  GEOM::TPythonDump(aFunction) << aPoint << " = geompy.MakeVertexOnCurveByCoord("
                               << theGeomObj << ", " << theParam1 
                               << ", " << theParam2 << ", " << theParam3 << ")";
      break;
    case PointOn_SurfaceByParam:
  GEOM::TPythonDump(aFunction) << aPoint << " = geompy.MakeVertexOnSurface("
                               << theGeomObj << ", " << theParam1 
                               << ", " << theParam2 << ")";
      break;
    case PointOn_SurfaceByCoord:
  GEOM::TPythonDump(aFunction) << aPoint << " = geompy.MakeVertexOnSurfaceByCoord("
                               << theGeomObj << ", " << theParam1 
                               << ", " << theParam2 << ", " << theParam3 << ")";
    default: break;
    }

  SetErrorCode(OK);
  return aPoint;
}

//=============================================================================
/*!
 *  MakePointOnCurve
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointOnCurve
                            (Handle(GEOM_Object) theCurve, double theParameter)
{
  return makePointOnGeom(theCurve, theParameter, 0.0, 0.0, PointOn_CurveByParam);
}

//=============================================================================
/*!
 *  MakePointOnCurveByCoord
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointOnCurveByCoord
                    (Handle(GEOM_Object) theCurve,
                     double theXParam,
                     double theYParam,
                     double theZParam)
{
  return makePointOnGeom(theCurve, theXParam, theYParam, theZParam, PointOn_CurveByCoord);
}

//=============================================================================
/*!
 *  MakePointOnCurveByLength 
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointOnCurveByLength
                    (Handle(GEOM_Object) theCurve, 
		     double              theLength, 
		     Handle(GEOM_Object) theStartPoint)
{
  return makePointOnGeom(theCurve, theLength, 0.0, 0.0, PointOn_CurveByLength, theStartPoint);
}

//=============================================================================
/*!
 *  MakePointOnSurface
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointOnSurface
                    (Handle(GEOM_Object) theSurface,
                     double theUParameter,
                     double theVParameter)
{
  return makePointOnGeom(theSurface, theUParameter, theVParameter, 0., PointOn_SurfaceByParam);
}

//=============================================================================
/*!
 *  MakePointOnSurfaceByCoord
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointOnSurfaceByCoord
                    (Handle(GEOM_Object) theSurface,
                     double theXParam,
                     double theYParam,
                     double theZParam)
{
  return makePointOnGeom(theSurface, theXParam, theYParam, theZParam, PointOn_SurfaceByCoord);
}


//=============================================================================
/*!
 *  MakePointOnLinesIntersection
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointOnLinesIntersection
                            (Handle(GEOM_Object) theLine1, Handle(GEOM_Object) theLine2)
{
  SetErrorCode(KO);

  if (theLine1.IsNull() || theLine2.IsNull()) return NULL;

  //Add a new Point object
  Handle(GEOM_Object) aPoint = GetEngine()->AddObject(GetDocID(), GEOM_POINT);

  //Add a new Point function for creation a point relativley another point
  Handle(GEOM_Function) aFunction = aPoint->AddFunction(GEOMImpl_PointDriver::GetID(), POINT_LINES_INTERSECTION);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PointDriver::GetID()) return NULL;

  GEOMImpl_IPoint aPI (aFunction);

  Handle(GEOM_Function) aRef1 = theLine1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = theLine2->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull()) return NULL;

  aPI.SetLine1(aRef1);
  aPI.SetLine2(aRef2);

  //Compute the point value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Point driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPoint << " = geompy.MakeVertexOnLinesIntersection("
                               << theLine1 << ", " << theLine2 << ")";

  SetErrorCode(OK);
  return aPoint;
}

//=============================================================================
/*!
 *  MakeTangentOnCurve
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeTangentOnCurve
                            (const Handle(GEOM_Object)& theCurve, double theParameter)
{
  SetErrorCode(KO);

  if (theCurve.IsNull()) return NULL;

  //Add a new Vector object
  Handle(GEOM_Object) aVec = GetEngine()->AddObject(GetDocID(), GEOM_VECTOR);

  //Add a new Point function for creation a point relativley another point
  Handle(GEOM_Function) aFunction = aVec->AddFunction(GEOMImpl_VectorDriver::GetID(), VECTOR_TANGENT_CURVE_PAR);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_VectorDriver::GetID()) return NULL;

  GEOMImpl_IVector aVI (aFunction);

  Handle(GEOM_Function) aRefFunction = theCurve->GetLastFunction();
  if (aRefFunction.IsNull()) return NULL;

  aVI.SetCurve(aRefFunction);
  aVI.SetParameter(theParameter);

  //Compute the vector value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Vector driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aVec << " = geompy.MakeTangentOnCurve("
                               << theCurve << ", " << theParameter << ")";

  SetErrorCode(OK);
  return aVec;
}

//=============================================================================
/*!
 *  MakeVectorDXDYDZ
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeVectorDXDYDZ
                                     (double theDX, double theDY, double theDZ)
{
  SetErrorCode(KO);

  //Add a new Vector object
  Handle(GEOM_Object) aVector = GetEngine()->AddObject(GetDocID(), GEOM_VECTOR);

  //Add a new Vector function with DXDYDZ parameters
  Handle(GEOM_Function) aFunction =
    aVector->AddFunction(GEOMImpl_VectorDriver::GetID(), VECTOR_DX_DY_DZ);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_VectorDriver::GetID()) return NULL;

  GEOMImpl_IVector aPI (aFunction);

  aPI.SetDX(theDX);
  aPI.SetDY(theDY);
  aPI.SetDZ(theDZ);

  //Compute the Vector value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Vector driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aVector << " = geompy.MakeVectorDXDYDZ("
    << theDX << ", " << theDY << ", " << theDZ << ")";

  SetErrorCode(OK);
  return aVector;
}

//=============================================================================
/*!
 *  MakeVectorTwoPnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeVectorTwoPnt
                     (Handle(GEOM_Object) thePnt1, Handle(GEOM_Object) thePnt2)
{
  SetErrorCode(KO);

  if (thePnt1.IsNull() || thePnt2.IsNull()) return NULL;

  //Add a new Vector object
  Handle(GEOM_Object) aVector = GetEngine()->AddObject(GetDocID(), GEOM_VECTOR);

  //Add a new Vector function
  Handle(GEOM_Function) aFunction =
    aVector->AddFunction(GEOMImpl_VectorDriver::GetID(), VECTOR_TWO_PNT);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_VectorDriver::GetID()) return NULL;

  GEOMImpl_IVector aPI (aFunction);

  Handle(GEOM_Function) aRef1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = thePnt2->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull()) return NULL;

  aPI.SetPoint1(aRef1);
  aPI.SetPoint2(aRef2);

  //Compute the Vector value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Vector driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aVector << " = geompy.MakeVector("
                               << thePnt1 << ", " << thePnt2 << ")";

  SetErrorCode(OK);
  return aVector;
}


//=============================================================================
/*!
 *  MakeLine
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeLine
                     (Handle(GEOM_Object) thePnt, Handle(GEOM_Object) theDir)
{
  SetErrorCode(KO);

  if (thePnt.IsNull() || theDir.IsNull()) return NULL;

  //Add a new Line object
  Handle(GEOM_Object) aLine = GetEngine()->AddObject(GetDocID(), GEOM_LINE);

  //Add a new Line function
  Handle(GEOM_Function) aFunction =
    aLine->AddFunction(GEOMImpl_LineDriver::GetID(), LINE_PNT_DIR);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_LineDriver::GetID()) return NULL;

  GEOMImpl_ILine aPI (aFunction);

  Handle(GEOM_Function) aRef1 = thePnt->GetLastFunction();
  Handle(GEOM_Function) aRef2 = theDir->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull()) return NULL;

  aPI.SetPoint1(aRef1);
  aPI.SetPoint2(aRef2);

  //Compute the Line value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Line driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aLine << " = geompy.MakeLine("
                               << thePnt << ", " << theDir << ")";

  SetErrorCode(OK);
  return aLine;
}

//=============================================================================
/*!
 *  MakeLineTwoPnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeLineTwoPnt
                     (Handle(GEOM_Object) thePnt1, Handle(GEOM_Object) thePnt2)
{
  SetErrorCode(KO);

  if (thePnt1.IsNull() || thePnt2.IsNull()) return NULL;

  //Add a new Line object
  Handle(GEOM_Object) aLine = GetEngine()->AddObject(GetDocID(), GEOM_LINE);

  //Add a new Line function
  Handle(GEOM_Function) aFunction =
    aLine->AddFunction(GEOMImpl_LineDriver::GetID(), LINE_TWO_PNT);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_LineDriver::GetID()) return NULL;

  GEOMImpl_ILine aPI (aFunction);

  Handle(GEOM_Function) aRef1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = thePnt2->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull()) return NULL;

  aPI.SetPoint1(aRef1);
  aPI.SetPoint2(aRef2);

  //Compute the Line value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Line driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aLine << " = geompy.MakeLineTwoPnt("
                               << thePnt1 << ", " << thePnt2 << ")";

  SetErrorCode(OK);
  return aLine;
}

//=============================================================================
/*!
 *  MakeLineTwoFaces
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeLineTwoFaces
                     (Handle(GEOM_Object) theFace1, Handle(GEOM_Object) theFace2)
{
  SetErrorCode(KO);

  if (theFace1.IsNull() || theFace2.IsNull()) return NULL;

  //Add a new Line object
  Handle(GEOM_Object) aLine = GetEngine()->AddObject(GetDocID(), GEOM_LINE);

  //Add a new Line function
  Handle(GEOM_Function) aFunction =
    aLine->AddFunction(GEOMImpl_LineDriver::GetID(), LINE_TWO_FACES);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_LineDriver::GetID()) return NULL;

  GEOMImpl_ILine aPI (aFunction);

  Handle(GEOM_Function) aRef1 = theFace1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = theFace2->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull()) return NULL;

  aPI.SetFace1(aRef1);
  aPI.SetFace2(aRef2);

  //Compute the Line value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Line driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aLine << " = geompy.MakeLineTwoFaces("
                               << theFace1 << ", " << theFace2 << ")";

  SetErrorCode(OK);
  return aLine;
}

//=============================================================================
/*!
 *  MakePlaneThreePnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePlaneThreePnt
                     (Handle(GEOM_Object) thePnt1, Handle(GEOM_Object) thePnt2,
                      Handle(GEOM_Object) thePnt3, double theSize)
{
  SetErrorCode(KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Plane object
  Handle(GEOM_Object) aPlane = GetEngine()->AddObject(GetDocID(), GEOM_PLANE);

  //Add a new Plane function
  Handle(GEOM_Function) aFunction =
    aPlane->AddFunction(GEOMImpl_PlaneDriver::GetID(), PLANE_THREE_PNT);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PlaneDriver::GetID()) return NULL;

  GEOMImpl_IPlane aPI (aFunction);

  Handle(GEOM_Function) aRef1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRef3 = thePnt3->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull() || aRef3.IsNull()) return NULL;

  aPI.SetPoint1(aRef1);
  aPI.SetPoint2(aRef2);
  aPI.SetPoint3(aRef3);
  aPI.SetSize(theSize);

  //Compute the Plane value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Plane driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPlane << " = geompy.MakePlaneThreePnt("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ", " << theSize << ")";

  SetErrorCode(OK);
  return aPlane;
}

//=============================================================================
/*!
 *  MakePlanePntVec
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePlanePntVec
                       (Handle(GEOM_Object) thePnt, Handle(GEOM_Object) theVec,
                        double theSize)
{
  SetErrorCode(KO);

  if (thePnt.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Plane object
  Handle(GEOM_Object) aPlane = GetEngine()->AddObject(GetDocID(), GEOM_PLANE);

  //Add a new Plane function
  Handle(GEOM_Function) aFunction =
    aPlane->AddFunction(GEOMImpl_PlaneDriver::GetID(), PLANE_PNT_VEC);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PlaneDriver::GetID()) return NULL;

  GEOMImpl_IPlane aPI (aFunction);

  Handle(GEOM_Function) aRefPnt = thePnt->GetLastFunction();
  Handle(GEOM_Function) aRefVec = theVec->GetLastFunction();
  if (aRefPnt.IsNull() || aRefVec.IsNull()) return NULL;

  aPI.SetPoint(aRefPnt);
  aPI.SetVector(aRefVec);
  aPI.SetSize(theSize);

  //Compute the Plane value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Plane driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPlane << " = geompy.MakePlane("
    << thePnt << ", " << theVec << ", " << theSize << ")";

  SetErrorCode(OK);
  return aPlane;
}

//=============================================================================
/*!
 *  MakePlaneFace
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePlaneFace
                       (Handle(GEOM_Object) theFace, double theSize)
{
  SetErrorCode(KO);

  if (theFace.IsNull()) return NULL;

  //Add a new Plane object
  Handle(GEOM_Object) aPlane = GetEngine()->AddObject(GetDocID(), GEOM_PLANE);

  //Add a new Plane function
  Handle(GEOM_Function) aFunction =
    aPlane->AddFunction(GEOMImpl_PlaneDriver::GetID(), PLANE_FACE);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PlaneDriver::GetID()) return NULL;

  GEOMImpl_IPlane aPI (aFunction);

  Handle(GEOM_Function) aRef = theFace->GetLastFunction();
  if (aRef.IsNull()) return NULL;

  aPI.SetFace(aRef);
  aPI.SetSize(theSize);

  //Compute the Plane value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Plane driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPlane << " = geompy.MakePlaneFace("
                               << theFace << ", " << theSize << ")";

  SetErrorCode(OK);
  return aPlane;
}

//=============================================================================
/*!
 *  MakePlane2Vec
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePlane2Vec
                       (Handle(GEOM_Object) theVec1, Handle(GEOM_Object) theVec2,
                        double theSize)
{
  SetErrorCode(KO);

  if (theVec1.IsNull() || theVec2.IsNull()) return NULL;

  //Add a new Plane object
  Handle(GEOM_Object) aPlane = GetEngine()->AddObject(GetDocID(), GEOM_PLANE);

  //Add a new Plane function
  Handle(GEOM_Function) aFunction =
    aPlane->AddFunction(GEOMImpl_PlaneDriver::GetID(), PLANE_2_VEC);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PlaneDriver::GetID()) return NULL;

  GEOMImpl_IPlane aPI (aFunction);

  Handle(GEOM_Function) aRefVec1 = theVec1->GetLastFunction();
  Handle(GEOM_Function) aRefVec2 = theVec2->GetLastFunction();
  if (aRefVec1.IsNull() || aRefVec2.IsNull()) return NULL;

  aPI.SetVector1(aRefVec1);
  aPI.SetVector2(aRefVec2);
  aPI.SetSize(theSize);

  //Compute the Plane value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Plane driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPlane << " = geompy.MakePlane2Vec("
    << theVec1 << ", " << theVec2 << ", " << theSize << ")";

  SetErrorCode(OK);
  return aPlane;
}

//=============================================================================
/*!
 *  MakePlaneLCS
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePlaneLCS
                       (Handle(GEOM_Object) theLCS, double theSize, int theOrientation)
{
  SetErrorCode(KO);

  //Add a new Plane object
  Handle(GEOM_Object) aPlane = GetEngine()->AddObject(GetDocID(), GEOM_PLANE);

  //Add a new Plane function
  Handle(GEOM_Function) aFunction =
    aPlane->AddFunction(GEOMImpl_PlaneDriver::GetID(), PLANE_LCS);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PlaneDriver::GetID()) return NULL;

  GEOMImpl_IPlane aPI (aFunction);

  if ( !theLCS.IsNull() ) {
    Handle(GEOM_Function) aRef = theLCS->GetLastFunction();
    aPI.SetLCS(aRef);
  }

  aPI.SetSize(theSize);
  aPI.SetOrientation(theOrientation);

  //Compute the Plane value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Plane driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPlane << " = geompy.MakePlaneLCS("
                               << theLCS << ", " << theSize << ", " << theOrientation << ")";

  SetErrorCode(OK);
  return aPlane;
}


//=============================================================================
/*!
 *  MakeMarker
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeMarker
                                  (double theOX,  double theOY,  double theOZ,
                                   double theXDX, double theXDY, double theXDZ,
                                   double theYDX, double theYDY, double theYDZ)
{
  SetErrorCode(KO);

  //Add a new Marker object
  Handle(GEOM_Object) aMarker = GetEngine()->AddObject(GetDocID(), GEOM_MARKER);

  //Add a new Marker function
  Handle(GEOM_Function) aFunction =
    aMarker->AddFunction(GEOMImpl_MarkerDriver::GetID(), MARKER_CS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MarkerDriver::GetID()) return NULL;

  GEOMImpl_IMarker aPI(aFunction);

  aPI.SetOrigin(theOX, theOY, theOZ);
  aPI.SetXDir(theXDX, theXDY, theXDZ);
  aPI.SetYDir(theYDX, theYDY, theYDZ);

  //Compute the marker value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Marker driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aMarker << " = geompy.MakeMarker("
    << theOX << ", " << theOY << ", " << theOZ << ", "
      << theXDX << ", " << theXDY << ", " << theXDZ << ", "
        << theYDX << ", " << theYDY << ", " << theYDZ << ")";

  SetErrorCode(OK);
  return aMarker;
}

//=============================================================================
/*!
 *  MakeMarkerFromShape
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeMarkerFromShape
                                  (const Handle(GEOM_Object)& theShape)
{
  SetErrorCode(KO);

  //Add a new Marker object
  Handle(GEOM_Object) aMarker = GetEngine()->AddObject(GetDocID(), GEOM_MARKER);

  //Add a new Marker function
  Handle(GEOM_Function) aFunction =
    aMarker->AddFunction(GEOMImpl_MarkerDriver::GetID(), MARKER_SHAPE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MarkerDriver::GetID()) return NULL;

  GEOMImpl_IMarker aPI(aFunction);

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  aPI.SetShape(aRefShape);

  //Compute the marker value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Marker driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aMarker << " = geompy.MakeMarkerFromShape(" << theShape << ")";

  SetErrorCode(OK);
  return aMarker;
}

//=============================================================================
/*!
 *  MakeMarkerPntTwoVec
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeMarkerPntTwoVec
                                              (const Handle(GEOM_Object)& theOrigin,
                                               const Handle(GEOM_Object)& theXVec,
                                               const Handle(GEOM_Object)& theYVec)
{
  SetErrorCode(KO);

  //Add a new Marker object
  Handle(GEOM_Object) aMarker = GetEngine()->AddObject(GetDocID(), GEOM_MARKER);

  //Add a new Marker function
  Handle(GEOM_Function) aFunction =
    aMarker->AddFunction(GEOMImpl_MarkerDriver::GetID(), MARKER_PNT2VEC);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MarkerDriver::GetID()) return NULL;

  GEOMImpl_IMarker aPI(aFunction);

  Handle(GEOM_Function) aRefOrigin = theOrigin->GetLastFunction();
  Handle(GEOM_Function) aRefXVec = theXVec->GetLastFunction();
  Handle(GEOM_Function) aRefYVec = theYVec->GetLastFunction();
  if (aRefOrigin.IsNull() || aRefXVec.IsNull() || aRefYVec.IsNull()) return NULL;

  aPI.SetOrigin(aRefOrigin);
  aPI.SetXVec(aRefXVec);
  aPI.SetYVec(aRefYVec);

  //Compute the marker value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Marker driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aMarker << " = geompy.MakeMarkerPntTwoVec("
    << theOrigin << ", " << theXVec << ", " << theYVec << ")";

  SetErrorCode(OK);
  return aMarker;
}

//=============================================================================
/*!
 *  MakeTangentPlaneOnFace
 */
//=============================================================================

Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeTangentPlaneOnFace(const Handle(GEOM_Object)& theFace,
                                                                      double theParamU,
                                                                      double theParamV,
                                                                      double theSize)
{
   SetErrorCode(KO);

  if (theFace.IsNull()) return NULL;

  //Add a new Plane object
  Handle(GEOM_Object) aPlane = GetEngine()->AddObject(GetDocID(), GEOM_PLANE);

  //Add a new Plane function
  Handle(GEOM_Function) aFunction =
    aPlane->AddFunction(GEOMImpl_PlaneDriver::GetID(), PLANE_TANGENT_FACE);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PlaneDriver::GetID()) return NULL;

  GEOMImpl_IPlane aPI (aFunction);

  Handle(GEOM_Function) aRef = theFace->GetLastFunction();
  if (aRef.IsNull()) return NULL;

  aPI.SetFace(aRef);
  aPI.SetSize(theSize);
  aPI.SetParameterU(theParamU);
  aPI.SetParameterV(theParamV);

  //Compute the Plane value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Plane driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPlane << " = geompy.MakeTangentPlaneOnFace("
                               << theFace << ", " <<theParamU <<", "<<theParamV <<", "<< theSize << ")";

  SetErrorCode(OK);
  return aPlane;
}
