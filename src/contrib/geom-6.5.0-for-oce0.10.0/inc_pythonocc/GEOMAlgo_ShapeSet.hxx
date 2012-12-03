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

// File:        GEOMAlgo_ShapeSet.hxx
// Created:
// Author:      Peter KURNEV
//
#ifndef _GEOMAlgo_ShapeSet_HeaderFile
#define _GEOMAlgo_ShapeSet_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopTools_MapOfOrientedShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <Standard_Boolean.hxx>
#include <TopoDS_Shape.hxx>

//! Implementation some formal <br>
//!          opereations with Set of shapes <br>
//=======================================================================
//class    : GEOMAlgo_ShapeSet
//purpose  :
//=======================================================================
class GEOMAlgo_ShapeSet
{
 public:
  //! Empty constructor <br>
  Standard_EXPORT
    GEOMAlgo_ShapeSet();

  //! Adds shapes from the list theLS to the Set <br>
  Standard_EXPORT
    void Add(const TopTools_ListOfShape& theLS) ;

  //! Adds shape theShape to the Set <br>
  Standard_EXPORT
    void Add(const TopoDS_Shape& theShape) ;

  //! Adds sub-shapes of shape theShape, <br>
  //!          that have type theType to the Set <br>
  Standard_EXPORT
    void Add(const TopoDS_Shape& theShape,const TopAbs_ShapeEnum theType) ;

  //! Removes shapes of theSet from the Set <br>
  Standard_EXPORT
    void Subtract(const GEOMAlgo_ShapeSet& theSet) ;

  //! Clears internal fields <br>
  Standard_EXPORT     void Clear() ;

  //! Returns True if the Set contains <br>
  //!          all shapes of theSet <br>
  Standard_EXPORT
    Standard_Boolean Contains(const GEOMAlgo_ShapeSet& theSet) const;

  //! Returns the Set <br>
  Standard_EXPORT
    const TopTools_ListOfShape& GetSet() const;

  //! Returns True if the Set==theSet <br>
  Standard_EXPORT
    Standard_Boolean IsEqual(const GEOMAlgo_ShapeSet& theOther) const;

  Standard_Boolean operator ==(const GEOMAlgo_ShapeSet& theOther) const {
    return IsEqual(theOther);
  }

 protected:
  TopTools_MapOfOrientedShape myMap;
  TopTools_ListOfShape myList;
};
#endif
