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

// File:      ShHealOper_CloseContour.cxx
// Created:   20.04.04 11:36:01
// Author:    Galina KULIKOVA
//
#include <ShHealOper_CloseContour.hxx>
#include <ShapeExtend_WireData.hxx>
#include <ShapeFix_Wire.hxx>
#include <TopoDS_Face.hxx>
#include <ShapeFix_Edge.hxx>
#include <TopoDS_Iterator.hxx>
#include <ShapeAnalysis_Wire.hxx>
#include <TColStd_SequenceOfInteger.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <TopExp.hxx>
#include <TopoDS.hxx>
#include <TColStd_MapIteratorOfMapOfInteger.hxx>
#include <ShapeAnalysis_Edge.hxx>
#include <BRep_Builder.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <ShapeAnalysis_Edge.hxx>
#include <gp_Pnt.hxx>
#include <gp_Vec2d.hxx>
#include <gp_Vec.hxx>
#include <Geom_Line.hxx>
#include <Geom2d_Line.hxx>
#include <TopoDS_Compound.hxx>
#include <BRep_Tool.hxx>
#include <ShapeBuild_Edge.hxx>
#include <TopExp_Explorer.hxx>

//=======================================================================
//function : ShHealOper_CloseContour()
//purpose  : Constructor
//=======================================================================
ShHealOper_CloseContour::ShHealOper_CloseContour (const TopoDS_Shape& theShape  ) 
{
  Init(theShape);
}

//=======================================================================
//function : Init
//purpose  : 
//=======================================================================
void ShHealOper_CloseContour::Init(const TopoDS_Shape& theShape)
{
  ShHealOper_Tool::Init(theShape);
  myTolerance = Precision::Confusion();
  myMaxTolerance = 1.0;
  TopExp::MapShapesAndAncestors(theShape,TopAbs_EDGE,TopAbs_FACE,myMapEdgesFace);
}

//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
Standard_Boolean ShHealOper_CloseContour::Perform(const TopTools_SequenceOfShape& theSeqEdges,
                                                  const Standard_Boolean theModeVertex,
                                                  const Standard_Boolean theModeFixGapsCurves)
{
  myFreeEdges.Clear();
  myDone = Standard_False;
  myErrorStatus =ShHealOper_NotError;
  if(myInitShape.IsNull()) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return myDone;
  }
  Handle(ShapeExtend_WireData) asewd = new ShapeExtend_WireData;
  Standard_Integer i =1;
  for ( ; i <= theSeqEdges.Length(); i++)
    asewd->Add(theSeqEdges.Value(i));

  myModeVertex = theModeVertex;
  myModeFixGapsCurves = theModeFixGapsCurves;

  build(asewd);
  
  return myDone;
}

//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
Standard_Boolean ShHealOper_CloseContour::Perform(const TopoDS_Wire& theWire,
                                                  const Standard_Boolean theModeVertex,
                                                  const Standard_Boolean theModeFixGapsCurves)
{
  myFreeEdges.Clear();
  myDone = Standard_False;
  if(myInitShape.IsNull()) {
    myErrorStatus = ShHealOper_InvalidParameters;
    return myDone;
  }
  Handle(ShapeExtend_WireData) asewd = new ShapeExtend_WireData(theWire);
  myModeVertex = theModeVertex;
  myModeFixGapsCurves = theModeFixGapsCurves;
  build(asewd);
  return myDone;
}

//=======================================================================
//function : Build
//purpose  : 
//=======================================================================
void ShHealOper_CloseContour::build(Handle(ShapeExtend_WireData)& theSewd)
{
  TopTools_SequenceOfShape aCommonFaces;
  //checks that all specified edges belong the one face or not.
  Standard_Boolean isOneFace = checkOneFace(theSewd,aCommonFaces);

  //add edge or increase max tolerance in dependance on specified VertexMode.
  //if all edges belong the one face that gap will be closed in the 2D by line
  //else gap will be closed in the 3D by line.
  myDone = fixGaps(theSewd,aCommonFaces);
  updateWire(theSewd);
  Handle(ShapeFix_Wire) sfw = new ShapeFix_Wire;
  sfw->SetContext(myContext);
  sfw->Load(theSewd);

  sfw->ClosedWireMode() = Standard_True;
  sfw->SetPrecision(myTolerance);
  sfw->SetMaxTolerance(myMaxTolerance);
  
  if(isOneFace) {
    Standard_Integer ii =1;
    for( ; ii <= aCommonFaces.Length(); ii++) {
      TopoDS_Face aFace = TopoDS::Face(aCommonFaces.Value(ii));
      sfw->SetFace(aFace);
      myDone = (sfw->Perform() || myDone);
      //if Mode for fix gaps is equal to true that
      //curve 3D and curve 2D will be pull to each other.
      if(myModeFixGapsCurves) {
        Standard_Boolean isFixgaps = Standard_False;
        if(ii ==1) {
          sfw->FixGaps3d();
          isFixgaps = sfw->StatusGaps3d(ShapeExtend_DONE);
          if(!isFixgaps && sfw->StatusGaps3d(ShapeExtend_FAIL))
             myErrorStatus = ShHealOper_ErrorExecution;
        }
        if(sfw->FixGaps2d())
          sfw->FixSelfIntersection();
        else if(sfw->StatusGaps2d(ShapeExtend_FAIL))
          myErrorStatus = ShHealOper_ErrorExecution;

        isFixgaps = (isFixgaps || sfw->StatusGaps2d(ShapeExtend_DONE));
        myDone = (myDone || isFixgaps);
        if(isFixgaps) {
          Handle(ShapeExtend_WireData) sbwd = sfw->WireData();
          Handle(ShapeFix_Edge) sfe = new ShapeFix_Edge;
          for (Standard_Integer iedge = 1; iedge <= sbwd->NbEdges(); iedge++) {
            TopoDS_Edge aEdge = TopoDS::Edge(sbwd->Edge(iedge));
            sfe->FixVertexTolerance(aEdge,aFace);
            sfe->FixSameParameter(aEdge);
          }
        }
      }
    }
  }
  else {
    myDone = (sfw->Perform() || myDone);
    if(myModeFixGapsCurves) {
      //if Mode for fix gaps is equal to true that
      //curve 3D will be pull to each other.
      if(sfw->FixGaps3d()) {
        Handle(ShapeExtend_WireData) sbwd = sfw->WireData();
        Handle(ShapeFix_Edge) sfe = new ShapeFix_Edge;
        for (Standard_Integer iedge = 1; iedge <= sbwd->NbEdges(); iedge++) {
          TopoDS_Edge aEdge = TopoDS::Edge(sbwd->Edge(iedge));
          sfe->FixVertexTolerance(aEdge);
          sfe->FixSameParameter(aEdge);
        }
      }
      else if(sfw->StatusGaps3d(ShapeExtend_FAIL))
        myErrorStatus = ShHealOper_ErrorExecution;
      myDone = (sfw->StatusGaps3d(ShapeExtend_DONE) || myDone);
    }
  }

  if(myDone) {
    TopoDS_Shape aoldShape = myInitShape;
    //if free edges were added they will be added to the result shape
    //and type of result shape should be change if initial shape is not COMPOUND.
    if( myFreeEdges.Length()) {
      BRep_Builder aB;
      TopoDS_Compound aComp;
      aB.MakeCompound(aComp);
      if(aoldShape.ShapeType() == TopAbs_COMPOUND) {
        TopoDS_Iterator aIt(aoldShape);
        for( ;aIt.More();aIt.Next() )
           aB.Add(aComp,aIt.Value());
      }
      else
        aB.Add(aComp,aoldShape);

      Standard_Integer i=1;
      for ( ; i <= myFreeEdges.Length(); i++ ) 
        aB.Add(aComp,myFreeEdges.Value(i));
      aoldShape = aComp;
      
    }
    myResultShape = myContext->Apply(aoldShape);
  }
  return;
}

//=======================================================================
//function : checkGaps
//purpose  : 
//=======================================================================
Standard_Boolean ShHealOper_CloseContour::fixGaps(const Handle(ShapeExtend_WireData)& theWire,
                                                  const TopTools_SequenceOfShape& theCommonFaces) 
{
  Handle(ShapeAnalysis_Wire) asaw = new ShapeAnalysis_Wire;
  asaw->Load(theWire);
  
  Standard_Integer i =1;
  Standard_Boolean hasGaps = Standard_False;
  for ( ; i <= asaw->NbEdges(); i++) {
    if(asaw->CheckGap3d(i)) {
      Standard_Real dist = asaw->MinDistance3d();
      if(dist > myMaxTolerance) {
        hasGaps = Standard_True;
        Standard_Integer ind2 = (i ==0 ? theWire->NbEdges() :i);
        Standard_Integer ind1 = (ind2 >1 ? ind2 -1 : theWire->NbEdges());
        TopoDS_Edge aE1= theWire->Edge(ind1);
        TopoDS_Edge aE2= theWire->Edge(ind2);
        if(!myModeVertex)
          buildEdge(aE1,aE2,theCommonFaces);
        else
          myMaxTolerance = RealLast();
        if(ind2 == ind1) break;
      }
    }
    
  }
  return  hasGaps;
}

//=======================================================================
//function : checkOneFace
//purpose  : 
//=======================================================================
Standard_Boolean ShHealOper_CloseContour::checkOneFace(const Handle(ShapeExtend_WireData)& theSewd,
                                                       TopTools_SequenceOfShape& theCommonFaces) const
{
  TopTools_IndexedMapOfShape amapfaces;
  TopoDS_Edge aEdge1 = theSewd->Edge(1);
  Standard_Boolean isOneFace = myMapEdgesFace.Contains(aEdge1 );
  if(!isOneFace)
    return isOneFace;

  //check that all specified edges belong to one face. 
  const TopTools_ListOfShape& alfaces = myMapEdgesFace.FindFromKey(aEdge1);
  isOneFace = isOneFace && (!alfaces.IsEmpty());
  if(!isOneFace)
    return Standard_False;

  TopTools_ListIteratorOfListOfShape litr(alfaces);
  for( ; litr.More();litr.Next() ) 
    amapfaces.Add(litr.Value());
  
  TColStd_MapOfInteger amapIndex;
  Standard_Integer ind  =0;
  Standard_Integer i =2;
  for( ; i <= theSewd->NbEdges() && isOneFace; i++) {
    isOneFace = myMapEdgesFace.Contains(theSewd->Edge(i));
    if(isOneFace) {
      const TopTools_ListOfShape& alfaces1 = myMapEdgesFace.FindFromKey(theSewd->Edge(i));
      
        TColStd_MapOfInteger aTmpInd;
        for(litr.Initialize(alfaces1) ; litr.More() ;litr.Next() ) {
          if(amapfaces.Contains(litr.Value())) {
            ind = amapfaces.FindIndex(litr.Value());
            if( i == 2) 
              amapIndex.Add(ind);
            else 
              aTmpInd.Add(ind);
          }
        }
      if(i ==2) {
        isOneFace = (amapIndex.Extent());
        continue;
      }
      else {
        TColStd_MapIteratorOfMapOfInteger aMi(amapIndex);
        for( ;  aMi.More();aMi.Next()) {
          if(!aTmpInd.Contains(aMi.Key()))
            amapIndex.Remove(aMi.Key());
        }
        isOneFace = (amapIndex.Extent()); 
        
      }
    }
  }
  if(theSewd->NbEdges() >1) {
    Standard_Integer j =1;
    for( ; j <= amapfaces.Extent(); j++) {
      if(!amapIndex.Contains(j)) continue;
      TopoDS_Shape aF = amapfaces.FindKey(j);
      theCommonFaces.Append(aF);
    }
  }
  return isOneFace;
}

//=======================================================================
//function : buildEdge
//purpose  : 
//=======================================================================
void ShHealOper_CloseContour::buildEdge(const TopoDS_Edge& aE1, 
                                        const TopoDS_Edge& aE2,
                                        const TopTools_SequenceOfShape& theCommonFaces) 
{
  ShapeAnalysis_Edge asae;
  TopoDS_Vertex aV1 = asae.LastVertex(aE1);
  TopoDS_Vertex aV2 = asae.FirstVertex(aE2);
  gp_Pnt p1 = BRep_Tool::Pnt(aV1);
  gp_Pnt p2 = BRep_Tool::Pnt(aV2);
  BRepBuilderAPI_MakeVertex mkver1( p1 );
  TopoDS_Vertex newV1 = mkver1.Vertex();
  
  BRepBuilderAPI_MakeVertex mkver2( p2 );
  TopoDS_Vertex newV2 = mkver2.Vertex();
  BRep_Builder B;
  B.UpdateVertex ( newV1,Precision::Confusion());
  B.UpdateVertex ( newV2, Precision::Confusion());
  Standard_Boolean isBuild = Standard_False;
  TopoDS_Edge edge;
  B.MakeEdge ( edge );
  ShapeBuild_Edge sbe;
  //if all edges belong to one face that gap will be closed in the 2D by line
  //than 3D curve will be built by 2D curve
  if(theCommonFaces.Length()) {
    
    TopoDS_Face aF1 = TopoDS::Face(theCommonFaces.Value(1));
    Handle(Geom2d_Curve) c2d1,c2d2;
    gp_Pnt2d p2d1,p2d2;
    Standard_Real a1, b1,a2, b2;
    if (  asae.PCurve ( aE1, aF1, c2d1, a1, b1, Standard_True )  && 
        asae.PCurve ( aE2, aF1, c2d2, a2, b2, Standard_True )) {
      
      c2d1->D0 ( b1, p2d1);
      c2d2->D0 ( a2, p2d2);
      gp_Vec2d v12 ( p2d1, p2d2 );
      
      Handle(Geom2d_Line) aLine2d = new Geom2d_Line ( p2d1, gp_Dir2d ( v12 ) );
      B.UpdateEdge ( edge, aLine2d, aF1, ::Precision::Confusion() );
      B.Range ( edge, aF1, 0.0, v12.Magnitude() );
      
      isBuild = sbe.BuildCurve3d ( edge );
    }
  }
  //else gap will be closed in the 3D by line.
  if(!isBuild) {
    gp_Vec v1 ( p1, p2 );
    Handle(Geom_Line) aLine = new Geom_Line ( p1, gp_Dir ( v1 ) );
    B.UpdateEdge ( edge, aLine, ::Precision::Confusion() );
    B.Range ( edge,0.0, v1.Magnitude());
  }
  B.Add ( edge, newV1.Oriented ( TopAbs_FORWARD ) );
  B.Add ( edge, newV2.Oriented ( TopAbs_REVERSED ) );
  myContext->Replace(aV1, newV1.Oriented (aV1.Orientation()));
  myContext->Replace(aV2, newV2.Oriented (aV2.Orientation()));
  if(isBuild) {
    newV1.Orientation(aV1.Orientation());
    TopoDS_Edge newEdge = sbe.CopyReplaceVertices ( aE1,TopoDS_Vertex(), newV1);
    TopoDS_Wire aw;
    B.MakeWire(aw);
    B.Add(aw,newEdge);
    B.Add(aw,edge);
    TopoDS_Shape anE1 = myContext->Apply(aE1);
    myContext->Replace(anE1,aw);
  }
  else {
    myFreeEdges.Append(edge);
  }
}

//=======================================================================
//function : UpdateWire
//purpose  : 
//=======================================================================
void ShHealOper_CloseContour::updateWire (Handle(ShapeExtend_WireData)& sbwd) 
{
  Standard_Integer i=1;
  for ( ; i <= sbwd->NbEdges(); i++ ) {
    TopoDS_Edge E = sbwd->Edge(i);
    TopoDS_Shape S = myContext->Apply ( E );
    if ( S == E ) continue;
    for ( TopExp_Explorer exp(S,TopAbs_EDGE); exp.More(); exp.Next() )
      sbwd->Add ( exp.Current(), i++ );
    sbwd->Remove ( i-- );
  }
  for ( i =1; i <= myFreeEdges.Length(); i++ ) {
    sbwd->Add(TopoDS::Edge(myFreeEdges.Value(i)));
  }
}
