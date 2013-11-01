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
//
// File:      ShHealOper_RemoveInternalWires.cxx
// Created:   26.04.04 14:46:45
// Author:    Galina KULIKOVA


#include <ShHealOper_RemoveInternalWires.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TopoDS.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <ShapeAnalysis.hxx>
#include <ShapeFix_Shape.hxx>

//=======================================================================
//function : ShHealOper_RemoveInternalWires()
//purpose  : Constructor
//=======================================================================

ShHealOper_RemoveInternalWires::ShHealOper_RemoveInternalWires ( const TopoDS_Shape& theShape )
{
  Init(theShape);
}
//=======================================================================
//function : Init
//purpose  : 
//=======================================================================

void ShHealOper_RemoveInternalWires::Init(const TopoDS_Shape& theShape)
{
  ShHealOper_Tool::Init(theShape);
  myMapWiresFace.Clear();
  TopExp::MapShapesAndAncestors(theShape,TopAbs_WIRE,TopAbs_FACE,myMapWiresFace);
}
//=======================================================================
//function : Remove
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_RemoveInternalWires::Remove()
{
  TopExp_Explorer aexpFaces(myInitShape,TopAbs_FACE);
  //removes internal wires from all faces in the shape
  Standard_Boolean isDone = Standard_False;
  for( ; aexpFaces.More(); aexpFaces.Next())
    isDone =  removeWire(TopoDS::Face(aexpFaces.Current()),TopoDS_Wire()) || isDone;
  if(isDone ) {
    TopoDS_Shape aNewShape = myContext->Apply(myInitShape);
    //fix not-connected shell and solids obtained after removing wires
    fixShape(aNewShape);
  }
  myDone = isDone;
  return myDone;
}
//=======================================================================
//function : Remove
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_RemoveInternalWires::Remove(const TopTools_SequenceOfShape& theRemovedShapes)
{
  myDone = Standard_False;
  
  Standard_Integer i =1;
  for( ; i <= theRemovedShapes.Length(); i++) {
    //removes internal wires from specified faces.
    if(theRemovedShapes.Value(i).ShapeType() == TopAbs_FACE)
      myDone = (removeWire(TopoDS::Face(theRemovedShapes.Value(i)),TopoDS_Wire()) || myDone) ;
    else if(theRemovedShapes.Value(i).ShapeType() == TopAbs_WIRE)
    {
      //removes specified internal wires. 
      TopoDS_Wire awire = TopoDS::Wire(theRemovedShapes.Value(i));
      if(myMapWiresFace.Contains(awire)) {
        const TopTools_ListOfShape& aLfaces = myMapWiresFace.FindFromKey(awire);
        TopTools_ListIteratorOfListOfShape liter(aLfaces);
        for( ; liter.More(); liter.Next())
          myDone = (removeWire(TopoDS::Face(liter.Value()),awire) || myDone);
      }
    }
  }
  if(myDone ) {
    TopoDS_Shape aNewShape = myContext->Apply(myInitShape);

    //fix not-connected shell and solids obtained after removing wires
    fixShape(aNewShape);
    
  }
  return myDone;
}
//=======================================================================
//function : removeWire
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_RemoveInternalWires::removeWire(const TopoDS_Face& theFace, 
                                                            const TopoDS_Wire& theWire)
{
  TopoDS_Wire aBoundWire = ShapeAnalysis::OuterWire(theFace);
  if(!theWire.IsNull() && aBoundWire.IsSame(theWire)) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return Standard_False;
  }
  
  Standard_Boolean isremove = Standard_False;
  if(!theWire.IsNull()) {
    myContext->Remove(theWire);
    isremove= Standard_True;
  }
  else {  
    TopExp_Explorer aExpW(theFace,TopAbs_WIRE);
    for( ; aExpW.More(); aExpW.Next()) {
      if(!aBoundWire.IsSame(aExpW.Current())) {
        myContext->Remove(aExpW.Current());
        isremove= Standard_True;
      }
    }
  }
  return isremove;
}
//=======================================================================
//function : fixShape
//purpose  : 
//=======================================================================

void ShHealOper_RemoveInternalWires::fixShape(const TopoDS_Shape& theShape )
{
  Handle(ShapeFix_Shape) aFixTool = new ShapeFix_Shape(theShape);
  aFixTool->SetContext(myContext);
  aFixTool->FixShellTool()->FixFaceMode() = Standard_False;
  aFixTool->FixFreeFaceMode() = Standard_False;
  aFixTool->FixFreeWireMode() = Standard_False;
  aFixTool->FixSameParameterMode() = Standard_False;
  aFixTool->Perform();
  myResultShape = aFixTool->Shape();
}
