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

// File:        GEOMAlgo_WireSplitter.hxx
// Author:      Peter KURNEV

#ifndef _GEOMAlgo_WireSplitter_HeaderFile
#define _GEOMAlgo_WireSplitter_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopoDS_Face.hxx>
#include <Standard_Boolean.hxx>
#include <BOPTColStd_ListOfListOfShape.hxx>
#include <BOP_IndexedDataMapOfVertexListEdgeInfo.hxx>
#include <TopTools_ListOfShape.hxx>
#include <GEOMAlgo_Algo.hxx>

//!  the algorithm to split multiconnexed set of edges <br>
//!  wires on a face onto simple connexed wires <br>
//!  . <br>
//=======================================================================
//class    : GEOMAlgo_WireSplitter
//purpose  :
//=======================================================================
class GEOMAlgo_WireSplitter  : public GEOMAlgo_Algo
{
public:
  Standard_EXPORT
    GEOMAlgo_WireSplitter();

  Standard_EXPORT
    virtual ~GEOMAlgo_WireSplitter();

  Standard_EXPORT
    void SetFace(const TopoDS_Face& aF) ;

  Standard_EXPORT
    void SetEdges(const TopTools_ListOfShape& aLE) ;

  Standard_EXPORT
    const TopTools_ListOfShape& Edges() const;

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    Standard_Boolean IsNothingToDo() const;

  Standard_EXPORT
    const TopoDS_Face& Face() const;

  Standard_EXPORT
    const BOPTColStd_ListOfListOfShape& Shapes() const;

protected:
  TopoDS_Face myFace;
  Standard_Boolean myIsDone;
  Standard_Boolean myNothingToDo;
  BOPTColStd_ListOfListOfShape myShapes;
  BOP_IndexedDataMapOfVertexListEdgeInfo mySmartMap;
  TopTools_ListOfShape myEdges;
};

#endif
