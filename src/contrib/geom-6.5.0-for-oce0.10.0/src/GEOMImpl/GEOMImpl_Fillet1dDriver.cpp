// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

#include <GEOMImpl_Fillet1dDriver.hxx>

#include <GEOMImpl_Fillet1d.hxx>
#include <GEOMImpl_IFillet1d.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_ILocalOperations.hxx>
#include <GEOMImpl_IShapesOperations.hxx>
#include <GEOM_Function.hxx>

#include <gp_Pln.hxx>
#include <gp_Dir.hxx>
#include <gp_XYZ.hxx>

#include <BRep_Tool.hxx>
#include <BRepTools.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepCheck_Analyzer.hxx>

#include <Precision.hxx>

#include <ShapeFix_Wire.hxx>
#include <StdFail_NotDone.hxx>
#include <Standard_ConstructionError.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Shape.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_Fillet1dDriver::GetID()
{
  static Standard_GUID aFillet1dDriver("FF60908B-AB2E-4b71-B098-5C256C37D961");
  return aFillet1dDriver;
}

//=======================================================================
//function : GEOMImpl_Fillet1dDriver
//purpose  :
//=======================================================================
GEOMImpl_Fillet1dDriver::GEOMImpl_Fillet1dDriver()
{
}

//=======================================================================
//function : anotherVertex
//purpose  : local function to get vertex from edge
//=======================================================================
static TopoDS_Vertex anotherVertex( const TopoDS_Edge& theE,
                                    const TopoDS_Vertex& theV )
{
  // here is an assumption that edge has different vertices
  TopoDS_Vertex aV;
  TopExp_Explorer anExp( theE, TopAbs_VERTEX );
  for ( ; anExp.More(); anExp.Next() )
  {
    if ( BRepTools::Compare(theV,TopoDS::Vertex(anExp.Current())) /*theV.IsSame(anExp.Current())*/ )
      continue;
    aV = TopoDS::Vertex( anExp.Current() );
    break;
  }
  return aV;
}

//=======================================================================
//function : takePlane
//purpose  : local function returns plane of given edges
//=======================================================================
static Standard_Boolean takePlane( const TopoDS_Edge& theE1,
                                   const TopoDS_Edge& theE2,
                                   const TopoDS_Vertex& theV,
                                   gp_Pln& thePlane )
{
  TopoDS_Vertex aV12 = anotherVertex( theE1, theV );
  TopoDS_Vertex aV22 = anotherVertex( theE2, theV );
  // check can closed wire be created by two initial edges
  if ( aV12.IsNull()  || aV22.IsNull() || aV12.IsSame( aV22 ) )
    return false;

  // create plane by 3 points
  gp_XYZ aXYZ = BRep_Tool::Pnt( theV ).XYZ();
  gp_XYZ aXYZ1 = BRep_Tool::Pnt( aV12 ).XYZ();
  gp_XYZ aXYZ2 = BRep_Tool::Pnt( aV22 ).XYZ();
  try {
    gp_Dir aDir1( aXYZ - aXYZ1 );
    gp_Dir aDir2( aXYZ2 - aXYZ );
    Standard_Real anAngle = aDir1.Angle(aDir2);
    if ( fabs(anAngle) <= gp::Resolution() ||
         fabs(anAngle - M_PI) <= gp::Resolution() )
      return false;
    thePlane = gp_Pln( gp_Pnt(aXYZ), aDir1^ aDir2);
  }
  catch (Standard_Failure) {
    return false;
  }
  return true;
}

//=======================================================================
//function : addEdgeRelation
//purpose  : local function to remember relation between initial and modified edge
//=======================================================================
static void addEdgeRelation(TopTools_DataMapOfShapeShape& theMap,
                            const TopoDS_Edge& theInitE,
                            const TopoDS_Edge& theResE)
{
  if ( theMap.IsBound( theInitE ) )
    theMap.ChangeFind( theInitE ) = theResE;
  else
    theMap.Bind( theInitE, theResE );
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Fillet1dDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IFillet1d aCI (aFunction);

  Handle(GEOM_Function) aRefShape = aCI.GetShape();
  TopoDS_Shape aShape = aRefShape->GetValue();
  if (aShape.IsNull())
    return 0;
  if (aShape.ShapeType() != TopAbs_WIRE)
    Standard_ConstructionError::Raise("Wrong arguments: polyline as wire must be given");

  TopoDS_Wire aWire = TopoDS::Wire(aShape);

  double rad = aCI.GetR();

  if ( rad < Precision::Confusion())
    return 0;

  // collect vertices for make fillet
  TopTools_ListOfShape aVertexList;
  TopTools_MapOfShape mapShape;
  int aLen = aCI.GetLength();
  if ( aLen > 0 ) {
    for (int ind = 1; ind <= aLen; ind++) {
      TopoDS_Shape aShapeVertex;
      if (GEOMImpl_ILocalOperations::GetSubShape
          (aWire, aCI.GetVertex(ind), aShapeVertex))
        if (mapShape.Add(aShapeVertex))
          aVertexList.Append( aShapeVertex );
    }
  } else { // get all vertices from wire
    TopExp_Explorer anExp( aWire, TopAbs_VERTEX );
    for ( ; anExp.More(); anExp.Next() ) {
      if (mapShape.Add(anExp.Current()))
        aVertexList.Append( anExp.Current() );
    }
  }
  if (aVertexList.IsEmpty())
    Standard_ConstructionError::Raise("Invalid input no vertices to make fillet");

  //INFO: this algorithm implemented in assumption that user can select both
  //  vertices of some edges to make fillet. In this case we should remember
  //  already modified initial edges to take care in next fillet step
  TopTools_DataMapOfShapeShape anEdgeToEdgeMap;

  //iterates on vertices, and make fillet on each couple of edges
  //collect result fillet edges in list
  TopTools_ListOfShape aListOfNewEdge;
  // remember relation between initial and modified map
  TopTools_IndexedDataMapOfShapeListOfShape aMapVToEdges;
  TopExp::MapShapesAndAncestors( aWire, TopAbs_VERTEX, TopAbs_EDGE, aMapVToEdges );
  TopTools_ListIteratorOfListOfShape anIt( aVertexList );
  for ( ; anIt.More(); anIt.Next() ) {
    TopoDS_Vertex aV = TopoDS::Vertex( anIt.Value() );
    if ( aV.IsNull() || !aMapVToEdges.Contains( aV ) )
      continue;
    const TopTools_ListOfShape& aVertexEdges = aMapVToEdges.FindFromKey( aV );
    if ( aVertexEdges.Extent() != 2 )
      continue; // no input data to make fillet
    TopoDS_Edge anEdge1 = TopoDS::Edge( aVertexEdges.First() );
    TopoDS_Edge anEdge2 = TopoDS::Edge( aVertexEdges.Last() );
    // check if initial edges already modified in previous fillet operation
    if ( anEdgeToEdgeMap.IsBound( anEdge1 ) ) anEdge1 = TopoDS::Edge(anEdgeToEdgeMap.Find( anEdge1 ));
    if ( anEdgeToEdgeMap.IsBound( anEdge2 ) ) anEdge2 = TopoDS::Edge(anEdgeToEdgeMap.Find( anEdge2 ));
    if ( anEdge1.IsNull() || anEdge2.IsNull() || anEdge1.IsSame( anEdge2 ) )
      continue; //no input data to make fillet

    // create plane on 2 edges
    gp_Pln aPlane;
    if ( !takePlane(anEdge1, anEdge2, aV, aPlane) )
      continue; // seems edges does not belong to same plane or parallel (fillet can not be build)

    GEOMImpl_Fillet1d aFilletAlgo(anEdge1, anEdge2, aPlane);
    if ( !aFilletAlgo.Perform(rad) )
      continue; // can not create fillet with given radius

    // take fillet result in given vertex
    TopoDS_Edge aModifE1, aModifE2;
    TopoDS_Edge aNewE = aFilletAlgo.Result(BRep_Tool::Pnt(aV), aModifE1, aModifE2);
    if (aNewE.IsNull())
      continue; // no result found

    // add  new created edges and take modified edges
    aListOfNewEdge.Append( aNewE );

    // check if face edges modified,
    // if yes, than map to original edges (from vertex-edges list), because edges can be modified before
    if (aModifE1.IsNull() || !anEdge1.IsSame( aModifE1 ))
      addEdgeRelation( anEdgeToEdgeMap, TopoDS::Edge(aVertexEdges.First()), aModifE1 );
    if (aModifE2.IsNull() || !anEdge2.IsSame( aModifE2 ))
      addEdgeRelation( anEdgeToEdgeMap, TopoDS::Edge(aVertexEdges.Last()), aModifE2 );
  }

  if ( anEdgeToEdgeMap.IsEmpty() && aListOfNewEdge.IsEmpty() ) {
    StdFail_NotDone::Raise("1D Fillet can't be computed on the given shape with the given radius");
    return 0;
  }

  // create new wire instead of original
  for ( TopExp_Explorer anExp( aWire, TopAbs_EDGE ); anExp.More(); anExp.Next() ) {
    TopoDS_Shape anEdge = anExp.Current();
    if ( !anEdgeToEdgeMap.IsBound( anEdge ) )
      aListOfNewEdge.Append( anEdge );
    else if (!anEdgeToEdgeMap.Find( anEdge ).IsNull())
      aListOfNewEdge.Append( anEdgeToEdgeMap.Find( anEdge ) );
  }

  GEOMImpl_IShapesOperations::SortShapes( aListOfNewEdge );

  BRepBuilderAPI_MakeWire aWireTool;
  aWireTool.Add( aListOfNewEdge );
  aWireTool.Build();
  if (!aWireTool.IsDone())
    return 0;

  aWire = aWireTool.Wire();
  aFunction->SetValue(aWire);
  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_Fillet1dDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_Fillet1dDriver_Type_()
{
  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_Fillet1dDriver",
                                                         sizeof(GEOMImpl_Fillet1dDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_Fillet1dDriver) Handle(GEOMImpl_Fillet1dDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_Fillet1dDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_Fillet1dDriver))) {
       _anOtherObject = Handle(GEOMImpl_Fillet1dDriver)((Handle(GEOMImpl_Fillet1dDriver)&)AnObject);
     }
  }

  return _anOtherObject;
}
