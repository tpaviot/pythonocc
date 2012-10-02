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

// File:      ShHealOper_EdgeDivide.cxx
// Created:   30.04.04 16:44:47
// Author:    Galina KULIKOVA
//
#include <ShHealOper_EdgeDivide.hxx>
#include <ShapeUpgrade_WireDivide.hxx>
#include <ShHealOper_SplitCurve3d.hxx>
#include <ShHealOper_SplitCurve2d.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <BRep_Tool.hxx>
#include <ShapeFix_Edge.hxx>
#include <ShapeAnalysis_Edge.hxx>
#include <GeomAdaptor_Curve.hxx>
#include <Geom2dAdaptor_Curve.hxx>
#include <TopoDS.hxx>
#include <Geom_Curve.hxx>
#include <TopoDS_Face.hxx>
#include <Geom2d_Curve.hxx>
#include <GCPnts_AbscissaPoint.hxx>
#include <TopExp.hxx>
#include <Precision.hxx>
//#include <.hxx>
//#include <.hxx>
//=======================================================================
//function : ShHealOper_EdgeDivide()
//purpose  : Constructor
//=======================================================================

ShHealOper_EdgeDivide::ShHealOper_EdgeDivide (const TopoDS_Shape& theShape) 
{
  Init(theShape);
}
//=======================================================================
//function : Init
//purpose  : 
//=======================================================================

void ShHealOper_EdgeDivide::Init(const TopoDS_Shape& theShape)
{
  ShHealOper_Tool::Init(theShape);
  myDivideParamMode = Standard_True;
  myMapEdgesFace.Clear();
  TopExp::MapShapesAndAncestors(theShape,TopAbs_EDGE,TopAbs_FACE,myMapEdgesFace);
  
}

//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
Standard_Boolean ShHealOper_EdgeDivide::Perform(const TopoDS_Shape& theEdge, 
                                                const TColStd_SequenceOfReal& theValues,
                                                const Standard_Boolean theDivideParamMode)
{ 
  myDone = Standard_False;
  myDivideParamMode = theDivideParamMode;
  if(theEdge.ShapeType() != TopAbs_EDGE) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return myDone;
  }
  myEdge = TopoDS::Edge(theEdge);
  Standard_Integer i =1;
  Handle(TColStd_HSequenceOfReal) aSeqValues = new TColStd_HSequenceOfReal;
  for( ; i <= theValues.Length(); i++)
      aSeqValues->Append(theValues.Value(i));
  myDone = build(aSeqValues);
  return myDone;
  
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_EdgeDivide::Perform(const TopoDS_Shape& theEdge, 
                                                const Standard_Real theValue,
                                                const Standard_Boolean theDivideParamMode)
{
  myDone = Standard_False;
  myErrorStatus = ShHealOper_NotError;
  if(theEdge.ShapeType() != TopAbs_EDGE) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return myDone;
  }
  myDivideParamMode = theDivideParamMode;
  myEdge = TopoDS::Edge(theEdge);
  Handle(TColStd_HSequenceOfReal) aSeqValues = new TColStd_HSequenceOfReal;
  aSeqValues->Append(theValue);
  myDone = build(aSeqValues);
  return myDone;
}
//=======================================================================
//function : build
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_EdgeDivide::build(const Handle(TColStd_HSequenceOfReal)& theValues)
{
  if(myEdge.IsNull() || !theValues->Length()) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return Standard_False;
  }

  Standard_Boolean has3d = Standard_False, 
  has2d = Standard_False, 
  hasPCurves = Standard_False;
  
  //computation of the split values in dependance from specified mode and values.
  if(!computeValues(theValues, has3d,has2d,hasPCurves)) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return Standard_False;
  }
  
  //setting split values in the splitting curve tools.
  Handle(ShapeUpgrade_WireDivide) aSplitTool = new ShapeUpgrade_WireDivide;
  aSplitTool->Load(myEdge);
  aSplitTool->SetContext(myContext);
  if(has3d) {
    Handle(ShHealOper_SplitCurve3d) aSplitCurve3d = new ShHealOper_SplitCurve3d;
    aSplitCurve3d->SetValues(theValues);
    aSplitTool->SetSplitCurve3dTool(aSplitCurve3d);
  }
  else if(has2d) {
    Handle(ShHealOper_SplitCurve2d) aSplitCurve2d = new ShHealOper_SplitCurve2d;
    aSplitCurve2d->SetValues(theValues);
    aSplitTool->SetSplitCurve2dTool(aSplitCurve2d);
  }
  else {
    myErrorStatus = ShHealOper_InvalidParameters;
    return Standard_False;
  }
  
  //split 3d curve and pcurve for each face reffering to edge.
  Standard_Boolean isDone = Standard_True;
  if(hasPCurves) {
    const TopTools_ListOfShape& lfaces  = myMapEdgesFace.FindFromKey(myEdge);
    TopTools_ListIteratorOfListOfShape aItf(lfaces);
    for( ; aItf.More() && isDone; aItf.Next()) {
      TopoDS_Face aFace = TopoDS::Face(aItf.Value());
      aSplitTool->SetFace(aFace);
      aSplitTool->Perform();
      isDone = aSplitTool->Status( ShapeExtend_DONE );
      if( aSplitTool->Status( ShapeExtend_FAIL ))
        myErrorStatus = ShHealOper_ErrorExecution;
    }
  }
  else {
     aSplitTool->Perform();
     isDone = aSplitTool->Status( ShapeExtend_DONE );
     if( aSplitTool->Status( ShapeExtend_FAIL ))
        myErrorStatus = ShHealOper_ErrorExecution;
  }
  if(isDone)
    myResultShape = myContext->Apply(myInitShape);
  return isDone;
  
}
//=======================================================================
//function : computeValues
//purpose  : 
//=======================================================================

Standard_Boolean ShHealOper_EdgeDivide::computeValues(const Handle(TColStd_HSequenceOfReal)& theValues,
                                                      Standard_Boolean& theHas3d,
                                                      Standard_Boolean& theHas2d,
                                                      Standard_Boolean& hasPCurves)
{
  hasPCurves = (myMapEdgesFace.Contains(myEdge) && 
                myMapEdgesFace.FindFromKey(myEdge).Extent());
  if(hasPCurves && (!BRep_Tool::SameRange(myEdge) || !BRep_Tool::SameParameter(myEdge))) {
    ShapeFix_Edge sfe;
    sfe.FixSameParameter(myEdge);
  }
  
  Standard_Real aFirst =0.,aLast=0.;

  //computation of the split values if edge should be splitted by parameter.
  if(myDivideParamMode) {
    BRep_Tool::Range(myEdge,aFirst,aLast);
    Handle(Geom_Curve) aCurve = BRep_Tool::Curve(myEdge,aFirst,aLast);
    
    theHas3d = (!aCurve.IsNull());
    theHas2d = (aCurve.IsNull() && (fabs(aLast-aFirst) > Precision::PConfusion() ));
    Standard_Integer i = 1;
    for( ; i <= theValues->Length();i++) {
      Standard_Real aVal = theValues->Value(i);
      theValues->ChangeValue(i) = aFirst+ aVal*fabs(aLast - aFirst);
    }
  }
  else {
     //computation of the split values if edge should be splitted by length.
    ShapeAnalysis_Edge sae;
    Handle(Geom_Curve) aCurve;
    Standard_Real aCurLen =0.;
    GeomAdaptor_Curve aAdC;
    Geom2dAdaptor_Curve aAdC2d;
    if(sae.Curve3d(myEdge,aCurve,aFirst,aLast,Standard_False)) {
      aAdC.Load(aCurve,aFirst,aLast);
      aCurLen = GCPnts_AbscissaPoint::Length(aAdC,aFirst,aLast); 
      theHas3d = Standard_True;
    }
    else {
      if(hasPCurves) {
        TopoDS_Face aFace = TopoDS::Face(myMapEdgesFace.FindFromKey(myEdge).First());
        Handle(Geom2d_Curve) aCurve2d;
        if(sae.PCurve(myEdge,aFace,aCurve2d,aFirst,aLast)) {
          aAdC2d.Load(aCurve2d,aFirst,aLast);
          aCurLen = GCPnts_AbscissaPoint::Length(aAdC,aFirst,aLast);
          theHas2d = Standard_True;
        }
          
      }
    }
    if(!theHas3d && !theHas2d)
      return Standard_False;

    Standard_Integer i = 1;
    for( ; i <= theValues->Length();i++) {
      Standard_Real aLen = theValues->Value(i)*aCurLen;
      if(theHas3d) {
        GCPnts_AbscissaPoint anAbsc(aAdC,aLen,aFirst);
        if(anAbsc.IsDone()) 
          theValues->ChangeValue(i) = anAbsc.Parameter();
        else
          theValues->Remove(i--);
      }
      else if(theHas2d) {
        GCPnts_AbscissaPoint anAbsc(aAdC2d,aLen,aFirst);
        if(anAbsc.IsDone()) 
          theValues->ChangeValue(i) = anAbsc.Parameter();
        else
          theValues->Remove(i--);
      }
    }
  }
  return (theValues->Length());
}
