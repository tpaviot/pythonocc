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

#include <GEOMImpl_I3DPrimOperations.hxx>

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

#include <GEOMImpl_Types.hxx>

#include <GEOMImpl_BoxDriver.hxx>
#include <GEOMImpl_CylinderDriver.hxx>
#include <GEOMImpl_ConeDriver.hxx>
#include <GEOMImpl_SphereDriver.hxx>
#include <GEOMImpl_TorusDriver.hxx>
#include <GEOMImpl_PrismDriver.hxx>
#include <GEOMImpl_PipeDriver.hxx>
#include <GEOMImpl_RevolutionDriver.hxx>
#include <GEOMImpl_ShapeDriver.hxx>
#include <GEOMImpl_FillingDriver.hxx>
#include <GEOMImpl_ThruSectionsDriver.hxx>
#include <GEOMImpl_PlateDriver.hxx>
#include <GEOMImpl_FaceDriver.hxx>
#include <GEOMImpl_DiskDriver.hxx>

#include <GEOMImpl_IBox.hxx>
#include <GEOMImpl_ICylinder.hxx>
#include <GEOMImpl_ICone.hxx>
#include <GEOMImpl_ISphere.hxx>
#include <GEOMImpl_ITorus.hxx>
#include <GEOMImpl_IPrism.hxx>
#include <GEOMImpl_IPipe.hxx>
#include <GEOMImpl_IRevolution.hxx>
#include <GEOMImpl_IFilling.hxx>
#include <GEOMImpl_IThruSections.hxx>
#include <GEOMImpl_IPipeDiffSect.hxx>
#include <GEOMImpl_IPipeShellSect.hxx>
#include <GEOMImpl_IPlate.hxx>
#include <GEOMImpl_IPipeBiNormal.hxx>
#include <GEOMImpl_IFace.hxx>
#include <GEOMImpl_IDisk.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================
GEOMImpl_I3DPrimOperations::GEOMImpl_I3DPrimOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  //MESSAGE("GEOMImpl_I3DPrimOperations::GEOMImpl_I3DPrimOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_I3DPrimOperations::~GEOMImpl_I3DPrimOperations()
{
  //MESSAGE("GEOMImpl_I3DPrimOperations::~GEOMImpl_I3DPrimOperations");
}


//=============================================================================
/*!
 *  MakeBoxDXDYDZ
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeBoxDXDYDZ (const GEOM_Parameter& theDX, const GEOM_Parameter& theDY, const GEOM_Parameter& theDZ)
{
  SetErrorCode(GEOM_KO);

  //Add a new Box object
  Handle(GEOM_Object) aBox = GetEngine()->AddObject(GetDocID(), GEOM_BOX);

  //Add a new Box function with DX_DY_DZ parameters
  Handle(GEOM_Function) aFunction = aBox->AddFunction(GEOMImpl_BoxDriver::GetID(), BOX_DX_DY_DZ);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BoxDriver::GetID()) return NULL;

  GEOMImpl_IBox aBI (aFunction);

  SETPARAM(aBI.SetDX,theDX);
  SETPARAM(aBI.SetDY,theDY);
  SETPARAM(aBI.SetDZ,theDZ);

  //Compute the box value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Box driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aBox << " = MakeBoxDXDYDZ("
	<< theDX << ", " << theDY  << ", " << theDZ << ")";

  SetErrorCode(GEOM_OK);
  return aBox;
}


//=============================================================================
/*!
 *  MakeBoxTwoPnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeBoxTwoPnt (Handle(GEOM_Object) thePnt1,
                                                               Handle(GEOM_Object) thePnt2)
{
  SetErrorCode(GEOM_KO);

  if (thePnt1.IsNull() || thePnt2.IsNull()) return NULL;

  //Add a new Box object
  Handle(GEOM_Object) aBox = GetEngine()->AddObject(GetDocID(), GEOM_BOX);

  //Add a new Box function for creation a box relatively to two points
  Handle(GEOM_Function) aFunction = aBox->AddFunction(GEOMImpl_BoxDriver::GetID(), BOX_TWO_PNT);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BoxDriver::GetID()) return aBox;

  GEOMImpl_IBox aBI (aFunction);

  Handle(GEOM_Function) aRefFunction1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefFunction2 = thePnt2->GetLastFunction();

  if (aRefFunction1.IsNull() || aRefFunction2.IsNull()) return aBox;

  aBI.SetRef1(aRefFunction1);
  aBI.SetRef2(aRefFunction2);

  //Compute the Box value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Box driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aBox << " = MakeBoxTwoPnt("
    << thePnt1 << ", " << thePnt2 << ")";

  SetErrorCode(GEOM_OK);
  return aBox;
}

//=============================================================================
/*!
 *  MakeFaceHW
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeFaceHW(const GEOM_Parameter& theH, const GEOM_Parameter& theW, int theOrientation)
{
  SetErrorCode(GEOM_KO);

  //if (theH == 0 || theW == 0) return NULL;

  //Add a new Face object
  Handle(GEOM_Object) aFace = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Box function for creation a box relatively to two points
  Handle(GEOM_Function) aFunction = aFace->AddFunction(GEOMImpl_FaceDriver::GetID(), FACE_H_W);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_FaceDriver::GetID()) return aFace;

  GEOMImpl_IFace aFI (aFunction);

  SETPARAM(aFI.SetH,theH);
  SETPARAM(aFI.SetW,theW);
  aFI.SetOrientation(theOrientation);

  //Compute the Face
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
  GEOM::TPythonDump(aFunction) << aFace << " = MakeFaceHW("
    << theH << ", " << theW << ", " << theOrientation << ")";

  SetErrorCode(GEOM_OK);
  return aFace;
}

//=============================================================================
/*!
 *  MakeFaceObjHW
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeFaceObjHW (Handle(GEOM_Object) theObj,
							       const GEOM_Parameter& theH, const GEOM_Parameter& theW)
{
  SetErrorCode(GEOM_KO);

  if (theObj.IsNull()) return NULL;

  //Add a new Face object
  Handle(GEOM_Object) aFace = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Box function for creation a box relatively to two points
  Handle(GEOM_Function) aFunction = aFace->AddFunction(GEOMImpl_FaceDriver::GetID(), FACE_OBJ_H_W);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_FaceDriver::GetID()) return aFace;

  GEOMImpl_IFace aFI (aFunction);

  Handle(GEOM_Function) aRefFunction1 = theObj->GetLastFunction();

  if (aRefFunction1.IsNull())
    return aFace;

  aFI.SetRef1(aRefFunction1);
  SETPARAM(aFI.SetH,theH);
  SETPARAM(aFI.SetW,theW);

  //Compute the Face
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
  GEOM::TPythonDump(aFunction) << aFace << " = MakeFaceObjHW("
    << theObj << ", " << theH << ", " << theW << ")";

  SetErrorCode(GEOM_OK);
  return aFace;
}

//=============================================================================
/*!
 *  MakeDiskPntVecR
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeDiskPntVecR
      (Handle(GEOM_Object) thePnt, Handle(GEOM_Object) theVec, const GEOM_Parameter& theR)
{
  SetErrorCode(GEOM_KO);

  if (thePnt.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Disk object
  Handle(GEOM_Object) aDisk = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Disk function for creation a disk relatively to point and vector
  Handle(GEOM_Function) aFunction =
    aDisk->AddFunction(GEOMImpl_DiskDriver::GetID(), DISK_PNT_VEC_R);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_DiskDriver::GetID()) return NULL;

  GEOMImpl_IDisk aCI (aFunction);

  Handle(GEOM_Function) aRefPnt = thePnt->GetLastFunction();
  Handle(GEOM_Function) aRefVec = theVec->GetLastFunction();

  if (aRefPnt.IsNull() || aRefVec.IsNull()) return NULL;

  aCI.SetCenter(aRefPnt);
  aCI.SetVector(aRefVec);
  SETPARAM(aCI.SetRadius,theR);

  //Compute the Disk value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Disk driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aDisk << " = MakeDiskPntVecR("
    << thePnt << ", " << theVec << ", " << theR << ")";

  SetErrorCode(GEOM_OK);
  return aDisk;
}

//=============================================================================
/*!
 *  MakeDiskThreePnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeDiskThreePnt (Handle(GEOM_Object) thePnt1,
								  Handle(GEOM_Object) thePnt2,
								  Handle(GEOM_Object) thePnt3)
{
  SetErrorCode(GEOM_KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Disk object
  Handle(GEOM_Object) aDisk = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Disk function for creation a disk relatively to three points
  Handle(GEOM_Function) aFunction =
    aDisk->AddFunction(GEOMImpl_DiskDriver::GetID(), DISK_THREE_PNT);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_DiskDriver::GetID()) return NULL;

  GEOMImpl_IDisk aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);

  //Compute the Disk value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Disk driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aDisk << " = MakeDiskThreePnt("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ")";

  SetErrorCode(GEOM_OK);
  return aDisk;
}

//=============================================================================
/*!
 *  MakeDiskR
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeDiskR (const GEOM_Parameter& theR, int theOrientation)
{
  SetErrorCode(GEOM_KO);

  //if (theR == 0 ) return NULL;

  //Add a new Disk object
  Handle(GEOM_Object) aDisk = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Box function for creation a box relatively to two points
  Handle(GEOM_Function) aFunction = aDisk->AddFunction(GEOMImpl_DiskDriver::GetID(), DISK_R);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_DiskDriver::GetID()) return aDisk;

  GEOMImpl_IDisk aDI (aFunction);

  SETPARAM(aDI.SetRadius,theR);
  aDI.SetOrientation(theOrientation);

  //Compute the Disk
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Disk driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aDisk << " = MakeDiskR("
    << theR << ", " << theOrientation << ")";

  SetErrorCode(GEOM_OK);
  return aDisk;
}

//=============================================================================
/*!
 *  MakeCylinderRH
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeCylinderRH (const GEOM_Parameter& theR, const GEOM_Parameter& theH,
																const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  //Add a new Cylinder object
  Handle(GEOM_Object) aCylinder = GetEngine()->AddObject(GetDocID(), GEOM_CYLINDER);

  //Add a new Cylinder function with R and H parameters
  Handle(GEOM_Function) aFunction = aCylinder->AddFunction(GEOMImpl_CylinderDriver::GetID(), CYLINDER_R_H);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_CylinderDriver::GetID()) return NULL;

  GEOMImpl_ICylinder aCI (aFunction);

  SETPARAM(aCI.SetR,theR);
  SETPARAM(aCI.SetH,theH);
  SETPARAM(aCI.SetAngle,theAngle);

  //Compute the Cylinder value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Cylinder driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCylinder
	<< " = MakeCylinderRH(" << theR << ", " << theH << ", " << theAngle << ")";

  SetErrorCode(GEOM_OK);
  return aCylinder;
}


//=============================================================================
/*!
 *  MakeCylinderPntVecRH
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeCylinderPntVecRH (Handle(GEOM_Object) thePnt,
                                                                      Handle(GEOM_Object) theVec,
																	  const GEOM_Parameter& theR, const GEOM_Parameter& theH,
																	  const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  if (thePnt.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Cylinder object
  Handle(GEOM_Object) aCylinder = GetEngine()->AddObject(GetDocID(), GEOM_CYLINDER);

  //Add a new Cylinder function for creation a cylinder relatively to point and vector
  Handle(GEOM_Function) aFunction =
    aCylinder->AddFunction(GEOMImpl_CylinderDriver::GetID(), CYLINDER_PNT_VEC_R_H);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_CylinderDriver::GetID()) return NULL;

  GEOMImpl_ICylinder aCI (aFunction);

  Handle(GEOM_Function) aRefPnt = thePnt->GetLastFunction();
  Handle(GEOM_Function) aRefVec = theVec->GetLastFunction();

  if (aRefPnt.IsNull() || aRefVec.IsNull()) return NULL;

  aCI.SetPoint(aRefPnt);
  aCI.SetVector(aRefVec);
  
  SETPARAM(aCI.SetR,theR);
  SETPARAM(aCI.SetH,theH);
  SETPARAM(aCI.SetAngle,theAngle);

  //Compute the Cylinder value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Cylinder driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCylinder << " = MakeCylinderPntVecRH("
	<< thePnt << ", " << theVec << ", " << theR << ", " << theH <<  ", " << theAngle << ")";

  SetErrorCode(GEOM_OK);
  return aCylinder;
}


//=============================================================================
/*!
 *  MakeConeR1R2H
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeConeR1R2H (const GEOM_Parameter& theR1, const GEOM_Parameter& theR2,
															   const GEOM_Parameter& theH, const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  //Add a new Cone object
  Handle(GEOM_Object) aCone = GetEngine()->AddObject(GetDocID(), GEOM_CONE);

  //Add a new Cone function with R and H parameters
  Handle(GEOM_Function) aFunction =
    aCone->AddFunction(GEOMImpl_ConeDriver::GetID(), CONE_R1_R2_H);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ConeDriver::GetID()) return NULL;

  GEOMImpl_ICone aCI (aFunction);

  SETPARAM(aCI.SetR1,theR1);
  SETPARAM(aCI.SetR2,theR2);
  SETPARAM(aCI.SetH,theH);
  SETPARAM(aCI.SetAngle,theAngle);

  //Compute the Cone value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Cone driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCone << " = MakeConeR1R2H("
	<< theR1 << ", " << theR2 << ", " << theH <<  ", " << theAngle <<")";

  SetErrorCode(GEOM_OK);
  return aCone;
}


//=============================================================================
/*!
 *  MakeConePntVecR1R2H
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeConePntVecR1R2H (Handle(GEOM_Object) thePnt,
                                                                     Handle(GEOM_Object) theVec,
																	 const GEOM_Parameter& theR1, const GEOM_Parameter& theR2,
																	 const GEOM_Parameter& theH, const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  if (thePnt.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Cone object
  Handle(GEOM_Object) aCone = GetEngine()->AddObject(GetDocID(), GEOM_CONE);

  //Add a new Cone function for creation a cone relatively to point and vector
  Handle(GEOM_Function) aFunction =
    aCone->AddFunction(GEOMImpl_ConeDriver::GetID(), CONE_PNT_VEC_R1_R2_H);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ConeDriver::GetID()) return NULL;

  GEOMImpl_ICone aCI (aFunction);

  Handle(GEOM_Function) aRefPnt = thePnt->GetLastFunction();
  Handle(GEOM_Function) aRefVec = theVec->GetLastFunction();

  if (aRefPnt.IsNull() || aRefVec.IsNull()) return NULL;

  aCI.SetPoint(aRefPnt);
  aCI.SetVector(aRefVec);
  SETPARAM(aCI.SetR1,theR1);
  SETPARAM(aCI.SetR2,theR2);
  SETPARAM(aCI.SetH,theH);
  SETPARAM(aCI.SetAngle,theAngle);

  //Compute the Cone value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Cone driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCone << " = MakeConePntVecR1R2H(" << thePnt
	<< ", " << theVec << ", " << theR1 << ", " << theR2 << ", " << theH << ", " << theAngle <<")";

  SetErrorCode(GEOM_OK);
  return aCone;
}


//=============================================================================
/*!
 *  MakeSphereR
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeSphereR (const GEOM_Parameter& theR, const GEOM_Parameter& theVmin,
															 const GEOM_Parameter& theVmax, const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  //Add a new Sphere object
  Handle(GEOM_Object) aSphere = GetEngine()->AddObject(GetDocID(), GEOM_SPHERE);

  //Add a new Sphere function with R parameter
  Handle(GEOM_Function) aFunction = aSphere->AddFunction(GEOMImpl_SphereDriver::GetID(), SPHERE_R);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_SphereDriver::GetID()) return NULL;

  GEOMImpl_ISphere aCI (aFunction);

  SETPARAM(aCI.SetR,theR);

  //temporarilly v coords not used (see driver...)
  SETPARAM(aCI.SetVCoordStart,theVmin);
  SETPARAM(aCI.SetVCoordEnd,theVmax);

  SETPARAM(aCI.SetAngle,theAngle);

  //Compute the Sphere value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Sphere driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
	Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  //temporarilly v coords not used (see driver...)
  GEOM::TPythonDump(aFunction) << aSphere << " = MakeSphereR(" << theR << ", " << theAngle << ")";

  SetErrorCode(GEOM_OK);
  return aSphere;
}


//=============================================================================
/*!
 *  MakeSpherePntR
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeSpherePntR (Handle(GEOM_Object) thePnt,
																const GEOM_Parameter& theR, const GEOM_Parameter& theVmin,
															    const GEOM_Parameter& theVmax, const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  if (thePnt.IsNull()) return NULL;

  //Add a new Point object
  Handle(GEOM_Object) aSphere = GetEngine()->AddObject(GetDocID(), GEOM_SPHERE);

  //Add a new Sphere function for creation a sphere relatively to point
  Handle(GEOM_Function) aFunction = aSphere->AddFunction(GEOMImpl_SphereDriver::GetID(), SPHERE_PNT_R);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_SphereDriver::GetID()) return NULL;

  GEOMImpl_ISphere aCI (aFunction);

  Handle(GEOM_Function) aRefPnt = thePnt->GetLastFunction();

  if (aRefPnt.IsNull()) return NULL;

  aCI.SetPoint(aRefPnt);
  SETPARAM(aCI.SetR,theR);

  //temporarilly v coords not used (see driver...)
  SETPARAM(aCI.SetVCoordStart,theVmin);
  SETPARAM(aCI.SetVCoordEnd,theVmax);

  SETPARAM(aCI.SetAngle,theAngle);

  //Compute the Sphere value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Sphere driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  //temporarilly v coords not used (see driver...)
  GEOM::TPythonDump(aFunction) << aSphere
	<< " = MakeSpherePntR(" << thePnt << ", " << theR << ", " << theAngle <<  ")";

  SetErrorCode(GEOM_OK);
  return aSphere;
}


//=============================================================================
/*!
 *  MakeTorusRR
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeTorusRR
										   (const GEOM_Parameter& theRMajor, const GEOM_Parameter& theRMinor,
											const GEOM_Parameter& theVmin, const GEOM_Parameter& theVmax,
											const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  //Add a new Torus object
  Handle(GEOM_Object) anEll = GetEngine()->AddObject(GetDocID(), GEOM_TORUS);

  //Add a new Torus function
  Handle(GEOM_Function) aFunction =
    anEll->AddFunction(GEOMImpl_TorusDriver::GetID(), TORUS_RR);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TorusDriver::GetID()) return NULL;

  GEOMImpl_ITorus aCI (aFunction);

  SETPARAM(aCI.SetRMajor,theRMajor);
  SETPARAM(aCI.SetRMinor,theRMinor);

  //temporarilly v coords not used (see driver...)
  SETPARAM(aCI.SetVCoordStart,theVmin);
  SETPARAM(aCI.SetVCoordEnd,theVmax);

  SETPARAM(aCI.SetAngle,theAngle);

  //Compute the Torus value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Torus driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  //temporarilly v coords not used (see driver...)
  GEOM::TPythonDump(aFunction) << anEll << " = MakeTorusRR("
	<< theRMajor << ", " << theRMinor << ", " << theAngle <<")";

  SetErrorCode(GEOM_OK);
  return anEll;
}

//=============================================================================
/*!
 *  MakeTorusPntVecRR
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeTorusPntVecRR
                       (Handle(GEOM_Object) thePnt, Handle(GEOM_Object) theVec,
						const GEOM_Parameter& theRMajor, const GEOM_Parameter& theRMinor,
						const GEOM_Parameter& theVmin, const GEOM_Parameter& theVmax,
						const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  if (thePnt.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Torus object
  Handle(GEOM_Object) anEll = GetEngine()->AddObject(GetDocID(), GEOM_TORUS);

  //Add a new Torus function
  Handle(GEOM_Function) aFunction =
    anEll->AddFunction(GEOMImpl_TorusDriver::GetID(), TORUS_PNT_VEC_RR);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_TorusDriver::GetID()) return NULL;

  GEOMImpl_ITorus aCI (aFunction);

  Handle(GEOM_Function) aRefPnt = thePnt->GetLastFunction();
  Handle(GEOM_Function) aRefVec = theVec->GetLastFunction();

  if (aRefPnt.IsNull() || aRefVec.IsNull()) return NULL;

  aCI.SetCenter(aRefPnt);
  aCI.SetVector(aRefVec);
  SETPARAM(aCI.SetRMajor,theRMajor);
  SETPARAM(aCI.SetRMinor,theRMinor);

  //temporarilly v coords not used (see driver...)
  SETPARAM(aCI.SetVCoordStart,theVmin);
  SETPARAM(aCI.SetVCoordEnd,theVmax);

  SETPARAM(aCI.SetAngle,theAngle);

  //Compute the Torus value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Torus driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << anEll << " = MakeTorusPntVecRR(" << thePnt
	<< ", " << theVec << ", " << theRMajor << ", " << theRMinor << ", " << theAngle << ")";

  SetErrorCode(GEOM_OK);
  return anEll;
}


//=============================================================================
/*!
 *  MakePrismVecH
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePrismVecH (Handle(GEOM_Object) theBase,
                                                               Handle(GEOM_Object) theVec,
															   const GEOM_Parameter& theH)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Prism object
  Handle(GEOM_Object) aPrism = GetEngine()->AddObject(GetDocID(), GEOM_PRISM);

  //Add a new Prism function for creation a Prism relatively to vector
  Handle(GEOM_Function) aFunction =
    aPrism->AddFunction(GEOMImpl_PrismDriver::GetID(), PRISM_BASE_VEC_H);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PrismDriver::GetID()) return NULL;

  GEOMImpl_IPrism aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefVec  = theVec->GetLastFunction();

  if (aRefBase.IsNull() || aRefVec.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetVector(aRefVec);
  SETPARAM(aCI.SetH,theH);

  //Compute the Prism value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      //SetErrorCode("Prism driver failed");
      SetErrorCode("Extrusion can not be created, check input data");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPrism << " = MakePrismVecH("
	<< theBase << ", " << theVec << ", " << theH << ")";

  SetErrorCode(GEOM_OK);
  return aPrism;
}

//=============================================================================
/*!
 *  MakePrismVecH2Ways
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePrismVecH2Ways (Handle(GEOM_Object) theBase,
								    Handle(GEOM_Object) theVec,
									const GEOM_Parameter& theH)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Prism object
  Handle(GEOM_Object) aPrism = GetEngine()->AddObject(GetDocID(), GEOM_PRISM);

  //Add a new Prism function for creation a Prism relatively to vector
  Handle(GEOM_Function) aFunction =
    aPrism->AddFunction(GEOMImpl_PrismDriver::GetID(), PRISM_BASE_VEC_H_2WAYS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PrismDriver::GetID()) return NULL;

  GEOMImpl_IPrism aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefVec  = theVec->GetLastFunction();

  if (aRefBase.IsNull() || aRefVec.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetVector(aRefVec);
  
  SETPARAM(aCI.SetH, theH);

  //Compute the Prism value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      //SetErrorCode("Prism driver failed");
      SetErrorCode("Extrusion can not be created, check input data");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPrism << " = MakePrismVecH2Ways("
    << theBase << ", " << theVec << ", " << theH << ")";

  SetErrorCode(GEOM_OK);
  return aPrism;
}

//=============================================================================
/*!
 *  MakePrismTwoPnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePrismTwoPnt
       (Handle(GEOM_Object) theBase,
        Handle(GEOM_Object) thePoint1, Handle(GEOM_Object) thePoint2)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || thePoint1.IsNull() || thePoint2.IsNull()) return NULL;

  //Add a new Prism object
  Handle(GEOM_Object) aPrism = GetEngine()->AddObject(GetDocID(), GEOM_PRISM);

  //Add a new Prism function for creation a Prism relatively to two points
  Handle(GEOM_Function) aFunction =
    aPrism->AddFunction(GEOMImpl_PrismDriver::GetID(), PRISM_BASE_TWO_PNT);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PrismDriver::GetID()) return NULL;

  GEOMImpl_IPrism aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefPnt1 = thePoint1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePoint2->GetLastFunction();

  if (aRefBase.IsNull() || aRefPnt1.IsNull() || aRefPnt2.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetFirstPoint(aRefPnt1);
  aCI.SetLastPoint(aRefPnt2);

  //Compute the Prism value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      //SetErrorCode("Prism driver failed");
      SetErrorCode("Extrusion can not be created, check input data");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPrism << " = MakePrismTwoPnt("
    << theBase << ", " << thePoint1 << ", " << thePoint2 << ")";

  SetErrorCode(GEOM_OK);
  return aPrism;
}

//=============================================================================
/*!
 *  MakePrismVecHAng
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePrismVecHAng (Handle(GEOM_Object) theBase,
																  Handle(GEOM_Object) theVec,
																  const GEOM_Parameter& theH,
																  const GEOM_Parameter& theAng)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Prism object
  Handle(GEOM_Object) aPrism = GetEngine()->AddObject(GetDocID(), GEOM_PRISM);

  //Add a new Prism function for creation a Prism relatively to vector with an angle
  Handle(GEOM_Function) aFunction =
	aPrism->AddFunction(GEOMImpl_PrismDriver::GetID(), PRISM_BASE_VEC_H_ANG);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PrismDriver::GetID()) return NULL;

  GEOMImpl_IPrism aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefVec  = theVec->GetLastFunction();

  if (aRefBase.IsNull() || aRefVec.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetVector(aRefVec);
  SETPARAM(aCI.SetAngle,theAng);
  SETPARAM(aCI.SetH,theH);

  //Compute the Prism value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
	if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Extrusion can not be created, check input data");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPrism << " = MakePrismVecHAng("
	<< theBase << ", " << theVec << ", " << theH << ", " << theAng<< ")";

  SetErrorCode(GEOM_OK);
  return aPrism;
}

//=============================================================================
/*!
 *  MakePrismTwoPnt2Ways
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePrismTwoPnt2Ways
       (Handle(GEOM_Object) theBase,
        Handle(GEOM_Object) thePoint1, Handle(GEOM_Object) thePoint2)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || thePoint1.IsNull() || thePoint2.IsNull()) return NULL;

  //Add a new Prism object
  Handle(GEOM_Object) aPrism = GetEngine()->AddObject(GetDocID(), GEOM_PRISM);

  //Add a new Prism function for creation a Prism relatively to two points
  Handle(GEOM_Function) aFunction =
    aPrism->AddFunction(GEOMImpl_PrismDriver::GetID(), PRISM_BASE_TWO_PNT_2WAYS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PrismDriver::GetID()) return NULL;

  GEOMImpl_IPrism aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefPnt1 = thePoint1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePoint2->GetLastFunction();

  if (aRefBase.IsNull() || aRefPnt1.IsNull() || aRefPnt2.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetFirstPoint(aRefPnt1);
  aCI.SetLastPoint(aRefPnt2);

  //Compute the Prism value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      //SetErrorCode("Prism driver failed");
      SetErrorCode("Extrusion can not be created, check input data");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPrism << " = MakePrism2Ways("
    << theBase << ", " << thePoint1 << ", " << thePoint2 << ")";

  SetErrorCode(GEOM_OK);
  return aPrism;
}

//=============================================================================
/*!
 *  MakePrismDXDYDZ
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePrismDXDYDZ
       (Handle(GEOM_Object) theBase, const GEOM_Parameter& theDX, const GEOM_Parameter& theDY, const GEOM_Parameter& theDZ)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull()) return NULL;

  //Add a new Prism object
  Handle(GEOM_Object) aPrism = GetEngine()->AddObject(GetDocID(), GEOM_PRISM);

  //Add a new Prism function for creation a Prism by DXDYDZ
  Handle(GEOM_Function) aFunction =
    aPrism->AddFunction(GEOMImpl_PrismDriver::GetID(), PRISM_BASE_DXDYDZ);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PrismDriver::GetID()) return NULL;

  GEOMImpl_IPrism aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();

  if (aRefBase.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  SETPARAM(aCI.SetDX,theDX);
  SETPARAM(aCI.SetDY,theDY);
  SETPARAM(aCI.SetDZ,theDZ);

  //Compute the Prism value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Extrusion can not be created, check input data");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPrism << " = MakePrismDXDYDZ("
    << theBase << ", " << theDX << ", " << theDY << ", " << theDZ << ")";

  SetErrorCode(GEOM_OK);
  return aPrism;
}

//=============================================================================
/*!
 *  MakePrismDXDYDZ_2WAYS
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePrismDXDYDZ2Ways
       (Handle(GEOM_Object) theBase, const GEOM_Parameter& theDX, const GEOM_Parameter& theDY, const GEOM_Parameter& theDZ)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull()) return NULL;

  //Add a new Prism object
  Handle(GEOM_Object) aPrism = GetEngine()->AddObject(GetDocID(), GEOM_PRISM);

  //Add a new Prism function for creation a Prism by DXDYDZ
  Handle(GEOM_Function) aFunction =
    aPrism->AddFunction(GEOMImpl_PrismDriver::GetID(), PRISM_BASE_DXDYDZ_2WAYS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PrismDriver::GetID()) return NULL;

  GEOMImpl_IPrism aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();

  if (aRefBase.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  SETPARAM(aCI.SetDX,theDX);
  SETPARAM(aCI.SetDY,theDY);
  SETPARAM(aCI.SetDZ,theDZ);

  //Compute the Prism value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Extrusion can not be created, check input data");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPrism << " = MakePrismDXDYDZ2Ways("
    << theBase << ", " << theDX << ", " << theDY << ", " << theDZ << ")";

  SetErrorCode(GEOM_OK);
  return aPrism;
}

//=============================================================================
/*!
 *  MakePipe
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePipe (Handle(GEOM_Object) theBase,
                                                          Handle(GEOM_Object) thePath)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || thePath.IsNull()) return NULL;

  //Add a new Pipe object
  Handle(GEOM_Object) aPipe = GetEngine()->AddObject(GetDocID(), GEOM_PIPE);

  //Add a new Pipe function
  Handle(GEOM_Function) aFunction =
    aPipe->AddFunction(GEOMImpl_PipeDriver::GetID(), PIPE_BASE_PATH);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PipeDriver::GetID()) return NULL;

  GEOMImpl_IPipe aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefPath = thePath->GetLastFunction();

  if (aRefBase.IsNull() || aRefPath.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetPath(aRefPath);

  //Compute the Pipe value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Pipe driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPipe << " = MakePipe("
    << theBase << ", " << thePath << ")";

  SetErrorCode(GEOM_OK);
  return aPipe;
}


//=============================================================================
/*!
 *  MakePipeRigid
 *	sweeps the base along the path without changing the angle of the base in 
 *	relative to the path.
 *  
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePipeRigid( Handle(GEOM_Object) theBase,
                                                          Handle(GEOM_Object) thePath)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || thePath.IsNull()) return NULL;

  //Add a new Pipe object
  Handle(GEOM_Object) aPipe = GetEngine()->AddObject(GetDocID(), GEOM_PIPE);

  //Add a new Pipe function
  Handle(GEOM_Function) aFunction =
    aPipe->AddFunction(GEOMImpl_PipeDriver::GetID(), PIPE_RIGID);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PipeDriver::GetID()) return NULL;

  GEOMImpl_IPipe aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefPath = thePath->GetLastFunction();

  if (aRefBase.IsNull() || aRefPath.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetPath(aRefPath);

  //Compute the Pipe value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Pipe driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPipe << " = MakePipeRigid("
    << theBase << ", " << thePath << ")";

  SetErrorCode(GEOM_OK);
  return aPipe;
}


//=============================================================================
/*!
 *  MakeRevolutionAxisAngle
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeRevolutionAxisAngle (Handle(GEOM_Object) theBase,
                                                                         Handle(GEOM_Object) theAxis,
                                                                         const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || theAxis.IsNull()) return NULL;

  //Add a new Revolution object
  Handle(GEOM_Object) aRevolution = GetEngine()->AddObject(GetDocID(), GEOM_REVOLUTION);

  //Add a new Revolution function for creation a revolution relatively to axis
  Handle(GEOM_Function) aFunction =
    aRevolution->AddFunction(GEOMImpl_RevolutionDriver::GetID(), REVOLUTION_BASE_AXIS_ANGLE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_RevolutionDriver::GetID()) return NULL;

  GEOMImpl_IRevolution aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefAxis = theAxis->GetLastFunction();

  if (aRefBase.IsNull() || aRefAxis.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetAxis(aRefAxis);
  SETPARAM(aCI.SetAngle,theAngle);

  //Compute the Revolution value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Revolution driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }


  //Make a Python command
  GEOM::TPythonDump(aFunction) << aRevolution << " = MakeRevolutionAxisAngle("
    << theBase << ", " << theAxis << ", " << theAngle << ")";

  SetErrorCode(GEOM_OK);
  return aRevolution;
}


//=============================================================================
/*!
 *  MakeRevolutionAxisAngle
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeRevolutionAxisAngleOffset (Handle(GEOM_Object) theBase,
                                                                         Handle(GEOM_Object) theAxis,
																		 const GEOM_Parameter& theAngle,
																		 const GEOM_Parameter& theOffset,
																		 const GEOM_Parameter& theConeAngle)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || theAxis.IsNull()) return NULL;

  //Add a new Revolution object
  Handle(GEOM_Object) aRevolution = GetEngine()->AddObject(GetDocID(), GEOM_REVOLUTION);

  //Add a new Revolution function for creation a revolution relatively to axis
  Handle(GEOM_Function) aFunction =
    aRevolution->AddFunction(GEOMImpl_RevolutionDriver::GetID(), REVOLUTION_BASE_AXIS_ANGLE_OFFSET);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_RevolutionDriver::GetID()) return NULL;

  GEOMImpl_IRevolution aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefAxis = theAxis->GetLastFunction();

  if (aRefBase.IsNull() || aRefAxis.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetAxis(aRefAxis);
  SETPARAM(aCI.SetAngle,theAngle);
  SETPARAM(aCI.SetOffset,theOffset);
  SETPARAM(aCI.SetConeAngle,theConeAngle);

  //Compute the Revolution value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Revolution driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aRevolution << " = MakeRevolutionAxisAngleOffset("
    << theBase << ", " << theAxis << ", " << theAngle << ", " << theOffset << ", " << theConeAngle << ")";

  SetErrorCode(GEOM_OK);
  return aRevolution;
}

//=============================================================================
/*!
 *  MakeRevolutionAxisAngle2Ways
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeRevolutionAxisAngle2Ways
				   (Handle(GEOM_Object) theBase, Handle(GEOM_Object) theAxis, const GEOM_Parameter& theAngle)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || theAxis.IsNull()) return NULL;

  //Add a new Revolution object
  Handle(GEOM_Object) aRevolution = GetEngine()->AddObject(GetDocID(), GEOM_REVOLUTION);

  //Add a new Revolution function for creation a revolution relatively to axis
  Handle(GEOM_Function) aFunction =
    aRevolution->AddFunction(GEOMImpl_RevolutionDriver::GetID(), REVOLUTION_BASE_AXIS_ANGLE_2WAYS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_RevolutionDriver::GetID()) return NULL;

  GEOMImpl_IRevolution aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefAxis = theAxis->GetLastFunction();

  if (aRefBase.IsNull() || aRefAxis.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetAxis(aRefAxis);
  
  SETPARAM(aCI.SetAngle, theAngle);

  //Compute the Revolution value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Revolution driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aRevolution << " = MakeRevolution2Ways("
	<< theBase << ", " << theAxis << ", " << theAngle << " * 180.0 / PI " << " * pi/180.0)";

  SetErrorCode(GEOM_OK);
  return aRevolution;
}

//=============================================================================
/*!
 *  MakeFilling
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeFilling
       (Handle(GEOM_Object) theShape, int theMinDeg, int theMaxDeg,
		double theTol2D, double theTol3D, int theNbIter, bool isApprox)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;

  //Add a new Filling object
  Handle(GEOM_Object) aFilling = GetEngine()->AddObject(GetDocID(), GEOM_FILLING);

  //Add a new Filling function for creation a filling  from a compound
  Handle(GEOM_Function) aFunction = aFilling->AddFunction(GEOMImpl_FillingDriver::GetID(), BASIC_FILLING);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_FillingDriver::GetID()) return NULL;

  GEOMImpl_IFilling aFI (aFunction);

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();

  if (aRefShape.IsNull()) return NULL;

  aFI.SetShape(aRefShape);
  aFI.SetMinDeg(theMinDeg);
  aFI.SetMaxDeg(theMaxDeg);
  aFI.SetTol2D(theTol2D);
  aFI.SetTol3D(theTol3D);
  aFI.SetNbIter(theNbIter);
  aFI.SetApprox(isApprox);

  //Compute the Solid value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Filling driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    if (strcmp(aFail->GetMessageString(), "Geom_BSplineSurface") == 0)
      SetErrorCode("B-Spline surface construction failed");
    else
      SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << aFilling << " = geompy.MakeFilling("
    << theShape << ", " << theMinDeg << ", " << theMaxDeg << ", "
      << theTol2D << ", " << theTol3D << ", " << theNbIter;
  if(isApprox)
	pd << ", " << (int)isApprox;
  pd << ")";

  SetErrorCode(GEOM_OK);
  return aFilling;
}

//=============================================================================
/*!
 *  MakeThruSections
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakeThruSections(
						const Handle(TColStd_HSequenceOfTransient)& theSeqSections,
						bool theModeSolid,
						double thePreci,
						bool theRuled)
{
  Handle(GEOM_Object) anObj;
  SetErrorCode(GEOM_KO);
  if(theSeqSections.IsNull())
    return anObj;

  Standard_Integer nbObj = theSeqSections->Length();
  if (!nbObj) 
    return anObj;

  //Add a new ThruSections object
  Handle(GEOM_Object) aThruSect = GetEngine()->AddObject(GetDocID(), GEOM_THRUSECTIONS);

 
  //Add a new ThruSections function

  int aTypeFunc = (theRuled ? THRUSECTIONS_RULED : THRUSECTIONS_SMOOTHED);
  Handle(GEOM_Function) aFunction =
    aThruSect->AddFunction(GEOMImpl_ThruSectionsDriver::GetID(), aTypeFunc);
  if (aFunction.IsNull()) return anObj;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ThruSectionsDriver::GetID()) return NULL;

  GEOMImpl_IThruSections aCI (aFunction);

  Handle(TColStd_HSequenceOfTransient) aSeqSections = new TColStd_HSequenceOfTransient;

  Standard_Integer i =1;
  for( ; i <= nbObj; i++) {

    Handle(Standard_Transient) anItem = theSeqSections->Value(i);
    if(anItem.IsNull())
      continue;
    
    Handle(GEOM_Object) aSectObj = Handle(GEOM_Object)::DownCast(anItem);
    if(!aSectObj.IsNull())
    {
      Handle(GEOM_Function) aRefSect = aSectObj->GetLastFunction();
      if(!aRefSect.IsNull())
        aSeqSections->Append(aRefSect);
    }
  }

  if(!aSeqSections->Length())
    return anObj;

  aCI.SetSections(aSeqSections);
  aCI.SetSolidMode(theModeSolid);
  aCI.SetPrecision(thePreci);

  //Compute the ThruSections value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("ThruSections driver failed");
      return anObj;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return anObj;
  }

  //Make a Python command
  GEOM::TPythonDump pyDump(aFunction);
  pyDump << aThruSect << " = MakeThruSections([";

  for(i =1 ; i <= nbObj; i++) {

    Handle(Standard_Transient) anItem = theSeqSections->Value(i);
    if(anItem.IsNull())
      continue;
    
    Handle(GEOM_Object) aSectObj = Handle(GEOM_Object)::DownCast(anItem);
    if(!aSectObj.IsNull()) {
      pyDump<< aSectObj;
      if(i < nbObj)
	pyDump<<", ";
    }
  }
  
  pyDump<< "],"<<(long)theModeSolid << "," << thePreci <<","<<(long) theRuled <<")";

  SetErrorCode(GEOM_OK);
  return aThruSect;
  
   
}


//=============================================================================
/*!
 *  MakePipeWithDifferentSections
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePipeWithDifferentSections(
	        const Handle(TColStd_HSequenceOfTransient)& theBases,
		const Handle(TColStd_HSequenceOfTransient)& theLocations,
		const Handle(GEOM_Object)& thePath,
		bool theWithContact,
		bool theWithCorrections)
{
  Handle(GEOM_Object) anObj;
  SetErrorCode(GEOM_KO);
  if(theBases.IsNull())
    return anObj;

  Standard_Integer nbBases = theBases->Length();
  
  if (!nbBases)
    return anObj;
  
  Standard_Integer nbLocs =  (theLocations.IsNull() ? 0 :theLocations->Length());
  //Add a new Pipe object
  Handle(GEOM_Object) aPipeDS = GetEngine()->AddObject(GetDocID(), GEOM_PIPE);
 
  //Add a new Pipe function

  Handle(GEOM_Function) aFunction =
    aPipeDS->AddFunction(GEOMImpl_PipeDriver::GetID(), PIPE_DIFFERENT_SECTIONS);
  if (aFunction.IsNull()) return anObj;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PipeDriver::GetID()) return anObj;

  GEOMImpl_IPipeDiffSect aCI (aFunction);

  Handle(GEOM_Function) aRefPath = thePath->GetLastFunction();
  if(aRefPath.IsNull())
    return anObj;

  Handle(TColStd_HSequenceOfTransient) aSeqBases = new TColStd_HSequenceOfTransient;
  Handle(TColStd_HSequenceOfTransient) aSeqLocs = new TColStd_HSequenceOfTransient;

  Standard_Integer i =1;
  for( ; i <= nbBases; i++) {

    Handle(Standard_Transient) anItem = theBases->Value(i);
    if(anItem.IsNull())
      continue;
    
    Handle(GEOM_Object) aBase = Handle(GEOM_Object)::DownCast(anItem);
    if(aBase.IsNull())
      continue;
    Handle(GEOM_Function) aRefBase = aBase->GetLastFunction();
    if(aRefBase.IsNull())
      continue;
    if(nbLocs)
    {
      Handle(Standard_Transient) anItemLoc = theLocations->Value(i);
      if(anItemLoc.IsNull())
	continue;
    
      Handle(GEOM_Object) aLoc = Handle(GEOM_Object)::DownCast(anItemLoc);
      if(aLoc.IsNull())
	continue;
      Handle(GEOM_Function) aRefLoc = aLoc->GetLastFunction();
      if(aRefLoc.IsNull())
	continue;
      aSeqLocs->Append(aRefLoc);
    }
    aSeqBases->Append(aRefBase);
  }

  if(!aSeqBases->Length())
    return anObj;

  aCI.SetBases(aSeqBases);
  aCI.SetLocations(aSeqLocs);
  aCI.SetPath(aRefPath);
  aCI.SetWithContactMode(theWithContact);
  aCI.SetWithCorrectionMode(theWithCorrections);
  
  //Compute the Pipe value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Pipe with defferent section driver failed");
      return anObj;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return anObj;
  }

  //Make a Python command
  GEOM::TPythonDump pyDump(aFunction);
  pyDump << aPipeDS << " = MakePipeWithDifferentSections([";

  for(i =1 ; i <= nbBases; i++) {

    Handle(Standard_Transient) anItem = theBases->Value(i);
    if(anItem.IsNull())
      continue;
    
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(anItem);
    if(!anObj.IsNull()) {
      pyDump<< anObj;
      if(i < nbBases)
	pyDump<<", ";
    }
    
  }
  
  pyDump<< "], [";
   
  for(i =1 ; i <= nbLocs; i++) {

    Handle(Standard_Transient) anItem = theLocations->Value(i);
    if(anItem.IsNull())
      continue;
    
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(anItem);
    if(!anObj.IsNull()) {
      pyDump<< anObj;
      if(i < nbLocs)
	pyDump<<", ";
    }
  }  

  pyDump<< "], "<<thePath<<","<<(long)theWithContact << "," <<(long)  theWithCorrections<<")";

  SetErrorCode(GEOM_OK);
  return aPipeDS;
  
   
}


//=============================================================================
/*!
 *  MakePipeWithShellSections
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePipeWithShellSections(
	        const Handle(TColStd_HSequenceOfTransient)& theBases,
	        const Handle(TColStd_HSequenceOfTransient)& theSubBases,
		const Handle(TColStd_HSequenceOfTransient)& theLocations,
		const Handle(GEOM_Object)& thePath,
		bool theWithContact,
		bool theWithCorrections)
{
  Handle(GEOM_Object) anObj;
  SetErrorCode(GEOM_KO);
  if(theBases.IsNull())
    return anObj;

  Standard_Integer nbBases = theBases->Length();
  
  if (!nbBases)
    return anObj;
  
  Standard_Integer nbSubBases =  (theSubBases.IsNull() ? 0 :theSubBases->Length());

  Standard_Integer nbLocs =  (theLocations.IsNull() ? 0 :theLocations->Length());

  //Add a new Pipe object
  Handle(GEOM_Object) aPipeDS = GetEngine()->AddObject(GetDocID(), GEOM_PIPE);
 
  //Add a new Pipe function

  Handle(GEOM_Function) aFunction =
    aPipeDS->AddFunction(GEOMImpl_PipeDriver::GetID(), PIPE_SHELL_SECTIONS);
  if (aFunction.IsNull()) return anObj;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PipeDriver::GetID()) return anObj;

  //GEOMImpl_IPipeDiffSect aCI (aFunction);
  GEOMImpl_IPipeShellSect aCI (aFunction);

  Handle(GEOM_Function) aRefPath = thePath->GetLastFunction();
  if(aRefPath.IsNull())
    return anObj;

  Handle(TColStd_HSequenceOfTransient) aSeqBases = new TColStd_HSequenceOfTransient;
  Handle(TColStd_HSequenceOfTransient) aSeqSubBases = new TColStd_HSequenceOfTransient;
  Handle(TColStd_HSequenceOfTransient) aSeqLocs = new TColStd_HSequenceOfTransient;

  Standard_Integer i =1;
  for( ; i <= nbBases; i++) {

    Handle(Standard_Transient) anItem = theBases->Value(i);
    if(anItem.IsNull())
      continue;
    Handle(GEOM_Object) aBase = Handle(GEOM_Object)::DownCast(anItem);
    if(aBase.IsNull())
      continue;
    Handle(GEOM_Function) aRefBase = aBase->GetLastFunction();
    if(aRefBase.IsNull())
      continue;

    if( nbSubBases >= nbBases ) {
      Handle(Standard_Transient) aSubItem = theSubBases->Value(i);
      if(aSubItem.IsNull())
	continue;
      Handle(GEOM_Object) aSubBase = Handle(GEOM_Object)::DownCast(aSubItem);
      if(aSubBase.IsNull())
	continue;
      Handle(GEOM_Function) aRefSubBase = aSubBase->GetLastFunction();
      if(aRefSubBase.IsNull())
	continue;
      aSeqSubBases->Append(aRefSubBase);
    }

    if(nbLocs) {
      Handle(Standard_Transient) anItemLoc = theLocations->Value(i);
      if(anItemLoc.IsNull())
	continue;
      Handle(GEOM_Object) aLoc = Handle(GEOM_Object)::DownCast(anItemLoc);
      if(aLoc.IsNull())
	continue;
      Handle(GEOM_Function) aRefLoc = aLoc->GetLastFunction();
      if(aRefLoc.IsNull())
	continue;
      aSeqLocs->Append(aRefLoc);
    }

    aSeqBases->Append(aRefBase);
  }

  if(!aSeqBases->Length())
    return anObj;

  aCI.SetBases(aSeqBases);
  aCI.SetSubBases(aSeqSubBases);
  aCI.SetLocations(aSeqLocs);
  aCI.SetPath(aRefPath);
  aCI.SetWithContactMode(theWithContact);
  aCI.SetWithCorrectionMode(theWithCorrections);
  
  //Compute the Pipe value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Pipe with shell sections driver failed");
      return anObj;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return anObj;
  }

  //Make a Python command
  GEOM::TPythonDump pyDump(aFunction);
  pyDump << aPipeDS << " = MakePipeWithShellSections([";

  for(i =1 ; i <= nbBases; i++) {

    Handle(Standard_Transient) anItem = theBases->Value(i);
    if(anItem.IsNull())
      continue;
    
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(anItem);
    if(!anObj.IsNull()) {
      pyDump<< anObj;
      if(i < nbBases)
	pyDump<<", ";
    }
    
  }
  
  pyDump<< "], [";
   
  for(i =1 ; i <= nbSubBases; i++) {

    Handle(Standard_Transient) anItem = theSubBases->Value(i);
    if(anItem.IsNull())
      continue;
    
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(anItem);
    if(!anObj.IsNull()) {
      pyDump<< anObj;
      if(i < nbBases)
	pyDump<<", ";
    }
    
  }
  
  pyDump<< "], [";
   
  for(i =1 ; i <= nbLocs; i++) {

    Handle(Standard_Transient) anItem = theLocations->Value(i);
    if(anItem.IsNull())
      continue;
    
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(anItem);
    if(!anObj.IsNull()) {
      pyDump<< anObj;
      if(i < nbLocs)
	pyDump<<", ";
    }
  }  

  pyDump<< "], "<<thePath<<","<<(int)theWithContact << "," << (int)theWithCorrections<<")";

  SetErrorCode(GEOM_OK);
  return aPipeDS;

}

//=============================================================================
/*!
 *  MakePipeShellsWithoutPath
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePipeShellsWithoutPath(
	        const Handle(TColStd_HSequenceOfTransient)& theBases,
		const Handle(TColStd_HSequenceOfTransient)& theLocations)
{
  Handle(GEOM_Object) anObj;
  SetErrorCode(GEOM_KO);
  if(theBases.IsNull())
    return anObj;

  Standard_Integer nbBases = theBases->Length();
  
  if (!nbBases)
    return anObj;
  
  Standard_Integer nbLocs =  (theLocations.IsNull() ? 0 :theLocations->Length());

  //Add a new Pipe object
  Handle(GEOM_Object) aPipeDS = GetEngine()->AddObject(GetDocID(), GEOM_PIPE);
 
  //Add a new Pipe function

  Handle(GEOM_Function) aFunction =
    aPipeDS->AddFunction(GEOMImpl_PipeDriver::GetID(), PIPE_SHELLS_WITHOUT_PATH);
  if (aFunction.IsNull()) return anObj;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PipeDriver::GetID()) return anObj;

  GEOMImpl_IPipeShellSect aCI (aFunction);

  Handle(TColStd_HSequenceOfTransient) aSeqBases = new TColStd_HSequenceOfTransient;
  Handle(TColStd_HSequenceOfTransient) aSeqLocs = new TColStd_HSequenceOfTransient;

  Standard_Integer i =1;
  for( ; i <= nbBases; i++) {

    Handle(Standard_Transient) anItem = theBases->Value(i);
    if(anItem.IsNull())
      continue;
    Handle(GEOM_Object) aBase = Handle(GEOM_Object)::DownCast(anItem);
    if(aBase.IsNull())
      continue;
    Handle(GEOM_Function) aRefBase = aBase->GetLastFunction();
    if(aRefBase.IsNull())
      continue;

    if(nbLocs) {
      Handle(Standard_Transient) anItemLoc = theLocations->Value(i);
      if(anItemLoc.IsNull())
	continue;
      Handle(GEOM_Object) aLoc = Handle(GEOM_Object)::DownCast(anItemLoc);
      if(aLoc.IsNull())
	continue;
      Handle(GEOM_Function) aRefLoc = aLoc->GetLastFunction();
      if(aRefLoc.IsNull())
	continue;
      aSeqLocs->Append(aRefLoc);
    }

    aSeqBases->Append(aRefBase);
  }

  if(!aSeqBases->Length())
    return anObj;

  aCI.SetBases(aSeqBases);
  aCI.SetLocations(aSeqLocs);
  
  //Compute the Pipe value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Pipe with shell sections without path driver failed");
      return anObj;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return anObj;
  }

  //Make a Python command
  GEOM::TPythonDump pyDump(aFunction);
  pyDump << aPipeDS << " = MakePipeShellsWithoutPath([";

  for(i =1 ; i <= nbBases; i++) {

    Handle(Standard_Transient) anItem = theBases->Value(i);
    if(anItem.IsNull())
      continue;
    
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(anItem);
    if(!anObj.IsNull()) {
      pyDump<< anObj;
      if(i < nbBases)
	pyDump<<", ";
    }
    
  }
  
  pyDump<< "], [";
   
  for(i =1 ; i <= nbLocs; i++) {

    Handle(Standard_Transient) anItem = theLocations->Value(i);
    if(anItem.IsNull())
      continue;
    
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(anItem);
    if(!anObj.IsNull()) {
      pyDump<< anObj;
      if(i < nbLocs)
	pyDump<<", ";
    }
  }  

  pyDump<< "])";

  SetErrorCode(GEOM_OK);
  return aPipeDS;

}

//=============================================================================
/*!
 *  MakePipeBiNormalAlongVector
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePipeBiNormalAlongVector (Handle(GEOM_Object) theBase,
									     Handle(GEOM_Object) thePath,
									     Handle(GEOM_Object) theVec)
{
  SetErrorCode(GEOM_KO);

  if (theBase.IsNull() || thePath.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Pipe object
  Handle(GEOM_Object) aPipe = GetEngine()->AddObject(GetDocID(), GEOM_PIPE);

  //Add a new Pipe function
  Handle(GEOM_Function) aFunction =
    aPipe->AddFunction(GEOMImpl_PipeDriver::GetID(), PIPE_BI_NORMAL_ALONG_VECTOR);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PipeDriver::GetID()) return NULL;

  GEOMImpl_IPipeBiNormal aCI (aFunction);

  Handle(GEOM_Function) aRefBase = theBase->GetLastFunction();
  Handle(GEOM_Function) aRefPath = thePath->GetLastFunction();
  Handle(GEOM_Function) aRefVec  = theVec->GetLastFunction();

  if (aRefBase.IsNull() || aRefPath.IsNull() || aRefVec.IsNull()) return NULL;

  aCI.SetBase(aRefBase);
  aCI.SetPath(aRefPath);
  aCI.SetVector(aRefVec);

  //Compute the Pipe value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Pipe driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPipe << " = MakePipeBiNormalAlongVector("
    << theBase << ", " << thePath << ", " << theVec << ")";

  SetErrorCode(GEOM_OK);
  return aPipe;
}

//=============================================================================
/*!
 *  MakePlateWithShapesList
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_I3DPrimOperations::MakePlateWithShapesList(std::list<Handle(GEOM_Object)> theShapes, 
																		Handle(GEOM_Object) theInitialFace)
{
  SetErrorCode(GEOM_KO);

  //Add a new Plate object
  Handle(GEOM_Object) aPlate = GetEngine()->AddObject(GetDocID(), GEOM_PLATE);

  //Add a new Plate function for creating spline surface restrained from a shape(point-edge) set
  Handle(GEOM_Function) aFunction =
	aPlate->AddFunction(GEOMImpl_PlateDriver::GetID(), PLATE_BY_SHAPES_LIST);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PlateDriver::GetID()) return NULL;

  GEOMImpl_IPlate aPI (aFunction);

  if (!theInitialFace.IsNull())
	if (!theInitialFace->GetLastFunction().IsNull())
		aPI.SetInitialShape(theInitialFace->GetLastFunction());

  int aLen = theShapes.size();

  if (aLen == 0) {
	  SetErrorCode("The shape list is empty");
	  return NULL;
  }
  
  aPI.SetLength(aLen);

  int ind = 1;
  std::list<Handle(GEOM_Object)>::iterator it = theShapes.begin();
  for (; it != theShapes.end(); it++, ind++) {
    Handle(GEOM_Function) aRefPnt = (*it)->GetLastFunction();

    if (aRefPnt.IsNull()) return NULL;

	aPI.SetShape(ind, aRefPnt);
  }

  //Compute the Plate value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
	  SetErrorCode("Plate driver failed");
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
  pd << aPlate << " = MakePlateWithShapesList([";

  it = theShapes.begin();
  pd << (*it++);
  while (it != theShapes.end()) {
	pd << ", " << (*it++);
  }

  if (!theInitialFace.IsNull())
	pd << "], " << theInitialFace << ")";
  else
	pd << "]) ";

  SetErrorCode(GEOM_OK);
  return aPlate;
}

