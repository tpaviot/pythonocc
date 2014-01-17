
// Copyright (C) 2007-2013  CEA/DEN, EDF R&D, OPEN CASCADE
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
// File:        NMTAlgo_WESCorrector.hxx
// Created:
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_WESCorrector_HeaderFile
#define _GEOMAlgo_WESCorrector_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <GEOMAlgo_PWireEdgeSet.hxx>
#include <GEOMAlgo_WireEdgeSet.hxx>
#include <XBOP_ListOfConnexityBlock.hxx>
#include <GEOMAlgo_Algo.hxx>


//!  The algorithm to change the Wire Edges Set (WES) contents. <br>
//!   The NewWES will contain only wires instead of wires and edges. <br>
//=======================================================================
//class    : GEOMAlgo_WESCorrector
//purpose  :
//=======================================================================
class GEOMAlgo_WESCorrector  : public GEOMAlgo_Algo
{
 public:
  //! Empty constructor; <br>
  //! <br>
  Standard_EXPORT
    GEOMAlgo_WESCorrector();

  Standard_EXPORT
    virtual ~GEOMAlgo_WESCorrector();

  //! Modifier <br>
  Standard_EXPORT
    void SetWES(const GEOMAlgo_WireEdgeSet& aWES) ;

  //! Performs the algorithm that  consists  of  two  steps <br>
  //! 1. Make conexity blocks (  DoConnexityBlocks()  ) <br>
  //! 2. Make corrections     (  DoCorrections()  ) <br>
  Standard_EXPORT
    virtual  void Perform() ;

  //! Selector <br>
  Standard_EXPORT
    GEOMAlgo_WireEdgeSet& WES() ;

  //! Selector <br>
  Standard_EXPORT
    GEOMAlgo_WireEdgeSet& NewWES() ;

protected:
  Standard_EXPORT
    void DoConnexityBlocks() ;

  Standard_EXPORT
    void DoCorrections() ;


  GEOMAlgo_PWireEdgeSet myWES;
  GEOMAlgo_WireEdgeSet myNewWES;
  XBOP_ListOfConnexityBlock myConnexityBlocks;
};

#endif
