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

// File:        GEOMAlgo_SurfaceTools.hxx
// Created:     Thu Jan 27 11:05:16 2005
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_SurfaceTools_HeaderFile
#define _GEOMAlgo_SurfaceTools_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Boolean.hxx>
#include <Handle_Geom_Surface.hxx>
#include <Standard_Real.hxx>
#include <TopAbs_State.hxx>
#include <GEOMAlgo_State.hxx>
#include <Standard_Integer.hxx>
#include <Geom_Surface.hxx>
#include <gp_Pnt.hxx>
#include <gp_Cylinder.hxx>
#include <GeomAdaptor_Surface.hxx>
#include <gp_Pln.hxx>
#include <gp_Sphere.hxx>


//=======================================================================
//function : GEOMAlgo_SurfaceTools
//purpose  :
//=======================================================================
class GEOMAlgo_SurfaceTools
{
 public:
  Standard_EXPORT
    static  Standard_Boolean IsAnalytic(const Handle(Geom_Surface)& aS) ;

  Standard_EXPORT
    static  Standard_Boolean IsCoaxial(const gp_Pnt& aP1,
                                       const gp_Pnt& aP2,
                                       const gp_Cylinder& aCyl,
                                       const Standard_Real aTol) ;

  Standard_EXPORT
    static  Standard_Boolean IsConformState(const TopAbs_State aST1,
                                            const GEOMAlgo_State aST2) ;

  Standard_EXPORT
    static  Standard_Integer GetState(const gp_Pnt& aP,
                                      const GeomAdaptor_Surface& aS,
                                      const Standard_Real aTol,TopAbs_State& aSt) ;

  Standard_EXPORT
    static  Standard_Integer GetState(const gp_Pnt& aP,
                                      const Handle(Geom_Surface)& aS,
                                      const Standard_Real aTol,
                                      TopAbs_State& aSt) ;

  Standard_EXPORT
    static  TopAbs_State ReverseState(const TopAbs_State aSt) ;

};
#endif
