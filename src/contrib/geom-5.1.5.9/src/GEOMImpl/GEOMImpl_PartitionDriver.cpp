//  Copyright (C) 2007-2010  CEA/DEN, EDF R&D, OPEN CASCADE
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

#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOMImpl_PartitionDriver.hxx>
#include <GEOMImpl_IPartition.hxx>
#include <GEOMImpl_Types.hxx>

#include <GEOM_Object.hxx>
#include <GEOM_Function.hxx>

#include <GEOMAlgo_Splitter.hxx>

#include <TDataStd_IntegerArray.hxx>
#include <TNaming_CopyShape.hxx>

//#include <BRepBuilderAPI_Copy.hxx>
#include <BRep_Tool.hxx>
#include <BRepAlgo.hxx>

#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>

#include <BRepCheck_Analyzer.HXX>

#include <ShapeFix_ShapeTolerance.hxx>
#include <ShapeFix_Shape.hxx>

#include <TColStd_IndexedDataMapOfTransientTransient.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <Standard_NullObject.hxx>
#include <Precision.hxx>
#include <gp_Pnt.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_PartitionDriver::GetID()
{
  static Standard_GUID aPartitionDriver("FF1BBB22-5D14-4df2-980B-3A668264EA16");
  return aPartitionDriver;
}


//=======================================================================
//function : GEOMImpl_PartitionDriver
//purpose  :
//=======================================================================
GEOMImpl_PartitionDriver::GEOMImpl_PartitionDriver()
{
}

//=======================================================================
//function : SimplifyCompound
//purpose  :
//=======================================================================
static void PrepareShapes (const TopoDS_Shape&   theShape,
                           Standard_Integer      theType,
                           TopTools_ListOfShape& theSimpleList)
{
  if (theType == PARTITION_NO_SELF_INTERSECTIONS ||
      theShape.ShapeType() != TopAbs_COMPOUND) {
    theSimpleList.Append(theShape);
    return;
  }

  // explode compound on simple shapes to allow their intersections
  TopoDS_Iterator It (theShape, Standard_True, Standard_True);
  TopTools_MapOfShape mapShape;
  for (; It.More(); It.Next()) {
    if (mapShape.Add(It.Value())) {
      TopoDS_Shape curSh = It.Value();
      PrepareShapes(curSh, theType, theSimpleList);
    }
  }
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_PartitionDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IPartition aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;
  //sklNMTAlgo_Splitter1 PS;
  GEOMAlgo_Splitter PS;

  TopTools_DataMapOfShapeShape aCopyMap;
  TColStd_IndexedDataMapOfTransientTransient aMapTShapes;

  if (aType == PARTITION_PARTITION || aType == PARTITION_NO_SELF_INTERSECTIONS)
  {
    Handle(TColStd_HSequenceOfTransient) aShapes  = aCI.GetShapes();
    Handle(TColStd_HSequenceOfTransient) aTools   = aCI.GetTools();
    Handle(TColStd_HSequenceOfTransient) aKeepIns = aCI.GetKeepIns();
    Handle(TColStd_HSequenceOfTransient) aRemIns  = aCI.GetRemoveIns();
    Handle(TColStd_HArray1OfInteger) aMaterials   = aCI.GetMaterials();
    //skl Standard_Boolean DoRemoveWebs = !aMaterials.IsNull();

    unsigned int ind;
    //unsigned int ind, nbshapes = 0;
    //nbshapes += aShapes->Length() + aTools->Length();
    //nbshapes += aKeepIns->Length() + aRemIns->Length();
    //TopTools_MapOfShape ShapesMap(nbshapes), ToolsMap(nbshapes);
    TopTools_MapOfShape ShapesMap, ToolsMap;

    // add object shapes that are in ListShapes;
    for (ind = 1; ind <= aShapes->Length(); ind++) {
      Handle(GEOM_Function) aRefShape = Handle(GEOM_Function)::DownCast(aShapes->Value(ind));
      TopoDS_Shape aShape_i = aRefShape->GetValue();
      if (aShape_i.IsNull()) {
        Standard_NullObject::Raise("In Partition a shape is null");
      }
      //
      //BRepBuilderAPI_Copy aCopyTool (aShape_i);
      TopoDS_Shape aShape_i_copy;
      TNaming_CopyShape::CopyTool(aShape_i, aMapTShapes, aShape_i_copy);
      //if (aCopyTool.IsDone())
      //  aShape_i_copy = aCopyTool.Shape();
      //else
      //  Standard_NullObject::Raise("Bad shape detected");
      //
      // fill aCopyMap for history
      TopTools_IndexedMapOfShape aShape_i_inds;
      TopTools_IndexedMapOfShape aShape_i_copy_inds;
      TopExp::MapShapes(aShape_i, aShape_i_inds);
      TopExp::MapShapes(aShape_i_copy, aShape_i_copy_inds);
      Standard_Integer nbInds = aShape_i_inds.Extent();
      for (Standard_Integer ie = 1; ie <= nbInds; ie++) {
        aCopyMap.Bind(aShape_i_inds.FindKey(ie), aShape_i_copy_inds.FindKey(ie));
      }
      //
      TopTools_ListOfShape aSimpleShapes;
      //PrepareShapes(aShape_i, aType, aSimpleShapes);
      PrepareShapes(aShape_i_copy, aType, aSimpleShapes);
      TopTools_ListIteratorOfListOfShape aSimpleIter (aSimpleShapes);
      for (; aSimpleIter.More(); aSimpleIter.Next()) {
        const TopoDS_Shape& aSimpleSh = aSimpleIter.Value();
        if (ShapesMap.Add(aSimpleSh)) {
          PS.AddShape(aSimpleSh);
          //skl if (DoRemoveWebs) {
          //skl if (aMaterials->Length() >= ind)
          //skl PS.SetMaterial(aSimpleSh, aMaterials->Value(ind));
          //skl }
        }
      }
    }

    // add tool shapes that are in ListTools and not in ListShapes;
    for (ind = 1; ind <= aTools->Length(); ind++) {
      Handle(GEOM_Function) aRefShape = Handle(GEOM_Function)::DownCast(aTools->Value(ind));
      TopoDS_Shape aShape_i = aRefShape->GetValue();
      if (aShape_i.IsNull()) {
        Standard_NullObject::Raise("In Partition a tool shape is null");
      }
      //
      //BRepBuilderAPI_Copy aCopyTool (aShape_i);
      TopoDS_Shape aShape_i_copy;
      TNaming_CopyShape::CopyTool(aShape_i, aMapTShapes, aShape_i_copy);
      //if (aCopyTool.IsDone())
      //  aShape_i_copy = aCopyTool.Shape();
      //else
      //  Standard_NullObject::Raise("Bad shape detected");
      //
      // fill aCopyMap for history
      TopTools_IndexedMapOfShape aShape_i_inds;
      TopTools_IndexedMapOfShape aShape_i_copy_inds;
      TopExp::MapShapes(aShape_i, aShape_i_inds);
      TopExp::MapShapes(aShape_i_copy, aShape_i_copy_inds);
      Standard_Integer nbInds = aShape_i_inds.Extent();
      for (Standard_Integer ie = 1; ie <= nbInds; ie++) {
        aCopyMap.Bind(aShape_i_inds.FindKey(ie), aShape_i_copy_inds.FindKey(ie));
      }
      //
      TopTools_ListOfShape aSimpleShapes;
      //PrepareShapes(aShape_i, aType, aSimpleShapes);
      PrepareShapes(aShape_i_copy, aType, aSimpleShapes);
      TopTools_ListIteratorOfListOfShape aSimpleIter (aSimpleShapes);
      for (; aSimpleIter.More(); aSimpleIter.Next()) {
        const TopoDS_Shape& aSimpleSh = aSimpleIter.Value();
        if (!ShapesMap.Contains(aSimpleSh) && ToolsMap.Add(aSimpleSh)) {
          PS.AddTool(aSimpleSh);
        }
      }
    }

    // add shapes that are in ListKeepInside, as object shapes;
    for (ind = 1; ind <= aKeepIns->Length(); ind++) {
      Handle(GEOM_Function) aRefShape = Handle(GEOM_Function)::DownCast(aKeepIns->Value(ind));
      TopoDS_Shape aShape_i = aRefShape->GetValue();
      if (aShape_i.IsNull()) {
        Standard_NullObject::Raise("In Partition a Keep Inside shape is null");
      }
      //
      //BRepBuilderAPI_Copy aCopyTool (aShape_i);
      TopoDS_Shape aShape_i_copy;
      TNaming_CopyShape::CopyTool(aShape_i, aMapTShapes, aShape_i_copy);
      //if (aCopyTool.IsDone())
      //  aShape_i_copy = aCopyTool.Shape();
      //else
      //  Standard_NullObject::Raise("Bad shape detected");
      //
      // fill aCopyMap for history
      TopTools_IndexedMapOfShape aShape_i_inds;
      TopTools_IndexedMapOfShape aShape_i_copy_inds;
      TopExp::MapShapes(aShape_i, aShape_i_inds);
      TopExp::MapShapes(aShape_i_copy, aShape_i_copy_inds);
      Standard_Integer nbInds = aShape_i_inds.Extent();
      for (Standard_Integer ie = 1; ie <= nbInds; ie++) {
        aCopyMap.Bind(aShape_i_inds.FindKey(ie), aShape_i_copy_inds.FindKey(ie));
      }
      //
      TopTools_ListOfShape aSimpleShapes;
      //PrepareShapes(aShape_i, aType, aSimpleShapes);
      PrepareShapes(aShape_i_copy, aType, aSimpleShapes);
      TopTools_ListIteratorOfListOfShape aSimpleIter (aSimpleShapes);
      for (; aSimpleIter.More(); aSimpleIter.Next()) {
        const TopoDS_Shape& aSimpleSh = aSimpleIter.Value();
        if (!ToolsMap.Contains(aSimpleSh) && ShapesMap.Add(aSimpleSh))
          PS.AddShape(aSimpleSh);
      }
    }

    // add shapes that are in ListRemoveInside, as object shapes;
    for (ind = 1; ind <= aRemIns->Length(); ind++) {
      Handle(GEOM_Function) aRefShape = Handle(GEOM_Function)::DownCast(aRemIns->Value(ind));
      TopoDS_Shape aShape_i = aRefShape->GetValue();
      if (aShape_i.IsNull()) {
        Standard_NullObject::Raise("In Partition a Remove Inside shape is null");
      }
      //
      //BRepBuilderAPI_Copy aCopyTool (aShape_i);
      TopoDS_Shape aShape_i_copy;
      TNaming_CopyShape::CopyTool(aShape_i, aMapTShapes, aShape_i_copy);
      //if (aCopyTool.IsDone())
      //  aShape_i_copy = aCopyTool.Shape();
      //else
      //  Standard_NullObject::Raise("Bad shape detected");
      //
      // fill aCopyMap for history
      TopTools_IndexedMapOfShape aShape_i_inds;
      TopTools_IndexedMapOfShape aShape_i_copy_inds;
      TopExp::MapShapes(aShape_i, aShape_i_inds);
      TopExp::MapShapes(aShape_i_copy, aShape_i_copy_inds);
      Standard_Integer nbInds = aShape_i_inds.Extent();
      for (Standard_Integer ie = 1; ie <= nbInds; ie++) {
        aCopyMap.Bind(aShape_i_inds.FindKey(ie), aShape_i_copy_inds.FindKey(ie));
      }
      //
      TopTools_ListOfShape aSimpleShapes;
      //PrepareShapes(aShape_i, aType, aSimpleShapes);
      PrepareShapes(aShape_i_copy, aType, aSimpleShapes);
      TopTools_ListIteratorOfListOfShape aSimpleIter (aSimpleShapes);
      for (; aSimpleIter.More(); aSimpleIter.Next()) {
        const TopoDS_Shape& aSimpleSh = aSimpleIter.Value();
        if (!ToolsMap.Contains(aSimpleSh) && ShapesMap.Add(aSimpleSh))
          PS.AddShape(aSimpleSh);
      }
    }

    PS.SetLimitMode(aCI.GetKeepNonlimitShapes());
    PS.SetLimit((TopAbs_ShapeEnum)aCI.GetLimit());
    PS.Perform();

    //skl PS.Compute();
    //skl PS.SetRemoveWebs(!DoRemoveWebs);
    //skl PS.Build((TopAbs_ShapeEnum) aCI.GetLimit());
    /*skl
    // suppress result outside of shapes in KInsideMap
    for (ind = 1; ind <= aKeepIns->Length(); ind++) {
      Handle(GEOM_Function) aRefShape = Handle(GEOM_Function)::DownCast(aKeepIns->Value(ind));
      TopoDS_Shape aShape_i = aRefShape->GetValue();
      PS.KeepShapesInside(aShape_i);
    }

    // suppress result inside of shapes in RInsideMap
    for (ind = 1; ind <= aRemIns->Length(); ind++) {
      Handle(GEOM_Function) aRefShape = Handle(GEOM_Function)::DownCast(aRemIns->Value(ind));
      TopoDS_Shape aShape_i = aRefShape->GetValue();
      PS.RemoveShapesInside(aShape_i);
    }
    */
  }
  else if (aType == PARTITION_HALF)
  {
    Handle(GEOM_Function) aRefShape = aCI.GetShape();
    Handle(GEOM_Function) aRefPlane = aCI.GetPlane();
    TopoDS_Shape aShapeArg = aRefShape->GetValue();
    TopoDS_Shape aPlaneArg = aRefPlane->GetValue();

    if (aShapeArg.IsNull() || aPlaneArg.IsNull()) {
      Standard_NullObject::Raise("In Half Partition a shape or a plane is null");
    }

    TopoDS_Shape aShapeArg_copy;
    TopoDS_Shape aPlaneArg_copy;
    {
      TNaming_CopyShape::CopyTool(aShapeArg, aMapTShapes, aShapeArg_copy);
      //BRepBuilderAPI_Copy aCopyTool (aShapeArg);
      //if (aCopyTool.IsDone())
      //  aShapeArg_copy = aCopyTool.Shape();
      //else
      //  Standard_NullObject::Raise("Bad shape detected");
      //
      // fill aCopyMap for history
      TopTools_IndexedMapOfShape aShapeArg_inds;
      TopTools_IndexedMapOfShape aShapeArg_copy_inds;
      TopExp::MapShapes(aShapeArg, aShapeArg_inds);
      TopExp::MapShapes(aShapeArg_copy, aShapeArg_copy_inds);
      Standard_Integer nbInds = aShapeArg_inds.Extent();
      for (Standard_Integer ie = 1; ie <= nbInds; ie++) {
        aCopyMap.Bind(aShapeArg_inds.FindKey(ie), aShapeArg_copy_inds.FindKey(ie));
      }
    }
    {
      TNaming_CopyShape::CopyTool(aPlaneArg, aMapTShapes, aPlaneArg_copy);
      //BRepBuilderAPI_Copy aCopyTool (aPlaneArg);
      //if (aCopyTool.IsDone())
      //  aPlaneArg_copy = aCopyTool.Shape();
      //else
      //  Standard_NullObject::Raise("Bad shape detected");
      //
      // fill aCopyMap for history
      TopTools_IndexedMapOfShape aPlaneArg_inds;
      TopTools_IndexedMapOfShape aPlaneArg_copy_inds;
      TopExp::MapShapes(aPlaneArg, aPlaneArg_inds);
      TopExp::MapShapes(aPlaneArg_copy, aPlaneArg_copy_inds);
      Standard_Integer nbInds = aPlaneArg_inds.Extent();
      for (Standard_Integer ie = 1; ie <= nbInds; ie++) {
        aCopyMap.Bind(aPlaneArg_inds.FindKey(ie), aPlaneArg_copy_inds.FindKey(ie));
      }
    }

    // add object shapes that are in ListShapes;
    PS.AddShape(aShapeArg_copy);
    //PS.AddShape(aShapeArg);

    // add tool shapes that are in ListTools and not in ListShapes;
    PS.AddTool(aPlaneArg_copy);
    //PS.AddTool(aPlaneArg);

    //skl PS.Compute();
    PS.Perform();
    //PS.SetRemoveWebs(Standard_False);
    //PS.Build(aShapeArg.ShapeType());

  } else {
  }

  aShape = PS.Shape();
  if (aShape.IsNull()) return 0;
  
  #ifdef NEW_PARTITION_CHECK
  //Alternative case to check not valid partition IPAL21418
  TopoDS_Iterator It (aShape, Standard_True, Standard_True);
  int nbSubshapes=0;
  for (; It.More(); It.Next())
    nbSubshapes++;
  if (!nbSubshapes)
    Standard_ConstructionError::Raise("Partition aborted : non valid shape result");
  //end of IPAL21418
  #endif
  
  // Check shape validity
  BRepCheck_Analyzer ana (aShape, false);
  if (!ana.IsValid()) {
    // 08.07.2008 added by skl during fixing bug 19761 from Mantis
    ShapeFix_ShapeTolerance aSFT;
    aSFT.LimitTolerance(aShape, Precision::Confusion(),
                        Precision::Confusion(), TopAbs_SHAPE);
    Handle(ShapeFix_Shape) aSfs = new ShapeFix_Shape(aShape);
    aSfs->Perform();
	aShape = aSfs->Shape();

	ana.Init(aShape, false);

	if (!ana.IsValid()) {
	  Standard_CString anErrStr("Partition aborted : non valid shape result");
	  #ifdef THROW_ON_INVALID_SH
		Standard_ConstructionError::Raise(anErrStr);
	  #else
		MESSAGE(anErrStr);
		//further processing can be performed here
		//...
		//in case of failure of automatic treatment
		//mark the corresponding GEOM_Object as problematic
		TDF_Label aLabel = aFunction->GetOwnerEntry();
		if (!aLabel.IsRoot()) {
		  Handle(GEOM_Object) aMainObj = GEOM_Object::GetObject(aLabel);
		  if (!aMainObj.IsNull())
			aMainObj->SetDirty(Standard_True);
		}
	  #endif
	}
  }
  
  aFunction->SetValue(aShape);

  // Fill history to be used by GetInPlace functionality
  TopTools_IndexedMapOfShape aResIndices;
  TopExp::MapShapes(aShape, aResIndices);

  // Map: source_shape/images of source_shape in Result
  const TopTools_IndexedDataMapOfShapeListOfShape& aMR = PS.ImagesResult();

  // history for all argument shapes
  // be sure to use aCopyMap
  TDF_LabelSequence aLabelSeq;
  aFunction->GetDependency(aLabelSeq);
  Standard_Integer nbArg = aLabelSeq.Length();

  for (Standard_Integer iarg = 1; iarg <= nbArg; iarg++) {

    TDF_Label anArgumentRefLabel = aLabelSeq.Value(iarg);

    Handle(GEOM_Object) anArgumentObject = GEOM_Object::GetReferencedObject(anArgumentRefLabel);
    TopoDS_Shape anArgumentShape = anArgumentObject->GetValue();

    TopTools_IndexedMapOfShape anArgumentIndices;
    TopExp::MapShapes(anArgumentShape, anArgumentIndices);
    Standard_Integer nbArgumentEntities = anArgumentIndices.Extent();

    // Find corresponding label in history
    TDF_Label anArgumentHistoryLabel =
      aFunction->GetArgumentHistoryEntry(anArgumentRefLabel, Standard_True);

    for (Standard_Integer ie = 1; ie <= nbArgumentEntities; ie++) {
      TopoDS_Shape anEntity = anArgumentIndices.FindKey(ie);
      // be sure to use aCopyMap here
      if (aCopyMap.IsBound(anEntity))
        anEntity = aCopyMap.Find(anEntity);
      //
      if (!aMR.Contains(anEntity)) continue;

      const TopTools_ListOfShape& aModified = aMR.FindFromKey(anEntity);
      Standard_Integer nbModified = aModified.Extent();

      if (nbModified > 0) {
        TDF_Label aWhatHistoryLabel = anArgumentHistoryLabel.FindChild(ie, Standard_True);
        Handle(TDataStd_IntegerArray) anAttr =
          TDataStd_IntegerArray::Set(aWhatHistoryLabel, 1, nbModified);

        int ih = 1;
        TopTools_ListIteratorOfListOfShape itM (aModified);
        for (; itM.More(); itM.Next(), ++ih) {
          int id = aResIndices.FindIndex(itM.Value());
          anAttr->SetValue(ih, id);
        }
      }
    }
  }

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_PartitionDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_PartitionDriver_Type_()
{
  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if (aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if (aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if (aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);

  static Handle_Standard_Transient _Ancestors[] = {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType =
    new Standard_Type ("GEOMImpl_PartitionDriver", sizeof(GEOMImpl_PartitionDriver),
                       1, (Standard_Address)_Ancestors, (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_PartitionDriver) Handle(GEOMImpl_PartitionDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_PartitionDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_PartitionDriver))) {
       _anOtherObject = Handle(GEOMImpl_PartitionDriver)((Handle(GEOMImpl_PartitionDriver)&)AnObject);
     }
  }

  return _anOtherObject;
}
