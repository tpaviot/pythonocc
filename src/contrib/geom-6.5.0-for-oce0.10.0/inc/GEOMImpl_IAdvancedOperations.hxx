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
//  File   : GEOMImpl_IAdvancedOperations.hxx
//  Author : Vadim SANDLER, Open CASCADE S.A.S. (vadim.sandler@opencascade.com)

#ifndef _GEOMImpl_IAdvancedOperations_HXX_
#define _GEOMImpl_IAdvancedOperations_HXX_

//#include <Utils_SALOME_Exception.hxx>
#include "GEOM_IOperations.hxx"
#include "GEOM_Engine.hxx"
#include "GEOM_Object.hxx"

class GEOMImpl_IBasicOperations;
class GEOMImpl_IBooleanOperations;
class GEOMImpl_IShapesOperations;
class GEOMImpl_ITransformOperations;
class GEOMImpl_IBlocksOperations;
class GEOMImpl_I3DPrimOperations;
class GEOMImpl_ILocalOperations;
class GEOMImpl_IHealingOperations;

class GEOMImpl_IAdvancedOperations: public GEOM_IOperations {
private:
  bool MakePipeTShapePartition(Handle(GEOM_Object) theShape,
                               double theR1, double theW1, double theL1,
                               double theR2, double theW2, double theL2,
                               double theH = 0, double theW = 0,
                               double theRF = 0, bool isNormal = true);
  bool MakePipeTShapeMirrorAndGlue(Handle(GEOM_Object) theShape,
                                   double theR1, double theW1, double theL1,
                                   double theR2, double theW2, double theL2);
  bool MakeGroups(Handle(GEOM_Object) theShape, int shapType,
                  double theR1, double theW1, double theL1,
                  double theR2, double theW2, double theL2,
                  Handle(TColStd_HSequenceOfTransient) theSeq,
                  gp_Trsf aTrsf);
  gp_Trsf GetPositionTrsf(double theL1, double theL2,
                          Handle(GEOM_Object) P1 = 0,
                          Handle(GEOM_Object) P2 = 0,
                          Handle(GEOM_Object) P3 = 0);
  bool CheckCompatiblePosition(double& theL1, double& theL2, 
                               Handle(GEOM_Object) theP1, 
                               Handle(GEOM_Object) theP2,
                               Handle(GEOM_Object) theP3,
                               double theTolerance);
private:
  GEOMImpl_IBasicOperations*     myBasicOperations;
  GEOMImpl_IBooleanOperations*   myBooleanOperations;
  GEOMImpl_IShapesOperations*    myShapesOperations;
  GEOMImpl_ITransformOperations* myTransformOperations;
  GEOMImpl_IBlocksOperations*    myBlocksOperations;
  GEOMImpl_I3DPrimOperations*    my3DPrimOperations;
  GEOMImpl_ILocalOperations*     myLocalOperations;
  GEOMImpl_IHealingOperations*   myHealingOperations;

public:
  Standard_EXPORT GEOMImpl_IAdvancedOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_IAdvancedOperations();

  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) 
                  MakePipeTShape(double theR1, double theW1, double theL1,
                                 double theR2, double theW2, double theL2,
                                 bool theHexMesh = true);
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
                  MakePipeTShapeWithPosition(double theR1, double theW1, double theL1,
                                             double theR2, double theW2, double theL2,
                                             bool theHexMesh = true,
                                             Handle(GEOM_Object) P1 = 0,
                                             Handle(GEOM_Object) P2 = 0,
                                             Handle(GEOM_Object) P3 = 0);
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
                  MakePipeTShapeChamfer(double theR1, double theW1, double theL1,
                                        double theR2, double theW2, double theL2,
                                        double theH,  double theW, 
                                        bool theHexMesh = true);
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
                  MakePipeTShapeChamferWithPosition(double theR1, double theW1, double theL1,
                                                    double theR2, double theW2, double theL2,
                                                    double theH, double theW,
                                                    bool theHexMesh = true,
                                                    Handle(GEOM_Object) P1 = 0,
                                                    Handle(GEOM_Object) P2 = 0,
                                                    Handle(GEOM_Object) P3 = 0);
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
                  MakePipeTShapeFillet(double theR1, double theW1, double theL1,
                                       double theR2, double theW2, double theL2,
                                       double theRF, bool theHexMesh = true);
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
                  MakePipeTShapeFilletWithPosition(double theR1, double theW1, double theL1,
                                                   double theR2, double theW2, double theL2,
                                                   double theRF, bool theHexMesh = true,
                                                   Handle(GEOM_Object) P1 = 0,
                                                   Handle(GEOM_Object) P2 = 0,
                                                   Handle(GEOM_Object) P3 = 0);
  /*@@ insert new functions before this line @@ do not remove this line @@*/
};
#endif
