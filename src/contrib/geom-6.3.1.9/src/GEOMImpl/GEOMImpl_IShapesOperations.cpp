//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
// File      : GEOMImpl_IShapesOperations.cxx
// Created   : 
// Author    : modified by Lioka RAZAFINDRAZAKA (CEA) 22/06/2007
// Project   : SALOME

#include <Standard_Stream.hxx>

#include "GEOMImpl_IShapesOperations.hxx"

#include "GEOMImpl_Types.hxx"

#include "GEOMImpl_VectorDriver.hxx"
#include "GEOMImpl_ShapeDriver.hxx"
#include "GEOMImpl_CopyDriver.hxx"
#include "GEOMImpl_GlueDriver.hxx"

#include "GEOMImpl_IVector.hxx"
#include "GEOMImpl_IShapes.hxx"
#include "GEOMImpl_IGlue.hxx"

#include "GEOMImpl_Block6Explorer.hxx"

#include "GEOM_Function.hxx"
#include "GEOM_ISubShape.hxx"
#include "GEOM_PythonDump.hxx"

#include "GEOMAlgo_FinderShapeOn1.hxx"
#include "GEOMAlgo_FinderShapeOnQuad.hxx"
#include "GEOMAlgo_FinderShapeOn2.hxx"
#include "GEOMAlgo_ClsfBox.hxx"
#include "GEOMAlgo_ClsfSolid.hxx"
#include "GEOMAlgo_GlueDetector.hxx"
#include "GEOMAlgo_ListIteratorOfListOfCoupleOfShapes.hxx"
#include "GEOMAlgo_CoupleOfShapes.hxx"
#include "GEOMAlgo_ListOfCoupleOfShapes.hxx"

#include "utilities.h"

#include <TFunction_DriverTable.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_Logbook.hxx>
#include <TDataStd_Integer.hxx>
#include <TDataStd_IntegerArray.hxx>
#include <TDataStd_ListIteratorOfListOfExtendedString.hxx>
#include <TDF_Tool.hxx>

#include <BRepExtrema_ExtCF.hxx>
#include <BRepExtrema_DistShapeShape.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <BRepTools.hxx>
#include <BRepGProp.hxx>
#include <BRepAdaptor_Curve.hxx>
#include <BRepAdaptor_Surface.hxx>
#include <BRepBndLib.hxx>
#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRepMesh_IncrementalMesh.hxx>

#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopLoc_Location.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopTools_Array1OfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapOfOrientedShape.hxx>

#include <Geom_Surface.hxx>
#include <Geom_Plane.hxx>
#include <Geom_SphericalSurface.hxx>
#include <Geom_CylindricalSurface.hxx>
#include <GeomAdaptor_Surface.hxx>

#include <GeomLib_Tool.hxx>
#include <Geom2d_Curve.hxx>

#include <Bnd_Box.hxx>
#include <GProp_GProps.hxx>

#include <TColStd_Array1OfReal.hxx>
#include <TColStd_HArray1OfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <gp_Cylinder.hxx>
#include <gp_Lin.hxx>
#include <gp_Pnt.hxx>

#include <vector>
#include <algorithm>
#include <functional>

#include <Standard_NullObject.hxx>
#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

// Includes added for GetInPlace algorithm improvement

#include <GEOMImpl_MeasureDriver.hxx>
#include <GEOMImpl_IMeasure.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>

#include <BRepClass_FaceClassifier.hxx>
#include <BRepClass3d_SolidClassifier.hxx>
#include <Precision.hxx>

#define STD_SORT_ALGO 1

#define SETPARAM(aFUNC,aVAL)  \
  if (aVAL.IsString())         \
	aFUNC( aVAL.GetString() ); \
  else                         \
	aFUNC( aVAL.GetDouble() );

//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================
GEOMImpl_IShapesOperations::GEOMImpl_IShapesOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  MESSAGE("GEOMImpl_IShapesOperations::GEOMImpl_IShapesOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_IShapesOperations::~GEOMImpl_IShapesOperations()
{
  MESSAGE("GEOMImpl_IShapesOperations::~GEOMImpl_IShapesOperations");
}


//=============================================================================
/*!
 *  MakeEdge
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeEdge
                     (Handle(GEOM_Object) thePnt1, Handle(GEOM_Object) thePnt2)
{
  SetErrorCode(GEOM_KO);

  if (thePnt1.IsNull() || thePnt2.IsNull()) return NULL;

  //Add a new Edge object
  Handle(GEOM_Object) anEdge = GetEngine()->AddObject(GetDocID(), GEOM_EDGE);

  //Add a new Vector function
  Handle(GEOM_Function) aFunction =
    anEdge->AddFunction(GEOMImpl_VectorDriver::GetID(), VECTOR_TWO_PNT);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_VectorDriver::GetID()) return NULL;

  GEOMImpl_IVector aPI (aFunction);

  Handle(GEOM_Function) aRef1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = thePnt2->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull()) return NULL;

  aPI.SetPoint1(aRef1);
  aPI.SetPoint2(aRef2);

  //Compute the Edge value
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
  GEOM::TPythonDump(aFunction) << anEdge << " = MakeEdge("
                               << thePnt1 << ", " << thePnt2 << ")";

  SetErrorCode(GEOM_OK);
  return anEdge;
}

//=============================================================================
/*!
 *  MakeEdgeOnCurveByLength
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeEdgeOnCurveByLength
                     (Handle(GEOM_Object) theRefCurve,
                      const GEOM_Parameter& theLength,
                      Handle(GEOM_Object) theStartPoint)
{
  SetErrorCode(GEOM_KO);

  if (theRefCurve.IsNull()) return NULL;

  //Add a new Edge object
  Handle(GEOM_Object) anEdge = GetEngine()->AddObject(GetDocID(), GEOM_EDGE);

  //Add a new Vector function
  Handle(GEOM_Function) aFunction =
    anEdge->AddFunction(GEOMImpl_ShapeDriver::GetID(), EDGE_CURVE_LENGTH);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ShapeDriver::GetID()) return NULL;

  GEOMImpl_IVector aPI (aFunction);

  Handle(GEOM_Function) aRef1 = theRefCurve->GetLastFunction();
  if (aRef1.IsNull()) return NULL;
  aPI.SetPoint1(aRef1);

  if (!theStartPoint.IsNull()) {
    Handle(GEOM_Function) aRef2 = theStartPoint->GetLastFunction();
    aPI.SetPoint2(aRef2);
  }
  SETPARAM(aPI.SetParameter,theLength);

  //Compute the Edge value
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
  GEOM::TPythonDump(aFunction) << anEdge << " = MakeEdgeOnCurveByLength("
                               << theRefCurve << ", " << theLength << ", " << theStartPoint << ")";

  SetErrorCode(GEOM_OK);
  return anEdge;
}

//=============================================================================
/*!
 *  MakeEdgeWire
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeEdgeWire
                    (Handle(GEOM_Object) theWire,
		     const Standard_Real theLinearTolerance,
		     const Standard_Real theAngularTolerance)
{
  SetErrorCode(GEOM_KO);

  if (theWire.IsNull()) return NULL;

  //Add a new Edge object
  Handle(GEOM_Object) anEdge = GetEngine()->AddObject(GetDocID(), GEOM_EDGE);

  //Add a new Vector function
  Handle(GEOM_Function) aFunction =
    anEdge->AddFunction(GEOMImpl_ShapeDriver::GetID(), EDGE_WIRE);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ShapeDriver::GetID()) return NULL;

  GEOMImpl_IShapes aCI (aFunction);

  Handle(GEOM_Function) aWire = theWire->GetLastFunction();

  if (aWire.IsNull()) return NULL;

  aCI.SetBase(aWire);
  aCI.SetTolerance(theLinearTolerance);
  aCI.SetAngularTolerance(theAngularTolerance);

  //Compute the Edge value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Shape driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  const double DEF_LIN_TOL = Precision::Confusion();
  const double DEF_ANG_TOL = Precision::Angular();
  //Make a Python command
  if ( theAngularTolerance == DEF_ANG_TOL ) {
    if ( theLinearTolerance == DEF_LIN_TOL )
      GEOM::TPythonDump(aFunction) << anEdge  << " = MakeEdgeWire("
				   << theWire << ")";
    else 
      GEOM::TPythonDump(aFunction) << anEdge  << " = MakeEdgeWire("
				   << theWire << ", " << theLinearTolerance << ")";
  }
  else {
    GEOM::TPythonDump(aFunction) << anEdge  << " = MakeEdgeWire("
				 << theWire << ", " << theLinearTolerance << ", "
				 << theAngularTolerance << ")";
  }

  SetErrorCode(GEOM_OK);
  return anEdge;
}

//=============================================================================
/*!
 *  MakeWire
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeWire
                             (std::list<Handle(GEOM_Object)> theShapes,
                             const Standard_Real            theTolerance)
{
  SetErrorCode(GEOM_KO);

  //Add a new object
  Handle(GEOM_Object) aWire = GetEngine()->AddObject(GetDocID(), GEOM_WIRE);

  //Add a new function
  Handle(GEOM_Function) aFunction =
    aWire->AddFunction(GEOMImpl_ShapeDriver::GetID(), WIRE_EDGES);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ShapeDriver::GetID()) return NULL;

  GEOMImpl_IShapes aCI (aFunction);
  aCI.SetTolerance(theTolerance);

  Handle(TColStd_HSequenceOfTransient) aShapesSeq = new TColStd_HSequenceOfTransient;

  // Shapes
  std::list<Handle(GEOM_Object)>::iterator it = theShapes.begin();
  for (; it != theShapes.end(); it++) {
    Handle(GEOM_Function) aRefSh = (*it)->GetLastFunction();
    if (aRefSh.IsNull()) {
      SetErrorCode("NULL argument shape for the shape construction");
      return NULL;
    }
    aShapesSeq->Append(aRefSh);
  }
  aCI.SetShapes(aShapesSeq);

  //Compute the shape
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Shape driver failed");
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
  pd << aWire << " = MakeWire([";

  // Shapes
  it = theShapes.begin();
  if (it != theShapes.end()) {
    pd << (*it++);
    while (it != theShapes.end()) {
      pd << ", " << (*it++);
    }
  }
  pd << "], " << theTolerance << ")";

  SetErrorCode(GEOM_OK);
  return aWire;
}

//=============================================================================
/*!
 *  MakeFace
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeFace (Handle(GEOM_Object) theWire,
                                                          const bool isPlanarWanted)
{
  SetErrorCode(GEOM_KO);

  if (theWire.IsNull()) return NULL;

  //Add a new Face object
  Handle(GEOM_Object) aFace = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Shape function for creation of a face from a wire
  Handle(GEOM_Function) aFunction =
    aFace->AddFunction(GEOMImpl_ShapeDriver::GetID(), FACE_WIRE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ShapeDriver::GetID()) return NULL;

  GEOMImpl_IShapes aCI (aFunction);

  Handle(GEOM_Function) aRefWire = theWire->GetLastFunction();

  if (aRefWire.IsNull()) return NULL;

  aCI.SetBase(aRefWire);
  aCI.SetIsPlanar(isPlanarWanted);

  //Compute the Face value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Shape driver failed to compute a face");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aFace << " = MakeFace("
    << theWire << ", " << (int)isPlanarWanted << ")";

  SetErrorCode(GEOM_OK);
  return aFace;
}

//=============================================================================
/*!
 *  MakeFaceWires
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeFaceWires
                             (std::list<Handle(GEOM_Object)> theShapes,
                              const bool isPlanarWanted)
{
  SetErrorCode(GEOM_KO);

  //Add a new object
  Handle(GEOM_Object) aShape = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new function
  Handle(GEOM_Function) aFunction =
    aShape->AddFunction(GEOMImpl_ShapeDriver::GetID(), FACE_WIRES);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ShapeDriver::GetID()) return NULL;

  GEOMImpl_IShapes aCI (aFunction);

  Handle(TColStd_HSequenceOfTransient) aShapesSeq = new TColStd_HSequenceOfTransient;

  // Shapes
  std::list<Handle(GEOM_Object)>::iterator it = theShapes.begin();
  for (; it != theShapes.end(); it++) {
    Handle(GEOM_Function) aRefSh = (*it)->GetLastFunction();
    if (aRefSh.IsNull()) {
      SetErrorCode("NULL argument shape for the face construction");
      return NULL;
    }
    aShapesSeq->Append(aRefSh);
  }
  aCI.SetShapes(aShapesSeq);

  aCI.SetIsPlanar(isPlanarWanted);

  //Compute the shape
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Shape driver failed");
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
  pd << aShape << " = MakeFaceWires([";

  // Shapes
  it = theShapes.begin();
  if (it != theShapes.end()) {
    pd << (*it++);
    while (it != theShapes.end()) {
      pd << ", " << (*it++);
    }
  }
  pd << "], " << (int)isPlanarWanted << ")";

  SetErrorCode(GEOM_OK);
  return aShape;
}

//=============================================================================
/*!
 *  MakeShell
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeShell
                             (std::list<Handle(GEOM_Object)> theShapes)
{
  return MakeShape(theShapes, GEOM_SHELL, SHELL_FACES, "MakeShell");
}

//=============================================================================
/*!
 *  MakeSolidShells
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeSolidShells
                             (std::list<Handle(GEOM_Object)> theShapes)
{
  return MakeShape(theShapes, GEOM_SOLID, SOLID_SHELLS, "MakeSolid");
}

//=============================================================================
/*!
 *  MakeCompound
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeCompound
                             (std::list<Handle(GEOM_Object)> theShapes)
{
  return MakeShape(theShapes, GEOM_COMPOUND, COMPOUND_SHAPES, "MakeCompound");
}

//=============================================================================
/*!
 *  MakeShape
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeShape
                             (std::list<Handle(GEOM_Object)>      theShapes,
                              const Standard_Integer         theObjectType,
                              const Standard_Integer         theFunctionType,
                              const TCollection_AsciiString& theMethodName)
{
  SetErrorCode(GEOM_KO);

  //Add a new object
  Handle(GEOM_Object) aShape = GetEngine()->AddObject(GetDocID(), theObjectType);

  //Add a new function
  Handle(GEOM_Function) aFunction =
    aShape->AddFunction(GEOMImpl_ShapeDriver::GetID(), theFunctionType);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ShapeDriver::GetID()) return NULL;

  GEOMImpl_IShapes aCI (aFunction);

  Handle(TColStd_HSequenceOfTransient) aShapesSeq = new TColStd_HSequenceOfTransient;

  // Shapes
  std::list<Handle(GEOM_Object)>::iterator it = theShapes.begin();
  for (; it != theShapes.end(); it++) {
    Handle(GEOM_Function) aRefSh = (*it)->GetLastFunction();
    if (aRefSh.IsNull()) {
      SetErrorCode("NULL argument shape for the shape construction");
      return NULL;
    }
    aShapesSeq->Append(aRefSh);
  }
  aCI.SetShapes(aShapesSeq);

  //Compute the shape
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Shape driver failed");
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
  pd << aShape << " = " << theMethodName.ToCString() << "([";

  // Shapes
  it = theShapes.begin();
  if (it != theShapes.end()) {
    pd << (*it++);
    while (it != theShapes.end()) {
      pd << ", " << (*it++);
    }
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aShape;
}

//=============================================================================
/*!
 *  MakeGlueFaces
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeGlueFaces
                                                (Handle(GEOM_Object) theShape,
                                                 const Standard_Real theTolerance,
                                                 const Standard_Boolean doKeepNonSolids)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;

  //Add a new Glued object
  Handle(GEOM_Object) aGlued = GetEngine()->AddObject(GetDocID(), GEOM_GLUED);

  //Add a new Glue function
  Handle(GEOM_Function) aFunction;
  aFunction = aGlued->AddFunction(GEOMImpl_GlueDriver::GetID(), GLUE_FACES);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_GlueDriver::GetID()) return NULL;

  GEOMImpl_IGlue aCI (aFunction);

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  aCI.SetBase(aRefShape);
  aCI.SetTolerance(theTolerance);
  aCI.SetKeepNonSolids(doKeepNonSolids);

  //Compute the sub-shape value
  Standard_Boolean isWarning = Standard_False;
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Shape driver failed to glue faces");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    // to provide warning
    if (!aFunction->GetValue().IsNull()) {
      isWarning = Standard_True;
    } else {
      return NULL;
    }
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aGlued << " = MakeGlueFaces("
    << theShape << ", " << theTolerance << ")";

  // to provide warning
  if (!isWarning) SetErrorCode(GEOM_OK);
  return aGlued;
}

//=============================================================================
/*!
 *  GetGlueFaces
 */
//=============================================================================
/*
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::GetGlueFaces
                                                (Handle(GEOM_Object) theShape,
                                                 const Standard_Real theTolerance)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;
  TopoDS_Shape aShape = theShape->GetValue();
  if (aShape.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aSeq = new TColStd_HSequenceOfTransient;

  Standard_Integer iErr;
  TopoDS_Shape aS;
  GEOMAlgo_Gluer1 aGluer;
  GEOMAlgo_ListIteratorOfListOfCoupleOfShapes aItCS;
  GEOMAlgo_CoupleOfShapes aCS;
  GEOMAlgo_ListOfCoupleOfShapes aLCS;

  //aGluer = new GEOMAlgo_Gluer1;
  aGluer.SetShape(aShape);
  aGluer.SetTolerance(theTolerance);
  aGluer.Perform();
  iErr = aGluer.ErrorStatus();
  if (iErr) return NULL;

  TopTools_ListOfShape listShape;
  const GEOMAlgo_ListOfCoupleOfShapes& aLCSG = aGluer.GluedFaces();
  // Access to faces
  aItCS.Initialize(aLCSG);
  for (; aItCS.More(); aItCS.Next()) {
    const GEOMAlgo_CoupleOfShapes& aCSG = aItCS.Value();
    listShape.Append(aCSG.Shape1());
  }

  TopTools_ListIteratorOfListOfShape itSub (listShape);
  TCollection_AsciiString anAsciiList, anEntry;
  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape, anIndices);
  Handle(TColStd_HArray1OfInteger) anArray;
  Handle(GEOM_Object) anObj;
  for (int index = 1; itSub.More(); itSub.Next(), ++index) {
    TopoDS_Shape aValue = itSub.Value();
    anArray = new TColStd_HArray1OfInteger(1,1);
    anArray->SetValue(1, anIndices.FindIndex(aValue));
    anObj = GetEngine()->AddSubShape(theShape, anArray);
    if (!anObj.IsNull()) {
      aSeq->Append(anObj);

      // for python command
      TDF_Tool::Entry(anObj->GetEntry(), anEntry);
      anAsciiList += anEntry;
      anAsciiList += ",";
    }
  }

  //Make a Python command
  if(anAsciiList.Length()>0)
    anAsciiList.Trunc(anAsciiList.Length() - 1);
  Handle(GEOM_Function) aFunction = theShape->GetLastFunction();
    GEOM::TPythonDump pd (aFunction, true);
  pd << "[" << anAsciiList.ToCString();
  pd << "] = GetGlueFaces(" << theShape << ", " << theTolerance << ")";

  SetErrorCode(GEOM_OK);

  return aSeq;
}
*/

//=============================================================================
/*!
 *  MakeGlueFacesByList
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeGlueFacesByList
                                                (Handle(GEOM_Object) theShape,
                                                 const Standard_Real theTolerance,
						 std::list<Handle(GEOM_Object)> theFaces,
                                                 const Standard_Boolean doKeepNonSolids,
                                                 const Standard_Boolean doGlueAllEdges)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;

  //Add a new Glued object
  Handle(GEOM_Object) aGlued = GetEngine()->AddObject(GetDocID(), GEOM_GLUED);

  //Add a new Glue function
  Handle(GEOM_Function) aFunction;
  aFunction = aGlued->AddFunction(GEOMImpl_GlueDriver::GetID(), GLUE_FACES_BY_LIST);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_GlueDriver::GetID()) return NULL;

  GEOMImpl_IGlue aCI (aFunction);

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  aCI.SetBase(aRefShape);
  aCI.SetTolerance(theTolerance);
  aCI.SetKeepNonSolids(doKeepNonSolids);
  aCI.SetGlueAllEdges(doGlueAllEdges);

  Handle(TColStd_HSequenceOfTransient) aFaces = new TColStd_HSequenceOfTransient;
  std::list<Handle(GEOM_Object)>::iterator it = theFaces.begin();
  for (; it != theFaces.end(); it++) {
    Handle(GEOM_Function) aRefSh = (*it)->GetLastFunction();
    if (aRefSh.IsNull()) {
      SetErrorCode("NULL argument shape for the shape construction");
      return NULL;
    }
    aFaces->Append(aRefSh);
  }
  aCI.SetFaces(aFaces);

  //Compute the sub-shape value
  Standard_Boolean isWarning = Standard_False;
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Shape driver failed to glue faces");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    // to provide warning
    if (!aFunction->GetValue().IsNull()) {
      isWarning = Standard_True;
    } else {
      return NULL;
    }
  }

  //Make a Python command
  
  GEOM::TPythonDump pd(aFunction);
  pd << aGlued << " = MakeGlueFacesByList("
     << theShape << ", " << theTolerance << ", [";
  // Faces
  it = theFaces.begin();
  if (it != theFaces.end()) {
    pd << (*it++);
    while (it != theFaces.end()) {
      pd << ", " << (*it++);
    }
  }
  pd << "], " << (bool)doKeepNonSolids << ", " << (bool)doGlueAllEdges << ")";

  // to provide warning
  if (!isWarning) SetErrorCode(GEOM_OK);
  return aGlued;
}

//=============================================================================
/*!
 *  MakeGlueEdges
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeGlueEdges
                                                (Handle(GEOM_Object) theShape,
                                                 const Standard_Real theTolerance)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;

  //Add a new Glued object
  Handle(GEOM_Object) aGlued = GetEngine()->AddObject(GetDocID(), GEOM_GLUED);

  //Add a new Glue function
  Handle(GEOM_Function) aFunction;
  aFunction = aGlued->AddFunction(GEOMImpl_GlueDriver::GetID(), GLUE_EDGES);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_GlueDriver::GetID()) return NULL;

  GEOMImpl_IGlue aCI (aFunction);

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  aCI.SetBase(aRefShape);
  aCI.SetTolerance(theTolerance);
  aCI.SetKeepNonSolids(true);

  //Compute the sub-shape value
  Standard_Boolean isWarning = Standard_False;
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Shape driver failed to glue edges");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    // to provide warning
    if (!aFunction->GetValue().IsNull()) {
      isWarning = Standard_True;
    } else {
      return NULL;
    }
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aGlued << " = MakeGlueEdges("
    << theShape << ", " << theTolerance << ")";

  // to provide warning
  if (!isWarning) SetErrorCode(GEOM_OK);
  return aGlued;
}

//=============================================================================
/*!
 *  GetGlueShapes
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::GetGlueShapes
                                                (Handle(GEOM_Object)    theShape,
                                                 const Standard_Real    theTolerance,
                                                 const TopAbs_ShapeEnum theType)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;
  TopoDS_Shape aShape = theShape->GetValue();
  if (aShape.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aSeq = new TColStd_HSequenceOfTransient;

  GEOMAlgo_GlueDetector aGluer;
  aGluer.SetArgument(aShape);
  aGluer.SetTolerance(theTolerance);
  aGluer.Perform();
  Standard_Integer iErr = aGluer.ErrorStatus();
  if (iErr) return NULL;

  TCollection_AsciiString anAsciiList, anEntry;
  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape, anIndices);
  Handle(TColStd_HArray1OfInteger) anArray;
  Handle(GEOM_Object) anObj;

  TopTools_ListOfShape listOnePerSet;

  const TopTools_DataMapOfShapeListOfShape& aImages = aGluer.Images();
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItDMSLS (aImages);
  for (int index = 1; aItDMSLS.More(); aItDMSLS.Next(), ++index) {
    // some key shape
    //const TopoDS_Shape& aSkey = aItDMSLS.Key();  

    // list of shapes of the argument that can be glued
    const TopTools_ListOfShape& aLSD = aItDMSLS.Value(); 

    //listShape.Append(aLSD.First());
    TopoDS_Shape aValue = aLSD.First();

    if (aValue.ShapeType() == theType) {
      listOnePerSet.Append(aValue);
    }
  }

  // for stable order of returned entities
  GEOMImpl_IShapesOperations::SortShapes(listOnePerSet, Standard_False);

  TopTools_ListIteratorOfListOfShape aListIt (listOnePerSet);
  for (; aListIt.More(); aListIt.Next()) {
    TopoDS_Shape aValue = aListIt.Value();
    anArray = new TColStd_HArray1OfInteger(1,1);
    anArray->SetValue(1, anIndices.FindIndex(aValue));
    anObj = GetEngine()->AddSubShape(theShape, anArray);
    if (!anObj.IsNull()) {
      aSeq->Append(anObj);

      // for python command
      TDF_Tool::Entry(anObj->GetEntry(), anEntry);
      anAsciiList += anEntry;
      anAsciiList += ",";
    }
  }

  // Make a Python command
  if (anAsciiList.Length() > 0) {
    anAsciiList.Trunc(anAsciiList.Length() - 1);
    Handle(GEOM_Function) aFunction = theShape->GetLastFunction();
    GEOM::TPythonDump pd (aFunction, /*append=*/true);
    pd << "[" << anAsciiList.ToCString();
    if (theType == TopAbs_FACE)
      pd << "] = GetGlueFaces(" << theShape << ", " << theTolerance << ")";
    else if (theType == TopAbs_EDGE)
      pd << "] = GetGlueEdges(" << theShape << ", " << theTolerance << ")";
  }

  SetErrorCode(GEOM_OK);

  return aSeq;
}

//=============================================================================
/*!
 *  MakeGlueEdgesByList
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::MakeGlueEdgesByList
                                                (Handle(GEOM_Object) theShape,
                                                 const Standard_Real theTolerance,
                                                 std::list<Handle(GEOM_Object)> theEdges)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;

  //Add a new Glued object
  Handle(GEOM_Object) aGlued = GetEngine()->AddObject(GetDocID(), GEOM_GLUED);

  //Add a new Glue function
  Handle(GEOM_Function) aFunction;
  aFunction = aGlued->AddFunction(GEOMImpl_GlueDriver::GetID(), GLUE_EDGES_BY_LIST);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_GlueDriver::GetID()) return NULL;

  GEOMImpl_IGlue aCI (aFunction);

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  aCI.SetBase(aRefShape);
  aCI.SetTolerance(theTolerance);
  aCI.SetKeepNonSolids(true);

  Handle(TColStd_HSequenceOfTransient) anEdges = new TColStd_HSequenceOfTransient;
  std::list<Handle(GEOM_Object)>::iterator it = theEdges.begin();
  for (; it != theEdges.end(); it++) {
    Handle(GEOM_Function) aRefSh = (*it)->GetLastFunction();
    if (aRefSh.IsNull()) {
      SetErrorCode("NULL argument shape for the shape construction");
      return NULL;
    }
    anEdges->Append(aRefSh);
  }
  aCI.SetFaces(anEdges);

  //Compute the sub-shape value
  Standard_Boolean isWarning = Standard_False;
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Shape driver failed to glue edges");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    // to provide warning
    if (!aFunction->GetValue().IsNull()) {
      isWarning = Standard_True;
    } else {
      return NULL;
    }
  }

  //Make a Python command

  GEOM::TPythonDump pd (aFunction);
  pd << aGlued << " = MakeGlueEdgesByList("
     << theShape << ", " << theTolerance << ", [";
  // Edges
  it = theEdges.begin();
  if (it != theEdges.end()) {
    pd << (*it++);
    while (it != theEdges.end()) {
      pd << ", " << (*it++);
    }
  }
  pd << "])";


  // to provide warning
  if (!isWarning) SetErrorCode(GEOM_OK);
  return aGlued;
}

//=============================================================================
/*!
 *  GetExistingSubObjects
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::GetExistingSubObjects
                                          (Handle(GEOM_Object)    theShape,
                                           const Standard_Boolean theGroupsOnly)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;

  Handle(GEOM_Function) aMainShape = theShape->GetLastFunction();
  if (aMainShape.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aSeq = new TColStd_HSequenceOfTransient;
  SetErrorCode(GEOM_NOT_FOUND_ANY);

  if (!aMainShape->HasSubShapeReferences()) return aSeq;
  const TDataStd_ListOfExtendedString& aListEntries = aMainShape->GetSubShapeReferences();
  if (aListEntries.IsEmpty()) return aSeq;

  SetErrorCode(GEOM_KO);

  TCollection_AsciiString anAsciiList;

  TDataStd_ListIteratorOfListOfExtendedString anIt (aListEntries);
  for (; anIt.More(); anIt.Next()) {
    TCollection_ExtendedString anEntry = anIt.Value();
    Standard_Integer aStrLen = anEntry.LengthOfCString();
    char* anEntryStr = new char[aStrLen];
    anEntry.ToUTF8CString(anEntryStr);
    Handle(GEOM_Object) anObj = GetEngine()->GetObject(GetDocID(), anEntryStr, false);
    if (!anObj.IsNull()) {
      if (!theGroupsOnly || anObj->GetType() == GEOM_GROUP) {
        aSeq->Append(anObj);

        // for python command
        anAsciiList += anEntryStr;
        anAsciiList += ",";
      }
    }
    delete [] anEntryStr;
  }

  if (aSeq->Length() == 0) {
    SetErrorCode(GEOM_NOT_FOUND_ANY);
    return aSeq;
  }

  //Make a Python command
  anAsciiList.Trunc(anAsciiList.Length() - 1);

  GEOM::TPythonDump pd (aMainShape, /*append=*/true);
  pd << "[" << anAsciiList.ToCString();
  pd << "] = GetExistingSubObjects(";
  pd << theShape << ", " << (bool)theGroupsOnly << ")";

  SetErrorCode(GEOM_OK);

  return aSeq;
}

//=============================================================================
/*!
 *  MakeExplode
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::MakeExplode
                                          (Handle(GEOM_Object)    theShape,
                                           const Standard_Integer theShapeType,
                                           const Standard_Boolean isSorted,
                                           const ExplodeType      theExplodeType)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;
  TopoDS_Shape aShape = theShape->GetValue();
  if (aShape.IsNull()) return NULL;

  Handle(GEOM_Function) aMainShape = theShape->GetLastFunction();

  Handle(TColStd_HSequenceOfTransient) aSeq = new TColStd_HSequenceOfTransient;
  Handle(GEOM_Object) anObj;
  TopTools_MapOfShape mapShape;
  TopTools_ListOfShape listShape;

  if (aShape.ShapeType() == TopAbs_COMPOUND &&
      (TopAbs_ShapeEnum(theShapeType) == TopAbs_SHAPE ||
       TopAbs_ShapeEnum(theShapeType) == TopAbs_COMPSOLID ||
       TopAbs_ShapeEnum(theShapeType) == TopAbs_COMPOUND))
  {
    TopoDS_Iterator It (aShape, Standard_True, Standard_True);
    for (; It.More(); It.Next()) {
      if (mapShape.Add(It.Value())) {
        if (TopAbs_ShapeEnum(theShapeType) == TopAbs_SHAPE ||
            TopAbs_ShapeEnum(theShapeType) == It.Value().ShapeType()) {
          listShape.Append(It.Value());
        }
      }
    }
  }
  else if (theExplodeType != EXPLODE_NEW_EXCLUDE_MAIN || aShape.ShapeType() != theShapeType) // issue 0021079
  {
    TopExp_Explorer exp (aShape, TopAbs_ShapeEnum(theShapeType));
    for (; exp.More(); exp.Next())
      if (mapShape.Add(exp.Current()))
	listShape.Append(exp.Current());
  }

  if (listShape.IsEmpty()) {
    //SetErrorCode("The given shape has no sub-shapes of the requested type");
	SetErrorCode(GEOM_NOT_FOUND_ANY); // NPAL18017
    return aSeq;
  }

  if (isSorted) {
    bool isOldSorting = false;
    if (theExplodeType == EXPLODE_OLD_INCLUDE_MAIN)
      isOldSorting = true;
    SortShapes(listShape, isOldSorting);
  }

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape, anIndices);
  Handle(TColStd_HArray1OfInteger) anArray;

  TopTools_ListIteratorOfListOfShape itSub (listShape);
  TCollection_AsciiString anAsciiList, anEntry;
  for (int index = 1; itSub.More(); itSub.Next(), ++index)
  {
    TopoDS_Shape aValue = itSub.Value();
    anArray = new TColStd_HArray1OfInteger(1,1);
    anArray->SetValue(1, anIndices.FindIndex(aValue));

    //anObj = GetEngine()->AddSubShape(theShape, anArray);
    {
      anObj = GetEngine()->AddObject(GetDocID(), GEOM_SUBSHAPE);
      Handle(GEOM_Function) aFunction = anObj->AddFunction(GEOM_Object::GetSubShapeID(), 1);
      if (aFunction.IsNull()) return aSeq;

      GEOM_ISubShape aSSI (aFunction);
      aSSI.SetMainShape(aMainShape);
      aSSI.SetIndices(anArray);

      // Set function value directly, as we know it.
      // Usage of Solver here would lead to significant loss of time,
      // because GEOM_SubShapeDriver will build TopTools_IndexedMapOfShape
      // on the main shape for each being calculated sub-shape separately.
      aFunction->SetValue(aValue);

      // Put this subshape in the list of subshapes of theMainShape
      aMainShape->AddSubShapeReference(aFunction);
    }

    if (!anObj.IsNull()) {
      aSeq->Append(anObj);

      // for python command
      TDF_Tool::Entry(anObj->GetEntry(), anEntry);
      anAsciiList += anEntry;
      anAsciiList += ",";
    }
  }

  //Make a Python command
  anAsciiList.Trunc(anAsciiList.Length() - 1);

  GEOM::TPythonDump pd (aMainShape, /*append=*/true);
  pd << "[" << anAsciiList.ToCString() << "] = ";
  switch (theExplodeType) {
  case EXPLODE_NEW_EXCLUDE_MAIN:
    pd << "ExtractShapes(" << theShape << ", "
       << TopAbs_ShapeEnum(theShapeType) << ", " << (isSorted ? "True" : "False") << ")";
    break;
  case EXPLODE_NEW_INCLUDE_MAIN:
    pd << "SubShapeAll" << (isSorted ? "SortedCentres(" : "(")
       << theShape << ", " << TopAbs_ShapeEnum(theShapeType) << ")";
    break;
  case EXPLODE_OLD_INCLUDE_MAIN:
    pd << "SubShapeAll" << (isSorted ? "Sorted(" : "(")
       << theShape << ", " << TopAbs_ShapeEnum(theShapeType) << ")";
    break;
  default: ;
  }
  SetErrorCode(GEOM_OK);

  return aSeq;
}

//=============================================================================
/*!
 *  SubShapeAllIDs
 */
//=============================================================================
Handle(TColStd_HSequenceOfInteger) GEOMImpl_IShapesOperations::SubShapeAllIDs
                                          (Handle(GEOM_Object)    theShape,
                                           const Standard_Integer theShapeType,
                                           const Standard_Boolean isSorted,
                                           const ExplodeType      theExplodeType)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;
  TopoDS_Shape aShape = theShape->GetValue();
  if (aShape.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfInteger) aSeq = new TColStd_HSequenceOfInteger;
  TopTools_MapOfShape mapShape;
  TopTools_ListOfShape listShape;

  if (aShape.ShapeType() == TopAbs_COMPOUND &&
      (TopAbs_ShapeEnum(theShapeType) == TopAbs_SHAPE ||
       TopAbs_ShapeEnum(theShapeType) == TopAbs_COMPSOLID ||
       TopAbs_ShapeEnum(theShapeType) == TopAbs_COMPOUND))
  {
    TopoDS_Iterator It (aShape, Standard_True, Standard_True);
    for (; It.More(); It.Next()) {
      if (mapShape.Add(It.Value())) {
        if (TopAbs_ShapeEnum(theShapeType) == TopAbs_SHAPE ||
            TopAbs_ShapeEnum(theShapeType) == It.Value().ShapeType()) {
          listShape.Append(It.Value());
        }
      }
    }
  }
  else if (theExplodeType != EXPLODE_NEW_EXCLUDE_MAIN || aShape.ShapeType() != theShapeType) // issue 0021079
  {
    TopExp_Explorer exp (aShape, TopAbs_ShapeEnum(theShapeType));
    for (; exp.More(); exp.Next())
      if (mapShape.Add(exp.Current()))
	listShape.Append(exp.Current());
  }

  if (listShape.IsEmpty()) {
    //SetErrorCode("The given shape has no sub-shapes of the requested type");
    SetErrorCode(GEOM_NOT_FOUND_ANY); // NPAL18017
    return aSeq;
  }

  if (isSorted) {
    bool isOldSorting = false;
    if (theExplodeType == EXPLODE_OLD_INCLUDE_MAIN)
      isOldSorting = true;
    SortShapes(listShape, isOldSorting);
  }

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape, anIndices);
  Handle(TColStd_HArray1OfInteger) anArray;

  TopTools_ListIteratorOfListOfShape itSub (listShape);
  for (int index = 1; itSub.More(); itSub.Next(), ++index) {
    TopoDS_Shape aValue = itSub.Value();
    aSeq->Append(anIndices.FindIndex(aValue));
  }

  Handle(GEOM_Function) aFunction = theShape->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump pd (aFunction, /*append=*/true);
  pd << "listSubShapeIDs = SubShapeAll";
  switch (theExplodeType) {
  case EXPLODE_NEW_EXCLUDE_MAIN:
    break;
  case EXPLODE_NEW_INCLUDE_MAIN:
    pd << (isSorted ? "SortedCentresIDs(" : "IDs(")
       << theShape << ", " << TopAbs_ShapeEnum(theShapeType) << ")";
    break;
  case EXPLODE_OLD_INCLUDE_MAIN:
    pd << (isSorted ? "SortedIDs(" : "IDs(")
       << theShape << ", " << TopAbs_ShapeEnum(theShapeType) << ")";
    break;
  default: ;
  }

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *  GetSubShape
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::GetSubShape
                                          (Handle(GEOM_Object)    theMainShape,
                                           const Standard_Integer theID)
{
  SetErrorCode(GEOM_KO);

  if (theMainShape.IsNull()) return NULL;

  Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
  anArray->SetValue(1, theID);
  Handle(GEOM_Object) anObj = GetEngine()->AddSubShape(theMainShape, anArray,true);
  if (anObj.IsNull()) {
    SetErrorCode("Can not get a sub-shape with the given ID");
    return NULL;
  }

  Handle(GEOM_Function) aFunction = anObj->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction) << anObj << " = GetSubShape("
                               << theMainShape << ", [" << theID << "])";

  SetErrorCode(GEOM_OK);
  return anObj;
}

//=============================================================================
/*!
 *  MakeSubShapes
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::MakeSubShapes
                                (Handle(GEOM_Object)              theMainShape,
                                 Handle(TColStd_HArray1OfInteger) theIndices)
{
  SetErrorCode(GEOM_KO);

  Handle(TColStd_HSequenceOfTransient) aSeq = new TColStd_HSequenceOfTransient;

  if (!theIndices->Length()) {
    SetErrorCode(GEOM_NOT_FOUND_ANY);
    return aSeq;
  }

  if (theMainShape.IsNull()) return NULL;
  TopoDS_Shape aShape = theMainShape->GetValue();
  if (aShape.IsNull()) return NULL;

  Handle(GEOM_Function) aMainShape = theMainShape->GetLastFunction();

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape, anIndices);

  Handle(TColStd_HArray1OfInteger) anArray;
  Handle(GEOM_Object) anObj;

  TCollection_AsciiString anAsciiList, anEntry;
  Standard_Integer i, low = theIndices->Lower(), up = theIndices->Upper();
  for (i = low; i <= up; i++) {
    int id = theIndices->Value(i);
    if (1 <= id && id <= anIndices.Extent()) {
      TopoDS_Shape aValue = anIndices.FindKey(id);
      anArray = new TColStd_HArray1OfInteger(1,1);
      anArray->SetValue(1, id);

      anObj = GetEngine()->AddObject(GetDocID(), GEOM_SUBSHAPE);
      if (!anObj.IsNull()) {
        Handle(GEOM_Function) aFunction = anObj->AddFunction(GEOM_Object::GetSubShapeID(), 1);
        if (aFunction.IsNull()) return aSeq;

        GEOM_ISubShape aSSI (aFunction);
        aSSI.SetMainShape(aMainShape);
        aSSI.SetIndices(anArray);

        // Set function value directly, as we know it.
        // Usage of Solver here would lead to significant loss of time,
        // because GEOM_SubShapeDriver will build TopTools_IndexedMapOfShape
        // on the main shape for each being calculated sub-shape separately.
        aFunction->SetValue(aValue);

        // Put this subshape in the list of subshapes of theMainShape
        aMainShape->AddSubShapeReference(aFunction);

        aSeq->Append(anObj);

        // for python command
        TDF_Tool::Entry(anObj->GetEntry(), anEntry);
        anAsciiList += anEntry;
        anAsciiList += ",";
      }
    }
  }

  //Make a Python command
  anAsciiList.Trunc(anAsciiList.Length() - 1);

  GEOM::TPythonDump pd (aMainShape, /*append=*/true);
  pd << "[" << anAsciiList.ToCString() << "] = SubShapes("
     << theMainShape << ", [" ;
  for (i = low; i <= up - 1; i++) {
    pd << theIndices->Value(i) << ", ";
  }
  pd << theIndices->Value(up) << "])";

  SetErrorCode(GEOM_OK);

  return aSeq;
}

//=============================================================================
/*!
 *  GetSubShapeIndex
 */
//=============================================================================
Standard_Integer GEOMImpl_IShapesOperations::GetSubShapeIndex (Handle(GEOM_Object) theMainShape,
                                                               Handle(GEOM_Object) theSubShape)
{
  SetErrorCode(GEOM_KO);

  TopoDS_Shape aMainShape = theMainShape->GetValue();
  TopoDS_Shape aSubShape = theSubShape->GetValue();

  if (aMainShape.IsNull() || aSubShape.IsNull()) return -1;

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aMainShape, anIndices);
  if (anIndices.Contains(aSubShape)) {
    SetErrorCode(GEOM_OK);
    return anIndices.FindIndex(aSubShape);
  }

  return -1;
}

//=============================================================================
/*!
 *  GetTopologyIndex
 */
//=============================================================================
Standard_Integer GEOMImpl_IShapesOperations::GetTopologyIndex (Handle(GEOM_Object) theMainShape,
                                                               Handle(GEOM_Object) theSubShape)
{
  SetErrorCode(GEOM_OK);

  TopoDS_Shape aMainShape = theMainShape->GetValue();
  TopoDS_Shape aSubShape = theSubShape->GetValue();

  if (aMainShape.IsNull() || aSubShape.IsNull()) {
    SetErrorCode("Null argument shape given");
    return -1;
  }

  int index = 1;
  if (aSubShape.ShapeType() == TopAbs_COMPOUND) {
    TopoDS_Iterator it;
    TopTools_ListOfShape CL;
    CL.Append(aMainShape);
    TopTools_ListIteratorOfListOfShape itC;
    for (itC.Initialize(CL); itC.More(); itC.Next()) {
      for (it.Initialize(itC.Value()); it.More(); it.Next()) {
	if (it.Value().ShapeType() == TopAbs_COMPOUND) {
	  if (it.Value().IsSame(aSubShape))
	    return index;
	  else
	    index++;
	  CL.Append(it.Value());
	}
      }
    }
  } else {
    TopExp_Explorer anExp (aMainShape, aSubShape.ShapeType());
    TopTools_MapOfShape M;
    for (; anExp.More(); anExp.Next()) {
      if (M.Add(anExp.Current())) {
	if (anExp.Current().IsSame(aSubShape))
	  return index;
	index++;
      }
    }
  }

  SetErrorCode("The sub-shape does not belong to the main shape");
  return -1;
}

//=============================================================================
/*!
 *  GetShapeTypeString
 */
//=============================================================================
TCollection_AsciiString GEOMImpl_IShapesOperations::GetShapeTypeString (Handle(GEOM_Object) theShape)
{
  SetErrorCode(GEOM_KO);

  TCollection_AsciiString aTypeName ("Null Shape");

  TopoDS_Shape aShape = theShape->GetValue();
  if (aShape.IsNull())
    return aTypeName;

  switch (aShape.ShapeType() )
  {
  case TopAbs_COMPOUND:
    aTypeName = "Compound";
    break;
  case  TopAbs_COMPSOLID:
    aTypeName = "Compound Solid";
    break;
  case TopAbs_SOLID:
    aTypeName = "Solid";
    break;
  case TopAbs_SHELL:
    aTypeName = "Shell";
    break;
  case TopAbs_FACE:
    {
      BRepAdaptor_Surface surf (TopoDS::Face(aShape));
      if (surf.GetType() == GeomAbs_Plane)
	aTypeName = "Plane";
      else if (surf.GetType() == GeomAbs_Cylinder)
	aTypeName = "Cylindrical Face";
      else if (surf.GetType() == GeomAbs_Sphere)
	aTypeName = "Spherical Face";
      else if (surf.GetType() == GeomAbs_Torus)
	aTypeName = "Toroidal Face";
      else if (surf.GetType() == GeomAbs_Cone)
	aTypeName = "Conical Face";
      else
	aTypeName = "GEOM::FACE";
    }
    break;
  case TopAbs_WIRE:
    aTypeName = "Wire";
    break;
  case TopAbs_EDGE:
    {
      BRepAdaptor_Curve curv (TopoDS::Edge(aShape));
      if (curv.GetType() == GeomAbs_Line) {
	if ((Abs(curv.FirstParameter()) >= 1E6) ||
            (Abs(curv.LastParameter()) >= 1E6))
          aTypeName = "Line";
	else
	  aTypeName = "Edge" ;
      } else if (curv.GetType() == GeomAbs_Circle) {
	if (curv.IsClosed())
          aTypeName = "Circle";
	else
          aTypeName = "Arc";
      } else {
        aTypeName = "Edge";
      }
    }
    break;
  case TopAbs_VERTEX:
    aTypeName = "Vertex";
    break;
  case TopAbs_SHAPE:
    aTypeName = "Shape";
    break;
  default:
    aTypeName = "Shape of unknown type";
  }

  return aTypeName;
}

//=============================================================================
/*!
 *  NumberOfSubShapes
 */
//=============================================================================
Standard_Integer GEOMImpl_IShapesOperations::NumberOfSubShapes
                                          (Handle(GEOM_Object)    theShape,
                                           const Standard_Integer theShapeType)
{
  SetErrorCode(GEOM_KO);
  Standard_Integer nbShapes = 0;

  if (theShape.IsNull()) return -1;
  TopoDS_Shape aShape = theShape->GetValue();
  if (aShape.IsNull()) return -1;

  /*
  TopTools_MapOfShape mapShape;

  if (aShape.ShapeType() == TopAbs_COMPOUND &&
      (TopAbs_ShapeEnum(theShapeType) == TopAbs_SHAPE ||
       TopAbs_ShapeEnum(theShapeType) == TopAbs_COMPSOLID ||
       TopAbs_ShapeEnum(theShapeType) == TopAbs_COMPOUND)) {
    TopoDS_Iterator It (aShape, Standard_True, Standard_True);
    for (; It.More(); It.Next()) {
      if (mapShape.Add(It.Value())) {
        if (TopAbs_ShapeEnum(theShapeType) == TopAbs_SHAPE ||
            TopAbs_ShapeEnum(theShapeType) == It.Value().ShapeType()) {
          nbShapes++;
        }
      }
    }
  } else {
    TopExp_Explorer exp (aShape, TopAbs_ShapeEnum(theShapeType));
    for (; exp.More(); exp.Next())
      if (mapShape.Add(exp.Current()))
	nbShapes++;
  }
  */

  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    int iType, nbTypes [TopAbs_SHAPE];
    for (iType = 0; iType < TopAbs_SHAPE; ++iType)
      nbTypes[iType] = 0;
    nbTypes[aShape.ShapeType()]++;

    TopTools_MapOfShape aMapOfShape;
    aMapOfShape.Add(aShape);
    TopTools_ListOfShape aListOfShape;
    aListOfShape.Append(aShape);

    TopTools_ListIteratorOfListOfShape itL (aListOfShape);
    for (; itL.More(); itL.Next()) {
      TopoDS_Iterator it (itL.Value());
      for (; it.More(); it.Next()) {
        TopoDS_Shape s = it.Value();
        if (aMapOfShape.Add(s)) {
          aListOfShape.Append(s);
          nbTypes[s.ShapeType()]++;
        }
      }
    }

    if (TopAbs_ShapeEnum(theShapeType) == TopAbs_SHAPE)
      nbShapes = aMapOfShape.Extent();
    else
      nbShapes = nbTypes[theShapeType];
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return -1;
  }

  SetErrorCode(GEOM_OK);
  return nbShapes;
}

//=============================================================================
/*!
 *  ReverseShape
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::ReverseShape(Handle(GEOM_Object) theShape)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;

  //Add a new reversed object
  Handle(GEOM_Object) aReversed = GetEngine()->AddObject(GetDocID(), theShape->GetType());

  //Add a new Revese function
  Handle(GEOM_Function) aFunction;
  aFunction = aReversed->AddFunction(GEOMImpl_ShapeDriver::GetID(), REVERSE_ORIENTATION);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ShapeDriver::GetID()) return NULL;

  GEOMImpl_IShapes aSI (aFunction);

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  aSI.SetBase(aRefShape);

  //Compute the sub-shape value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Shape driver failed to reverse shape");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aReversed
    << " = ChangeOrientation(" << theShape << ")";

  SetErrorCode(GEOM_OK);
  return aReversed;
}

//=============================================================================
/*!
 *  GetFreeFacesIDs
 */
//=============================================================================
Handle(TColStd_HSequenceOfInteger) GEOMImpl_IShapesOperations::GetFreeFacesIDs
                                                 (Handle(GEOM_Object) theShape)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;
  TopoDS_Shape aShape = theShape->GetValue();
  if (aShape.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfInteger) aSeq = new TColStd_HSequenceOfInteger;

  TopTools_IndexedDataMapOfShapeListOfShape mapFaceBlocks;
  GEOMImpl_Block6Explorer::MapShapesAndAncestors
    (aShape, TopAbs_FACE, TopAbs_SOLID, mapFaceBlocks);

  Standard_Integer ind = 1, nbFaces = mapFaceBlocks.Extent();

  if (nbFaces == 0) {
    SetErrorCode("The given shape has no faces");
    return aSeq;
  }

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape, anIndices);

  Standard_Integer id;
  for (; ind <= nbFaces; ind++) {
    if (mapFaceBlocks.FindFromIndex(ind).Extent() != 2) {
      id = anIndices.FindIndex(mapFaceBlocks.FindKey(ind));
      aSeq->Append(id);
    }
  }

  //The explode doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction = theShape->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << "listFreeFacesIDs = GetFreeFacesIDs(" << theShape << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=======================================================================
//function : GetSharedShapes
//purpose  :
//=======================================================================

Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::GetSharedShapes
                                                (Handle(GEOM_Object)    theShape1,
                                                 Handle(GEOM_Object)    theShape2,
                                                 const Standard_Integer theShapeType)
{
  SetErrorCode(GEOM_KO);

  if (theShape1.IsNull() || theShape2.IsNull()) return NULL;

  TopoDS_Shape aShape1 = theShape1->GetValue();
  TopoDS_Shape aShape2 = theShape2->GetValue();

  if (aShape1.IsNull() || aShape2.IsNull()) return NULL;

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape1, anIndices);
  Handle(TColStd_HArray1OfInteger) anArray;

  TopTools_IndexedMapOfShape mapShape1;
  TopExp::MapShapes(aShape1, TopAbs_ShapeEnum(theShapeType), mapShape1);

  Handle(GEOM_Object) anObj;
  Handle(TColStd_HSequenceOfTransient) aSeq = new TColStd_HSequenceOfTransient;
  TCollection_AsciiString anAsciiList, anEntry;

  TopTools_MapOfShape mapShape2;
  TopExp_Explorer exp (aShape2, TopAbs_ShapeEnum(theShapeType));
  for (; exp.More(); exp.Next()) {
    TopoDS_Shape aSS = exp.Current();
    if (mapShape2.Add(aSS) && mapShape1.Contains(aSS)) {
      anArray = new TColStd_HArray1OfInteger(1,1);
      anArray->SetValue(1, anIndices.FindIndex(aSS));
      anObj = GetEngine()->AddSubShape(theShape1, anArray);
      aSeq->Append(anObj);

      // for python command
      TDF_Tool::Entry(anObj->GetEntry(), anEntry);
      anAsciiList += anEntry;
      anAsciiList += ",";
    }
  }

  if (aSeq->IsEmpty()) {
    SetErrorCode("The given shapes have no shared sub-shapes of the requested type");
    return aSeq;
  }

  //Make a Python command
  anAsciiList.Trunc(anAsciiList.Length() - 1);

  Handle(GEOM_Function) aFunction = anObj->GetLastFunction();

  GEOM::TPythonDump(aFunction) << "[" << anAsciiList.ToCString()
    << "] = GetSharedShapes(" << theShape1 << ", "
      << theShape2 << ", " << TopAbs_ShapeEnum(theShapeType) << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=======================================================================
//function : GetSharedShapes
//purpose  :
//=======================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::GetSharedShapes
                                     (std::list<Handle(GEOM_Object)> theShapes,
                                      const Standard_Integer         theShapeType)
{
  SetErrorCode(GEOM_KO);

  int aLen = theShapes.size();
  if (aLen < 1) return NULL;

  int ind = 1;
  std::list<Handle(GEOM_Object)>::iterator it = theShapes.begin();

  Handle(GEOM_Object) aMainObj = (*it++);
  Handle(GEOM_Function) aMainShape = aMainObj->GetLastFunction();
  if (aMainShape.IsNull()) {
    SetErrorCode("NULL shape for GetSharedShapes");
    return NULL;
  }

  TopoDS_Shape aShape1 = aMainShape->GetValue();
  if (aShape1.IsNull()) return NULL;

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape1, anIndices);

  TopTools_IndexedMapOfShape mapSelected;
  TopExp::MapShapes(aShape1, TopAbs_ShapeEnum(theShapeType), mapSelected);

  // Find shared shapes
  BRep_Builder B;
  TopoDS_Compound aCurrSelection;

  for (; it != theShapes.end(); it++, ind++) {
    Handle(GEOM_Function) aRefShape = (*it)->GetLastFunction();
    if (aRefShape.IsNull()) {
      SetErrorCode("NULL shape for GetSharedShapes");
      return NULL;
    }

    TopoDS_Compound aCompound;
    B.MakeCompound(aCompound);

    TopoDS_Shape aShape2 = aRefShape->GetValue();
    if (aShape2.IsNull()) return NULL;

    TopTools_MapOfShape mapShape2;
    TopExp_Explorer exp (aShape2, TopAbs_ShapeEnum(theShapeType));
    for (; exp.More(); exp.Next()) {
      TopoDS_Shape aSS = exp.Current();
      if (mapShape2.Add(aSS) && mapSelected.Contains(aSS)) {
        B.Add(aCompound, aSS);
      }
    }

    mapSelected.Clear();
    TopExp::MapShapes(aCompound, TopAbs_ShapeEnum(theShapeType), mapSelected);
    aCurrSelection = aCompound;
  }

  // Create GEOM_Object for each found shared shape (collected in aCurrSelection)
  Handle(GEOM_Object) anObj;
  Handle(TColStd_HArray1OfInteger) anArray;
  Handle(TColStd_HSequenceOfTransient) aSeq = new TColStd_HSequenceOfTransient;
  TCollection_AsciiString anAsciiList, anEntry;

  TopoDS_Iterator itSel (aCurrSelection, Standard_True, Standard_True);
  for (; itSel.More(); itSel.Next()) {
    anArray = new TColStd_HArray1OfInteger(1,1);
    anArray->SetValue(1, anIndices.FindIndex(itSel.Value()));
    anObj = GetEngine()->AddSubShape(aMainObj, anArray);
    aSeq->Append(anObj);

    // for python command
    TDF_Tool::Entry(anObj->GetEntry(), anEntry);
    anAsciiList += anEntry;
    anAsciiList += ",";
  }

  if (aSeq->IsEmpty()) {
    SetErrorCode("The given shapes have no shared sub-shapes of the requested type");
    return aSeq;
  }

  // Make a Python command
  anAsciiList.Trunc(anAsciiList.Length() - 1);

  GEOM::TPythonDump pd (aMainShape, /*append=*/true);
  pd << "[" << anAsciiList.ToCString()
     << "] = GetSharedShapesMulti([";

  it = theShapes.begin();
  pd << (*it++);
  while (it != theShapes.end()) {
    pd << ", " << (*it++);
  }

  pd << "], " << TopAbs_ShapeEnum(theShapeType) << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *
 */
//=============================================================================
static GEOM::TPythonDump& operator<< (GEOM::TPythonDump&   theDump,
                                      const GEOMAlgo_State theState)
{
  switch (theState) {
  case GEOMAlgo_ST_IN:
    theDump << "GEOM.ST_IN";
    break;
  case GEOMAlgo_ST_OUT:
    theDump << "GEOM.ST_OUT";
    break;
  case GEOMAlgo_ST_ON:
    theDump << "GEOM.ST_ON";
    break;
  case GEOMAlgo_ST_ONIN:
    theDump << "GEOM.ST_ONIN";
    break;
  case GEOMAlgo_ST_ONOUT:
    theDump << "GEOM.ST_ONOUT";
    break;
  default:
    theDump << "GEOM.ST_UNKNOWN";
    break;
  }
  return theDump;
}

//=======================================================================
//function : checkTypeShapesOn
/*!
 * \brief Checks if theShapeType parameter of GetShapesOnXXX() is OK
 * \param theShapeType - the shape type to check
 * \retval bool  - result of the check
 */
//=======================================================================

bool GEOMImpl_IShapesOperations::checkTypeShapesOn(const Standard_Integer theShapeType)
{
  if (theShapeType != TopAbs_VERTEX &&
      theShapeType != TopAbs_EDGE &&
      theShapeType != TopAbs_FACE &&
      theShapeType != TopAbs_SOLID) {
    SetErrorCode("Only solids, vertices, edges or faces can be found by this method");
    return false;
  }
  return true;
}

//=======================================================================
//function : makePlane
  /*!
   * \brief Creates Geom_Plane
    * \param theAx1 - shape object defining plane parameters
    * \retval Handle(Geom_Surface) - resulting surface
   */
//=======================================================================

Handle(Geom_Surface) GEOMImpl_IShapesOperations::makePlane(const TopoDS_Shape& anAx1)
{
  if (anAx1.ShapeType() != TopAbs_EDGE) return NULL;
  TopoDS_Edge anEdge = TopoDS::Edge(anAx1);
  TopoDS_Vertex V1, V2;
  TopExp::Vertices(anEdge, V1, V2, Standard_True);
  if (V1.IsNull() || V2.IsNull()) {
    SetErrorCode("Bad edge given for the plane normal vector");
    return NULL;
  }
  gp_Pnt aLoc = BRep_Tool::Pnt(V1);
  gp_Vec aVec (aLoc, BRep_Tool::Pnt(V2));
  if (aVec.Magnitude() < Precision::Confusion()) {
    SetErrorCode("Vector with null magnitude given");
    return NULL;
  }
  return new Geom_Plane(aLoc, aVec);
}

//=======================================================================
//function : makeCylinder
  /*!
   * \brief Creates Geom_CylindricalSurface
    * \param theAx1 - edge defining cylinder axis
    * \param theRadius - cylinder radius
    * \retval Handle(Geom_Surface) - resulting surface
   */
//=======================================================================

Handle(Geom_Surface) GEOMImpl_IShapesOperations::makeCylinder(const TopoDS_Shape& anAxis,
                                                              const Standard_Real theRadius)
{
  //Axis of the cylinder
  if (anAxis.ShapeType() != TopAbs_EDGE) {
    SetErrorCode("Not an edge given for the axis");
    return NULL;
  }
  TopoDS_Edge anEdge = TopoDS::Edge(anAxis);
  TopoDS_Vertex V1, V2;
  TopExp::Vertices(anEdge, V1, V2, Standard_True);
  if (V1.IsNull() || V2.IsNull()) {
    SetErrorCode("Bad edge given for the axis");
    return NULL;
  }
  gp_Pnt aLoc = BRep_Tool::Pnt(V1);
  gp_Vec aVec (aLoc, BRep_Tool::Pnt(V2));
  if (aVec.Magnitude() < Precision::Confusion()) {
    SetErrorCode("Vector with null magnitude given");
    return NULL;
  }

  gp_Ax3 anAx3 (aLoc, aVec);
  return new Geom_CylindricalSurface(anAx3, theRadius);
}


//=======================================================================
//function : getShapesOnBoxIDs
  /*!
   * \brief Find IDs of subshapes complying with given status about surface
    * \param theBox - the box to check state of subshapes against
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
//=======================================================================

Handle(TColStd_HSequenceOfInteger)
  GEOMImpl_IShapesOperations::getShapesOnBoxIDs(const Handle(GEOM_Object)& theBox,
						const Handle(GEOM_Object)& theShape,
						const Standard_Integer theShapeType,
						GEOMAlgo_State theState)
{
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs;

  TopoDS_Shape aBox = theBox->GetValue();
  TopoDS_Shape aShape = theShape->GetValue();

  // Check presence of triangulation, build if need
  if (!CheckTriangulation(aShape)) {
    SetErrorCode("Cannot build triangulation on the shape");
    return aSeqOfIDs;
  }

  // Call algo
  GEOMAlgo_FinderShapeOn2 aFinder;
  Standard_Real aTol = 0.0001; // default value

  Handle(GEOMAlgo_ClsfBox) aClsfBox = new GEOMAlgo_ClsfBox;
  aClsfBox->SetBox(aBox);

  aFinder.SetShape(aShape);
  aFinder.SetTolerance(aTol);
  aFinder.SetClsf(aClsfBox);
  aFinder.SetShapeType( (TopAbs_ShapeEnum)theShapeType );
  aFinder.SetState(theState);
  aFinder.Perform();

  // Interprete results
  Standard_Integer iErr = aFinder.ErrorStatus();
  // the detailed description of error codes is in GEOMAlgo_FinderShapeOn1.cxx
  if (iErr) {
    MESSAGE(" iErr : " << iErr);
    TCollection_AsciiString aMsg (" iErr : ");
    aMsg += TCollection_AsciiString(iErr);
    SetErrorCode(aMsg);
    return aSeqOfIDs;
  }
  Standard_Integer iWrn = aFinder.WarningStatus();
  // the detailed description of warning codes is in GEOMAlgo_FinderShapeOn1.cxx
  if (iWrn) {
    MESSAGE(" *** iWrn : " << iWrn);
  }

  const TopTools_ListOfShape& listSS = aFinder.Shapes(); // the result

  if (listSS.Extent() < 1) {
    //SetErrorCode("Not a single sub-shape of the requested type found on the given surface");
    SetErrorCode(GEOM_NOT_FOUND_ANY); // NPAL18017
    return aSeqOfIDs;
  }

  // Fill sequence of object IDs
  aSeqOfIDs = new TColStd_HSequenceOfInteger;

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape, anIndices);

  TopTools_ListIteratorOfListOfShape itSub (listSS);
  for (int index = 1; itSub.More(); itSub.Next(), ++index) {
    int id = anIndices.FindIndex(itSub.Value());
    aSeqOfIDs->Append(id);
  }

  return aSeqOfIDs;
}


//=======================================================================
//function : GetShapesOnBoxIDs
/*!
   * \brief Find subshapes complying with given status about surface
    * \param theBox - the box to check state of subshapes against
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
 */
//=======================================================================

Handle(TColStd_HSequenceOfInteger)
    GEOMImpl_IShapesOperations::GetShapesOnBoxIDs(const Handle(GEOM_Object)& theBox,
						  const Handle(GEOM_Object)& theShape,
						  const Standard_Integer theShapeType,
						  GEOMAlgo_State theState)
{
  // Find subshapes ids
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs =
    getShapesOnBoxIDs (theBox, theShape, theShapeType, theState);
  if ( aSeqOfIDs.IsNull()  || aSeqOfIDs->Length() == 0 )
    return NULL;

  // The GetShapesOnBox() doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction = GEOM::GetCreatedLast(theShape,theBox)->GetLastFunction();

  // Make a Python command
  GEOM::TPythonDump(aFunction)
    << "listShapesOnBoxIDs = GetShapesOnBoxIDs("
    << theBox << ", "
    << theShape << ", "
    << TopAbs_ShapeEnum(theShapeType) << ", "
    << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeqOfIDs;
}

//=======================================================================
//function : GetShapesOnBox
/*!
   * \brief Find subshapes complying with given status about surface
    * \param theBox - the box to check state of subshapes against
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfTransient) - found subshapes
 */
//=======================================================================

Handle(TColStd_HSequenceOfTransient)
    GEOMImpl_IShapesOperations::GetShapesOnBox(const Handle(GEOM_Object)& theBox,
					       const Handle(GEOM_Object)&  theShape,
					       const Standard_Integer theShapeType,
					       GEOMAlgo_State theState)
{
  // Find subshapes ids
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs =
    getShapesOnBoxIDs (theBox, theShape, theShapeType, theState);
  if ( aSeqOfIDs.IsNull()  || aSeqOfIDs->Length() == 0 )
    return NULL;

  // Find objects by indices
  TCollection_AsciiString anAsciiList;
  Handle(TColStd_HSequenceOfTransient) aSeq;
  aSeq = getObjectsShapesOn( theShape, aSeqOfIDs, anAsciiList );
  if ( aSeq.IsNull() || aSeq->IsEmpty() )
    return NULL;

  // Make a Python command

  Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast( aSeq->Value( 1 ));
  Handle(GEOM_Function) aFunction = anObj->GetLastFunction();

  GEOM::TPythonDump(aFunction)
    << "[" << anAsciiList.ToCString() << "] = GetShapesOnBox("
    << theBox << ", "
    << theShape << ", "
    << TopAbs_ShapeEnum(theShapeType) << ", "
    << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}


//=======================================================================
//function : getShapesOnShapeIDs
/*!
 * \brief Find IDs of subshapes complying with given status about surface
 * \param theCheckShape - the shape to check state of subshapes against
 * \param theShape - the shape to explore
 * \param theShapeType - type of subshape of theShape
 * \param theState - required state
 * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
 */
//=======================================================================

Handle(TColStd_HSequenceOfInteger) 
  GEOMImpl_IShapesOperations::getShapesOnShapeIDs
                                 (const Handle(GEOM_Object)& theCheckShape,
                                  const Handle(GEOM_Object)& theShape,
                                  const Standard_Integer theShapeType,
                                  GEOMAlgo_State theState)
{
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs;

  TopoDS_Shape aCheckShape = theCheckShape->GetValue();
  TopoDS_Shape aShape = theShape->GetValue();
  TopTools_ListOfShape res;

  // Check presence of triangulation, build if need
  if (!CheckTriangulation(aShape)) {
    SetErrorCode("Cannot build triangulation on the shape");
    return aSeqOfIDs;
  }

  // Call algo
  GEOMAlgo_FinderShapeOn2 aFinder;
  Standard_Real aTol = 0.0001; // default value

  Handle(GEOMAlgo_ClsfSolid) aClsfSolid = new GEOMAlgo_ClsfSolid;
  aClsfSolid->SetShape(aCheckShape);

  aFinder.SetShape(aShape);
  aFinder.SetTolerance(aTol);
  aFinder.SetClsf(aClsfSolid);
  aFinder.SetShapeType( (TopAbs_ShapeEnum)theShapeType );
  aFinder.SetState(theState);
  aFinder.Perform();

  // Interprete results
  Standard_Integer iErr = aFinder.ErrorStatus();
  // the detailed description of error codes is in GEOMAlgo_FinderShapeOn1.cxx
  if (iErr) {
    if (iErr == 41) {
      SetErrorCode("theCheckShape must be a solid");
    }
    else {
      MESSAGE(" iErr : " << iErr);
      TCollection_AsciiString aMsg (" iErr : ");
      aMsg += TCollection_AsciiString(iErr);
      SetErrorCode(aMsg);
    }
    return aSeqOfIDs;
  }
  Standard_Integer iWrn = aFinder.WarningStatus();
  // the detailed description of warning codes is in GEOMAlgo_FinderShapeOn1.cxx
  if (iWrn) {
    MESSAGE(" *** iWrn : " << iWrn);
  }

  const TopTools_ListOfShape& listSS = aFinder.Shapes(); // the result

  if (listSS.Extent() < 1) {
    //SetErrorCode("Not a single sub-shape of the requested type found on the given surface");
    SetErrorCode(GEOM_NOT_FOUND_ANY); // NPAL18017
  }

  // Fill sequence of object IDs
  aSeqOfIDs = new TColStd_HSequenceOfInteger;

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape, anIndices);

  TopTools_ListIteratorOfListOfShape itSub (listSS);
  for (int index = 1; itSub.More(); itSub.Next(), ++index) {
    int id = anIndices.FindIndex(itSub.Value());
    aSeqOfIDs->Append(id);
  }

  return aSeqOfIDs;
}


//=======================================================================
//function : GetShapesOnShapeIDs
/*!
 * \brief Find subshapes complying with given status about surface
 * \param theCheckShape - the shape to check state of subshapes against
 * \param theShape - the shape to explore
 * \param theShapeType - type of subshape of theShape
 * \param theState - required state
 * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
 */
//=======================================================================

Handle(TColStd_HSequenceOfInteger)
    GEOMImpl_IShapesOperations::GetShapesOnShapeIDs
                            (const Handle(GEOM_Object)& theCheckShape,
                             const Handle(GEOM_Object)& theShape,
                             const Standard_Integer theShapeType,
                             GEOMAlgo_State theState)
{
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs =
    getShapesOnShapeIDs (theCheckShape, theShape, theShapeType, theState);

  if ( aSeqOfIDs.IsNull()  || aSeqOfIDs->Length() == 0 )
    return NULL;

  // The GetShapesOnShape() doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction =
    GEOM::GetCreatedLast(theShape,theCheckShape)->GetLastFunction();

  // Make a Python command
  GEOM::TPythonDump(aFunction)
    << "listShapesOnBoxIDs = GetShapesOnShapeIDs("
    << theCheckShape << ", "
    << theShape << ", "
    << TopAbs_ShapeEnum(theShapeType) << ", "
    << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeqOfIDs;
}


//=======================================================================
//function : GetShapesOnShape
/*!
 * \brief Find subshapes complying with given status about surface
 * \param theCheckShape - the shape to check state of subshapes against
 * \param theShape - the shape to explore
 * \param theShapeType - type of subshape of theShape
 * \param theState - required state
 * \retval Handle(TColStd_HSequenceOfTransient) - found subshapes
 */
//=======================================================================

Handle(TColStd_HSequenceOfTransient)
  GEOMImpl_IShapesOperations::GetShapesOnShape
                             (const Handle(GEOM_Object)& theCheckShape,
                              const Handle(GEOM_Object)&  theShape,
                              const Standard_Integer theShapeType,
                              GEOMAlgo_State theState)
{
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs =
    getShapesOnShapeIDs (theCheckShape, theShape, theShapeType, theState);
  if ( aSeqOfIDs.IsNull()  || aSeqOfIDs->Length() == 0 )
    return NULL;

  // Find objects by indices
  TCollection_AsciiString anAsciiList;
  Handle(TColStd_HSequenceOfTransient) aSeq;
  aSeq = getObjectsShapesOn( theShape, aSeqOfIDs, anAsciiList );

  if ( aSeq.IsNull() || aSeq->IsEmpty() )
    return NULL;

  // Make a Python command

  Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast( aSeq->Value( 1 ));
  Handle(GEOM_Function) aFunction = anObj->GetLastFunction();

  GEOM::TPythonDump(aFunction)
    << "[" << anAsciiList.ToCString() << "] = GetShapesOnShape("
    << theCheckShape << ", "
    << theShape << ", "
    << TopAbs_ShapeEnum(theShapeType) << ", "
    << theState << ")";


  SetErrorCode(GEOM_OK);
  return aSeq;
}


//=======================================================================
//function : GetShapesOnShapeAsCompound
//=======================================================================

Handle(GEOM_Object) GEOMImpl_IShapesOperations::GetShapesOnShapeAsCompound
                             (const Handle(GEOM_Object)& theCheckShape,
                              const Handle(GEOM_Object)&  theShape,
                              const Standard_Integer theShapeType,
                              GEOMAlgo_State theState)
{
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs =
    getShapesOnShapeIDs (theCheckShape, theShape, theShapeType, theState);

  if ( aSeqOfIDs.IsNull()  || aSeqOfIDs->Length() == 0 )
    return NULL;

  // Find objects by indices
  TCollection_AsciiString anAsciiList;
  Handle(TColStd_HSequenceOfTransient) aSeq;
  aSeq = getObjectsShapesOn( theShape, aSeqOfIDs, anAsciiList );

  if ( aSeq.IsNull() || aSeq->IsEmpty() )
    return NULL;

  TopoDS_Compound aCompound;
  BRep_Builder B;
  B.MakeCompound(aCompound);
  int i = 1;
  for(; i<=aSeq->Length(); i++) {
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(aSeq->Value(i));
    TopoDS_Shape aShape_i = anObj->GetValue();
    B.Add(aCompound,aShape_i);
  }

  //Add a new result object
  Handle(GEOM_Object) aRes = GetEngine()->AddObject(GetDocID(), GEOM_SHAPES_ON_SHAPE);
  Handle(GEOM_Function) aFunction =
    aRes->AddFunction(GEOMImpl_ShapeDriver::GetID(), SHAPES_ON_SHAPE);
  aFunction->SetValue(aCompound);

  GEOM::TPythonDump(aFunction)
    << aRes << " = GetShapesOnShapeAsCompound("
    << theCheckShape << ", "
    << theShape << ", "
    << TopAbs_ShapeEnum(theShapeType) << ", "
    << theState << ")";

  SetErrorCode(GEOM_OK);

  return aRes;
}


//=======================================================================
//function : getShapesOnSurfaceIDs
  /*!
   * \brief Find IDs of subshapes complying with given status about surface
    * \param theSurface - the surface to check state of subshapes against
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
//=======================================================================

Handle(TColStd_HSequenceOfInteger)
  GEOMImpl_IShapesOperations::getShapesOnSurfaceIDs(const Handle(Geom_Surface)& theSurface,
                                                    const TopoDS_Shape&         theShape,
                                                    TopAbs_ShapeEnum            theShapeType,
                                                    GEOMAlgo_State              theState)
{
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs;

  // Check presence of triangulation, build if need
  if (!CheckTriangulation(theShape)) {
    SetErrorCode("Cannot build triangulation on the shape");
    return aSeqOfIDs;
  }

  // BEGIN: Mantis issue 0020961: Error on a pipe T-Shape
  // Compute tolerance
  Standard_Real T, VertMax = -RealLast();
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    for (TopExp_Explorer ExV (theShape, TopAbs_VERTEX); ExV.More(); ExV.Next()) {
      TopoDS_Vertex Vertex = TopoDS::Vertex(ExV.Current());
      T = BRep_Tool::Tolerance(Vertex);
      if (T > VertMax)
        VertMax = T;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return aSeqOfIDs;
  }
  // END: Mantis issue 0020961

  // Call algo
  GEOMAlgo_FinderShapeOn1 aFinder;
  //Standard_Real aTol = 0.0001; // default value
  Standard_Real aTol = VertMax; // Mantis issue 0020961

  aFinder.SetShape(theShape);
  aFinder.SetTolerance(aTol);
  aFinder.SetSurface(theSurface);
  aFinder.SetShapeType(theShapeType);
  aFinder.SetState(theState);

  // Sets the minimal number of inner points for the faces that do not have own
  // inner points at all (for e.g. rectangular planar faces have just 2 triangles).
  // Default value=3
  aFinder.SetNbPntsMin(3);
  // Sets the maximal number of inner points for edges or faces.
  // It is usefull for the cases when this number is very big (e.g =2000) to improve
  // the performance. If this value =0, all inner points will be taken into account.
  // Default value=0
  aFinder.SetNbPntsMax(100);

  aFinder.Perform();

  // Interprete results
  Standard_Integer iErr = aFinder.ErrorStatus();
  // the detailed description of error codes is in GEOMAlgo_FinderShapeOn1.cxx
  if (iErr) {
    MESSAGE(" iErr : " << iErr);
    TCollection_AsciiString aMsg (" iErr : ");
    aMsg += TCollection_AsciiString(iErr);
    SetErrorCode(aMsg);
    return aSeqOfIDs;
  }
  Standard_Integer iWrn = aFinder.WarningStatus();
  // the detailed description of warning codes is in GEOMAlgo_FinderShapeOn1.cxx
  if (iWrn) {
    MESSAGE(" *** iWrn : " << iWrn);
  }

  const TopTools_ListOfShape& listSS = aFinder.Shapes(); // the result

  if (listSS.Extent() < 1) {
    //SetErrorCode("Not a single sub-shape of the requested type found on the given surface");
    SetErrorCode(GEOM_NOT_FOUND_ANY); // NPAL18017
    return aSeqOfIDs;
  }

  // Fill sequence of object IDs
  aSeqOfIDs = new TColStd_HSequenceOfInteger;

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(theShape, anIndices);

  TopTools_ListIteratorOfListOfShape itSub (listSS);
  for (int index = 1; itSub.More(); itSub.Next(), ++index) {
    int id = anIndices.FindIndex(itSub.Value());
    aSeqOfIDs->Append(id);
  }

  return aSeqOfIDs;
}

//=======================================================================
//function : getObjectsShapesOn
/*!
 * \brief Find shape objects and their entries by their ids
 * \param theShapeIDs - incoming shape ids
 * \param theShapeEntries - outgoing entries like "entry1, entry2, ..."
 * \retval Handle(TColStd_HSequenceOfTransient) - found shape objects
 */
//=======================================================================

Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::
 getObjectsShapesOn(const Handle(GEOM_Object)&                theShape,
                    const Handle(TColStd_HSequenceOfInteger)& theShapeIDs,
                    TCollection_AsciiString &                 theShapeEntries)
{
  Handle(TColStd_HSequenceOfTransient) aSeq;

  if ( !theShapeIDs.IsNull() && theShapeIDs->Length() > 0 )
  {
    aSeq = new TColStd_HSequenceOfTransient;
    Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
    TCollection_AsciiString anEntry;
    for ( int i = 1; i <= theShapeIDs->Length(); ++i )
    {
      anArray->SetValue(1, theShapeIDs->Value( i ));
      Handle(GEOM_Object) anObj = GetEngine()->AddSubShape(theShape, anArray);
      aSeq->Append( anObj );

      TDF_Tool::Entry(anObj->GetEntry(), anEntry);
      if ( i != 1 ) theShapeEntries += ",";
      theShapeEntries += anEntry;
    }
  }
  return aSeq;
}

//=======================================================================
//function : getShapesOnSurface
/*!
   * \brief Find subshapes complying with given status about surface
    * \param theSurface - the surface to check state of subshapes against
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theState - required state
    * \param theShapeEntries - outgoing entries like "entry1, entry2, ..."
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
 */
//=======================================================================

Handle(TColStd_HSequenceOfTransient)
    GEOMImpl_IShapesOperations::getShapesOnSurface(const Handle(Geom_Surface)& theSurface,
                                                   const Handle(GEOM_Object)&  theShape,
                                                   TopAbs_ShapeEnum            theShapeType,
                                                   GEOMAlgo_State              theState,
                                                   TCollection_AsciiString &   theShapeEntries)
{
  // Find subshapes ids
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs =
    getShapesOnSurfaceIDs (theSurface, theShape->GetValue(), theShapeType, theState);
  if ( aSeqOfIDs.IsNull()  || aSeqOfIDs->Length() == 0 )
    return NULL;

  return getObjectsShapesOn( theShape, aSeqOfIDs, theShapeEntries );
}

//=============================================================================
/*!
 *  GetShapesOnPlane
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::GetShapesOnPlane
                                        (const Handle(GEOM_Object)& theShape,
                                         const Standard_Integer     theShapeType,
                                         const Handle(GEOM_Object)& theAx1,
                                         const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || theAx1.IsNull()) return NULL;

  TopoDS_Shape aShape = theShape->GetValue();
  TopoDS_Shape anAx1  = theAx1->GetValue();

  if (aShape.IsNull() || anAx1.IsNull()) return NULL;

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( theShapeType ))
    return NULL;

  // Create plane
  Handle(Geom_Surface) aPlane = makePlane( anAx1 );
  if ( aPlane.IsNull() )
    return NULL;

  // Find objects
  TCollection_AsciiString anAsciiList;
  Handle(TColStd_HSequenceOfTransient) aSeq;
  aSeq = getShapesOnSurface( aPlane, theShape, aShapeType, theState, anAsciiList );
  if ( aSeq.IsNull() || aSeq->Length() == 0 )
    return NULL;

  // Make a Python command

  Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast( aSeq->Value( 1 ));
  Handle(GEOM_Function) aFunction = anObj->GetLastFunction();

  GEOM::TPythonDump(aFunction) << "[" << anAsciiList.ToCString()
    << "] = GetShapesOnPlane(" << theShape << ", "
      << aShapeType << ", " << theAx1 << ", " << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *  GetShapesOnPlaneWithLocation
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::GetShapesOnPlaneWithLocation
                                        (const Handle(GEOM_Object)& theShape,
                                         const Standard_Integer     theShapeType,
                                         const Handle(GEOM_Object)& theAx1,
					 const Handle(GEOM_Object)& thePnt,
                                         const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || theAx1.IsNull() || thePnt.IsNull()) return NULL;

  TopoDS_Shape aShape = theShape->GetValue();
  TopoDS_Shape anAx1  = theAx1->GetValue();
  TopoDS_Shape anPnt = thePnt->GetValue();

  if (aShape.IsNull() || anAx1.IsNull() || anPnt.IsNull()) return NULL;

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( theShapeType ))
    return NULL;

  // Create plane
  if ( anAx1.ShapeType() != TopAbs_EDGE || anPnt.ShapeType() != TopAbs_VERTEX ) return NULL;
  TopoDS_Vertex V1, V2, V3;
  TopoDS_Edge anEdge = TopoDS::Edge(anAx1);
  TopExp::Vertices(anEdge, V1, V2, Standard_True);

  if (V1.IsNull() || V2.IsNull()) {
    SetErrorCode("Bad edge given for the plane normal vector");
    return NULL;
  }
  V3 = TopoDS::Vertex(anPnt);

  if(V3.IsNull()) {
    SetErrorCode("Bad vertex given for the plane location");
      return NULL;
  }
  gp_Pnt aLoc = BRep_Tool::Pnt(V3);
  gp_Vec aVec(BRep_Tool::Pnt(V1),BRep_Tool::Pnt(V2));

  if (aVec.Magnitude() < Precision::Confusion()) {
     SetErrorCode("Vector with null magnitude given");
    return NULL;
  }
  Handle(Geom_Surface) aPlane = new Geom_Plane(aLoc, aVec);

  if ( aPlane.IsNull() )
    return NULL;

  // Find objects
  TCollection_AsciiString anAsciiList;
  Handle(TColStd_HSequenceOfTransient) aSeq;
  aSeq = getShapesOnSurface( aPlane, theShape, aShapeType, theState, anAsciiList );
  if ( aSeq.IsNull() || aSeq->Length() == 0 )
    return NULL;

  // Make a Python command

  Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast( aSeq->Value( 1 ));
  Handle(GEOM_Function) aFunction = anObj->GetLastFunction();

  GEOM::TPythonDump(aFunction) << "[" << anAsciiList.ToCString()
    << "] = GetShapesOnPlaneWithLocation(" << theShape << ", "
    << aShapeType << ", " << theAx1 << ", "<< thePnt <<", " << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *  GetShapesOnCylinder
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::GetShapesOnCylinder
                                          (const Handle(GEOM_Object)& theShape,
                                           const Standard_Integer     theShapeType,
                                           const Handle(GEOM_Object)& theAxis,
                                           const Standard_Real        theRadius,
                                           const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || theAxis.IsNull()) return NULL;

  TopoDS_Shape aShape = theShape->GetValue();
  TopoDS_Shape anAxis = theAxis->GetValue();

  if (aShape.IsNull() || anAxis.IsNull()) return NULL;

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( aShapeType ))
    return NULL;

  // Create a cylinder surface
  Handle(Geom_Surface) aCylinder = makeCylinder( anAxis, theRadius );
  if ( aCylinder.IsNull() )
    return NULL;

  // Find objects
  TCollection_AsciiString anAsciiList;
  Handle(TColStd_HSequenceOfTransient) aSeq;
  aSeq = getShapesOnSurface( aCylinder, theShape, aShapeType, theState, anAsciiList );
  if ( aSeq.IsNull() || aSeq->Length() == 0 )
    return NULL;

  // Make a Python command

  Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast( aSeq->Value( 1 ));
  Handle(GEOM_Function) aFunction = anObj->GetLastFunction();

  GEOM::TPythonDump(aFunction) << "[" << anAsciiList.ToCString()
    << "] = GetShapesOnCylinder(" << theShape << ", " << aShapeType
      << ", " << theAxis << ", " << theRadius << ", " << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *  GetShapesOnCylinderWithLocation
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::GetShapesOnCylinderWithLocation
                                          (const Handle(GEOM_Object)& theShape,
                                           const Standard_Integer     theShapeType,
                                           const Handle(GEOM_Object)& theAxis,
                                           const Handle(GEOM_Object)& thePnt,
                                           const Standard_Real        theRadius,
                                           const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || theAxis.IsNull() || thePnt.IsNull()) return NULL;

  TopoDS_Shape aShape = theShape->GetValue();
  TopoDS_Shape anAxis = theAxis->GetValue();
  TopoDS_Shape aPnt   = thePnt->GetValue();

  if (aShape.IsNull() || anAxis.IsNull() || aPnt.IsNull()) return NULL;

  if (aPnt.ShapeType() != TopAbs_VERTEX )
  {
    SetErrorCode("Bottom location point must be vertex");
    return NULL;
  }

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( aShapeType ))
    return NULL;

  // Create a cylinder surface
  Handle(Geom_Surface) aCylinder = makeCylinder( anAxis, theRadius );
  if ( aCylinder.IsNull() )
    return NULL;

  // translate the surface
  Handle(Geom_CylindricalSurface) aCylSurface =
    Handle(Geom_CylindricalSurface)::DownCast( aCylinder );
  if ( aCylSurface.IsNull() )
  {
    SetErrorCode("Unexpected surface type instead of Geom_CylindricalSurface");
    return NULL;
  }
  gp_Pnt fromLoc = aCylSurface->Cylinder().Location();
  gp_Pnt toLoc   = BRep_Tool::Pnt( TopoDS::Vertex( aPnt ));
  aCylinder->Translate( fromLoc, toLoc );

  // Find objects
  TCollection_AsciiString anAsciiList;
  Handle(TColStd_HSequenceOfTransient) aSeq;
  aSeq = getShapesOnSurface( aCylinder, theShape, aShapeType, theState, anAsciiList );
  if ( aSeq.IsNull() || aSeq->Length() == 0 )
    return NULL;

  // Make a Python command

  Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast( aSeq->Value( 1 ));
  Handle(GEOM_Function) aFunction = anObj->GetLastFunction();

  GEOM::TPythonDump(aFunction)
    << "[" << anAsciiList.ToCString()
    << "] = GetShapesOnCylinderWithLocation(" << theShape << ", " << aShapeType << ", "
    << theAxis << ", " << thePnt << ", " << theRadius << ", " << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *  GetShapesOnSphere
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IShapesOperations::GetShapesOnSphere
                                          (const Handle(GEOM_Object)& theShape,
                                           const Standard_Integer     theShapeType,
                                           const Handle(GEOM_Object)& theCenter,
                                           const Standard_Real        theRadius,
                                           const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || theCenter.IsNull()) return NULL;

  TopoDS_Shape aShape  = theShape->GetValue();
  TopoDS_Shape aCenter = theCenter->GetValue();

  if (aShape.IsNull() || aCenter.IsNull()) return NULL;

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( aShapeType ))
    return NULL;

  // Center of the sphere
  if (aCenter.ShapeType() != TopAbs_VERTEX) return NULL;
  gp_Pnt aLoc = BRep_Tool::Pnt(TopoDS::Vertex(aCenter));

  gp_Ax3 anAx3 (aLoc, gp::DZ());
  Handle(Geom_SphericalSurface) aSphere =
    new Geom_SphericalSurface(anAx3, theRadius);

  // Find objects
  TCollection_AsciiString anAsciiList;
  Handle(TColStd_HSequenceOfTransient) aSeq;
  aSeq = getShapesOnSurface( aSphere, theShape, aShapeType, theState, anAsciiList );
  if ( aSeq.IsNull() || aSeq->Length() == 0 )
    return NULL;

  // Make a Python command

  Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast( aSeq->Value( 1 ));
  Handle(GEOM_Function) aFunction = anObj->GetLastFunction();

  GEOM::TPythonDump(aFunction) << "[" << anAsciiList.ToCString()
    << "] = GetShapesOnSphere(" << theShape << ", " << aShapeType
      << ", " << theCenter << ", " << theRadius << ", " << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *  GetShapesOnPlaneIDs
 */
//=============================================================================
Handle(TColStd_HSequenceOfInteger) GEOMImpl_IShapesOperations::GetShapesOnPlaneIDs
                                        (const Handle(GEOM_Object)& theShape,
                                         const Standard_Integer     theShapeType,
                                         const Handle(GEOM_Object)& theAx1,
                                         const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || theAx1.IsNull()) return NULL;

  TopoDS_Shape aShape = theShape->GetValue();
  TopoDS_Shape anAx1  = theAx1->GetValue();

  if (aShape.IsNull() || anAx1.IsNull()) return NULL;

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( aShapeType ))
    return NULL;

  // Create plane
  Handle(Geom_Surface) aPlane = makePlane( anAx1 );
  if ( aPlane.IsNull() )
    return NULL;

  // Find object IDs
  Handle(TColStd_HSequenceOfInteger) aSeq;
  aSeq = getShapesOnSurfaceIDs( aPlane, aShape, aShapeType, theState );

  // The GetShapesOnPlaneIDs() doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction = GEOM::GetCreatedLast(theShape,theAx1)->GetLastFunction();

  // Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << "listShapesOnPlane = GetShapesOnPlaneIDs"
    << "(" << theShape << "," << aShapeType << "," << theAx1 << "," << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *  GetShapesOnPlaneWithLocationIDs
 */
//=============================================================================
Handle(TColStd_HSequenceOfInteger) GEOMImpl_IShapesOperations::GetShapesOnPlaneWithLocationIDs
                                        (const Handle(GEOM_Object)& theShape,
                                         const Standard_Integer     theShapeType,
                                         const Handle(GEOM_Object)& theAx1,
					 const Handle(GEOM_Object)& thePnt,
                                         const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || theAx1.IsNull() || thePnt.IsNull()) return NULL;

  TopoDS_Shape aShape = theShape->GetValue();
  TopoDS_Shape anAx1  = theAx1->GetValue();
  TopoDS_Shape anPnt  = thePnt->GetValue();

  if (aShape.IsNull() || anAx1.IsNull() || anPnt.IsNull()) return NULL;

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( aShapeType ))
    return NULL;

  // Create plane
  if (anAx1.ShapeType() != TopAbs_EDGE || anPnt.ShapeType() != TopAbs_VERTEX) return NULL;
  TopoDS_Edge anEdge = TopoDS::Edge(anAx1);
  TopoDS_Vertex V1, V2, V3;
  TopExp::Vertices(anEdge, V1, V2, Standard_True);
  if (V1.IsNull() || V2.IsNull()) {
    SetErrorCode("Bad edge given for the plane normal vector");
    return NULL;
  }
  V3 = TopoDS::Vertex(anPnt);
  if(V3.IsNull()) {
    SetErrorCode("Bad vertex given for the plane location");
      return NULL;
  }
  gp_Pnt aLoc = BRep_Tool::Pnt(V3);
  gp_Vec aVec(BRep_Tool::Pnt(V1),BRep_Tool::Pnt(V2));
  if (aVec.Magnitude() < Precision::Confusion()) {
    SetErrorCode("Vector with null magnitude given");
    return NULL;
  }

  Handle(Geom_Surface) aPlane = new Geom_Plane(aLoc, aVec);
  if ( aPlane.IsNull() )
    return NULL;

  // Find object IDs
  Handle(TColStd_HSequenceOfInteger) aSeq;
  aSeq = getShapesOnSurfaceIDs( aPlane, aShape, aShapeType, theState );

  // The GetShapesOnPlaneIDs() doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction = GEOM::GetCreatedLast(theShape,theAx1)->GetLastFunction();

  // Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << "listShapesOnPlane = GetShapesOnPlaneWithLocationIDs"
    << "(" << theShape << ", " << aShapeType << ", " << theAx1 << ", "<< thePnt << ", "  << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *  GetShapesOnCylinderIDs
 */
//=============================================================================
Handle(TColStd_HSequenceOfInteger) GEOMImpl_IShapesOperations::GetShapesOnCylinderIDs
                                          (const Handle(GEOM_Object)& theShape,
                                           const Standard_Integer     theShapeType,
                                           const Handle(GEOM_Object)& theAxis,
                                           const Standard_Real        theRadius,
                                           const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || theAxis.IsNull()) return NULL;

  TopoDS_Shape aShape = theShape->GetValue();
  TopoDS_Shape anAxis = theAxis->GetValue();

  if (aShape.IsNull() || anAxis.IsNull()) return NULL;

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( aShapeType ))
    return NULL;

  // Create a cylinder surface
  Handle(Geom_Surface) aCylinder = makeCylinder( anAxis, theRadius );
  if ( aCylinder.IsNull() )
    return NULL;

  // Find object IDs
  Handle(TColStd_HSequenceOfInteger) aSeq;
  aSeq = getShapesOnSurfaceIDs( aCylinder, aShape, aShapeType, theState );

  // The GetShapesOnCylinder() doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction = GEOM::GetCreatedLast(theShape,theAxis)->GetLastFunction();

  // Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << "listShapesOnCylinder = GetShapesOnCylinderIDs"
    << "(" << theShape << ", " << aShapeType << ", " << theAxis << ", "
    << theRadius << ", " << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *  GetShapesOnCylinderWithLocationIDs
 */
//=============================================================================
Handle(TColStd_HSequenceOfInteger) GEOMImpl_IShapesOperations::GetShapesOnCylinderWithLocationIDs
                                          (const Handle(GEOM_Object)& theShape,
                                           const Standard_Integer     theShapeType,
                                           const Handle(GEOM_Object)& theAxis,
                                           const Handle(GEOM_Object)& thePnt,
                                           const Standard_Real        theRadius,
                                           const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || theAxis.IsNull() || thePnt.IsNull()) return NULL;

  TopoDS_Shape aShape = theShape->GetValue();
  TopoDS_Shape anAxis = theAxis->GetValue();
  TopoDS_Shape aPnt   = thePnt->GetValue();

  if (aShape.IsNull() || anAxis.IsNull() || aPnt.IsNull()) return NULL;

  if (aPnt.ShapeType() != TopAbs_VERTEX )
  {
    SetErrorCode("Bottom location point must be vertex");
    return NULL;
  }

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( aShapeType ))
    return NULL;

  // Create a cylinder surface
  Handle(Geom_Surface) aCylinder = makeCylinder( anAxis, theRadius );
  if ( aCylinder.IsNull() )
    return NULL;

  // translate the surface
  Handle(Geom_CylindricalSurface) aCylSurface =
    Handle(Geom_CylindricalSurface)::DownCast( aCylinder );
  if ( aCylSurface.IsNull() )
  {
    SetErrorCode("Unexpected surface type instead of Geom_CylindricalSurface");
    return NULL;
  }
  gp_Pnt fromLoc = aCylSurface->Cylinder().Location();
  gp_Pnt toLoc   = BRep_Tool::Pnt( TopoDS::Vertex( aPnt ));
  aCylinder->Translate( fromLoc, toLoc );

  // Find object IDs
  Handle(TColStd_HSequenceOfInteger) aSeq;
  aSeq = getShapesOnSurfaceIDs( aCylinder, aShape, aShapeType, theState );

  // The GetShapesOnCylinder() doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction = 
    GEOM::GetCreatedLast(theShape, GEOM::GetCreatedLast(thePnt,theAxis))->GetLastFunction();

  // Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << "listShapesOnCylinder = GetShapesOnCylinderWithLocationIDs"
    << "(" << theShape << ", " << aShapeType << ", " << theAxis << ", "
    << thePnt << ", " << theRadius << ", " << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=============================================================================
/*!
 *  GetShapesOnSphereIDs
 */
//=============================================================================
Handle(TColStd_HSequenceOfInteger) GEOMImpl_IShapesOperations::GetShapesOnSphereIDs
                                          (const Handle(GEOM_Object)& theShape,
                                           const Standard_Integer     theShapeType,
                                           const Handle(GEOM_Object)& theCenter,
                                           const Standard_Real        theRadius,
                                           const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull() || theCenter.IsNull()) return NULL;

  TopoDS_Shape aShape  = theShape->GetValue();
  TopoDS_Shape aCenter = theCenter->GetValue();

  if (aShape.IsNull() || aCenter.IsNull()) return NULL;

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( aShapeType ))
    return NULL;

  // Center of the sphere
  if (aCenter.ShapeType() != TopAbs_VERTEX) return NULL;
  gp_Pnt aLoc = BRep_Tool::Pnt(TopoDS::Vertex(aCenter));

  gp_Ax3 anAx3 (aLoc, gp::DZ());
  Handle(Geom_SphericalSurface) aSphere =
    new Geom_SphericalSurface(anAx3, theRadius);

  // Find object IDs
  Handle(TColStd_HSequenceOfInteger) aSeq;
  aSeq = getShapesOnSurfaceIDs( aSphere, aShape, aShapeType, theState );

  // The GetShapesOnSphere() doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction = GEOM::GetCreatedLast(theShape,theCenter)->GetLastFunction();

  // Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << "listShapesOnCylinder = GetShapesOnCylinderIDs"
    << "(" << theShape << ", " << aShapeType << ", " << theCenter << ", "
    << theRadius << ", " << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=======================================================================
//function : getShapesOnQuadrangleIDs
  /*!
   * \brief Find IDs of subshapes complying with given status about quadrangle
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theTopLeftPoint - top left quadrangle corner
    * \param theTopRigthPoint - top right quadrangle corner
    * \param theBottomLeftPoint - bottom left quadrangle corner
    * \param theBottomRigthPoint - bottom right quadrangle corner
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
//=======================================================================

Handle(TColStd_HSequenceOfInteger)
  GEOMImpl_IShapesOperations::getShapesOnQuadrangleIDs (const Handle(GEOM_Object)& theShape,
                                                        const Standard_Integer     theShapeType,
                                                        const Handle(GEOM_Object)& theTopLeftPoint,
                                                        const Handle(GEOM_Object)& theTopRigthPoint,
                                                        const Handle(GEOM_Object)& theBottomLeftPoint,
                                                        const Handle(GEOM_Object)& theBottomRigthPoint,
                                                        const GEOMAlgo_State       theState)
{
  SetErrorCode(GEOM_KO);

  if ( theShape.IsNull() ||
       theTopLeftPoint.IsNull() ||
       theTopRigthPoint.IsNull() ||
       theBottomLeftPoint.IsNull() ||
       theBottomRigthPoint.IsNull() )
    return NULL;

  TopoDS_Shape aShape = theShape->GetValue();
  TopoDS_Shape aTL = theTopLeftPoint->GetValue();
  TopoDS_Shape aTR = theTopRigthPoint->GetValue();
  TopoDS_Shape aBL = theBottomLeftPoint->GetValue();
  TopoDS_Shape aBR = theBottomRigthPoint->GetValue();

  if (aShape.IsNull() ||
      aTL.IsNull() ||
      aTR.IsNull() ||
      aBL.IsNull() ||
      aBR.IsNull() ||
      aTL.ShapeType() != TopAbs_VERTEX ||
      aTR.ShapeType() != TopAbs_VERTEX ||
      aBL.ShapeType() != TopAbs_VERTEX ||
      aBR.ShapeType() != TopAbs_VERTEX )
    return NULL;

  TopAbs_ShapeEnum aShapeType = TopAbs_ShapeEnum(theShapeType);
  if ( !checkTypeShapesOn( aShapeType ))
    return NULL;

  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs;

  // Check presence of triangulation, build if need
  if (!CheckTriangulation(aShape)) {
    SetErrorCode("Cannot build triangulation on the shape");
    return aSeqOfIDs;
  }

  // Call algo
  gp_Pnt aPntTL = BRep_Tool::Pnt(TopoDS::Vertex(aTL));
  gp_Pnt aPntTR = BRep_Tool::Pnt(TopoDS::Vertex(aTR));
  gp_Pnt aPntBL = BRep_Tool::Pnt(TopoDS::Vertex(aBL));
  gp_Pnt aPntBR = BRep_Tool::Pnt(TopoDS::Vertex(aBR));

  GEOMAlgo_FinderShapeOnQuad aFinder( aPntTL, aPntTR, aPntBL, aPntBR );
  Standard_Real aTol = 0.0001; // default value

  aFinder.SetShape(aShape);
  aFinder.SetTolerance(aTol);
  //aFinder.SetSurface(theSurface);
  aFinder.SetShapeType(aShapeType);
  aFinder.SetState(theState);

  // Sets the minimal number of inner points for the faces that do not have own
  // inner points at all (for e.g. rectangular planar faces have just 2 triangles).
  // Default value=3
  aFinder.SetNbPntsMin(3);
  // Sets the maximal number of inner points for edges or faces.
  // It is usefull for the cases when this number is very big (e.g =2000) to improve
  // the performance. If this value =0, all inner points will be taken into account.
  // Default value=0
  aFinder.SetNbPntsMax(100);

  aFinder.Perform();

  // Interprete results
  Standard_Integer iErr = aFinder.ErrorStatus();
  // the detailed description of error codes is in GEOMAlgo_FinderShapeOn1.cxx
  if (iErr) {
    MESSAGE(" iErr : " << iErr);
    TCollection_AsciiString aMsg (" iErr : ");
    aMsg += TCollection_AsciiString(iErr);
    SetErrorCode(aMsg);
    return aSeqOfIDs;
  }
  Standard_Integer iWrn = aFinder.WarningStatus();
  // the detailed description of warning codes is in GEOMAlgo_FinderShapeOn1.cxx
  if (iWrn) {
    MESSAGE(" *** iWrn : " << iWrn);
  }

  const TopTools_ListOfShape& listSS = aFinder.Shapes(); // the result

  if (listSS.Extent() < 1) {
    //SetErrorCode("Not a single sub-shape of the requested type found on the given surface");
    SetErrorCode(GEOM_NOT_FOUND_ANY); // NPAL18017
    return aSeqOfIDs;
  }

  // Fill sequence of object IDs
  aSeqOfIDs = new TColStd_HSequenceOfInteger;

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape, anIndices);

  TopTools_ListIteratorOfListOfShape itSub (listSS);
  for (int index = 1; itSub.More(); itSub.Next(), ++index) {
    int id = anIndices.FindIndex(itSub.Value());
    aSeqOfIDs->Append(id);
  }
  return aSeqOfIDs;
}

//=======================================================================
//function : GetShapesOnQuadrangle
  /*!
   * \brief Find subshapes complying with given status about quadrangle
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theTopLeftPoint - top left quadrangle corner
    * \param theTopRigthPoint - top right quadrangle corner
    * \param theBottomLeftPoint - bottom left quadrangle corner
    * \param theBottomRigthPoint - bottom right quadrangle corner
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
//=======================================================================

Handle(TColStd_HSequenceOfTransient)
    GEOMImpl_IShapesOperations::GetShapesOnQuadrangle (const Handle(GEOM_Object)& theShape,
                                                       const Standard_Integer     theShapeType,
                                                       const Handle(GEOM_Object)& theTopLeftPoint,
                                                       const Handle(GEOM_Object)& theTopRigthPoint,
                                                       const Handle(GEOM_Object)& theBottomLeftPoint,
                                                       const Handle(GEOM_Object)& theBottomRigthPoint,
                                                       const GEOMAlgo_State       theState)
{
  // Find indices
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs =
    getShapesOnQuadrangleIDs( theShape,
                              theShapeType,
                              theTopLeftPoint,
                              theTopRigthPoint,
                              theBottomLeftPoint,
                              theBottomRigthPoint,
                              theState);
  if ( aSeqOfIDs.IsNull() || aSeqOfIDs->IsEmpty() )
    return NULL;

  // Find objects by indices
  TCollection_AsciiString anAsciiList;
  Handle(TColStd_HSequenceOfTransient) aSeq;
  aSeq = getObjectsShapesOn( theShape, aSeqOfIDs, anAsciiList );
  if ( aSeq.IsNull() || aSeq->IsEmpty() )
    return NULL;

  // Make a Python command

  Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast( aSeq->Value( 1 ));
  Handle(GEOM_Function) aFunction = anObj->GetLastFunction();

  GEOM::TPythonDump(aFunction)
    << "[" << anAsciiList.ToCString() << "] = GetShapesOnQuadrangle("
    << theShape << ", "
    << TopAbs_ShapeEnum(theShapeType) << ", "
    << theTopLeftPoint << ", "
    << theTopRigthPoint << ", "
    << theBottomLeftPoint << ", "
    << theBottomRigthPoint << ", "
    << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}

//=======================================================================
//function : GetShapesOnQuadrangleIDs
  /*!
   * \brief Find IDs of subshapes complying with given status about quadrangle
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theTopLeftPoint - top left quadrangle corner
    * \param theTopRigthPoint - top right quadrangle corner
    * \param theBottomLeftPoint - bottom left quadrangle corner
    * \param theBottomRigthPoint - bottom right quadrangle corner
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
//=======================================================================

Handle(TColStd_HSequenceOfInteger)
  GEOMImpl_IShapesOperations::GetShapesOnQuadrangleIDs (const Handle(GEOM_Object)& theShape,
                                                        const Standard_Integer     theShapeType,
                                                        const Handle(GEOM_Object)& theTopLeftPoint,
                                                        const Handle(GEOM_Object)& theTopRigthPoint,
                                                        const Handle(GEOM_Object)& theBottomLeftPoint,
                                                        const Handle(GEOM_Object)& theBottomRigthPoint,
                                                        const GEOMAlgo_State       theState)
{
  // Find indices
  Handle(TColStd_HSequenceOfInteger) aSeqOfIDs =
    getShapesOnQuadrangleIDs( theShape,
                              theShapeType,
                              theTopLeftPoint,
                              theTopRigthPoint,
                              theBottomLeftPoint,
                              theBottomRigthPoint,
                              theState);
  if ( aSeqOfIDs.IsNull() || aSeqOfIDs->IsEmpty() )
    return NULL;

  // Make a Python command

  // The GetShapesOnCylinder() doesn't change object so no new function is required.
  Handle(GEOM_Object) lastObj = GEOM::GetCreatedLast(theShape,theTopLeftPoint);
  lastObj = GEOM::GetCreatedLast(lastObj,theTopRigthPoint);
  lastObj = GEOM::GetCreatedLast(lastObj,theBottomRigthPoint);
  lastObj = GEOM::GetCreatedLast(lastObj,theBottomLeftPoint);
  Handle(GEOM_Function) aFunction = lastObj->GetLastFunction();

  GEOM::TPythonDump(aFunction, /*append=*/true)
    << "listShapesOnQuadrangle = GetShapesOnQuadrangleIDs("
    << theShape << ", "
    << TopAbs_ShapeEnum(theShapeType) << ", "
    << theTopLeftPoint << ", "
    << theTopRigthPoint << ", "
    << theBottomLeftPoint << ", "
    << theBottomRigthPoint << ", "
    << theState << ")";

  SetErrorCode(GEOM_OK);
  return aSeqOfIDs;
}


//=============================================================================
/*!
 *  GetInPlaceOfShape
 */
//=============================================================================
static bool GetInPlaceOfShape (const Handle(GEOM_Function)& theWhereFunction,
                               const TopTools_IndexedMapOfShape& theWhereIndices,
                               const TopoDS_Shape& theWhat,
                               TColStd_ListOfInteger& theModifiedList)
{
  if (theWhereFunction.IsNull() || theWhat.IsNull()) return false;

  if (theWhereIndices.Contains(theWhat)) {
    // entity was not changed by the operation
    Standard_Integer aWhatIndex = theWhereIndices.FindIndex(theWhat);
    theModifiedList.Append(aWhatIndex);
    return true;
  }

  // try to find in history
  TDF_Label aHistoryLabel = theWhereFunction->GetHistoryEntry(Standard_False);

  // search in history for all argument shapes
  Standard_Boolean isFound = Standard_False;
  Standard_Boolean isGood = Standard_False;

  TDF_LabelSequence aLabelSeq;
  theWhereFunction->GetDependency(aLabelSeq);
  Standard_Integer nbArg = aLabelSeq.Length();

  for (Standard_Integer iarg = 1; iarg <= nbArg && !isFound; iarg++) {

    TDF_Label anArgumentRefLabel = aLabelSeq.Value(iarg);

    Handle(GEOM_Object) anArgumentObject = GEOM_Object::GetReferencedObject(anArgumentRefLabel);
    TopoDS_Shape anArgumentShape = anArgumentObject->GetValue();

    TopTools_IndexedMapOfShape anArgumentIndices;
    TopExp::MapShapes(anArgumentShape, anArgumentIndices);

    if (anArgumentIndices.Contains(theWhat)) {
      isFound = Standard_True;
      Standard_Integer aWhatIndex = anArgumentIndices.FindIndex(theWhat);

      // Find corresponding label in history
      TDF_Label anArgumentHistoryLabel =
        theWhereFunction->GetArgumentHistoryEntry(anArgumentRefLabel, Standard_False);
      if (anArgumentHistoryLabel.IsNull()) {
        // Lost History of operation argument. Possibly, all its entities was removed.
        isGood = Standard_True;
      }
      else {
        TDF_Label aWhatHistoryLabel = anArgumentHistoryLabel.FindChild(aWhatIndex, Standard_False);

        if (aWhatHistoryLabel.IsNull()) {
          // Removed entity ? Compound ? Compsolid ? Shell ? Wire
          isGood = Standard_False;
        } else {
          Handle(TDataStd_IntegerArray) anIntegerArray;
          if (!aWhatHistoryLabel.FindAttribute(TDataStd_IntegerArray::GetID(), anIntegerArray)) {
            //Error: Empty modifications history for the sought shape.
            isGood = Standard_False;
          }
          else {
            isGood = Standard_True;
            Standard_Integer imod, aModifLen = anIntegerArray->Array()->Length();
            for (imod = 1; imod <= aModifLen; imod++) {
              theModifiedList.Append(anIntegerArray->Array()->Value(imod));
            }
          }
        }
      }
    }
  }

  isFound = isGood;

  if (!isFound) {
    // try compound/compsolid/shell/wire element by element
    bool isFoundAny = false;
    TopTools_MapOfShape mapShape;

    if (theWhat.ShapeType() == TopAbs_COMPOUND ||
        theWhat.ShapeType() == TopAbs_COMPSOLID) {
      // recursive processing of compound/compsolid
      TopoDS_Iterator anIt (theWhat, Standard_True, Standard_True);
      for (; anIt.More(); anIt.Next()) {
        if (mapShape.Add(anIt.Value())) {
          TopoDS_Shape curWhat = anIt.Value();
          isFoundAny = GetInPlaceOfShape(theWhereFunction, theWhereIndices, curWhat, theModifiedList);
          if (isFoundAny) isFound = Standard_True;
        }
      }
    }
    else if (theWhat.ShapeType() == TopAbs_SHELL) {
      // try to replace a shell by its faces images
      TopExp_Explorer anExp (theWhat, TopAbs_FACE);
      for (; anExp.More(); anExp.Next()) {
        if (mapShape.Add(anExp.Current())) {
          TopoDS_Shape curWhat = anExp.Current();
          isFoundAny = GetInPlaceOfShape(theWhereFunction, theWhereIndices, curWhat, theModifiedList);
          if (isFoundAny) isFound = Standard_True;
        }
      }
    }
    else if (theWhat.ShapeType() == TopAbs_WIRE) {
      // try to replace a wire by its edges images
      TopExp_Explorer anExp (theWhat, TopAbs_EDGE);
      for (; anExp.More(); anExp.Next()) {
        if (mapShape.Add(anExp.Current())) {
          TopoDS_Shape curWhat = anExp.Current();
          isFoundAny = GetInPlaceOfShape(theWhereFunction, theWhereIndices, curWhat, theModifiedList);
          if (isFoundAny) isFound = Standard_True;
        }
      }
    }
    else {
      // Removed entity
    }
  }

  return isFound;
}

//=============================================================================
/*!
 *  GetShapeProperties
 */
//=============================================================================

void GEOMImpl_IShapesOperations::GetShapeProperties( const TopoDS_Shape aShape, Standard_Real tab[],
                                                     gp_Pnt & aVertex )
{
  GProp_GProps theProps;
  gp_Pnt aCenterMass;
  //TopoDS_Shape aPntShape;
  Standard_Real aShapeSize;

  if    (aShape.ShapeType() == TopAbs_VERTEX) aCenterMass = BRep_Tool::Pnt( TopoDS::Vertex( aShape ) );
  else if (aShape.ShapeType() == TopAbs_EDGE) BRepGProp::LinearProperties(aShape,  theProps);
  else if (aShape.ShapeType() == TopAbs_FACE) BRepGProp::SurfaceProperties(aShape, theProps);
  else                                        BRepGProp::VolumeProperties(aShape,  theProps);

  if (aShape.ShapeType() == TopAbs_VERTEX)
    aShapeSize = 1;
  else {
    aCenterMass = theProps.CentreOfMass();
    aShapeSize  = theProps.Mass();
  }

  //aPntShape = BRepBuilderAPI_MakeVertex(aCenterMass).Shape();
  //aVertex   = BRep_Tool::Pnt( TopoDS::Vertex( aPntShape ) );

  aVertex = aCenterMass;

  tab[0] = aVertex.X();
  tab[1] = aVertex.Y();
  tab[2] = aVertex.Z();
  tab[3] = aShapeSize;
  return;
}

namespace {

  //================================================================================
  /*!
   * \brief Return normal to face at extrema point
   */
  //================================================================================

  gp_Vec GetNormal(const TopoDS_Face& face, const BRepExtrema_DistShapeShape& extrema)
  {
    gp_Vec defaultNorm(1,0,0); // to have same normals on different faces
    try {
      // get UV at extrema point
      Standard_Real u,v, f,l;
      switch ( extrema.SupportTypeShape2(1) ) {
      case BRepExtrema_IsInFace: {
        extrema.ParOnFaceS2(1, u, v );
        break;
      }
      case BRepExtrema_IsOnEdge: {
        TopoDS_Edge edge = TopoDS::Edge( extrema.SupportOnShape2(1));
        Handle(Geom2d_Curve) pcurve = BRep_Tool::CurveOnSurface( edge, face, f,l );
        extrema.ParOnEdgeS2( 1, u );
        gp_Pnt2d uv = pcurve->Value( u );
        u = uv.Coord(1);
        v = uv.Coord(2);
        break;
      }
      case BRepExtrema_IsVertex: return defaultNorm;
      }
      // get derivatives
      BRepAdaptor_Surface surface( face, false );
      gp_Vec du, dv; gp_Pnt p;
      surface.D1( u, v, p, du, dv );

      return du ^ dv;

    } catch (Standard_Failure ) {
    }
    return defaultNorm;
  }
}

//================================================================================
/*!
 * \brief Return type of shape for explode. In case of compound it will be a type of sub shape.
 */
//================================================================================
TopAbs_ShapeEnum GEOMImpl_IShapesOperations::GetTypeOfSimplePart (const TopoDS_Shape& theShape)
{
  TopAbs_ShapeEnum aType = theShape.ShapeType();
  if      (aType == TopAbs_VERTEX)                             return TopAbs_VERTEX;
  else if (aType == TopAbs_EDGE  || aType == TopAbs_WIRE)      return TopAbs_EDGE;
  else if (aType == TopAbs_FACE  || aType == TopAbs_SHELL)     return TopAbs_FACE;
  else if (aType == TopAbs_SOLID || aType == TopAbs_COMPSOLID) return TopAbs_SOLID;
  else if (aType == TopAbs_COMPOUND) {
    // Only the iType of the first shape in the compound is taken into account
    TopoDS_Iterator It (theShape, Standard_False, Standard_False);
    if (It.More()) {
      return GetTypeOfSimplePart(It.Value());
    }
  }
  return TopAbs_SHAPE;
}

//=============================================================================
/*!
 *  case GetInPlace:
 *  default:
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::GetInPlace (Handle(GEOM_Object) theShapeWhere,
                                                            Handle(GEOM_Object) theShapeWhat)
{
  SetErrorCode(GEOM_KO);

  if (theShapeWhere.IsNull() || theShapeWhat.IsNull()) return NULL;

  TopoDS_Shape aWhere = theShapeWhere->GetValue();
  TopoDS_Shape aWhat  = theShapeWhat->GetValue();
  TopoDS_Shape aPntShape;
  TopoDS_Vertex aVertex;

  if (aWhere.IsNull() || aWhat.IsNull()) {
    SetErrorCode("Error: aWhere and aWhat TopoDS_Shape are Null.");
    return NULL;
  }

  Handle(GEOM_Function) aWhereFunction = theShapeWhere->GetLastFunction();
  if (aWhereFunction.IsNull()) {
    SetErrorCode("Error: aWhereFunction is Null.");
    return NULL;
  }

  TopTools_IndexedMapOfShape aWhereIndices;
  TopExp::MapShapes(aWhere, aWhereIndices);

  TColStd_ListOfInteger aModifiedList;
  Standard_Integer aWhereIndex;
  Handle(TColStd_HArray1OfInteger) aModifiedArray;
  Handle(GEOM_Object) aResult;

  bool isFound = false;
  TopAbs_ShapeEnum iType = TopAbs_SOLID;
  //Standard_Real    aWhat_Mass = 0., aWhere_Mass = 0.;
  Standard_Real    tab_aWhat[4],    tab_aWhere[4];
  Standard_Real    dl_l = 1e-3;
  Standard_Real    min_l, Tol_0D, Tol_1D, Tol_2D, Tol_3D, Tol_Mass;
  Standard_Real    aXmin, aYmin, aZmin, aXmax, aYmax, aZmax;
  Bnd_Box          BoundingBox;
  gp_Pnt           aPnt, aPnt_aWhat, tab_Pnt[2];
  GProp_GProps     aProps;

  // Find the iType of the aWhat shape
  /*
  if      ( aWhat.ShapeType() == TopAbs_VERTEX )                                         iType = TopAbs_VERTEX;
  else if ( aWhat.ShapeType() == TopAbs_EDGE  || aWhat.ShapeType() == TopAbs_WIRE )      iType = TopAbs_EDGE;
  else if ( aWhat.ShapeType() == TopAbs_FACE  || aWhat.ShapeType() == TopAbs_SHELL )     iType = TopAbs_FACE;
  else if ( aWhat.ShapeType() == TopAbs_SOLID || aWhat.ShapeType() == TopAbs_COMPSOLID ) iType = TopAbs_SOLID;
  else if ( aWhat.ShapeType() == TopAbs_COMPOUND ) {
    // Only the iType of the first shape in the compound is taken into account
    TopoDS_Iterator It (aWhat, Standard_False, Standard_False);

    if ( !It.More() ) {
      SetErrorCode("Error: theShapeWhat is an empty COMPOUND.");
      return NULL;
    }
    TopAbs_ShapeEnum compType = It.Value().ShapeType();
    if      ( compType == TopAbs_VERTEX )                               iType = TopAbs_VERTEX;
    else if ( compType == TopAbs_EDGE  || compType == TopAbs_WIRE )     iType = TopAbs_EDGE;
    else if ( compType == TopAbs_FACE  || compType == TopAbs_SHELL)     iType = TopAbs_FACE;
    else if ( compType == TopAbs_SOLID || compType == TopAbs_COMPSOLID) iType = TopAbs_SOLID;
  }
  else {
    SetErrorCode("Error: An attempt to extract a shape of not supported type.");
    return NULL;
  }
  */
  iType = GetTypeOfSimplePart(aWhat);
  if (iType == TopAbs_SHAPE) {
    SetErrorCode("Error: An attempt to extract a shape of not supported type.");
    return NULL;
  }

  TopExp_Explorer Exp_aWhat  ( aWhat,  iType );
  TopExp_Explorer Exp_aWhere ( aWhere, iType );
  TopExp_Explorer Exp_Edge( aWhere,   TopAbs_EDGE );

  // Find the shortest edge in theShapeWhere shape
  BRepBndLib::Add(aWhere, BoundingBox);
  BoundingBox.Get(aXmin, aYmin, aZmin, aXmax, aYmax, aZmax);
  min_l = fabs(aXmax - aXmin);
  if( min_l < fabs(aYmax - aYmin) ) min_l = fabs(aYmax - aYmin);
  if( min_l < fabs(aZmax - aZmin) ) min_l = fabs(aZmax - aZmin);
  min_l /= dl_l;
  // Mantis issue 0020908 BEGIN
  if (!Exp_Edge.More()) {
    min_l = Precision::Confusion();
  }
  // Mantis issue 0020908 END
  for ( Standard_Integer nbEdge = 0; Exp_Edge.More(); Exp_Edge.Next(), nbEdge++ ) {
    TopExp_Explorer Exp_Vertex( Exp_Edge.Current(), TopAbs_VERTEX);
    for ( Standard_Integer nbVertex = 0; Exp_Vertex.More(); Exp_Vertex.Next(), nbVertex++ ) {
      aPnt = BRep_Tool::Pnt( TopoDS::Vertex( Exp_Vertex.Current() ) );
      tab_Pnt[nbVertex] = aPnt;
    }
    if ( ! tab_Pnt[0].IsEqual(tab_Pnt[1], dl_l) ) {
      BRepGProp::LinearProperties(Exp_Edge.Current(), aProps);
      if ( aProps.Mass() < min_l ) min_l = aProps.Mass();
    }
  }

  // Compute tolerances
  Tol_0D = dl_l;
  Tol_1D = dl_l * min_l;
  Tol_2D = dl_l * ( min_l * min_l) * ( 2. + dl_l);
  Tol_3D = dl_l * ( min_l * min_l * min_l ) * ( 3. + (3 * dl_l) + (dl_l * dl_l) );

  if (Tol_0D < Precision::Confusion()) Tol_0D = Precision::Confusion();
  if (Tol_1D < Precision::Confusion()) Tol_1D = Precision::Confusion();
  if (Tol_2D < Precision::Confusion()) Tol_2D = Precision::Confusion();
  if (Tol_3D < Precision::Confusion()) Tol_3D = Precision::Confusion();

  //if (Tol_1D > 1.0) Tol_1D = 1.0;
  //if (Tol_2D > 1.0) Tol_2D = 1.0;
  //if (Tol_3D > 1.0) Tol_3D = 1.0;

  Tol_Mass = Tol_3D;
  if ( iType == TopAbs_VERTEX )    Tol_Mass = Tol_0D;
  else if ( iType == TopAbs_EDGE ) Tol_Mass = Tol_1D;
  else if ( iType == TopAbs_FACE ) Tol_Mass = Tol_2D;

  // Compute the ShapeWhat Mass
  /*
  for ( ; Exp_aWhat.More(); Exp_aWhat.Next() ) {
    if ( iType == TopAbs_VERTEX ) {
      aWhat_Mass += 1;
      continue;
    }
    else if ( iType == TopAbs_EDGE ) BRepGProp::LinearProperties(Exp_aWhat.Current(),  aProps);
    else if ( iType == TopAbs_FACE ) BRepGProp::SurfaceProperties(Exp_aWhat.Current(), aProps);
    else                             BRepGProp::VolumeProperties(Exp_aWhat.Current(),  aProps);
    aWhat_Mass += aProps.Mass();
  }
  */

  // Searching for the sub-shapes inside the ShapeWhere shape
  TopTools_MapOfShape map_aWhere;
  for ( Exp_aWhere.ReInit(); Exp_aWhere.More(); Exp_aWhere.Next() ) {
    if (!map_aWhere.Add(Exp_aWhere.Current()))
      continue; // skip repeated shape to avoid mass addition
    GetShapeProperties( Exp_aWhere.Current(), tab_aWhere, aPnt );
    for ( Exp_aWhat.ReInit(); Exp_aWhat.More(); Exp_aWhat.Next() ) {
      GetShapeProperties( Exp_aWhat.Current(), tab_aWhat, aPnt_aWhat );
      if ( fabs(tab_aWhat[3] - tab_aWhere[3]) <= Tol_Mass && aPnt_aWhat.Distance(aPnt) <= Tol_1D )
        isFound = true;
      else {
        if ( (tab_aWhat[3] - tab_aWhere[3]) > Tol_Mass ) {
          aPntShape = BRepBuilderAPI_MakeVertex( aPnt ).Shape();
          aVertex   = TopoDS::Vertex( aPntShape );
          BRepExtrema_DistShapeShape aWhereDistance ( aVertex, Exp_aWhere.Current() );
          BRepExtrema_DistShapeShape aWhatDistance  ( aVertex, Exp_aWhat.Current() );

          if ( aWhereDistance.IsDone() && aWhatDistance.IsDone() &&
               fabs(aWhereDistance.Value() - aWhatDistance.Value()) <= Tol_1D )
          {
            // 0020162: "EDF 961 GEOM : Getinplace is getting additionnal orthogonal faces"
            // aVertex must be projected to the same point on Where and on What
            gp_Pnt pOnWhat  = aWhatDistance.PointOnShape2(1);
            gp_Pnt pOnWhere = aWhereDistance.PointOnShape2(1);
            isFound = ( pOnWhat.Distance(pOnWhere) <= Tol_1D );
            if ( isFound && iType == TopAbs_FACE )
            {
              // check normals at pOnWhat and pOnWhere
              const double angleTol = M_PI/180.;
              gp_Vec normToWhat  = GetNormal( TopoDS::Face(Exp_aWhat.Current()), aWhatDistance);
              gp_Vec normToWhere = GetNormal( TopoDS::Face(Exp_aWhere.Current()), aWhereDistance);
              if ( normToWhat * normToWhere < 0 )
                normToWhat.Reverse();
              isFound = ( normToWhat.Angle( normToWhere ) < angleTol );
            }
          }
        }
      }
      if ( isFound ) {
        aWhereIndex = aWhereIndices.FindIndex(Exp_aWhere.Current());
        aModifiedList.Append(aWhereIndex);
        //aWhere_Mass += tab_aWhere[3];
        isFound = false;
        break;
      }
    }
    //if ( fabs( aWhat_Mass - aWhere_Mass ) <= Tol_Mass ) 
	//  break;
  }

  if (aModifiedList.Extent() == 0) { // Not found any Results
    SetErrorCode(GEOM_NOT_FOUND_ANY);
    return NULL;
  }

  aModifiedArray = new TColStd_HArray1OfInteger (1, aModifiedList.Extent());
  TColStd_ListIteratorOfListOfInteger anIterModif (aModifiedList);
  for (Standard_Integer imod = 1; anIterModif.More(); anIterModif.Next(), imod++)
    aModifiedArray->SetValue(imod, anIterModif.Value());

  //Add a new object
  aResult = GetEngine()->AddSubShape(theShapeWhere, aModifiedArray);
  if (aResult.IsNull()) {
    SetErrorCode("Error in algorithm: result found, but cannot be returned.");
    return NULL;
  }

  if (aModifiedArray->Length() > 1) {
    //Set a GROUP type
    aResult->SetType(GEOM_GROUP);

    //Set a sub shape type
    TopoDS_Shape aFirstFound = aWhereIndices.FindKey(aModifiedArray->Value(1));
    TopAbs_ShapeEnum aShapeType = aFirstFound.ShapeType();

    TDF_Label aFreeLabel = aResult->GetFreeLabel();
    TDataStd_Integer::Set(aFreeLabel, (Standard_Integer)aShapeType);
  }

  //Make a Python command
  Handle(GEOM_Function) aFunction = aResult->GetFunction(1);

  GEOM::TPythonDump(aFunction) << aResult << " = GetInPlace("
    << theShapeWhere << ", " << theShapeWhat << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=======================================================================
//function : GetInPlaceByHistory
//purpose  :
//=======================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::GetInPlaceByHistory
                                          (Handle(GEOM_Object) theShapeWhere,
                                           Handle(GEOM_Object) theShapeWhat)
{
  SetErrorCode(GEOM_KO);

  if (theShapeWhere.IsNull() || theShapeWhat.IsNull()) return NULL;

  TopoDS_Shape aWhere = theShapeWhere->GetValue();
  TopoDS_Shape aWhat  = theShapeWhat->GetValue();

  if (aWhere.IsNull() || aWhat.IsNull()) return NULL;

  Handle(GEOM_Function) aWhereFunction = theShapeWhere->GetLastFunction();
  if (aWhereFunction.IsNull()) return NULL;

  //Fill array of indices
  TopTools_IndexedMapOfShape aWhereIndices;
  TopExp::MapShapes(aWhere, aWhereIndices);

  // process shape
  TColStd_ListOfInteger aModifiedList;
  bool isFound = GetInPlaceOfShape(aWhereFunction, aWhereIndices, aWhat, aModifiedList);

  if (!isFound || aModifiedList.Extent() < 1) {
    SetErrorCode("Error: No history found for the sought shape or its sub-shapes.");
    return NULL;
  }

  Handle(TColStd_HArray1OfInteger) aModifiedArray =
    new TColStd_HArray1OfInteger (1, aModifiedList.Extent());
  TColStd_ListIteratorOfListOfInteger anIterModif (aModifiedList);
  for (Standard_Integer imod = 1; anIterModif.More(); anIterModif.Next(), imod++) {
    aModifiedArray->SetValue(imod, anIterModif.Value());
  }

  //Add a new object
  Handle(GEOM_Object) aResult = GetEngine()->AddSubShape(theShapeWhere, aModifiedArray);
  if (aResult.IsNull()) {
    SetErrorCode("Error in algorithm: result found, but cannot be returned.");
    return NULL;
  }

  if (aModifiedArray->Length() > 1) {
    //Set a GROUP type
    aResult->SetType(GEOM_GROUP);

    //Set a sub shape type
    TopoDS_Shape aFirstFound = aWhereIndices.FindKey(aModifiedArray->Value(1));
    TopAbs_ShapeEnum aShapeType = aFirstFound.ShapeType();

    TDF_Label aFreeLabel = aResult->GetFreeLabel();
    TDataStd_Integer::Set(aFreeLabel, (Standard_Integer)aShapeType);
  }

  //Make a Python command
  Handle(GEOM_Function) aFunction = aResult->GetFunction(1);

  GEOM::TPythonDump(aFunction) << aResult << " = GetInPlaceByHistory("
    << theShapeWhere << ", " << theShapeWhat << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=======================================================================
//function : ShapeToDouble
//purpose  : used by CompareShapes::operator()
//=======================================================================
std::pair<double, double> ShapeToDouble (const TopoDS_Shape& S, bool isOldSorting)
{
  // Computing of CentreOfMass
  gp_Pnt GPoint;
  double Len;

  if (S.ShapeType() == TopAbs_VERTEX) {
    GPoint = BRep_Tool::Pnt(TopoDS::Vertex(S));
    Len = (double)S.Orientation();
  }
  else {
    GProp_GProps GPr;
    // BEGIN: fix for Mantis issue 0020842
    if (isOldSorting) {
      BRepGProp::LinearProperties(S, GPr);
    }
    else {
      if (S.ShapeType() == TopAbs_EDGE || S.ShapeType() == TopAbs_WIRE) {
        BRepGProp::LinearProperties(S, GPr);
      }
      else if (S.ShapeType() == TopAbs_FACE || S.ShapeType() == TopAbs_SHELL) {
        BRepGProp::SurfaceProperties(S, GPr);
      }
      else {
        BRepGProp::VolumeProperties(S, GPr);
      }
    }
    // END: fix for Mantis issue 0020842
    GPoint = GPr.CentreOfMass();
    Len = GPr.Mass();
  }

  double dMidXYZ = GPoint.X() * 999.0 + GPoint.Y() * 99.0 + GPoint.Z() * 0.9;
  return std::make_pair(dMidXYZ, Len);
}

//=======================================================================
//function : CompareShapes::operator()
//purpose  : used by std::sort(), called from SortShapes()
//=======================================================================
bool GEOMImpl_IShapesOperations::CompareShapes::operator()(const TopoDS_Shape& theShape1,
                                                           const TopoDS_Shape& theShape2)
{
  if (!myMap.IsBound(theShape1)) {
    myMap.Bind(theShape1, ShapeToDouble(theShape1, myIsOldSorting));
  }

  if (!myMap.IsBound(theShape2)) {
    myMap.Bind(theShape2, ShapeToDouble(theShape2, myIsOldSorting));
  }

  std::pair<double, double> val1 = myMap.Find(theShape1);
  std::pair<double, double> val2 = myMap.Find(theShape2);

  double tol = Precision::Confusion();
  bool exchange = Standard_False;

  double dMidXYZ = val1.first - val2.first;
  if (dMidXYZ >= tol) {
    exchange = Standard_True;
  }
  else if (Abs(dMidXYZ) < tol) {
    double dLength = val1.second - val2.second;
    if (dLength >= tol) {
      exchange = Standard_True;
    }
    else if (Abs(dLength) < tol && theShape1.ShapeType() <= TopAbs_FACE) {
      // PAL17233
      // equal values possible on shapes such as two halves of a sphere and
      // a membrane inside the sphere
      Bnd_Box box1,box2;
      BRepBndLib::Add(theShape1, box1);
      if (!box1.IsVoid()) {
        BRepBndLib::Add(theShape2, box2);
        Standard_Real dSquareExtent = box1.SquareExtent() - box2.SquareExtent();
        if (dSquareExtent >= tol) {
          exchange = Standard_True;
        }
        else if (Abs(dSquareExtent) < tol) {
          Standard_Real aXmin, aYmin, aZmin, aXmax, aYmax, aZmax, val1, val2;
          box1.Get(aXmin, aYmin, aZmin, aXmax, aYmax, aZmax);
          val1 = (aXmin+aXmax)*999.0 + (aYmin+aYmax)*99.0 + (aZmin+aZmax)*0.9;
          box2.Get(aXmin, aYmin, aZmin, aXmax, aYmax, aZmax);
          val2 = (aXmin+aXmax)*999.0 + (aYmin+aYmax)*99.0 + (aZmin+aZmax)*0.9;
          if ((val1 - val2) >= tol) {
            exchange = Standard_True;
          }
        }
      }
    }
  }

  //return val1 < val2;
  return !exchange;
}

//=======================================================================
//function : SortShapes
//purpose  :
//=======================================================================
void GEOMImpl_IShapesOperations::SortShapes(TopTools_ListOfShape& SL,
                                            const Standard_Boolean isOldSorting)
{
#ifdef STD_SORT_ALGO
  std::vector<TopoDS_Shape> aShapesVec;
  aShapesVec.reserve(SL.Extent());

  TopTools_ListIteratorOfListOfShape it (SL);
  for (; it.More(); it.Next()) {
    aShapesVec.push_back(it.Value());
  }
  SL.Clear();

  CompareShapes shComp (isOldSorting);
  std::stable_sort(aShapesVec.begin(), aShapesVec.end(), shComp);
  //std::sort(aShapesVec.begin(), aShapesVec.end(), shComp);

  std::vector<TopoDS_Shape>::const_iterator anIter = aShapesVec.begin();
  for (; anIter != aShapesVec.end(); ++anIter) {
    SL.Append(*anIter);
  }
#else
  // old implementation
  Standard_Integer MaxShapes = SL.Extent();
  TopTools_Array1OfShape  aShapes (1,MaxShapes);
  TColStd_Array1OfInteger OrderInd(1,MaxShapes);
  TColStd_Array1OfReal    MidXYZ  (1,MaxShapes); //X,Y,Z;
  TColStd_Array1OfReal    Length  (1,MaxShapes); //X,Y,Z;

  // Computing of CentreOfMass
  Standard_Integer Index;
  GProp_GProps GPr;
  gp_Pnt GPoint;
  TopTools_ListIteratorOfListOfShape it(SL);
  for (Index=1;  it.More();  Index++)
  {
    TopoDS_Shape S = it.Value();
    SL.Remove( it ); // == it.Next()
    aShapes(Index) = S;
    OrderInd.SetValue (Index, Index);
    if (S.ShapeType() == TopAbs_VERTEX) {
      GPoint = BRep_Tool::Pnt( TopoDS::Vertex( S ));
      Length.SetValue( Index, (Standard_Real) S.Orientation());
    }
    else {
      // BEGIN: fix for Mantis issue 0020842
      if (isOldSorting) {
        BRepGProp::LinearProperties (S, GPr);
      }
      else {
        if (S.ShapeType() == TopAbs_EDGE || S.ShapeType() == TopAbs_WIRE) {
      BRepGProp::LinearProperties (S, GPr);
        }
        else if (S.ShapeType() == TopAbs_FACE || S.ShapeType() == TopAbs_SHELL) {
          BRepGProp::SurfaceProperties(S, GPr);
        }
        else {
          BRepGProp::VolumeProperties(S, GPr);
        }
      }
      // END: fix for Mantis issue 0020842
      GPoint = GPr.CentreOfMass();
      Length.SetValue( Index, GPr.Mass() );
    }
    MidXYZ.SetValue(Index, GPoint.X()*999.0 + GPoint.Y()*99.0 + GPoint.Z()*0.9);
    //cout << Index << " L: " << Length(Index) << "CG: " << MidXYZ(Index) << endl;
  }

  // Sorting
  Standard_Integer aTemp;
  Standard_Boolean exchange, Sort = Standard_True;
  Standard_Real    tol = Precision::Confusion();
  while (Sort)
  {
    Sort = Standard_False;
    for (Index=1; Index < MaxShapes; Index++)
    {
      exchange = Standard_False;
      Standard_Real dMidXYZ = MidXYZ(OrderInd(Index)) - MidXYZ(OrderInd(Index+1));
      Standard_Real dLength = Length(OrderInd(Index)) - Length(OrderInd(Index+1));
      if ( dMidXYZ >= tol ) {
//         cout << "MidXYZ: " << MidXYZ(OrderInd(Index))<< " > " <<MidXYZ(OrderInd(Index+1))
//              << " d: " << dMidXYZ << endl;
	exchange = Standard_True;
      }
      else if ( Abs(dMidXYZ) < tol && dLength >= tol ) {
//         cout << "Length: " << Length(OrderInd(Index))<< " > " <<Length(OrderInd(Index+1))
//              << " d: " << dLength << endl;
	exchange = Standard_True;
      }
      else if ( Abs(dMidXYZ) < tol && Abs(dLength) < tol &&
                aShapes(OrderInd(Index)).ShapeType() <= TopAbs_FACE) {
        // PAL17233
        // equal values possible on shapes such as two halves of a sphere and
        // a membrane inside the sphere
        Bnd_Box box1,box2;
        BRepBndLib::Add( aShapes( OrderInd(Index) ), box1 );
        if ( box1.IsVoid() ) continue;
        BRepBndLib::Add( aShapes( OrderInd(Index+1) ), box2 );
        Standard_Real dSquareExtent = box1.SquareExtent() - box2.SquareExtent();
        if ( dSquareExtent >= tol ) {
//           cout << "SquareExtent: " << box1.SquareExtent()<<" > "<<box2.SquareExtent() << endl;
          exchange = Standard_True;
        }
        else if ( Abs(dSquareExtent) < tol ) {
          Standard_Real aXmin, aYmin, aZmin, aXmax, aYmax, aZmax, val1, val2;
          box1.Get(aXmin, aYmin, aZmin, aXmax, aYmax, aZmax);
          val1 = (aXmin+aXmax)*999 + (aYmin+aYmax)*99 + (aZmin+aZmax)*0.9;
          box2.Get(aXmin, aYmin, aZmin, aXmax, aYmax, aZmax);
          val2 = (aXmin+aXmax)*999 + (aYmin+aYmax)*99 + (aZmin+aZmax)*0.9;
          //exchange = val1 > val2;
          if ((val1 - val2) >= tol) {
            exchange = Standard_True;
          }
          //cout << "box: " << val1<<" > "<<val2 << endl;
        }
      }

      if (exchange)
      {
//         cout << "exchange " << Index << " & " << Index+1 << endl;
        aTemp = OrderInd(Index);
        OrderInd(Index) = OrderInd(Index+1);
        OrderInd(Index+1) = aTemp;
        Sort = Standard_True;
      }
    }
  }

  for (Index=1; Index <= MaxShapes; Index++)
    SL.Append( aShapes( OrderInd(Index) ));
#endif
}

//=======================================================================
//function : CompsolidToCompound
//purpose  :
//=======================================================================
TopoDS_Shape GEOMImpl_IShapesOperations::CompsolidToCompound (const TopoDS_Shape& theCompsolid)
{
  if (theCompsolid.ShapeType() != TopAbs_COMPSOLID) {
    return theCompsolid;
  }

  TopoDS_Compound aCompound;
  BRep_Builder B;
  B.MakeCompound(aCompound);

  TopTools_MapOfShape mapShape;
  TopoDS_Iterator It (theCompsolid, Standard_True, Standard_True);

  for (; It.More(); It.Next()) {
    TopoDS_Shape aShape_i = It.Value();
    if (mapShape.Add(aShape_i)) {
      B.Add(aCompound, aShape_i);
    }
  }

  return aCompound;
}

//=======================================================================
//function : CheckTriangulation
//purpose  :
//=======================================================================
bool GEOMImpl_IShapesOperations::CheckTriangulation (const TopoDS_Shape& aShape)
{
  bool isTriangulation = true;

  TopExp_Explorer exp (aShape, TopAbs_FACE);
  if (exp.More())
  {
    TopLoc_Location aTopLoc;
    Handle(Poly_Triangulation) aTRF;
    aTRF = BRep_Tool::Triangulation(TopoDS::Face(exp.Current()), aTopLoc);
    if (aTRF.IsNull()) {
      isTriangulation = false;
    }
  }
  else // no faces, try edges
  {
    TopExp_Explorer expe (aShape, TopAbs_EDGE);
    if (!expe.More()) {
      return false;
    }
    TopLoc_Location aLoc;
    Handle(Poly_Polygon3D) aPE = BRep_Tool::Polygon3D(TopoDS::Edge(expe.Current()), aLoc);
    if (aPE.IsNull()) {
      isTriangulation = false;
    }
  }

  if (!isTriangulation) {
    // calculate deflection
    Standard_Real aDeviationCoefficient = 0.001;

    Bnd_Box B;
    BRepBndLib::Add(aShape, B);
    Standard_Real aXmin, aYmin, aZmin, aXmax, aYmax, aZmax;
    B.Get(aXmin, aYmin, aZmin, aXmax, aYmax, aZmax);

    Standard_Real dx = aXmax - aXmin, dy = aYmax - aYmin, dz = aZmax - aZmin;
    Standard_Real aDeflection = Max(Max(dx, dy), dz) * aDeviationCoefficient * 4;
    Standard_Real aHLRAngle = 0.349066;

    BRepMesh_IncrementalMesh Inc (aShape, aDeflection, Standard_False, aHLRAngle);
  }

  return true;
}

#define MAX_TOLERANCE 1.e-7


//=======================================================================
//function : isSameEdge
//purpose  : Returns True if two edges coincide
//=======================================================================
static bool isSameEdge(const TopoDS_Edge& theEdge1, const TopoDS_Edge& theEdge2)
{
  TopoDS_Vertex V11, V12, V21, V22;
  TopExp::Vertices(theEdge1, V11, V12);
  TopExp::Vertices(theEdge2, V21, V22);
  gp_Pnt P11 = BRep_Tool::Pnt(V11);
  gp_Pnt P12 = BRep_Tool::Pnt(V12);
  gp_Pnt P21 = BRep_Tool::Pnt(V21);
  gp_Pnt P22 = BRep_Tool::Pnt(V22);
  bool coincide = false;

  //Check that ends of edges coincide
  if(P11.Distance(P21) <= MAX_TOLERANCE) {
    if(P12.Distance(P22) <= MAX_TOLERANCE) coincide =  true;
  }
  else if(P11.Distance(P22) <= MAX_TOLERANCE) {
    if(P12.Distance(P21) <= MAX_TOLERANCE) coincide = true;
  }

  if(!coincide) return false;

  if (BRep_Tool::Degenerated(theEdge1))
    if (BRep_Tool::Degenerated(theEdge2)) return true;
    else return false;
  else
    if (BRep_Tool::Degenerated(theEdge2)) return false;

  double U11, U12, U21, U22;
  Handle(Geom_Curve) C1 = BRep_Tool::Curve(theEdge1, U11, U12);
  Handle(Geom_Curve) C2 = BRep_Tool::Curve(theEdge2, U21, U22);
  if(C1->DynamicType() == C2->DynamicType()) return true;

  //Check that both edges has the same geometry
  double range = U12-U11;
  double U = U11+ range/3.0;
  gp_Pnt P1 = C1->Value(U);     //Compute a point on one third of the edge's length
  U = U11+range*2.0/3.0;
  gp_Pnt P2 = C1->Value(U);     //Compute a point on two thirds of the edge's length

  if(!GeomLib_Tool::Parameter(C2, P1, MAX_TOLERANCE, U) ||  U < U21 || U > U22)
    return false;

  if(P1.Distance(C2->Value(U)) > MAX_TOLERANCE) return false;

  if(!GeomLib_Tool::Parameter(C2, P2, MAX_TOLERANCE, U) || U < U21 || U > U22)
    return false;

  if(P2.Distance(C2->Value(U)) > MAX_TOLERANCE) return false;

  return true;
}

#include <TopoDS_TShape.hxx>
//=======================================================================
//function : isSameFace
//purpose  : Returns True if two faces coincide
//=======================================================================
static bool isSameFace(const TopoDS_Face& theFace1, const TopoDS_Face& theFace2)
{
  TopExp_Explorer E(theFace1, TopAbs_EDGE);
  TopTools_ListOfShape LS1, LS2;
  for(; E.More(); E.Next()) LS1.Append(E.Current());

  E.Init(theFace2, TopAbs_EDGE);
  for(; E.More(); E.Next()) LS2.Append(E.Current());

  //Compare the number of edges in the faces
  if(LS1.Extent() != LS2.Extent()) return false;

  double aMin = RealFirst(), aMax = RealLast();
  double xminB1=aMax, yminB1=aMax, zminB1=aMax, xminB2=aMax, yminB2=aMax, zminB2=aMax;
  double xmaxB1=aMin, ymaxB1=aMin, zmaxB1=aMin, xmaxB2=aMin, ymaxB2=aMin, zmaxB2=aMin;

  for(E.Init(theFace1, TopAbs_VERTEX); E.More(); E.Next()) {
    gp_Pnt P = BRep_Tool::Pnt(TopoDS::Vertex(E.Current()));
    if(P.X() < xminB1) xminB1 = P.X();
    if(P.Y() < yminB1) yminB1 = P.Y();
    if(P.Z() < zminB1) zminB1 = P.Z();
    if(P.X() > xmaxB1) xmaxB1 = P.X();
    if(P.Y() > ymaxB1) ymaxB1 = P.Y();
    if(P.Z() > zmaxB1) zmaxB1 = P.Z();
  }

  for(E.Init(theFace2, TopAbs_VERTEX); E.More(); E.Next()) {
    gp_Pnt P = BRep_Tool::Pnt(TopoDS::Vertex(E.Current()));
    if(P.X() < xminB2) xminB2 = P.X();
    if(P.Y() < yminB2) yminB2 = P.Y();
    if(P.Z() < zminB2) zminB2 = P.Z();
    if(P.X() > xmaxB2) xmaxB2 = P.X();
    if(P.Y() > ymaxB2) ymaxB2 = P.Y();
    if(P.Z() > zmaxB2) zmaxB2 = P.Z();
  }


  //Compare the bounding boxes of both faces
  if(gp_Pnt(xminB1, yminB1, zminB1).Distance(gp_Pnt(xminB2, yminB2, zminB2)) > MAX_TOLERANCE)
    return false;

  if(gp_Pnt(xmaxB1, ymaxB1, zmaxB1).Distance(gp_Pnt(xmaxB2, ymaxB2, zmaxB2)) > MAX_TOLERANCE)
    return false;

  Handle(Geom_Surface) S1 = BRep_Tool::Surface(theFace1);
  Handle(Geom_Surface) S2 = BRep_Tool::Surface(theFace2);

  //Check if there a coincidence of two surfaces at least in two points
  double U11, U12, V11, V12, U21, U22, V21, V22;
  BRepTools::UVBounds(theFace1, U11, U12, V11, V12);
  BRepTools::UVBounds(theFace2, U21, U22, V21, V22);

  double rangeU = U12-U11;
  double rangeV = V12-V11;
  double U = U11 + rangeU/3.0;
  double V = V11 + rangeV/3.0;
  gp_Pnt P1 = S1->Value(U, V);
  U = U11+rangeU*2.0/3.0;
  V = V11+rangeV*2.0/3.0;
  gp_Pnt P2 = S1->Value(U, V);
  
  if(!GeomLib_Tool::Parameters(S2, P1, MAX_TOLERANCE, U, V) || U < U21 || U > U22 || V < V21 || V > V22)
    return false;
  
  if(P1.Distance(S2->Value(U,V)) > MAX_TOLERANCE) return false;
  
  if(!GeomLib_Tool::Parameters(S2, P2, MAX_TOLERANCE, U, V) || U < U21 || U > U22 || V < V21 || V > V22)
    return false;
  
  if(P2.Distance(S2->Value(U, V)) > MAX_TOLERANCE) return false;

  //Check that each edge of the Face1 has a counterpart in the Face2
  TopTools_MapOfOrientedShape aMap;
  TopTools_ListIteratorOfListOfShape LSI1(LS1);
  for(; LSI1.More(); LSI1.Next()) {
    TopoDS_Edge E = TopoDS::Edge(LSI1.Value());
    bool isFound = false;
    TopTools_ListIteratorOfListOfShape LSI2(LS2);
    for(; LSI2.More(); LSI2.Next()) {
      TopoDS_Shape aValue = LSI2.Value();
      if(aMap.Contains(aValue)) continue; //To avoid checking already found edge several times
      if(isSameEdge(E, TopoDS::Edge(aValue))) {
        aMap.Add(aValue);
        isFound = true;
        break;
      }
    }
    if(!isFound) return false;
  }

  return true;
}

//=======================================================================
//function : isSameSolid
//purpose  : Returns True if two solids coincide
//=======================================================================
bool isSameSolid(const TopoDS_Solid& theSolid1, const TopoDS_Solid& theSolid2)
{
  TopExp_Explorer E(theSolid1, TopAbs_FACE);
  TopTools_ListOfShape LS1, LS2;
  for(; E.More(); E.Next()) LS1.Append(E.Current());
  E.Init(theSolid2, TopAbs_FACE);
  for(; E.More(); E.Next()) LS2.Append(E.Current());

  if(LS1.Extent() != LS2.Extent()) return false;

  double aMin = RealFirst(), aMax = RealLast();
  double xminB1=aMax, yminB1=aMax, zminB1=aMax, xminB2=aMax, yminB2=aMax, zminB2=aMax;
  double xmaxB1=aMin, ymaxB1=aMin, zmaxB1=aMin, xmaxB2=aMin, ymaxB2=aMin, zmaxB2=aMin;

  for(E.Init(theSolid1, TopAbs_VERTEX); E.More(); E.Next()) {
    gp_Pnt P = BRep_Tool::Pnt(TopoDS::Vertex(E.Current()));
    if(P.X() < xminB1) xminB1 = P.X();
    if(P.Y() < yminB1) yminB1 = P.Y();
    if(P.Z() < zminB1) zminB1 = P.Z();
    if(P.X() > xmaxB1) xmaxB1 = P.X();
    if(P.Y() > ymaxB1) ymaxB1 = P.Y();
    if(P.Z() > zmaxB1) zmaxB1 = P.Z();
  }

  for(E.Init(theSolid2, TopAbs_VERTEX); E.More(); E.Next()) {
    gp_Pnt P = BRep_Tool::Pnt(TopoDS::Vertex(E.Current()));
    if(P.X() < xminB2) xminB2 = P.X();
    if(P.Y() < yminB2) yminB2 = P.Y();
    if(P.Z() < zminB2) zminB2 = P.Z();
    if(P.X() > xmaxB2) xmaxB2 = P.X();
    if(P.Y() > ymaxB2) ymaxB2 = P.Y();
    if(P.Z() > zmaxB2) zmaxB2 = P.Z();
  }

  //Compare the bounding boxes of both solids
  if(gp_Pnt(xminB1, yminB1, zminB1).Distance(gp_Pnt(xminB2, yminB2, zminB2)) > MAX_TOLERANCE)
    return false;

  if(gp_Pnt(xmaxB1, ymaxB1, zmaxB1).Distance(gp_Pnt(xmaxB2, ymaxB2, zmaxB2)) > MAX_TOLERANCE)
    return false;

  //Check that each face of the Solid1 has a counterpart in the Solid2
  TopTools_MapOfOrientedShape aMap;
  TopTools_ListIteratorOfListOfShape LSI1(LS1);
  for(; LSI1.More(); LSI1.Next()) {
    TopoDS_Face F = TopoDS::Face(LSI1.Value());
    bool isFound = false;
    TopTools_ListIteratorOfListOfShape LSI2(LS2);
    for(; LSI2.More(); LSI2.Next()) {
      if(aMap.Contains(LSI2.Value())) continue; //To avoid checking already found faces several times
      if(isSameFace(F, TopoDS::Face(LSI2.Value()))) {
        aMap.Add(LSI2.Value());
        isFound = true;
        break;
      }
    }
    if(!isFound) return false;
  }

  return true;
}

//=======================================================================
//function : GetSame
//purpose  :
//=======================================================================
Handle(GEOM_Object) GEOMImpl_IShapesOperations::GetSame(const Handle(GEOM_Object)& theShapeWhere,
							const Handle(GEOM_Object)& theShapeWhat)
{
  SetErrorCode(GEOM_KO);
  if (theShapeWhere.IsNull() || theShapeWhat.IsNull()) return NULL;

  TopoDS_Shape aWhere = theShapeWhere->GetValue();
  TopoDS_Shape aWhat  = theShapeWhat->GetValue();

  if (aWhere.IsNull() || aWhat.IsNull()) return NULL;

  int anIndex = -1;
  bool isFound = false;
  TopoDS_Shape aSubShape;
  TopTools_MapOfShape aMap;

  if (aWhat.ShapeType() == TopAbs_COMPOUND || aWhat.ShapeType() == TopAbs_COMPSOLID) {
    TopoDS_Iterator It (aWhat, Standard_True, Standard_True);
    if (It.More()) aWhat = It.Value();
    It.Next();
    if (It.More()) {
      SetErrorCode("Compounds of two or more shapes are not allowed for aWhat argument");
      return NULL;
    }
  }

  switch(aWhat.ShapeType()) {
    case TopAbs_VERTEX: {
      gp_Pnt P = BRep_Tool::Pnt(TopoDS::Vertex(aWhat));
      TopExp_Explorer E(aWhere, TopAbs_VERTEX);
      for(; E.More(); E.Next()) {
        if(!aMap.Add(E.Current())) continue;
        gp_Pnt P2 = BRep_Tool::Pnt(TopoDS::Vertex(E.Current()));
        if(P.Distance(P2) <= MAX_TOLERANCE) {
          isFound = true;
          aSubShape = E.Current();
          break;
        }
      }
      break;
                        }
    case TopAbs_EDGE: {
      TopoDS_Edge anEdge = TopoDS::Edge(aWhat);
      TopExp_Explorer E(aWhere, TopAbs_EDGE);
      for(; E.More(); E.Next()) {
        if(!aMap.Add(E.Current())) continue;
        if(isSameEdge(anEdge, TopoDS::Edge(E.Current()))) {
          aSubShape = E.Current();
          isFound = true;
          break;
        }
      }
      break;
                      }
    case TopAbs_FACE: {
      TopoDS_Face aFace = TopoDS::Face(aWhat);
      TopExp_Explorer E(aWhere, TopAbs_FACE);
      for(; E.More(); E.Next()) {
        if(!aMap.Add(E.Current())) continue;
        if(isSameFace(aFace, TopoDS::Face(E.Current()))) {
          aSubShape = E.Current();
          isFound = true;
          break;
        }
      }
      break;
                      }
    case TopAbs_SOLID: {
      TopoDS_Solid aSolid = TopoDS::Solid(aWhat);
      TopExp_Explorer E(aWhere, TopAbs_SOLID);
      for(; E.More(); E.Next()) {
        if(!aMap.Add(E.Current())) continue;
        if(isSameSolid(aSolid, TopoDS::Solid(E.Current()))) {
          aSubShape = E.Current();
          isFound = true;
          break;
        }
      }
      break;
                       }
    default:
      return NULL;
  }

  if(isFound) {
    TopTools_IndexedMapOfShape anIndices;
    TopExp::MapShapes(aWhere, anIndices);
    if (anIndices.Contains(aSubShape))
      anIndex = anIndices.FindIndex(aSubShape);
  }

  if(anIndex < 0) return NULL;

  Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);

  anArray->SetValue(1, anIndex);

  Handle(GEOM_Object) aResult = GetEngine()->AddSubShape(theShapeWhere, anArray);
  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  GEOM::TPythonDump(aFunction) << aResult << " = GetSame("
    << theShapeWhere << ", " << theShapeWhat << ")";

  SetErrorCode(GEOM_OK);

  return aResult;
}
