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

// File:        GEOMAlgo_ClsfBox.hxx
// Created:     Wed Nov 22 10:41:47 2006
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_ClsfBox_HeaderFile
#define _GEOMAlgo_ClsfBox_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
//#include <Handle_GEOMAlgo_ClsfBox.hxx>
#include <TopoDS_Shape.hxx>
#include <GeomAdaptor_Surface.hxx>
#include <GEOMAlgo_Clsf.hxx>
#include <Standard_Boolean.hxx>
#include <Handle_Geom_Curve.hxx>
#include <Handle_Geom_Surface.hxx>
#include <Geom_Curve.hxx>
#include <Geom_Surface.hxx>

DEFINE_STANDARD_HANDLE(GEOMAlgo_ClsfBox, GEOMAlgo_Clsf)

//=======================================================================
//function : GEOMAlgo_ClsfBox
//purpose  :
//=======================================================================
class GEOMAlgo_ClsfBox : public GEOMAlgo_Clsf
{
 public:
  Standard_EXPORT
    GEOMAlgo_ClsfBox();

  Standard_EXPORT
    virtual ~GEOMAlgo_ClsfBox();

  Standard_EXPORT
    void SetBox(const TopoDS_Shape& aS) ;

  Standard_EXPORT
    const TopoDS_Shape& Box() const;

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    virtual  void CheckData() ;

  Standard_EXPORT
    virtual  Standard_Boolean CanBeON(const Handle(Geom_Curve)& aC) const;

  Standard_EXPORT
    virtual  Standard_Boolean CanBeON(const Handle(Geom_Surface)& aST) const;

  DEFINE_STANDARD_RTTI(GEOMAlgo_ClsfBox)

 protected:
  TopoDS_Shape myBox;
  GeomAdaptor_Surface myGAS[6];


private:




};





// other Inline functions and methods (like "C++: function call" methods)


#endif
