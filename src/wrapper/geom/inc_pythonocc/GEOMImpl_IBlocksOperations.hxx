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

#ifndef _GEOMImpl_IBlocksOperations_HXX_
#define _GEOMImpl_IBlocksOperations_HXX_

#include "SGEOM_IOperations.hxx"

#include <TopTools_ListOfShape.hxx>
#include <TColStd_HSequenceOfTransient.hxx>

#include <list>

class GEOM_Engine;
class Handle(GEOM_Object);
class Handle(TColStd_HArray1OfInteger);


//!Interface class fot block operations
class GEOMImpl_IBlocksOperations : public GEOM_IOperations {
 public:
  Standard_EXPORT GEOMImpl_IBlocksOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_IBlocksOperations();

  //! Creation of blocks and block faces
  Standard_EXPORT Handle(GEOM_Object) MakeQuad (Handle(GEOM_Object) theEdge1,
                                Handle(GEOM_Object) theEdge2,
                                Handle(GEOM_Object) theEdge3,
                                Handle(GEOM_Object) theEdge4);

  Standard_EXPORT Handle(GEOM_Object) MakeQuad2Edges (Handle(GEOM_Object) theEdge1,
                                      Handle(GEOM_Object) theEdge2);

  Standard_EXPORT Handle(GEOM_Object) MakeQuad4Vertices (Handle(GEOM_Object) thePoint1,
                                         Handle(GEOM_Object) thePoint2,
                                         Handle(GEOM_Object) thePoint3,
                                         Handle(GEOM_Object) thePoint4);

  Standard_EXPORT Handle(GEOM_Object) MakeHexa (Handle(GEOM_Object) theFace1,
                                Handle(GEOM_Object) theFace2,
                                Handle(GEOM_Object) theFace3,
                                Handle(GEOM_Object) theFace4,
                                Handle(GEOM_Object) theFace5,
                                Handle(GEOM_Object) theFace6);

  Standard_EXPORT Handle(GEOM_Object) MakeHexa2Faces (Handle(GEOM_Object) theFace1,
                                      Handle(GEOM_Object) theFace2);

  Standard_EXPORT Handle(GEOM_Object) MakeBlockCompound (Handle(GEOM_Object) theCompound);

  //! Extract elements of blocks and blocks compounds
  Standard_EXPORT Handle(GEOM_Object) GetPoint (Handle(GEOM_Object) theShape,
								const Standard_Real theX,
								const Standard_Real theY,
								const Standard_Real theZ,
								const Standard_Real theEpsilon);
								
  Standard_EXPORT Handle(GEOM_Object) GetVertexNearPoint (Handle(GEOM_Object) theShape,
                                                          Handle(GEOM_Object) thePoint);


  Standard_EXPORT Handle(GEOM_Object) GetEdge (Handle(GEOM_Object) theShape,
                               Handle(GEOM_Object) thePoint1,
                               Handle(GEOM_Object) thePoint2);

  Standard_EXPORT Handle(GEOM_Object) GetEdgeNearPoint (Handle(GEOM_Object) theBlock,
                                        Handle(GEOM_Object) thePoint);

  Standard_EXPORT Handle(GEOM_Object) GetFaceByPoints (Handle(GEOM_Object) theShape,
                                       Handle(GEOM_Object) thePoint1,
                                       Handle(GEOM_Object) thePoint2,
                                       Handle(GEOM_Object) thePoint3,
                                       Handle(GEOM_Object) thePoint4);

  Standard_EXPORT Handle(GEOM_Object) GetFaceByEdges (Handle(GEOM_Object) theShape,
                                      Handle(GEOM_Object) theEdge1,
                                      Handle(GEOM_Object) theEdge2);

  Standard_EXPORT Handle(GEOM_Object) GetOppositeFace (Handle(GEOM_Object) theBlock,
                                       Handle(GEOM_Object) theFace);

  Standard_EXPORT Handle(GEOM_Object) GetFaceNearPoint (Handle(GEOM_Object) theBlock,
                                        Handle(GEOM_Object) thePoint);

  Standard_EXPORT Handle(GEOM_Object) GetFaceByNormale (Handle(GEOM_Object) theBlock,
                                        Handle(GEOM_Object) theVector);
										
  Standard_EXPORT Handle(GEOM_Object) GetShapesNearPoint (Handle(GEOM_Object)    theShape,
                                                          Handle(GEOM_Object)    thePoint,
                                                          const Standard_Integer theShapeType,
                                                          const Standard_Real    theTolerance);

  //! Check blocks compounds
  Standard_EXPORT Standard_Boolean IsCompoundOfBlocks (Handle(GEOM_Object)    theCompound,
                                       const Standard_Integer theMinNbFaces,
                                       const Standard_Integer theMaxNbFaces,
                                       Standard_Integer&      theNbBlocks);

  enum BCErrorType {
    NOT_BLOCK,
    EXTRA_EDGE,
    INVALID_CONNECTION,
    NOT_CONNECTED,
    NOT_GLUED
  };

  struct BCError {
    BCErrorType error;
	std::list<int>   incriminated;
  };

  Standard_EXPORT Standard_Boolean CheckCompoundOfBlocksOld (Handle(GEOM_Object) theCompound,
	                                                         std::list<BCError>&      theErrors);

  Standard_EXPORT Standard_Boolean CheckCompoundOfBlocks (Handle(GEOM_Object) theCompound,
	                                                      std::list<BCError>&      theErrors);

  Standard_EXPORT TCollection_AsciiString PrintBCErrors (Handle(GEOM_Object)  theCompound,
	                                                     const std::list<BCError>& theErrors);

  Standard_EXPORT Handle(GEOM_Object) RemoveExtraEdges (Handle(GEOM_Object) theShape,
                                                        const Standard_Integer theOptimumNbFaces = 6);

  Standard_EXPORT Handle(GEOM_Object) CheckAndImprove (Handle(GEOM_Object) theCompound);

  Standard_EXPORT static void AddBlocksFrom (const TopoDS_Shape&   theShape,
                             TopTools_ListOfShape& BLO,
                             TopTools_ListOfShape& NOT,
                             TopTools_ListOfShape& EXT);

  //! Extract blocks from blocks compounds
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) ExplodeCompoundOfBlocks
                                      (Handle(GEOM_Object)    theCompound,
                                       const Standard_Integer theMinNbFaces,
                                       const Standard_Integer theMaxNbFaces);

  Standard_EXPORT Handle(GEOM_Object) GetBlockNearPoint (Handle(GEOM_Object) theCompound,
                                         Handle(GEOM_Object) thePoint);

  Standard_EXPORT Handle(GEOM_Object) GetBlockByParts
                     (Handle(GEOM_Object)                         theCompound,
                      const Handle(TColStd_HSequenceOfTransient)& theParts);

  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) GetBlocksByParts
                     (Handle(GEOM_Object)                         theCompound,
                      const Handle(TColStd_HSequenceOfTransient)& theParts);

  //! Operations on blocks with gluing of result
  Standard_EXPORT Handle(GEOM_Object) MakeMultiTransformation1D (Handle(GEOM_Object)    theBlock,
												 const Standard_Integer theDirFace1,
                                                 const Standard_Integer theDirFace2,
												 const GEOM_Parameter& theNbTimes);

  Standard_EXPORT Handle(GEOM_Object) MakeMultiTransformation2D (Handle(GEOM_Object)    theBlock,
												 const Standard_Integer theDirFace1U,
												 const Standard_Integer theDirFace2U,
												 const GEOM_Parameter& theNbTimesU,
												 const Standard_Integer theDirFace1V,
												 const Standard_Integer theDirFace2V,
												 const GEOM_Parameter& theNbTimesV);

  //! Build groups for Propagation of 1D hypotheses
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) Propagate (Handle(GEOM_Object) theShape);
};

#endif
