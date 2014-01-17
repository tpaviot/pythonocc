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

// File:        GEOMAlgo_SolidSolid.hxx
// Created:     Wed Jan 26 12:06:26 2005
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_SolidSolid_HeaderFile
#define _GEOMAlgo_SolidSolid_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopoDS_Shape.hxx>
#include <GEOMAlgo_ShellSolid.hxx>

//=======================================================================
//function : GEOMAlgo_SolidSolid
//purpose  :
//=======================================================================
class GEOMAlgo_SolidSolid  : public GEOMAlgo_ShellSolid
{
 public:
  Standard_EXPORT
    GEOMAlgo_SolidSolid();

  Standard_EXPORT
    virtual ~GEOMAlgo_SolidSolid();

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    void SetShape2(const TopoDS_Shape& aS) ;

  Standard_EXPORT
    const TopoDS_Shape& Shape2() const;

protected:
  Standard_EXPORT
    virtual  void BuildResult() ;


  TopoDS_Shape myS2;
};
#endif
