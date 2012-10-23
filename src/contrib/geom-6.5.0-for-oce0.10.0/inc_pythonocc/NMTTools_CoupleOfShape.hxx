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

// File:        NMTTools_CoupleOfShape.hxx
// Created:     Wed Jan 28 15:06:11 2004
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _NMTTools_CoupleOfShape_HeaderFile
#define _NMTTools_CoupleOfShape_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopoDS_Shape.hxx>

//=======================================================================
//class    : NMTTools_CoupleOfShape
//purpose  :
//=======================================================================
class NMTTools_CoupleOfShape
{
 public:
  Standard_EXPORT
    NMTTools_CoupleOfShape();

  Standard_EXPORT
    void SetShape1(const TopoDS_Shape& aS) ;

  Standard_EXPORT
    void SetShape2(const TopoDS_Shape& aS) ;

  Standard_EXPORT
    const TopoDS_Shape& Shape1() const;

  Standard_EXPORT
    const TopoDS_Shape& Shape2() const;

 protected:
  TopoDS_Shape myShape1;
  TopoDS_Shape myShape2;
};
#endif
