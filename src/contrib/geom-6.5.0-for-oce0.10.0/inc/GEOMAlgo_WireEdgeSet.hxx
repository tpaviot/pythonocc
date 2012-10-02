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

// File:        GEOMAlgo_WireEdgeSet.hxx
// Created:
// Author:      Peter KURNEV
//              <pkv@irinox>
//

#ifndef _GEOMAlgo_WireEdgeSet_HeaderFile
#define _GEOMAlgo_WireEdgeSet_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopoDS_Face.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopoDS_Shape.hxx>

//=======================================================================
//function : GEOMAlgo_WireEdgeSet
//purpose  :
//=======================================================================
class GEOMAlgo_WireEdgeSet  {
 public:
  Standard_EXPORT
    GEOMAlgo_WireEdgeSet();

  Standard_EXPORT
    void Clear() ;

  Standard_EXPORT
    void SetFace(const TopoDS_Face& aF) ;

  Standard_EXPORT
    const TopoDS_Face& Face() const;

  Standard_EXPORT
    void AddStartElement(const TopoDS_Shape& sS) ;

  Standard_EXPORT
    const TopTools_ListOfShape& StartElements() const;

  Standard_EXPORT
    void AddShape(const TopoDS_Shape& sS) ;

  Standard_EXPORT
    const TopTools_ListOfShape& Shapes() const;

protected:
  TopoDS_Face myFace;
  TopTools_ListOfShape myStartShapes;
  TopTools_ListOfShape myShapes;
};
#endif
