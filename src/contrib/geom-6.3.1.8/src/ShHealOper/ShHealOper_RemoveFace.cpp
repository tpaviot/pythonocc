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
// File:      ShHealOper_RemoveFace.cxx
// Created:   16.04.04 12:12:38
// Author:    Galina KULIKOVA

#include <ShHealOper_RemoveFace.hxx>
#include <BRepTools_ReShape.hxx>
#include <TopoDS_Shape.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TopExp_Explorer.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Shell.hxx>
#include <TopoDS_Face.hxx>
#include <BRep_Builder.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopExp.hxx>
#include <TopTools_ListOfShape.hxx>
#include <BRep_Tool.hxx>
#include <Geom_Surface.hxx>
#include <TopoDS_Edge.hxx>
#include <ShapeBuild_Edge.hxx>
#include <ShapeFix_Shell.hxx>
#include <ShapeFix_Solid.hxx>
#include <TopTools_SequenceOfShape.hxx>
#include <TopoDS.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>


//=======================================================================
//function : ShHealOper_RemoveFace()
//purpose  : Constructor
//=======================================================================
ShHealOper_RemoveFace::ShHealOper_RemoveFace () :
       ShHealOper_Tool()
{
}
//=======================================================================
//function : ShHealOper_RemoveFace
//purpose  : 
//=======================================================================

ShHealOper_RemoveFace::ShHealOper_RemoveFace ( const TopoDS_Shape& theShape ) 
       //ShHealOper_Tool(theShape)
{
  Init(theShape);
}
//=======================================================================
//function : Init
//purpose  : 
//=======================================================================

void ShHealOper_RemoveFace::Init(const TopoDS_Shape& theShape)
{
  //myDone = Standard_False;
  //myInitShape = theShape;
  //myContext->Apply(myInitShape);
  ShHealOper_Tool::Init(theShape);
  myMapEdgesFace.Clear();
  TopExp::MapShapesAndAncestors(theShape,TopAbs_EDGE,TopAbs_FACE,myMapEdgesFace);
}
//=======================================================================
//function : Perform
//purpose  : remove all faces from initial shape
//=======================================================================

Standard_Boolean ShHealOper_RemoveFace::Perform()
{
  myDone = Standard_False;
  myErrorStatus = ShHealOper_NotError;
  if(myInitShape.IsNull()) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return myDone;
  }
  TopExp_Explorer aExp(myInitShape,TopAbs_FACE);
  for( ; aExp.More(); aExp.Next()) {
    removePCurve(TopoDS::Face(aExp.Current()));
    myContext->Remove(aExp.Current());
    myDone = Standard_True;
  }
  if(myDone) {
    TopoDS_Shape aNewShape = myContext->Apply(myInitShape);
    isReplace(aNewShape,myResultShape);
    myContext->Replace(aNewShape,myResultShape);
  }
  return myDone;
}
//=======================================================================
//function : Perform
//purpose  : remove faces specified by sequence of faces from initial shape.
//=======================================================================

Standard_Boolean ShHealOper_RemoveFace::Perform(const TopTools_SequenceOfShape& theRemoveFaces)
{
  myDone = Standard_False;
  myErrorStatus = ShHealOper_NotError;
  if(myInitShape.IsNull()) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return myDone;
  }
  if(theRemoveFaces.IsEmpty())
    return Standard_False;
  myMapFaces.Clear();
  
  Standard_Integer i=1; 
  for( ; i <= theRemoveFaces.Length(); i++)
    myMapFaces.Add(theRemoveFaces.Value(i));
  
  myDone = removeFaces(myInitShape,myResultShape);
  return myDone;
}

//=======================================================================
//function : removeFaces
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_RemoveFace::removeFaces(const TopoDS_Shape& theShape,
                                                    TopoDS_Shape& theNewShape)
{
  Standard_Boolean isDone = Standard_False;
  
  TopAbs_ShapeEnum aType = theShape.ShapeType();
  theNewShape = theShape;
  if(!myMapFaces.Extent())
    return isDone;
  if( aType == TopAbs_WIRE || aType == TopAbs_EDGE || aType == TopAbs_VERTEX)
      return isDone;
  if(aType == TopAbs_FACE && myMapFaces.Contains(theShape)) {
    removePCurve(TopoDS::Face(theShape));
    
    myContext->Remove(theShape);
    myMapFaces.Remove(theShape);
    //theNewShape = TopoDS_Shape();
    theNewShape.Nullify();
    isDone = Standard_True;
  }
  else if(aType == TopAbs_SHELL) {
    isDone = removeFaces(TopoDS::Shell(theShape),theNewShape);
    return isDone;
  }
  else if(aType == TopAbs_SOLID) {
    isDone = removeFaces(TopoDS::Solid(theShape),theNewShape);
    myContext->Replace(theShape,theNewShape);
  }
  else if(aType == TopAbs_COMPSOLID) {

    //in the case of compsolid method for removing faces for solid
    //will be used.

    TopExp_Explorer aExpShell(theShape,TopAbs_SHELL);
    TopoDS_Solid aSol;
    BRep_Builder aB;
    aB.MakeSolid(aSol);
    for( ; aExpShell.More(); aExpShell.Next()) {
      aB.Add(aSol,aExpShell.Current());
    }
    TopoDS_Shape aNewShape;
    isDone =  removeFaces(aSol,aNewShape);
    if(isDone)
       myContext->Replace(theShape,theNewShape);
    
  }
  else if(aType == TopAbs_COMPOUND) {
    //in the case of compounf faces will be removed from each part of compound separately

    TopoDS_Compound aComp;
    TopoDS_Iterator aItShape(theShape,Standard_False);
    BRep_Builder aB;
    aB.MakeCompound(aComp);
    Standard_Integer nbs =0;
    for( ; aItShape.More() ; aItShape.Next()) {

      TopoDS_Shape aNShape;
      if( removeFaces(aItShape.Value(),aNShape)) {
        isDone = Standard_True;
        myContext->Replace(aItShape.Value(),aNShape);
      }
      if(!aNShape.IsNull()) {
        aB.Add(aComp,aNShape);
        nbs++;
      }
    }
    if(isDone) {
      if(nbs) 
        theNewShape = aComp;
      else
        theNewShape =TopoDS_Shape();
      myContext->Replace(theShape,theNewShape);
    }
   
  }
  return isDone;
}
//=======================================================================
//function : removeFaces
//purpose  : function for removing faces from solid
//=======================================================================

Standard_Boolean ShHealOper_RemoveFace::removeFaces(const TopoDS_Solid& theShape,
                                                    TopoDS_Shape& theNewShape)
{
  Standard_Boolean isDone = Standard_False;
  TopoDS_Solid aSol;
  BRep_Builder aB;
  aB.MakeSolid(aSol);
  TopoDS_Compound aComp;
  aB.MakeCompound(aComp);
  Standard_Boolean isAddSol = Standard_False, isAddComp = Standard_False;

  //firslty faces will be deleted from each shell.
  TopoDS_Iterator aItSol(theShape,Standard_False);
  for( ; aItSol.More(); aItSol.Next()) {
    TopoDS_Shape aSh = aItSol.Value();
    TopoDS_Shape aNewShape;
    if(removeFaces(aSh,aNewShape)) 
      isDone = Standard_True;
    
    if(aNewShape.IsNull())
      continue;
    else if(aNewShape.ShapeType() == TopAbs_SHELL ) {
      aB.Add(aSol,aNewShape);
      isAddSol = Standard_True;
    }
    else {
      aB.Add(aComp,aNewShape);
      isAddComp = Standard_True;
    }
    
  }
  if(isDone) {
    //for getting correct solids class ShapeFix_Solid will be used.
    if(isAddSol) {
      Handle(ShapeFix_Solid) aSfSol = new ShapeFix_Solid(aSol);
      aSfSol->FixShellMode()= Standard_False;
      aSfSol->Perform();
      TopoDS_Shape aresSol = aSfSol->Shape();
      if(!isAddComp) 
        theNewShape = aresSol;
      else 
        aB.Add(aComp,aresSol);
    }
    else if(isAddComp)
        theNewShape = aComp;
    else
      theNewShape.Nullify();
  }
  else
    theNewShape = theShape; 
  return isDone;
}
//=======================================================================
//function : IsManifold
//purpose  : function for definition manifold shell
//=======================================================================
Standard_Boolean ShHealOper_RemoveFace::isManifold(const TopoDS_Shell& aShell)
{
  Standard_Boolean IsManifold = Standard_True;
  TopExp_Explorer aExp(aShell,TopAbs_EDGE);
  for( ; aExp.More() && IsManifold; aExp.Next()) {
    const TopTools_ListOfShape& als = myMapEdgesFace.FindFromKey(aExp.Current());
    IsManifold = (als.Extent() <=2 ); 
  }
  return IsManifold;
}

//=======================================================================
//function : getResultShell
//purpose  : function for avoiding empty shall or shell containing one face.
//=======================================================================
static TopoDS_Shape getResultShell(const TopoDS_Shape& theNewShell)
{
  TopoDS_Shape rs;
  Standard_Integer NbFacesShell =0;
  TopoDS_Shape aF;
  TopoDS_Iterator aI(theNewShell,Standard_False);
  for(; aI.More(); aI.Next(),NbFacesShell++)
    aF = aI.Value();
  if(NbFacesShell >1)
    rs = theNewShell;
  else if(!aF.IsNull())
    rs = aF;
  return rs;
}

//=======================================================================
//function : removeFaces
//purpose  : function for removing faces from shell
//=======================================================================

Standard_Boolean ShHealOper_RemoveFace::removeFaces(const TopoDS_Shell& theShell,
                                                    TopoDS_Shape& theNewShape)
{
  
  Standard_Boolean aIsRemove = Standard_False;
  //TopoDS_Shape aShape = myReShape->Apply(theShape);
  //removing faces from shell.
  TopoDS_Iterator aIterFaces(theShell,Standard_False);
  for(; aIterFaces.More() && myMapFaces.Extent(); aIterFaces.Next()) {

    if(!myMapFaces.Contains(aIterFaces.Value()))
      continue;
    TopoDS_Face aFace = TopoDS::Face( aIterFaces.Value());
    removePCurve(aFace);
    aIsRemove  = Standard_True;
    myContext->Remove(aFace);
    myMapFaces.Remove(aFace);
  }
  if(aIsRemove) {
    TopoDS_Shape aNewShape = myContext->Apply(theShell);
    //avoiding empty shell and shell containing one face.
    TopoDS_Shape aresShape = getResultShell(aNewShape);
    if(aresShape.IsNull()) {
      myContext->Remove(aNewShape);
      theNewShape.Nullify();
    }
    else if(aresShape.ShapeType() == TopAbs_FACE) {
      myContext->Replace(aNewShape,aresShape);
      theNewShape = aresShape;
    }
    else if(aresShape.ShapeType() == TopAbs_SHELL) {
      //obtaining correct shell or compound with help class ShapeFix_Shell.
      Standard_Boolean isManifShell = isManifold(theShell);
      Handle(ShapeFix_Shell) aFixShell = new ShapeFix_Shell;
      aFixShell->FixFaceOrientation(TopoDS::Shell(aresShape),Standard_True,!isManifShell);
      TopoDS_Shape aFixShape = aFixShell->Shape();
      TopoDS_Shape areplShape;
      isReplace(aFixShape,areplShape);
      myContext->Replace(aNewShape,areplShape);
      theNewShape = areplShape;
    }
  }
  else theNewShape = theShell;
  return aIsRemove;
}
//=======================================================================
//function : isReplace
//purpose  : method to avoiding empty compounds and shells.
//=======================================================================

Standard_Boolean ShHealOper_RemoveFace::isReplace(const TopoDS_Shape& theShape, 
                                                  TopoDS_Shape& theNewShape)
{
  
  Standard_Boolean isChange = Standard_False;
  TopTools_SequenceOfShape aSeqShapes;
  if(theShape.ShapeType() == TopAbs_COMPOUND || theShape.ShapeType() == TopAbs_COMPSOLID ||
     theShape.ShapeType() == TopAbs_SOLID) {
    TopoDS_Iterator aEs(theShape);
    for( ; aEs.More(); aEs.Next()) {
      TopoDS_Shape aNewShell = aEs.Value();
      if(aNewShell.ShapeType()!= TopAbs_SHELL) {
        aSeqShapes.Append(aNewShell);
        continue;
      }
      TopoDS_Shape as = getResultShell(TopoDS::Shell(aNewShell));
      isChange = (as.IsNull() || (as.ShapeType() == TopAbs_FACE));
      if(!as.IsNull()) {
        aSeqShapes.Append(as);
      }
    }
  }
  else if(theShape.ShapeType() == TopAbs_SHELL) {
    TopoDS_Shape aSh = getResultShell(TopoDS::Shell(theShape));
    isChange = (aSh.IsNull() || (aSh.ShapeType() == TopAbs_FACE));
    if(!aSh.IsNull())
      aSeqShapes.Append(aSh);
  }
  else aSeqShapes.Append(theShape);

  if(aSeqShapes.IsEmpty())
    return Standard_True;

  if(isChange) {
    if(aSeqShapes.Length() == 1)
      theNewShape = aSeqShapes.Value(1);
    else if (aSeqShapes.Length() > 1) {
      TopoDS_Compound aComp1;
      BRep_Builder aBB;
      aBB.MakeCompound(aComp1);
      Standard_Integer kk =1;
      for( ; kk <=  aSeqShapes.Length(); kk++)
        aBB.Add(aComp1,aSeqShapes.Value(kk));
      if(aSeqShapes.Length())
        theNewShape = aComp1;
    }
  }
  else
    theNewShape = theShape;
  return isChange;
}
//=======================================================================
//function : removePCurve
//purpose  : 
//=======================================================================

void ShHealOper_RemoveFace::removePCurve(const TopoDS_Face& theFace)
{
  //removing pcurves belonging removed face.
  Handle(Geom_Surface) aSurfDel = BRep_Tool::Surface(theFace);
  for(TopExp_Explorer aExpEdges(theFace,TopAbs_EDGE);  aExpEdges.More();  aExpEdges.Next()) {
    const TopTools_ListOfShape& alFaces = myMapEdgesFace.FindFromKey(aExpEdges.Current());
    Standard_Boolean aIsDeleted = Standard_True;
    
    //pcurve will be removed if containing this edge faces have different surfaces.
    TopTools_ListIteratorOfListOfShape aIterOtherFace(alFaces);
    for(; aIterOtherFace.More() && aIsDeleted ; aIterOtherFace.Next()) {
      if(aIterOtherFace.Value().IsSame(theFace))
         continue;
         TopoDS_Face aFaceOther = TopoDS::Face(aIterOtherFace.Value());
         Handle(Geom_Surface) aSurf = BRep_Tool::Surface( aFaceOther);
         aIsDeleted = (aSurf != aSurfDel);
    }
    
    TopoDS_Edge aEdge = TopoDS::Edge(myContext->Apply(aExpEdges.Current()));
    ShapeBuild_Edge aSbe;
    TopoDS_Edge aNewEdge = aSbe.Copy(aEdge,Standard_False);
    if(aIsDeleted) {
      aSbe.RemovePCurve(aNewEdge,aSurfDel);
      myContext->Replace(aEdge,aNewEdge);
      
    }
    
  }
}

