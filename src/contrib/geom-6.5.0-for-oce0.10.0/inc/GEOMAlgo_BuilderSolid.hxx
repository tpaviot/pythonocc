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

// File:        GEOMAlgo_BuilderSolid.hxx
// Created:
// Author:      Peter KURNEV
//
#ifndef _GEOMAlgo_BuilderSolid_HeaderFile
#define _GEOMAlgo_BuilderSolid_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <GEOMAlgo_BuilderArea.hxx>

//! The algorithm to build solids from set of faces <br>
//=======================================================================
//function : GEOMAlgo_BuilderSolid
//purpose  :
//=======================================================================
class GEOMAlgo_BuilderSolid  : public GEOMAlgo_BuilderArea
{
 public:
  //!  Empty  constructor <br>
  Standard_EXPORT
    GEOMAlgo_BuilderSolid();

  Standard_EXPORT
    virtual ~GEOMAlgo_BuilderSolid();

  //!  Performs the algorithm <br>
  Standard_EXPORT
    virtual  void Perform() ;

 protected:
  //!  Collect the faces that <br>
  //!           a) are internal <br>
  //!           b) are the same and have different orientation <br>
  Standard_EXPORT
    virtual  void PerformShapesToAvoid() ;

  //! Build draft shells <br>
  //!          a)myLoops - draft shells that consist of <br>
  //!                       boundary faces <br>
  //!          b)myLoopsInternal - draft shells that contains <br>
  //!                               inner faces <br>
  Standard_EXPORT
    virtual  void PerformLoops() ;

  //! Build draft solids that contains boundary faces <br>
  Standard_EXPORT
    virtual  void PerformAreas() ;

  //! Build finalized solids with internal shells <br>
  Standard_EXPORT
    virtual  void PerformInternalShapes() ;

};
#endif
