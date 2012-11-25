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

#ifndef _GEOMImpl_IBooleanOperations_HXX_
#define _GEOMImpl_IBooleanOperations_HXX_

#include "GEOM_IOperations.hxx"

#include <list>

class GEOM_Engine;
class Handle(GEOM_Object);
class Handle(TColStd_HArray1OfInteger);

class GEOMImpl_IBooleanOperations : public GEOM_IOperations {
 public:
  Standard_EXPORT GEOMImpl_IBooleanOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_IBooleanOperations();

  Standard_EXPORT Handle(GEOM_Object) MakeBoolean (Handle(GEOM_Object) theShape1,
                                                   Handle(GEOM_Object) theShape2,
                                                   Standard_Integer    theOp);

  Standard_EXPORT Handle(GEOM_Object) MakePartition
                  (const Handle(TColStd_HSequenceOfTransient)& theShapes,
                   const Handle(TColStd_HSequenceOfTransient)& theTools,
                   const Handle(TColStd_HSequenceOfTransient)& theKeepInside,
                   const Handle(TColStd_HSequenceOfTransient)& theRemoveInside,
                   const Standard_Integer                      theLimit,
                   const Standard_Boolean                      theRemoveWebs,
				   const Handle(TColStd_HArray1OfInteger)&     theMaterials,
				   const Standard_Integer 					   theKeepNonlimitShapes,
                   const Standard_Boolean                      thePerformSelfIntersections);

  Standard_EXPORT Handle(GEOM_Object) MakeHalfPartition (Handle(GEOM_Object) theShape,
                                                         Handle(GEOM_Object) thePlane);
};

#endif
