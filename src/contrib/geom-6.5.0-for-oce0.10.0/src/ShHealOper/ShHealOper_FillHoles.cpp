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

// File:      ShHealOper_FillHoles.cxx
// Created:   26.04.04 17:35:30
// Author:    Galina KULIKOVA

#include <Basics_OCCTVersion.hxx>

#include <ShapeFix_Shell.hxx>
#include <ShapeFix_Face.hxx>
#include <ShHealOper_FillHoles.hxx>
#include <ShapeAnalysis_FreeBounds.hxx>

#include <BRep_Tool.hxx>
#include <BRepAdaptor_Curve.hxx>
#include <BRepAdaptor_HCurve.hxx>
#include <BRep_Builder.hxx>
#include <BRepFill_CurveConstraint.hxx>
#include <BRepBuilderAPI_MakeFace.hxx>

#include <TopAbs_ShapeEnum.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Shell.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopLoc_Location.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_HSequenceOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <Geom_Curve.hxx>
#include <Geom_BSplineSurface.hxx>
#include <GeomPlate_Surface.hxx>
#include <GeomPlate_MakeApprox.hxx>
#include <GeomPlate_CurveConstraint.hxx>
#include <GeomPlate_PlateG0Criterion.hxx>
#include <GeomPlate_BuildPlateSurface.hxx>

#include <TColgp_SequenceOfXY.hxx>
#include <TColgp_SequenceOfXYZ.hxx>

#include <Precision.hxx>

//=======================================================================
//function : ShHealOper_FillHoles()
//purpose  : Constructor
//=======================================================================
ShHealOper_FillHoles::ShHealOper_FillHoles ()
{
  InitParameters();
}

//=======================================================================
//function : ShHealOper_FillHoles
//purpose  :
//=======================================================================
ShHealOper_FillHoles::ShHealOper_FillHoles (const TopoDS_Shape& theShape)
{
  Init(theShape);
  InitParameters();
}

//=======================================================================
//function : Init
//purpose  :
//=======================================================================
void ShHealOper_FillHoles::Init(const TopoDS_Shape& theShape)
{
  ShHealOper_Tool::Init(theShape);
  TopExp::MapShapesAndAncestors( myInitShape, TopAbs_EDGE,TopAbs_SHELL   , myEdgeShells);
  TopExp::MapShapesAndAncestors ( myInitShape, TopAbs_EDGE,TopAbs_COMPOUND, myEdgeComps );

  TopExp::MapShapesAndAncestors ( myInitShape, TopAbs_EDGE,TopAbs_FACE, myEdgeFaces );
}

//=======================================================================
//function : InitParameters
//purpose  :
//=======================================================================
void ShHealOper_FillHoles::InitParameters(Standard_Integer theDegree,
                                          Standard_Integer theNbPtsOnCur,
                                          Standard_Integer theNbIter,
                                          Standard_Real theTol3d,
                                          Standard_Real theTol2d,
                                          Standard_Real theTolAng,
                                          Standard_Real theTolCrv,
                                          Standard_Integer theMaxDeg,
                                          Standard_Integer theMaxSeg)
{
  myNbPtsOnCur = theNbPtsOnCur;
  myNbIter = theNbIter;
  myDegree =theDegree;
  myTol2d = theTol2d;
  myTol3d = theTol3d;
  myTolAng = theTolAng;
  myTolCrv = theTolCrv;
  myMaxDeg = theMaxDeg;
  myMaxSeg =theMaxSeg;
}
//=======================================================================
//function : Fill
//purpose  :
//=======================================================================
Standard_Boolean ShHealOper_FillHoles::Fill()
{
  ShapeAnalysis_FreeBounds sab(myInitShape);
  TopoDS_Compound aCompClosed = sab.GetClosedWires();
  TopoDS_Compound aCompOpen = sab.GetOpenWires();
  TopTools_SequenceOfShape aFillWires;
  if(!aCompClosed.IsNull()) {
    TopoDS_Iterator aIt(aCompClosed);

    for( ; aIt.More(); aIt.Next())
      aFillWires.Append(aIt.Value());
  }
  if(!aCompOpen.IsNull()) {
    TopoDS_Iterator aIt(aCompOpen);
    for(  ; aIt.More(); aIt.Next())
      aFillWires.Append(aIt.Value());
  }

  TopExp_Explorer aExp(myInitShape,TopAbs_EDGE,TopAbs_FACE);

  for( ; aExp.More(); aExp.Next())
    aFillWires.Append(aExp.Current());

  return Fill(aFillWires);
}

//=======================================================================
//function : Fill
//purpose  :
//=======================================================================
Standard_Boolean ShHealOper_FillHoles::Fill(const TopTools_SequenceOfShape& theFillShapes)
{
  myDone = Standard_False;
  myErrorStatus = ShHealOper_NotError;
  if(myInitShape.IsNull()) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return myDone;
  }
  if(!theFillShapes.Length()) {
    return myDone;
  }

  Handle(TopTools_HSequenceOfShape) aSeqWires = new TopTools_HSequenceOfShape;
  if(!prepareWires(theFillShapes,aSeqWires)) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return myDone;
  }

  myResultShape = myInitShape;
  Standard_Integer i =1;
  for( ; i <= aSeqWires->Length(); i++) {
    TopoDS_Wire aWire = TopoDS::Wire(aSeqWires->Value(i));
    Handle(TColGeom2d_HArray1OfCurve) aCurves2d;
    Handle(TColStd_HArray1OfInteger) aOrders;
    Handle(TColStd_HArray1OfInteger) aSenses;
    Handle(Geom_Surface) aSurf = buildSurface(aWire,aCurves2d,aOrders,aSenses);
    if(aSurf.IsNull())
      myErrorStatus = ShHealOper_ErrorExecution;
    else
      myDone = (addFace(aSurf,aWire,aCurves2d,aOrders,aSenses) || myDone);
  }
  if(myDone)
    myResultShape = myContext->Apply(myResultShape);
  return myDone;
}

//=======================================================================
//function : isCircle
//purpose  :
//=======================================================================
static Standard_Boolean isCircle(const TopoDS_Edge theEdge)
{
  Standard_Real aFirst, aLast;
  Handle(Geom_Curve) aC3D = BRep_Tool::Curve(theEdge,aFirst, aLast );
  if(aC3D.IsNull()) return Standard_False;
  Standard_Boolean isCirc = (aC3D->Value(aFirst).Distance(aC3D->Value(aLast)) <
     aC3D->Value(aFirst).Distance(aC3D->Value((aFirst +aLast)/2)));
  return isCirc;
}
//=======================================================================
//function : prepareWires
//purpose  :
//=======================================================================

Standard_Boolean ShHealOper_FillHoles::prepareWires(const TopTools_SequenceOfShape& theFillShapes,
                                                    Handle(TopTools_HSequenceOfShape)& theSeqWires)
{
  Handle(TopTools_HSequenceOfShape) aSeqEdges = new TopTools_HSequenceOfShape;
  Standard_Integer i =1;
  for( ; i <= theFillShapes.Length(); i++) {
    TopExp_Explorer aExp;
    for (aExp.Init (theFillShapes.Value(i),TopAbs_WIRE); aExp.More(); aExp.Next()) {
      TopoDS_Iterator aIt(aExp.Current());
      Standard_Boolean isAdd = Standard_True;
      for( ; aIt.More() && isAdd; aIt.Next()) {
        if(myEdgeFaces.Contains(aIt.Value()))
          isAdd =  (myEdgeFaces.FindFromKey(aIt.Value()).Extent() <2);
      }
      if(isAdd)
        theSeqWires->Append(aExp.Current());
    }
    for (aExp.Init (theFillShapes.Value(i),TopAbs_EDGE, TopAbs_WIRE); aExp.More(); aExp.Next()) {
      if (!BRep_Tool::Degenerated (TopoDS::Edge (aExp.Current())))
        if(myEdgeFaces.Contains(aExp.Current()) && myEdgeFaces.FindFromKey(aExp.Current()).Extent() >1)
          continue;
        aSeqEdges->Append(aExp.Current());
    }
  }

  if(aSeqEdges->Length())
  {
    Standard_Real aTol = 0.;
    Standard_Boolean aShared = Standard_True;
    Handle(TopTools_HSequenceOfShape) aTmpWires = new TopTools_HSequenceOfShape;
    ShapeAnalysis_FreeBounds::ConnectEdgesToWires(aSeqEdges, aTol, aShared, aTmpWires);
    Handle(TopTools_HSequenceOfShape) anWiresClosed = new TopTools_HSequenceOfShape,
    anWiresOpen   = new TopTools_HSequenceOfShape;
    ShapeAnalysis_FreeBounds::SplitWires(aTmpWires, aTol, aShared, anWiresClosed, anWiresOpen);

    for (i = 1; i <= anWiresClosed->Length(); i++)
      theSeqWires->Append (anWiresClosed->Value (i));
    for (i = 1; i <= anWiresOpen->Length(); i++)
      theSeqWires->Append (anWiresOpen->Value (i));
  }

  for( i =1; i <= theSeqWires->Length(); i++) {
    TopoDS_Wire aWire = TopoDS::Wire(theSeqWires->Value(i));

    TopoDS_Iterator aIt(aWire);
    Standard_Integer ne =0;
    TopoDS_Edge ae;
    for( ; aIt.More(); aIt.Next(), ne++)
      ae = TopoDS::Edge(aIt.Value());
    if((ne == 1) && ( !isCircle(ae))) {
      theSeqWires->Remove(i--);
      continue;
    }
  }
  return (theSeqWires->Length());
}
//=======================================================================
//function : buildSurface
//purpose  :
//=======================================================================

Handle(Geom_Surface) ShHealOper_FillHoles::buildSurface(const TopoDS_Wire& theWire,
                                                        Handle(TColGeom2d_HArray1OfCurve)& theCurves2d,
                                                        Handle(TColStd_HArray1OfInteger)& theOrders,
                                                        Handle(TColStd_HArray1OfInteger)& theSenses)
{
  Handle(Geom_BSplineSurface) aSurf;
  try {
      GeomPlate_BuildPlateSurface aBuilder(myDegree, myNbPtsOnCur, myNbIter,
                                                 myTol2d, myTol3d, myTolAng, myTolCrv);
      TopoDS_Iterator aIter;
      for(aIter.Initialize (theWire); aIter.More(); aIter.Next()) {

        TopoDS_Edge ae = TopoDS::Edge(aIter.Value());
        BRepAdaptor_Curve adC(ae);
        Handle(BRepAdaptor_HCurve) aHAD= new BRepAdaptor_HCurve(adC);
        Handle(BRepFill_CurveConstraint) aConst =
            new BRepFill_CurveConstraint (aHAD, (Standard_Integer) GeomAbs_C0, myNbPtsOnCur, myTol3d);
        //Handle(GeomPlate_CurveConstraint) aConst =
         // new GeomPlate_CurveConstraint(aHAD, (Standard_Integer) GeomAbs_C0, myNbPtsOnCur, myTol3d);
        aBuilder.Add (aConst);
      }
      aBuilder.Perform();
      if(!aBuilder.IsDone())
        return aSurf;
      Handle(GeomPlate_Surface) aPlSurf = aBuilder.Surface();

      //for filling holes without initial specified surface
      //the initial surface should be build by GeomPlate itself
      //following code was taken from BRepFill_Filling::Build

      Standard_Real aDist = aBuilder.G0Error();
      TColgp_SequenceOfXY S2d;
      TColgp_SequenceOfXYZ S3d;
      S2d.Clear();
      S3d.Clear();
      aBuilder.Disc2dContour(4,S2d);
      aBuilder.Disc3dContour(4,0,S3d);
      Standard_Real amaxTol = Max( myTol3d, 10* aDist);
      GeomPlate_PlateG0Criterion Criterion( S2d, S3d, amaxTol );
      GeomPlate_MakeApprox Approx( aPlSurf, Criterion, myTol3d, myMaxSeg, myMaxDeg );
      aSurf = Approx.Surface();
      if(aSurf.IsNull())
        return aSurf;

      theCurves2d = aBuilder.Curves2d();
      theOrders    = aBuilder.Order();
      theSenses    = aBuilder.Sense();
    }

  catch (Standard_Failure) {
    aSurf.Nullify();
    return aSurf;
  }
  return aSurf;
}

//=======================================================================
//function : addFace
//purpose  :
//=======================================================================

Standard_Boolean ShHealOper_FillHoles::addFace(const Handle(Geom_Surface)& theSurf,
                                               const TopoDS_Wire& theWire,
                                               const Handle(TColGeom2d_HArray1OfCurve)& theCurves2d,
                                               const Handle(TColStd_HArray1OfInteger)& theOrders,
                                               const Handle(TColStd_HArray1OfInteger)& theSenses)
{
#if OCC_VERSION_LARGE > 0x06050100 // for OCC-6.5.2 and higher version
  BRepBuilderAPI_MakeFace aMakeFace (theSurf, Precision::Confusion());
#else
  BRepBuilderAPI_MakeFace aMakeFace (theSurf);
#endif
  TopoDS_Face aFace = aMakeFace.Face();
  aFace.EmptyCopy();

  TopoDS_Wire aWire;
  BRep_Builder aB;
  aB.MakeWire(aWire);

  TopTools_IndexedMapOfShape aMapParent;
  Standard_Integer aInd = 1;
  Standard_Boolean hasShell = Standard_False;
  TopoDS_Iterator aIter(theWire);
  for ( ; aIter.More(); aIter.Next(), aInd++) {
    TopoDS_Edge anEdge = TopoDS::Edge (aIter.Value());
    Standard_Real aF, aL;
    BRep_Tool::Range (anEdge, aF, aL);
    TopLoc_Location aLoc;
    aB.UpdateEdge (anEdge, theCurves2d->Value (aInd),aFace, 0.);

    aB.Range (anEdge, aFace, aF, aL);

    // Set orientation of the edge: orientation should be changed
    // if its orientation does not make sence with curve orientation
    // recommended by GeomPlate
    if ((anEdge.Orientation() == TopAbs_FORWARD) ==
        (theSenses->Value (theOrders->Value (aInd)) == 1)) {
      anEdge.Reverse();
    }
    aB.SameParameter(anEdge,Standard_False);
    aB.Add (aWire, anEdge);
    TopoDS_Shape aParent;
    if(!myEdgeFaces.Contains(anEdge))
      continue;

    if(myEdgeFaces.FindFromKey(anEdge).Extent() >1)
      continue;

    if(myEdgeShells.Contains(anEdge)) {
      if(myEdgeShells.FindFromKey(anEdge).Extent()) {
       aParent = myEdgeShells.FindFromKey(anEdge).First();
       hasShell = Standard_True;
       aMapParent.Add(aParent);
     }
    }
    else if(myEdgeComps.Contains(anEdge)) {
      if(myEdgeComps.FindFromKey(anEdge).Extent()) {
        aParent = myEdgeComps.FindFromKey(anEdge).First();
        aMapParent.Add(aParent);
      }
    }

  }
  aB.Add(aFace,aWire);
  Handle(ShapeFix_Face) aSff = new ShapeFix_Face(aFace);
  aSff->SetContext(myContext);
  aSff->SetPrecision(myTol3d);
  aSff->Perform();
  if(aSff->Status(ShapeExtend_FAIL)) {
    myErrorStatus = ShHealOper_ErrorExecution;
    return Standard_False;
  }
  //theFace = aSff->Face();
  TopoDS_Shape aResShape = aSff->Result();
  getResShape(aResShape,aMapParent,hasShell);
  return Standard_True;
}

//=======================================================================
//function : getResShape
//purpose  :
//=======================================================================

void ShHealOper_FillHoles::getResShape(const TopoDS_Shape& theAddShape,
                                       const TopTools_IndexedMapOfShape& aMapParent,
                                       const Standard_Boolean theHasShell)
{
  BRep_Builder aB;

  if(!aMapParent.Extent()) {
    TopoDS_Compound aComp;
    aB.MakeCompound(aComp);
    TopoDS_Shape aresShape = myContext->Apply(myResultShape);
    aB.Add(aComp,aresShape);
    aB.Add(aComp,theAddShape);
    myResultShape = aComp;
    return ;
  }
  Standard_Boolean anhasShell = theHasShell;
  TopoDS_Shell aTmpShell;
  aB.MakeShell(aTmpShell);
  TopTools_SequenceOfShape aseqShells;
  if(anhasShell) {
    aB.Add(aTmpShell,theAddShape);
    Standard_Integer i =1;
    for( ; i <= aMapParent.Extent(); i++) {
      TopoDS_Shape aParShape = myContext->Apply(aMapParent.FindKey(i));
      if(aParShape.ShapeType() == TopAbs_SHELL) {
        TopExp_Explorer aexp(aParShape,TopAbs_FACE);
        for( ; aexp.More(); aexp.Next())
          aB.Add(aTmpShell,aexp.Current());
        aseqShells.Append(aParShape);
      }
    }
    anhasShell = aseqShells.Length();
  }
  if(anhasShell) {
    Handle(ShapeFix_Shell) asfs = new ShapeFix_Shell;
    asfs->FixFaceOrientation(aTmpShell);
    TopoDS_Shape anshape = asfs->Shape();
    myContext->Replace(aseqShells.Value(1),anshape);
    Standard_Integer i =2;
    for( ; i<= aseqShells.Length(); i++)
      myContext->Remove(aseqShells.Value(i));
  }
  else {
    TopoDS_Compound aComp;
    aB.MakeCompound(aComp);
    TopoDS_Shape oldshape = myContext->Apply(aMapParent.FindKey(1));
    TopoDS_Iterator aIt(oldshape);
    for( ; aIt.More(); aIt.Next())
      aB.Add(aComp,aIt.Value());
    aB.Add(aComp,theAddShape);
    myContext->Replace( oldshape,aComp);
  }
}
