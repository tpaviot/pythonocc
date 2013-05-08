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

#include <GEOMImpl_ILocalOperations.hxx>

#include <GEOM_Function.hxx>
#include <GEOM_PythonDump.hxx>

#include <GEOMImpl_Types.hxx>

#include <GEOMImpl_FilletDriver.hxx>
#include <GEOMImpl_Fillet1dDriver.hxx>
#include <GEOMImpl_ChamferDriver.hxx>
#include <GEOMImpl_ThickSolidDriver.hxx>
#include <GEOMImpl_VariableFilletDriver.hxx>
#include <GEOMImpl_DraftDriver.hxx>

#include <GEOMImpl_IFillet.hxx>
#include <GEOMImpl_IFillet1d.hxx>
#include <GEOMImpl_IVariableFillet.hxx>
#include <GEOMImpl_IChamfer.hxx>
#include <GEOMImpl_IThickSolid.hxx>
#include <GEOMImpl_IDraft.hxx>

#include <GEOMImpl_IArchimede.hxx>
#include <GEOMImpl_ArchimedeDriver.hxx>

#include <GEOMImpl_Gen.hxx>
#include <GEOMImpl_IShapesOperations.hxx>

#define SETPARAM(aFUNC,aVAL)  \
  if (aVAL.IsString())         \
	aFUNC( aVAL.GetString() ); \
  else                         \
	aFUNC( aVAL.GetDouble() );

#include <TFunction_DriverTable.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_Logbook.hxx>
#include <TDF_Tool.hxx>

#include <TopExp.hxx>
#include <TopoDS_TShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TColStd_HArray1OfReal.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

//#define LOCAL_OPS_CREATE_NEW_OBJECT


//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================
GEOMImpl_ILocalOperations::GEOMImpl_ILocalOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  //MESSAGE("GEOMImpl_ILocalOperations::GEOMImpl_ILocalOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_ILocalOperations::~GEOMImpl_ILocalOperations()
{
  //MESSAGE("GEOMImpl_ILocalOperations::~GEOMImpl_ILocalOperations");
}


//=============================================================================
/*!
 *  MakeFilletAll
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeFilletAll
									(Handle(GEOM_Object) theShape, const GEOM_Parameter& theR)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Fillet object
  Handle(GEOM_Object) aFillet = GetEngine()->AddObject(GetDocID(), GEOM_FILLET);
 #else
  Handle(GEOM_Object) aFillet = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Fillet function
  Handle(GEOM_Function) aFunction =
    aFillet->AddFunction(GEOMImpl_FilletDriver::GetID(), FILLET_SHAPE_ALL);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_FilletDriver::GetID()) return NULL;

  GEOMImpl_IFillet aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetR,theR);

  //Compute the Fillet value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Fillet driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aFillet << " = MakeFilletAll("
                               << theShape << ", " << theR << ")";

  SetErrorCode(GEOM_OK);
  return aFillet;
}

//=============================================================================
/*!
 *  MakeFilletEdges
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeFilletEdges
	   (Handle(GEOM_Object) theShape, const GEOM_Parameter& theR, std::list<int> theEdges)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Fillet object
  Handle(GEOM_Object) aFillet = GetEngine()->AddObject(GetDocID(), GEOM_FILLET);
 #else
  Handle(GEOM_Object) aFillet = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Fillet function
  Handle(GEOM_Function) aFunction =
    aFillet->AddFunction(GEOMImpl_FilletDriver::GetID(), FILLET_SHAPE_EDGES);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_FilletDriver::GetID()) return NULL;

  GEOMImpl_IFillet aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetR,theR);
  int aLen = theEdges.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theEdges.begin();
  for (; it != theEdges.end(); it++, ind++) {
    aCI.SetEdge(ind, (*it));
  }

  //Compute the Fillet value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Fillet driver failed");
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
  pd << aFillet << " = MakeFilletEdges(" << theShape
    << ", " << theR << ", [";

  it = theEdges.begin();
  pd << (*it++);
  while (it != theEdges.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aFillet;
}

//=============================================================================
/*!
 *  MakeFilletEdges R1 R2
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeFilletEdgesR1R2
	   (Handle(GEOM_Object) theShape, const GEOM_Parameter& theR1, const GEOM_Parameter& theR2, std::list<int> theEdges)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Fillet object
  Handle(GEOM_Object) aFillet = GetEngine()->AddObject(GetDocID(), GEOM_FILLET);
 #else
  Handle(GEOM_Object) aFillet = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Fillet function
  Handle(GEOM_Function) aFunction =
	aFillet->AddFunction(GEOMImpl_FilletDriver::GetID(), FILLET_SHAPE_EDGES_2R);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_FilletDriver::GetID()) return NULL;

  GEOMImpl_IFillet aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetR1,theR1);
  SETPARAM(aCI.SetR2,theR2);
  int aLen = theEdges.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theEdges.begin();
  for (; it != theEdges.end(); it++, ind++) {
    aCI.SetEdge(ind, (*it));
  }

  //Compute the Fillet value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Fillet driver failed");
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
  pd << aFillet << " = MakeFilletR1R2(" << theShape
	<< ", " << theR1 << ", " <<theR2 << ", ShapeType[\"EDGE\"], [";

  it = theEdges.begin();
  pd << (*it++);
  while (it != theEdges.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aFillet;
}

//=============================================================================
/*!
 *  MakeFilletFaces
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeFilletFaces
	   (Handle(GEOM_Object) theShape, const GEOM_Parameter& theR, std::list<int> theFaces)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Fillet object
  Handle(GEOM_Object) aFillet = GetEngine()->AddObject(GetDocID(), GEOM_FILLET);
 #else
  Handle(GEOM_Object) aFillet = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Fillet function
  Handle(GEOM_Function) aFunction =
	aFillet->AddFunction(GEOMImpl_FilletDriver::GetID(), FILLET_SHAPE_FACES);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_FilletDriver::GetID()) return NULL;

  GEOMImpl_IFillet aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetR,theR);
  int aLen = theFaces.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theFaces.begin();
  for (; it != theFaces.end(); it++, ind++) {
    aCI.SetFace(ind, (*it));
  }

  //Compute the Fillet value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Fillet driver failed");
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
  pd << aFillet << " = MakeFilletFaces(" << theShape
	<< ", " << theR << ", [";

  it = theFaces.begin();
  pd << (*it++);
  while (it != theFaces.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aFillet;
}

//=============================================================================
/*!
 *  MakeVariableFillet
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeVariableFillet
	   (Handle(GEOM_Object) theShape, std::list<GEOM_Parameter> theEdgesParams, std::list<GEOM_Parameter> theRadiusAtParam, std::list<int> theEdges)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Fillet object
  Handle(GEOM_Object) aFillet = GetEngine()->AddObject(GetDocID(), GEOM_VARFILLET);
 #else
  Handle(GEOM_Object) aFillet = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Fillet function
  Handle(GEOM_Function) aFunction =
	aFillet->AddFunction(GEOMImpl_VariableFilletDriver::GetID(), VARFILLET);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_VariableFilletDriver::GetID()) return NULL;

  GEOMImpl_IVariableFillet aCI (aFunction);
  //check if the input data is ok
  if (theEdges.size() == 0)
	return NULL;
  else if (theRadiusAtParam.size() == 0)
	return NULL;
  else if ((theEdgesParams.size() != 0) && (theEdgesParams.size() != theRadiusAtParam.size()))
	return NULL;

  //set the base shape
  aCI.SetShape(aRefShape);

  //------------------------
  //BEGIN EDGES LIST SECTION

  //create an edge array to be filled
  Handle(TColStd_HArray1OfInteger) 	anEdgeArray  = new TColStd_HArray1OfInteger(1, theEdges.size() );

  //fill the edge array
  int ind = 1;
  std::list<int>::iterator it = theEdges.begin();
  for (; it != theEdges.end(); it++, ind++) {
	anEdgeArray->SetValue(ind, *it);
  }

  //add the data to the function
  aCI.SetEdgesArray( anEdgeArray );

  //END EDGES LIST SECTION
  //------------------------


  //set the GEOM_Parameter iterator
  std::list<GEOM_Parameter>::iterator it2;


  //------------------------
  //BEGIN PARAMETER VALUES SECTION

  //set flags for later use
  bool ParamsAreExpressionsFlag = false;
  bool hasEdgeParameters 		= true;

  if (theEdgesParams.size() == 0)
	hasEdgeParameters = false;

  if (hasEdgeParameters)
  {
	  //now check if the u param of edge is a double or an expression
	  it2 = theEdgesParams.begin();
	  for (; it2 != theEdgesParams.end(); it2++, ind++)
	  {
		GEOM_Parameter aParam = *it2;
		if (aParam.IsString())
		{
		  ParamsAreExpressionsFlag = true;
		  break;
		}
	  }
  }

  Handle(TColStd_HArray1OfReal) 		aParamArrayAsReal;
  Handle(TColStd_HArray1OfAsciiString) 	aParamArrayAsString;

  //if params are expressions fill an asciistring array and pass it to the driver
  //otherwise fill a double array ans pass it.
  if (ParamsAreExpressionsFlag && hasEdgeParameters)
  {
	  //here we have expressions
	  aParamArrayAsString  = new TColStd_HArray1OfAsciiString(1, theEdgesParams.size() );

	  ind = 1;
	  it2 = theEdgesParams.begin();
	  for (; it2 != theEdgesParams.end(); it2++, ind++) {
		GEOM_Parameter aParam = *it2;
		aParamArrayAsString->SetValue(ind, aParam.GetString() );
	  }
	  aCI.SetParamsArray(aParamArrayAsString);
  }
  else if (!ParamsAreExpressionsFlag && hasEdgeParameters)
  {
	  //here we have doubles
	  aParamArrayAsReal  = new TColStd_HArray1OfReal(1, theEdgesParams.size() );

	  ind = 1;
	  it2 = theEdgesParams.begin();
	  for (; it2 != theEdgesParams.end(); it2++, ind++) {
		GEOM_Parameter aParam = *it2;
		aParamArrayAsReal->SetValue(ind, aParam.GetDouble() );
	  }
	  if (theEdgesParams.size() != 0)
		aCI.SetParamsArray(aParamArrayAsReal);
  }
  //END PARAMETER VALUES SECTION
  //------------------------


  //------------------------
  //BEGIN RADIUS VALUES SECTION
  bool RadiusAreExpressionsFlag = false;

  //also check if the radiuses used are expressions or doubles
  it2 = theRadiusAtParam.begin();
  for (; it2 != theRadiusAtParam.end(); it2++, ind++)
  {
	GEOM_Parameter aParam = *it2;
	if (aParam.IsString())
	{
	  RadiusAreExpressionsFlag = true;
	  break;
	}
  }

  //Do the same as above for the radius values
  if (RadiusAreExpressionsFlag)
  {
	  //here we have expressions
	  Handle(TColStd_HArray1OfAsciiString) 	aRadiusArray  = new TColStd_HArray1OfAsciiString(1, theRadiusAtParam.size() );

	  ind = 1;
	  it2 = theRadiusAtParam.begin();
	  for (; it2 != theRadiusAtParam.end(); it2++, ind++) {
		GEOM_Parameter aParam = *it2;
		aRadiusArray->SetValue(ind, aParam.GetString() );
	  }

	  aCI.SetRadiusArray(aRadiusArray);
  }
  else
  {
	  //here we have doubles
	  Handle(TColStd_HArray1OfReal) aRadiusArray  = new TColStd_HArray1OfReal(1, theRadiusAtParam.size() );

	  ind = 1;
	  it2 = theRadiusAtParam.begin();
	  for (; it2 != theRadiusAtParam.end(); it2++, ind++) {
		GEOM_Parameter aParam = *it2;
		aRadiusArray->SetValue(ind, aParam.GetDouble() );
	  }

	  aCI.SetRadiusArray(aRadiusArray);
  }
  //------------------------
  //END RADIUS VALUES SECTION


  //Compute the var Fillet value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
	OCC_CATCH_SIGNALS;
#endif
	if (!GetSolver()->ComputeFunction(aFunction)) {
	  SetErrorCode("Variable Fillet driver failed");
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
  pd << aFillet << " = MakeVariableFillet(" << theShape

  //EDGE DUMP
  <<", [";
  it = theEdges.begin();
  pd << (*it++);
  while (it != theEdges.end()) {
	pd << ", " << (*it++);
  }
  pd << "]";

  //PARAM DUMP
  pd << ", [";
  it2 = theEdgesParams.begin();
  pd << (*it2++);
  while (it2 != theEdgesParams.end()) {
    pd << ", " << (*it2++);
  }
  pd << "]";

  //RADIUS AT PARAM DUMP
  pd << ", [";
  it2 = theRadiusAtParam.begin();
  pd << (*it2++);
  while (it2 != theRadiusAtParam.end()) {
	pd << ", " << (*it2++);
  }
  pd << "]";

  SetErrorCode(GEOM_OK);
  return aFillet;
}

//=============================================================================
/*!
 *  MakeFillet2DVertices
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeFillet2DVertices
	   (Handle(GEOM_Object) theShape, const GEOM_Parameter& theR, std::list<int> theVertices)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Fillet object
  Handle(GEOM_Object) aFillet = GetEngine()->AddObject(GetDocID(), GEOM_FILLET);
 #else
  Handle(GEOM_Object) aFillet = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Fillet function
  Handle(GEOM_Function) aFunction =
	aFillet->AddFunction(GEOMImpl_FilletDriver::GetID(), FILLET_SHAPE_VERTEX_2D);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_FilletDriver::GetID()) return NULL;

  GEOMImpl_IFillet aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetR,theR);
  int aLen = theVertices.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theVertices.begin();
  for (; it != theVertices.end(); it++, ind++) {
	aCI.SetVertex(ind, (*it));
  }

  //Compute the Fillet value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Fillet driver failed");
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
  pd << aFillet << " = MakeFillet2DVertices(" << theShape
	<< ", " << theR << ", [";

  it = theVertices.begin();
  pd << (*it++);
  while (it != theVertices.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aFillet;
}

//=============================================================================
/*!
 *  MakeFilletFaces R1 R2
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeFilletFacesR1R2
       (Handle(GEOM_Object) theShape, const GEOM_Parameter& theR1, const GEOM_Parameter& theR2, std::list<int> theFaces)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Fillet object
  Handle(GEOM_Object) aFillet = GetEngine()->AddObject(GetDocID(), GEOM_FILLET);
 #else
  Handle(GEOM_Object) aFillet = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Fillet function
  Handle(GEOM_Function) aFunction =
	aFillet->AddFunction(GEOMImpl_FilletDriver::GetID(), FILLET_SHAPE_FACES_2R);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_FilletDriver::GetID()) return NULL;

  GEOMImpl_IFillet aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetR1,theR1);
  SETPARAM(aCI.SetR2,theR2);
  int aLen = theFaces.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theFaces.begin();
  for (; it != theFaces.end(); it++, ind++) {
    aCI.SetFace(ind, (*it));
  }

  //Compute the Fillet value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Fillet driver failed");
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
  pd << aFillet << " = MakeFilletR1R2(" << theShape
	<< ", " << theR1 << ", " << theR2 << ", ShapeType[\"FACE\"], [";

  it = theFaces.begin();
  pd << (*it++);
  while (it != theFaces.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aFillet;
}

//=============================================================================
/*!
 *  MakeFillet1D
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeFillet1D
       (Handle(GEOM_Object) theShape, const GEOM_Parameter& theR, std::list<int> theVertexes)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Fillet object
  Handle(GEOM_Object) aFillet1D = GetEngine()->AddObject(GetDocID(), GEOM_FILLET_1D);
 #else
  Handle(GEOM_Object) aFillet1D = theShape;
 #endif

  //Add a new Fillet function
  Handle(GEOM_Function) aFunction =
    aFillet1D->AddFunction(GEOMImpl_Fillet1dDriver::GetID(), FILLET_1D_SHAPE_VERTEXES);

  if (aFunction.IsNull())
    return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_Fillet1dDriver::GetID())
    return NULL;

  GEOMImpl_IFillet1d aCI (aFunction);

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();

  if (aRefShape.IsNull())
    return NULL;

  aCI.SetShape(aRefShape);

  SETPARAM(aCI.SetR,theR);

  int aLen = theVertexes.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theVertexes.begin();
  for (; it != theVertexes.end(); it++, ind++) {
    aCI.SetVertex(ind, (*it));
  }

  //Compute the Fillet value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("1D Fillet driver failed");
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
  pd << aFillet1D << " = MakeFillet1D(" << theShape
    << ", " << theR << ", [";

  it = theVertexes.begin();
  if (it != theVertexes.end()) {
  pd << (*it++);
    while (it != theVertexes.end())
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aFillet1D;
}

//=============================================================================
/*!
 *  MakeChamferAll
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeChamferAll (Handle(GEOM_Object) theShape, const GEOM_Parameter& theD)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Chamfer object
  Handle(GEOM_Object) aChamfer = GetEngine()->AddObject(GetDocID(), GEOM_CHAMFER);
 #else
  Handle(GEOM_Object) aChamfer = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Chamfer function
  Handle(GEOM_Function) aFunction =
	aChamfer->AddFunction(GEOMImpl_ChamferDriver::GetID(), CHAMFER_SHAPE_ALL);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ChamferDriver::GetID()) return NULL;

  GEOMImpl_IChamfer aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetD, theD);

  //Compute the Chamfer value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Chamfer driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aChamfer << " = MakeChamferAll("
							   << theShape << ", " << theD << ")";

  SetErrorCode(GEOM_OK);
  return aChamfer;
}

//=============================================================================
/*!
 *  MakeChamferEdge
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeChamferEdge
							(Handle(GEOM_Object) theShape, const GEOM_Parameter& theD1, const GEOM_Parameter& theD2,
							 int theFace1, int theFace2)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Chamfer object
  Handle(GEOM_Object) aChamfer = GetEngine()->AddObject(GetDocID(), GEOM_CHAMFER);
 #else
  Handle(GEOM_Object) aChamfer = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Chamfer function
  Handle(GEOM_Function) aFunction =
	aChamfer->AddFunction(GEOMImpl_ChamferDriver::GetID(), CHAMFER_SHAPE_EDGE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ChamferDriver::GetID()) return NULL;

  GEOMImpl_IChamfer aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetD1,theD1);
  SETPARAM(aCI.SetD2,theD2);
  aCI.SetFace1(theFace1);
  aCI.SetFace2(theFace2);

  //Compute the Chamfer value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Chamfer driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aChamfer
	<< " = MakeChamferEdge(" << theShape << ", " << theD1
	  << ", " << theD2 << ", " << theFace1 << ", " << theFace2 << ")";

  SetErrorCode(GEOM_OK);
  return aChamfer;
}

//=============================================================================
/*!
 *  MakeChamferEdgeAD
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeChamferEdgeAD
							(Handle(GEOM_Object) theShape, const GEOM_Parameter& theD, const GEOM_Parameter& theAngle,
                             int theFace1, int theFace2)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Chamfer object
  Handle(GEOM_Object) aChamfer = GetEngine()->AddObject(GetDocID(), GEOM_CHAMFER);
 #else
  Handle(GEOM_Object) aChamfer = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Chamfer function
  Handle(GEOM_Function) aFunction =
	aChamfer->AddFunction(GEOMImpl_ChamferDriver::GetID(), CHAMFER_SHAPE_EDGE_AD);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ChamferDriver::GetID()) return NULL;

  GEOMImpl_IChamfer aCI (aFunction);

  aCI.SetShape(aRefShape);

  SETPARAM(aCI.SetD, theD);
  SETPARAM(aCI.SetAngle, theAngle);

  aCI.SetFace1(theFace1);
  aCI.SetFace2(theFace2);

  //Compute the Chamfer value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Chamfer driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aChamfer
	<< " = MakeChamferEdgeAD(" << theShape << ", " << theD
      << ", " << theAngle << ", " << theFace1 << ", " << theFace2 << ")";
  SetErrorCode(GEOM_OK);
  return aChamfer;
}

//=============================================================================
/*!
 *  MakeChamferFaces
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeChamferFaces
							(Handle(GEOM_Object) theShape, const GEOM_Parameter& theD1, const GEOM_Parameter& theD2,
                             std::list<int> theFaces)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Chamfer object
  Handle(GEOM_Object) aChamfer = GetEngine()->AddObject(GetDocID(), GEOM_CHAMFER);
 #else
  Handle(GEOM_Object) aChamfer = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Chamfer function
  Handle(GEOM_Function) aFunction =
	aChamfer->AddFunction(GEOMImpl_ChamferDriver::GetID(), CHAMFER_SHAPE_FACES);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ChamferDriver::GetID()) return NULL;

  GEOMImpl_IChamfer aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetD1,theD1);
  SETPARAM(aCI.SetD2,theD2);
  int aLen = theFaces.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theFaces.begin();
  for (; it != theFaces.end(); it++, ind++) {
    aCI.SetFace(ind, (*it));
  }

  //Compute the Chamfer value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Chamfer driver failed");
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
  pd << aChamfer << " = MakeChamferFaces(" << theShape
	<< ", " << theD1 << ", " << theD2 << ", [";

  it = theFaces.begin();
  pd << (*it++);
  while (it != theFaces.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aChamfer;
}

//=============================================================================
/*!
 *  MakeChamfer2DEdges
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeChamfer2DEdges
							(Handle(GEOM_Object) theShape, const GEOM_Parameter& theD1, const GEOM_Parameter& theD2,
							 int theEdge1, int theEdge2)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Chamfer object
  Handle(GEOM_Object) aChamfer = GetEngine()->AddObject(GetDocID(), GEOM_CHAMFER);
 #else
  Handle(GEOM_Object) aChamfer = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Chamfer function
  Handle(GEOM_Function) aFunction =
	aChamfer->AddFunction(GEOMImpl_ChamferDriver::GetID(), CHAMFER_SHAPE_EDGES_2D);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ChamferDriver::GetID()) return NULL;

  GEOMImpl_IChamfer aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetD1,theD1);
  SETPARAM(aCI.SetD2,theD2);
  aCI.Set2DEdge1(theEdge1);
  aCI.Set2DEdge2(theEdge2);

  //Compute the Chamfer value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Chamfer driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aChamfer
	<< " = MakeChamfer2DEdge(" << theShape << ", " << theD1
	  << ", " << theD2 << ", " << theEdge1 << ", " << theEdge2 << ")";

  SetErrorCode(GEOM_OK);
  return aChamfer;
}

//=============================================================================
/*!
 *  MakeThickSolid
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeThickSolid
	   (Handle(GEOM_Object) theShape, const GEOM_Parameter& theOffset, std::list<int> theFaces)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new ThickSolid object
  Handle(GEOM_Object) aThickSolid = GetEngine()->AddObject(GetDocID(), GEOM_THICKSOLID);
 #else
  Handle(GEOM_Object) aThickSolid = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new ThickSolid function
  Handle(GEOM_Function) aFunction =
	aThickSolid->AddFunction(GEOMImpl_ThickSolidDriver::GetID(), THICKSOLID);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ThickSolidDriver::GetID()) return NULL;

  GEOMImpl_IThickSolid aCI (aFunction);

  aCI.SetShape(aRefShape);
  SETPARAM(aCI.SetOffset,theOffset);
  int aLen = theFaces.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theFaces.begin();
  for (; it != theFaces.end(); it++, ind++) {
    aCI.SetFace(ind, (*it));
  }

  //Compute the ThickSolid value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
	  SetErrorCode("ThickSolid driver failed");
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
  pd << aThickSolid << " = MakeThickSolid(" << theShape
	<< ", " << theOffset << ", ";

  it = theFaces.begin();
  pd << (*it++);
  while (it != theFaces.end()) {
    pd << ", " << (*it++);
  }
  pd << ")";

  SetErrorCode(GEOM_OK);
  return aThickSolid;
}

//=============================================================================
/*!
 *  MakeDraftFacesAngle
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeDraftFacesAngle
	   (Handle(GEOM_Object) theShape, Handle(GEOM_Object) theNeutralPlane,
		const GEOM_Parameter& theAngle, std::list<int> theFaces)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Draft Solid object
  Handle(GEOM_Object) aDraftSolid = GetEngine()->AddObject(GetDocID(), GEOM_DRAFT);
 #else
  Handle(GEOM_Object) aDraftSolid = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull())
	return NULL;

  Handle(GEOM_Function) aRefPlane = theNeutralPlane->GetLastFunction();
  if (aRefPlane.IsNull())
	return NULL;

  //Add a new Draft Solid function
  Handle(GEOM_Function) aFunction = aDraftSolid->AddFunction(GEOMImpl_DraftDriver::GetID(), DRAFT_BY_FACE_PLN_ANG);

  if (aFunction.IsNull())
	return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_DraftDriver::GetID())
	return NULL;

  GEOMImpl_IDraft aCI (aFunction);

  aCI.SetShape(aRefShape);
  aCI.SetPlane(aRefPlane);

  SETPARAM(aCI.SetAngle,theAngle);

  int aLen = theFaces.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theFaces.begin();
  for (; it != theFaces.end(); it++, ind++) {
	aCI.SetFace(ind, (*it));
  }

  //Compute the Draft value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
	OCC_CATCH_SIGNALS;
#endif
	if (!GetSolver()->ComputeFunction(aFunction)) {
	  SetErrorCode("Draft driver failed");
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
  pd << aDraftSolid << " = MakeDraftFacesAngle(" << theShape
  << ", " << theNeutralPlane << ", " << theAngle << ", [";

  it = theFaces.begin();
  pd << (*it++);
  while (it != theFaces.end()) {
	pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aDraftSolid;
}

//=============================================================================
/*!
 *  MakeDraftFacesAngleWithStationaryFace
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeDraftFacesAngleWithStationaryFace
	   (Handle(GEOM_Object) theShape, int theNeutralPlane, const GEOM_Parameter& theAngle, std::list<int> theFaces)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Draft Solid object
  Handle(GEOM_Object) aDraftSolid = GetEngine()->AddObject(GetDocID(), GEOM_DRAFT);
 #else
  Handle(GEOM_Object) aDraftSolid = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull())
	return NULL;

  //Add a new Draft Solid function
  Handle(GEOM_Function) aFunction = aDraftSolid->AddFunction(GEOMImpl_DraftDriver::GetID(), DRAFT_BY_FACE_STA_ANG);

  if (aFunction.IsNull())
	return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_DraftDriver::GetID())
	return NULL;

  GEOMImpl_IDraft aCI (aFunction);

  aCI.SetStationary(theNeutralPlane);
  aCI.SetShape(aRefShape);

  SETPARAM(aCI.SetAngle,theAngle);

  int aLen = theFaces.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theFaces.begin();
  for (; it != theFaces.end(); it++, ind++) {
	aCI.SetFace(ind, (*it));
  }

  //Compute the Draft value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
	OCC_CATCH_SIGNALS;
#endif
	if (!GetSolver()->ComputeFunction(aFunction)) {
	  SetErrorCode("Draft driver failed");
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
  pd << aDraftSolid << " = MakeDraftFacesAngleWithStationaryFace(" << theShape
  << ", " << theNeutralPlane << ", " << theAngle << ", [";

  it = theFaces.begin();
  pd << (*it++);
  while (it != theFaces.end()) {
	pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aDraftSolid;
}

//=============================================================================
/*!
 *  MakeChamferFacesAD
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeChamferFacesAD
							(Handle(GEOM_Object) theShape, const GEOM_Parameter& theD, const GEOM_Parameter& theAngle,
                             std::list<int> theFaces)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Chamfer object
  Handle(GEOM_Object) aChamfer = GetEngine()->AddObject(GetDocID(), GEOM_CHAMFER);
 #else
  Handle(GEOM_Object) aChamfer = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Chamfer function
  Handle(GEOM_Function) aFunction =
	aChamfer->AddFunction(GEOMImpl_ChamferDriver::GetID(), CHAMFER_SHAPE_FACES_AD);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ChamferDriver::GetID()) return NULL;

  GEOMImpl_IChamfer aCI (aFunction);

  aCI.SetShape(aRefShape);

  SETPARAM(aCI.SetD, theD);
  SETPARAM(aCI.SetAngle, theAngle);

  int aLen = theFaces.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theFaces.begin();
  for (; it != theFaces.end(); it++, ind++) {
    aCI.SetFace(ind, (*it));
  }

  //Compute the Chamfer value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Chamfer driver failed");
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
  pd << aChamfer << " = MakeChamferFacesAD(" << theShape
    << ", " << theD << ", " << theAngle << ", [";

  it = theFaces.begin();
  pd << (*it++);
  while (it != theFaces.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aChamfer;
}

//=============================================================================
/*!
 *  MakeChamferEdges
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeChamferEdges
							(Handle(GEOM_Object) theShape, const GEOM_Parameter& theD1, const GEOM_Parameter& theD2,
                             std::list<int> theEdges)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Chamfer object
  Handle(GEOM_Object) aChamfer = GetEngine()->AddObject(GetDocID(), GEOM_CHAMFER);
 #else
  Handle(GEOM_Object) aChamfer = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) { MESSAGE ("Shape is NULL!!!"); return NULL;}

  //Add a new Chamfer function
  Handle(GEOM_Function) aFunction =
	aChamfer->AddFunction(GEOMImpl_ChamferDriver::GetID(), CHAMFER_SHAPE_EDGES);
  if (aFunction.IsNull()) { MESSAGE ( "Edges Function is NULL!!!" ); return NULL;}

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ChamferDriver::GetID())
	{ MESSAGE ( "Chamfer Driver is NULL!!!" ); return NULL; }

  GEOMImpl_IChamfer aCI (aFunction);

  aCI.SetShape(aRefShape);

  SETPARAM(aCI.SetD1, theD1);
  SETPARAM(aCI.SetD2, theD2);

  int aLen = theEdges.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theEdges.begin();
  for (; it != theEdges.end(); it++, ind++) {
    aCI.SetEdge(ind, (*it));
  }

  //Compute the Chamfer value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Chamfer driver failed");
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
  pd << aChamfer << " = MakeChamferEdges(" << theShape
    << ", " << theD1 << ", " << theD2 << ", [";

  it = theEdges.begin();
  pd << (*it++);
  while (it != theEdges.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aChamfer;
}

//=============================================================================
/*!
 *  MakeChamferEdgesAD
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeChamferEdgesAD
							(Handle(GEOM_Object) theShape, const GEOM_Parameter& theD, const GEOM_Parameter& theAngle,
                             std::list<int> theEdges)
{
  SetErrorCode(GEOM_KO);

 #ifdef LOCAL_OPS_CREATE_NEW_OBJECT
  //Add a new Chamfer object
  Handle(GEOM_Object) aChamfer = GetEngine()->AddObject(GetDocID(), GEOM_CHAMFER);
 #else
  Handle(GEOM_Object) aChamfer = theShape;
 #endif

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) { MESSAGE ("Shape is NULL!!!"); return NULL;}

  //Add a new Chamfer function
  Handle(GEOM_Function) aFunction =
	aChamfer->AddFunction(GEOMImpl_ChamferDriver::GetID(), CHAMFER_SHAPE_EDGES_AD);
  if (aFunction.IsNull()) { MESSAGE ( "Edges Function is NULL!!!" ); return NULL; }

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ChamferDriver::GetID())
	{ MESSAGE("Chamfer Driver is NULL!!!"); return NULL;}

  GEOMImpl_IChamfer aCI (aFunction);

  aCI.SetShape(aRefShape);

  SETPARAM(aCI.SetD, theD);
  SETPARAM(aCI.SetAngle, theAngle);

  int aLen = theEdges.size();
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<int>::iterator it = theEdges.begin();
  for (; it != theEdges.end(); it++, ind++) {
    aCI.SetEdge(ind, (*it));
  }

  //Compute the Chamfer value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Chamfer driver failed");
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
  pd << aChamfer << " = MakeChamferEdgesAD(" << theShape
    << ", " << theD << ", " << theAngle << ", [";

  it = theEdges.begin();
  pd << (*it++);
  while (it != theEdges.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(GEOM_OK);
  return aChamfer;
}

//=============================================================================
/*!
 *  Archimede
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ILocalOperations::MakeArchimede (Handle(GEOM_Object) theShape,
															  const GEOM_Parameter& theWeight,
															  const GEOM_Parameter& theWaterDensity,
															  const GEOM_Parameter& theMeshingDeflection)
{
  SetErrorCode(GEOM_KO);

  //Add a new Archimede object
  Handle(GEOM_Object) aChamfer = GetEngine()->AddObject(GetDocID(), GEOM_ARCHIMEDE);

  //Add a new Archimede function
  Handle(GEOM_Function) aFunction = aChamfer->AddFunction(GEOMImpl_ArchimedeDriver::GetID(), ARCHIMEDE_TYPE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ArchimedeDriver::GetID()) return NULL;

  GEOMImpl_IArchimede aAI (aFunction);

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  aAI.SetBasicShape(aRefShape);
  SETPARAM(aAI.SetWeight,theWeight);
  SETPARAM(aAI.SetDensity,theWaterDensity);
  SETPARAM(aAI.SetDeflection,theMeshingDeflection);

  //Compute the Archimede value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Archimede driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aChamfer
	<< " = Archimede(" << theShape << ", " << theWeight << ", "
	  << theWaterDensity << ", " << theMeshingDeflection << ")";

  SetErrorCode(GEOM_OK);
  return aChamfer;
}

//=============================================================================
/*!
 *  GetSubShape
 */
//=============================================================================
bool GEOMImpl_ILocalOperations::GetSubShape (const TopoDS_Shape& theShape, const int theIndex,
                                             TopoDS_Shape& theSubShape)
{
  if (theShape.IsNull() || theIndex < 1)
    return false;

  TopTools_IndexedMapOfShape anIndices;
  TopExp::MapShapes(theShape, anIndices);
  if (theIndex > anIndices.Extent()) return false;
  theSubShape = anIndices.FindKey(theIndex);

  return true;
}

//=============================================================================
/*!
 *  GetSubShapeIndex
 */
//=============================================================================
Standard_Integer GEOMImpl_ILocalOperations::GetSubShapeIndex (Handle(GEOM_Object) theShape,
                                                              Handle(GEOM_Object) theSubShape)
{
  SetErrorCode(GEOM_KO);

  Standard_Integer anInd = -1;
  GEOM_Engine* anEngine = GetEngine();
  //GEOMImpl_Gen* aGen = dynamic_cast<GEOMImpl_Gen*>(anEngine);
  GEOMImpl_Gen* aGen = (GEOMImpl_Gen*)anEngine;

  if (aGen) {
    GEOMImpl_IShapesOperations* anIShapesOperations =
      aGen->GetIShapesOperations(GetDocID());
    anInd = anIShapesOperations->GetSubShapeIndex(theShape, theSubShape);
    SetErrorCode(anIShapesOperations->GetErrorCode());
  }

  return anInd;
}
