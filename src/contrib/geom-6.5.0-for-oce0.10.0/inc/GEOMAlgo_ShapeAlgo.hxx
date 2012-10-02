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

// File:        GEOMAlgo_ShapeAlgo.hxx
// Created:     Tue Dec  7 12:06:54 2004
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_ShapeAlgo_HeaderFile
#define _GEOMAlgo_ShapeAlgo_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopoDS_Shape.hxx>
#include <Standard_Real.hxx>
#include <Handle_IntTools_Context.hxx>
#include <GEOMAlgo_Algo.hxx>

//=======================================================================
//class    : GEOMAlgo_ShapeAlgo
//purpose  :
//=======================================================================
class GEOMAlgo_ShapeAlgo  : public GEOMAlgo_Algo
{
 public:

  //! Sets cashed geometrical tools <br>
  Standard_EXPORT
    void SetContext(const Handle(IntTools_Context)& theContext) ;

  //! Returns cashed geometrical tools <br>
  Standard_EXPORT
    const Handle_IntTools_Context& Context() const;

  Standard_EXPORT
    void SetShape(const TopoDS_Shape& aS) ;

  Standard_EXPORT
    void SetTolerance(const Standard_Real aT) ;

  Standard_EXPORT
    const TopoDS_Shape& Shape() const;

  Standard_EXPORT
    Standard_Real Tolerance() const;

  Standard_EXPORT
    const TopoDS_Shape& Result() const;

  Standard_EXPORT
    virtual  void Perform() ;

protected:
  Standard_EXPORT
    GEOMAlgo_ShapeAlgo();

  Standard_EXPORT
    virtual ~GEOMAlgo_ShapeAlgo();


  TopoDS_Shape myShape;
  Standard_Real myTolerance;
  TopoDS_Shape myResult;
  Handle_IntTools_Context myContext;
};
#endif
