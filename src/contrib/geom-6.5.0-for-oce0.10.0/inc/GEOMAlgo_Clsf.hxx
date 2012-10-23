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

// File:        GEOMAlgo_Clsf.hxx
// Created:     Wed Nov 22 10:23:04 2006
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_Clsf_HeaderFile
#define _GEOMAlgo_Clsf_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
//#include <Handle_GEOMAlgo_Clsf.hxx>
#include <TopAbs_State.hxx>
#include <gp_Pnt.hxx>
#include <Standard_Real.hxx>
#include <GEOMAlgo_HAlgo.hxx>
#include <Standard_Boolean.hxx>
#include <Handle_Geom_Curve.hxx>
#include <Handle_Geom_Surface.hxx>
#include <Geom_Curve.hxx>
#include <Geom_Surface.hxx>

DEFINE_STANDARD_HANDLE(GEOMAlgo_Clsf, GEOMAlgo_HAlgo);

//=======================================================================
//class    : GEOMAlgo_Clsf
//purpose  :
//=======================================================================
class GEOMAlgo_Clsf : public GEOMAlgo_HAlgo
{
 public:
  Standard_EXPORT
    void SetPnt(const gp_Pnt& aP) ;

  Standard_EXPORT
    const gp_Pnt& Pnt() const;

  Standard_EXPORT
    void SetTolerance(const Standard_Real aT) ;

  Standard_EXPORT
    Standard_Real Tolerance() const;

  Standard_EXPORT
    TopAbs_State State() const;

  Standard_EXPORT
    virtual  Standard_Boolean CanBeON(const Handle(Geom_Curve)& aCT) const;

  Standard_EXPORT
    virtual  Standard_Boolean CanBeON(const Handle(Geom_Surface)& aST) const;

  DEFINE_STANDARD_RTTI(GEOMAlgo_Clsf);

 protected:
  Standard_EXPORT
    GEOMAlgo_Clsf();

  Standard_EXPORT
    virtual ~GEOMAlgo_Clsf();

  TopAbs_State myState;
  gp_Pnt myPnt;
  Standard_Real myTolerance;
};
#endif
