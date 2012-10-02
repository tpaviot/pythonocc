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

// File:        GEOMAlgo_BuilderArea.hxx
// Created:
// Author:      Peter KURNEV
//

#ifndef _GEOMAlgo_BuilderArea_HeaderFile
#define _GEOMAlgo_BuilderArea_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_MapOfOrientedShape.hxx>
#include <Handle_IntTools_Context.hxx>
#include <GEOMAlgo_Algo.hxx>
#include <IntTools_Context.hxx>

//! The root class for algorithms to build <br>
//!          faces/solids from set of edges/faces <br>
//=======================================================================
//class    : GEOMAlgo_BuilderArea
//purpose  :
//=======================================================================
class GEOMAlgo_BuilderArea  : public GEOMAlgo_Algo
{
 public:
  //! Sets cashed geometrical tools <br>
  Standard_EXPORT
    void SetContext(const Handle(IntTools_Context)& theContext) ;

  //! Returns cashed geometrical tools <br>
  Standard_EXPORT
    const Handle_IntTools_Context& Context() const;

  //! Sets edges/faces to process <br>
  Standard_EXPORT
    void SetShapes(const TopTools_ListOfShape& theLS) ;

  //! Returns edges/faces to process <br>
  Standard_EXPORT
    const TopTools_ListOfShape& Shapes() const;

  //! Returns wires/shells that have been built <br>
  Standard_EXPORT
    const TopTools_ListOfShape& Loops() const;

  //! Returns faces/solids that have been built <br>
  Standard_EXPORT
    const TopTools_ListOfShape& Areas() const;

  Standard_EXPORT
    virtual  void Perform() ;

 protected:
  //!  Empty  constructor <br>
  Standard_EXPORT
    GEOMAlgo_BuilderArea();

  Standard_EXPORT
    virtual ~GEOMAlgo_BuilderArea();
  //!  Collect the edges/faces that <br>
  //!           a) are internal <br>
  //!           b) are the same and have different orientation <br>

  Standard_EXPORT
    virtual  void PerformShapesToAvoid() ;

  //! Build draft faces/shells <br>
  //!          a)myLoops - draft faces/shells that consist of <br>
  //!                      boundary edges/faces <br>
  //!          b)myLoopsInternal - draft faces/shells that contains <br>
  //!                               inner edges/faces <br>
  Standard_EXPORT
    virtual  void PerformLoops() ;
  //! Build draft faces/solids that contains boundary faces <br>

  Standard_EXPORT
    virtual  void PerformAreas() ;

  //! Build finalized faces/solids with internal wires/shells <br>
  Standard_EXPORT
    virtual  void PerformInternalShapes() ;

  TopTools_ListOfShape myShapes;
  TopTools_ListOfShape myLoops;
  TopTools_ListOfShape myLoopsInternal;
  TopTools_MapOfOrientedShape myShapesToAvoid;
  TopTools_ListOfShape myAreas;
  Handle_IntTools_Context myContext;
};
#endif
