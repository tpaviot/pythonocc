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

// File:      ShHealOper_Sewing.cxx
// Created:   29.04.04 15:07:10
// Author:    Galina KULIKOVA
//
#include <ShHealOper_Sewing.hxx>
#include <TopExp_Explorer.hxx>
#include <TopoDS_Shell.hxx>
#include <BRep_Builder.hxx>
#include <ShapeFix_Shell.hxx>
#include <TopTools_HSequenceOfShape.hxx>
#include <TopoDS_Shell.hxx>
#include <BRep_Builder.hxx>
#include <ShapeAnalysis_FreeBounds.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopTools_MapOfShape.hxx>
//=======================================================================
//function : ShHealOper_Sewing()
//purpose  : Constructor
//=======================================================================


ShHealOper_Sewing::ShHealOper_Sewing (const TopoDS_Shape& theShape,
                                     const Standard_Real theTolerance)
{
  Init(theShape);
  myTolerance = theTolerance;
}
//=======================================================================
//function : Init
//purpose  : 
//=======================================================================

void ShHealOper_Sewing::Init(const TopoDS_Shape& theShape)
{
  ShHealOper_Tool::Init(theShape);
  myTolerance = Precision::Confusion();
  myEdgesMode = Standard_False;
  myFacesMode = Standard_True;
  myNonManifoldMode = Standard_False;
  myHistoryLevel = TopAbs_FACE;
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_Sewing::Perform()
{
  TopTools_SequenceOfShape theSeqShapes;
  return sewing(theSeqShapes);
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_Sewing::Perform(const TopTools_SequenceOfShape& theSeqShapes)
{
  return sewing(theSeqShapes);
}

//=======================================================================
//function : sewing
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_Sewing::sewing(const TopTools_SequenceOfShape& theSeqShapes)
{
  myDone = Standard_False;
  myErrorStatus = ShHealOper_NotError;
  if(myInitShape.IsNull()) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return myDone;
  }
  //sewing shape
  Handle(BRepBuilderAPI_Sewing) aSewing = new BRepBuilderAPI_Sewing;
  aSewing->Load(myInitShape);
  aSewing->SetTolerance(myTolerance);
  aSewing->SetFaceMode(myFacesMode);
  aSewing->SetFloatingEdgesMode(myEdgesMode);
  aSewing->SetNonManifoldMode(myNonManifoldMode);
  Standard_Integer j =1;
  for( ; j <= theSeqShapes.Length();j++)
    aSewing->Add(theSeqShapes.Value(j));

  aSewing->Perform();
  const TopoDS_Shape aSewShape = aSewing->SewedShape();
  if(aSewShape.IsNull()) {
    myErrorStatus = ShHealOper_ErrorExecution;
    return myDone;
  }
  if(aSewShape.IsSame(myInitShape))
    return myDone;

  //analysis either sewing was made by changing number of shells
  myDone = isSewed(aSewShape);

  //keep modification of the sub-shapes in the Context.
  TopExp_Explorer aExp(myInitShape,TopAbs_FACE);
  for( ; aExp.More(); aExp.Next())
    myDone = (getModifications( aExp.Current(),aSewing) || myDone);

  TopoDS_Shape aTempShape = myContext->Apply(aSewShape);
  //obtained shells with fixed orientation for manifold and nonmanifold shells
  if(myFacesMode) 
    myDone = getShells(aTempShape) || myDone;

  //obtained manifold wires if sewing edges was performed.
  if(myEdgesMode) 
    myDone = getWires(aTempShape) || myDone;
  
  if(myDone)
    myResultShape = myContext->Apply(aTempShape);
    
  return myDone;
}
//=======================================================================
//function : getShells
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_Sewing::getShells(const TopoDS_Shape& theSewShape) const
{
  Standard_Boolean isDone = Standard_False;
  TopoDS_Shape aTmpShape = theSewShape;
  if(myNonManifoldMode) {
    TopoDS_Shell tempShell;
    BRep_Builder aB;
    aB.MakeShell(tempShell);
    
    for(TopExp_Explorer aExpf(theSewShape,TopAbs_FACE);aExpf.More(); aExpf.Next()) 
      aB.Add(tempShell,aExpf.Current());
    aTmpShape = tempShell;
    myContext->Replace(theSewShape,aTmpShape);
  }
  
  Handle(ShapeFix_Shell) asfs = new ShapeFix_Shell;
  asfs->SetContext(myContext);
  TopExp_Explorer aexpShell(aTmpShape,TopAbs_SHELL);
  for ( ; aexpShell.More(); aexpShell.Next()) 
    isDone = (asfs->FixFaceOrientation(TopoDS::Shell(aexpShell.Current()),
                                       Standard_True,myNonManifoldMode) || isDone);
  
  return isDone;
}
//=======================================================================
//function : getWires
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_Sewing::getWires(const TopoDS_Shape& theSewShape) const
{
  if(theSewShape.ShapeType() != TopAbs_COMPOUND)
    return Standard_False;
  
  Handle(TopTools_HSequenceOfShape) aSeqEdges = new TopTools_HSequenceOfShape;
  TopExp_Explorer aexpEdges(theSewShape,TopAbs_EDGE,TopAbs_WIRE);
  for ( ; aexpEdges.More(); aexpEdges.Next()) {
    aSeqEdges->Append(aexpEdges.Current());
  }
  if(aSeqEdges->Length() <2)
    return Standard_False;
  //get manifold wires from sewed edges.
  Standard_Real aTol = 0.;
  Standard_Boolean aShared = Standard_True;
  Handle(TopTools_HSequenceOfShape) aTmpWires = new TopTools_HSequenceOfShape;
  ShapeAnalysis_FreeBounds::ConnectEdgesToWires(aSeqEdges, aTol, aShared, aTmpWires);

  TopTools_MapOfShape aMapEdges;
  Standard_Integer i =1;
  for( ; i <= aSeqEdges->Length(); i++)
    aMapEdges.Add(aSeqEdges->Value(i));
  
  //remove free edges from result shape.
  TopoDS_Compound aNewComp;
  deleteFreeEdges(theSewShape,aMapEdges,aNewComp);
  
  //add new wires in the result shape.
  BRep_Builder aB;
  for( i =1; i <= aTmpWires->Length(); i++) {
    TopoDS_Iterator aite(aTmpWires->Value(i));
    Standard_Integer nbe =0;
    TopoDS_Shape aE;
    for( ; aite.More() && nbe < 3; aite.Next(),nbe++)
      aE = aite.Value();
    if(!nbe)
      continue;
    else if(nbe ==1)
      aB.Add(aNewComp,aE);
    else
      aB.Add(aNewComp,aTmpWires->Value(i));
  }
  
  myContext->Replace(theSewShape,aNewComp);
  return Standard_True;
}
//=======================================================================
//function : getHistory
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_Sewing::getModifications(const TopoDS_Shape& theShape,
                                                     const Handle(BRepBuilderAPI_Sewing)& theSewing) const
{
  if((Standard_Integer)theShape.ShapeType() > (Standard_Integer)myHistoryLevel)
    return Standard_False;
  
  Standard_Boolean isDone = theSewing->IsModifiedSubShape(theShape);
  if(isDone) {
    TopoDS_Shape aNewShape = theSewing->ModifiedSubShape(theShape);
    myContext->Replace(theShape,aNewShape);
  }
  TopoDS_Iterator aIt(theShape);
  for( ; aIt.More(); aIt.Next()) {
    isDone = (getModifications( aIt.Value(),theSewing) || isDone);
  }
  return isDone;
    
}
//=======================================================================
//function : isSewed
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_Sewing::isSewed(const TopoDS_Shape& theShape) const
{
  Standard_Integer nbNewShells =0;
  Standard_Integer nbOldShells =0;
  TopExp_Explorer aExpShells(theShape,TopAbs_SHELL);
  for( ; aExpShells.More(); aExpShells.Next())
    nbNewShells++;
  for( aExpShells.Init(myInitShape,TopAbs_SHELL); aExpShells.More(); aExpShells.Next())
    nbOldShells++;
  return (nbNewShells != nbOldShells);
}
//=======================================================================
//function : deleteFreeEdges
//purpose  : 
//=======================================================================

void ShHealOper_Sewing::deleteFreeEdges(const TopoDS_Shape& theSewShape, 
                                        TopTools_MapOfShape& theMapEdges,
                                        TopoDS_Compound& theNewComp) const
{
 
  BRep_Builder aB;
  aB.MakeCompound(theNewComp);
  TopoDS_Iterator aIt(theSewShape);
  
  for( ; aIt.More(); aIt.Next()) {
    if((aIt.Value().ShapeType() == TopAbs_EDGE ) && theMapEdges.Contains(aIt.Value()))
      continue;
    else if(aIt.Value().ShapeType() == TopAbs_COMPOUND) {
      TopoDS_Compound aC;
      deleteFreeEdges(aIt.Value(),theMapEdges,aC);
      aB.Add(theNewComp,aC);
    }
    else
      aB.Add(theNewComp,aIt.Value());
  }
}
