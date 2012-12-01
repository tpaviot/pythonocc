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

// File:        GEOMAlgo_ShapeSolid.hxx
// Created:     Thu Jan 13 12:54:48 2005
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_ShapeSolid_HeaderFile
#define _GEOMAlgo_ShapeSolid_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopTools_ListOfShape.hxx>
#include <Standard_Integer.hxx>
#include <BOPTools_PDSFiller.hxx>
#include <GEOMAlgo_Algo.hxx>
#include <TopAbs_State.hxx>
#include <BOPTools_DSFiller.hxx>

//=======================================================================
//function : GEOMAlgo_ShapeSolid
//purpose  :
//=======================================================================
class GEOMAlgo_ShapeSolid  : public GEOMAlgo_Algo
{
 public:
  Standard_EXPORT
    void SetFiller(const BOPTools_DSFiller& aDSF) ;

  Standard_EXPORT
    virtual ~GEOMAlgo_ShapeSolid();

  Standard_EXPORT
    const TopTools_ListOfShape& Shapes(const TopAbs_State aState) const;

protected:
  Standard_EXPORT
    GEOMAlgo_ShapeSolid();

  Standard_EXPORT
    virtual  void BuildResult()  = 0;

  Standard_EXPORT
    virtual  void Prepare()  = 0;


  TopTools_ListOfShape myLSIN;
  TopTools_ListOfShape myLSOUT;
  TopTools_ListOfShape myLSON;
  Standard_Integer myRank;
  BOPTools_PDSFiller myDSFiller;
};
#endif
