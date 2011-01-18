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

#include <GEOMImpl_IGroupOperations.hxx>

#include <GEOMImpl_Types.hxx>

#include <GEOM_Function.hxx>
#include <GEOM_ISubShape.hxx>
#include <GEOM_PythonDump.hxx>

#include <TFunction_DriverTable.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_Logbook.hxx>
#include <TDF_Tool.hxx>
#include <TDataStd_Integer.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <TColStd_HArray1OfInteger.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>

//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================
GEOMImpl_IGroupOperations::GEOMImpl_IGroupOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  //MESSAGE("GEOMImpl_IGroupOperations::GEOMImpl_IGroupOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_IGroupOperations::~GEOMImpl_IGroupOperations()
{
  //MESSAGE("GEOMImpl_IGroupOperations::~GEOMImpl_IGroupOperations");
}


//=============================================================================
/*!
 *  CreateGroup
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IGroupOperations::CreateGroup
       (Handle(GEOM_Object) theMainShape, TopAbs_ShapeEnum theShapeType)
{
  SetErrorCode(GEOM_KO);

  Handle(TColStd_HArray1OfInteger) anArray = new TColStd_HArray1OfInteger(1,1);
  anArray->SetValue(1, -1);

  //Add a new Sub-shape object
  Handle(GEOM_Object) aGroup = GetEngine()->AddSubShape(theMainShape, anArray);

  //Set a GROUP type
  aGroup->SetType(GEOM_GROUP);

  //Set a sub shape type
  TDF_Label aFreeLabel = aGroup->GetFreeLabel();
  TDataStd_Integer::Set(aFreeLabel, (Standard_Integer)theShapeType);

  //Make a Python command
  Handle(GEOM_Function) aFunction = aGroup->GetFunction(1);

  GEOM::TPythonDump(aFunction) << aGroup
    << " = CreateGroup(" << theMainShape << ", " << theShapeType << ")";

  SetErrorCode(GEOM_OK);
  return aGroup;
}

//=============================================================================
/*!
 *  AddObject
 */
//=============================================================================
void GEOMImpl_IGroupOperations::AddObject(Handle(GEOM_Object) theGroup, int theSubShapeID)
{
  SetErrorCode(GEOM_KO);
  if(theGroup.IsNull()) return;

  Handle(GEOM_Function) aFunction = theGroup->GetFunction(1);
  if(aFunction.IsNull()) return;

  GEOM_ISubShape aSSI (aFunction);

  // Check sub-shape index validity
  TDF_Label aLabel = aSSI.GetMainShape()->GetOwnerEntry();
  if (aLabel.IsRoot()) return;
  Handle(GEOM_Object) aMainObj = GEOM_Object::GetObject(aLabel);
  if (aMainObj.IsNull()) return;
  TopoDS_Shape aMainShape = aMainObj->GetValue();
  if (aMainShape.IsNull()) return;

  TopTools_IndexedMapOfShape aMapOfShapes;
  TopExp::MapShapes(aMainShape, aMapOfShapes);

  if (theSubShapeID < 1 || aMapOfShapes.Extent() < theSubShapeID) {
    SetErrorCode("Invalid sub-shape index: out of range");
    return;
  }

  // Add sub-shape index
  Handle(TColStd_HArray1OfInteger) aSeq = aSSI.GetIndices();
  if(aSeq.IsNull()) return;
  if(aSeq->Length() == 1 && aSeq->Value(1) == -1) {
    aSeq->SetValue(1, theSubShapeID);
  }
  else {
    Standard_Integer aLength = aSeq->Length();
    Handle(TColStd_HArray1OfInteger) aNewSeq = new TColStd_HArray1OfInteger(1, aLength+1);
    for(Standard_Integer i = 1; i<=aLength; i++) {
      aNewSeq->SetValue(i, aSeq->Value(i));
      if(aSeq->Value(i) == theSubShapeID) {
	SetErrorCode(GEOM_ALREADY_PRESENT);
	return; //
      }
    }
    aNewSeq->SetValue(aLength+1, theSubShapeID);
    aSSI.SetIndices(aNewSeq);
  }

  // As we do not recompute here our group, lets mark it as Modified
  Standard_Integer aTic = aMainObj->GetTic(); // tic of main shape
  theGroup->SetTic(aTic - 1);

  //Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << "AddObject(" << theGroup << ", " << theSubShapeID << ")";

  SetErrorCode(GEOM_OK);
  return;
}

//=============================================================================
/*!
 *  RemoveObject
 */
//=============================================================================
void GEOMImpl_IGroupOperations::RemoveObject (Handle(GEOM_Object) theGroup, int theSubShapeID)
{
  SetErrorCode(GEOM_KO);
  if(theGroup.IsNull()) return;

  Handle(GEOM_Function) aFunction = theGroup->GetFunction(1);
  if(aFunction.IsNull()) return;

  GEOM_ISubShape aSSI(aFunction);
  Handle(TColStd_HArray1OfInteger) aSeq = aSSI.GetIndices();
  if(aSeq.IsNull()) return;

  if(aSeq->Length() == 1 && aSeq->Value(1) == -1) {
    SetErrorCode(GEOM_NOT_EXISTS);
    return;
  }

  Handle(TColStd_HArray1OfInteger) aNewSeq;
  Standard_Integer aLength = aSeq->Length();
  if(aLength == 1) {
    if(aSeq->Value(1) != theSubShapeID) {
      SetErrorCode(GEOM_NOT_EXISTS);
      return;
    }
    aNewSeq = new TColStd_HArray1OfInteger(1,1);
    aNewSeq->SetValue(1, -1);
  }
  else {
    aNewSeq = new TColStd_HArray1OfInteger(1, aLength-1);
    Standard_Boolean isFound = Standard_False;
    for (Standard_Integer i = 1, k = 1; i <= aLength; i++) {
      if (aSeq->Value(i) == theSubShapeID) {
        isFound = Standard_True;
      } else {
        if (k < aLength) { // this check is to avoid sequence <aNewSeq> overflow
          aNewSeq->SetValue(k, aSeq->Value(i));
          k++;
        }
      }
    }

    if (!isFound) {
      SetErrorCode(GEOM_NOT_EXISTS);
      return;
    }
  }

  aSSI.SetIndices(aNewSeq);

  // As we do not recompute here our group, lets mark it as Modified
  TDF_Label aLabel = aSSI.GetMainShape()->GetOwnerEntry();
  if (aLabel.IsRoot()) return;
  Handle(GEOM_Object) aMainObj = GEOM_Object::GetObject(aLabel);
  if (aMainObj.IsNull()) return;
  Standard_Integer aTic = aMainObj->GetTic(); // tic of main shape
  theGroup->SetTic(aTic - 1);

  //Make a Python command
  GEOM::TPythonDump(aFunction, /*append=*/true)
    << "RemoveObject(" << theGroup << ", " << theSubShapeID << ")";

  SetErrorCode(GEOM_OK);
  return;
}

//=============================================================================
/*!
 *  UnionList
 */
//=============================================================================
void GEOMImpl_IGroupOperations::UnionList (Handle(GEOM_Object) theGroup,
                                           const Handle(TColStd_HSequenceOfTransient)& theSubShapes)
{
  SetErrorCode(GEOM_KO);
  if (theGroup.IsNull()) return;

  Standard_Integer aLen = theSubShapes->Length();
  if (aLen < 1) {
    SetErrorCode("The list is empty");
    return;
  }

  Handle(GEOM_Function) aFunction = theGroup->GetFunction(1);
  if (aFunction.IsNull()) return;

  GEOM_ISubShape aSSI (aFunction);

  // New contents of the group
  TColStd_ListOfInteger aNewIDs;
  TColStd_MapOfInteger mapIDs;

  // Add current IDs to the list
  Handle(TColStd_HArray1OfInteger) aSeq = aSSI.GetIndices();
  if (aSeq.IsNull()) return;
  Standard_Integer val_j, aLength = aSeq->Length();

  for (Standard_Integer j = 1; j <= aLength; j++) {
    val_j = aSeq->Value(j);
    if (val_j > 0 && mapIDs.Add(val_j)) {
      aNewIDs.Append(val_j);
    }
  }

  // Get Main Shape
  Handle(GEOM_Function) aMainShapeFunc = aSSI.GetMainShape();
  if (aMainShapeFunc.IsNull()) return;
  TDF_Label aLabel = aMainShapeFunc->GetOwnerEntry();
  if (aLabel.IsRoot()) return;
  Handle(GEOM_Object) aMainObj = GEOM_Object::GetObject(aLabel);
  if (aMainObj.IsNull()) return;
  TopoDS_Shape aMainShape = aMainObj->GetValue();
  if (aMainShape.IsNull()) return;

  TopTools_IndexedMapOfShape mapIndices;
  TopExp::MapShapes(aMainShape, mapIndices);

  // Get group type
  TopAbs_ShapeEnum aType = GetType(theGroup);

  // Get IDs of sub-shapes to add
  Standard_Integer i, new_id;
  for (i = 1; i <= aLen; i++) {
    Handle(GEOM_Object) anObj_i = Handle(GEOM_Object)::DownCast(theSubShapes->Value(i));

    TopoDS_Shape aShape_i = anObj_i->GetValue();
    TopAbs_ShapeEnum aType_i = aShape_i.ShapeType();

    // 1. If aShape_i is sub-shape of aMainShape - add it
    if (anObj_i->IsMainShape()) {
      if (aType_i != aType && aType != TopAbs_SHAPE && aType != TopAbs_COMPOUND) {
        SetErrorCode("Operation aborted: one of given objects has a wrong type");
        return;
      }
      if (!mapIndices.Contains(aShape_i)) {
        SetErrorCode("Operation aborted: not a sub-shape given");
        return;
      }
      new_id = mapIndices.FindIndex(aShape_i);
      if (mapIDs.Add(new_id)) {
        aNewIDs.Append(new_id);
      }
    }
    // 2. If type of group is not defined - add all sub-shapes of aShape_i
    else if (aType == TopAbs_SHAPE || aType == TopAbs_COMPOUND) {
      TopTools_IndexedMapOfShape mapIndices_i;
      TopExp::MapShapes(aShape_i, mapIndices_i);
      Standard_Integer ii = 1, nbSubSh = mapIndices_i.Extent();
      Standard_Boolean someGood = Standard_False;
      for (; ii <= nbSubSh; ii++) {
        TopoDS_Shape aSubShape_i = mapIndices_i.FindKey(ii);
        if (mapIndices.Contains(aSubShape_i)) {
          someGood = Standard_True;
          new_id = mapIndices.FindIndex(aSubShape_i);
          if (mapIDs.Add(new_id)) {
            aNewIDs.Append(new_id);
          }
        }
      }
      if (!someGood) {
        SetErrorCode("Operation aborted: not a sub-shape given");
        return;
      }
    }
    // 3. If type of group is defined - add all sub-shapes of aShape_i of that type
    else {
      TopExp_Explorer aSubShapes_i (aShape_i, aType);
      for (; aSubShapes_i.More(); aSubShapes_i.Next()) {
        TopoDS_Shape aSubShape_i = aSubShapes_i.Current();
        if (!mapIndices.Contains(aSubShape_i)) {
          SetErrorCode("Operation aborted: not a sub-shape given");
          return;
        }
        new_id = mapIndices.FindIndex(aSubShape_i);
        if (mapIDs.Add(new_id)) {
          aNewIDs.Append(new_id);
        }
      }
    }
  }

  if (aNewIDs.Extent() > 0) {
    Standard_Integer k = 1;
    TColStd_ListIteratorOfListOfInteger aNewIDsIter (aNewIDs);
    Handle(TColStd_HArray1OfInteger) aNewSeq = new TColStd_HArray1OfInteger(1, aNewIDs.Extent());
    for (; aNewIDsIter.More(); aNewIDsIter.Next(), k++) {
      aNewSeq->SetValue(k, aNewIDsIter.Value());
    }

    aSSI.SetIndices(aNewSeq);

    // As we do not recompute here our group, lets mark it as Modified
    Standard_Integer aTic = aMainObj->GetTic(); // tic of main shape
    theGroup->SetTic(aTic - 1);
  }

  //Make a Python command
  Handle(GEOM_Object) aLatest = GEOM::GetCreatedLast(theSubShapes);
  aLatest = GEOM::GetCreatedLast(aLatest, theGroup);
  Handle(GEOM_Function) aLastFunc = aLatest->GetLastFunction();

  GEOM::TPythonDump pd (aLastFunc, /*append=*/true);
  pd << "UnionList(" << theGroup << ", [";

  for (i = 1; i <= aLen; i++) {
    Handle(GEOM_Object) anObj_i = Handle(GEOM_Object)::DownCast(theSubShapes->Value(i));
    pd << anObj_i << (( i < aLen ) ? ", " : "])");
  }

  SetErrorCode(GEOM_OK);
}

//=============================================================================
/*!
 *  DifferenceList
 */
//=============================================================================
void GEOMImpl_IGroupOperations::DifferenceList (Handle(GEOM_Object) theGroup,
                                                const Handle(TColStd_HSequenceOfTransient)& theSubShapes)
{
  SetErrorCode(GEOM_KO);
  if (theGroup.IsNull()) return;

  Standard_Integer aLen = theSubShapes->Length();
  if (aLen < 1) {
    SetErrorCode("The list is empty");
    return;
  }

  Handle(GEOM_Function) aFunction = theGroup->GetFunction(1);
  if (aFunction.IsNull()) return;

  GEOM_ISubShape aSSI (aFunction);

  // Map of IDs to be removed
  TColStd_MapOfInteger mapIDsToRemove;

  // Map of current IDs
  Handle(TColStd_HArray1OfInteger) aSeq = aSSI.GetIndices();
  if (aSeq.IsNull()) return;
  Standard_Integer aLength = aSeq->Length();

  if (aLength == 1 && aSeq->Value(1) == -1) // empty group
    return;

  TColStd_MapOfInteger mapIDsCurrent;
  Standard_Integer j = 1;
  for (; j <= aLength; j++) {
    mapIDsCurrent.Add(aSeq->Value(j));
  }

  // Get Main Shape
  Handle(GEOM_Function) aMainShapeFunc = aSSI.GetMainShape();
  if (aMainShapeFunc.IsNull()) return;
  TDF_Label aLabel = aMainShapeFunc->GetOwnerEntry();
  if (aLabel.IsRoot()) return;
  Handle(GEOM_Object) aMainObj = GEOM_Object::GetObject(aLabel);
  if (aMainObj.IsNull()) return;
  TopoDS_Shape aMainShape = aMainObj->GetValue();
  if (aMainShape.IsNull()) return;

  TopTools_IndexedMapOfShape mapIndices;
  TopExp::MapShapes(aMainShape, mapIndices);

  // Get group type
  TopAbs_ShapeEnum aType = GetType(theGroup);

  // Get IDs of sub-shapes to be removed
  Standard_Integer i, rem_id;
  for (i = 1; i <= aLen; i++) {
    Handle(GEOM_Object) anObj_i = Handle(GEOM_Object)::DownCast(theSubShapes->Value(i));

    TopoDS_Shape aShape_i = anObj_i->GetValue();

    // 1. If aShape_i is sub-shape of aMainShape - remove it
    if (mapIndices.Contains(aShape_i)) {
      rem_id = mapIndices.FindIndex(aShape_i);
      if (mapIDsCurrent.Contains(rem_id)) {
        mapIDsToRemove.Add(rem_id);
      }
    }
    // 2. If type of group is not defined - remove all sub-shapes of aShape_i
    else if (aType == TopAbs_SHAPE || aType == TopAbs_COMPOUND) {
      TopTools_IndexedMapOfShape mapIndices_i;
      TopExp::MapShapes(aShape_i, mapIndices_i);
      Standard_Integer nbSubSh = mapIndices_i.Extent();
      Standard_Integer ii = 1;
      for (; ii <= nbSubSh; ii++) {
        TopoDS_Shape aSubShape_i = mapIndices_i.FindKey(ii);
        if (mapIndices.Contains(aSubShape_i)) {
          rem_id = mapIndices.FindIndex(aSubShape_i);
          if (mapIDsCurrent.Contains(rem_id)) {
            mapIDsToRemove.Add(rem_id);
          }
        }
      }
    }
    // 3. If type of group is defined - remove all sub-shapes of aShape_i of that type
    else {
      TopExp_Explorer aSubShapes_i (aShape_i, aType);
      for (; aSubShapes_i.More(); aSubShapes_i.Next()) {
        TopoDS_Shape aSubShape_i = aSubShapes_i.Current();
        if (mapIndices.Contains(aSubShape_i)) {
          rem_id = mapIndices.FindIndex(aSubShape_i);
          if (mapIDsCurrent.Contains(rem_id)) {
            mapIDsToRemove.Add(rem_id);
          }
        }
      }
    }
  }

  if (mapIDsToRemove.Extent() > 0) {
    Standard_Integer k = 1, aRemLength = mapIDsToRemove.Extent();
    Handle(TColStd_HArray1OfInteger) aNewSeq = new TColStd_HArray1OfInteger(1, aLength - aRemLength);

    for (j = 1; j <= aLength; j++) {
      if (!mapIDsToRemove.Contains(aSeq->Value(j))) {
        aNewSeq->SetValue(k, aSeq->Value(j));
        k++;
      }
    }

    aSSI.SetIndices(aNewSeq);

    // As we do not recompute here our group, lets mark it as Modified
    Standard_Integer aTic = aMainObj->GetTic(); // tic of main shape
    theGroup->SetTic(aTic - 1);
  }

  //Make a Python command
  Handle(GEOM_Object) aLatest = GEOM::GetCreatedLast(theSubShapes);
  aLatest = GEOM::GetCreatedLast(aLatest, theGroup);
  Handle(GEOM_Function) aLastFunc = aLatest->GetLastFunction();

  GEOM::TPythonDump pd (aLastFunc, /*append=*/true);
  pd << "DifferenceList(" << theGroup << ", [";

  for (i = 1; i <= aLen; i++) {
    Handle(GEOM_Object) anObj_i = Handle(GEOM_Object)::DownCast(theSubShapes->Value(i));
    pd << anObj_i << (( i < aLen ) ? ", " : "])");
  }

  SetErrorCode(GEOM_OK);
}

//=============================================================================
/*!
 *  UnionIDs
 */
//=============================================================================
void GEOMImpl_IGroupOperations::UnionIDs (Handle(GEOM_Object) theGroup,
                                          const Handle(TColStd_HSequenceOfInteger)& theSubShapes)
{
  SetErrorCode(GEOM_KO);
  if (theGroup.IsNull()) return;

  Standard_Integer aLen = theSubShapes->Length();
  if (aLen < 1) {
    SetErrorCode("The list is empty");
    return;
  }

  Handle(GEOM_Function) aFunction = theGroup->GetFunction(1);
  if (aFunction.IsNull()) return;

  GEOM_ISubShape aSSI (aFunction);

  // New contents of the group
  TColStd_ListOfInteger aNewIDs;
  TColStd_MapOfInteger mapIDs;

  // Add current IDs to the list
  Handle(TColStd_HArray1OfInteger) aSeq = aSSI.GetIndices();
  if (aSeq.IsNull()) return;
  Standard_Integer val_j, aLength = aSeq->Length();

  for (Standard_Integer j = 1; j <= aLength; j++) {
    val_j = aSeq->Value(j);
    if (val_j > 0 && mapIDs.Add(val_j)) {
      aNewIDs.Append(val_j);
    }
  }

  // Get Main Shape
  Handle(GEOM_Function) aMainShapeFunc = aSSI.GetMainShape();
  if (aMainShapeFunc.IsNull()) return;
  TDF_Label aLabel = aMainShapeFunc->GetOwnerEntry();
  if (aLabel.IsRoot()) return;
  Handle(GEOM_Object) aMainObj = GEOM_Object::GetObject(aLabel);
  if (aMainObj.IsNull()) return;
  TopoDS_Shape aMainShape = aMainObj->GetValue();
  if (aMainShape.IsNull()) return;

  TopTools_IndexedMapOfShape mapIndices;
  TopExp::MapShapes(aMainShape, mapIndices);

  // Get group type
  TopAbs_ShapeEnum aType = GetType(theGroup);

  // Get IDs of sub-shapes to add
  Standard_Integer i, new_id;
  for (i = 1; i <= aLen; i++) {
    new_id = theSubShapes->Value(i);

    if (0 < new_id && new_id <= mapIndices.Extent()) {
      //if (mapIDs.Add(new_id)) { IPAL21297. Why we ignore invalid ids silently?
      if (mapIDs.Add(new_id) && mapIndices(new_id).ShapeType()==aType ) {
        aNewIDs.Append(new_id);
      }
    }
  }

  if (aNewIDs.Extent() > 0) {
    Standard_Integer k = 1;
    TColStd_ListIteratorOfListOfInteger aNewIDsIter (aNewIDs);
    Handle(TColStd_HArray1OfInteger) aNewSeq = new TColStd_HArray1OfInteger(1, aNewIDs.Extent());
    for (; aNewIDsIter.More(); aNewIDsIter.Next(), k++) {
      aNewSeq->SetValue(k, aNewIDsIter.Value());
    }

    aSSI.SetIndices(aNewSeq);

    // As we do not recompute here our group, lets mark it as Modified
    Standard_Integer aTic = aMainObj->GetTic(); // tic of main shape
    theGroup->SetTic(aTic - 1);
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction, /*append=*/true);
  pd << "UnionIDs(" << theGroup << ", [";
  for (i = 1; i < aLen; i++)
    pd << theSubShapes->Value(i) << ", ";
  pd << theSubShapes->Value(aLen) << "])";

  SetErrorCode(GEOM_OK);
}

//=============================================================================
/*!
 *  DifferenceIDs
 */
//=============================================================================
void GEOMImpl_IGroupOperations::DifferenceIDs (Handle(GEOM_Object) theGroup,
                                               const Handle(TColStd_HSequenceOfInteger)& theSubShapes)
{
  SetErrorCode(GEOM_KO);
  if (theGroup.IsNull()) return;

  Standard_Integer aLen = theSubShapes->Length();
  if (aLen < 1) {
    SetErrorCode("The list is empty");
    return;
  }

  Handle(GEOM_Function) aFunction = theGroup->GetFunction(1);
  if (aFunction.IsNull()) return;

  GEOM_ISubShape aSSI (aFunction);

  // Map of IDs to be removed
  TColStd_MapOfInteger mapIDsToRemove;

  // Map of current IDs
  Handle(TColStd_HArray1OfInteger) aSeq = aSSI.GetIndices();
  if (aSeq.IsNull()) return;
  Standard_Integer aLength = aSeq->Length();

  if (aLength == 1 && aSeq->Value(1) == -1) // empty group
    return;

  TColStd_MapOfInteger mapIDsCurrent;
  Standard_Integer j = 1;
  for (; j <= aLength; j++) {
    mapIDsCurrent.Add(aSeq->Value(j));
  }

  // Get Main Shape
  Handle(GEOM_Function) aMainShapeFunc = aSSI.GetMainShape();
  if (aMainShapeFunc.IsNull()) return;
  TDF_Label aLabel = aMainShapeFunc->GetOwnerEntry();
  if (aLabel.IsRoot()) return;
  Handle(GEOM_Object) aMainObj = GEOM_Object::GetObject(aLabel);
  if (aMainObj.IsNull()) return;
  TopoDS_Shape aMainShape = aMainObj->GetValue();
  if (aMainShape.IsNull()) return;

  TopTools_IndexedMapOfShape mapIndices;
  TopExp::MapShapes(aMainShape, mapIndices);

  // Get IDs of sub-shapes to be removed
  Standard_Integer i, rem_id;
  for (i = 1; i <= aLen; i++) {
    rem_id = theSubShapes->Value(i);
    if (mapIDsCurrent.Contains(rem_id)) {
      mapIDsToRemove.Add(rem_id);
    }
  }

  if (mapIDsToRemove.Extent() > 0) {
    Standard_Integer k = 1, aRemLength = mapIDsToRemove.Extent();
    Handle(TColStd_HArray1OfInteger) aNewSeq = new TColStd_HArray1OfInteger(1, aLength - aRemLength);

    for (j = 1; j <= aLength; j++) {
      if (!mapIDsToRemove.Contains(aSeq->Value(j))) {
        aNewSeq->SetValue(k, aSeq->Value(j));
        k++;
      }
    }

    aSSI.SetIndices(aNewSeq);

    // As we do not recompute here our group, lets mark it as Modified
    Standard_Integer aTic = aMainObj->GetTic(); // tic of main shape
    theGroup->SetTic(aTic - 1);
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction, /*append=*/true);
  pd << "DifferenceIDs(" << theGroup << ", [";
  for (i = 1; i < aLen; i++)
    pd << theSubShapes->Value(i) << ", ";
  pd << theSubShapes->Value(aLen) << "])";

  SetErrorCode(GEOM_OK);
}

//=============================================================================
/*!
 *  GetType
 */
//=============================================================================
TopAbs_ShapeEnum GEOMImpl_IGroupOperations::GetType(Handle(GEOM_Object) theGroup)
{
  SetErrorCode(GEOM_KO);

  TDF_Label aFreeLabel = theGroup->GetFreeLabel();
  Handle(TDataStd_Integer) anAttrib;
  if(!aFreeLabel.FindAttribute(TDataStd_Integer::GetID(), anAttrib)) return TopAbs_SHAPE;

  SetErrorCode(GEOM_OK);
  return (TopAbs_ShapeEnum) anAttrib->Get();
}

//=============================================================================
/*!
 *  GetMainShape
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IGroupOperations::GetMainShape (Handle(GEOM_Object) theGroup)
{
  SetErrorCode(GEOM_KO);

  if(theGroup.IsNull()) return NULL;

  Handle(GEOM_Function) aGroupFunction = theGroup->GetFunction(1);
  if (aGroupFunction.IsNull()) return NULL;

  GEOM_ISubShape aSSI (aGroupFunction);
  Handle(GEOM_Function) aMainShapeFunction = aSSI.GetMainShape();
  if (aMainShapeFunction.IsNull()) return NULL;

  TDF_Label aLabel = aMainShapeFunction->GetOwnerEntry();
  Handle(GEOM_Object) aMainShape = GEOM_Object::GetObject(aLabel);
  if (aMainShape.IsNull()) return NULL;

  //Make a Python command
  GEOM::TPythonDump(aGroupFunction, /*append=*/true)
    << aMainShape << " = GetMainShape(" << theGroup << ")";

  SetErrorCode(GEOM_OK);
  return aMainShape;
}

//=============================================================================
/*!
 *  GetObjects
 */
//=============================================================================
Handle(TColStd_HArray1OfInteger) GEOMImpl_IGroupOperations::GetObjects(Handle(GEOM_Object) theGroup)
{
  SetErrorCode(GEOM_KO);

  if(theGroup.IsNull()) return NULL;

  Handle(GEOM_Function) aFunction = theGroup->GetFunction(1);
  if(aFunction.IsNull()) return NULL;

  GEOM_ISubShape aSSI(aFunction);
  Handle(TColStd_HArray1OfInteger) aSeq = aSSI.GetIndices();
  if(aSeq.IsNull()) return NULL;

  if(aSeq->Length() == 1 && aSeq->Value(1) == -1) {
    SetErrorCode(GEOM_OK);
    return NULL;
  }

  SetErrorCode(GEOM_OK);
  return aSeq;
}
