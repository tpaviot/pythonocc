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

#ifdef WNT
#pragma warning( disable:4786 )
#endif

#include <Standard_Stream.hxx>

#include <GEOMImpl_IBlocksOperations.hxx>

#include <GEOMImpl_Types.hxx>

#include <GEOMImpl_BlockDriver.hxx>
#include <GEOMImpl_IBlocks.hxx>
#include <GEOMImpl_IBlockTrsf.hxx>
#include <GEOMImpl_CopyDriver.hxx>
#include <GEOMImpl_Block6Explorer.hxx>
#include <GEOMImpl_IShapesOperations.hxx>

#include <GEOM_Function.hxx>
#include <GEOM_PythonDump.hxx>

#include <GEOMAlgo_GlueAnalyser.hxx>
#include <GEOMAlgo_CoupleOfShapes.hxx>
#include <GEOMAlgo_ListOfCoupleOfShapes.hxx>
#include <GEOMAlgo_ListIteratorOfListOfCoupleOfShapes.hxx>
#include <BlockFix_CheckTool.hxx>

#define SETPARAM(aFUNC,aVAL)  \
  if (aVAL.IsString())         \
	aFUNC( aVAL.GetString() ); \
  else                         \
	aFUNC( aVAL.GetDouble() );

#include <TFunction_DriverTable.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_Logbook.hxx>
#include <TDataStd_Integer.hxx>
#include <TDF_Tool.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <BRepTools.hxx>
#include <BRepTools_WireExplorer.hxx>
#include <BRepGProp.hxx>
#include <BRepBndLib.hxx>
#include <BRepAdaptor_Surface.hxx>
#include <BRepClass_FaceClassifier.hxx>
#include <BRepClass3d_SolidClassifier.hxx>
#include <BRepExtrema_DistShapeShape.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_Array1OfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_DataMapOfShapeInteger.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>

#include <Bnd_Box.hxx>
#include <GProp_GProps.hxx>

#include <Geom_Surface.hxx>
#include <ShapeAnalysis_Surface.hxx>

#include <TColStd_MapOfInteger.hxx>
#include <TColStd_Array1OfReal.hxx>
#include <TColStd_Array1OfInteger.hxx>
#include <TColStd_Array2OfInteger.hxx>

//#include <OSD_Timer.hxx>

#include <Precision.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================
GEOMImpl_IBlocksOperations::GEOMImpl_IBlocksOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  //MESSAGE("GEOMImpl_IBlocksOperations::GEOMImpl_IBlocksOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_IBlocksOperations::~GEOMImpl_IBlocksOperations()
{
  //MESSAGE("GEOMImpl_IBlocksOperations::~GEOMImpl_IBlocksOperations");
}


//=============================================================================
/*!
 *  MakeQuad
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::MakeQuad
                     (Handle(GEOM_Object) theEdge1, Handle(GEOM_Object) theEdge2,
                      Handle(GEOM_Object) theEdge3, Handle(GEOM_Object) theEdge4)
{
  SetErrorCode(GEOM_KO);

  if (theEdge1.IsNull() || theEdge2.IsNull() ||
      theEdge3.IsNull() || theEdge4.IsNull()) return NULL;

  //Add a new Face object
  Handle(GEOM_Object) aFace = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Face function
  Handle(GEOM_Function) aFunction =
    aFace->AddFunction(GEOMImpl_BlockDriver::GetID(), BLOCK_FACE_FOUR_EDGES);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BlockDriver::GetID()) return NULL;

  GEOMImpl_IBlocks aPI (aFunction);

  Handle(GEOM_Function) aRef1 = theEdge1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = theEdge2->GetLastFunction();
  Handle(GEOM_Function) aRef3 = theEdge3->GetLastFunction();
  Handle(GEOM_Function) aRef4 = theEdge4->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull() ||
      aRef3.IsNull() || aRef4.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aShapesSeq = new TColStd_HSequenceOfTransient;
  aShapesSeq->Append(aRef1);
  aShapesSeq->Append(aRef2);
  aShapesSeq->Append(aRef3);
  aShapesSeq->Append(aRef4);

  aPI.SetShapes(aShapesSeq);

  //Compute the Face value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Block driver failed to compute a face");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aFace << " = MakeQuad("
    << theEdge1 << ", " << theEdge2 << ", " << theEdge3 << ", " << theEdge4 << ")";

  SetErrorCode(GEOM_OK);
  return aFace;
}

//=============================================================================
/*!
 *  MakeQuad2Edges
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::MakeQuad2Edges
                     (Handle(GEOM_Object) theEdge1, Handle(GEOM_Object) theEdge2)
{
  SetErrorCode(GEOM_KO);

  if (theEdge1.IsNull() || theEdge2.IsNull()) return NULL;

  //Add a new Face object
  Handle(GEOM_Object) aFace = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Face function
  Handle(GEOM_Function) aFunction =
    aFace->AddFunction(GEOMImpl_BlockDriver::GetID(), BLOCK_FACE_TWO_EDGES);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BlockDriver::GetID()) return NULL;

  GEOMImpl_IBlocks aPI (aFunction);

  Handle(GEOM_Function) aRef1 = theEdge1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = theEdge2->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aShapesSeq = new TColStd_HSequenceOfTransient;
  aShapesSeq->Append(aRef1);
  aShapesSeq->Append(aRef2);

  aPI.SetShapes(aShapesSeq);

  //Compute the Face value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Block driver failed to compute a face");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aFace << " = MakeQuad2Edges("
                               << theEdge1 << ", " << theEdge2 << ")";

  SetErrorCode(GEOM_OK);
  return aFace;
}

//=============================================================================
/*!
 *  MakeQuad4Vertices
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::MakeQuad4Vertices
                     (Handle(GEOM_Object) thePnt1, Handle(GEOM_Object) thePnt2,
                      Handle(GEOM_Object) thePnt3, Handle(GEOM_Object) thePnt4)
{
  SetErrorCode(GEOM_KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() ||
      thePnt3.IsNull() || thePnt4.IsNull()) return NULL;

  //Add a new Face object
  Handle(GEOM_Object) aFace = GetEngine()->AddObject(GetDocID(), GEOM_FACE);

  //Add a new Face function
  Handle(GEOM_Function) aFunction =
    aFace->AddFunction(GEOMImpl_BlockDriver::GetID(), BLOCK_FACE_FOUR_PNT);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BlockDriver::GetID()) return NULL;

  GEOMImpl_IBlocks aPI (aFunction);

  Handle(GEOM_Function) aRef1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRef3 = thePnt3->GetLastFunction();
  Handle(GEOM_Function) aRef4 = thePnt4->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull() ||
      aRef3.IsNull() || aRef4.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aShapesSeq = new TColStd_HSequenceOfTransient;
  aShapesSeq->Append(aRef1);
  aShapesSeq->Append(aRef2);
  aShapesSeq->Append(aRef3);
  aShapesSeq->Append(aRef4);

  aPI.SetShapes(aShapesSeq);

  //Compute the Face value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Block driver failed to compute a face");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aFace << " = MakeQuad4Vertices("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ", " << thePnt4 << ")";

  SetErrorCode(GEOM_OK);
  return aFace;
}

//=============================================================================
/*!
 *  MakeHexa
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::MakeHexa
                     (Handle(GEOM_Object) theFace1, Handle(GEOM_Object) theFace2,
                      Handle(GEOM_Object) theFace3, Handle(GEOM_Object) theFace4,
                      Handle(GEOM_Object) theFace5, Handle(GEOM_Object) theFace6)
{
  SetErrorCode(GEOM_KO);

  if (theFace1.IsNull() || theFace2.IsNull() ||
      theFace3.IsNull() || theFace4.IsNull() ||
      theFace5.IsNull() || theFace6.IsNull()) return NULL;

  //Add a new Solid object
  Handle(GEOM_Object) aBlock = GetEngine()->AddObject(GetDocID(), GEOM_BLOCK);

  //Add a new Block function
  Handle(GEOM_Function) aFunction =
    aBlock->AddFunction(GEOMImpl_BlockDriver::GetID(), BLOCK_SIX_FACES);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BlockDriver::GetID()) return NULL;

  GEOMImpl_IBlocks aPI (aFunction);

  Handle(GEOM_Function) aRef1 = theFace1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = theFace2->GetLastFunction();
  Handle(GEOM_Function) aRef3 = theFace3->GetLastFunction();
  Handle(GEOM_Function) aRef4 = theFace4->GetLastFunction();
  Handle(GEOM_Function) aRef5 = theFace5->GetLastFunction();
  Handle(GEOM_Function) aRef6 = theFace6->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull() ||
      aRef3.IsNull() || aRef4.IsNull() ||
      aRef5.IsNull() || aRef6.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aShapesSeq = new TColStd_HSequenceOfTransient;
  aShapesSeq->Append(aRef1);
  aShapesSeq->Append(aRef2);
  aShapesSeq->Append(aRef3);
  aShapesSeq->Append(aRef4);
  aShapesSeq->Append(aRef5);
  aShapesSeq->Append(aRef6);

  aPI.SetShapes(aShapesSeq);

  //Compute the Block value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Block driver failed to compute a block");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aBlock << " = MakeHexa("
    << theFace1 << ", " << theFace2 << ", " << theFace3 << ", "
      << theFace4 << ", " << theFace5 << ", " << theFace6 << ")";

  SetErrorCode(GEOM_OK);
  return aBlock;
}

//=============================================================================
/*!
 *  MakeHexa2Faces
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::MakeHexa2Faces
                   (Handle(GEOM_Object) theFace1, Handle(GEOM_Object) theFace2)
{
  SetErrorCode(GEOM_KO);

  if (theFace1.IsNull() || theFace2.IsNull()) return NULL;

  //Add a new Solid object
  Handle(GEOM_Object) aBlock = GetEngine()->AddObject(GetDocID(), GEOM_BLOCK);

  //Add a new Block function
  Handle(GEOM_Function) aFunction =
    aBlock->AddFunction(GEOMImpl_BlockDriver::GetID(), BLOCK_TWO_FACES);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BlockDriver::GetID()) return NULL;

  GEOMImpl_IBlocks aPI (aFunction);

  Handle(GEOM_Function) aRef1 = theFace1->GetLastFunction();
  Handle(GEOM_Function) aRef2 = theFace2->GetLastFunction();
  if (aRef1.IsNull() || aRef2.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aShapesSeq = new TColStd_HSequenceOfTransient;
  aShapesSeq->Append(aRef1);
  aShapesSeq->Append(aRef2);

  aPI.SetShapes(aShapesSeq);

  //Compute the Block value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Block driver failed to compute a block");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aBlock << " = MakeHexa2Faces("
                               << theFace1 << ", " << theFace2 << ")";

  SetErrorCode(GEOM_OK);
  return aBlock;
}

//=============================================================================
/*!
 *  MakeBlockCompound
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::MakeBlockCompound
                                              (Handle(GEOM_Object) theCompound)
{
  SetErrorCode(GEOM_KO);

  if (theCompound.IsNull()) return NULL;

  //Add a new object
  Handle(GEOM_Object) aBlockComp = GetEngine()->AddObject(GetDocID(), GEOM_COMPOUND);

  //Add a new BlocksComp function
  Handle(GEOM_Function) aFunction =
    aBlockComp->AddFunction(GEOMImpl_BlockDriver::GetID(), BLOCK_COMPOUND_GLUE);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BlockDriver::GetID()) return NULL;

  GEOMImpl_IBlocks aPI (aFunction);

  Handle(GEOM_Function) aRef1 = theCompound->GetLastFunction();
  if (aRef1.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aShapesSeq = new TColStd_HSequenceOfTransient;
  aShapesSeq->Append(aRef1);

  aPI.SetShapes(aShapesSeq);

  //Compute the Blocks Compound value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Block driver failed to compute a blocks compound");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aBlockComp
    << " = MakeBlockCompound(" << theCompound << ")";

  SetErrorCode(GEOM_OK);
  return aBlockComp;
}

//=============================================================================
/*!
 *  GetPoint
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetPoint
                                               (Handle(GEOM_Object) theShape,
												const Standard_Real theX,
												const Standard_Real theY,
												const Standard_Real theZ,
                                                const Standard_Real theEpsilon)
{
  SetErrorCode(GEOM_KO);

  //New Point object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theShape.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theShape->GetValue();
  if (aBlockOrComp.IsNull()) {
    SetErrorCode("Given shape is null");
    return NULL;
  }

  //Compute the Vertex value
  gp_Pnt P (theX, theY, theZ);
  Standard_Real eps = Max(theEpsilon, Precision::Confusion());

  TopoDS_Shape V;
  Standard_Integer isFound = 0;
  TopTools_MapOfShape mapShape;
  TopExp_Explorer exp (aBlockOrComp, TopAbs_VERTEX);

  for (; exp.More(); exp.Next()) {
    if (mapShape.Add(exp.Current())) {
      TopoDS_Vertex aVi = TopoDS::Vertex(exp.Current());
      gp_Pnt aPi = BRep_Tool::Pnt(aVi);
      if (aPi.Distance(P) < eps) {
        V = aVi;
        isFound++;
      }
    }
  }

  if (isFound == 0) {
    SetErrorCode("Vertex has not been found");
    return NULL;
  } else if (isFound > 1) {
    SetErrorCode("Multiple vertices found by the given coordinates and epsilon");
    return NULL;
  } else {
    TopTools_IndexedMapOfShape anIndices;
    TopExp::MapShapes(aBlockOrComp, anIndices);
    Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
    anArray->SetValue(1, anIndices.FindIndex(V));
    aResult = GetEngine()->AddSubShape(theShape, anArray);
  }

  //The GetPoint() doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction = theShape->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << aResult << " = GetPoint(" << theShape << ", "
    << theX << ", " << theY << ", " << theZ << ", " << theEpsilon << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetVertexNearPoint
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetVertexNearPoint
                                               (Handle(GEOM_Object) theShape,
                                                Handle(GEOM_Object) thePoint)
{
  SetErrorCode(GEOM_KO);

  // New Point object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theShape.IsNull() || thePoint.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theShape->GetValue();
  TopoDS_Shape aPoint       = thePoint->GetValue();
  if (aBlockOrComp.IsNull() || aPoint.IsNull()) {
    SetErrorCode("Given shape is null");
    return NULL;
  }

  if (aPoint.ShapeType() != TopAbs_VERTEX) {
    SetErrorCode("Element for vertex identification is not a vertex");
    return NULL;
  }

  TopoDS_Vertex aVert = TopoDS::Vertex(aPoint);
  gp_Pnt aP = BRep_Tool::Pnt(aVert);

  // Compute the Vertex value
  TopoDS_Shape V;
  bool isFound = false;
  Standard_Real aDist = RealLast();
  TopTools_MapOfShape mapShape;

  TopExp_Explorer exp (aBlockOrComp, TopAbs_VERTEX);
  for (; exp.More(); exp.Next()) {
    if (mapShape.Add(exp.Current())) {
      TopoDS_Vertex aVi = TopoDS::Vertex(exp.Current());
      gp_Pnt aPi = BRep_Tool::Pnt(aVi);
      Standard_Real aDisti = aPi.Distance(aP);
      if (aDisti < aDist) {
        V = aVi;
        aDist = aDisti;
        isFound = true;
      }
    }
  }

  if (!isFound) {
    SetErrorCode("Vertex has not been found");
    return NULL;
  }

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aBlockOrComp, anIndices);
  Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
  anArray->SetValue(1, anIndices.FindIndex(V));
  aResult = GetEngine()->AddSubShape(theShape, anArray);

  // The GetPoint() doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction = theShape->GetLastFunction();

  // Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << aResult << " = GetVertexNearPoint("
    << theShape << ", " << thePoint << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetEdge
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetEdge
                                                (Handle(GEOM_Object) theShape,
                                                 Handle(GEOM_Object) thePoint1,
                                                 Handle(GEOM_Object) thePoint2)
{
  SetErrorCode(GEOM_KO);

  //New Edge object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theShape.IsNull() || thePoint1.IsNull() || thePoint2.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theShape->GetValue();
  if (aBlockOrComp.IsNull()) {
    SetErrorCode("Given shape is null");
    return NULL;
  }

  TopoDS_Shape anArg1 = thePoint1->GetValue();
  TopoDS_Shape anArg2 = thePoint2->GetValue();
  if (anArg1.IsNull() || anArg2.IsNull()) {
    SetErrorCode("Null shape is given as argument");
    return NULL;
  }
  if (anArg1.ShapeType() != TopAbs_VERTEX ||
      anArg2.ShapeType() != TopAbs_VERTEX) {
    SetErrorCode("Element for edge identification is not a vertex");
    return NULL;
  }

  //Compute the Edge value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopTools_IndexedDataMapOfShapeListOfShape MVE;
    GEOMImpl_Block6Explorer::MapShapesAndAncestors
      (aBlockOrComp, TopAbs_VERTEX, TopAbs_EDGE, MVE);

    TopoDS_Shape V1,V2;
    Standard_Integer ish, ext = MVE.Extent();

    if (MVE.Contains(anArg1)) {
      V1 = anArg1;
    } else {
      for (ish = 1; ish <= ext; ish++) {
        TopoDS_Shape aShi = MVE.FindKey(ish);
        if (BRepTools::Compare(TopoDS::Vertex(anArg1), TopoDS::Vertex(aShi))) {
          V1 = aShi;
          break;
        }
      }
    }

    if (MVE.Contains(anArg2)) {
      V2 = anArg2;
    } else {
      for (ish = 1; ish <= ext; ish++) {
        TopoDS_Shape aShi = MVE.FindKey(ish);
        if (BRepTools::Compare(TopoDS::Vertex(anArg2), TopoDS::Vertex(aShi))) {
          V2 = aShi;
          break;
        }
      }
    }

    if (V1.IsNull() || V2.IsNull()) {
      SetErrorCode("The given vertex does not belong to the shape");
      return NULL;
    }

    TopoDS_Shape anEdge;
    Standard_Integer isFound =
      GEOMImpl_Block6Explorer::FindEdge(anEdge, V1, V2, MVE, Standard_True);
    if (isFound == 0) {
      SetErrorCode("The given vertices do not belong to one edge of the given shape");
      return NULL;
    } else if (isFound > 1) {
      SetErrorCode("Multiple edges found by the given vertices of the shape");
      return NULL;
    } else {
      TopTools_IndexedMapOfShape anIndices;
      TopExp::MapShapes(aBlockOrComp, anIndices);
      Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
      anArray->SetValue(1, anIndices.FindIndex(anEdge));
      aResult = GetEngine()->AddSubShape(theShape, anArray);
    }
  } catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aResult << " = GetEdge("
    << theShape << ", " << thePoint1 << ", " << thePoint2 << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetEdgeNearPoint
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetEdgeNearPoint
                                                (Handle(GEOM_Object) theShape,
                                                 Handle(GEOM_Object) thePoint)
{
  SetErrorCode(GEOM_KO);

  //New object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theShape.IsNull() || thePoint.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theShape->GetValue();
  if (aBlockOrComp.IsNull()) {
    SetErrorCode("Given shape is null");
    return NULL;
  }

  TopoDS_Shape anArg = thePoint->GetValue();
  if (anArg.IsNull()) {
    SetErrorCode("Null shape is given as argument");
    return NULL;
  }
  if (anArg.ShapeType() != TopAbs_VERTEX) {
    SetErrorCode("Element for edge identification is not a vertex");
    return NULL;
  }

  //Compute the Edge value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopoDS_Shape aShape;

    TopoDS_Vertex aVert = TopoDS::Vertex(anArg);

    // 1. Explode blocks on edges
    TopTools_MapOfShape mapShape;
    Standard_Integer nbEdges = 0;
    TopExp_Explorer exp (aBlockOrComp, TopAbs_EDGE);
    for (; exp.More(); exp.Next()) {
      if (mapShape.Add(exp.Current())) {
        nbEdges++;
      }
    }

    if (nbEdges == 0) {
      SetErrorCode("Given shape contains no edges");
      return NULL;
    }

    mapShape.Clear();
    Standard_Integer ind = 1;
    TopTools_Array1OfShape anEdges (1, nbEdges);
    TColStd_Array1OfReal aDistances (1, nbEdges);
    for (exp.Init(aBlockOrComp, TopAbs_EDGE); exp.More(); exp.Next()) {
      if (mapShape.Add(exp.Current())) {
        TopoDS_Shape anEdge = exp.Current();
        anEdges(ind) = anEdge;

        // 2. Classify the point relatively each edge
        BRepExtrema_DistShapeShape aDistTool (aVert, anEdges(ind));
        if (!aDistTool.IsDone()) {
          SetErrorCode("Can not find a distance from the given point to one of edges");
          return NULL;
        }
        aDistances(ind) = aDistTool.Value();
        ind++;
      }
    }

    // 3. Define edge, having minimum distance to the point
    Standard_Real nearest = RealLast(), nbFound = 0;
    Standard_Real prec = Precision::Confusion();
    for (ind = 1; ind <= nbEdges; ind++) {
      if (Abs(aDistances(ind) - nearest) < prec) {
        nbFound++;
      } else if (aDistances(ind) < nearest) {
        nearest = aDistances(ind);
        aShape = anEdges(ind);
        nbFound = 1;
      } else {
      }
    }
    if (nbFound > 1) {
      SetErrorCode("Multiple edges near the given point are found");
      return NULL;
    } else if (nbFound == 0) {
      SetErrorCode("There are no edges near the given point");
      return NULL;
    } else {
      TopTools_IndexedMapOfShape anIndices;
      TopExp::MapShapes(aBlockOrComp, anIndices);
      Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
      anArray->SetValue(1, anIndices.FindIndex(aShape));
      aResult = GetEngine()->AddSubShape(theShape, anArray);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aResult << " = GetEdgeNearPoint("
                               << theShape << ", " << thePoint << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetFaceByPoints
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetFaceByPoints
                                                (Handle(GEOM_Object) theShape,
                                                 Handle(GEOM_Object) thePoint1,
                                                 Handle(GEOM_Object) thePoint2,
                                                 Handle(GEOM_Object) thePoint3,
                                                 Handle(GEOM_Object) thePoint4)
{
  SetErrorCode(GEOM_KO);

  //New object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theShape.IsNull() ||
      thePoint1.IsNull() || thePoint2.IsNull() ||
      thePoint3.IsNull() || thePoint4.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theShape->GetValue();
  if (aBlockOrComp.IsNull()) {
    SetErrorCode("Block or compound is null");
    return NULL;
  }

  TopoDS_Shape anArg1 = thePoint1->GetValue();
  TopoDS_Shape anArg2 = thePoint2->GetValue();
  TopoDS_Shape anArg3 = thePoint3->GetValue();
  TopoDS_Shape anArg4 = thePoint4->GetValue();
  if (anArg1.IsNull() || anArg2.IsNull() ||
      anArg3.IsNull() || anArg4.IsNull()) {
    SetErrorCode("Null shape is given as argument");
    return NULL;
  }
  if (anArg1.ShapeType() != TopAbs_VERTEX ||
      anArg2.ShapeType() != TopAbs_VERTEX ||
      anArg3.ShapeType() != TopAbs_VERTEX ||
      anArg4.ShapeType() != TopAbs_VERTEX) {
    SetErrorCode("Element for face identification is not a vertex");
    return NULL;
  }

  //Compute the Face value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopoDS_Shape aShape;

    TopTools_IndexedDataMapOfShapeListOfShape MVF;
    GEOMImpl_Block6Explorer::MapShapesAndAncestors(aBlockOrComp, TopAbs_VERTEX, TopAbs_FACE, MVF);

    TopoDS_Shape V1,V2,V3,V4;
    Standard_Integer ish, ext = MVF.Extent();

    if (MVF.Contains(anArg1)) {
      V1 = anArg1;
    } else {
      for (ish = 1; ish <= ext; ish++) {
        TopoDS_Shape aShi = MVF.FindKey(ish);
        if (BRepTools::Compare(TopoDS::Vertex(anArg1), TopoDS::Vertex(aShi))) {
          V1 = aShi;
          break;
        }
      }
    }

    if (MVF.Contains(anArg2)) {
      V2 = anArg2;
    } else {
      for (ish = 1; ish <= ext; ish++) {
        TopoDS_Shape aShi = MVF.FindKey(ish);
        if (BRepTools::Compare(TopoDS::Vertex(anArg2), TopoDS::Vertex(aShi))) {
          V2 = aShi;
          break;
        }
      }
    }

    if (MVF.Contains(anArg3)) {
      V3 = anArg3;
    } else {
      for (ish = 1; ish <= ext; ish++) {
        TopoDS_Shape aShi = MVF.FindKey(ish);
        if (BRepTools::Compare(TopoDS::Vertex(anArg3), TopoDS::Vertex(aShi))) {
          V3 = aShi;
          break;
        }
      }
    }

    if (MVF.Contains(anArg4)) {
      V4 = anArg4;
    } else {
      for (ish = 1; ish <= ext; ish++) {
        TopoDS_Shape aShi = MVF.FindKey(ish);
        if (BRepTools::Compare(TopoDS::Vertex(anArg4), TopoDS::Vertex(aShi))) {
          V4 = aShi;
          break;
        }
      }
    }

    if (V1.IsNull() || V2.IsNull() || V3.IsNull() || V4.IsNull()) {
      SetErrorCode("The given vertex does not belong to the shape");
      return NULL;
    }

    Standard_Integer isFound =
      GEOMImpl_Block6Explorer::FindFace(aShape, V1, V2, V3, V4, MVF, Standard_True);
    if (isFound == 0) {
      SetErrorCode("The given vertices do not belong to one face of the given shape");
      return NULL;
    } else if (isFound > 1) {
      SetErrorCode("The given vertices belong to several faces of the given shape");
      return NULL;
    } else {
      TopTools_IndexedMapOfShape anIndices;
      TopExp::MapShapes(aBlockOrComp, anIndices);
      Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
      anArray->SetValue(1, anIndices.FindIndex(aShape));
      aResult = GetEngine()->AddSubShape(theShape, anArray);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aResult << " = GetFaceByPoints("
    << theShape << ", " << thePoint1 << ", " << thePoint2
      << ", " << thePoint3 << ", " << thePoint4 << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetFaceByEdges
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetFaceByEdges
                                                (Handle(GEOM_Object) theShape,
                                                 Handle(GEOM_Object) theEdge1,
                                                 Handle(GEOM_Object) theEdge2)
{
  SetErrorCode(GEOM_KO);

  //New object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theShape.IsNull() || theEdge1.IsNull() || theEdge2.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theShape->GetValue();
  if (aBlockOrComp.IsNull()) {
    SetErrorCode("Block or compound is null");
    return NULL;
  }

  TopoDS_Shape anArg1 = theEdge1->GetValue();
  TopoDS_Shape anArg2 = theEdge2->GetValue();
  if (anArg1.IsNull() || anArg2.IsNull()) {
    SetErrorCode("Null shape is given as argument");
    return NULL;
  }
  if (anArg1.ShapeType() != TopAbs_EDGE ||
      anArg2.ShapeType() != TopAbs_EDGE) {
    SetErrorCode("Element for face identification is not an edge");
    return NULL;
  }

  //Compute the Face value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopoDS_Shape aShape;

    TopTools_IndexedDataMapOfShapeListOfShape MEF;
    GEOMImpl_Block6Explorer::MapShapesAndAncestors(aBlockOrComp, TopAbs_EDGE, TopAbs_FACE, MEF);

    TopoDS_Shape E1,E2;
    Standard_Integer ish, ext = MEF.Extent();

    if (MEF.Contains(anArg1)) {
      E1 = anArg1;
    } else {
      for (ish = 1; ish <= ext; ish++) {
        TopoDS_Shape aShi = MEF.FindKey(ish);
        if (GEOMImpl_Block6Explorer::IsSimilarEdges(anArg1, aShi)) {
          E1 = aShi;
        }
      }
    }

    if (MEF.Contains(anArg2)) {
      E2 = anArg2;
    } else {
      for (ish = 1; ish <= ext; ish++) {
        TopoDS_Shape aShi = MEF.FindKey(ish);
        if (GEOMImpl_Block6Explorer::IsSimilarEdges(anArg2, aShi)) {
          E2 = aShi;
        }
      }
    }

    if (E1.IsNull() || E2.IsNull()) {
      SetErrorCode("The given edge does not belong to the shape");
      return NULL;
    }

    const TopTools_ListOfShape& aFacesOfE1 = MEF.FindFromKey(E1);
    const TopTools_ListOfShape& aFacesOfE2 = MEF.FindFromKey(E2);

    Standard_Integer isFound = 0;
    TopTools_ListIteratorOfListOfShape anIterF1 (aFacesOfE1);
    for (; anIterF1.More(); anIterF1.Next()) {

      TopTools_ListIteratorOfListOfShape anIterF2 (aFacesOfE2);
      for (; anIterF2.More(); anIterF2.Next()) {

        if (anIterF1.Value().IsSame(anIterF2.Value())) {
          isFound++;

          // Store the face, defined by two edges
          aShape = anIterF1.Value();
        }
      }
    }
    if (isFound == 0) {
      SetErrorCode("The given edges do not belong to one face of the given shape");
      return NULL;
    } else if (isFound > 1) {
      SetErrorCode("The given edges belong to several faces of the given shape");
      return NULL;
    } else {
      TopTools_IndexedMapOfShape anIndices;
      TopExp::MapShapes(aBlockOrComp, anIndices);
      Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
      anArray->SetValue(1, anIndices.FindIndex(aShape));
      aResult = GetEngine()->AddSubShape(theShape, anArray);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aResult << " = GetFaceByEdges("
    << theShape << ", " << theEdge1 << ", " << theEdge2 << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetOppositeFace
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetOppositeFace
                                                (Handle(GEOM_Object) theShape,
                                                 Handle(GEOM_Object) theFace)
{
  SetErrorCode(GEOM_KO);

  //New object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theShape.IsNull() || theFace.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theShape->GetValue();
  if (aBlockOrComp.IsNull()) {
    SetErrorCode("Block is null");
    return NULL;
  }
  if (aBlockOrComp.ShapeType() != TopAbs_SOLID) {
    SetErrorCode("Shape is not a block");
    return NULL;
  }

  TopoDS_Shape anArg = theFace->GetValue();
  if (anArg.IsNull()) {
    SetErrorCode("Null shape is given as argument");
    return NULL;
  }
  if (anArg.ShapeType() != TopAbs_FACE) {
    SetErrorCode("Element for face identification is not a face");
    return NULL;
  }

  //Compute the Face value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopoDS_Shape aShape;

    GEOMImpl_Block6Explorer aBlockTool;
    aBlockTool.InitByBlockAndFace(aBlockOrComp, anArg);
    aShape = aBlockTool.GetFace(2);

    TopTools_IndexedMapOfShape anIndices;
    TopExp::MapShapes(aBlockOrComp, anIndices);
    Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
    anArray->SetValue(1, anIndices.FindIndex(aShape));
    aResult = GetEngine()->AddSubShape(theShape, anArray);
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aResult << " = GetOppositeFace("
                               << theShape << ", " << theFace << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetFaceNearPoint
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetFaceNearPoint
                                                (Handle(GEOM_Object) theShape,
                                                 Handle(GEOM_Object) thePoint)
{
  SetErrorCode(GEOM_KO);

  //New object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theShape.IsNull() || thePoint.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theShape->GetValue();
  if (aBlockOrComp.IsNull()) {
    SetErrorCode("Block or compound is null");
    return NULL;
  }

  TopoDS_Shape anArg = thePoint->GetValue();
  if (anArg.IsNull()) {
    SetErrorCode("Null shape is given as argument");
    return NULL;
  }
  if (anArg.ShapeType() != TopAbs_VERTEX) {
    SetErrorCode("Element for face identification is not a vertex");
    return NULL;
  }

  //Compute the Face value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopoDS_Shape aShape;

    TopoDS_Vertex aVert = TopoDS::Vertex(anArg);
    gp_Pnt aPnt = BRep_Tool::Pnt(aVert);
    Standard_Real PX, PY, PZ;
    aPnt.Coord(PX, PY, PZ);

    // 1. Classify the point relatively each face
    Standard_Integer nearest = 2, nbFound = 0;
    TopTools_DataMapOfShapeInteger mapShapeDist;
    TopExp_Explorer exp (aBlockOrComp, TopAbs_FACE);
    for (; exp.More(); exp.Next()) {
      TopoDS_Shape aFace = exp.Current();

      if (!mapShapeDist.IsBound(aFace)) {
        Standard_Integer aDistance = 2;

        // 1.a. Classify relatively Surface
        Handle(Geom_Surface) aSurf = BRep_Tool::Surface(TopoDS::Face(aFace));
        Handle(ShapeAnalysis_Surface) aSurfAna = new ShapeAnalysis_Surface (aSurf);
        gp_Pnt2d p2dOnSurf = aSurfAna->ValueOfUV(aPnt, Precision::Confusion());
        gp_Pnt p3dOnSurf = aSurfAna->Value(p2dOnSurf);
        Standard_Real aDist = p3dOnSurf.Distance(aPnt);
        if (aDist > Precision::Confusion()) {
          // OUT of Surface
          aDistance = 1;
        } else {
          // 1.b. Classify relatively the face itself
          BRepClass_FaceClassifier FC (TopoDS::Face(aFace), p2dOnSurf, Precision::Confusion());
          if (FC.State() == TopAbs_IN) {
            aDistance = -1;
          } else if (FC.State() == TopAbs_ON) {
            aDistance = 0;
          } else { // OUT
            aDistance = 1;
          }
        }

        if (aDistance < nearest) {
          nearest = aDistance;
          aShape = aFace;
          nbFound = 1;

          // A first found face, containing the point inside, will be returned.
          // It is the solution, if there are no
          // coincident or intersecting faces in the compound.
          if (nearest == -1) break;

        } else if (aDistance == nearest) {
          nbFound++;
        } else {
        }

        mapShapeDist.Bind(aFace, aDistance);
      } // if (!mapShapeDist.IsBound(aFace))
    }

    // 2. Define face, containing the point or having minimum distance to it
    if (nbFound > 1) {
      if (nearest == 0) {
        // The point is on boundary of some faces and there are
        // no faces, having the point inside
        SetErrorCode("Multiple faces near the given point are found");
        return NULL;

      } else if (nearest == 1) {
        // The point is outside some faces and there are
        // no faces, having the point inside or on boundary.
        // We will get a nearest face
        Standard_Real bigReal = RealLast();
        Standard_Real minDist = bigReal;
        TopTools_DataMapIteratorOfDataMapOfShapeInteger mapShapeDistIter (mapShapeDist);
        for (; mapShapeDistIter.More(); mapShapeDistIter.Next()) {
          if (mapShapeDistIter.Value() == 1) {
            TopoDS_Shape aFace = mapShapeDistIter.Key();
            Standard_Real aDist = bigReal;

            // 2.a. Fast check of distance - if point projection on surface is on face
            Handle(Geom_Surface) aSurf = BRep_Tool::Surface(TopoDS::Face(aFace));
            Handle(ShapeAnalysis_Surface) aSurfAna = new ShapeAnalysis_Surface (aSurf);
            gp_Pnt2d p2dOnSurf = aSurfAna->ValueOfUV(aPnt, Precision::Confusion());
            gp_Pnt p3dOnSurf = aSurfAna->Value(p2dOnSurf);
            aDist = p3dOnSurf.Distance(aPnt);

            BRepClass_FaceClassifier FC (TopoDS::Face(aFace), p2dOnSurf, Precision::Confusion());
            if (FC.State() == TopAbs_OUT) {
              if (aDist < minDist) {
                // 2.b. Slow check - if point projection on surface is outside of face
                BRepExtrema_DistShapeShape aDistTool (aVert, aFace);
                if (!aDistTool.IsDone()) {
                  SetErrorCode("Can not find a distance from the given point to one of faces");
                  return NULL;
                }
                aDist = aDistTool.Value();
              } else {
                aDist = bigReal;
              }
            }

            if (aDist < minDist) {
              minDist = aDist;
              aShape = aFace;
            }
          }
        }
      } else { // nearest == -1
//        // The point is inside some faces.
//        // We will get a face with nearest center
//        Standard_Real minDist = RealLast();
//        TopTools_DataMapIteratorOfDataMapOfShapeInteger mapShapeDistIter (mapShapeDist);
//        for (; mapShapeDistIter.More(); mapShapeDistIter.Next()) {
//          if (mapShapeDistIter.Value() == -1) {
//            TopoDS_Shape aFace = mapShapeDistIter.Key();
//            GProp_GProps aSystem;
//            BRepGProp::SurfaceProperties(aFace, aSystem);
//            gp_Pnt aCenterMass = aSystem.CentreOfMass();
//
//            Standard_Real aDist = aCenterMass.Distance(aPnt);
//            if (aDist < minDist) {
//              minDist = aDist;
//              aShape = aFace;
//            }
//          }
//        }
      }
    } // if (nbFound > 1)

    if (nbFound == 0) {
      SetErrorCode("There are no faces near the given point");
      return NULL;
    } else {
      TopTools_IndexedMapOfShape anIndices;
      TopExp::MapShapes(aBlockOrComp, anIndices);
      Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
      anArray->SetValue(1, anIndices.FindIndex(aShape));
      aResult = GetEngine()->AddSubShape(theShape, anArray);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aResult << " = GetFaceNearPoint("
                               << theShape << ", " << thePoint << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetFaceByNormale
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetFaceByNormale
                                                (Handle(GEOM_Object) theShape,
                                                 Handle(GEOM_Object) theVector)
{
  SetErrorCode(GEOM_KO);

  //New object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theShape.IsNull() || theVector.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theShape->GetValue();
  if (aBlockOrComp.IsNull()) {
    SetErrorCode("Block or compound is null");
    return NULL;
  }

  TopoDS_Shape anArg = theVector->GetValue();
  if (anArg.IsNull()) {
    SetErrorCode("Null shape is given as argument");
    return NULL;
  }
  if (anArg.ShapeType() != TopAbs_EDGE) {
    SetErrorCode("Element for normale identification is not an edge");
    return NULL;
  }

  //Compute the Face value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopoDS_Shape aShape;

    TopoDS_Edge anEdge = TopoDS::Edge(anArg);
    TopoDS_Vertex V1, V2;
    TopExp::Vertices(anEdge, V1, V2, Standard_True);
    gp_Pnt P1 = BRep_Tool::Pnt(V1);
    gp_Pnt P2 = BRep_Tool::Pnt(V2);
    gp_Vec aVec (P1, P2);
    if (aVec.Magnitude() < Precision::Confusion()) {
      SetErrorCode("Vector with null magnitude is given");
      return NULL;
    }

    Standard_Real minAngle = RealLast();
    TopTools_MapOfShape mapShape;
    TopExp_Explorer exp (aBlockOrComp, TopAbs_FACE);
    for (; exp.More(); exp.Next()) {
      if (mapShape.Add(exp.Current())) {
        TopoDS_Face aFace = TopoDS::Face(exp.Current());
        BRepAdaptor_Surface SF (aFace);

        Standard_Real u, v, x;

        // find a point on the surface to get normal direction in
        u = SF.FirstUParameter();
        x = SF.LastUParameter();
        if (Precision::IsInfinite(u)) {
          u =  (Precision::IsInfinite(x)) ? 0. : x;
        } else if (!Precision::IsInfinite(x)) {
          u = (u+x) / 2.;
        }

        v = SF.FirstVParameter();
        x = SF.LastVParameter();
        if (Precision::IsInfinite(v)) {
          v =  (Precision::IsInfinite(x)) ? 0. : x;
        } else if (!Precision::IsInfinite(x)) {
          v = (v+x) / 2.;
        }

        // compute the normal direction
        gp_Vec Vec1,Vec2;
        SF.D1(u,v,P1,Vec1,Vec2);
        gp_Vec V = Vec1.Crossed(Vec2);
        x = V.Magnitude();
        if (V.Magnitude() < Precision::Confusion()) {
          SetErrorCode("Normal vector of a face has null magnitude");
          return NULL;
        }

        // consider the face orientation
        if (aFace.Orientation() == TopAbs_REVERSED ||
            aFace.Orientation() == TopAbs_INTERNAL) {
          V = - V;
        }

        // compute the angle and compare with the minimal one
        Standard_Real anAngle = aVec.Angle(V);
        if (anAngle < minAngle) {
          minAngle = anAngle;
          aShape = aFace;
        }
      }
    }

    if (aShape.IsNull()) {
      SetErrorCode("Failed to find a face by the given normale");
      return NULL;
    } else {
      TopTools_IndexedMapOfShape anIndices;
      TopExp::MapShapes(aBlockOrComp, anIndices);
      Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
      anArray->SetValue(1, anIndices.FindIndex(aShape));
      aResult = GetEngine()->AddSubShape(theShape, anArray);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aResult << " = GetFaceByNormale("
    << theShape << ", " << theVector << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetShapesNearPoint
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetShapesNearPoint
                                         (Handle(GEOM_Object)    theShape,
                                          Handle(GEOM_Object)    thePoint,
                                          const Standard_Integer theShapeType,
                                          const Standard_Real    theConstTolerance)
{
  SetErrorCode(GEOM_KO);

  // New object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theShape.IsNull() || thePoint.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theShape->GetValue();
  if (aBlockOrComp.IsNull()) {
    SetErrorCode("Block or compound is null");
    return NULL;
  }

  TopoDS_Shape anArg = thePoint->GetValue();
  if (anArg.IsNull()) {
    SetErrorCode("Null shape is given as argument");
    return NULL;
  }
  if (anArg.ShapeType() != TopAbs_VERTEX) {
    SetErrorCode("Element for face identification is not a vertex");
    return NULL;
  }

  if (theShapeType < TopAbs_SOLID || TopAbs_VERTEX < theShapeType) {
    SetErrorCode("Invalid type of result is requested");
    return NULL;
  }

  Standard_Real theTolerance = theConstTolerance;
  if (theTolerance < Precision::Confusion()) {
    theTolerance = Precision::Confusion();
  }

  // Compute the result
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopoDS_Vertex aVert = TopoDS::Vertex(anArg);

    TopTools_MapOfShape mapShape;
    Standard_Integer nbEdges = 0;
    TopExp_Explorer exp (aBlockOrComp, TopAbs_ShapeEnum(theShapeType));
    for (; exp.More(); exp.Next()) {
      if (mapShape.Add(exp.Current())) {
        nbEdges++;
      }
    }

    if (nbEdges == 0) {
      SetErrorCode("Given shape contains no subshapes of requested type");
      return NULL;
    }

    // Calculate distances and find min
    mapShape.Clear();
    Standard_Integer ind = 1;
    Standard_Real aMinDist = RealLast();
    TopTools_Array1OfShape anEdges (1, nbEdges);
    TColStd_Array1OfReal aDistances (1, nbEdges);
    for (exp.Init(aBlockOrComp, TopAbs_ShapeEnum(theShapeType)); exp.More(); exp.Next()) {
      if (mapShape.Add(exp.Current())) {
        TopoDS_Shape anEdge = exp.Current();
        anEdges(ind) = anEdge;

        BRepExtrema_DistShapeShape aDistTool (aVert, anEdges(ind));
        if (!aDistTool.IsDone()) {
          SetErrorCode("Can not find a distance from the given point to one of subshapes");
          return NULL;
        }
        aDistances(ind) = aDistTool.Value();
        if (aDistances(ind) < aMinDist) {
          aMinDist = aDistances(ind);
        }
        ind++;
      }
    }

    if (aMinDist < RealLast()) {
      // Collect subshapes with distance < (aMinDist + theTolerance)
      int nbSubShapes = 0;
      TopTools_Array1OfShape aNearShapes (1, nbEdges);
      for (ind = 1; ind <= nbEdges; ind++) {
        if (aDistances(ind) < aMinDist + theTolerance) {
          nbSubShapes++;
          aNearShapes(nbSubShapes) = anEdges(ind);
        }
      }

      // Add subshape
      TopTools_IndexedMapOfShape anIndices;
      TopExp::MapShapes(aBlockOrComp, anIndices);
      Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger (1, nbSubShapes);
      for (ind = 1; ind <= nbSubShapes; ind++) {
        anArray->SetValue(ind, anIndices.FindIndex(aNearShapes(ind)));
      }
      aResult = GetEngine()->AddSubShape(theShape, anArray);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  if (aResult.IsNull())
    return NULL;

  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction)
    << aResult << " = GetShapesNearPoint(" << theShape << ", " << thePoint
    << ", " << TopAbs_ShapeEnum(theShapeType) << ", " << theTolerance << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  IsCompoundOfBlocks
 */
//=============================================================================
Standard_Boolean GEOMImpl_IBlocksOperations::IsCompoundOfBlocks
                                                (Handle(GEOM_Object)    theCompound,
                                                 const Standard_Integer theMinNbFaces,
                                                 const Standard_Integer theMaxNbFaces,
                                                 Standard_Integer&      theNbBlocks)
{
  SetErrorCode(GEOM_KO);
  Standard_Boolean isCompOfBlocks = Standard_False;
  theNbBlocks = 0;

  if (theCompound.IsNull()) return isCompOfBlocks;
  TopoDS_Shape aBlockOrComp = theCompound->GetValue();

  //Check
  isCompOfBlocks = Standard_True;
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopTools_MapOfShape mapShape;
    TopExp_Explorer exp (aBlockOrComp, TopAbs_SOLID);
    for (; exp.More(); exp.Next()) {
      if (mapShape.Add(exp.Current())) {
        TopoDS_Shape aSolid = exp.Current();

        TopTools_MapOfShape mapFaces;
        TopExp_Explorer expF (aSolid, TopAbs_FACE);
        Standard_Integer nbFaces = 0;
        for (; expF.More(); expF.Next()) {
          if (mapFaces.Add(expF.Current())) {
            nbFaces++;
            if (nbFaces > theMaxNbFaces) {
              isCompOfBlocks = Standard_False;
              break;
            }
          }
        }
        if (nbFaces < theMinNbFaces || theMaxNbFaces < nbFaces) {
          isCompOfBlocks = Standard_False;
        } else {
          theNbBlocks++;
        }
      }
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return isCompOfBlocks;
  }

  SetErrorCode(GEOM_OK);
  return isCompOfBlocks;
}

//=============================================================================
/*!
 *  Set of functions, used by CheckCompoundOfBlocks() method
 */
//=============================================================================
void GEOMImpl_IBlocksOperations::AddBlocksFrom (const TopoDS_Shape&   theShape,
                                                TopTools_ListOfShape& BLO,
                                                TopTools_ListOfShape& NOT,
                                                TopTools_ListOfShape& EXT)
{
  TopAbs_ShapeEnum aType = theShape.ShapeType();
  switch (aType) {
  case TopAbs_COMPOUND:
  case TopAbs_COMPSOLID:
    {
      TopoDS_Iterator It (theShape);
      for (; It.More(); It.Next()) {
        AddBlocksFrom(It.Value(), BLO, NOT, EXT);
      }
    }
    break;
  case TopAbs_SOLID:
    {
      // Check, if there are seam or degenerated edges
      BlockFix_CheckTool aTool;
      aTool.SetShape(theShape);
      aTool.Perform();
      if (aTool.NbPossibleBlocks() > 0) {
        EXT.Append(theShape);
      } else {
        // Count faces and edges in each face to recognize blocks
        TopTools_MapOfShape mapFaces;
        Standard_Integer nbFaces = 0;
        Standard_Boolean hasNonQuadr = Standard_False;
        TopExp_Explorer expF (theShape, TopAbs_FACE);

        for (; expF.More(); expF.Next()) {
          if (mapFaces.Add(expF.Current())) {
            nbFaces++;
            if (nbFaces > 6) break;

            // get wire
            TopoDS_Shape aF = expF.Current();
            TopExp_Explorer wires (aF, TopAbs_WIRE);
            if (!wires.More()) {
              // no wire in the face
              hasNonQuadr = Standard_True;
              break;
            }
            TopoDS_Shape aWire = wires.Current();
            wires.Next();
            if (wires.More()) {
              // multiple wires in the face
              hasNonQuadr = Standard_True;
              break;
            }

            // Check number of edges in the face
            Standard_Integer nbEdges = 0;
            TopTools_MapOfShape mapEdges;
            TopExp_Explorer expW (aWire, TopAbs_EDGE);
            for (; expW.More(); expW.Next()) {
              if (mapEdges.Add(expW.Current())) {
                nbEdges++;
                if (nbEdges > 4) break;
              }
            }
            if (nbEdges != 4) {
              hasNonQuadr = Standard_True;
            }
          }
        }

        if (nbFaces == 6 && !hasNonQuadr) {
          BLO.Append(theShape);
        } else {
          NOT.Append(theShape);
        }
      }
    }
    break;
  default:
    NOT.Append(theShape);
  }
}

void AddBlocksFromOld (const TopoDS_Shape&   theShape,
                       TopTools_ListOfShape& BLO,
                       TopTools_ListOfShape& NOT,
                       TopTools_ListOfShape& DEG,
                       TopTools_ListOfShape& SEA)
{
  TopAbs_ShapeEnum aType = theShape.ShapeType();
  switch (aType) {
  case TopAbs_COMPOUND:
  case TopAbs_COMPSOLID:
    {
      TopoDS_Iterator It (theShape);
      for (; It.More(); It.Next()) {
        AddBlocksFromOld(It.Value(), BLO, NOT, DEG, SEA);
      }
    }
    break;
  case TopAbs_SOLID:
    {
      TopTools_MapOfShape mapFaces;
      TopExp_Explorer expF (theShape, TopAbs_FACE);
      Standard_Integer nbFaces = 0;
      Standard_Boolean hasNonQuadr = Standard_False;
      Standard_Boolean hasDegenerated = Standard_False;
      Standard_Boolean hasSeam = Standard_False;
      for (; expF.More(); expF.Next()) {
        if (mapFaces.Add(expF.Current())) {
          nbFaces++;
          if (nbFaces > 6) break;

          // Check number of edges in the face
          Standard_Integer nbEdges = 0;
          TopTools_MapOfShape mapEdges;

          // get wire
          TopoDS_Shape aF = expF.Current();
          TopExp_Explorer wires (aF, TopAbs_WIRE);
          if (!wires.More()) {
            // no wire in the face
            hasNonQuadr = Standard_True;
            break;
          }
          TopoDS_Shape aWire = wires.Current();
          wires.Next();
          if (wires.More()) {
            // multiple wires in the face
            hasNonQuadr = Standard_True;
            break;
          }

          // iterate on wire
          BRepTools_WireExplorer aWE (TopoDS::Wire(aWire), TopoDS::Face(aF));
          for (; aWE.More(); aWE.Next(), nbEdges++) {
            if (BRep_Tool::Degenerated(aWE.Current())) {
              // degenerated edge found
              hasDegenerated = Standard_True;
//              break;
            }
            if (mapEdges.Contains(aWE.Current())) {
              // seam edge found
              hasSeam = Standard_True;
//              break;
            }
            mapEdges.Add(aWE.Current());
          }
          if (nbEdges != 4) {
            hasNonQuadr = Standard_True;
          }
        }
      }
      if (nbFaces == 6) {
        if (hasDegenerated || hasSeam) {
          if (hasDegenerated) {
            DEG.Append(theShape);
          }
          if (hasSeam) {
            SEA.Append(theShape);
          }
        } else if (hasNonQuadr) {
          NOT.Append(theShape);
        } else {
          BLO.Append(theShape);
        }
      } else {
        NOT.Append(theShape);
      }
    }
    break;
  default:
    NOT.Append(theShape);
  }
}

#define REL_NOT_CONNECTED 0
#define REL_OK            1
#define REL_NOT_GLUED     2
#define REL_COLLISION_VV  3
#define REL_COLLISION_FF  4
#define REL_COLLISION_EE  5
#define REL_UNKNOWN       6

Standard_Integer BlocksRelation (const TopoDS_Shape& theBlock1,
                                 const TopoDS_Shape& theBlock2)
{
  // Compare bounding boxes before calling BRepExtrema_DistShapeShape
  Standard_Real Xmin1, Ymin1, Zmin1, Xmax1, Ymax1, Zmax1;
  Standard_Real Xmin2, Ymin2, Zmin2, Xmax2, Ymax2, Zmax2;
  Bnd_Box B1, B2;
  BRepBndLib::Add(theBlock1, B1);
  BRepBndLib::Add(theBlock2, B2);
  B1.Get(Xmin1, Ymin1, Zmin1, Xmax1, Ymax1, Zmax1);
  B2.Get(Xmin2, Ymin2, Zmin2, Xmax2, Ymax2, Zmax2);
  if (Xmax2 < Xmin1 || Xmax1 < Xmin2 ||
      Ymax2 < Ymin1 || Ymax1 < Ymin2 ||
      Zmax2 < Zmin1 || Zmax1 < Zmin2) {
    return REL_NOT_CONNECTED;
  }

  BRepExtrema_DistShapeShape dst (theBlock1, theBlock2);
  if (!dst.IsDone()) {
    return REL_UNKNOWN;
  }

  if (dst.Value() > Precision::Confusion()) {
    return REL_NOT_CONNECTED;
  }

  if (dst.InnerSolution()) {
    return REL_COLLISION_VV;
  }

  Standard_Integer nbSol = dst.NbSolution();
  Standard_Integer relation = REL_OK;
  Standard_Integer nbVerts = 0;
  Standard_Integer nbEdges = 0;
  Standard_Integer sol = 1;
  for (; sol <= nbSol; sol++) {
    BRepExtrema_SupportType supp1 = dst.SupportTypeShape1(sol);
    BRepExtrema_SupportType supp2 = dst.SupportTypeShape2(sol);
    if (supp1 == BRepExtrema_IsVertex && supp2 == BRepExtrema_IsVertex) {
      nbVerts++;
    } else if (supp1 == BRepExtrema_IsInFace || supp2 == BRepExtrema_IsInFace) {
      return REL_COLLISION_FF;
    } else if (supp1 == BRepExtrema_IsOnEdge && supp2 == BRepExtrema_IsOnEdge) {
      nbEdges++;
    } else if ((supp1 == BRepExtrema_IsOnEdge && supp2 == BRepExtrema_IsVertex) ||
               (supp2 == BRepExtrema_IsOnEdge && supp1 == BRepExtrema_IsVertex)) {
      relation = REL_COLLISION_EE;
    } else {
    }
  }

  if (relation != REL_OK) {
    return relation;
  }

  TColStd_Array1OfInteger vertSol (1, nbVerts);
  TopTools_Array1OfShape V1 (1, nbVerts);
  TopTools_Array1OfShape V2 (1, nbVerts);
  Standard_Integer ivs = 0;
  for (sol = 1; sol <= nbSol; sol++) {
    if (dst.SupportTypeShape1(sol) == BRepExtrema_IsVertex &&
        dst.SupportTypeShape2(sol) == BRepExtrema_IsVertex) {
      TopoDS_Vertex Vcur = TopoDS::Vertex(dst.SupportOnShape1(sol));
      // Check, that this vertex is far enough from other solution vertices.
      Standard_Integer ii = 1;
      for (; ii <= ivs; ii++) {
        if (BRepTools::Compare(TopoDS::Vertex(V1(ii)), Vcur)) {
          continue;
        }
      }
      ivs++;
      vertSol(ivs) = sol;
      V1(ivs) = Vcur;
      V2(ivs) = dst.SupportOnShape2(sol);
    }
  }

  // As we deal only with quadrangles,
  // 2, 3 or 4 vertex solutions can be found.
  if (ivs <= 1) {
    if (nbEdges > 0) {
      return REL_COLLISION_FF;
    }
    return REL_NOT_CONNECTED;
  }
  if (ivs > 4) {
    return REL_UNKNOWN;
  }

  // Check sharing of coincident entities.
  if (ivs == 2 || ivs == 3) {
    // Map vertices and edges of the blocks
    TopTools_IndexedDataMapOfShapeListOfShape MVE1, MVE2;
    GEOMImpl_Block6Explorer::MapShapesAndAncestors
      (theBlock1, TopAbs_VERTEX, TopAbs_EDGE, MVE1);
    GEOMImpl_Block6Explorer::MapShapesAndAncestors
      (theBlock2, TopAbs_VERTEX, TopAbs_EDGE, MVE2);

    if (ivs == 2) {
      // Find common edge
      TopoDS_Shape anEdge1, anEdge2;
      GEOMImpl_Block6Explorer::FindEdge(anEdge1, V1(1), V1(2), MVE1);
      if (anEdge1.IsNull()) return REL_UNKNOWN;

      GEOMImpl_Block6Explorer::FindEdge(anEdge2, V2(1), V2(2), MVE2);
      if (anEdge2.IsNull()) return REL_UNKNOWN;

      if (!anEdge1.IsSame(anEdge2)) return REL_NOT_GLUED;

    } else { // ivs == 3
      // Find common edges
      Standard_Integer e1_v1 = 1;
      Standard_Integer e1_v2 = 2;
      Standard_Integer e2_v1 = 3;
      Standard_Integer e2_v2 = 1;

      TopoDS_Shape anEdge11, anEdge12;
      GEOMImpl_Block6Explorer::FindEdge(anEdge11, V1(e1_v1), V1(e1_v2), MVE1);
      if (anEdge11.IsNull()) {
        e1_v2 = 3;
        e2_v1 = 2;
        GEOMImpl_Block6Explorer::FindEdge(anEdge11, V1(e1_v1), V1(e1_v2), MVE1);
        if (anEdge11.IsNull()) return REL_UNKNOWN;
      }
      GEOMImpl_Block6Explorer::FindEdge(anEdge12, V1(e2_v1), V1(e2_v2), MVE1);
      if (anEdge12.IsNull()) {
        e2_v2 = 5 - e2_v1;
        GEOMImpl_Block6Explorer::FindEdge(anEdge12, V1(e2_v1), V1(e2_v2), MVE1);
        if (anEdge12.IsNull()) return REL_UNKNOWN;
      }

      TopoDS_Shape anEdge21, anEdge22;
      GEOMImpl_Block6Explorer::FindEdge(anEdge21, V2(e1_v1), V2(e1_v2), MVE2);
      if (anEdge21.IsNull()) return REL_UNKNOWN;
      GEOMImpl_Block6Explorer::FindEdge(anEdge22, V2(e2_v1), V2(e2_v2), MVE2);
      if (anEdge22.IsNull()) return REL_UNKNOWN;

      // Check of edges coincidence (with some precision) have to be done here
      // if (!anEdge11.IsEqual(anEdge21)) return REL_UNKNOWN;
      // if (!anEdge12.IsEqual(anEdge22)) return REL_UNKNOWN;

      // Check of edges sharing
      if (!anEdge11.IsSame(anEdge21)) return REL_NOT_GLUED;
      if (!anEdge12.IsSame(anEdge22)) return REL_NOT_GLUED;
    }
  }

  if (ivs == 4) {
    // Map vertices and faces of the blocks
    TopTools_IndexedDataMapOfShapeListOfShape MVF1, MVF2;
    GEOMImpl_Block6Explorer::MapShapesAndAncestors
      (theBlock1, TopAbs_VERTEX, TopAbs_FACE, MVF1);
    GEOMImpl_Block6Explorer::MapShapesAndAncestors
      (theBlock2, TopAbs_VERTEX, TopAbs_FACE, MVF2);

    TopoDS_Shape aFace1, aFace2;
    GEOMImpl_Block6Explorer::FindFace(aFace1, V1(1), V1(2), V1(3), V1(4), MVF1);
    if (aFace1.IsNull()) return REL_UNKNOWN;
    GEOMImpl_Block6Explorer::FindFace(aFace2, V2(1), V2(2), V2(3), V2(4), MVF2);
    if (aFace2.IsNull()) return REL_UNKNOWN;

    // Check of faces coincidence (with some precision) have to be done here
    // if (!aFace1.IsEqual(aFace2)) return REL_UNKNOWN;

    // Check of faces sharing
    if (!aFace1.IsSame(aFace2)) return REL_NOT_GLUED;
  }

  return REL_OK;
}

void FindConnected (const Standard_Integer         theBlockIndex,
                    const TColStd_Array2OfInteger& theRelations,
                    TColStd_MapOfInteger&          theProcessedMap,
                    TColStd_MapOfInteger&          theConnectedMap)
{
  theConnectedMap.Add(theBlockIndex);
  theProcessedMap.Add(theBlockIndex);

  Standard_Integer nbBlocks = theRelations.ColLength();
  Standard_Integer col = 1;
  for (; col <= nbBlocks; col++) {
    if (theRelations(theBlockIndex, col) == REL_OK ||
        theRelations(theBlockIndex, col) == REL_NOT_GLUED) {
      if (!theProcessedMap.Contains(col)) {
        FindConnected(col, theRelations, theProcessedMap, theConnectedMap);
      }
    }
  }
}

Standard_Boolean HasAnyConnection (const Standard_Integer         theBlockIndex,
                                   const TColStd_MapOfInteger&    theWith,
                                   const TColStd_Array2OfInteger& theRelations,
                                   TColStd_MapOfInteger&          theProcessedMap)
{
  theProcessedMap.Add(theBlockIndex);

  Standard_Integer nbBlocks = theRelations.ColLength();
  Standard_Integer col = 1;
  for (; col <= nbBlocks; col++) {
    if (theRelations(theBlockIndex, col) != REL_NOT_CONNECTED) {
      if (!theProcessedMap.Contains(col)) {
        if (theWith.Contains(col))
          return Standard_True;
        if (HasAnyConnection(col, theWith, theRelations, theProcessedMap))
          return Standard_True;
      }
    }
  }

  return Standard_False;
}

//=============================================================================
/*!
 *  CheckCompoundOfBlocksOld
 */
//=============================================================================
Standard_Boolean GEOMImpl_IBlocksOperations::CheckCompoundOfBlocksOld
                                                (Handle(GEOM_Object) theCompound,
                                                 std::list<BCError>& theErrors)
{
  SetErrorCode(GEOM_KO);

  if (theCompound.IsNull()) return Standard_False;
  TopoDS_Shape aBlockOrComp = theCompound->GetValue();

  Standard_Boolean isCompOfBlocks = Standard_True;

  // Map sub-shapes and their indices
  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aBlockOrComp, anIndices);

  // 1. Report non-blocks
  TopTools_ListOfShape NOT; // Not blocks
  TopTools_ListOfShape DEG; // Hexahedral solids, having degenerated edges
  TopTools_ListOfShape SEA; // Hexahedral solids, having seam edges
  TopTools_ListOfShape BLO; // All blocks from the given compound
  AddBlocksFromOld(aBlockOrComp, BLO, NOT, DEG, SEA);

  if (NOT.Extent() > 0) {
    isCompOfBlocks = Standard_False;
    BCError anErr;
    anErr.error = NOT_BLOCK;
    TopTools_ListIteratorOfListOfShape it (NOT);
    for (; it.More(); it.Next()) {
      anErr.incriminated.push_back(anIndices.FindIndex(it.Value()));
    }
    theErrors.push_back(anErr);
  }

  if (DEG.Extent() > 0 || SEA.Extent() > 0) {
    isCompOfBlocks = Standard_False;
    BCError anErr;
    anErr.error = EXTRA_EDGE;

    TopTools_ListIteratorOfListOfShape itDEG (DEG);
    for (; itDEG.More(); itDEG.Next()) {
      anErr.incriminated.push_back(anIndices.FindIndex(itDEG.Value()));
    }

    TopTools_ListIteratorOfListOfShape itSEA (SEA);
    for (; itSEA.More(); itSEA.Next()) {
      anErr.incriminated.push_back(anIndices.FindIndex(itSEA.Value()));
    }

    theErrors.push_back(anErr);
  }

  Standard_Integer nbBlocks = BLO.Extent();
  if (nbBlocks == 0) {
    isCompOfBlocks = Standard_False;
    SetErrorCode(GEOM_OK);
    return isCompOfBlocks;
  }
  if (nbBlocks == 1) {
    SetErrorCode(GEOM_OK);
    return isCompOfBlocks;
  }

  // Convert list of blocks into array for easy and fast access
  Standard_Integer ibl = 1;
  TopTools_Array1OfShape aBlocks (1, nbBlocks);
  TopTools_ListIteratorOfListOfShape BLOit (BLO);
  for (; BLOit.More(); BLOit.Next(), ibl++) {
    aBlocks.SetValue(ibl, BLOit.Value());
  }

  // 2. Find relations between all blocks,
  //    report connection errors (NOT_GLUED and INVALID_CONNECTION)
  TColStd_Array2OfInteger aRelations (1, nbBlocks, 1, nbBlocks);
  aRelations.Init(REL_NOT_CONNECTED);

  Standard_Integer row = 1;
  for (row = 1; row <= nbBlocks; row++) {
    TopoDS_Shape aBlock = aBlocks.Value(row);

    Standard_Integer col = row + 1;
    for (; col <= nbBlocks; col++) {
      Standard_Integer aRel = BlocksRelation(aBlock, aBlocks.Value(col));
      if (aRel != REL_NOT_CONNECTED) {
        aRelations.SetValue(row, col, aRel);
        aRelations.SetValue(col, row, aRel);
        if (aRel == REL_NOT_GLUED) {
          // report connection error
          isCompOfBlocks = Standard_False;
          BCError anErr;
          anErr.error = NOT_GLUED;
          anErr.incriminated.push_back(anIndices.FindIndex(aBlocks.Value(row)));
          anErr.incriminated.push_back(anIndices.FindIndex(aBlocks.Value(col)));
          theErrors.push_back(anErr);
        } else if (aRel == REL_COLLISION_VV ||
                   aRel == REL_COLLISION_FF ||
                   aRel == REL_COLLISION_EE ||
                   aRel == REL_UNKNOWN) {
          // report connection error
          isCompOfBlocks = Standard_False;
          BCError anErr;
          anErr.error = INVALID_CONNECTION;
          anErr.incriminated.push_back(anIndices.FindIndex(aBlocks.Value(row)));
          anErr.incriminated.push_back(anIndices.FindIndex(aBlocks.Value(col)));
          theErrors.push_back(anErr);
        } else {
        }
      }
    }
  }

  // 3. Find largest set of connected (good connection or not glued) blocks
  TColStd_MapOfInteger aProcessedMap;
  TColStd_MapOfInteger aLargestSet;
  TColStd_MapOfInteger aCurrentSet;
  for (ibl = 1; ibl <= nbBlocks; ibl++) {
    if (!aProcessedMap.Contains(ibl)) {
      aCurrentSet.Clear();
      FindConnected(ibl, aRelations, aProcessedMap, aCurrentSet);
      if (aCurrentSet.Extent() > aLargestSet.Extent()) {
        aLargestSet = aCurrentSet;
      }
    }
  }

  // 4. Report all blocks, isolated from <aLargestSet>
  BCError anErr;
  anErr.error = NOT_CONNECTED;
  Standard_Boolean hasIsolated = Standard_False;
  for (ibl = 1; ibl <= nbBlocks; ibl++) {
    if (!aLargestSet.Contains(ibl)) {
      aProcessedMap.Clear();
      if (!HasAnyConnection(ibl, aLargestSet, aRelations, aProcessedMap)) {
        // report connection absence
        hasIsolated = Standard_True;
        anErr.incriminated.push_back(anIndices.FindIndex(aBlocks.Value(ibl)));
      }
    }
  }
  if (hasIsolated) {
    isCompOfBlocks = Standard_False;
    theErrors.push_back(anErr);
  }

  SetErrorCode(GEOM_OK);
  return isCompOfBlocks;
}

//=============================================================================
/*!
 *  PrintBCErrors
 */
//=============================================================================
TCollection_AsciiString GEOMImpl_IBlocksOperations::PrintBCErrors
                                                (Handle(GEOM_Object)  theCompound,
                                                 const std::list<BCError>& theErrors)
{
  TCollection_AsciiString aDescr;

  std::list<BCError>::const_iterator errIt = theErrors.begin();
  int i = 0;
  for (; errIt != theErrors.end(); i++, errIt++) {
    BCError errStruct = *errIt;

    switch (errStruct.error) {
    case NOT_BLOCK:
      aDescr += "\n\tNot a Blocks: ";
      break;
    case EXTRA_EDGE:
      aDescr += "\n\tHexahedral solids with degenerated and/or seam edges: ";
      break;
    case INVALID_CONNECTION:
      aDescr += "\n\tInvalid connection between two blocks: ";
      break;
    case NOT_CONNECTED:
      aDescr += "\n\tBlocks, not connected with main body: ";
      break;
    case NOT_GLUED:
      aDescr += "\n\tNot glued blocks: ";
      break;
    default:
      break;
    }

    std::list<int> sshList = errStruct.incriminated;
    std::list<int>::iterator sshIt = sshList.begin();
    int jj = 0;
    for (; sshIt != sshList.end(); jj++, sshIt++) {
      if (jj > 0)
        aDescr += ", ";
      aDescr += TCollection_AsciiString(*sshIt);
    }
  }

  return aDescr;
}

//=============================================================================
/*!
 *  CheckCompoundOfBlocks
 */
//=============================================================================
Standard_Boolean GEOMImpl_IBlocksOperations::CheckCompoundOfBlocks
                                              (Handle(GEOM_Object) theCompound,
                                               std::list<BCError>&      theErrors)
{
  SetErrorCode(GEOM_KO);

  if (theCompound.IsNull()) return Standard_False;
  TopoDS_Shape aBlockOrComp = theCompound->GetValue();

  Standard_Boolean isCompOfBlocks = Standard_True;

  // Map sub-shapes and their indices
  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aBlockOrComp, anIndices);

  // 1. Separate blocks from non-blocks
  TopTools_ListOfShape NOT; // Not blocks
  TopTools_ListOfShape EXT; // Hexahedral solids, having degenerated and/or seam edges
  TopTools_ListOfShape BLO; // All blocks from the given compound
  AddBlocksFrom(aBlockOrComp, BLO, NOT, EXT);

  // Report non-blocks
  if (NOT.Extent() > 0) {
    isCompOfBlocks = Standard_False;
    BCError anErr;
    anErr.error = NOT_BLOCK;
    TopTools_ListIteratorOfListOfShape it (NOT);
    for (; it.More(); it.Next()) {
      anErr.incriminated.push_back(anIndices.FindIndex(it.Value()));
    }
    theErrors.push_back(anErr);
  }

  // Report solids, having degenerated and/or seam edges
  if (EXT.Extent() > 0) {
    isCompOfBlocks = Standard_False;
    BCError anErr;
    anErr.error = EXTRA_EDGE;
    TopTools_ListIteratorOfListOfShape it (EXT);
    for (; it.More(); it.Next()) {
      anErr.incriminated.push_back(anIndices.FindIndex(it.Value()));
    }
    theErrors.push_back(anErr);
  }

  Standard_Integer nbBlocks = BLO.Extent();
  if (nbBlocks == 0) {
    isCompOfBlocks = Standard_False;
    SetErrorCode(GEOM_OK);
    return isCompOfBlocks;
  }
  if (nbBlocks == 1) {
    SetErrorCode(GEOM_OK);
    return isCompOfBlocks;
  }

  // Prepare data for 2. and 3.
  TColStd_Array2OfInteger aRelations (1, nbBlocks, 1, nbBlocks);
  aRelations.Init(REL_NOT_CONNECTED);

  TopTools_IndexedMapOfShape mapBlocks;

  BRep_Builder BB;
  TopoDS_Compound aComp;
  BB.MakeCompound(aComp);

  TopTools_ListIteratorOfListOfShape BLOit (BLO);
  for (; BLOit.More(); BLOit.Next()) {
    mapBlocks.Add(BLOit.Value());
    BB.Add(aComp, BLOit.Value());
  }

  // 2. Find glued blocks (having shared faces)
  TopTools_IndexedDataMapOfShapeListOfShape mapFaceBlocks;
  GEOMImpl_Block6Explorer::MapShapesAndAncestors
    (aComp, TopAbs_FACE, TopAbs_SOLID, mapFaceBlocks);

  Standard_Integer prevInd = 0, curInd = 0;
  Standard_Integer ind = 1, nbFaces = mapFaceBlocks.Extent();
  for (; ind <= nbFaces; ind++) {
    const TopTools_ListOfShape& aGluedBlocks = mapFaceBlocks.FindFromIndex(ind);
    if (aGluedBlocks.Extent() > 1) { // Shared face found
      TopTools_ListIteratorOfListOfShape aGluedBlocksIt (aGluedBlocks);
      TopoDS_Shape prevBlock, curBlock;
      for (; aGluedBlocksIt.More(); aGluedBlocksIt.Next()) {
        curBlock = aGluedBlocksIt.Value();
        if (!prevBlock.IsNull()) {
          prevInd = mapBlocks.FindIndex(prevBlock);
          curInd  = mapBlocks.FindIndex(curBlock);
          aRelations.SetValue(prevInd, curInd, REL_OK);
          aRelations.SetValue(curInd, prevInd, REL_OK);
        }
        prevBlock = curBlock;
      }
    }
  }

  // 3. Find not glued blocks
  GEOMAlgo_GlueAnalyser aGD; 

  aGD.SetShape(aComp);
  aGD.SetTolerance(Precision::Confusion());
  aGD.SetCheckGeometry(Standard_True);
  aGD.Perform();

  Standard_Integer iErr, iWrn;
  iErr = aGD.ErrorStatus();
  if (iErr) {
    SetErrorCode("Error in GEOMAlgo_GlueAnalyser");
    return isCompOfBlocks;
  }
  iWrn = aGD.WarningStatus();
  if (iWrn) {
    MESSAGE("Warning in GEOMAlgo_GlueAnalyser");
  }

  // Report not glued blocks
  if (aGD.HasSolidsToGlue()) {
    isCompOfBlocks = Standard_False;
    Standard_Integer aSx1Ind, aSx2Ind;

    const GEOMAlgo_ListOfCoupleOfShapes& aLCS = aGD.SolidsToGlue();
    GEOMAlgo_ListIteratorOfListOfCoupleOfShapes aItCS (aLCS);
    for (; aItCS.More(); aItCS.Next()) {
      const GEOMAlgo_CoupleOfShapes& aCS = aItCS.Value();
      const TopoDS_Shape& aSx1 = aCS.Shape1();
      const TopoDS_Shape& aSx2 = aCS.Shape2();

      aSx1Ind = mapBlocks.FindIndex(aSx1);
      aSx2Ind = mapBlocks.FindIndex(aSx2);
      aRelations.SetValue(aSx1Ind, aSx2Ind, NOT_GLUED);
      aRelations.SetValue(aSx2Ind, aSx1Ind, NOT_GLUED);

      BCError anErr;
      anErr.error = NOT_GLUED;
      anErr.incriminated.push_back(anIndices.FindIndex(aSx1));
      anErr.incriminated.push_back(anIndices.FindIndex(aSx2));
      theErrors.push_back(anErr);
    }
  }

  // 4. Find largest set of connected (good connection or not glued) blocks
  Standard_Integer ibl = 1;
  TColStd_MapOfInteger aProcessedMap;
  TColStd_MapOfInteger aLargestSet;
  TColStd_MapOfInteger aCurrentSet;
  for (ibl = 1; ibl <= nbBlocks; ibl++) {
    if (!aProcessedMap.Contains(ibl)) {
      aCurrentSet.Clear();
      FindConnected(ibl, aRelations, aProcessedMap, aCurrentSet);
      if (aCurrentSet.Extent() > aLargestSet.Extent()) {
        aLargestSet = aCurrentSet;
      }
    }
  }

  // 5. Report all blocks, isolated from <aLargestSet>
  BCError anErr;
  anErr.error = NOT_CONNECTED;
  Standard_Boolean hasIsolated = Standard_False;
  for (ibl = 1; ibl <= nbBlocks; ibl++) {
    if (!aLargestSet.Contains(ibl)) {
      aProcessedMap.Clear();
      if (!HasAnyConnection(ibl, aLargestSet, aRelations, aProcessedMap)) {
        // report connection absence
        hasIsolated = Standard_True;
        anErr.incriminated.push_back(anIndices.FindIndex(mapBlocks.FindKey(ibl)));
      }
    }
  }
  if (hasIsolated) {
    isCompOfBlocks = Standard_False;
    theErrors.push_back(anErr);
  }

  SetErrorCode(GEOM_OK);
  return isCompOfBlocks;
}

//=============================================================================
/*!
 *  RemoveExtraEdges
 */
//=============================================================================

Handle(GEOM_Object) GEOMImpl_IBlocksOperations::RemoveExtraEdges
                                     (Handle(GEOM_Object) theObject,
                                      const Standard_Integer theOptimumNbFaces)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be fixed

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), GEOM_COPY);

  //Add a function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_BlockDriver::GetID(), BLOCK_REMOVE_EXTRA);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BlockDriver::GetID()) return NULL;

  GEOMImpl_IBlockTrsf aTI (aFunction);
  aTI.SetOriginal(aLastFunction);
  aTI.SetOptimumNbFaces(theOptimumNbFaces);

  //Compute the fixed shape
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Block driver failed to remove extra edges of the given shape");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  std::string doUnionFaces = (theOptimumNbFaces < 0) ? "False" : "True";
  GEOM::TPythonDump(aFunction) << aCopy << " = RemoveExtraEdges("
                               << theObject << ", " << doUnionFaces.data() << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  CheckAndImprove
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::CheckAndImprove
                                             (Handle(GEOM_Object) theObject)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be fixed

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), GEOM_COPY);

  //Add a function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_BlockDriver::GetID(), BLOCK_COMPOUND_IMPROVE);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BlockDriver::GetID()) return NULL;

  GEOMImpl_IBlockTrsf aTI (aFunction);
  aTI.SetOriginal(aLastFunction);

  // -1 means do not unite faces on common surface (?except case of seam edge between them?)
  //aTI.SetOptimumNbFaces(-1);
  aTI.SetOptimumNbFaces(6);

  //Compute the fixed shape
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Block driver failed to improve the given blocks compound");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy
    << " = CheckAndImprove(" << theObject << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  ExplodeCompoundOfBlocks
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IBlocksOperations::ExplodeCompoundOfBlocks
                                                (Handle(GEOM_Object)    theCompound,
                                                 const Standard_Integer theMinNbFaces,
                                                 const Standard_Integer theMaxNbFaces)
{
  SetErrorCode(GEOM_KO);

  if (theCompound.IsNull()) return NULL;
  TopoDS_Shape aBlockOrComp = theCompound->GetValue();
  if (aBlockOrComp.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aBlocks = new TColStd_HSequenceOfTransient;
  Handle(GEOM_Object) anObj;
  Handle(GEOM_Function) aFunction;

  TopTools_MapOfShape mapShape;
  TCollection_AsciiString anAsciiList, anEntry;

  // Map shapes
  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aBlockOrComp, anIndices);
  Handle(TColStd_HArray1OfInteger) anArray;

  // Explode
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopExp_Explorer exp (aBlockOrComp, TopAbs_SOLID);
    for (; exp.More(); exp.Next()) {
      if (mapShape.Add(exp.Current())) {
        TopoDS_Shape aSolid = exp.Current();

        TopTools_MapOfShape mapFaces;
        TopExp_Explorer expF (aSolid, TopAbs_FACE);
        Standard_Integer nbFaces = 0;
        for (; expF.More(); expF.Next()) {
          if (mapFaces.Add(expF.Current())) {
            nbFaces++;
          }
        }

        if (theMinNbFaces <= nbFaces && nbFaces <= theMaxNbFaces) {
          anArray = new TColStd_HArray1OfInteger(1,1);
          anArray->SetValue(1, anIndices.FindIndex(aSolid));
          anObj = GetEngine()->AddSubShape(theCompound, anArray);
          aBlocks->Append(anObj);

          //Make a Python command
          TDF_Tool::Entry(anObj->GetEntry(), anEntry);
          anAsciiList += anEntry + ", ";
        }
      }
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return aBlocks;
  }

  if (aBlocks->IsEmpty()) {
    SetErrorCode("There are no specified blocks in the given shape");
    return aBlocks;
  }

  anAsciiList.Trunc(anAsciiList.Length() - 2);

  //The explode doesn't change object so no new function is required.
  aFunction = theCompound->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
		  << "[" << anAsciiList.ToCString() << "] = ExplodeCompoundOfBlocks("
    << theCompound << ", " << theMinNbFaces << ", " << theMaxNbFaces << ")";

  SetErrorCode(GEOM_OK);
  return aBlocks;
}

//=============================================================================
/*!
 *  GetBlockNearPoint
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetBlockNearPoint
                                                (Handle(GEOM_Object) theCompound,
                                                 Handle(GEOM_Object) thePoint)
{
  SetErrorCode(GEOM_KO);

  //New object
  Handle(GEOM_Object) aResult;

  // Arguments
  if (theCompound.IsNull() || thePoint.IsNull()) return NULL;

  TopoDS_Shape aBlockOrComp = theCompound->GetValue();
  if (aBlockOrComp.IsNull()) {
    SetErrorCode("Compound is null");
    return NULL;
  }
  if (aBlockOrComp.ShapeType() != TopAbs_COMPOUND &&
      aBlockOrComp.ShapeType() != TopAbs_COMPSOLID) {
    SetErrorCode("Shape to find block in is not a compound");
    return NULL;
  }

  TopoDS_Shape anArg = thePoint->GetValue();
  if (anArg.IsNull()) {
    SetErrorCode("Point is null");
    return NULL;
  }
  if (anArg.ShapeType() != TopAbs_VERTEX) {
    SetErrorCode("Shape for block identification is not a vertex");
    return NULL;
  }

  //Compute the Block value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopoDS_Shape aShape;

    TopoDS_Vertex aVert = TopoDS::Vertex(anArg);
    gp_Pnt aPnt = BRep_Tool::Pnt(aVert);
    Standard_Real PX, PY, PZ;
    aPnt.Coord(PX, PY, PZ);

    // 1. Classify the point relatively each block
    Standard_Integer nearest = 2, nbFound = 0;
    TopTools_DataMapOfShapeInteger mapShapeDist;
    TopExp_Explorer exp (aBlockOrComp, TopAbs_SOLID);
    for (; exp.More(); exp.Next()) {
      TopoDS_Shape aSolid = exp.Current();

      if (!mapShapeDist.IsBound(aSolid)) {
        Standard_Integer aDistance = 2;

        // 1.a. Classify relatively Bounding box
        Standard_Real Xmin, Ymin, Zmin, Xmax, Ymax, Zmax;
        Bnd_Box BB;
        BRepBndLib::Add(aSolid, BB);
        BB.Get(Xmin, Ymin, Zmin, Xmax, Ymax, Zmax);
        if (PX < Xmin || Xmax < PX ||
            PY < Ymin || Ymax < PY ||
            PZ < Zmin || Zmax < PZ) {
          // OUT of bounding box
          aDistance = 1;
        } else {
          // 1.b. Classify relatively the solid itself
          BRepClass3d_SolidClassifier SC (aSolid, aPnt, Precision::Confusion());
          if (SC.State() == TopAbs_IN) {
            aDistance = -1;
          } else if (SC.State() == TopAbs_ON) {
            aDistance = 0;
          } else { // OUT
            aDistance = 1;
          }
        }

        if (aDistance < nearest) {
          nearest = aDistance;
          aShape = aSolid;
          nbFound = 1;

          // A first found block, containing the point inside, will be returned.
          // It is the solution, if there are no intersecting blocks in the compound.
          if (nearest == -1) break;

        } else if (aDistance == nearest) {
          nbFound++;
        } else {
        }

        mapShapeDist.Bind(aSolid, aDistance);
      } // if (!mapShapeDist.IsBound(aSolid))
    }

    // 2. Define block, containing the point or having minimum distance to it
    if (nbFound > 1) {
      if (nearest == 0) {
        // The point is on boundary of some blocks and there are
        // no blocks, having the point inside their volume
        SetErrorCode("Multiple blocks near the given point are found");
        return NULL;

      } else if (nearest == 1) {
        // The point is outside some blocks and there are
        // no blocks, having the point inside or on boundary.
        // We will get a nearest block
        Standard_Real minDist = RealLast();
        TopTools_DataMapIteratorOfDataMapOfShapeInteger mapShapeDistIter (mapShapeDist);
        for (; mapShapeDistIter.More(); mapShapeDistIter.Next()) {
          if (mapShapeDistIter.Value() == 1) {
            TopoDS_Shape aSolid = mapShapeDistIter.Key();
            BRepExtrema_DistShapeShape aDistTool (aVert, aSolid);
            if (!aDistTool.IsDone()) {
              SetErrorCode("Can not find a distance from the given point to one of blocks");
              return NULL;
            }
            Standard_Real aDist = aDistTool.Value();
            if (aDist < minDist) {
              minDist = aDist;
              aShape = aSolid;
            }
          }
        }
      } else { // nearest == -1
//        // The point is inside some blocks.
//        // We will get a block with nearest center
//        Standard_Real minDist = RealLast();
//        TopTools_DataMapIteratorOfDataMapOfShapeInteger mapShapeDistIter (mapShapeDist);
//        for (; mapShapeDistIter.More(); mapShapeDistIter.Next()) {
//          if (mapShapeDistIter.Value() == -1) {
//            TopoDS_Shape aSolid = mapShapeDistIter.Key();
//            GProp_GProps aSystem;
//            BRepGProp::VolumeProperties(aSolid, aSystem);
//            gp_Pnt aCenterMass = aSystem.CentreOfMass();
//
//            Standard_Real aDist = aCenterMass.Distance(aPnt);
//            if (aDist < minDist) {
//              minDist = aDist;
//              aShape = aSolid;
//            }
//          }
//        }
      }
    } // if (nbFound > 1)

    if (nbFound == 0) {
      SetErrorCode("There are no blocks near the given point");
      return NULL;
    } else {
      TopTools_IndexedMapOfShape anIndices;
      TopExp::MapShapes(aBlockOrComp, anIndices);
      Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
      anArray->SetValue(1, anIndices.FindIndex(aShape));
      aResult = GetEngine()->AddSubShape(theCompound, anArray);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aResult << " = GetBlockNearPoint("
                               << theCompound << ", " << thePoint << ")";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetBlockByParts
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::GetBlockByParts
                      (Handle(GEOM_Object)                         theCompound,
                       const Handle(TColStd_HSequenceOfTransient)& theParts)
{
  SetErrorCode(GEOM_KO);

  Handle(GEOM_Object) aResult;

  if (theCompound.IsNull() || theParts.IsNull()) return NULL;
  TopoDS_Shape aBlockOrComp = theCompound->GetValue();
  if (aBlockOrComp.IsNull()) return NULL;

  //Get the parts
  Standard_Integer argi, aLen = theParts->Length();
  TopTools_Array1OfShape anArgs (1, aLen);
  TCollection_AsciiString anEntry, aPartsDescr;
  for (argi = 1; argi <= aLen; argi++) {
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(theParts->Value(argi));
    Handle(GEOM_Function) aRef = anObj->GetLastFunction();
    if (aRef.IsNull()) return NULL;

    TopoDS_Shape anArg = aRef->GetValue();
    if (anArg.IsNull()) {
      SetErrorCode("Null shape is given as argument");
      return NULL;
    }
    anArgs(argi) = anArg;

    // For Python command
    TDF_Tool::Entry(anObj->GetEntry(), anEntry);
    if (argi > 1) aPartsDescr += ", ";
    aPartsDescr += anEntry;
  }

  //Compute the Block value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    // 1. Explode compound on solids
    TopTools_MapOfShape mapShape;
    Standard_Integer nbSolids = 0;
    TopExp_Explorer exp (aBlockOrComp, TopAbs_SOLID);
    for (; exp.More(); exp.Next()) {
      if (mapShape.Add(exp.Current())) {
        nbSolids++;
      }
    }

    mapShape.Clear();
    Standard_Integer ind = 1;
    TopTools_Array1OfShape aSolids (1, nbSolids);
    TColStd_Array1OfInteger aNbParts (1, nbSolids);
    for (exp.Init(aBlockOrComp, TopAbs_SOLID); exp.More(); exp.Next(), ind++) {
      if (mapShape.Add(exp.Current())) {
        TopoDS_Shape aSolid = exp.Current();
        aSolids(ind) = aSolid;
        aNbParts(ind) = 0;

        // 2. Define quantity of parts, contained in each solid
        TopTools_IndexedMapOfShape aSubShapes;
        TopExp::MapShapes(aSolid, aSubShapes);
        for (argi = 1; argi <= aLen; argi++) {
          if (aSubShapes.Contains(anArgs(argi))) {
            aNbParts(ind)++;
          }
        }
      }
    }

    // 3. Define solid, containing maximum quantity of parts
    Standard_Integer maxNb = 0, nbFound = 0;
    TopoDS_Shape aShape;
    for (ind = 1; ind <= nbSolids; ind++) {
      if (aNbParts(ind) > maxNb) {
        maxNb = aNbParts(ind);
        aShape = aSolids(ind);
        nbFound = 1;
      } else if (aNbParts(ind) == maxNb) {
        nbFound++;
      } else {
      }
    }
    if (nbFound > 1) {
      SetErrorCode("Multiple blocks, containing maximum quantity of the given parts, are found");
      return NULL;
    } else if (nbFound == 0) {
      SetErrorCode("There are no blocks, containing the given parts");
      return NULL;
    } else {
      TopTools_IndexedMapOfShape anIndices;
      TopExp::MapShapes(aBlockOrComp, anIndices);
      Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
      anArray->SetValue(1, anIndices.FindIndex(aShape));
      aResult = GetEngine()->AddSubShape(theCompound, anArray);
    }
  } catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  Handle(GEOM_Function) aFunction = aResult->GetLastFunction();

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aResult << " = GetBlockByParts("
    << theCompound << ", [" << aPartsDescr.ToCString() << "])";

  SetErrorCode(GEOM_OK);
  return aResult;
}

//=============================================================================
/*!
 *  GetBlocksByParts
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IBlocksOperations::GetBlocksByParts
                      (Handle(GEOM_Object)                         theCompound,
                       const Handle(TColStd_HSequenceOfTransient)& theParts)
{
  SetErrorCode(GEOM_KO);

  if (theCompound.IsNull() || theParts.IsNull()) return NULL;
  TopoDS_Shape aBlockOrComp = theCompound->GetValue();
  if (aBlockOrComp.IsNull()) return NULL;

  Handle(TColStd_HSequenceOfTransient) aBlocks = new TColStd_HSequenceOfTransient;
  Handle(GEOM_Object) anObj;
  Handle(GEOM_Function) aFunction;

  //Get the parts
  Standard_Integer argi, aLen = theParts->Length();
  TopTools_Array1OfShape anArgs (1, aLen);
  TCollection_AsciiString anEntry, aPartsDescr, anAsciiList;

  for (argi = 1; argi <= aLen; argi++) {
    Handle(GEOM_Object) anObj = Handle(GEOM_Object)::DownCast(theParts->Value(argi));
    Handle(GEOM_Function) aRef = anObj->GetLastFunction();
    if (aRef.IsNull()) return NULL;

    TopoDS_Shape anArg = aRef->GetValue();
    if (anArg.IsNull()) {
      SetErrorCode("Null shape is given as argument");
      return NULL;
    }
    anArgs(argi) = anArg;

    // For Python command
    TDF_Tool::Entry(anObj->GetEntry(), anEntry);
    aPartsDescr += anEntry + ", ";
  }

  //Get the Blocks
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopTools_MapOfShape mapShape;
    Standard_Integer nbSolids = 0;
    TopExp_Explorer exp (aBlockOrComp, TopAbs_SOLID);
    for (; exp.More(); exp.Next()) {
      if (mapShape.Add(exp.Current())) {
        nbSolids++;
      }
    }

    mapShape.Clear();
    Standard_Integer ind = 1;
    TopTools_Array1OfShape aSolids (1, nbSolids);
    TColStd_Array1OfInteger aNbParts (1, nbSolids);
    for (exp.Init(aBlockOrComp, TopAbs_SOLID); exp.More(); exp.Next(), ind++) {
      if (mapShape.Add(exp.Current())) {
        TopoDS_Shape aSolid = exp.Current();
        aSolids(ind) = aSolid;
        aNbParts(ind) = 0;

        // 2. Define quantity of parts, contained in each solid
        TopTools_IndexedMapOfShape aSubShapes;
        TopExp::MapShapes(aSolid, aSubShapes);
        for (argi = 1; argi <= aLen; argi++) {
          if (aSubShapes.Contains(anArgs(argi))) {
            aNbParts(ind)++;
          }
        }
      }
    }

    // 3. Define solid, containing maximum quantity of parts
    Standard_Integer maxNb = 0, nbFound = 0;
    for (ind = 1; ind <= nbSolids; ind++) {
      if (aNbParts(ind) > maxNb) {
        maxNb = aNbParts(ind);
        nbFound = 1;
      } else if (aNbParts(ind) == maxNb) {
        nbFound++;
      } else {
      }
    }
    if (nbFound == 0) {
      SetErrorCode("There are no blocks, containing the given parts");
      return NULL;
    }

    // Map shapes
    TopTools_IndexedMapOfShape anIndices;
    TopExp::MapShapes(aBlockOrComp, anIndices);
    Handle(TColStd_HArray1OfInteger) anArray;

    for (ind = 1; ind <= nbSolids; ind++) {
      if (aNbParts(ind) == maxNb) {
        anArray = new TColStd_HArray1OfInteger(1,1);
        anArray->SetValue(1, anIndices.FindIndex(aSolids(ind)));
        anObj = GetEngine()->AddSubShape(theCompound, anArray);
        aBlocks->Append(anObj);

        // For Python command
        TDF_Tool::Entry(anObj->GetEntry(), anEntry);
        anAsciiList += anEntry + ", ";
        if (aFunction.IsNull())
          aFunction = anObj->GetLastFunction();
      }
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  aPartsDescr.Trunc(aPartsDescr.Length() - 2);
  anAsciiList.Trunc(anAsciiList.Length() - 2);

  GEOM::TPythonDump(aFunction) << "[" << anAsciiList.ToCString()
    << "] = GetBlocksByParts(" << theCompound
      << ", [" << aPartsDescr.ToCString() << "])";

  SetErrorCode(GEOM_OK);
  return aBlocks;
}

//=============================================================================
/*!
 *  MakeMultiTransformation1D
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::MakeMultiTransformation1D
                                             (Handle(GEOM_Object)    theObject,
                                              const Standard_Integer theDirFace1,
                                              const Standard_Integer theDirFace2,
											  const GEOM_Parameter& theNbTimes)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), GEOM_COPY);

  //Add a translate function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_BlockDriver::GetID(), BLOCK_MULTI_TRANSFORM_1D);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BlockDriver::GetID()) return NULL;

  GEOMImpl_IBlockTrsf aTI (aFunction);
  aTI.SetOriginal(aLastFunction);
  aTI.SetFace1U(theDirFace1);
  aTI.SetFace2U(theDirFace2);

  SETPARAM(aTI.SetNbIterU,theNbTimes);

  //Compute the transformation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Block driver failed to make multi-transformation");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = MakeMultiTransformation1D("
    << theObject << ", " << theDirFace1 << ", " << theDirFace2 << ", " << theNbTimes << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  MakeMultiTransformation2D
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IBlocksOperations::MakeMultiTransformation2D
                                             (Handle(GEOM_Object)    theObject,
                                              const Standard_Integer theDirFace1U,
                                              const Standard_Integer theDirFace2U,
											  const GEOM_Parameter& theNbTimesU,
											  const Standard_Integer theDirFace1V,
											  const Standard_Integer theDirFace2V,
											  const GEOM_Parameter& theNbTimesV)
{
  SetErrorCode(GEOM_KO);

  if (theObject.IsNull()) return NULL;

  Handle(GEOM_Function) aLastFunction = theObject->GetLastFunction();
  if (aLastFunction.IsNull()) return NULL; //There is no function which creates an object to be moved

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), GEOM_COPY);

  //Add a translate function
  Handle(GEOM_Function) aFunction =
    aCopy->AddFunction(GEOMImpl_BlockDriver::GetID(), BLOCK_MULTI_TRANSFORM_2D);

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_BlockDriver::GetID()) return NULL;

  GEOMImpl_IBlockTrsf aTI (aFunction);
  aTI.SetOriginal(aLastFunction);
  aTI.SetFace1U(theDirFace1U);
  aTI.SetFace2U(theDirFace2U);
  SETPARAM(aTI.SetNbIterU,theNbTimesU);
  aTI.SetFace1V(theDirFace1V);
  aTI.SetFace2V(theDirFace2V);
  SETPARAM(aTI.SetNbIterV,theNbTimesV);

  //Compute the transformation
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Block driver failed to make multi-transformation");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = MakeMultiTransformation2D("
    << theObject << ", " << theDirFace1U << ", " << theDirFace2U << ", " << theNbTimesU
      << ", " << theDirFace1V << ", " << theDirFace2V << ", " << theNbTimesV << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  Propagate
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOMImpl_IBlocksOperations::Propagate
                                                 (Handle(GEOM_Object) theShape)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;

  TopoDS_Shape aShape = theShape->GetValue();
  if (aShape.IsNull()) return NULL;

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(aShape, anIndices);

  TopTools_IndexedDataMapOfShapeListOfShape MEW;
  GEOMImpl_Block6Explorer::MapShapesAndAncestors
    (aShape, TopAbs_EDGE, TopAbs_WIRE, MEW);
  Standard_Integer ie, nbEdges = MEW.Extent();

  // Result
  Handle(TColStd_HSequenceOfTransient) aSeq = new TColStd_HSequenceOfTransient;

  TopTools_MapOfShape mapAcceptedEdges;
  TCollection_AsciiString aListRes, anEntry;

  // Sort shapes in current chain (Mantis issue 21053)
  TopTools_DataMapOfShapeListOfShape aMapChains;
  TopTools_ListOfShape aFirstInChains;

  for (ie = 1; ie <= nbEdges; ie++) {
    TopoDS_Shape curE = MEW.FindKey(ie);

    if (mapAcceptedEdges.Contains(curE)) continue;

    // Build the chain
    TopTools_ListOfShape currentChain;
    TopTools_ListOfShape listPrevEdges;

    currentChain.Append(curE);
    listPrevEdges.Append(curE);
    mapAcceptedEdges.Add(curE);

    // Collect all edges pass by pass
    while (listPrevEdges.Extent() > 0) {
      // List of edges, added to chain on this cycle pass
      TopTools_ListOfShape listCurEdges;

      // Find the next portion of edges
      TopTools_ListIteratorOfListOfShape itE (listPrevEdges);
      for (; itE.More(); itE.Next()) {
        TopoDS_Shape anE = itE.Value();

        // Iterate on faces, having edge <anE>
        TopTools_ListIteratorOfListOfShape itW (MEW.FindFromKey(anE));
        for (; itW.More(); itW.Next()) {
          TopoDS_Shape aW = itW.Value();
          TopoDS_Shape anOppE;

          BRepTools_WireExplorer aWE (TopoDS::Wire(aW));
          Standard_Integer nb = 1, found = 0;
          TopTools_Array1OfShape anEdges (1,4);
          for (; aWE.More(); aWE.Next(), nb++) {
            if (nb > 4) {
              found = 0;
              break;
            }
            anEdges(nb) = aWE.Current();
            if (anEdges(nb).IsSame(anE)) found = nb;
          }

          if (nb == 5 && found > 0) {
            // Quadrangle face found, get an opposite edge
            Standard_Integer opp = found + 2;
            if (opp > 4) opp -= 4;
            anOppE = anEdges(opp);

            if (!mapAcceptedEdges.Contains(anOppE)) {
              // Add found edge to the chain
              currentChain.Append(anOppE);
              listCurEdges.Append(anOppE);
              mapAcceptedEdges.Add(anOppE);
            }
          } // if (nb == 5 && found > 0)
        } // for (; itF.More(); itF.Next())
      } // for (; itE.More(); itE.Next())

      listPrevEdges = listCurEdges;
    } // while (listPrevEdges.Extent() > 0)

    // Sort shapes in current chain (Mantis issue 21053)
    GEOMImpl_IShapesOperations::SortShapes(currentChain, Standard_False);
    aFirstInChains.Append(currentChain.First());
    aMapChains.Bind(currentChain.First(), currentChain);
  }

  // Sort chains (Mantis issue 21053)
  GEOMImpl_IShapesOperations::SortShapes(aFirstInChains, Standard_False);

  // Store sorted chains in the document
  TopTools_ListIteratorOfListOfShape aChainsIt (aFirstInChains);
  for (; aChainsIt.More(); aChainsIt.Next()) {
    TopoDS_Shape aFirstInChain = aChainsIt.Value();
    const TopTools_ListOfShape& currentChain = aMapChains.Find(aFirstInChain);

    // Store the chain in the document
    Handle(TColStd_HArray1OfInteger) anArray =
      new TColStd_HArray1OfInteger (1, currentChain.Extent());

    // Fill array of sub-shape indices
    TopTools_ListIteratorOfListOfShape itSub (currentChain);
    for (int index = 1; itSub.More(); itSub.Next(), ++index) {
      int id = anIndices.FindIndex(itSub.Value());
      anArray->SetValue(index, id);
    }

    // Add a new group object
    Handle(GEOM_Object) aChain = GetEngine()->AddSubShape(theShape, anArray);

    // Set a GROUP type
    aChain->SetType(GEOM_GROUP);

    // Set a sub shape type
    TDF_Label aFreeLabel = aChain->GetFreeLabel();
    TDataStd_Integer::Set(aFreeLabel, (Standard_Integer)TopAbs_EDGE);

    // Add the chain to the result
    aSeq->Append(aChain);

    //Make a Python command
    TDF_Tool::Entry(aChain->GetEntry(), anEntry);
    aListRes += anEntry + ", ";
  }

  if (aSeq->IsEmpty()) {
    SetErrorCode("There are no quadrangle faces in the shape");
    return aSeq;
  }

  aListRes.Trunc(aListRes.Length() - 2);

  // The Propagation doesn't change object so no new function is required.
  Handle(GEOM_Function) aFunction = theShape->GetLastFunction();

  // Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << "[" << aListRes.ToCString() << "] = Propagate(" << theShape << ")";

  SetErrorCode(GEOM_OK);
  return aSeq;
}
