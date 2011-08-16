//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
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
//
//=============================================================================
// File      : GEOMImpl_IShapesOperations.hxx
// Created   : 
// Author    : modified by Lioka RAZAFINDRAZAKA (CEA) 22/06/2007
// Project   : SALOME
// $Header: /home/server/cvs/GEOM/GEOM_SRC/src/GEOMImpl/GEOMImpl_IShapesOperations.hxx,v 1.13.2.3 2008/11/27 10:36:56 abd Exp $
//=============================================================================
//
#ifndef _GEOMImpl_IShapesOperations_HXX_
#define _GEOMImpl_IShapesOperations_HXX_

#include "GEOM_IOperations.hxx"

#include "GEOMAlgo_State.hxx"

#include <TopTools_ListOfShape.hxx>
#include <TColStd_HSequenceOfTransient.hxx>
#include <TColStd_HSequenceOfInteger.hxx>

#include <list>
#include <Handle_Geom_Surface.hxx>

#include <gp_Pnt.hxx>

class GEOM_Engine;
class Handle(GEOM_Object);
class Handle(TColStd_HArray1OfInteger);

class GEOMImpl_IShapesOperations : public GEOM_IOperations
{
 public:
  Standard_EXPORT GEOMImpl_IShapesOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_IShapesOperations();

  Standard_EXPORT Handle(GEOM_Object) MakeEdge (Handle(GEOM_Object) thePoint1,
                                Handle(GEOM_Object) thePoint2);
								
  Standard_EXPORT Handle(GEOM_Object) MakeEdgeWire (Handle(GEOM_Object) theWire,
						    const Standard_Real theLinearTolerance,
						    const Standard_Real theAngularTolerance);

  Standard_EXPORT Handle(GEOM_Object) MakeWire (std::list<Handle(GEOM_Object)> theEdgesAndWires,
                                                const Standard_Real            theTolerance);

  Standard_EXPORT Handle(GEOM_Object) MakeFace (Handle(GEOM_Object) theWire, const bool isPlanarWanted);

  Standard_EXPORT Handle(GEOM_Object) MakeFaceWires (std::list<Handle(GEOM_Object)> theWires,
                                     const bool isPlanarWanted);

  Standard_EXPORT Handle(GEOM_Object) MakeShell (std::list<Handle(GEOM_Object)> theShapes);

  Standard_EXPORT Handle(GEOM_Object) MakeSolidShell (Handle(GEOM_Object) theShell);

  Standard_EXPORT Handle(GEOM_Object) MakeSolidShells (std::list<Handle(GEOM_Object)> theShells);

  Standard_EXPORT Handle(GEOM_Object) MakeCompound (std::list<Handle(GEOM_Object)> theShapes);

  Standard_EXPORT Handle(GEOM_Object) MakeGlueFaces (Handle(GEOM_Object) theShape,
						     const Standard_Real theTolerance,
                                                     const Standard_Boolean doKeepNonSolids);

  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) GetGlueFaces (Handle(GEOM_Object) theShape,
								     const Standard_Real theTolerance);

  Standard_EXPORT Handle(GEOM_Object) MakeGlueFacesByList (Handle(GEOM_Object) theShape,
							   const Standard_Real theTolerance,
							   std::list<Handle(GEOM_Object)> theFaces,
                                                           const Standard_Boolean doKeepNonSolids);

  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) GetExistingSubObjects
    (Handle(GEOM_Object)    theShape,
     const Standard_Boolean theGroupsOnly);

  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) MakeExplode (Handle(GEOM_Object)    theShape,
                                                                    const Standard_Integer theShapeType,
                                                                    const Standard_Boolean isSorted);

  Standard_EXPORT Handle(TColStd_HSequenceOfInteger) SubShapeAllIDs (Handle(GEOM_Object)    theShape,
                                                                     const Standard_Integer theShapeType,
                                                                     const Standard_Boolean isSorted);

  Standard_EXPORT Handle(GEOM_Object) GetSubShape (Handle(GEOM_Object)    theMainShape,
                                                   const Standard_Integer theID);

  Standard_EXPORT Standard_Integer GetSubShapeIndex (Handle(GEOM_Object) theMainShape,
                                                     Handle(GEOM_Object) theSubShape);

  Standard_EXPORT Standard_Integer GetTopologyIndex (Handle(GEOM_Object) theMainShape,
                                                     Handle(GEOM_Object) theSubShape);

  Standard_EXPORT TCollection_AsciiString GetShapeTypeString (Handle(GEOM_Object) theShape);

  Standard_EXPORT Standard_Integer NumberOfSubShapes (Handle(GEOM_Object)    theShape,
                                                      const Standard_Integer theShapeType);

  Standard_EXPORT Handle(GEOM_Object) ReverseShape(Handle(GEOM_Object) theShapes);

  Standard_EXPORT Handle(TColStd_HSequenceOfInteger) GetFreeFacesIDs (Handle(GEOM_Object) theShape);

  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) GetSharedShapes (Handle(GEOM_Object)    theShape1,
                                                        Handle(GEOM_Object)    theShape2,
                                                        const Standard_Integer theShapeType);

  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) GetShapesOnPlane (const Handle(GEOM_Object)& theShape,
                                                         const Standard_Integer     theShapeType,
                                                         const Handle(GEOM_Object)& theAx1,
                                                         const GEOMAlgo_State       theState);

  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
    GetShapesOnPlaneWithLocation (const Handle(GEOM_Object)& theShape,
                                  const Standard_Integer     theShapeType,
                                  const Handle(GEOM_Object)& theAx1,
                                  const Handle(GEOM_Object)& thePnt,
                                  const GEOMAlgo_State       theState);


  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
    GetShapesOnCylinder (const Handle(GEOM_Object)& theShape,
                         const Standard_Integer     theShapeType,
                         const Handle(GEOM_Object)& theAxis,
                         const Standard_Real        theRadius,
                         const GEOMAlgo_State       theState);

  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
    GetShapesOnCylinderWithLocation (const Handle(GEOM_Object)& theShape,
                                     const Standard_Integer     theShapeType,
                                     const Handle(GEOM_Object)& theAxis,
                                     const Handle(GEOM_Object)& thePnt,
                                     const Standard_Real        theRadius,
                                     const GEOMAlgo_State       theState);

  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
    GetShapesOnSphere (const Handle(GEOM_Object)& theShape,
                       const Standard_Integer     theShapeType,
                       const Handle(GEOM_Object)& theCenter,
                       const Standard_Real        theRadius,
                       const GEOMAlgo_State       theState);

  Standard_EXPORT Handle(TColStd_HSequenceOfInteger)
    GetShapesOnPlaneIDs (const Handle(GEOM_Object)& theShape,
                         const Standard_Integer     theShapeType,
                         const Handle(GEOM_Object)& theAx1,
                         const GEOMAlgo_State       theState);

  Standard_EXPORT Handle(TColStd_HSequenceOfInteger)
    GetShapesOnPlaneWithLocationIDs (const Handle(GEOM_Object)& theShape,
                                     const Standard_Integer     theShapeType,
                                     const Handle(GEOM_Object)& theAx1,
                                     const Handle(GEOM_Object)& thePnt,
                                     const GEOMAlgo_State       theState);

  Standard_EXPORT Handle(TColStd_HSequenceOfInteger)
    GetShapesOnCylinderIDs (const Handle(GEOM_Object)& theShape,
                            const Standard_Integer     theShapeType,
                            const Handle(GEOM_Object)& theAxis,
                            const Standard_Real        theRadius,
                            const GEOMAlgo_State       theState);

  Standard_EXPORT Handle(TColStd_HSequenceOfInteger)
    GetShapesOnCylinderWithLocationIDs (const Handle(GEOM_Object)& theShape,
                                        const Standard_Integer     theShapeType,
                                        const Handle(GEOM_Object)& theAxis,
                                        const Handle(GEOM_Object)& thePnt,
                                        const Standard_Real        theRadius,
                                        const GEOMAlgo_State       theState);

  Standard_EXPORT Handle(TColStd_HSequenceOfInteger)
    GetShapesOnSphereIDs (const Handle(GEOM_Object)& theShape,
                          const Standard_Integer     theShapeType,
                          const Handle(GEOM_Object)& theCenter,
                          const Standard_Real        theRadius,
                          const GEOMAlgo_State       theState);

  /*!
   * \brief Find subshapes complying with given status about quadrangle
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theTopLeftPoint - top left quadrangle corner
    * \param theTopRigthPoint - top right quadrangle corner
    * \param theBottomLeftPoint - bottom left quadrangle corner
    * \param theBottomRigthPoint - bottom right quadrangle corner
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
    GetShapesOnQuadrangle (const Handle(GEOM_Object)& theShape,
                           const Standard_Integer     theShapeType,
                           const Handle(GEOM_Object)& theTopLeftPoint,
                           const Handle(GEOM_Object)& theTopRigthPoint,
                           const Handle(GEOM_Object)& theBottomLeftPoint,
                           const Handle(GEOM_Object)& theBottomRigthPoint,
                           const GEOMAlgo_State       theState);

  /*!
   * \brief Find IDs of subshapes complying with given status about quadrangle
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theTopLeftPoint - top left quadrangle corner
    * \param theTopRigthPoint - top right quadrangle corner
    * \param theBottomLeftPoint - bottom left quadrangle corner
    * \param theBottomRigthPoint - bottom right quadrangle corner
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
  Standard_EXPORT Handle(TColStd_HSequenceOfInteger)
    GetShapesOnQuadrangleIDs (const Handle(GEOM_Object)& theShape,
                              const Standard_Integer     theShapeType,
                              const Handle(GEOM_Object)& theTopLeftPoint,
                              const Handle(GEOM_Object)& theTopRigthPoint,
                              const Handle(GEOM_Object)& theBottomLeftPoint,
                              const Handle(GEOM_Object)& theBottomRigthPoint,
                              const GEOMAlgo_State       theState);

  Standard_EXPORT Handle(GEOM_Object) GetShapesOnCylinderOld (Handle(GEOM_Object)    theShape,
                                              const Standard_Integer theShapeType,
                                              Handle(GEOM_Object)    theAxis,
                                              const Standard_Real    theRadius);

  Standard_EXPORT Handle(GEOM_Object) GetShapesOnSphereOld (Handle(GEOM_Object)    theShape,
                                            const Standard_Integer theShapeType,
                                            Handle(GEOM_Object)    theCenter,
                                            const Standard_Real    theRadius);

  void GetShapeProperties(const TopoDS_Shape aShape, Standard_Real propertiesArray[], gp_Pnt & aPnt);

  Standard_EXPORT Handle(GEOM_Object) GetInPlace (Handle(GEOM_Object) theShapeWhere,
                                                  Handle(GEOM_Object) theShapeWhat);

  Standard_EXPORT Handle(GEOM_Object) GetInPlaceByHistory (Handle(GEOM_Object) theShapeWhere,
                                                           Handle(GEOM_Object) theShapeWhat);

  /*!
   * \brief Searches a shape equal to theWhat in the context of theWhere
   * \param theShapeWhere - a context shap
   * \param theShapeWhat - a sample shape
   * \retval Handle(GEOM_Object) - found shape
   */
  Standard_EXPORT Handle(GEOM_Object) GetSame(const Handle(GEOM_Object)& theShapeWhere,
                                              const Handle(GEOM_Object)& theShapeWhat);

  /*!
   * \brief Find IDs of subshapes complying with given status about surface
    * \param theBox - the box to check state of subshapes against
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
  Standard_EXPORT Handle(TColStd_HSequenceOfInteger)
                              GetShapesOnBoxIDs(const Handle(GEOM_Object)& theBox,
                                                const Handle(GEOM_Object)& theShape,
                                                const Standard_Integer theShapeType,
                                                GEOMAlgo_State theState);

  /*!
   * \brief Find subshapes complying with given status about surface
   * \param theBox - the box to check state of subshapes against
   * \param theShape - the shape to explore
   * \param theShapeType - type of subshape of theShape
   * \param theState - required state
   * \retval Handle(TColStd_HSequenceOfTransient) - found shape objects
   */
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
                                GetShapesOnBox(const Handle(GEOM_Object)& theBox,
                                               const Handle(GEOM_Object)& theShape,
                                               const Standard_Integer theShapeType,
                                               GEOMAlgo_State theState);

  /*!
   * \brief Find IDs of subshapes complying with given status about surface
   * \param theCheckShape - the shape to check state of subshapes against
   * \param theShape - the shape to explore
   * \param theShapeType - type of subshape of theShape
   * \param theState - required state
   * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
  Standard_EXPORT Handle(TColStd_HSequenceOfInteger)
                   GetShapesOnShapeIDs(const Handle(GEOM_Object)& theCheckShape,
                                       const Handle(GEOM_Object)& theShape,
                                       const Standard_Integer theShapeType,
                                       GEOMAlgo_State theState);

  /*!
   * \brief Find subshapes complying with given status about surface
   * \param theCheckShape - the shape to check state of subshapes against
   * \param theShape - the shape to explore
   * \param theShapeType - type of subshape of theShape
   * \param theState - required state
   * \retval Handle(TColStd_HSequenceOfTransient) - found shape objects
   */
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient)
                      GetShapesOnShape(const Handle(GEOM_Object)& theCheckShape,
                                       const Handle(GEOM_Object)& theShape,
                                       const Standard_Integer theShapeType,
                                       GEOMAlgo_State theState);
  Standard_EXPORT Handle(GEOM_Object)
            GetShapesOnShapeAsCompound(const Handle(GEOM_Object)& theCheckShape,
                                       const Handle(GEOM_Object)& theShape,
                                       const Standard_Integer theShapeType,
                                       GEOMAlgo_State theState);

 public:
  /*!
   * \brief Sort shapes in the list by their coordinates.
   * \param SL The list of shapes to sort.
   */
  Standard_EXPORT static void SortShapes (TopTools_ListOfShape& SL);

  /*!
   * \brief Convert TopoDS_COMPSOLID to TopoDS_COMPOUND.
   *
   * If the argument shape is not of type TopoDS_COMPSOLID, this method returns it as is.
   *
   * \param theCompsolid The compsolid to be converted.
   * \retval TopoDS_Shape Returns the resulting compound.
   */
  Standard_EXPORT static TopoDS_Shape CompsolidToCompound (const TopoDS_Shape& theCompsolid);

  /*!
   * \brief Build a triangulation on \a theShape if it is absent.
   * \param theShape The shape to check/build triangulation on.
   * \retval bool Returns false if the shape has no faces, i.e. impossible to build triangulation.
   */
  Standard_EXPORT static bool CheckTriangulation (const TopoDS_Shape& theShape);

 private:
  Handle(GEOM_Object) MakeShape (std::list<Handle(GEOM_Object)>      theShapes,
                                 const Standard_Integer         theObjectType,
                                 const Standard_Integer         theFunctionType,
                                 const TCollection_AsciiString& theMethodName);

// ----------------------------------------------------
// methods common for all GetShapesOnXXX() functions
// ----------------------------------------------------

  /*!
   * \brief Checks if theShapeType parameter of GetShapesOnXXX() is OK
   * \param theShapeType - the shape type to check
   * \retval bool  - result of the check
   */
  bool checkTypeShapesOn(const Standard_Integer theShapeType);

  /*!
   * \brief Creates Geom_Plane
    * \param theAx1 - edge defining plane normal
    * \retval Handle(Geom_Surface) - resulting surface
   */
  Handle(Geom_Surface) makePlane(const TopoDS_Shape& theAx1);

  /*!
   * \brief Creates Geom_CylindricalSurface
   * \param theAx1 - edge defining cylinder axis
   * \param theRadius - cylinder radius
   * \retval Handle(Geom_Surface) - resulting surface
   */
  Handle(Geom_Surface) makeCylinder(const TopoDS_Shape& theAx1,
                                    const Standard_Real theRadius);

  /*!
   * \brief Find IDs of subshapes complying with given status about surface
   * \param theSurface - the surface to check state of subshapes against
   * \param theShape - the shape to explore
   * \param theShapeType - type of subshape of theShape
   * \param theState - required state
   * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
  Handle(TColStd_HSequenceOfInteger)
    getShapesOnSurfaceIDs(const Handle(Geom_Surface)& theSurface,
                          const TopoDS_Shape&         theShape,
                          TopAbs_ShapeEnum            theShapeType,
                          GEOMAlgo_State              theState);

  /*!
   * \brief Find subshapes complying with given status about surface
   * \param theSurface - the surface to check state of subshapes against
   * \param theShape - the shape to explore
   * \param theShapeType - type of subshape of theShape
   * \param theState - required state
   * \param theShapeEntries - outgoing entries like "entry1, entry2, ..."
   * \retval Handle(TColStd_HSequenceOfTransient) - found shape objects
   */
  Handle(TColStd_HSequenceOfTransient)
    getShapesOnSurface(const Handle(Geom_Surface)& theSurface,
                       const Handle(GEOM_Object)&  theShape,
                       TopAbs_ShapeEnum            theShapeType,
                       GEOMAlgo_State              theState,
                       TCollection_AsciiString &   theShapeEntries);

  /*!
   * \brief Find IDs of subshapes complying with given status about quadrangle
   * \param theShape - the shape to explore
   * \param theShapeType - type of subshape of theShape
   * \param theTopLeftPoint - top left quadrangle corner
   * \param theTopRigthPoint - top right quadrangle corner
   * \param theBottomLeftPoint - bottom left quadrangle corner
   * \param theBottomRigthPoint - bottom right quadrangle corner
   * \param theState - required state
   * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
  Handle(TColStd_HSequenceOfInteger)
    getShapesOnQuadrangleIDs (const Handle(GEOM_Object)& theShape,
                              const Standard_Integer     theShapeType,
                              const Handle(GEOM_Object)& theTopLeftPoint,
                              const Handle(GEOM_Object)& theTopRigthPoint,
                              const Handle(GEOM_Object)& theBottomLeftPoint,
                              const Handle(GEOM_Object)& theBottomRigthPoint,
                              const GEOMAlgo_State       theState);

  /*!
   * \brief Find IDs of subshapes complying with given status about surface
    * \param theBox - the box to check state of subshapes against
    * \param theShape - the shape to explore
    * \param theShapeType - type of subshape of theShape
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
  Handle(TColStd_HSequenceOfInteger) getShapesOnBoxIDs(const Handle(GEOM_Object)& theBox,
                                                       const Handle(GEOM_Object)& theShape,
                                                       const Standard_Integer theShapeType,
                                                       GEOMAlgo_State theState);

  /*!
   * \brief Find IDs of subshapes complying with given status about surface
   * \param theCheckShape - the shape to check state of subshapes against
   * \param theShape - the shape to explore
   * \param theShapeType - type of subshape of theShape
   * \param theState - required state
   * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found subshapes
   */
  Handle(TColStd_HSequenceOfInteger) getShapesOnShapeIDs
                                      (const Handle(GEOM_Object)& theCheckShape,
                                       const Handle(GEOM_Object)& theShape,
                                       const Standard_Integer theShapeType,
                                       GEOMAlgo_State theState);

  /*!
   * \brief Find shape objects and their entries by their ids
   * \param theShape - the main shape
   * \param theShapeIDs - theShapeIDs - incoming shape ids
   * \param theShapeEntries - outgoing entries like "entry1, entry2, ..."
   * \retval Handle(TColStd_HSequenceOfTransient) - found shape objects
   */
  Handle(TColStd_HSequenceOfTransient)
    getObjectsShapesOn(const Handle(GEOM_Object)&                theShape,
                       const Handle(TColStd_HSequenceOfInteger)& theShapeIDs,
                       TCollection_AsciiString &                 theShapeEntries);

  /*!
   * \brief Select the object created last
   * \param theObj1 - Object 1
   * \param theObj2 - Object 2
   * \retval Handle(GEOM_Object) - selected object
   */
  static Handle(GEOM_Object) getCreatedLast(const Handle(GEOM_Object)& theObj1,
                                            const Handle(GEOM_Object)& theObj2);
};

#endif
