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

// File:        GEOMAlgo_ShellSolid.hxx
// Created:     Wed Jan 12 12:49:45 2005
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_ShellSolid_HeaderFile
#define _GEOMAlgo_ShellSolid_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <GEOMAlgo_ShapeSolid.hxx>

//=======================================================================
//class    : GEOMAlgo_ShellSolid
//purpose  :
//=======================================================================
class GEOMAlgo_ShellSolid  : public GEOMAlgo_ShapeSolid
{
 public:
  Standard_EXPORT
    GEOMAlgo_ShellSolid();

  Standard_EXPORT
    virtual ~GEOMAlgo_ShellSolid();

  Standard_EXPORT
    virtual  void Perform() ;

 protected:
  Standard_EXPORT
    virtual  void Prepare() ;

  Standard_EXPORT
    virtual  void BuildResult() ;

  Standard_EXPORT
    void DetectSDFaces() ;
};
#endif
