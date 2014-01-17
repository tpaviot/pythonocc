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
// File:        GEOMAlgo_RemoverWebs.hxx
// Created:     Thu Mar 28 08:02:59 2013
// Author:      Peter KURNEV
//              <pkv@petrex>
//
// The algorithm is intended to build result [solid(s)] 
// from given set of solids [argument]. 
// The result cosists of: 
//  - outer faces from the argument;
//  - other internal parts of the argument;
// The result does not contain the faces of the argument
// that becomes inner faces (webs) for the result.

#ifndef _GEOMAlgo_RemoverWebs_HeaderFile
#define _GEOMAlgo_RemoverWebs_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
//
#include <GEOMAlgo_ShapeAlgo.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

//=======================================================================
//function : GEOMAlgo_RemoverWebs
//purpose  :
//=======================================================================
class GEOMAlgo_RemoverWebs : public GEOMAlgo_ShapeAlgo
{
 public:
  Standard_EXPORT
    GEOMAlgo_RemoverWebs();

  Standard_EXPORT
    virtual ~GEOMAlgo_RemoverWebs();

  Standard_EXPORT
    virtual  void Perform() ;

protected:
  Standard_EXPORT
    virtual void CheckData() ;
  
  
  Standard_EXPORT
    void BuildSolid() ;

  Standard_EXPORT
    static void AddInternalShapes(const TopTools_ListOfShape& ,
                                  const TopTools_IndexedMapOfShape& );
  //
};

#endif
