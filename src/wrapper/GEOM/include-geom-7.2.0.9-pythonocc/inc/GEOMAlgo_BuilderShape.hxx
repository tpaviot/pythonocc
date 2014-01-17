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

// File:        GEOMAlgo_BuilderShape.hxx
// Created:
// Author:      Peter KURNEV
//
#ifndef _GEOMAlgo_BuilderShape_HeaderFile
#define _GEOMAlgo_BuilderShape_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <Standard_Boolean.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <GEOMAlgo_Algo.hxx>


//! Root class for algorithms that has shape as result <br>
//=======================================================================
//class    : GEOMAlgo_BuilderShape
//purpose  :
//=======================================================================
class GEOMAlgo_BuilderShape  : public GEOMAlgo_Algo
{
 public:
  //!  Returns the result of algorithm <br>
  Standard_EXPORT
    const TopoDS_Shape& Shape() const;

  //! Returns the list of shapes generated from the <br>
  //!          shape theS. <br>
  Standard_EXPORT
    virtual const TopTools_ListOfShape& Generated(const TopoDS_Shape& theS) ;

  //! Returns the list of shapes modified from the <br>
  //!          shape theS. <br>
  Standard_EXPORT
    virtual const TopTools_ListOfShape& Modified(const TopoDS_Shape& theS) ;

  //! Returns true if the shape theS has been deleted. <br>
  Standard_EXPORT
    virtual  Standard_Boolean IsDeleted(const TopoDS_Shape& theS) ;

  //! Returns true if the at least one shape(or sub-shape) <br>
  //!          of arguments has been deleted. <br>
  Standard_EXPORT
    Standard_Boolean HasDeleted() const;

  //! Returns true if the at least one shape(or sub-shape) <br>
  //!          of arguments has generated shapes. <br>
  Standard_EXPORT
    Standard_Boolean HasGenerated() const;

  //! Returns true if the at least one shape(or sub-shape) <br>
  //!          of arguments has modified shapes. <br>
  Standard_EXPORT
    Standard_Boolean HasModified() const;

  Standard_EXPORT
    const TopTools_IndexedDataMapOfShapeListOfShape& ImagesResult() const;

protected:
  //! Empty constructor <br>
  Standard_EXPORT
    GEOMAlgo_BuilderShape();

  Standard_EXPORT
    virtual ~GEOMAlgo_BuilderShape();

  //!  Prepare information for history support <br>
  Standard_EXPORT
    virtual  void PrepareHistory() ;


  TopoDS_Shape myShape;
  TopTools_ListOfShape myHistShapes;
  TopTools_MapOfShape myMapShape;
  Standard_Boolean myHasDeleted;
  Standard_Boolean myHasGenerated;
  Standard_Boolean myHasModified;
  TopTools_IndexedDataMapOfShapeListOfShape myImagesResult;
};
#endif
