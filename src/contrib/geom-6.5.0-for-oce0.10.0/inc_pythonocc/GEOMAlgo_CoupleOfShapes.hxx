// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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
// File:        GEOMAlgo_CoupleOfShapes.hxx
// Created:     Wed Dec 15 13:03:52 2004
// Author:      Peter KURNEV
//              <pkv@irinox>
//

#ifndef _GEOMAlgo_CoupleOfShapes_HeaderFile
#define _GEOMAlgo_CoupleOfShapes_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopoDS_Shape.hxx>

//=======================================================================
//class    : GEOMAlgo_CoupleOfShapes
//purpose  :
//=======================================================================
class GEOMAlgo_CoupleOfShapes
{
 public:
  Standard_EXPORT
    GEOMAlgo_CoupleOfShapes();

  Standard_EXPORT
    void SetShapes(const TopoDS_Shape& aS1,const TopoDS_Shape& aS2) ;

  Standard_EXPORT
    void SetShape1(const TopoDS_Shape& aS1) ;

  Standard_EXPORT
    void SetShape2(const TopoDS_Shape& aS2) ;

  Standard_EXPORT
    void Shapes(TopoDS_Shape& aS1,TopoDS_Shape& aS2) const;

  Standard_EXPORT
    const TopoDS_Shape& Shape1() const;

  Standard_EXPORT
    const TopoDS_Shape& Shape2() const;

protected:
  TopoDS_Shape myShape1;
  TopoDS_Shape myShape2;
};
#endif
