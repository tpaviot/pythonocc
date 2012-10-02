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

#include <GEOMImpl_HealingDriver.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_IHealing.hxx>
#include <GEOM_Function.hxx>

#include <GEOMImpl_GlueDriver.hxx>

#include <ShHealOper_ShapeProcess.hxx>
#include <ShHealOper_RemoveFace.hxx>
#include <ShHealOper_CloseContour.hxx>
#include <ShHealOper_RemoveInternalWires.hxx>
#include <ShHealOper_FillHoles.hxx>
#include <ShHealOper_Sewing.hxx>
#include <ShHealOper_EdgeDivide.hxx>
#include <ShHealOper_ChangeOrientation.hxx>

#include <BRep_Builder.hxx>

#include <TopExp.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <TColStd_IndexedDataMapOfTransientTransient.hxx>
#include <TNaming_CopyShape.hxx>
#include <ShapeFix_ShapeTolerance.hxx>
#include <ShapeFix_Shape.hxx>
#include <BRepCheck_Analyzer.hxx>

#include <Precision.hxx>

#include <StdFail_NotDone.hxx>

//=======================================================================
//function :  raiseNotDoneExeption
//purpose  :  global function: forms error message and raises exeption
//=======================================================================
void raiseNotDoneExeption( const int theErrorStatus )
{
  switch ( theErrorStatus )
  {
  case ShHealOper_NotError:           StdFail_NotDone::Raise( "ShHealOper_NotError_msg" );
  case ShHealOper_InvalidParameters:  StdFail_NotDone::Raise( "ShHealOper_InvalidParameters_msg" );
  case ShHealOper_ErrorExecution:
  default:                            StdFail_NotDone::Raise( "ShHealOper_ErrorExecution_msg" );
  }
}

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_HealingDriver::GetID()
{
  static Standard_GUID aHealingDriver("FF1BBB61-5D14-4df2-980B-3A668264EA16");
  return aHealingDriver;
}

//=======================================================================
//function : GEOMImpl_HealingDriver
//purpose  :
//=======================================================================
GEOMImpl_HealingDriver::GEOMImpl_HealingDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_HealingDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  if (aFunction.IsNull()) return 0;

  GEOMImpl_IHealing HI (aFunction);
  Standard_Integer aType = aFunction->GetType();
  Handle(GEOM_Function) anOriginalFunction = HI.GetOriginal();
  if (anOriginalFunction.IsNull()) return 0;
  TopoDS_Shape aShape, anOriginalShape = anOriginalFunction->GetValue();
  if (anOriginalShape.IsNull()) return 0;

  switch (aType)
  {
  case SHAPE_PROCESS:
    ShapeProcess(&HI, anOriginalShape, aShape);
    break;
  case SUPPRESS_FACES:
    SuppressFaces(&HI, anOriginalShape, aShape);
    break;
  case CLOSE_CONTOUR:
    CloseContour(&HI, anOriginalShape, aShape);
    break;
  case REMOVE_INT_WIRES:
    RemoveIntWires(&HI, anOriginalShape, aShape);
    break;
  case FILL_HOLES:
    RemoveHoles(&HI, anOriginalShape, aShape);
    break;
  case SEWING:
    Sew(&HI, anOriginalShape, aShape);
    break;
  case DIVIDE_EDGE:
    AddPointOnEdge(&HI, anOriginalShape, aShape);
    break;
  case CHANGE_ORIENTATION:
    ChangeOrientation(&HI, anOriginalShape, aShape);
    break;
  case LIMIT_TOLERANCE:
    LimitTolerance(&HI, anOriginalShape, aShape);
    break;
  default:
    return 0;
  }

  if (aShape.IsNull())
    raiseNotDoneExeption( ShHealOper_ErrorExecution );

  aFunction->SetValue(aShape);

  log.SetTouched(Label());
  return 1;
}

//=======================================================================
//function :  ShapeProcess
//purpose  :
//=======================================================================
Standard_Boolean GEOMImpl_HealingDriver::ShapeProcess (GEOMImpl_IHealing* theHI,
                                                       const TopoDS_Shape& theOriginalShape,
                                                       TopoDS_Shape& theOutShape) const
{
  Handle(TColStd_HArray1OfExtendedString) anOperators = theHI->GetOperators();
  Handle(TColStd_HArray1OfExtendedString) aParams = theHI->GetParameters();
  Handle(TColStd_HArray1OfExtendedString) aValues = theHI->GetValues();

  if (anOperators.IsNull() || anOperators->Length() <= 0)
    return Standard_False;

  Standard_Integer nbParams = 0, nbValues = 0;
  if (!aParams.IsNull()) {
    nbParams = aParams->Length();
  }
  if (!aValues.IsNull()) {
    nbValues = aValues->Length();
  }
  if (nbParams != nbValues)
    return Standard_False;

  ShHealOper_ShapeProcess aHealer;
  TColStd_SequenceOfAsciiString anOperatorsAS, aParamsAS, aValuesAS;
  int i;
  for (i = 1; i <= anOperators->Length(); i++)
    anOperatorsAS.Append(TCollection_AsciiString(anOperators->Value(i)));

  aHealer.SetOperators(anOperatorsAS);

  for (i = 1; i <= nbParams; i++) {
    aHealer.SetParameter(TCollection_AsciiString(aParams->Value(i)),
                         TCollection_AsciiString(aValues->Value(i)));
  }

  aHealer.Perform(theOriginalShape, theOutShape);

  if (!aHealer.isDone())
    raiseNotDoneExeption( ShHealOper_NotError );

  return Standard_True;
}

//=======================================================================
//function :  SupressFaces
//purpose  :
//=======================================================================
void SuppressFacesRec (const TopTools_SequenceOfShape& theShapesFaces,
                       const TopoDS_Shape&             theOriginalShape,
                       TopoDS_Shape&                   theOutShape)
{
  if ((theOriginalShape.ShapeType() != TopAbs_COMPOUND &&
       theOriginalShape.ShapeType() != TopAbs_COMPSOLID))
  {
    ShHealOper_RemoveFace aHealer (theOriginalShape);
    Standard_Boolean aResult = aHealer.Perform(theShapesFaces);

    if (aResult)
      theOutShape = aHealer.GetResultShape();
    else
      raiseNotDoneExeption(aHealer.GetErrorStatus());
  }
  else
  {
    BRep_Builder BB;
    TopoDS_Compound CC;
    BB.MakeCompound(CC);

    TopTools_MapOfShape mapShape;
    TopoDS_Iterator It (theOriginalShape, Standard_True, Standard_True);

    for (; It.More(); It.Next()) {
      TopoDS_Shape aShape_i = It.Value();
      if (mapShape.Add(aShape_i)) {
        // check, if current shape contains at least one of faces to be removed
        bool isFound = false;
        TopTools_IndexedMapOfShape aShapes_i;
        TopExp::MapShapes(aShape_i, aShapes_i);
        for (int i = 1; i <= theShapesFaces.Length() && !isFound; i++) {
          const TopoDS_Shape& aFace_i = theShapesFaces.Value(i);
          if (aShapes_i.Contains(aFace_i)) isFound = true;
        }
        if (isFound) {
          TopoDS_Shape anOutSh_i;
          SuppressFacesRec(theShapesFaces, aShape_i, anOutSh_i);
          if ( !anOutSh_i.IsNull() )
            BB.Add(CC, anOutSh_i);
        }
        else {
          // nothing to do
          BB.Add(CC, aShape_i);
        }
      }
    }
    theOutShape = CC;
  }
}

Standard_Boolean GEOMImpl_HealingDriver::SuppressFaces (GEOMImpl_IHealing* theHI,
                                                        const TopoDS_Shape& theOriginalShape,
                                                        TopoDS_Shape& theOutShape) const
{
  Handle(TColStd_HArray1OfInteger) aFaces = theHI->GetFaces();

  Standard_Boolean aResult = Standard_False;

  if (aFaces.IsNull()) {
    ShHealOper_RemoveFace aHealer (theOriginalShape);
    aResult = aHealer.Perform();

    if (aResult)
      theOutShape = aHealer.GetResultShape();
    else
      raiseNotDoneExeption(aHealer.GetErrorStatus());
  }
  else {
    TopTools_SequenceOfShape aShapesFaces;
    TopTools_IndexedMapOfShape aShapes;
    TopExp::MapShapes(theOriginalShape, aShapes);
    for (int i = 1; i <= aFaces->Length(); i++) {
      int indexOfFace = aFaces->Value(i);
      TopoDS_Shape aFace = aShapes.FindKey(indexOfFace);
      aShapesFaces.Append(aFace);
    }
    SuppressFacesRec(aShapesFaces, theOriginalShape, theOutShape);
    if ((theOriginalShape.ShapeType() == TopAbs_COMPOUND ||
         theOriginalShape.ShapeType() == TopAbs_COMPSOLID)) {
      TopoDS_Shape aSh = theOutShape;
      theOutShape = GEOMImpl_GlueDriver::GlueFaces(aSh, Precision::Confusion(), Standard_True);
    }
  }

  return Standard_True;
}

//=======================================================================
//function :  CloseContour
//purpose  :
//=======================================================================
Standard_Boolean GEOMImpl_HealingDriver::CloseContour (GEOMImpl_IHealing* theHI,
                                                       const TopoDS_Shape& theOriginalShape,
                                                       TopoDS_Shape& theOutShape) const
{
  Standard_Boolean isByVertex = theHI->GetIsCommonVertex();
  Handle(TColStd_HArray1OfInteger) aWires = theHI->GetWires();

  ShHealOper_CloseContour aHealer (theOriginalShape);

  Standard_Boolean aResult = Standard_False;
  if ( aWires.IsNull() ) {
    if ( theOriginalShape.ShapeType() == TopAbs_WIRE )
      aResult = aHealer.Perform(TopoDS::Wire(theOriginalShape), isByVertex, !isByVertex);
  }
  else {
    TopTools_SequenceOfShape aShapesWires;
    TopTools_IndexedMapOfShape aShapes;
    TopExp::MapShapes(theOriginalShape, aShapes);
    for (int i = 1; i <= aWires->Length(); i++) {
      int indexOfWire = aWires->Value(i);
      TopoDS_Shape aWire = aShapes.FindKey(indexOfWire);
      aShapesWires.Append(aWire);
    }

    aResult = aHealer.Perform( aShapesWires, isByVertex, !isByVertex );
  }

  if (aResult)
    theOutShape = aHealer.GetResultShape();
  else
    raiseNotDoneExeption( aHealer.GetErrorStatus() );

  return aResult;
}

//=======================================================================
//function :  RemoveIntWires
//purpose  :
//=======================================================================
Standard_Boolean GEOMImpl_HealingDriver::RemoveIntWires (GEOMImpl_IHealing* theHI,
                                                         const TopoDS_Shape& theOriginalShape,
                                                         TopoDS_Shape& theOutShape) const
{
  Handle(TColStd_HArray1OfInteger) aWires = theHI->GetWires();

  ShHealOper_RemoveInternalWires aHealer(theOriginalShape);

  Standard_Boolean aResult = Standard_False;
  if (aWires.IsNull()) { // remove all faces
    aResult = aHealer.Remove();
  } else {
    TopTools_SequenceOfShape aShapesWires;
    TopTools_IndexedMapOfShape aShapes;
    TopExp::MapShapes(theOriginalShape, aShapes);
    for (int i = 1; i <= aWires->Length(); i++) {
      int indexOfWire = aWires->Value(i);
      TopoDS_Shape aWire = aShapes.FindKey(indexOfWire);
      aShapesWires.Append(aWire);
    }

    aResult = aHealer.Remove(aShapesWires);
  }

  if (aResult)
    theOutShape = aHealer.GetResultShape();
  else
    raiseNotDoneExeption( aHealer.GetErrorStatus() );

  return aResult;
}

//=======================================================================
//function :  RemoveHoles
//purpose  :
//=======================================================================
Standard_Boolean GEOMImpl_HealingDriver::RemoveHoles (GEOMImpl_IHealing* theHI,
                                                      const TopoDS_Shape& theOriginalShape,
                                                      TopoDS_Shape& theOutShape) const
{
  Handle(TColStd_HArray1OfInteger) aWires = theHI->GetWires();

  ShHealOper_FillHoles aHealer (theOriginalShape);

  Standard_Boolean aResult = Standard_False;
  if (aWires.IsNull()) { // remove all faces
    aResult = aHealer.Fill();
  } else {
    TopTools_SequenceOfShape aShapesWires;
    TopTools_IndexedMapOfShape aShapes;
    TopExp::MapShapes(theOriginalShape, aShapes);
    for (int i = 1; i <= aWires->Length(); i++) {
      int indexOfWire = aWires->Value(i);
      TopoDS_Shape aWire = aShapes.FindKey(indexOfWire);
      aShapesWires.Append(aWire);
    }

    aResult = aHealer.Fill(aShapesWires);
  }

  if (aResult)
    theOutShape = aHealer.GetResultShape();
  else
    raiseNotDoneExeption( aHealer.GetErrorStatus() );

  return aResult;
}

//=======================================================================
//function :  Sew
//purpose  :
//=======================================================================
Standard_Boolean GEOMImpl_HealingDriver::Sew (GEOMImpl_IHealing* theHI,
                                              const TopoDS_Shape& theOriginalShape,
                                              TopoDS_Shape& theOutShape) const
{
  Standard_Real aTol = theHI->GetTolerance();

  ShHealOper_Sewing aHealer (theOriginalShape, aTol);

  Standard_Boolean aResult = aHealer.Perform();

  if (aResult)
    theOutShape = aHealer.GetResultShape();
  else
    raiseNotDoneExeption( aHealer.GetErrorStatus() );

  return aResult;
}

//=======================================================================
//function :  AddPointOnEdge
//purpose  :
//=======================================================================
Standard_Boolean GEOMImpl_HealingDriver::AddPointOnEdge (GEOMImpl_IHealing* theHI,
                                                         const TopoDS_Shape& theOriginalShape,
                                                         TopoDS_Shape& theOutShape) const
{
  Standard_Boolean isByParameter = theHI->GetIsByParameter();
  Standard_Integer anIndex = theHI->GetIndex();
  Standard_Real aValue = theHI->GetDevideEdgeValue();

  ShHealOper_EdgeDivide aHealer (theOriginalShape);

  Standard_Boolean aResult = Standard_False;
  if (anIndex == -1) { // apply algorythm for the whole shape which is EDGE
    if (theOriginalShape.ShapeType() == TopAbs_EDGE)
      aResult = aHealer.Perform(TopoDS::Edge(theOriginalShape), aValue, isByParameter);
  } else {
    TopTools_IndexedMapOfShape aShapes;
    TopExp::MapShapes(theOriginalShape, aShapes);
    TopoDS_Shape aEdgeShape = aShapes.FindKey(anIndex);
    if (aEdgeShape.ShapeType() == TopAbs_EDGE)
      aResult = aHealer.Perform(TopoDS::Edge(aEdgeShape), aValue, isByParameter);
  }

  if (aResult)
    theOutShape = aHealer.GetResultShape();
  else
    raiseNotDoneExeption( aHealer.GetErrorStatus() );

  return aResult;
}


//=======================================================================
//function :  ChangeOrientation
//purpose  :
//=======================================================================
Standard_Boolean GEOMImpl_HealingDriver::ChangeOrientation (GEOMImpl_IHealing* theHI,
                                                            const TopoDS_Shape& theOriginalShape,
                                                            TopoDS_Shape& theOutShape) const
{
  ShHealOper_ChangeOrientation aHealer (theOriginalShape);

  Standard_Boolean aResult = aHealer.Perform();

  if (aResult)
    theOutShape = aHealer.GetResultShape();
  else
    raiseNotDoneExeption( aHealer.GetErrorStatus() );

  return aResult;
}

//=======================================================================
//function : LimitTolerance
//purpose  :
//=======================================================================
void GEOMImpl_HealingDriver::LimitTolerance (GEOMImpl_IHealing* theHI,
                                             const TopoDS_Shape& theOriginalShape,
                                             TopoDS_Shape& theOutShape) const
{
  Standard_Real aTol = theHI->GetTolerance();
  if (aTol < Precision::Confusion())
    aTol = Precision::Confusion();

  // 1. Make a copy to prevent the original shape changes.
  TopoDS_Shape aShapeCopy;
  TColStd_IndexedDataMapOfTransientTransient aMapTShapes;
  TNaming_CopyShape::CopyTool(theOriginalShape, aMapTShapes, aShapeCopy);

  // 2. Limit tolerance.
  ShapeFix_ShapeTolerance aSFT;
  aSFT.LimitTolerance(aShapeCopy, aTol, aTol, TopAbs_SHAPE);

  // 3. Fix obtained shape.
  Handle(ShapeFix_Shape) aSfs = new ShapeFix_Shape (aShapeCopy);
  aSfs->Perform();
  theOutShape = aSfs->Shape();

  BRepCheck_Analyzer ana (theOutShape, Standard_True);
  if (!ana.IsValid())
    StdFail_NotDone::Raise("Non valid shape result");
}

//=======================================================================
//function :  GEOMImpl_HealingDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_HealingDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_HealingDriver",
                                                         sizeof(GEOMImpl_HealingDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================

const Handle(GEOMImpl_HealingDriver) Handle(GEOMImpl_HealingDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_HealingDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_HealingDriver))) {
       _anOtherObject = Handle(GEOMImpl_HealingDriver)((Handle(GEOMImpl_HealingDriver)&)AnObject);
     }
  }

  return _anOtherObject;
}
