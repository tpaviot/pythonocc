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

#include <GEOMImpl_IBooleanOperations.hxx>

#include <GEOM_Function.hxx>
#include <GEOM_PythonDump.hxx>

#include <GEOMImpl_Types.hxx>

#include <GEOMImpl_BooleanDriver.hxx>
#include <GEOMImpl_IBoolean.hxx>

#include <GEOMImpl_PartitionDriver.hxx>
#include <GEOMImpl_IPartition.hxx>

#include <TDF_Tool.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

//#define BOOLEAN_OPS_CREATE_NEW_OBJECT


//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================
GEOMImpl_IBooleanOperations::GEOMImpl_IBooleanOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  //MESSAGE("GEOMImpl_IBooleanOperations::GEOMImpl_IBooleanOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_IBooleanOperations::~GEOMImpl_IBooleanOperations()
{
  //MESSAGE("GEOMImpl_IBooleanOperations::~GEOMImpl_IBooleanOperations");
}


//=============================================================================
/*!
 *  MakeBoolean
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBooleanOperations::MakeBoolean (Handle(GEOM_Object) theShape1,
                                                              Handle(GEOM_Object) theShape2,
                                                              Standard_Integer    theOp)
{
  SetErrorCode(GEOM_KO);

  if (theShape1.IsNull() || theShape2.IsNull()) return NULL;

 #ifdef BOOLEAN_OPS_CREATE_NEW_OBJECT
  //Add a new Boolean object
  Handle(GEOM_Object) aBool = GetEngine()->AddObject(GetDocID(), GEOM_BOOLEAN);
 #else
  Handle(GEOM_Object) aBool = theShape1;
 #endif

  //Get references
  Handle(GEOM_Function) aRef1 = theShape1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = theShape2->GetLastFunction();

  if (aRef1.IsNull() || aRef2.IsNull()) return NULL;

  //Add a new Boolean function
  Handle(GEOM_Function) aFunction;
  if (theOp == 1) {
    aFunction = aBool->AddFunction(GEOMImpl_BooleanDriver::GetID(), BOOLEAN_COMMON);
  } else if (theOp == 2) {
    aFunction = aBool->AddFunction(GEOMImpl_BooleanDriver::GetID(), BOOLEAN_CUT);
  } else if (theOp == 3) {
    aFunction = aBool->AddFunction(GEOMImpl_BooleanDriver::GetID(), BOOLEAN_FUSE);
  } else if (theOp == 4) {
    aFunction = aBool->AddFunction(GEOMImpl_BooleanDriver::GetID(), BOOLEAN_SECTION);
  } else if (theOp == 5) {
    aFunction = aBool->AddFunction(GEOMImpl_BooleanDriver::GetID(), BOOLEAN_COMMON_OLD);
  } else if (theOp == 6) {
    aFunction = aBool->AddFunction(GEOMImpl_BooleanDriver::GetID(), BOOLEAN_CUT_OLD);
  } else if (theOp == 7) {
    aFunction = aBool->AddFunction(GEOMImpl_BooleanDriver::GetID(), BOOLEAN_FUSE_OLD);
  } else if (theOp == 8) {
    aFunction = aBool->AddFunction(GEOMImpl_BooleanDriver::GetID(), BOOLEAN_SECTION_OLD);
  } else {
  }
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BooleanDriver::GetID()) return NULL;

  //Set references
  GEOMImpl_IBoolean aCI (aFunction);

  aCI.SetShape1(aRef1);
  aCI.SetShape2(aRef2);

  //Compute the Boolean value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Boolean driver failed");
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
  pd << aBool;
  pd << " = MakeBoolean(";
  pd << theShape1 << ", " << theShape2 << ", " << theOp << ")";

  SetErrorCode(GEOM_OK);
  return aBool;
}

//=============================================================================
/*!
 *  MakePartition
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBooleanOperations::MakePartition
                             (const Handle(TColStd_HSequenceOfTransient)& theShapes,
                              const Handle(TColStd_HSequenceOfTransient)& theTools,
                              const Handle(TColStd_HSequenceOfTransient)& theKeepIns,
                              const Handle(TColStd_HSequenceOfTransient)& theRemoveIns,
                              const Standard_Integer                      theLimit,
                              const Standard_Boolean                      theRemoveWebs,
							  const Handle(TColStd_HArray1OfInteger)&     theMaterials,
							  const Standard_Integer 					  theKeepNonlimitShapes,
                              const Standard_Boolean                      thePerformSelfIntersections)
{
  SetErrorCode(GEOM_KO);

  //Add a new Partition object
  Handle(GEOM_Object) aPartition = GetEngine()->AddObject(GetDocID(), GEOM_PARTITION);

  //Add a new Partition function
  Handle(GEOM_Function) aFunction;
  if (thePerformSelfIntersections)
    aFunction = aPartition->AddFunction(GEOMImpl_PartitionDriver::GetID(), PARTITION_PARTITION);
  else
    aFunction = aPartition->AddFunction(GEOMImpl_PartitionDriver::GetID(), PARTITION_NO_SELF_INTERSECTIONS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PartitionDriver::GetID()) return NULL;

  GEOMImpl_IPartition aCI (aFunction);

  Handle(TColStd_HSequenceOfTransient) aShapesSeq  = new TColStd_HSequenceOfTransient;
  Handle(TColStd_HSequenceOfTransient) aToolsSeq   = new TColStd_HSequenceOfTransient;
  Handle(TColStd_HSequenceOfTransient) aKeepInsSeq = new TColStd_HSequenceOfTransient;
  Handle(TColStd_HSequenceOfTransient) aRemInsSeq  = new TColStd_HSequenceOfTransient;

  Standard_Integer ind, aLen;
  TCollection_AsciiString anEntry;
  TCollection_AsciiString aShapesDescr, aToolsDescr, aKeepInsDescr, aRemoveInsDescr;

  // Shapes
  aLen = theShapes->Length();
  for (ind = 1; ind <= aLen; ind++) {
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(theShapes->Value(ind));
    Handle(GEOM_Function) aRefSh = anObj->GetLastFunction();
    if (aRefSh.IsNull()) {
      SetErrorCode("NULL shape for Partition");
      return NULL;
    }
    aShapesSeq->Append(aRefSh);

    // For Python command
    TDF_Tool::Entry(anObj->GetEntry(), anEntry);
    if (ind > 1) aShapesDescr += ", ";
    aShapesDescr += anEntry;
  }
  aCI.SetShapes(aShapesSeq);

  // Tools
  aLen = theTools->Length();
  for (ind = 1; ind <= aLen; ind++) {
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(theTools->Value(ind));
    Handle(GEOM_Function) aRefSh = anObj->GetLastFunction();
    if (aRefSh.IsNull()) {
      SetErrorCode("NULL tool shape for Partition");
      return NULL;
    }
    aToolsSeq->Append(aRefSh);

    // For Python command
    TDF_Tool::Entry(anObj->GetEntry(), anEntry);
    if (ind > 1) aToolsDescr += ", ";
    aToolsDescr += anEntry;
  }
  aCI.SetTools(aToolsSeq);

  // Keep Inside
  aLen = theKeepIns->Length();
  for (ind = 1; ind <= aLen; ind++) {
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(theKeepIns->Value(ind));
    Handle(GEOM_Function) aRefSh = anObj->GetLastFunction();
    if (aRefSh.IsNull()) {
      SetErrorCode("NULL <keep inside> shape for Partition");
      return NULL;
    }
    aKeepInsSeq->Append(aRefSh);

    // For Python command
    TDF_Tool::Entry(anObj->GetEntry(), anEntry);
    if (ind > 1) aKeepInsDescr += ", ";
    aKeepInsDescr += anEntry;
  }
  aCI.SetKeepIns(aKeepInsSeq);

  // Remove Inside
  aLen = theRemoveIns->Length();
  for (ind = 1; ind <= aLen; ind++) {
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(theRemoveIns->Value(ind));
    Handle(GEOM_Function) aRefSh = anObj->GetLastFunction();
    if (aRefSh.IsNull()) {
      SetErrorCode("NULL <remove inside> shape for Partition");
      return NULL;
    }
    aRemInsSeq->Append(aRefSh);

    // For Python command
    TDF_Tool::Entry(anObj->GetEntry(), anEntry);
    if (ind > 1) aRemoveInsDescr += ", ";
    aRemoveInsDescr += anEntry;
  }
  aCI.SetRemoveIns(aRemInsSeq);

  // Limit
  aCI.SetLimit(theLimit);
  aCI.SetKeepNonlimitShapes(theKeepNonlimitShapes);

  // Materials
  if (theRemoveWebs) {
    if (theMaterials.IsNull()) {
      Handle(TColStd_HArray1OfInteger) aMaterials =
        new TColStd_HArray1OfInteger (1, aShapesSeq->Length());
      aMaterials->Init(0);
      aCI.SetMaterials(aMaterials);
    } else {
      aCI.SetMaterials(theMaterials);
    }
  }

  //Compute the Partition
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Partition driver failed");
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
  //if (thePerformSelfIntersections)
    //pd << aPartition << " = MakePartition([";
  //else
    pd << aPartition << " = MakePartitionNonSelfIntersectedShape([";

  // Shapes, Tools
  pd << aShapesDescr.ToCString() << "], [" << aToolsDescr.ToCString() << "], [";
  // Keep Ins, Remove Ins
  pd << aKeepInsDescr.ToCString() << "], [" << aRemoveInsDescr.ToCString() << "], ";
  // Limit, Remove Webs
  pd << TopAbs_ShapeEnum(theLimit) << ", " << (int)theRemoveWebs << ", [";
  // Materials
  if (!theMaterials.IsNull() && theMaterials->Length() > 0) {
    int i = theMaterials->Lower();
    pd << theMaterials->Value(i);
    i++;
    for (; i <= theMaterials->Upper(); i++) {
      pd << ", " << theMaterials->Value(i);
    }
  }
  pd << "], " << theKeepNonlimitShapes <<")";

  SetErrorCode(GEOM_OK);
  return aPartition;
}

//=============================================================================
/*!
 *  MakeHalfPartition
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBooleanOperations::MakeHalfPartition
       (Handle(GEOM_Object) theShape, Handle(GEOM_Object) thePlane)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || thePlane.IsNull()) return NULL;

 #ifdef BOOLEAN_OPS_CREATE_NEW_OBJECT
  //Add a new Boolean object
  Handle(GEOM_Object) aPart = GetEngine()->AddObject(GetDocID(), GEOM_PARTITION);
 #else
  Handle(GEOM_Object) aPart = theShape;
 #endif

  //Get references
  Handle(GEOM_Function) aRef1 = theShape->GetLastFunction();
  Handle(GEOM_Function) aRef2 = thePlane->GetLastFunction();

  if (aRef1.IsNull() || aRef2.IsNull()) return NULL;

  //Add a new Partition function
  Handle(GEOM_Function) aFunction =
    aPart->AddFunction(GEOMImpl_PartitionDriver::GetID(), PARTITION_HALF);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PartitionDriver::GetID()) return NULL;

  //Set references
  GEOMImpl_IPartition aCI (aFunction);

  aCI.SetShape(aRef1);
  aCI.SetPlane(aRef2);

  //Compute the Partition value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Partition driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aPart << " = MakeHalfPartition("
                               << theShape << ", " << thePlane << ")";

  SetErrorCode(GEOM_OK);
  return aPart;
}

