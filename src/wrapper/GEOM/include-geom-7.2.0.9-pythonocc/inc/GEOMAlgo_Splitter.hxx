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
//  File:   GEOMAlgo_Splitter.hxx
//
//  Author: Peter KURNEV
//
#ifndef _GEOMAlgo_Splitter_HeaderFile
#define _GEOMAlgo_Splitter_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <Standard_Integer.hxx>
#include <GEOMAlgo_Builder.hxx>
#include <TopoDS_Shape.hxx>

//! Implementation of Gluing Operation Algorithm (GA) <br>
//=======================================================================
//function : GEOMAlgo_Splitter
//purpose  :
//=======================================================================
class GEOMAlgo_Splitter  : public GEOMAlgo_Builder
{
 public:

  //!  Empty constructor <br>
  Standard_EXPORT
    GEOMAlgo_Splitter();

  Standard_EXPORT
    virtual ~GEOMAlgo_Splitter();

  //!  Clears internal fields and arguments <br>
  Standard_EXPORT
    virtual  void Clear() ;

  //!  Adds Tool argument theShape of the operation <br>
  Standard_EXPORT
    virtual  void AddTool(const TopoDS_Shape& theShape) ;

  //!  Returns the arguments of the operation <br>
  Standard_EXPORT
    const TopTools_ListOfShape& Tools() const;

  Standard_EXPORT
    void SetLimit(const TopAbs_ShapeEnum aLimit) ;

  Standard_EXPORT
    TopAbs_ShapeEnum Limit() const;

  Standard_EXPORT
    void SetLimitMode(const Standard_Integer aLimitMode) ;

  Standard_EXPORT
    Standard_Integer LimitMode() const;
  //!  Adds Tool arguments of the operation as <br>
  //!           shapes of upper level of container shape theShape <br>
  //! ===================================================== <br>
  Standard_EXPORT
    void AddToolCompound(const TopoDS_Shape& theShape) ;

 protected:
  //! Build the resulting shapes of type theType <br>
  Standard_EXPORT
    virtual  void BuildResult(const TopAbs_ShapeEnum theType) ;
  //!  Provides post-tratment actions <br>
  Standard_EXPORT
    virtual  void PostTreat() ;


  TopTools_ListOfShape myTools;
  TopTools_MapOfShape myMapTools;
  TopAbs_ShapeEnum myLimit;
  Standard_Integer myLimitMode;
};
#endif
