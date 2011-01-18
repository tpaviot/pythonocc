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

#ifndef _GEOMImpl_ILocalOperations_HXX_
#define _GEOMImpl_ILocalOperations_HXX_

//#include "Utils_SALOME_Exception.hxx"
#include "GEOM_IOperations.hxx"
#include "GEOM_Engine.hxx"
#include "GEOM_Object.hxx"
#include <TDocStd_Document.hxx>

#include <list>

class GEOMImpl_ILocalOperations : public GEOM_IOperations {
 public:
  Standard_EXPORT GEOMImpl_ILocalOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_ILocalOperations();

  Standard_EXPORT Handle(GEOM_Object) MakeFilletAll   (Handle(GEOM_Object) theShape, const GEOM_Parameter& theR);

  Standard_EXPORT Handle(GEOM_Object) MakeFilletEdges (Handle(GEOM_Object) theShape, const GEOM_Parameter& theR,
									   std::list<int> theEdges);
									   
  Standard_EXPORT Handle(GEOM_Object) MakeFilletEdgesR1R2 (Handle(GEOM_Object) theShape,
														   const GEOM_Parameter& theR1, const GEOM_Parameter& theR2,
														   std::list<int> theEdges);

  Standard_EXPORT Handle(GEOM_Object) MakeFilletFaces (Handle(GEOM_Object) theShape, const GEOM_Parameter& theR,
									   std::list<int> theFaces);

  Standard_EXPORT Handle(GEOM_Object) MakeFilletFacesR1R2 (Handle(GEOM_Object) theShape,
														   const GEOM_Parameter& theR1, const GEOM_Parameter& theR2,
                                                           std::list<int> theFaces);

  Standard_EXPORT Handle(GEOM_Object) MakeVariableFillet (Handle(GEOM_Object) theShape, std::list<GEOM_Parameter> theEdgesParams,
										std::list<GEOM_Parameter> theRadiusAtParam, std::list<int> theEdges);

  Standard_EXPORT Handle(GEOM_Object) MakeFillet2DVertices(Handle(GEOM_Object) theShape, const GEOM_Parameter& theR,
										std::list<int> theVertices);

  Standard_EXPORT Handle(GEOM_Object) MakeChamferAll   (Handle(GEOM_Object) theShape, const GEOM_Parameter& theD);

  Standard_EXPORT Handle(GEOM_Object) MakeChamferEdge  (Handle(GEOM_Object) theShape,
										const GEOM_Parameter& theD1, const GEOM_Parameter& theD2,
										int theFace1, int theFace2);

  Standard_EXPORT Handle(GEOM_Object) MakeChamferFaces (Handle(GEOM_Object) theShape,
										const GEOM_Parameter& theD1, const GEOM_Parameter& theD2,
										std::list<int> theFaces);

  Standard_EXPORT Handle(GEOM_Object) MakeChamfer2DEdges (Handle(GEOM_Object) theShape,
										const GEOM_Parameter& theD1, const GEOM_Parameter& theD2,
										int theEdge1, int theEdge2);

  Standard_EXPORT Handle(GEOM_Object) MakeChamferFacesAD (Handle(GEOM_Object) theShape,
										const GEOM_Parameter& theD, const GEOM_Parameter& theAngle,
										std::list<int> theFaces);

  Standard_EXPORT Handle(GEOM_Object) MakeChamferEdges (Handle(GEOM_Object) theShape,
										const GEOM_Parameter& theD1, const GEOM_Parameter& theD2,
										std::list<int> theEdges);

  Standard_EXPORT Handle(GEOM_Object) MakeChamferEdgesAD (Handle(GEOM_Object) theShape,
										const GEOM_Parameter& theD, const GEOM_Parameter& theAngle,
										std::list<int> theEdges);

  Standard_EXPORT Handle(GEOM_Object) MakeChamferEdgeAD  (Handle(GEOM_Object) theShape,
										const GEOM_Parameter& theD, const GEOM_Parameter& theAngle,
										int theFace1, int theFace2);

  Standard_EXPORT Handle(GEOM_Object) MakeThickSolid (Handle(GEOM_Object) theShape,
										const GEOM_Parameter& theOffset, std::list<int> theFaces);

  Standard_EXPORT Handle(GEOM_Object) MakeDraftFacesAngle (Handle(GEOM_Object) theShape,
										Handle(GEOM_Object) theNeutralPlane, const GEOM_Parameter& theAngle, std::list<int> theFaces);

  Standard_EXPORT Handle(GEOM_Object) MakeDraftFacesAngleWithStationaryFace (Handle(GEOM_Object) theShape,
										int theNeutralPlane, const GEOM_Parameter& theAngle, std::list<int> theFaces);

  Standard_EXPORT Handle(GEOM_Object) MakeArchimede (Handle(GEOM_Object) theShape,
									 const GEOM_Parameter& theWeight, const GEOM_Parameter& theWaterDensity,
                                     const GEOM_Parameter& theMeshingDeflection);

  Standard_EXPORT Standard_Integer GetSubShapeIndex (Handle(GEOM_Object) theShape,
                                     Handle(GEOM_Object) theSubShape);

  Standard_EXPORT static bool GetSubShape (const TopoDS_Shape& theShape,
                           const int theIndex,
                           TopoDS_Shape& theSubShape);
};

#endif
