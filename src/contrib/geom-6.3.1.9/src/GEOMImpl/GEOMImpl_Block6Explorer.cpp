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

#include <GEOMImpl_Block6Explorer.hxx>

#include <ShHealOper_ShapeProcess.hxx>

#include <BRep_Tool.hxx>
#include <BRep_TFace.hxx>
#include <BRep_Builder.hxx>
#include <BRepLib.hxx>
#include <BRepLib_FindSurface.hxx>
#include <BRepTools.hxx>
#include <BRepTools_WireExplorer.hxx>
#include <BRepOffsetAPI_ThruSections.hxx>
#include <BRepOffsetAPI_MakeFilling.hxx>
#include <BRepCheck_Analyzer.hxx>
#include <BRepBuilderAPI_Copy.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRepBuilderAPI_Transform.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Solid.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>

#include <Geom_Curve.hxx>
#include <Geom_TrimmedCurve.hxx>
#include <GeomFill_Generator.hxx>

#include <gce_MakePln.hxx>

#include <Precision.hxx>
#include <gp_Pnt.hxx>
#include <gp_Pln.hxx>
#include <TColgp_Array1OfPnt.hxx>

#include <StdFail_NotDone.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_NoSuchObject.hxx>

#define NBFACES 6
#define NBEDGES 12
#define NBVERTS 8

static Standard_Integer mod4 (Standard_Integer nb)
{
  if (nb <= 0) return nb + 4;
  if (nb > 4)  return nb - 4;
  return nb;
}

static Standard_Integer edge_id (const Standard_Integer theFaceID,
                                 const Standard_Integer theEdgeNB)
{
  static Standard_Integer edge_ids[NBFACES][4] = {
    {  1,  2,  3,  4 },   // face 1
    {  5,  6,  7,  8 },   // face 2
    {  9,  5, 10,  1 },   // face 3
    { 12,  7, 11,  3 },   // face 4
    {  4, 12,  8,  9 },   // face 5
    {  2, 11,  6, 10 } }; // face 6

  return edge_ids[theFaceID - 1][theEdgeNB - 1];
}

static Standard_Integer side_edge_id (const Standard_Integer theEdgeNB)
{
  static Standard_Integer side_edge_ids[4] = {9, 10, 11, 12};

  return side_edge_ids[theEdgeNB - 1];
}

static Standard_Integer vertex_id (const Standard_Integer theFaceID,
                                   const Standard_Integer theVertexNB)
{
  static Standard_Integer vertex_ids[NBFACES][4] = {
    { 1, 2, 3, 4 },   // face 1
    { 5, 6, 7, 8 },   // face 2
    { 1, 5, 6, 2 },   // face 3
    { 4, 8, 7, 3 },   // face 4
    { 1, 4, 8, 5 },   // face 5
    { 2, 3, 7, 6 } }; // face 6

  return vertex_ids[theFaceID - 1][theVertexNB - 1];
}

static Standard_Integer vertex_id_edge (const Standard_Integer theEdgeID, // [1,12]
                                        const Standard_Integer theVertexNB) // [1,2]
{
  static Standard_Integer vertex_ids_edge[NBEDGES][2] = {
    {1, 2},   // edge 1
    {2, 3},   // edge 2
    {3, 4},   // edge 3
    {4, 1},   // edge 4
    {5, 6},   // edge 5
    {6, 7},   // edge 6
    {7, 8},   // edge 7
    {8, 5},   // edge 8
    {1, 5},   // edge 9
    {2, 6},   // edge 10
    {3, 7},   // edge 11
    {4, 8} }; // edge 12

  return vertex_ids_edge[theEdgeID - 1][theVertexNB - 1];
}

static Standard_Integer face_id_edges (const Standard_Integer theEdge1ID, // [1,12]
                                       const Standard_Integer theEdge2ID) // [1,12]
{
  static Standard_Integer face_ids_edges[NBEDGES][NBEDGES] = {
    // 1  2  3  4  5  6  7  8  9  10 11 12
    {  0, 1, 1, 1, 3, 0, 0, 0, 3, 3, 0, 0  },   // edge 1
    {  1, 0, 1, 1, 0, 6, 0, 0, 0, 6, 6, 0  },   // edge 2
    {  1, 1, 0, 1, 0, 0, 4, 0, 0, 0, 4, 4  },   // edge 3
    {  1, 1, 1, 0, 0, 0, 0, 5, 5, 0, 0, 5  },   // edge 4
    {  3, 0, 0, 0, 0, 2, 2, 2, 3, 3, 0, 0  },   // edge 5
    {  0, 6, 0, 0, 2, 0, 2, 2, 0, 6, 6, 0  },   // edge 6
    {  0, 0, 4, 0, 2, 2, 0, 2, 0, 0, 4, 4  },   // edge 7
    {  0, 0, 0, 5, 2, 2, 2, 0, 5, 0, 0, 5  },   // edge 8
    {  3, 0, 0, 5, 3, 0, 0, 5, 0, 3, 0, 5  },   // edge 9
    {  3, 6, 0, 0, 3, 6, 0, 0, 3, 0, 6, 0  },   // edge 10
    {  0, 6, 4, 0, 0, 6, 4, 0, 0, 6, 0, 4  },   // edge 11
    {  0, 0, 4, 5, 0, 0, 4, 5, 5, 0, 4, 0  } }; // edge 12

  return face_ids_edges[theEdge1ID - 1][theEdge2ID - 1];
}

static Standard_Integer edge_id_vertices (const Standard_Integer theVertex1ID, // [1,8]
                                          const Standard_Integer theVertex2ID) // [1,8]
{
  static Standard_Integer edge_ids_vertices[NBVERTS][NBVERTS] = {
    // 1   2   3   4   5   6   7   8
    {  0,  1,  0,  4,  9,  0,  0,  0},   // vertex 1
    {  1,  0,  2,  0,  0, 10,  0,  0},   // vertex 2
    {  0,  2,  0,  3,  0,  0, 11,  0},   // vertex 3
    {  4,  0,  3,  0,  0,  0,  0, 12},   // vertex 4
    {  9,  0,  0,  0,  0,  5,  0,  8},   // vertex 5
    {  0, 10,  0,  0,  5,  0,  6,  0},   // vertex 6
    {  0,  0, 11,  0,  0,  6,  0,  7},   // vertex 7
    {  0,  0,  0, 12,  8,  0,  7,  0} }; // vertex 8

  return edge_ids_vertices[theVertex1ID - 1][theVertex2ID - 1];
}

static Standard_Integer edge_id_faces (const Standard_Integer theFace1ID, // [1,6]
                                       const Standard_Integer theFace2ID) // [1,6]
{
  static Standard_Integer edge_ids_faces[NBFACES][NBFACES] = {
    // 1   2   3   4   5   6
    {  0,  0,  1,  3,  4,  2  },   // face 1
    {  0,  0,  5,  7,  8,  6  },   // face 2
    {  1,  5,  0,  0,  9, 10  },   // face 3
    {  3,  7,  0,  0, 12, 11  },   // face 4
    {  4,  8,  9, 12,  0,  0  },   // face 5
    {  2,  6, 10, 11,  0,  0  } }; // face 6

  return edge_ids_faces[theFace1ID - 1][theFace2ID - 1];
}

//=======================================================================
//function : GEOMImpl_Block6Explorer
//purpose  : Constructor
//=======================================================================
GEOMImpl_Block6Explorer::GEOMImpl_Block6Explorer ()
     : myFaces(1,NBFACES), myEdges(1,NBEDGES), myVertices(1,NBVERTS)
{
}

//=======================================================================
//function : GetVertex
//purpose  :
//=======================================================================
TopoDS_Shape GEOMImpl_Block6Explorer::GetVertex (const Standard_Integer theVertexID)
{
  TopoDS_Shape aNullShape;
  if (theVertexID < 1 || theVertexID > NBVERTS) return aNullShape;
  return myVertices(theVertexID);
}

//=======================================================================
//function : GetVertexID
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::GetVertexID (const TopoDS_Shape& theVertex)
{
  for (Standard_Integer id = 1; id <= NBVERTS; id++) {
    if (theVertex.IsSame(myVertices(id))) return id;
  }
  Standard_NoSuchObject::Raise("The Vertex does not belong to the Block");
  return 0;
}

//=======================================================================
//function : GetVertexID
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::GetVertexID (const Standard_Integer theFaceID,
                                                       const Standard_Integer theVertexNB)
{
  return vertex_id(theFaceID, theVertexNB);
}

//=======================================================================
//function : GetVertexOnEdgeID
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::GetVertexOnEdgeID
                                     (const Standard_Integer theEdgeID,
                                      const Standard_Integer theVertexNB)
{
  return vertex_id_edge(theEdgeID, theVertexNB);
}

//=======================================================================
//function : GetEdge
//purpose  :
//=======================================================================
TopoDS_Shape GEOMImpl_Block6Explorer::GetEdge (const Standard_Integer theEdgeID,
                                               const Standard_Boolean doMake)
{
  TopoDS_Shape aNullShape;
  if (theEdgeID < 1 || theEdgeID > NBEDGES) return aNullShape;
  if (myEdges(theEdgeID).IsNull() && doMake) {
    // Create the required edge as a linear segment between
    // corresponding vertices and put it in the Block's edges
    BRepBuilderAPI_MakeEdge ME (TopoDS::Vertex(myVertices(vertex_id_edge(theEdgeID, 1))),
                                TopoDS::Vertex(myVertices(vertex_id_edge(theEdgeID, 2))));
    if (!ME.IsDone()) {
      Standard_ConstructionError::Raise("Edge construction failed");
    }
    myEdges(theEdgeID) = ME.Shape();
  }

  return myEdges(theEdgeID);
}

//=======================================================================
//function : GetEdgeID
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::GetEdgeID (const TopoDS_Shape& theEdge)
{
  for (Standard_Integer id = 1; id <= NBEDGES; id++) {
    if (theEdge.IsSame(myEdges(id))) return id;
  }
  Standard_NoSuchObject::Raise("The Edge does not belong to the Block");
  return 0;
}

//=======================================================================
//function : GetEdgeID
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::GetEdgeID (const Standard_Integer theFaceID,
                                                     const Standard_Integer theEdgeNB)
{
  return edge_id(theFaceID, theEdgeNB);
}

//=======================================================================
//function : FindEdgeID
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::FindEdgeID (const Standard_Integer theVertex1ID,
                                                      const Standard_Integer theVertex2ID)
{
  return edge_id_vertices(theVertex1ID, theVertex2ID);
}

//=======================================================================
//function : FindCommonEdgeID
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::FindCommonEdgeID
                                      (const Standard_Integer theFace1ID,
                                       const Standard_Integer theFace2ID)
{
  return edge_id_faces(theFace1ID, theFace2ID);
}

//=======================================================================
//function : GetFace
//purpose  :
//=======================================================================
TopoDS_Shape GEOMImpl_Block6Explorer::GetFace (const Standard_Integer theFaceID,
                                               const Standard_Boolean doMake)
{
  TopoDS_Shape aNullShape;
  if (theFaceID < 1 || theFaceID > NBFACES) return aNullShape;

  if (myFaces(theFaceID).IsNull() && doMake) {

    // Create the required face between
    // corresponding edges and put it in the Block's faces

    TopoDS_Shape E1 = GetEdge(edge_id(theFaceID, 1), doMake);
    TopoDS_Shape E2 = GetEdge(edge_id(theFaceID, 2), doMake);
    TopoDS_Shape E3 = GetEdge(edge_id(theFaceID, 3), doMake);
    TopoDS_Shape E4 = GetEdge(edge_id(theFaceID, 4), doMake);

    BRepBuilderAPI_MakeWire MW (TopoDS::Edge(E1),
                                TopoDS::Edge(E2),
                                TopoDS::Edge(E3),
                                TopoDS::Edge(E4));
    if (!MW.IsDone()) {
      Standard_ConstructionError::Raise("Wire construction failed");
    }
    TopoDS_Shape aFace;
    MakeFace(MW, Standard_False, aFace);
    if (aFace.IsNull()) {
      Standard_ConstructionError::Raise("Face construction failed");
    }
    myFaces(theFaceID) = aFace;
  }

  return myFaces(theFaceID);
}

//=======================================================================
//function : GetFaceID
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::GetFaceID (const TopoDS_Shape& theFace)
{
  for (Standard_Integer id = 1; id <= NBFACES; id++) {
    if (theFace.IsSame(myFaces(id))) return id;
  }
  Standard_NoSuchObject::Raise("The Face does not belong to the Block");
  return 0;
}

//=======================================================================
//function : FindFaceID
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::FindFaceID (const Standard_Integer theEdge1ID,
                                                      const Standard_Integer theEdge2ID)
{
  return face_id_edges(theEdge1ID, theEdge2ID);
}

//=======================================================================
//function : GetOppositeFaceID
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::GetOppositeFaceID (const Standard_Integer theFaceID)
{
  Standard_Integer opp_face_id[NBFACES + 1] = {
    0,
    2,  // to 1 face
    1,  // to 2 face
    4,  // to 3 face
    3,  // to 4 face
    6,  // to 5 face
    5}; // to 6 face

  return opp_face_id[theFaceID];
}

//=======================================================================
//function : IsSimilarFaces
//purpose  :
//=======================================================================
Standard_Boolean GEOMImpl_Block6Explorer::IsSimilarFaces (const Standard_Integer theFace1ID,
                                                          const Standard_Integer theFace2ID,
                                                          const gp_Trsf          theTransformation)
{
  Standard_Integer common_edge_id = FindCommonEdgeID(theFace1ID, theFace2ID);

  if (common_edge_id == 0) { // opposite faces
    for (Standard_Integer id = 1; id <= 4; id++) {
      TopoDS_Shape E1 = GetEdge(edge_id(theFace1ID, id));
      TopoDS_Shape E2 = GetEdge(edge_id(theFace2ID, id));

      BRepBuilderAPI_Transform aTrsf (E1, theTransformation, Standard_False);
      if (!IsSimilarEdges(aTrsf.Shape(), E2))
        return Standard_False;
    }
  } else { // the faces have common edge
    TopTools_Array1OfShape aVerts1 (1,4);
    TopTools_Array1OfShape aVerts2 (1,4);

    Standard_Integer common_vertex1 = GetVertexOnEdgeID(common_edge_id, 1);
    Standard_Integer common_vertex2 = GetVertexOnEdgeID(common_edge_id, 2);
    aVerts1(1) = myVertices(common_vertex1);
    aVerts1(2) = myVertices(common_vertex2);
    aVerts2(1) = myVertices(common_vertex1);
    aVerts2(2) = myVertices(common_vertex2);

    Standard_Integer not_common_v11 = 0, not_common_v12 = 0;
    Standard_Integer vnb, vid;
    for (vnb = 1; vnb <= 4; vnb++) {
      vid = GetVertexID(theFace1ID, vnb);
      if (vid != common_vertex1 && FindEdgeID(vid, common_vertex1) == 0) {
        not_common_v12 = vid;
      } else {
        if (vid != common_vertex2 && FindEdgeID(vid, common_vertex2) == 0) {
          not_common_v11 = vid;
        }
      }
    }

    Standard_Integer not_common_v21 = 0, not_common_v22 = 0;
    for (vnb = 1; vnb <= 4; vnb++) {
      vid = GetVertexID(theFace2ID, vnb);
      if (vid != common_vertex1 && FindEdgeID(vid, common_vertex1) == 0) {
        not_common_v22 = vid;
      } else {
        if (vid != common_vertex2 && FindEdgeID(vid, common_vertex2) == 0) {
          not_common_v21 = vid;
        }
      }
    }
    aVerts1(3) = myVertices(not_common_v11);
    aVerts1(4) = myVertices(not_common_v12);
    aVerts2(3) = myVertices(not_common_v21);
    aVerts2(4) = myVertices(not_common_v22);

    for (Standard_Integer id = 1; id <= 4; id++) {
      BRepBuilderAPI_Transform aTrsf (aVerts1(id), theTransformation, Standard_False);
      TopoDS_Vertex V1 = TopoDS::Vertex(aTrsf.Shape());
      TopoDS_Vertex V2 = TopoDS::Vertex(aVerts2(id));
      if (!BRepTools::Compare(V1, V2)) {
        return Standard_False;
      }
    }
  }

  return Standard_True;
}

//============ Initialization methods ===================================

//=======================================================================
//function : InitByBlock
//purpose  :
//=======================================================================
void GEOMImpl_Block6Explorer::InitByBlock (const TopoDS_Shape& theBlock)
{
  // 1. Find any one face of the block
  TopExp_Explorer faces (theBlock, TopAbs_FACE);
  if (!faces.More()) {
    Standard_ConstructionError::Raise("The block has no faces");
  }
  TopoDS_Shape aFirstFace = faces.Current();

  // 2. Store all elements of the block relatively aFirstFace
  InitByBlockAndFace(theBlock, aFirstFace);
}

//=======================================================================
//function : InitByBlockAndFace
//purpose  :
//=======================================================================
void GEOMImpl_Block6Explorer::InitByBlockAndFace (const TopoDS_Shape& theBlock,
                                                  const TopoDS_Shape& theFace)
{
  myFaces(1) = theFace;

  // 2. Get wire of the first face
  TopExp_Explorer wires (myFaces(1), TopAbs_WIRE);
  if (!wires.More()) {
    Standard_ConstructionError::Raise("A face of the block has no wires");
  }
  TopoDS_Shape aWire = wires.Current();
  wires.Next();
  if (wires.More()) {
    Standard_ConstructionError::Raise("A face of the block has more than one wires");
  }

  // 3. Explore wire to init edges and vertices of the first face
  BRepTools_WireExplorer aWE (TopoDS::Wire(aWire), TopoDS::Face(myFaces(1)));
  Standard_Integer nb = 1;
  for (; aWE.More(); aWE.Next(), nb++) {
    if (nb > 4) {
      Standard_ConstructionError::Raise("A face of the block has more than four edges");
    }
    myEdges(edge_id(1, nb)) = aWE.Current();
    myVertices(vertex_id(1, nb)) = aWE.CurrentVertex();
  }
  if (nb < 5) {
    Standard_ConstructionError::Raise("A face of the block has less than four edges");
  }

  // 2. Store all other elements of the block
  InitByBlockAndVertices (theBlock,
                          myVertices(vertex_id(1,1)),
                          myVertices(vertex_id(1,2)),
                          myVertices(vertex_id(1,3)));
}

//=======================================================================
//function : InitByBlockAndEdges
//purpose  :
//=======================================================================
void GEOMImpl_Block6Explorer::InitByBlockAndEdges (const TopoDS_Shape& theBlock,
                                                   const TopoDS_Shape& theEdge1,
                                                   const TopoDS_Shape& theEdge3)
{
  // 1. Store vertices and edges of the first face

  // 1.1. Store two given edges
  myEdges(edge_id(1, 1)) = theEdge1;
  myEdges(edge_id(1, 3)) = theEdge3;

  // 1.2. Find and store the first face
  TopTools_IndexedDataMapOfShapeListOfShape MEF;
  MapShapesAndAncestors(theBlock, TopAbs_EDGE, TopAbs_FACE, MEF);
  if (MEF.Extent() != NBEDGES) {
    Standard_TypeMismatch::Raise("Block has wrong number of edges");
  }
  const TopTools_ListOfShape& aFacesOfE1 = MEF.FindFromKey(theEdge1);
  const TopTools_ListOfShape& aFacesOfE3 = MEF.FindFromKey(theEdge3);

  Standard_Boolean isFound = Standard_False;
  TopTools_ListIteratorOfListOfShape anIterF1 (aFacesOfE1);
  for (; anIterF1.More() && !isFound; anIterF1.Next()) {

    TopTools_ListIteratorOfListOfShape anIterF3 (aFacesOfE3);
    for (; anIterF3.More() && !isFound; anIterF3.Next()) {

      if (anIterF1.Value().IsSame(anIterF3.Value())) {
        isFound = Standard_True;

        // Store the face, defined by two opposite edges
        myFaces(1) = anIterF1.Value();
      }
    }
  }
  if (!isFound) {
    Standard_ConstructionError::Raise
      ("Edges 1 and 2 do not belong to one face of the block");
  }

  // 1.3. Make vertices of the first edge the first and the
  //      second vertices of the first face. Order is free.
  TopoDS_Edge E = TopoDS::Edge(theEdge1);
  TopoDS_Vertex V1, V2;
  TopExp::Vertices(E, V1, V2, Standard_True);
  myVertices(vertex_id(1,1)) = V1;
  myVertices(vertex_id(1,2)) = V2;

  // Init maps vertex->list_of_edges for the face
  TopTools_IndexedDataMapOfShapeListOfShape M1;
  MapShapesAndAncestors(myFaces(1), TopAbs_VERTEX, TopAbs_EDGE, M1);
  if (M1.Extent() != 4) {
    Standard_TypeMismatch::Raise("The first face of block has wrong number of vertices");
  }

  // 1.4. Find and store others elements of the first face

  // edges of the first vertex
  TopoDS_Shape E1_f = M1.FindFromKey(V1).First();
  TopoDS_Shape E1_l = M1.FindFromKey(V1).Last();

  if (E1_f.IsSame(theEdge1)) {
    myEdges(edge_id(1, 4)) = E1_l;
  } else {
    myEdges(edge_id(1, 4)) = E1_f;
  }

  // fourth vertex
  TopoDS_Edge E4 = TopoDS::Edge(myEdges(edge_id(1, 4)));
  TopoDS_Vertex V41, V42;
  TopExp::Vertices(E4, V41, V42, Standard_True);
  if (V41.IsSame(V1)) {
    myVertices(vertex_id(1,4)) = V42;
  } else {
    myVertices(vertex_id(1,4)) = V41;
  }

  // edges of the second vertex
  TopoDS_Shape E2_f = M1.FindFromKey(V2).First();
  TopoDS_Shape E2_l = M1.FindFromKey(V2).Last();

  if (E2_f.IsSame(theEdge1)) {
    myEdges(edge_id(1, 2)) = E2_l;
  } else {
    myEdges(edge_id(1, 2)) = E2_f;
  }

  // fird vertex
  TopoDS_Edge E2 = TopoDS::Edge(myEdges(edge_id(1, 2)));
  TopoDS_Vertex V21, V22;
  TopExp::Vertices(E2, V21, V22, Standard_True);
  if (V21.IsSame(V2)) {
    myVertices(vertex_id(1,3)) = V22;
  } else {
    myVertices(vertex_id(1,3)) = V21;
  }

  // 2. Store all other elements of the block
  InitByBlockAndVertices (theBlock,
                          myVertices(vertex_id(1,1)),
                          myVertices(vertex_id(1,2)),
                          myVertices(vertex_id(1,3)));
}

//=======================================================================
//function : InitByBlockAndVertices
//purpose  :
//=======================================================================
void GEOMImpl_Block6Explorer::InitByBlockAndVertices (const TopoDS_Shape& theBlock,
                                                      const TopoDS_Shape& theVertex1,
                                                      const TopoDS_Shape& theVertex2,
                                                      const TopoDS_Shape& theVertex3)
{
  // Here we suppose, that vertices are ordered, i.e. exists edge between
  // theVertex1 and theVertex2 and edge between theVertex2 and theVertex3

  // 1. Store vertices and edges of the first face.
  //    If the first face is initialized, it means, that this
  //    method is called from another initialization method, and all
  //    vertices and edges of the first face are also initialized
  if (myFaces(1).IsNull()) {

    // 1.1. Store first three vertices
    myVertices(vertex_id(1, 1)) = theVertex1;
    myVertices(vertex_id(1, 2)) = theVertex2;
    myVertices(vertex_id(1, 3)) = theVertex3;

    // 1.2. Find and store the first face
    TopTools_IndexedDataMapOfShapeListOfShape MVF;
    MapShapesAndAncestors(theBlock, TopAbs_VERTEX, TopAbs_FACE, MVF);
    if (MVF.Extent() != NBVERTS) {
      Standard_TypeMismatch::Raise("Block has wrong number of vertices");
    }
    const TopTools_ListOfShape& aFacesOfV1 = MVF.FindFromKey(theVertex1);
    const TopTools_ListOfShape& aFacesOfV3 = MVF.FindFromKey(theVertex3);

    Standard_Boolean isFound = Standard_False;
    TopTools_ListIteratorOfListOfShape anIterF1 (aFacesOfV1);
    for (; anIterF1.More() && !isFound; anIterF1.Next()) {

      TopTools_ListIteratorOfListOfShape anIterF3 (aFacesOfV3);
      for (; anIterF3.More() && !isFound; anIterF3.Next()) {

        if (anIterF1.Value().IsSame(anIterF3.Value())) {
          isFound = Standard_True;

          // Store the face, defined by two opposite vertices
          myFaces(1) = anIterF1.Value();
        }
      }
    }
    if (!isFound) {
      Standard_ConstructionError::Raise
        ("Vertices 1 and 3 do not belong to one face of the block");
    }

    // Init maps vertex->list_of_edges for the face
    TopTools_IndexedDataMapOfShapeListOfShape M1;
    MapShapesAndAncestors(myFaces(1), TopAbs_VERTEX, TopAbs_EDGE, M1);
    if (M1.Extent() != 4) {
      Standard_TypeMismatch::Raise("The first face of block has wrong number of vertices");
    }

    // 1.3. Find and store edges and last vertex of the first face
    const TopTools_ListOfShape& anEdgesOfV1 = M1.FindFromKey(theVertex1);
    const TopTools_ListOfShape& anEdgesOfV2 = M1.FindFromKey(theVertex2);
    const TopTools_ListOfShape& anEdgesOfV3 = M1.FindFromKey(theVertex3);

    TopTools_ListIteratorOfListOfShape anIterE2 (anEdgesOfV2);
    for (; anIterE2.More(); anIterE2.Next()) {

      TopTools_ListIteratorOfListOfShape anIterE1 (anEdgesOfV1);
      for (; anIterE1.More(); anIterE1.Next()) {

        if (anIterE1.Value().IsSame(anIterE2.Value())) {
          // Store the first edge, defined by two vertices
          myEdges(edge_id(1,1)) = anIterE1.Value();

        } else {
          // Store the last edge
          myEdges(edge_id(1,4)) = anIterE1.Value();

          // Find and store the last vertex
          TopoDS_Edge E = TopoDS::Edge(myEdges(4));
          TopoDS_Vertex V1, V2;
          TopExp::Vertices(E, V1, V2, Standard_True);

          if (V1.IsSame(theVertex1)) {
            myVertices(vertex_id(1,4)) = V2;
          } else {
            myVertices(vertex_id(1,4)) = V1;
          }
        }
      }

      TopTools_ListIteratorOfListOfShape anIterE3 (anEdgesOfV3);
      for (; anIterE3.More(); anIterE3.Next()) {

        if (anIterE3.Value().IsSame(anIterE2.Value())) {
          // Store the second edge, defined by two vertices
          myEdges(edge_id(1,2)) = anIterE3.Value();

        } else {
          // Store the fird edge
          myEdges(edge_id(1,3)) = anIterE3.Value();
        }
      }
    }
  }

  // Init map vertex->list_of_edges for the block
  TopTools_IndexedDataMapOfShapeListOfShape MB;
  MapShapesAndAncestors(theBlock, TopAbs_VERTEX, TopAbs_EDGE, MB);
  if (MB.Extent() != NBVERTS) {
    Standard_TypeMismatch::Raise("Block has wrong number of vertices");
  }

  // 2. Store edges, linking the first face with the second one
  //    and vertices of the second face
  TopTools_IndexedMapOfShape aFaceEdges;
  TopExp::MapShapes(myFaces(1), TopAbs_EDGE, aFaceEdges);

  Standard_Integer i = 1;
  for (; i <= 4; i++) {
    // Get i-th vertex of the face 1
    TopoDS_Shape Vi = myVertices(vertex_id(1, i));
    if (!MB.Contains(Vi)) {
      Standard_ConstructionError::Raise("Face does not belong to the block");
    }

    // Get list of block's edges, sharing this Vertex
    const TopTools_ListOfShape& anEdgesOfVi = MB.FindFromKey(Vi);
    TopTools_ListIteratorOfListOfShape anEdgesIter (anEdgesOfVi);

    // Get Edge (from the List), not belonging to the face 1
    Standard_Boolean isFound = Standard_False;
    for (; anEdgesIter.More() && !isFound; anEdgesIter.Next()) {
      if (!aFaceEdges.Contains(anEdgesIter.Value())) {
        isFound = Standard_True;

        // Store the linking edge
        TopoDS_Shape aLinkEdge = anEdgesIter.Value();
        myEdges(side_edge_id(i)) = aLinkEdge;

        // Get another vertex of the linking edge
        TopoDS_Edge E = TopoDS::Edge(aLinkEdge);
        TopoDS_Vertex V1, V2;
        TopExp::Vertices(E, V1, V2, Standard_True);

        // Store the i-th vertex of the second (opposite to the first) face
        if (V1.IsSame(Vi)) {
          myVertices(vertex_id(2, i)) = V2;
        } else {
          myVertices(vertex_id(2, i)) = V1;
        }
      }
    }
  }

  // 3. Store edges of the second (opposite to the first) face
  for (i = 1; i <= 4; i++) {
    // Get i-th and (i+1)-th vertices of the face 2
    TopoDS_Shape Vi = myVertices(vertex_id(2, i));
    TopoDS_Shape Vj = myVertices(vertex_id(2, mod4(i + 1)));

    // Get list of block's edges, sharing Vi
    const TopTools_ListOfShape& anEdgesOfVi = MB.FindFromKey(Vi);
    // Get list of block's edges, sharing Vj
    const TopTools_ListOfShape& anEdgesOfVj = MB.FindFromKey(Vj);

    // Get Edge (from the List), linking this vertex with the next one
    Standard_Boolean isFound = Standard_False;
    TopTools_ListIteratorOfListOfShape anEdgesIteri (anEdgesOfVi);
    for (; anEdgesIteri.More() && !isFound; anEdgesIteri.Next()) {

      TopTools_ListIteratorOfListOfShape anEdgesIterj (anEdgesOfVj);
      for (; anEdgesIterj.More() && !isFound; anEdgesIterj.Next()) {

        if (anEdgesIteri.Value().IsSame(anEdgesIterj.Value())) {
          isFound = Standard_True;

          // Store the linking edge
          myEdges(edge_id(2, i)) = anEdgesIteri.Value();
        }
      }
    }
  }

  // 4. Store faces of the block
  TopTools_IndexedDataMapOfShapeListOfShape MBE;
  MapShapesAndAncestors(theBlock, TopAbs_EDGE, TopAbs_FACE, MBE);
  if (MBE.Extent() != NBEDGES) {
    Standard_TypeMismatch::Raise("Block has wrong number of edges");
  }

  for (i = 2; i <= NBFACES; i++) {
    TopoDS_Shape Ei1 = myEdges(edge_id(i, 1));
    TopoDS_Shape Ei2 = myEdges(edge_id(i, 2));
    const TopTools_ListOfShape& aFacesOfEi1 = MBE.FindFromKey(Ei1);
    const TopTools_ListOfShape& aFacesOfEi2 = MBE.FindFromKey(Ei2);

    Standard_Boolean isFound = Standard_False;
    TopTools_ListIteratorOfListOfShape anIterEi1 (aFacesOfEi1);
    for (; anIterEi1.More() && !isFound; anIterEi1.Next()) {

      TopTools_ListIteratorOfListOfShape anIterEi2 (aFacesOfEi2);
      for (; anIterEi2.More() && !isFound; anIterEi2.Next()) {

        if (anIterEi1.Value().IsSame(anIterEi2.Value())) {
          isFound = Standard_True;

          // Store the face, defined by two edges
          myFaces(i) = anIterEi1.Value();
        }
      }
    }
  }
}

//=======================================================================
//function : InitByTwoFaces
//purpose  :
//=======================================================================
void GEOMImpl_Block6Explorer::InitByTwoFaces (const TopoDS_Shape& theFace1,
                                              const TopoDS_Shape& theFace2)
{
  if (theFace1.IsSame(theFace2)) {
    Standard_ConstructionError::Raise("The faces must be different");
  }

  // Add two given faces in the structure
  myFaces(1) = theFace1;
  myFaces(2) = theFace2;

  // Step 1. Order vertices (and edges)

  // 1.1. Ordered vertices and edges of the first face we put in <myVertices>

  // Get wire of the first face
  TopExp_Explorer wires1 (myFaces(1), TopAbs_WIRE);
  if (!wires1.More()) {
    Standard_ConstructionError::Raise("A face for the block has no wires");
  }
  TopoDS_Shape aWire1 = wires1.Current();
  wires1.Next();
  if (wires1.More()) {
    Standard_ConstructionError::Raise("A face for the block has more than one wire");
  }

  BRepTools_WireExplorer aWE1 (TopoDS::Wire(aWire1), TopoDS::Face(myFaces(1)));
  Standard_Integer nb;
  for (nb = 1; aWE1.More(); aWE1.Next(), nb++) {
    if (nb > 4) {
      Standard_ConstructionError::Raise("A face for the block has more than four edges");
    }
    myEdges(edge_id(1, nb)) = aWE1.Current();
    myVertices(vertex_id(1, nb)) = aWE1.CurrentVertex();
  }
  if (nb < 5) {
    Standard_ConstructionError::Raise("A face for the block has less than four edges");
  }

  // 1.2. Ordered vertices and edges of the second face we temporarily store
  // in arrays, to find for them rigth location in <myVertices> on the Step 2.

  // declare arrays
  TopTools_Array1OfShape aVertis2(1,4); // ordered vertices of the second face
  TopTools_Array1OfShape anEdges2(1,4); // anEdges2(i) links aVertis2(i) and aVertis2(i+1)

  // Get wire of the second face
  TopExp_Explorer wires2 (myFaces(2), TopAbs_WIRE);
  if (!wires2.More()) {
    Standard_ConstructionError::Raise("A face for the block has no wires");
  }
  TopoDS_Shape aWire2 = wires2.Current();
  wires2.Next();
  if (wires2.More()) {
    Standard_ConstructionError::Raise("A face for the block has more than one wire");
  }

  BRepTools_WireExplorer aWE2 (TopoDS::Wire(aWire2), TopoDS::Face(myFaces(2)));
  for (nb = 1; aWE2.More(); aWE2.Next(), nb++) {
    if (nb > 4) {
      Standard_ConstructionError::Raise("A face for the block has more than four edges");
    }
    anEdges2(nb) = aWE2.Current();
    aVertis2(nb) = aWE2.CurrentVertex();
  }
  if (nb < 5) {
    Standard_ConstructionError::Raise("A face for the block has less than four edges");
  }

  // Step 2. Find right place in <myVertices> for the <aVertis2>,
  //         so as to minimize common length of linking edges
  //         between face 1 and face 2.
  //         Each linking edge (of four) will link vertices of the
  //         faces 1 and 2 with equal local numbers.
  // The right place is defined by:
  //  - vertex <aVertis2(i_min)>, which will become the first vertex
  //         of the second face <myVertices(vertex_id(2,1))>
  //  - orientation of <aVertis2> relatively their future location
  //         in <myVertices> (s_min = 1 if direct, s_min = -1 if reversed)
  Standard_Integer i_min = 0, s_min = 0;

  TColgp_Array1OfPnt aPnts1 (1,4); // points of the first face
  aPnts1(1) = BRep_Tool::Pnt(TopoDS::Vertex(myVertices(vertex_id(1, 1))));
  aPnts1(2) = BRep_Tool::Pnt(TopoDS::Vertex(myVertices(vertex_id(1, 2))));
  aPnts1(3) = BRep_Tool::Pnt(TopoDS::Vertex(myVertices(vertex_id(1, 3))));
  aPnts1(4) = BRep_Tool::Pnt(TopoDS::Vertex(myVertices(vertex_id(1, 4))));

  TColgp_Array1OfPnt aPnts2 (1,4); // points of the second face
  aPnts2(1) = BRep_Tool::Pnt(TopoDS::Vertex(aVertis2(1)));
  aPnts2(2) = BRep_Tool::Pnt(TopoDS::Vertex(aVertis2(2)));
  aPnts2(3) = BRep_Tool::Pnt(TopoDS::Vertex(aVertis2(3)));
  aPnts2(4) = BRep_Tool::Pnt(TopoDS::Vertex(aVertis2(4)));

  Standard_Real Dist_min = RealLast();
  // try all possible locations to find the best (with minimum sum distance)
  Standard_Integer i = 1;
  for (; i <= 4; i++) {
    // try direct orientation
    Standard_Real Dist_plus = aPnts1(1).Distance(aPnts2(i)) +
                              aPnts1(2).Distance(aPnts2(mod4(i + 1))) +
                              aPnts1(3).Distance(aPnts2(mod4(i + 2))) +
                              aPnts1(4).Distance(aPnts2(mod4(i + 3)));
    if (Dist_plus < Dist_min) {
      Dist_min = Dist_plus;
      i_min = i;
      s_min = 1;
    }

    // try reversed orientation
    Standard_Real Dist_minus = aPnts1(1).Distance(aPnts2(i)) +
                               aPnts1(2).Distance(aPnts2(mod4(i - 1))) +
                               aPnts1(3).Distance(aPnts2(mod4(i - 2))) +
                               aPnts1(4).Distance(aPnts2(mod4(i - 3)));
    if (Dist_minus < Dist_min) {
      Dist_min = Dist_minus;
      i_min = i;
      s_min = - 1;
    }
  }

  // 3. Put vertices and edges of the second face to they
  //    permanent location in <myVertices> and <myEdges>
  for (i = 1; i <= 4; i++) {
    Standard_Integer nb = mod4(i_min + s_min*(i - 1));

    if (aPnts1(i).Distance(aPnts2(nb)) < Precision::Confusion()) {
      Standard_ConstructionError::Raise("The faces are too close");
    }

    myVertices(vertex_id(2, i)) = aVertis2(nb);

    if (s_min == -1) nb = mod4(nb - 1);
    myEdges(edge_id(2, i)) = anEdges2(nb);
  }

  // check the wires closure
  TopoDS_Wire wire1 = TopoDS::Wire(aWire1);
  TopoDS_Wire wire2 = TopoDS::Wire(aWire2);
  TopoDS_Vertex aV1, aV2;

  TopExp::Vertices(wire1, aV1, aV2);
  if ( !aV1.IsNull() && !aV2.IsNull() && aV1.IsSame(aV2) )
    aWire1.Closed( true );

  TopExp::Vertices(wire2, aV1, aV2);
  if ( !aV1.IsNull() && !aV2.IsNull() && aV1.IsSame(aV2) )
    aWire2.Closed( true );

  // 4. Generate side surface
  if (!aWire1.Closed() || !aWire2.Closed()) {
    // BRepOffsetAPI_ThruSections is not applicable on not closed wires
    GetFace(3, Standard_True);
    GetFace(4, Standard_True);
    GetFace(5, Standard_True);
    GetFace(6, Standard_True);
  } else {
    // try to build faces on native surfaces of edges or planar
    Standard_Boolean tryThru = Standard_False;
    for (Standard_Integer i = 3; i <= 6 && !tryThru; i++) {
      Standard_Boolean doMake = Standard_True;
      TopoDS_Shape E1 = GetEdge(edge_id(i, 1), doMake);
      TopoDS_Shape E2 = GetEdge(edge_id(i, 2), doMake);
      TopoDS_Shape E3 = GetEdge(edge_id(i, 3), doMake);
      TopoDS_Shape E4 = GetEdge(edge_id(i, 4), doMake);

      BRepBuilderAPI_MakeWire MW (TopoDS::Edge(E1),
                                  TopoDS::Edge(E2),
                                  TopoDS::Edge(E3),
                                  TopoDS::Edge(E4));
      if (!MW.IsDone()) {
        Standard_ConstructionError::Raise("Wire construction failed");
      }

      BRepBuilderAPI_MakeFace MF (MW, Standard_False);
      if (MF.IsDone()) {
        myFaces(i) = MF.Shape();
      } else {
        tryThru = Standard_True;
      }
    }

    // Build side surface by ThruSections algorithm
    if (tryThru) {
      BRepOffsetAPI_ThruSections THS;
      THS.AddWire(TopoDS::Wire(aWire1));
      THS.AddWire(TopoDS::Wire(aWire2));
      THS.Build();
      if (!THS.IsDone()) {
        StdFail_NotDone::Raise("Side surface generation failed");
      }
      for (Standard_Integer i = 1; i <= 4; i++) {
        // fill face
        myFaces(i+2) = THS.GeneratedFace(myEdges(i));

        // fill edge
        Standard_Integer ee = side_edge_id(i);
        TopTools_IndexedDataMapOfShapeListOfShape MVE;
        MapShapesAndAncestors(myFaces(i+2), TopAbs_VERTEX, TopAbs_EDGE, MVE);
        FindEdge(myEdges(ee),
                 myVertices(vertex_id_edge(ee, 1)),
                 myVertices(vertex_id_edge(ee, 2)),
                 MVE);
      }
    }
  }
}

//=======================================================================
//function : MapShapesAndAncestors
//purpose  :
//=======================================================================
void GEOMImpl_Block6Explorer::MapShapesAndAncestors (const TopoDS_Shape& S,
                                                     const TopAbs_ShapeEnum TS,
                                                     const TopAbs_ShapeEnum TA,
                                                     TopTools_IndexedDataMapOfShapeListOfShape& M)
{
  TopTools_ListOfShape empty;
  TopTools_MapOfShape mapA;

  // visit ancestors
  TopExp_Explorer exa (S,TA);
  for (; exa.More(); exa.Next()) {
    // visit shapes
    const TopoDS_Shape& anc = exa.Current();
    if (mapA.Add(anc)) {
      TopExp_Explorer exs (anc,TS);
      TopTools_MapOfShape mapS;
      for (; exs.More(); exs.Next()) {
        if (mapS.Add(exs.Current())) {
          Standard_Integer index = M.FindIndex(exs.Current());
          if (index == 0) index = M.Add(exs.Current(),empty);
          M(index).Append(anc);
        }
      }
    }
  }

  // visit shapes not under ancestors
  TopExp_Explorer ex (S,TS,TA);
  for (; ex.More(); ex.Next()) {
    Standard_Integer index = M.FindIndex(ex.Current());
    if (index == 0) index = M.Add(ex.Current(),empty);
  }
}

//=======================================================================
//function : IsSimilarEdges
//purpose  :
//=======================================================================
Standard_Boolean GEOMImpl_Block6Explorer::IsSimilarEdges (const TopoDS_Shape& E1,
                                                          const TopoDS_Shape& E2)
{
  TopoDS_Edge E1e = TopoDS::Edge(E1);
  TopoDS_Edge E2e = TopoDS::Edge(E2);
  TopoDS_Vertex V11, V12, V21, V22;
  TopExp::Vertices(E1e, V11, V12, Standard_True);
  TopExp::Vertices(E2e, V21, V22, Standard_True);
  if (BRepTools::Compare(V11, V21) && BRepTools::Compare(V12, V22))
    return Standard_True;
  if (BRepTools::Compare(V11, V22) && BRepTools::Compare(V12, V21))
    return Standard_True;

  return Standard_False;
}

//=======================================================================
//function : FindEdge
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::FindEdge
                   (TopoDS_Shape&       theResult,
                    const TopoDS_Shape& V1,
                    const TopoDS_Shape& V2,
                    const TopTools_IndexedDataMapOfShapeListOfShape& MVE,
                    const Standard_Boolean findAll)
{
  Standard_Integer isFound = 0;

  const TopTools_ListOfShape& anEdgesOfV1 = MVE.FindFromKey(V1);
  const TopTools_ListOfShape& anEdgesOfV2 = MVE.FindFromKey(V2);

  TopTools_ListIteratorOfListOfShape it1 (anEdgesOfV1);
  for (; it1.More(); it1.Next()) {
    TopTools_ListIteratorOfListOfShape it2 (anEdgesOfV2);
    for (; it2.More(); it2.Next()) {
      if (it1.Value().IsSame(it2.Value())) {
        isFound++;
        theResult = it1.Value();
        if (!findAll) return isFound;
      }
    }
  }

  return isFound;
}

//=======================================================================
//function : FindFace
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Block6Explorer::FindFace
                   (TopoDS_Shape&       theResult,
                    const TopoDS_Shape& V1,
                    const TopoDS_Shape& V2,
                    const TopoDS_Shape& V3,
                    const TopoDS_Shape& V4,
                    const TopTools_IndexedDataMapOfShapeListOfShape& MVF,
                    const Standard_Boolean findAll)
{
  Standard_Integer isFound = Standard_False;

  const TopTools_ListOfShape& aFacesOfV1 = MVF.FindFromKey(V1);
  const TopTools_ListOfShape& aFacesOfV2 = MVF.FindFromKey(V2);
  const TopTools_ListOfShape& aFacesOfV3 = MVF.FindFromKey(V3);
  const TopTools_ListOfShape& aFacesOfV4 = MVF.FindFromKey(V4);

  TopTools_ListIteratorOfListOfShape it1 (aFacesOfV1);
  for (; it1.More(); it1.Next()) {
    TopTools_ListIteratorOfListOfShape it2 (aFacesOfV2);
    for (; it2.More(); it2.Next()) {
      if (it1.Value().IsSame(it2.Value())) {
        TopTools_ListIteratorOfListOfShape it3 (aFacesOfV3);
        for (; it3.More(); it3.Next()) {
          if (it1.Value().IsSame(it3.Value())) {
            TopTools_ListIteratorOfListOfShape it4 (aFacesOfV4);
            for (; it4.More(); it4.Next()) {
              if (it1.Value().IsSame(it4.Value())) {
                isFound++;
                theResult = it1.Value();
                if (!findAll) return isFound;
              }
            }
          }
        }
      }
    }
  }

  return isFound;
}

//=======================================================================
//function : MakeFace
//purpose  :
//=======================================================================
void GEOMImpl_Block6Explorer::MakeFace (const TopoDS_Wire&     theWire,
                                        const Standard_Boolean isPlanarWanted,
                                        TopoDS_Shape&          theResult)
{
  // Workaround for Mantis issue 0020956
  if (isPlanarWanted) {
    // Count the number of points in the wire.
    // Collect the first three points.
    gp_Pnt p1, p2, p3;
    bool is3Pnts(false);
    bool p1set(false), p2set(false), p3set(false);
    BRepTools_WireExplorer wexpl(theWire);
    for (; wexpl.More(); wexpl.Next()) {
      if (!p1set) {
        p1set = true;
         p1 = BRep_Tool::Pnt(wexpl.CurrentVertex());
      }
      else if (!p2set) {
        p2set = true;
        p2 = BRep_Tool::Pnt(wexpl.CurrentVertex());
      }
      else if (!p3set) {
        p3set = true;
        is3Pnts = true;
        p3 = BRep_Tool::Pnt(wexpl.CurrentVertex());
      }
      else {
        is3Pnts = false;
        break;
      }
    }

    // Construct a plane for the case of three points in the wire.
    gp_Pln plane;
    if (is3Pnts) {
      gce_MakePln mkPln(p1, p2, p3);
      if (mkPln.IsDone()) {
        plane = mkPln.Value();
      }
      else {
        is3Pnts = false;
      }
    }

    // Construct a face based on the plane (in case of three points in the wire) or
    // allow MakeFace to build the plane itself (in case of the number of points is greater than 3).
    if (is3Pnts) {
      BRepBuilderAPI_MakeFace MK (plane, theWire, isPlanarWanted);
      if (MK.IsDone()) {
        theResult = MK.Shape();
        return;
      }
    }
    else {
      BRepBuilderAPI_MakeFace MK (theWire, isPlanarWanted);
      if (MK.IsDone()) {
        theResult = MK.Shape();
        return;
      }
    }
  }
  else {
    // try to build face on plane or on any surface under the edges of the wire
    BRepBuilderAPI_MakeFace MK (theWire, isPlanarWanted);
    if (MK.IsDone()) {
      theResult = MK.Shape();
      return;
    }
  }

  if (!isPlanarWanted) {
    // try to construct filling surface
    BRepOffsetAPI_MakeFilling MF;

    Standard_Integer nbEdges = 0;
    BRepTools_WireExplorer aWE (theWire);
    for (; aWE.More(); aWE.Next(), nbEdges++) {
      MF.Add(TopoDS::Edge(aWE.Current()), GeomAbs_C0);
    }

    MF.Build();
    if (MF.IsDone()) {
      // Result of filling
      TopoDS_Shape aFace = MF.Shape();

      // 12.04.2006 for PAL12149 begin
      Handle(Geom_Surface) aGS = BRep_Tool::Surface(TopoDS::Face(aFace));
      BRepBuilderAPI_MakeFace MK1 (aGS, theWire);
      if (MK1.IsDone()) {
        TopoDS_Shape aFace1 = MK1.Shape();

        BRepCheck_Analyzer ana (aFace1, false);
        if (!ana.IsValid()) {
          TopoDS_Shape aFace2;
          ShHealOper_ShapeProcess aHealer;
          aHealer.Perform(aFace1, aFace2);
          if (aHealer.isDone())
            theResult = aFace2;
        }
      }
      // 12.04.2006 for PAL12149 end

      if (theResult.IsNull()) { // try to deal with pure result of filling
        // Update tolerance
        Standard_Real aTol = MF.G0Error();

        TColgp_Array1OfPnt aPnts (1,nbEdges); // points of the given wire
        BRepTools_WireExplorer aWE1 (theWire);
        Standard_Integer vi = 1;
        for (; aWE1.More() && vi <= nbEdges; aWE1.Next(), vi++) {
          aPnts(vi) = BRep_Tool::Pnt(TopoDS::Vertex(aWE1.CurrentVertex()));
        }

        // Find maximum deviation in vertices
        TopExp_Explorer exp (aFace, TopAbs_VERTEX);
        TopTools_MapOfShape mapShape;
        for (; exp.More(); exp.Next()) {
          if (mapShape.Add(exp.Current())) {
            TopoDS_Vertex aV = TopoDS::Vertex(exp.Current());
            Standard_Real aTolV = BRep_Tool::Tolerance(aV);
            gp_Pnt aP = BRep_Tool::Pnt(aV);
            Standard_Real min_dist = aP.Distance(aPnts(1));
            for (vi = 2; vi <= nbEdges; vi++) {
              min_dist = Min(min_dist, aP.Distance(aPnts(vi)));
            }
            aTol = Max(aTol, aTolV);
            aTol = Max(aTol, min_dist);
          }
        }

        if ((*((Handle(BRep_TFace)*)&aFace.TShape()))->Tolerance() < aTol) {
          (*((Handle(BRep_TFace)*)&aFace.TShape()))->Tolerance(aTol);
        }
        theResult = aFace;
      }
    }
  } else {
    // try to update wire tolerances to build a planar face

#if 1 //(OCC_VERSION_MAJOR < 6) || (OCC_VERSION_MAJOR == 6 && OCC_VERSION_MINOR <= 1)
    // Find a deviation
    Standard_Real aToleranceReached, aTol;
    BRepLib_FindSurface aFS;
    aFS.Init(theWire, -1., isPlanarWanted);
    aToleranceReached = aFS.ToleranceReached();
    aTol = aFS.Tolerance();

    if (!aFS.Found()) {
      aFS.Init(theWire, aToleranceReached, isPlanarWanted);
      if (!aFS.Found()) return;
      aToleranceReached = aFS.ToleranceReached();
      aTol = aFS.Tolerance();
    }
    aTol = Max(1.2 * aToleranceReached, aTol);

    // Copy the wire, bacause it can be updated with very-very big tolerance here
    BRepBuilderAPI_Copy aMC (theWire);
    if (!aMC.IsDone()) return;
    TopoDS_Wire aWire = TopoDS::Wire(aMC.Shape());
    // Update tolerances to <aTol>
    BRep_Builder B;
    for (TopExp_Explorer expE (aWire, TopAbs_EDGE); expE.More(); expE.Next()) {
      TopoDS_Edge anE = TopoDS::Edge(expE.Current());
      B.UpdateEdge(anE, aTol);
    }
    for (TopExp_Explorer expV (aWire, TopAbs_VERTEX); expV.More(); expV.Next()) {
      TopoDS_Vertex aV = TopoDS::Vertex(expV.Current());
      B.UpdateVertex(aV, aTol);
    }
    //BRepLib::UpdateTolerances(aWire);
    // Build face
    BRepBuilderAPI_MakeFace MK1 (aWire, isPlanarWanted);
    if (MK1.IsDone()) {
      theResult = MK1.Shape();
      return;
    }

#else // After migration on OCCT version, containing PKV's fix. See bug 8293
    BRepLib_MakeFace aBMF;
    aBMF.Init(theWire, isPlanarWanted, Standard_True);
    if (aBMF.Error() == BRepLib_FaceDone) {
      theResult = aBMF.Shape();
      return;
    }
#endif
  }
}
