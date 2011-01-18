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

#include <GEOMImpl_IBasicOperations.hxx>

#define SETPARAM(aFUNC,aVAL)  \
  if (aVAL.IsString())         \
	aFUNC( aVAL.GetString() ); \
  else                         \
	aFUNC( aVAL.GetDouble() );

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
#include <GEOMImpl_FaceDriver.hxx>
#include <GEOMImpl_MarkerDriver.hxx>

#include <GEOMImpl_IPoint.hxx>
#include <GEOMImpl_IVector.hxx>
#include <GEOMImpl_ILine.hxx>
#include <GEOMImpl_IPlane.hxx>
#include <GEOMImpl_IFace.hxx>
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
  //MESSAGE("GEOMImpl_IBasicOperations::GEOMImpl_IBasicOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_IBasicOperations::~GEOMImpl_IBasicOperations()
{
  //MESSAGE("GEOMImpl_IBasicOperations::~GEOMImpl_IBasicOperations");
}

//=============================================================================
/*!
 *  MakePointXYZ
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointXYZ(const GEOM_Parameter& theX, const GEOM_Parameter& theY, const GEOM_Parameter& theZ)
{
  SetErrorCode(GEOM_KO);

  //Add a new Point object
  Handle(GEOM_Object) aPoint = GetEngine()->AddObject(GetDocID(), GEOM_POINT);

  //Add a new Point function with XYZ parameters
  Handle(GEOM_Function) aFunction =
	aPoint->AddFunction(GEOMImpl_PointDriver::GetID(), POINT_XYZ);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PointDriver::GetID()) return NULL;

  GEOMImpl_IPoint aPI(aFunction);

  SETPARAM(aPI.SetX, theX);
  SETPARAM(aPI.SetY, theY);
  SETPARAM(aPI.SetZ, theZ);

  //Compute the point value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPoint << " = MakePointXYZ("
	<< theX << ", " << theY << ", " << theZ << ")";

  SetErrorCode(GEOM_OK);
  return aPoint;
}

//=============================================================================
/*!
 *  MakePointWithReference
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointWithReference
	  (Handle(GEOM_Object) theReference, const GEOM_Parameter& theX, const GEOM_Parameter& theY, const GEOM_Parameter& theZ)
{
  SetErrorCode(GEOM_KO);

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
  SETPARAM(aPI.SetX, theX);
  SETPARAM(aPI.SetY, theY);
  SETPARAM(aPI.SetZ, theZ);

  //Compute the point value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPoint << " = MakePointWithReference("
	<< theReference << ", " << theX << ", " << theY << ", " << theZ << ")";

  SetErrorCode(GEOM_OK);
  return aPoint;
}

//=============================================================================
/*!
 *  MakePointOnCurve
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointOnCurve
							(Handle(GEOM_Object) theCurve, const GEOM_Parameter& theParameter)
{
  SetErrorCode(GEOM_KO);

  if (theCurve.IsNull()) return NULL;

  //Add a new Point object
  Handle(GEOM_Object) aPoint = GetEngine()->AddObject(GetDocID(), GEOM_POINT);

  //Add a new Point function for creation a point relativley another point
  Handle(GEOM_Function) aFunction = aPoint->AddFunction(GEOMImpl_PointDriver::GetID(), POINT_CURVE_PAR);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PointDriver::GetID()) return NULL;

  GEOMImpl_IPoint aPI (aFunction);

  Handle(GEOM_Function) aRefFunction = theCurve->GetLastFunction();
  if (aRefFunction.IsNull()) return NULL;

  aPI.SetCurve(aRefFunction);
  SETPARAM(aPI.SetParameter,theParameter);

  //Compute the point value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPoint << " = MakePointOnCurve("
							   << theCurve << ", " << theParameter << ")";

  SetErrorCode(GEOM_OK);
  return aPoint;
}

//=============================================================================
/*!
 *  MakePointOnSurface
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointOnSurface
   (Handle(GEOM_Object) theSurface, const GEOM_Parameter& theUParameter, const GEOM_Parameter& theVParameter)
{
  SetErrorCode(GEOM_KO);

  if (theSurface.IsNull()) return NULL;

  //Add a new Point object
  Handle(GEOM_Object) aPoint = GetEngine()->AddObject(GetDocID(), GEOM_POINT);

  //Add a new Point function for creation a point relativley another point
  Handle(GEOM_Function) aFunction = aPoint->AddFunction(GEOMImpl_PointDriver::GetID(),
                                                        POINT_SURFACE_PAR);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PointDriver::GetID()) return NULL;

  GEOMImpl_IPoint aPI (aFunction);

  Handle(GEOM_Function) aRefFunction = theSurface->GetLastFunction();
  if (aRefFunction.IsNull()) return NULL;

  aPI.SetSurface(aRefFunction);

  SETPARAM(aPI.SetParameter,theUParameter);
  SETPARAM(aPI.SetParameter2,theVParameter);

  //Compute the point value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPoint << " = MakeVertexOnSurface("
                               << theSurface << ", " << theUParameter 
                               << ", " << theVParameter << ")";

  SetErrorCode(GEOM_OK);
  return aPoint;
}

//=============================================================================
/*!
 *  MakePointOnLinesIntersection
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePointOnLinesIntersection
                            (Handle(GEOM_Object) theLine1, Handle(GEOM_Object) theLine2)
{
  SetErrorCode(GEOM_KO);

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
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPoint << " = MakeVertexOnLinesIntersection("
                               << theLine1 << ", " << theLine2 << ")";

  SetErrorCode(GEOM_OK);
  return aPoint;
}

//=============================================================================
/*!
 *  MakeTangentOnCurve
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeTangentOnCurve
							(const Handle(GEOM_Object)& theCurve, const GEOM_Parameter& theParameter)
{
  SetErrorCode(GEOM_KO);

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
  SETPARAM(aVI.SetParameter,theParameter);

  //Compute the vector value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aVec << " = MakeTangentOnCurve("
							   << theCurve << ", " << theParameter << ")";

  SetErrorCode(GEOM_OK);
  return aVec;
}

//=============================================================================
/*!
 *  MakeVectorDXDYDZ
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeVectorDXDYDZ
									 (const GEOM_Parameter& theDX, const GEOM_Parameter& theDY, const GEOM_Parameter& theDZ)
{
  SetErrorCode(GEOM_KO);

  //Add a new Vector object
  Handle(GEOM_Object) aVector = GetEngine()->AddObject(GetDocID(), GEOM_VECTOR);

  //Add a new Vector function with DXDYDZ parameters
  Handle(GEOM_Function) aFunction =
    aVector->AddFunction(GEOMImpl_VectorDriver::GetID(), VECTOR_DX_DY_DZ);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_VectorDriver::GetID()) return NULL;

  GEOMImpl_IVector aPI (aFunction);

  SETPARAM(aPI.SetDX,theDX);
  SETPARAM(aPI.SetDY,theDY);
  SETPARAM(aPI.SetDZ,theDZ);

  //Compute the Vector value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aVector << " = MakeVectorDXDYDZ("
	<< theDX << ", " << theDY << ", " << theDZ << ")";

  SetErrorCode(GEOM_OK);
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
  SetErrorCode(GEOM_KO);

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
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aVector << " = MakeVectorTwoPnt("
                               << thePnt1 << ", " << thePnt2 << ")";

  SetErrorCode(GEOM_OK);
  return aVector;
}

//=============================================================================
/*!
 *  MakeVectorPntDXDYDZ
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeVectorPntDXDYDZ
					 (Handle(GEOM_Object) thePnt, const GEOM_Parameter& theDX, const GEOM_Parameter& theDY, const GEOM_Parameter& theDZ)
{
  SetErrorCode(GEOM_KO);

  if (thePnt.IsNull()) return NULL;

  //Add a new Vector object
  Handle(GEOM_Object) aVector = GetEngine()->AddObject(GetDocID(), GEOM_VECTOR);

  //Add a new Vector function
  Handle(GEOM_Function) aFunction =
	aVector->AddFunction(GEOMImpl_VectorDriver::GetID(), VECTOR_PNT_DX_DY_DZ);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_VectorDriver::GetID()) return NULL;

  GEOMImpl_IVector aPI (aFunction);

  Handle(GEOM_Function) aRef = thePnt->GetLastFunction();

  if (aRef.IsNull()) return NULL;

  SETPARAM(aPI.SetDX,theDX);
  SETPARAM(aPI.SetDY,theDY);
  SETPARAM(aPI.SetDZ,theDZ);

  aPI.SetPoint1(aRef);

  //Compute the Vector value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aVector << " = MakeVectorPntDXDYDZ("
							   << thePnt << ", " << theDX << ", " << theDY << ", " << theDZ << ")";

  SetErrorCode(GEOM_OK);
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
  SetErrorCode(GEOM_KO);

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
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aLine << " = MakeLine("
                               << thePnt << ", " << theDir << ")";

  SetErrorCode(GEOM_OK);
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
  SetErrorCode(GEOM_KO);

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
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aLine << " = MakeLineTwoPnt("
                               << thePnt1 << ", " << thePnt2 << ")";

  SetErrorCode(GEOM_OK);
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
  SetErrorCode(GEOM_KO);

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
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aLine << " = MakeLineTwoFaces("
                               << theFace1 << ", " << theFace2 << ")";

  SetErrorCode(GEOM_OK);
  return aLine;
}

//=============================================================================
/*!
 *  MakePlaneThreePnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePlaneThreePnt
                     (Handle(GEOM_Object) thePnt1, Handle(GEOM_Object) thePnt2,
					  Handle(GEOM_Object) thePnt3, const GEOM_Parameter& theSize)
{
  SetErrorCode(GEOM_KO);

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
  SETPARAM(aPI.SetSize,theSize);

  //Compute the Plane value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPlane << " = MakePlaneThreePnt("
	<< thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ", " << theSize << ")";

  SetErrorCode(GEOM_OK);
  return aPlane;
}

//=============================================================================
/*!
 *  MakePlanePntVec
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePlanePntVec
                       (Handle(GEOM_Object) thePnt, Handle(GEOM_Object) theVec,
						const GEOM_Parameter& theSize)
{
  SetErrorCode(GEOM_KO);

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
  SETPARAM(aPI.SetSize,theSize);

  //Compute the Plane value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPlane << " = MakePlanePntVec("
	<< thePnt << ", " << theVec << ", " << theSize << ")";

  SetErrorCode(GEOM_OK);
  return aPlane;
}

//=============================================================================
/*!
 *  MakePlaneFace
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePlaneFace
					   (Handle(GEOM_Object) theFace, const GEOM_Parameter& theSize)
{
  SetErrorCode(GEOM_KO);

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
  SETPARAM(aPI.SetSize,theSize);

  //Compute the Plane value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPlane << " = MakePlaneFace("
							   << theFace << ", " << theSize << ")";

  SetErrorCode(GEOM_OK);
  return aPlane;
}

//=============================================================================
/*!
 *  MakePlane2Vec
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePlane2Vec
                       (Handle(GEOM_Object) theVec1, Handle(GEOM_Object) theVec2,
                        const GEOM_Parameter& theSize)
{
  SetErrorCode(GEOM_KO);

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

  SETPARAM(aPI.SetSize,theSize);

  //Compute the Plane value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPlane << " = MakePlane2Vec("
    << theVec1 << ", " << theVec2 << ", " << theSize << ")";

  SetErrorCode(GEOM_OK);
  return aPlane;
}

//=============================================================================
/*!
 *  MakePlaneLCS
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakePlaneLCS
                       (Handle(GEOM_Object) theLCS, const GEOM_Parameter& theSize, const GEOM_Parameter& theOrientation)
{
  SetErrorCode(GEOM_KO);

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

  SETPARAM(aPI.SetSize,theSize);
  SETPARAM(aPI.SetOrientation,theOrientation);

  //Compute the Plane value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPlane << " = MakePlaneLCS("
                               << theLCS << ", " << theSize << ", " << theOrientation << ")";

  SetErrorCode(GEOM_OK);
  return aPlane;
}

//=============================================================================
/*!
 *  MakeMarker
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeMarker
								  (const GEOM_Parameter& theOX,  const GEOM_Parameter& theOY,  const GEOM_Parameter& theOZ,
								   const GEOM_Parameter& theXDX, const GEOM_Parameter& theXDY, const GEOM_Parameter& theXDZ,
								   const GEOM_Parameter& theYDX, const GEOM_Parameter& theYDY, const GEOM_Parameter& theYDZ)
{
  SetErrorCode(GEOM_KO);

  //Add a new Marker object
  Handle(GEOM_Object) aMarker = GetEngine()->AddObject(GetDocID(), GEOM_MARKER);

  //Add a new Marker function
  Handle(GEOM_Function) aFunction =
    aMarker->AddFunction(GEOMImpl_MarkerDriver::GetID(), MARKER_CS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MarkerDriver::GetID()) return NULL;

  GEOMImpl_IMarker aPI(aFunction);

  SETPARAM(aPI.SetOX,theOX);
  SETPARAM(aPI.SetOY,theOY);
  SETPARAM(aPI.SetOZ,theOZ);
  SETPARAM(aPI.SetXDX,theXDX);
  SETPARAM(aPI.SetXDY,theXDY);
  SETPARAM(aPI.SetXDZ,theXDZ);
  SETPARAM(aPI.SetYDX,theYDX);
  SETPARAM(aPI.SetYDY,theYDY);
  SETPARAM(aPI.SetYDZ,theYDZ);

  //Compute the marker value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aMarker << " = MakeMarker("
	<< theOX << ", " << theOY << ", " << theOZ << ", "
	  << theXDX << ", " << theXDY << ", " << theXDZ << ", "
		<< theYDX << ", " << theYDY << ", " << theYDZ << ")";

  SetErrorCode(GEOM_OK);
  return aMarker;
}

//=============================================================================
/*!
 *  MakeTangentPlaneOnFace
 */
//=============================================================================

Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeTangentPlaneOnFace(const Handle(GEOM_Object)& theFace,
										  const GEOM_Parameter& theParamU,
									  const GEOM_Parameter& theParamV,
									  const GEOM_Parameter& theSize)
{
   SetErrorCode(GEOM_KO);

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
  SETPARAM(aPI.SetSize,theSize);
  SETPARAM(aPI.SetParameterU,theParamU);
  SETPARAM(aPI.SetParameterV,theParamV);

  //Compute the Plane value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aPlane << " = MakeTangentPlaneOnFace("
							   << theFace << ", " <<theParamU <<", "<<theParamV <<", "<< theSize << ")";

  SetErrorCode(GEOM_OK);
  return aPlane;
}


//=============================================================================
/*!
 *  MakeFaceThreePnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeFaceThreePnt
		(Handle(GEOM_Object) thePnt1, Handle(GEOM_Object) thePnt2,
		 Handle(GEOM_Object) thePnt3)
{
	SetErrorCode(GEOM_KO);

	if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Face object
	Handle(GEOM_Object) aFace = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Face function
	Handle(GEOM_Function) aFunction =
			aFace->AddFunction(GEOMImpl_FaceDriver::GetID(), FACE_THREE_PNT);

  //Check if the function is set correctly
	if (aFunction->GetDriverGUID() != GEOMImpl_FaceDriver::GetID()) return NULL;

	GEOMImpl_IFace aPI (aFunction);

	Handle(GEOM_Function) aRef1 = thePnt1->GetLastFunction();
	Handle(GEOM_Function) aRef2 = thePnt2->GetLastFunction();
	Handle(GEOM_Function) aRef3 = thePnt3->GetLastFunction();
	if (aRef1.IsNull() || aRef2.IsNull() || aRef3.IsNull()) return NULL;

	aPI.SetPoint1(aRef1);
	aPI.SetPoint2(aRef2);
	aPI.SetPoint3(aRef3);

  //Compute the Face value
	try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
							   OCC_CATCH_SIGNALS;
#endif
					   if (!GetSolver()->ComputeFunction(aFunction)) {
						   SetErrorCode("Face driver failed");
						   return NULL;
					   }
	}
	catch (Standard_Failure) {
		Handle(Standard_Failure) aFail = Standard_Failure::Caught();
		SetErrorCode(aFail->GetMessageString());
		return NULL;
	}

  //Make a Python command
	GEOM::TPythonDump(aFunction) << aFace << " = MakeFaceThreePnt("
			<< thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ")";

	SetErrorCode(GEOM_OK);
	return aFace;
}

//=============================================================================
/*!
 *  MakeFaceFourPnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBasicOperations::MakeFaceFourPnt
		(Handle(GEOM_Object) thePnt1, Handle(GEOM_Object) thePnt2,
		 Handle(GEOM_Object) thePnt3, Handle(GEOM_Object) thePnt4)
{
	SetErrorCode(GEOM_KO);

	if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull() || thePnt4.IsNull()) return NULL;

  //Add a new Face object
	Handle(GEOM_Object) aFace = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Face function
	Handle(GEOM_Function) aFunction =
			aFace->AddFunction(GEOMImpl_FaceDriver::GetID(), FACE_FOUR_PNT);

  //Check if the function is set correctly
	if (aFunction->GetDriverGUID() != GEOMImpl_FaceDriver::GetID()) return NULL;

	GEOMImpl_IFace aPI (aFunction);

	Handle(GEOM_Function) aRef1 = thePnt1->GetLastFunction();
	Handle(GEOM_Function) aRef2 = thePnt2->GetLastFunction();
	Handle(GEOM_Function) aRef3 = thePnt3->GetLastFunction();
	Handle(GEOM_Function) aRef4 = thePnt4->GetLastFunction();
	if (aRef1.IsNull() || aRef2.IsNull() || aRef3.IsNull() || aRef4.IsNull()) return NULL;

	aPI.SetPoint1(aRef1);
	aPI.SetPoint2(aRef2);
	aPI.SetPoint3(aRef3);
	aPI.SetPoint4(aRef4);

  //Compute the Face value
	try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
							   OCC_CATCH_SIGNALS;
#endif
					   if (!GetSolver()->ComputeFunction(aFunction)) {
						   SetErrorCode("Face driver failed");
						   return NULL;
					   }
	}
	catch (Standard_Failure) {
		Handle(Standard_Failure) aFail = Standard_Failure::Caught();
		SetErrorCode(aFail->GetMessageString());
		return NULL;
	}

  //Make a Python command
	GEOM::TPythonDump(aFunction) << aFace << " = MakeFaceFourPnt("
			<< thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ", " << thePnt4 << ")";

	SetErrorCode(GEOM_OK);
	return aFace;
}

