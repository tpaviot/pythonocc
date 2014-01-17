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

// File:        GEOMAlgo_GlueDetector.hxx
// Created:     Wed Dec 15 11:08:09 2004
// Author:      Peter KURNEV

#ifndef _GEOMAlgo_GlueAnalyser_HeaderFile
#define _GEOMAlgo_GlueAnalyser_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <GEOMAlgo_ListOfCoupleOfShapes.hxx>
#include <TopTools_ListOfShape.hxx>
#include <GEOMAlgo_Gluer.hxx>
#include <Standard_Boolean.hxx>
#include <TopAbs_ShapeEnum.hxx>

//=======================================================================
//function : GEOMAlgo_GlueAnalyser
//purpose  :
//=======================================================================
class GEOMAlgo_GlueAnalyser  : public GEOMAlgo_Gluer
{
 public:
  Standard_EXPORT
    GEOMAlgo_GlueAnalyser();

  Standard_EXPORT
    virtual ~GEOMAlgo_GlueAnalyser();

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    Standard_Boolean HasSolidsToGlue() const;

  Standard_EXPORT
    const GEOMAlgo_ListOfCoupleOfShapes& SolidsToGlue() const;

  Standard_EXPORT
    Standard_Boolean HasSolidsAlone() const;

  Standard_EXPORT
    const TopTools_ListOfShape& SolidsAlone() const;

 protected:
  Standard_EXPORT
    void DetectVertices() ;

  Standard_EXPORT
    void DetectEdges() ;

  Standard_EXPORT
    void DetectFaces() ;

  Standard_EXPORT
    void DetectShapes(const TopAbs_ShapeEnum aType) ;

  Standard_EXPORT
    void DetectSolids() ;


  GEOMAlgo_ListOfCoupleOfShapes mySolidsToGlue;
  TopTools_ListOfShape mySolidsAlone;
};

#endif
