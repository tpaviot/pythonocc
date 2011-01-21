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
//  File   : GEOMImpl_Block6Explorer.hxx
//  Module : GEOMImpl

#ifndef GEOMImpl_Block6Explorer_HeaderFile
#define GEOMImpl_Block6Explorer_HeaderFile

#include <TopoDS_Shape.hxx>
#include <TopoDS_Wire.hxx>
#include <TopTools_Array1OfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <gp_Trsf.hxx>

//!  Class GEOMImpl_Block6Explorer gives easy and fast access to a certain sub-elements of hexahedral solid
//!  Each face   can be accessed by its global ID [1-6]
//!  Each edge   can be accessed by its global ID [1-12] or by its local NB [1-4] inside certain face
//!  Each vertex can be accessed by its global ID [1-8] or  by its local NB [1-4] inside certain face
//!  Numeration of the sub-shapes is defined in constructors, see they comments
//!
//!                  face 2       face 4          |           4 face     2 face                   |
//!                       |           /           |            \         |                        |
//!                      \|/        |/_           |            _\|      \|/                       |
//!                       '         '             |              '       '                        |
//!                    8_______7__7               |               7__7_______8                    |
//!                   /|         /|               |               |\         |\                   |
//!                  8 12       6 11              |              11 6       12 8                  |
//!                 /  |       /  |               |               |  \       |  \                 |
//!               5/______5__6/   |               |               |   \6__5______\5               |
//!  face 5 --->  |    |     |    |  <--- 6 face  |  face 6 --->  |    |     |    |  <--- 5 face  |
//!               |    |__3__|____|               |               |____|__3__|    |               |
//!               |   /4     |   /3               |               3\   |     4\   |               |
//!               |  /       |  /                 |                 \  |       \  |               |
//!               9 4       10 2                  |                  2 10       4 9               |
//!               |/__1______|/                   |                   \|______1__\|               |
//!               1          2                    |                    2          1               |
//!            _.        .                        |                        .       ._             |
//!            /|       /|\                       |                       /|\      |\             |
//!           /          |                        |                        |         \            |
//!          3 face      1 face                   |                   face 1     face 3           |
//!                                               |                                               |
//!  Picture 1 (right orientation)                |  Picture 2 (left orientation)                 |
//!                                                                                               |
//!  For the moment, the orientation of numbering is not controlled
//! Faces: 1 - bottom, 2 - top, 3 - front, 4 - back, 5 - left (right), 6 - right (left)
//!
//!                             4_______3__3         2 ______2__3
//!                            /          /          |          |
//!                           4          2           1          3
//!                          /          /            |          |
//!                        1/______1__2/             |          |
//!                                                  |          |
//!                                                  | __4______|
//!                           face 2       face 4    1          4
//!                                |           /
//!                               \|/        |/_
//!                                '         '
//!        3                    8_______7__7                    3
//!       /|                   /|         /|                   /|
//!      3 2                  8 12       6 11                 3 2
//!     /  |                 /  |       /  |                 /  |
//!   4/   |               5/______5__6/   |               4/   |
//!   |    |  face 5 --->  |    |     |    |  <--- 6 face  |    |
//!   |    |               |    |__3__|____|               |    |
//!   |   /2               |   /4     |   /3               |   /2
//!   |  /                 |  /       |  /                 |  /
//!   4 1                  9 4       10 2                  4 1
//!   |/                   |/__1______|/                   |/
//!   1                    1          2                    1
//!                     _.        .
//!                     /|       /|\
//!                    /          |
//!   2 ______2__3    3 face      1 face
//!   |          |
//!   |          |               __3_______
//!   |          |             /4         /3
//!   |          |            /          /
//!   1          3           4          2
//!   | __4______|          /__1______ /
//!   1          4         1          2
//!
//!  Picture 3 (On periferal pictures the local
//!  numeration of edges and vertices is shown)
class GEOMImpl_Block6Explorer
{
 public:
  // ---------- PUBLIC METHODS ----------

  //! Constructor.
  GEOMImpl_Block6Explorer ();

  //! <I><B>Initialization by existing solid,sub-elements regulate numeration</B></I>
  //! Init by hexahedral solid. First face, edge and vertex is defined randomly
  void InitByBlock (const TopoDS_Shape& theBlock);

  //! <I><B>Initialization by existing solid,sub-elements regulate numeration</B></I>
  //! Constructor from hexahedral solid, making theFace the first face.
  //! First edge and vertex is defined randomly from theFace entities
  void InitByBlockAndFace (const TopoDS_Shape& theBlock,
						   const TopoDS_Shape& theFace);

  //! <I><B>Initialization by existing solid,sub-elements regulate numeration</B></I>
  //! Init by hexahedral solid, making theEdge1 the first, theEdge2 the fird.
  //! First vertex is defined randomly from theEdge1 vertices
  //! (Picture 1 and Picture 2 shows two possible cases)
  void InitByBlockAndEdges (const TopoDS_Shape& theBlock,
							const TopoDS_Shape& theEdge1,
							const TopoDS_Shape& theEdge2);

  //! <I><B>Initialization by existing solid,sub-elements regulate numeration</B></I>
  //! Init by hexahedral solid, making theVertex1 the first,
  //! theVertex2 the second and theVertex3 the fird vertices.
  void InitByBlockAndVertices (const TopoDS_Shape& theBlock,
							   const TopoDS_Shape& theVertex1,
							   const TopoDS_Shape& theVertex2,
							   const TopoDS_Shape& theVertex3);

  //! <I><B>Initialization by parts of solid to be built</B></I>
  //! Init by two faces. TheFace1 will be the first,
  //! theFace2 will be the second.
  //! First edge and vertex is defined randomly from theFace1 entities.
  void InitByTwoFaces (const TopoDS_Shape& theFace1,
					   const TopoDS_Shape& theFace2);

  //! Access to vertices
  TopoDS_Shape GetVertex (const Standard_Integer theVertexID); // [1-8]

  //! Access to vertices
  Standard_Integer GetVertexID (const TopoDS_Shape& theVertex);

  //! Access to vertices
  Standard_Integer GetVertexID (const Standard_Integer theFaceID, // [1-6]
								const Standard_Integer theVertexNB); // [1-4]

  //! Access to vertices
  Standard_Integer GetVertexOnEdgeID (const Standard_Integer theEdgeID, // [1-12]
                                      const Standard_Integer theVertexNB); // [1-2]

  //! Access to edges
  TopoDS_Shape GetEdge (const Standard_Integer theEdgeID, // [1-12]
						const Standard_Boolean doMake = Standard_False);

  //! Access to edges
  Standard_Integer GetEdgeID (const TopoDS_Shape& theEdge);

  //! Access to edges
  Standard_Integer GetEdgeID (const Standard_Integer theFaceID, // [1-6]
                              const Standard_Integer theEdgeNB); // [1-4]

  //! Access to edges
  Standard_Integer FindEdgeID (const Standard_Integer theVertex1ID,
							   const Standard_Integer theVertex2ID);

  //! Access to edges
  Standard_Integer FindCommonEdgeID (const Standard_Integer theFace1ID,
                                     const Standard_Integer theFace2ID);

  //! Access to faces
  TopoDS_Shape GetFace (const Standard_Integer theFaceID, // [1-6]
                        const Standard_Boolean doMake = Standard_False);

  //! Access to faces
  Standard_Integer GetFaceID (const TopoDS_Shape& theFace);

  //! Access to faces
  Standard_Integer FindFaceID (const Standard_Integer theEdge1ID,
							   const Standard_Integer theEdge2ID);

  //! Access to faces
  Standard_Integer GetOppositeFaceID (const Standard_Integer theFaceID);

  //! Check Block
  //! returns true, if theFace1, transformed
  //! by theTransformation, coincides with theFace2
  Standard_Boolean IsSimilarFaces (const Standard_Integer theFace1ID,
								   const Standard_Integer theFace2ID,
								   const gp_Trsf          theTransformation);

  
 public:
  // ---------- STATIC PUBLIC METHODS ----------
  static void MapShapesAndAncestors (const TopoDS_Shape& S,
                                     const TopAbs_ShapeEnum TS,
                                     const TopAbs_ShapeEnum TA,
                                     TopTools_IndexedDataMapOfShapeListOfShape& M);

  static Standard_Boolean IsSimilarEdges (const TopoDS_Shape& E1, 
										  const TopoDS_Shape& E2);
  //! returns number of found edges
  static Standard_Integer FindEdge (TopoDS_Shape&       theResult,
									const TopoDS_Shape& V1,
									const TopoDS_Shape& V2,
									const TopTools_IndexedDataMapOfShapeListOfShape& MVE,
									const Standard_Boolean findAll = Standard_False);
  
  //! returns number of found faces
  static Standard_Integer FindFace (TopoDS_Shape&       theResult,
									const TopoDS_Shape& V1,
									const TopoDS_Shape& V2,
									const TopoDS_Shape& V3,
									const TopoDS_Shape& V4,
									const TopTools_IndexedDataMapOfShapeListOfShape& MVF,
									const Standard_Boolean findAll = Standard_False);
  

  static void MakeFace (const TopoDS_Wire&     theWire,
                        const Standard_Boolean isPlanarWanted,
                        TopoDS_Shape&          theResult);

 private:
  // ---------- PRIVATE FIELDS ----------

  TopTools_Array1OfShape myFaces;
  TopTools_Array1OfShape myEdges;
  TopTools_Array1OfShape myVertices;
};

#endif
