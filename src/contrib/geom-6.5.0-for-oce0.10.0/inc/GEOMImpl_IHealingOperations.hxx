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

#ifndef _GEOMImpl_IHealingOperations_HXX_
#define _GEOMImpl_IHealingOperations_HXX_

#include "GEOM_IOperations.hxx"
#include "GEOM_Engine.hxx"
#include "GEOM_Object.hxx"

#include <TColStd_HArray1OfExtendedString.hxx>
#include <TColStd_HArray1OfInteger.hxx>

#include <list>

class GEOMImpl_IHealingOperations : public GEOM_IOperations {
 public:
  Standard_EXPORT GEOMImpl_IHealingOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_IHealingOperations();

  // Apply Shape Processing to the selected Object
  Standard_EXPORT Handle(GEOM_Object) ShapeProcess( Handle(GEOM_Object) theObject,
                            const Handle(TColStd_HArray1OfExtendedString)& theOperations,
                            const Handle(TColStd_HArray1OfExtendedString)& theParams,
                            const Handle(TColStd_HArray1OfExtendedString)& theValues );

  // Retrieve default Shape Process parameters (from resource file)
  Standard_EXPORT void GetShapeProcessParameters( std::list<std::string>& theOperations,
                                                  std::list<std::string>& theParams,
                                                  std::list<std::string>& theValues );

  // Retrieve default Shape Process parameters for given operator
  Standard_EXPORT bool GetOperatorParameters( const std::string theOperation,
                                              std::list<std::string>& theParams,
                                              std::list<std::string>& theValues );

  // returns all parameters that are valid for the given operation (Shape Process operator)
  Standard_EXPORT static bool GetParameters( const std::string theOperation,
                                             std::list<std::string>& theParams );

  Standard_EXPORT Handle(GEOM_Object) SuppressFaces( Handle(GEOM_Object) theObject,
                                     const Handle(TColStd_HArray1OfInteger)& theFaces);

  Standard_EXPORT Handle(GEOM_Object) CloseContour( Handle(GEOM_Object) theObject,
                                    const Handle(TColStd_HArray1OfInteger)& theWires,
                                    bool isCommonVertex );

  Standard_EXPORT Handle(GEOM_Object) RemoveIntWires( Handle(GEOM_Object) theObject,
                                      const Handle(TColStd_HArray1OfInteger)& theWires);

  Standard_EXPORT Handle(GEOM_Object) FillHoles( Handle(GEOM_Object) theObject,
                                 const Handle(TColStd_HArray1OfInteger)& theWires);

  Standard_EXPORT Handle(GEOM_Object) Sew( Handle(GEOM_Object) theObject,
                           double theTolerance );

  Standard_EXPORT Handle(GEOM_Object) DivideEdge( Handle(GEOM_Object) theObject,
                                                  int theIndex,
                                                  double theValue,
                                                  bool isByParameter );

  // this function does not use Function-Driver mechanism, it just computes the free
  // boundary edges and returns them in the sequence.  It is called just for information reasons
  // and it's not intended for history/undo/redo/etc..
  Standard_EXPORT bool GetFreeBoundary ( Handle(GEOM_Object) theObject,
                         Handle(TColStd_HSequenceOfTransient)& theOutClosedWires,
                         Handle(TColStd_HSequenceOfTransient)& theOutOpenWires );

  Standard_EXPORT Handle(GEOM_Object) ChangeOrientation( Handle(GEOM_Object) theObject);
  Standard_EXPORT Handle(GEOM_Object) ChangeOrientationCopy( Handle(GEOM_Object) theObject);

  Standard_EXPORT Handle(GEOM_Object) LimitTolerance( Handle(GEOM_Object) theObject,
                                                      double theTolerance );

};

#endif
