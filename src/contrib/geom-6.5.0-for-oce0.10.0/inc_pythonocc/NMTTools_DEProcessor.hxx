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

// File:        NMTTools_DEProcessor.hxx
// Created:     Wed Sep 12 12:10:52 2001
// Author:      Peter KURNEV
//              <pkv@irinox>

#ifndef _NMTTools_DEProcessor_HeaderFile
#define _NMTTools_DEProcessor_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <NMTTools_PPaveFiller.hxx>
#include <NMTDS_PShapesDataStructure.hxx>
#include <Standard_Boolean.hxx>
#include <BOPTools_IndexedDataMapOfIntegerDEInfo.hxx>
#include <NMTTools_PaveFiller.hxx>
#include <Standard_Integer.hxx>
#include <Standard_Real.hxx>


//! <br>
//!  The  Algorithm to compute and store in interferences' pool <br>
//! and in the Data  Structure  the following values <br>
//! for degenerated edges <br>
//!         1.  Paves/Pave set(s) <br>
//!         2.  Split parts <br>
//!         3.  States (3D) for split parts <br>
//! <br>
//=======================================================================
//class    : NMTTools_DEProcessor
//purpose  :
//=======================================================================
class NMTTools_DEProcessor  {
public:



//! Constructor <br>
//! <br>
//! Constructor <br>
//! <br>
  Standard_EXPORT
    NMTTools_DEProcessor(NMTTools_PaveFiller& aFiller);

//! Launches the processor <br>
  Standard_EXPORT
    void Do() ;

//! Returns TRUE if it is Ok <br>
  Standard_EXPORT
    Standard_Boolean IsDone() const;



protected:
  Standard_EXPORT
    void FindDegeneratedEdges() ;

  Standard_EXPORT
    void DoPaves() ;

  Standard_EXPORT
    void FindPaveBlocks(const Standard_Integer nED,
			const Standard_Integer nVD,
			const Standard_Integer nFD,
			BOPTools_ListOfPaveBlock& aLPB) ;

  Standard_EXPORT
    void FillPaveSet(const Standard_Integer nED,
		     const Standard_Integer nVD,
		     const Standard_Integer nFD,
		     const BOPTools_ListOfPaveBlock& aLPB) ;

  Standard_EXPORT
    void FillSplitEdgesPool(const Standard_Integer nED) ;

  Standard_EXPORT
    void MakeSplitEdges(const Standard_Integer nED,
			const Standard_Integer nFD) ;

  Standard_EXPORT
    void MakeSplitEdge(const TopoDS_Edge& aS1,
		       const TopoDS_Face& aF,
		       const TopoDS_Vertex& aV1,
		       const Standard_Real aP1,
		       const TopoDS_Vertex& aV2,
		       const Standard_Real aP2,
		       TopoDS_Edge& aNewEdge) ;


  NMTTools_PPaveFiller myFiller;
  NMTDS_PShapesDataStructure myDS;
  Standard_Boolean myIsDone;
  BOPTools_IndexedDataMapOfIntegerDEInfo myDEMap;
};
#endif
