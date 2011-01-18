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

#include <Standard_Stream.hxx>

#include <GEOMImpl_HealingDriver.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_IHealing.hxx>
#include <GEOM_Function.hxx>

#include <ShHealOper_ShapeProcess.hxx>
#include <ShHealOper_RemoveFace.hxx>
#include <ShHealOper_CloseContour.hxx>
#include <ShHealOper_RemoveInternalWires.hxx>
#include <ShHealOper_FillHoles.hxx>
#include <ShHealOper_Sewing.hxx>
#include <ShHealOper_EdgeDivide.hxx>
#include <ShHealOper_ChangeOrientation.hxx>

#include <TopoDS.hxx>
#include <TopExp.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

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
Standard_Boolean GEOMImpl_HealingDriver::SuppressFaces (GEOMImpl_IHealing* theHI,
                                                        const TopoDS_Shape& theOriginalShape,
                                                        TopoDS_Shape& theOutShape) const
{
  Handle(TColStd_HArray1OfInteger) aFaces = theHI->GetFaces();

  ShHealOper_RemoveFace aHealer (theOriginalShape);

  Standard_Boolean aResult = Standard_False;
  if (aFaces.IsNull()) // remove all faces
  {
    aResult = aHealer.Perform();
  } else {
    TopTools_SequenceOfShape aShapesFaces;
    TopTools_IndexedMapOfShape aShapes;
    TopExp::MapShapes(theOriginalShape, aShapes);
    for (int i = 1; i <= aFaces->Length(); i++) {
      int indexOfFace = aFaces->Value(i);
      TopoDS_Shape aFace = aShapes.FindKey(indexOfFace);
      aShapesFaces.Append(aFace);
    }

    aResult = aHealer.Perform(aShapesFaces);
  }

  if ( aResult )
    theOutShape = aHealer.GetResultShape();
  else
    raiseNotDoneExeption( aHealer.GetErrorStatus() );

  return aResult;
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

  return _anOtherObject ;
}


