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

// File:        GEOMAlgo_ClsfSurf.hxx
// Created:     Wed Nov 22 10:41:47 2006
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_ClsfSurf_HeaderFile
#define _GEOMAlgo_ClsfSurf_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
//#include <Handle_GEOMAlgo_ClsfSurf.hxx>
#include <Handle_Geom_Surface.hxx>
#include <GeomAdaptor_Surface.hxx>
#include <GEOMAlgo_Clsf.hxx>
#include <Standard_Boolean.hxx>
#include <Handle_Geom_Curve.hxx>
#include <Geom_Surface.hxx>
#include <Geom_Curve.hxx>

DEFINE_STANDARD_HANDLE(GEOMAlgo_ClsfSurf, GEOMAlgo_Clsf)

//=======================================================================
// class   : GEOMAlgo_ClsfSurf
//purpose  :
//=======================================================================
class GEOMAlgo_ClsfSurf : public GEOMAlgo_Clsf
{
 public:
  Standard_EXPORT
    GEOMAlgo_ClsfSurf();

  Standard_EXPORT
    virtual ~GEOMAlgo_ClsfSurf();

  Standard_EXPORT
    void SetSurface(const Handle(Geom_Surface)& aS) ;

  Standard_EXPORT
    const Handle_Geom_Surface& Surface() const;

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    virtual  void CheckData() ;

  Standard_EXPORT
    virtual  Standard_Boolean CanBeON(const Handle(Geom_Curve)& aC) const;

  Standard_EXPORT
    virtual  Standard_Boolean CanBeON(const Handle(Geom_Surface)& aST) const;

  DEFINE_STANDARD_RTTI(GEOMAlgo_ClsfSurf);

 protected:
  Handle_Geom_Surface myS;
  GeomAdaptor_Surface myGAS;
};
#endif
