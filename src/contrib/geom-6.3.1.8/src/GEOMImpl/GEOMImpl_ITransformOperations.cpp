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

#include <GEOMImpl_ITransformOperations.hxx>

#define SETPARAM(aFUNC,aVAL)  \
  if (aVAL.IsString())         \
	aFUNC( aVAL.GetString() ); \
  else                         \
	aFUNC( aVAL.GetDouble() );


#include <GEOM_Function.hxx>
#include <GEOM_PythonDump.hxx>

#include <GEOMImpl_TranslateDriver.hxx>
#include <GEOMImpl_MirrorDriver.hxx>
#include <GEOMImpl_ProjectionDriver.hxx>
#include <GEOMImpl_OffsetDriver.hxx>
#include <GEOMImpl_ScaleDriver.hxx>
#include <GEOMImpl_RotateDriver.hxx>
#include <GEOMImpl_PositionDriver.hxx>

#include <GEOMImpl_ITranslate.hxx>
#include <GEOMImpl_IMirror.hxx>
#include <GEOMImpl_IOffset.hxx>
#include <GEOMImpl_IScale.hxx>
#include <GEOMImpl_IRotate.hxx>
#include <GEOMImpl_IPosition.hxx>

#include <GEOMImpl_Types.hxx>

#include <TFunction_DriverTable.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_Logbook.hxx>
#include <TDF_Tool.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <TopExp.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Compound.hxx>
#include <gp_Pnt.hxx>
#include <gp_Vec.hxx>
#include <gp_Trsf.hxx>

#include <StdFail_NotDone.hxx>
#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================

GEOMImpl_ITransformOperations::GEOMImpl_ITransformOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  //MESSAGE("GEOMImpl_ITransformOperations::GEOMImpl_ITransformOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================

GEOMImpl_ITransformOperations::~GEOMImpl_ITransformOperations()
{
  //MESSAGE("GEOMImpl_ITransformOperations::~GEOMImpl_ITransformOperations");
}


//=============================================================================
/*!
 *  TranslateTwoPoints
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::TranslateTwoPoints
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) thePoint1, Handle(GEOM_Object) thePoint2)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || thePoint1.IsNull() || thePoint2.IsNull()) return NULL;

  Handle(GEOM_Function) aFunction, aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  // Get last functions of the arguments
  Handle(GEOM_Function) aP1F = thePoint1->GetLastFunction();
  Handle(GEOM_Function) aP2F = thePoint2->GetLastFunction();

  //Add a translate function
  aFunction = theObject->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_TWO_POINTS);

  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TranslateDriver::GetID()) return NULL;

  GEOMImpl_ITranslate aTI (aFunction);
  aTI.SetPoint1(aP1F);
  aTI.SetPoint2(aP2F);
  aTI.SetOriginal(aLastFunction);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Translation driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "TranslateTwoPoints("
    << theObject << ", " << thePoint1 << ", " << thePoint2 << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  TranslateDXDYDZ
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::TranslateDXDYDZ
	   (Handle(GEOM_Object) theObject, const GEOM_Parameter&  theX, const GEOM_Parameter&  theY,  const GEOM_Parameter&  theZ)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull()) return NULL;

  Handle(GEOM_Function) aFunction, aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  //Add a translate function
  aFunction = theObject->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_XYZ);

  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TranslateDriver::GetID()) return NULL;

  GEOMImpl_ITranslate aTI(aFunction);
  SETPARAM(aTI.SetDX,theX);
  SETPARAM(aTI.SetDY,theY);
  SETPARAM(aTI.SetDZ,theZ);
  aTI.SetOriginal(aLastFunction);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Translation driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "TranslateDXDYDZ("
    << theObject << ", " << theX << ", " << theY << ", " << theZ << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}


//=============================================================================
/*!
 *  TranslateTwoPointsCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::TranslateTwoPointsCopy
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) thePoint1, Handle(GEOM_Object) thePoint2)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || thePoint1.IsNull() || thePoint2.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a translate function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_TWO_POINTS_COPY);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TranslateDriver::GetID()) return NULL;

  GEOMImpl_ITranslate aTI(aFunction);
  aTI.SetPoint1(thePoint1->GetLastFunction());
  aTI.SetPoint2(thePoint2->GetLastFunction());
  //aTI.SetShape(theObject->GetValue());
  aTI.SetOriginal(aLastFunction);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Translation driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = TranslateTwoPointsCopy("
    << theObject << ", " << thePoint1 << ", " << thePoint2 << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  TranslateDXDYDZCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::TranslateDXDYDZCopy
	   (Handle(GEOM_Object) theObject, const GEOM_Parameter& theX, const GEOM_Parameter& theY,  const GEOM_Parameter& theZ)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a translate function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_XYZ_COPY);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TranslateDriver::GetID()) return NULL;

  GEOMImpl_ITranslate aTI(aFunction);
  SETPARAM(aTI.SetDX,theX);
  SETPARAM(aTI.SetDY,theY);
  SETPARAM(aTI.SetDZ,theZ);
  aTI.SetOriginal(aLastFunction);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Translation driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = TranslateDXDYDZCopy("
    << theObject << ", " << theX << ", " << theY << ", " << theZ << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}


//=============================================================================
/*!
 *  TranslateVector
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::TranslateVector
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theVector)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theVector.IsNull()) return NULL;

  Handle(GEOM_Function) aFunction, aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  // Get last functions of the arguments
  Handle(GEOM_Function) aVF = theVector->GetLastFunction();

  //Add a translate function
  aFunction = theObject->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_VECTOR);

  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TranslateDriver::GetID()) return NULL;

  GEOMImpl_ITranslate aTI (aFunction);
  aTI.SetVector(aVF);
  aTI.SetOriginal(aLastFunction);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Translation driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "TranslateVector("
                               << theObject << ", " << theVector << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  TranslateVectorCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::TranslateVectorCopy
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theVector)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theVector.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a translate function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_VECTOR_COPY);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TranslateDriver::GetID()) return NULL;

  GEOMImpl_ITranslate aTI(aFunction);
  aTI.SetVector(theVector->GetLastFunction());
//  aTI.SetShape(theObject->GetValue());
  aTI.SetOriginal(aLastFunction);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Translation driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = TranslateVectorCopy("
                               << theObject << ", " << theVector << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  TranslateVectorDistance
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::TranslateVectorDistance
	   (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theVector, const GEOM_Parameter& theDistance, bool theCopy)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theVector.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  Handle(GEOM_Object) aCopy;   //Add a new Copy object
  Handle(GEOM_Function) aFunction;

  //Add a translate function
  if (theCopy) {
    aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());
    aFunction = aCopy->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_VECTOR_DISTANCE);
  }
  else {
    aFunction = theObject->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_VECTOR_DISTANCE);
  }
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TranslateDriver::GetID()) return NULL;

  GEOMImpl_ITranslate aTI(aFunction);
  aTI.SetVector(theVector->GetLastFunction());
  SETPARAM(aTI.SetDistance,theDistance);
//  aTI.SetShape(theObject->GetValue());
  aTI.SetOriginal(aLastFunction);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Translation driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  if (theCopy) {
	GEOM::TPythonDump(aFunction) << aCopy << " = MakeTranslationVectorDistance("
				 << theObject << ", " << theVector << ", " << theDistance << ")";
	SetErrorCode(GEOM_OK);
    return aCopy;
  }

  GEOM::TPythonDump(aFunction) << "TranslateVectorDistance("
			       << theObject << ", " << theVector << ", " << theDistance << ", " << (int)theCopy << ")";
  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  Translate1D
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::Translate1D
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theVector,
		const GEOM_Parameter& theStep, const GEOM_Parameter& theNbTimes)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theVector.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a translate function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_1D);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TranslateDriver::GetID()) return NULL;

  GEOMImpl_ITranslate aTI(aFunction);
  aTI.SetVector(theVector->GetLastFunction());
  aTI.SetOriginal(aLastFunction);
  SETPARAM(aTI.SetStep1,theStep);
  SETPARAM(aTI.SetNbIter1,theNbTimes);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Translation driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = Translate1D("
    << theObject << ", " << theVector << ", " << theStep << ", " << theNbTimes << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  Translate2D
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::Translate2D (Handle(GEOM_Object) theObject,
								Handle(GEOM_Object) theVector,
								const GEOM_Parameter& theStep1,
								const GEOM_Parameter& theNbTimes1,
								Handle(GEOM_Object) theVector2,
								const GEOM_Parameter& theStep2,
								const GEOM_Parameter& theNbTimes2)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theVector.IsNull() || theVector2.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a translate function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_2D);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TranslateDriver::GetID()) return NULL;

  GEOMImpl_ITranslate aTI(aFunction);
  aTI.SetVector(theVector->GetLastFunction());
  aTI.SetVector2(theVector2->GetLastFunction());
  aTI.SetOriginal(aLastFunction);
  SETPARAM(aTI.SetStep1,theStep1);
  SETPARAM(aTI.SetNbIter1,theNbTimes1);
  SETPARAM(aTI.SetStep2,theStep2);
  SETPARAM(aTI.SetNbIter2,theNbTimes2);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Translation driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = Translate2D("
    << theObject << ", " << theVector  << ", " << theStep1 << ", " << theNbTimes1
      << ", " << theVector2 << ", " << theStep2 << ", " << theNbTimes2 << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  TranslateAlongRail
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::TranslateAlongRail( Handle(GEOM_Object) theObject,
                    Handle(GEOM_Object) theRail, const GEOM_Parameter& theStep,
                    const GEOM_Parameter& theNbTimes, const GEOM_Parameter& theType)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theRail.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a translate function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_TranslateDriver::GetID(), TRANSLATE_ALONG_RAIL);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TranslateDriver::GetID()) return NULL;

  GEOMImpl_ITranslate aTI(aFunction);
  aTI.SetRailShape(theRail->GetLastFunction());
  aTI.SetOriginal(aLastFunction);

  SETPARAM(aTI.SetStep1,theStep);
  SETPARAM(aTI.SetNbIter1,theNbTimes);
  SETPARAM(aTI.SetNbIter2,theType);     //0=No rotation, 1=Plane based rotation, 2=Freeform rotation

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Translation driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = TranslateAlongRail("
    << theObject << ", " << theRail  << ", " << theStep
    << ", " << theNbTimes << ", " << theType << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  TranslateShape1D
 */
//=============================================================================
/*
TopoDS_Shape GEOMImpl_ITransformOperations::TranslateShape1D (const TopoDS_Shape&  theShape,
                                                              GEOMImpl_ITranslate* theTI)
{
  TopoDS_Shape aRes;

  // Vector
  Handle(GEOM_Function) aVector = theTI->GetVector();
  if (aVector.IsNull()) {
    StdFail_NotDone::Raise("Invalid object is given for vector argument");
  }
  TopoDS_Shape aV = aVector->GetValue();
  if (aV.IsNull() || aV.ShapeType() != TopAbs_EDGE) {
    StdFail_NotDone::Raise("Invalid object is given for vector argument");
  }
  TopoDS_Edge anEdge = TopoDS::Edge(aV);

  gp_Pnt aP1 = BRep_Tool::Pnt(TopExp::FirstVertex(anEdge));
  gp_Pnt aP2 = BRep_Tool::Pnt(TopExp::LastVertex(anEdge));
  if (aP1.Distance(aP2) < gp::Resolution()) {
    StdFail_NotDone::Raise("Invalid object is given for vector argument");
  }

  // Step and Nb.times
  Standard_Real step = theTI->GetStep1();
  Standard_Integer nbtimes = theTI->GetNbIter1();

  // Make multi-translation
  gp_Trsf aTrsf;
  gp_Vec aVec;
  TopoDS_Compound aCompound;
  BRep_Builder B;
  B.MakeCompound(aCompound);

  gp_Vec Vec (aP1, aP2);
  Vec.Normalize();

  TopLoc_Location aLocOrig = theShape.Location();
  gp_Trsf aTrsfOrig = aLocOrig.Transformation();

  for (int i = 0; i < nbtimes; i++) {
    aVec = Vec * (i * step);
    aTrsf.SetTranslation(aVec);
    //NPAL18620: performance problem: multiple locations are accumulated
    //           in shape and need a great time to process
    //BRepBuilderAPI_Transform aTransformation(theShape, aTrsf, Standard_False);
    //B.Add(aCompound, aTransformation.Shape());
    TopLoc_Location aLocRes (aTrsf * aTrsfOrig);
    B.Add(aCompound, theShape.Located(aLocRes));
  }
  aRes = aCompound;

  return aRes;
}
*/

//=============================================================================
/*!
 *  TranslateShape2D
 */
//=============================================================================
/*
TopoDS_Shape GEOMImpl_ITransformOperations::TranslateShape2D (const TopoDS_Shape&  theShape,
                                                              GEOMImpl_ITranslate* theTI)
{
  TopoDS_Shape aRes;

  // Vectors
  Handle(GEOM_Function) aVector1 = theTI->GetVector();
  Handle(GEOM_Function) aVector2 = theTI->GetVector2();

  if (aVector1.IsNull() || aVector2.IsNull()) {
    StdFail_NotDone::Raise("Invalid object is given for vector argument");
  }

  TopoDS_Shape aV1 = aVector1->GetValue();
  TopoDS_Shape aV2 = aVector2->GetValue();

  if (aV1.IsNull() || aV1.ShapeType() != TopAbs_EDGE ||
      aV2.IsNull() || aV2.ShapeType() != TopAbs_EDGE) {
    StdFail_NotDone::Raise("Invalid object is given for vector argument");
  }

  TopoDS_Edge anEdge1 = TopoDS::Edge(aV1);
  TopoDS_Edge anEdge2 = TopoDS::Edge(aV2);

  gp_Pnt aP11 = BRep_Tool::Pnt(TopExp::FirstVertex(anEdge1));
  gp_Pnt aP12 = BRep_Tool::Pnt(TopExp::LastVertex(anEdge1));
  gp_Pnt aP21 = BRep_Tool::Pnt(TopExp::FirstVertex(anEdge2));
  gp_Pnt aP22 = BRep_Tool::Pnt(TopExp::LastVertex(anEdge2));

  if (aP11.Distance(aP12) < gp::Resolution() ||
      aP21.Distance(aP22) < gp::Resolution()) {
    StdFail_NotDone::Raise("Invalid object is given for vector argument");
  }

  gp_Vec Vec1 (aP11, aP12);
  gp_Vec Vec2 (aP21, aP22);

  Vec1.Normalize();
  Vec2.Normalize();

  // Step and Nb.times
  Standard_Real step1 = theTI->GetStep1(), step2 = theTI->GetStep2();
  Standard_Integer nbtimes1 = theTI->GetNbIter1(), nbtimes2 = theTI->GetNbIter2();

  // Make multi-translation
  gp_Trsf aTrsf;
  gp_Vec aVec;
  Standard_Real DX, DY, DZ;
  TopoDS_Compound aCompound;
  BRep_Builder B;
  B.MakeCompound(aCompound);

  TopLoc_Location aLocOrig = theShape.Location();
  gp_Trsf aTrsfOrig = aLocOrig.Transformation();

  for (int i = 0; i < nbtimes1; i++) {
    for (int j = 0; j < nbtimes2; j++) {
      DX = i * step1 * Vec1.X() + j * step2 * Vec2.X();
      DY = i * step1 * Vec1.Y() + j * step2 * Vec2.Y();
      DZ = i * step1 * Vec1.Z() + j * step2 * Vec2.Z();
      aVec.SetCoord(DX, DY, DZ);
      aTrsf.SetTranslation(aVec);
      //NPAL18620: performance problem: multiple locations are accumulated
      //           in shape and need a great time to process
      //BRepBuilderAPI_Transform aBRepTransformation(theShape, aTrsf, Standard_False);
      //B.Add(aCompound, aBRepTransformation.Shape());
      TopLoc_Location aLocRes (aTrsf * aTrsfOrig);
      B.Add(aCompound, theShape.Located(aLocRes));
    }
  }
  aRes = aCompound;

  return aRes;
}
*/

//=============================================================================
/*!
 *  MirrorPlane
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::MirrorPlane
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) thePlane)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || thePlane.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL;  //There is no function which creates an object to be mirrored

  // Get last functions of the arguments
  Handle(GEOM_Function) aPF = thePlane->GetLastFunction();

  //Add a mirror function
  Handle(GEOM_Function) aFunction =
    theObject->AddFunction(GEOMImpl_MirrorDriver::GetID(), MIRROR_PLANE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MirrorDriver::GetID()) return NULL;

  GEOMImpl_IMirror aTI (aFunction);
  aTI.SetPlane(aPF);
  aTI.SetOriginal(aLastFunction);

  //Compute the mirror
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Mirror driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "MirrorPlane("
                               << theObject << ", " << thePlane << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  MirrorPlaneCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::MirrorPlaneCopy
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) thePlane)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || thePlane.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be mirrored

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a mirror function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_MirrorDriver::GetID(), MIRROR_PLANE_COPY);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MirrorDriver::GetID()) return NULL;

  GEOMImpl_IMirror aTI (aFunction);
  aTI.SetPlane(thePlane->GetLastFunction());
  aTI.SetOriginal(aLastFunction);

  //Compute the mirror
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Mirror driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = MirrorPlaneCopy("
                               << theObject << ", " << thePlane << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  MirrorPoint
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::MirrorPoint
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) thePoint)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || thePoint.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL;  //There is no function which creates an object to be mirrored

  // Get last functions of the arguments
  Handle(GEOM_Function) aPF = thePoint->GetLastFunction();

  //Add a mirror function
  Handle(GEOM_Function) aFunction =
    theObject->AddFunction(GEOMImpl_MirrorDriver::GetID(), MIRROR_POINT);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MirrorDriver::GetID()) return NULL;

  GEOMImpl_IMirror aTI (aFunction);
  aTI.SetPoint(aPF);
  aTI.SetOriginal(aLastFunction);

  //Compute the mirror
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Mirror driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "MirrorPoint("
                               << theObject << ", " << thePoint << ")";

  SetErrorCode(GEOM_OK);
  return NULL;
}

//=============================================================================
/*!
 *  MirrorPointCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::MirrorPointCopy
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) thePoint)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || thePoint.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be mirrored

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a mirror function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_MirrorDriver::GetID(), MIRROR_POINT_COPY);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MirrorDriver::GetID()) return NULL;

  GEOMImpl_IMirror aTI (aFunction);
  aTI.SetPoint(thePoint->GetLastFunction());
  aTI.SetOriginal(aLastFunction);

  //Compute the mirror
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Mirror driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = MirrorPointCopy("
                               << theObject << ", " << thePoint << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  MirrorAxis
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::MirrorAxis
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theAxis)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theAxis.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL;  //There is no function which creates an object to be mirrored

  // Get last functions of the arguments
  Handle(GEOM_Function) anAF = theAxis->GetLastFunction();

  //Add a mirror function
  Handle(GEOM_Function) aFunction =
    theObject->AddFunction(GEOMImpl_MirrorDriver::GetID(), MIRROR_AXIS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MirrorDriver::GetID()) return NULL;

  GEOMImpl_IMirror aTI (aFunction);
  aTI.SetAxis(anAF);
  aTI.SetOriginal(aLastFunction);

  //Compute the mirror
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Mirror driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "MirrorAxis("
                               << theObject << ", " << theAxis << ")";

  SetErrorCode(GEOM_OK);
  return NULL;
}

//=============================================================================
/*!
 *  MirrorAxisCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::MirrorAxisCopy
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theAxis)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theAxis.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be mirrored

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a mirror function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_MirrorDriver::GetID(), MIRROR_AXIS_COPY);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MirrorDriver::GetID()) return NULL;

  GEOMImpl_IMirror aTI (aFunction);
  aTI.SetAxis(theAxis->GetLastFunction());
  aTI.SetOriginal(aLastFunction);

  //Compute the mirror
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Mirror driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = MirrorAxisCopy("
                               << theObject << ", " << theAxis << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}


//=============================================================================
/*!
 *  OffsetShape
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::OffsetShape
							  (Handle(GEOM_Object) theObject, const GEOM_Parameter& theOffset, const GEOM_Parameter& theHeightOffset, bool isPlanar)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull()) return NULL;

  Handle(GEOM_Function) anOriginal = theObject->GetLastFunction();
  if (anOriginal.IsNull()) return NULL; //There is no function which creates an object to be offset

  //Add a new Offset function
  Handle(GEOM_Function) aFunction;
  if (isPlanar)
	aFunction = theObject->AddFunction(GEOMImpl_OffsetDriver::GetID(), OFFSET_SHAPE_PLANAR);
  else
	aFunction = theObject->AddFunction(GEOMImpl_OffsetDriver::GetID(), OFFSET_SHAPE);

  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_OffsetDriver::GetID()) return NULL;

  GEOMImpl_IOffset aTI (aFunction);
  aTI.SetShape(anOriginal);
  SETPARAM(aTI.SetValue,theOffset);
  SETPARAM(aTI.SetAltValue,theHeightOffset);

  //Compute the offset
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Offset driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "OffsetShape("
							   << theObject << ", " << theOffset << ", " << theHeightOffset << ", Planar: " << (int)isPlanar << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  OffsetShapeCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::OffsetShapeCopy
							  (Handle(GEOM_Object) theObject, const GEOM_Parameter& theOffset, const GEOM_Parameter& theHeightOffset, bool isPlanar)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull()) return NULL;

  Handle(GEOM_Function) anOriginal = theObject->GetLastFunction();
  if (anOriginal.IsNull()) return NULL; //There is no function which creates an object to be offset

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a new Offset function
  Handle(GEOM_Function) aFunction;
  if (isPlanar)
	aFunction = aCopy->AddFunction(GEOMImpl_OffsetDriver::GetID(), OFFSET_SHAPE_PLANAR);
  else
	aFunction = aCopy->AddFunction(GEOMImpl_OffsetDriver::GetID(), OFFSET_SHAPE);

  //Add a new Offset function
  //Handle(GEOM_Function) aFunction =
  //  aCopy->AddFunction(GEOMImpl_OffsetDriver::GetID(), OFFSET_SHAPE_COPY);
  
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_OffsetDriver::GetID()) return NULL;

  GEOMImpl_IOffset aTI (aFunction);
  aTI.SetShape(anOriginal);
  SETPARAM(aTI.SetValue,theOffset);
  SETPARAM(aTI.SetAltValue,theHeightOffset);

  //Compute the offset
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Offset driver failed");
      return NULL;
	}
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = OffsetShapeCopy("
							   << theObject << ", " << theOffset << ", " << theHeightOffset << ", Planar: " << (int)isPlanar << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}


//=============================================================================
/*!
 *  ProjectShapeCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::ProjectShapeCopy
       (Handle(GEOM_Object) theSource, Handle(GEOM_Object) theTarget)
{
  SetErrorCode(GEOM_KO);

  if (theSource.IsNull() || theTarget.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theSource->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be projected

  //Add a new Projection object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), GEOM_PROJECTION);

  //Add a Projection function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_ProjectionDriver::GetID(), PROJECTION_COPY);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ProjectionDriver::GetID()) return NULL;

  GEOMImpl_IMirror aTI (aFunction);
  aTI.SetPlane(theTarget->GetLastFunction());
  aTI.SetOriginal(aLastFunction);

  //Compute the Projection
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Projection driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = MakeProjection("
                               << theSource << ", " << theTarget << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  ScaleShape
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::ScaleShape
	   (Handle(GEOM_Object) theObject, Handle(GEOM_Object) thePoint, const GEOM_Parameter& theFactor)
{
	SetErrorCode(GEOM_KO);

  if (theObject.IsNull()) return NULL;

  Handle(GEOM_Function) anOriginal = theObject->GetLastFunction();
  if (anOriginal.IsNull()) return NULL; //There is no function which creates an object to be scaled

  //Add a scale function
  Handle(GEOM_Function) aFunction =
    theObject->AddFunction(GEOMImpl_ScaleDriver::GetID(), SCALE_SHAPE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ScaleDriver::GetID()) return NULL;

  // Set arguments
  GEOMImpl_IScale aTI (aFunction);
  aTI.SetShape(anOriginal);
  SETPARAM(aTI.SetFactor,theFactor);

  // Set point argument
  if (!thePoint.IsNull()) {
    Handle(GEOM_Function) aPF = thePoint->GetLastFunction();
    aTI.SetPoint(aPF);
  }

  //Compute the scale
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Scale driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "ScaleShape("
	<< theObject << ", " << thePoint << ", " << theFactor << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  ScaleShapeCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::ScaleShapeCopy
	   (Handle(GEOM_Object) theObject, Handle(GEOM_Object) thePoint, const GEOM_Parameter& theFactor)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || thePoint.IsNull()) return NULL;

  Handle(GEOM_Function) anOriginal = theObject->GetLastFunction();
  if (anOriginal.IsNull()) return NULL; //There is no function which creates an object to be scaled

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a scale function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_ScaleDriver::GetID(), SCALE_SHAPE_COPY);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ScaleDriver::GetID()) return NULL;

  GEOMImpl_IScale aTI (aFunction);
  aTI.SetShape(anOriginal);
  aTI.SetPoint(thePoint->GetLastFunction());
  SETPARAM(aTI.SetFactor,theFactor);

  //Compute the scale
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Scale driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = ScaleShapeCopy("
    << theObject << ", " << thePoint << ", " << theFactor << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  ScaleShapeAffine
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::ScaleShapeAffine
	   (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theVector, const GEOM_Parameter& theFactor)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theVector.IsNull()) return NULL;

  Handle(GEOM_Function) anOriginal = theObject->GetLastFunction();
  if (anOriginal.IsNull()) return NULL; //There is no function which creates an object to be scaled

  // Get last functions of the arguments
  Handle(GEOM_Function) aVF = theVector->GetLastFunction();

  //Add a scale function
  Handle(GEOM_Function) aFunction =
	theObject->AddFunction(GEOMImpl_ScaleDriver::GetID(), SCALE_SHAPE_AFFINE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ScaleDriver::GetID()) return NULL;

  GEOMImpl_IScale aTI (aFunction);
  aTI.SetShape(anOriginal);
  aTI.SetVector(aVF);
  SETPARAM(aTI.SetFactor,theFactor);

  //Compute the scale
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Scale driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "ScaleShapeAffine("
	<< theObject << ", " << theVector << ", " << theFactor << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  ScaleShapeAffineCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::ScaleShapeAffineCopy
	   (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theVector, const GEOM_Parameter& theFactor)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theVector.IsNull()) return NULL;

  Handle(GEOM_Function) anOriginal = theObject->GetLastFunction();
  if (anOriginal.IsNull()) return NULL; //There is no function which creates an object to be scaled

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a scale function
  Handle(GEOM_Function) aFunction =
	aCopy->AddFunction(GEOMImpl_ScaleDriver::GetID(), SCALE_SHAPE_AFFINE_COPY);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ScaleDriver::GetID()) return NULL;

  GEOMImpl_IScale aTI (aFunction);
  aTI.SetShape(anOriginal);
  aTI.SetVector(theVector->GetLastFunction());
  SETPARAM(aTI.SetFactor,theFactor);

  //Compute the scale
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Scale driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = ScaleShapeAffineCopy("
	<< theObject << ", " << theVector << ", " << theFactor << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  PositionShape
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::PositionShape
        (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theStartLCS, Handle(GEOM_Object) theEndLCS)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theEndLCS.IsNull()) return NULL;

  Handle(GEOM_Function) anOriginal = theObject->GetLastFunction();
  if (anOriginal.IsNull()) return NULL; //There is no function which creates an object to be set in position

  //Add a Position function
  Standard_Integer aType = POSITION_SHAPE;
  if (theStartLCS.IsNull()) aType = POSITION_SHAPE_FROM_GLOBAL;

  Handle(GEOM_Function) aFunction =
    theObject->AddFunction(GEOMImpl_PositionDriver::GetID(), aType);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PositionDriver::GetID()) return NULL;

  //Set operation arguments
  GEOMImpl_IPosition aTI (aFunction);
  aTI.SetShape(anOriginal);
  aTI.SetEndLCS(theEndLCS->GetLastFunction());
  if (!theStartLCS.IsNull())
    if (theObject == theStartLCS)
      aTI.SetStartLCS(anOriginal);
    else
      aTI.SetStartLCS(theStartLCS->GetLastFunction());

  //Compute the Position
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Position driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "PositionShape("
    << theObject << ", " << theStartLCS << ", " << theEndLCS << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  PositionShapeCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::PositionShapeCopy
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theStartLCS, Handle(GEOM_Object) theEndLCS)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theEndLCS.IsNull()) return NULL;

  Handle(GEOM_Function) anOriginal = theObject->GetLastFunction();
  if (anOriginal.IsNull()) return NULL; //There is no function which creates an object to be set in position

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a position function
  Standard_Integer aType = POSITION_SHAPE_COPY;
  if (theStartLCS.IsNull()) aType = POSITION_SHAPE_FROM_GLOBAL_COPY;

  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_PositionDriver::GetID(), aType);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PositionDriver::GetID()) return NULL;

  GEOMImpl_IPosition aTI (aFunction);
  aTI.SetShape(anOriginal);
  aTI.SetEndLCS(theEndLCS->GetLastFunction());
  if (!theStartLCS.IsNull())
    aTI.SetStartLCS(theStartLCS->GetLastFunction());

  //Compute the position
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Position driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = PositionShapeCopy("
    << theObject << ", " << theStartLCS << ", " << theEndLCS << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  PositionAlongPath
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::PositionAlongPath
       (Handle(GEOM_Object) theObject, Handle(GEOM_Object) thePath, 
        const GEOM_Parameter& theDistance, bool theCopy, bool theReverse)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || thePath.IsNull()) return NULL;

  Handle(GEOM_Function) anOriginal = theObject->GetLastFunction();
  if (anOriginal.IsNull()) return NULL; //There is no function which creates an object to be set in position

  //Add a position function
  Handle(GEOM_Function) aFunction;
  Handle(GEOM_Object) aCopy;

  if (theCopy) {
    aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());
    aFunction = aCopy->AddFunction(GEOMImpl_PositionDriver::GetID(), POSITION_ALONG_PATH);
  }
  else
    aFunction = theObject->AddFunction(GEOMImpl_PositionDriver::GetID(), POSITION_ALONG_PATH);

  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PositionDriver::GetID()) return NULL;

  GEOMImpl_IPosition aTI (aFunction);
  aTI.SetShape(anOriginal);
  aTI.SetPath(thePath->GetLastFunction());
  SETPARAM(aTI.SetDistance,theDistance);
  aTI.SetReverse(theReverse);

  //Compute the position
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Position driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  if (theCopy) {
    GEOM::TPythonDump(aFunction) << aCopy << " = PositionAlongPath("
                                 << theObject << ", " << thePath << ", " << theDistance << ", " << (int) theCopy << ", " << (int) theReverse << ")";
    SetErrorCode(GEOM_OK);
    return aCopy;
  }

  GEOM::TPythonDump(aFunction) << "TrsfOp.PositionAlongPath("
    << theObject << ", " << thePath << ", " << theDistance << ", " << (int) theCopy << ", " << (int) theReverse << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  Rotate
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::Rotate (Handle(GEOM_Object) theObject,
                                                           Handle(GEOM_Object) theAxis,
														   const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theAxis.IsNull()) return NULL;

  Handle(GEOM_Function) aFunction, aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL;  //There is no function which creates an object to be rotated

  // Get last functions of the arguments
  Handle(GEOM_Function) anAF = theAxis->GetLastFunction();

  //Add a rotate function
  aFunction = theObject->AddFunction(GEOMImpl_RotateDriver::GetID(), ROTATE);

  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_RotateDriver::GetID()) return NULL;

  GEOMImpl_IRotate aRI(aFunction);
  aRI.SetAxis(anAF);
  aRI.SetOriginal(aLastFunction);
  SETPARAM(aRI.SetAngle,theAngle);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Rotate driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "Rotate(" << theObject
    << ", " << theAxis << ", " << theAngle << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  Rotate
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::RotateCopy (Handle(GEOM_Object) theObject, Handle(GEOM_Object) theAxis, const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theAxis.IsNull()) return NULL;

  Handle(GEOM_Function) aFunction, aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL;  //There is no function which creates an object to be rotated

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a rotate function
  aFunction = aCopy->AddFunction(GEOMImpl_RotateDriver::GetID(), ROTATE_COPY);
  if (aFunction.IsNull()) return NULL;

    //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_RotateDriver::GetID()) return NULL;

  GEOMImpl_IRotate aRI(aFunction);
  aRI.SetAxis(theAxis->GetLastFunction());
  aRI.SetOriginal(aLastFunction);
  SETPARAM(aRI.SetAngle,theAngle);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Rotate driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = RotateCopy(" << theObject
	<< ", " << theAxis << ", " << theAngle << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  Rotate1D
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::Rotate1D (Handle(GEOM_Object) theObject,
                                                             Handle(GEOM_Object) theAxis,
															 const GEOM_Parameter& theNbTimes)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theAxis.IsNull()) return NULL;

  Handle(GEOM_Function) aFunction, aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL;  //There is no function which creates an object to be rotated

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a rotate function
  aFunction = aCopy->AddFunction(GEOMImpl_RotateDriver::GetID(), ROTATE_1D);
  if (aFunction.IsNull()) return NULL;

    //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_RotateDriver::GetID()) return NULL;

  GEOMImpl_IRotate aRI(aFunction);
  aRI.SetOriginal(aLastFunction);
  aRI.SetAxis(theAxis->GetLastFunction());
  SETPARAM(aRI.SetNbIter1,theNbTimes);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Rotate driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = Rotate1D("
    << theObject << ", " << theAxis << ", " << theNbTimes << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  Rotate2D
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::Rotate2D (Handle(GEOM_Object) theObject,
							     Handle(GEOM_Object) theAxis,
								 const GEOM_Parameter& theAngle,
								 const GEOM_Parameter& theNbTimes1,
								 const GEOM_Parameter& theStep,
								 const GEOM_Parameter& theNbTimes2,
								 const GEOM_Parameter& theElevationStep)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theAxis.IsNull()) return NULL;

  Handle(GEOM_Function) aFunction, aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL;  //There is no function which creates an object to be rotated

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a rotate function
  aFunction = aCopy->AddFunction(GEOMImpl_RotateDriver::GetID(), ROTATE_2D);
  if (aFunction.IsNull()) return NULL;

    //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_RotateDriver::GetID()) return NULL;

  GEOMImpl_IRotate aRI(aFunction);
  aRI.SetAxis(theAxis->GetLastFunction());
  aRI.SetOriginal(aLastFunction);
  SETPARAM(aRI.SetNbIter1,theNbTimes1);
  SETPARAM(aRI.SetNbIter2,theNbTimes2);
  SETPARAM(aRI.SetAngle,theAngle);
  SETPARAM(aRI.SetStep,theStep);
  SETPARAM(aRI.SetElevationStep,theElevationStep);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Rotate driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = Rotate2D("
    << theObject << ", " << theAxis << ", " << theAngle << ", "
    << theNbTimes1 << ", " << theStep << ", " << theNbTimes2
    << ", " << theElevationStep << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  RotateThreePoints
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::RotateThreePoints (Handle(GEOM_Object) theObject,
								      Handle(GEOM_Object) theCentPoint, 
								      Handle(GEOM_Object) thePoint1,
								      Handle(GEOM_Object) thePoint2)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theCentPoint.IsNull() || thePoint1.IsNull() || thePoint2.IsNull()) return NULL;

  Handle(GEOM_Function) aFunction, aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL;  //There is no function which creates an object to be rotated

  // Get last functions of the arguments
  Handle(GEOM_Function) aCPF = theCentPoint->GetLastFunction();
  Handle(GEOM_Function) aP1F = thePoint1->GetLastFunction();
  Handle(GEOM_Function) aP2F = thePoint2->GetLastFunction();


  //Add a rotate function
  aFunction = theObject->AddFunction(GEOMImpl_RotateDriver::GetID(), ROTATE_THREE_POINTS);

  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_RotateDriver::GetID()) return NULL;

  GEOMImpl_IRotate aRI(aFunction);
  aRI.SetCentPoint(aCPF);
  aRI.SetPoint1(aP1F);
  aRI.SetPoint2(aP2F);
  aRI.SetOriginal(aLastFunction);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Rotate driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "RotateThreePoints(" << theObject
			       << ", " << theCentPoint << ", "<<thePoint1 << ", " << thePoint2 << ")";

  SetErrorCode(GEOM_OK);
  return theObject;
}

//=============================================================================
/*!
 *  RotateThreePointsCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::RotateThreePointsCopy (Handle(GEOM_Object) theObject, 
							 Handle(GEOM_Object) theCentPoint, 
							 Handle(GEOM_Object) thePoint1,
							 Handle(GEOM_Object) thePoint2)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theCentPoint.IsNull() || thePoint1.IsNull() || thePoint2.IsNull()) return NULL;

  Handle(GEOM_Function) aFunction, aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL;  //There is no function which creates an object to be rotated

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  //Add a rotate function
  aFunction = aCopy->AddFunction(GEOMImpl_RotateDriver::GetID(), ROTATE_THREE_POINTS_COPY);
  if (aFunction.IsNull()) return NULL;

    //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_RotateDriver::GetID()) return NULL;

  GEOMImpl_IRotate aRI(aFunction);
  aRI.SetCentPoint(theCentPoint->GetLastFunction());
  aRI.SetPoint1(thePoint1->GetLastFunction());
  aRI.SetPoint2(thePoint2->GetLastFunction());
  aRI.SetOriginal(aLastFunction);

  //Compute the translation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Rotate driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = RotateThreePointsCopy(" << theObject
			       << ", " << theCentPoint << ", "<<thePoint1 << ", " << thePoint2 << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  TransformLikeOtherCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ITransformOperations::TransformLikeOtherCopy
                                                (Handle(GEOM_Object) theObject, 
                                                 Handle(GEOM_Object) theSample)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull() || theSample.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; // There is no function which creates an object to be transformed

  Handle(GEOM_Function) aSampleFunc = theSample->GetLastFunction();
  if (aSampleFunc.IsNull()) return NULL; // There is no function which creates a sample object

  // Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), theObject->GetType());

  // Add a transform function (depends on theSample function)
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(aSampleFunc->GetDriverGUID(), aSampleFunc->GetType());
  if (aFunction.IsNull()) return NULL;

  // Check if the function is set correctly
  if (aFunction->GetDriverGUID() != aSampleFunc->GetDriverGUID()) return NULL;

  if (aSampleFunc->GetDriverGUID() == GEOMImpl_TranslateDriver::GetID()) {
    switch (aSampleFunc->GetType()) {
    case TRANSLATE_1D:
      {
        GEOMImpl_ITranslate aRI_sample (aSampleFunc);
        GEOMImpl_ITranslate aRI_target (aFunction);

        aRI_target.SetVector(aRI_sample.GetVector());
        aRI_target.SetStep1(aRI_sample.GetStep1());
        aRI_target.SetNbIter1(aRI_sample.GetNbIter1());

        aRI_target.SetOriginal(aLastFunction);
      }
      break;
    case TRANSLATE_2D:
      {
        GEOMImpl_ITranslate aRI_sample (aSampleFunc);
        GEOMImpl_ITranslate aRI_target (aFunction);

        aRI_target.SetVector(aRI_sample.GetVector());
        aRI_target.SetStep1(aRI_sample.GetStep1());
        aRI_target.SetNbIter1(aRI_sample.GetNbIter1());

        aRI_target.SetVector2(aRI_sample.GetVector2());
        aRI_target.SetStep2(aRI_sample.GetStep2());
        aRI_target.SetNbIter2(aRI_sample.GetNbIter2());

        aRI_target.SetOriginal(aLastFunction);
      }
      break;
    default:
      {
        SetErrorCode("Not implemented case of TransformLikeOtherCopy");
        return NULL;
      }
    }
  }
  else if (aSampleFunc->GetDriverGUID() == GEOMImpl_RotateDriver::GetID()) {
    switch (aSampleFunc->GetType()) {
    case ROTATE_1D:
      {
        GEOMImpl_IRotate aRI_sample (aSampleFunc);
        GEOMImpl_IRotate aRI_target (aFunction);

        aRI_target.SetAxis(aRI_sample.GetAxis());
        aRI_target.SetNbIter1(aRI_sample.GetNbIter1());

        aRI_target.SetOriginal(aLastFunction);
      }
      break;
    case ROTATE_2D:
      {
        GEOMImpl_IRotate aRI_sample (aSampleFunc);
        GEOMImpl_IRotate aRI_target (aFunction);

        aRI_target.SetAxis(aRI_sample.GetAxis());

        aRI_target.SetNbIter1(aRI_sample.GetNbIter1());
        aRI_target.SetNbIter2(aRI_sample.GetNbIter2());

        aRI_target.SetAngle(aRI_sample.GetAngle());
        aRI_target.SetStep(aRI_sample.GetStep());

        aRI_target.SetDir2(aRI_sample.GetDir2());

        aRI_target.SetOriginal(aLastFunction);
      }
      break;
    case ROTATE_THREE_POINTS_COPY:
      {
        GEOMImpl_IRotate aRI_sample (aSampleFunc);
        GEOMImpl_IRotate aRI_target (aFunction);

        aRI_target.SetCentPoint(aRI_sample.GetCentPoint());
        aRI_target.SetPoint1(aRI_sample.GetPoint1());
        aRI_target.SetPoint2(aRI_sample.GetPoint2());

        aRI_target.SetOriginal(aLastFunction);
      }
      break;
    default:
      {
        SetErrorCode("Not implemented case of TransformLikeOtherCopy");
        return NULL;
      }
    }
  }
  else {
    SetErrorCode("Not implemented case of TransformLikeOtherCopy");
    return NULL;
  }

  // Compute the transformation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  //GEOM::TPythonDump(aFunction) << aCopy << " = TransformLikeOtherCopy("
  //                             << theObject << ", " << theSample << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}
