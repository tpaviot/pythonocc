// Copyright (C) 2007-2013  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:        GEOMAlgo_ClsfSolid.hxx
// Created:     Mon Jan 29 10:35:46 2007
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_ClsfSolid_HeaderFile
#define _GEOMAlgo_ClsfSolid_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
//#include <Handle_GEOMAlgo_ClsfSolid.hxx>
#include <TopoDS_Shape.hxx>
#include <Standard_Address.hxx>
#include <GEOMAlgo_Clsf.hxx>

DEFINE_STANDARD_HANDLE(GEOMAlgo_ClsfSolid, GEOMAlgo_Clsf)

//=======================================================================
//class : GEOMAlgo_ClsfSolid
//purpose  :
//=======================================================================
class GEOMAlgo_ClsfSolid : public GEOMAlgo_Clsf
{
 public:
  Standard_EXPORT
    GEOMAlgo_ClsfSolid();

  Standard_EXPORT
    virtual ~GEOMAlgo_ClsfSolid();

  Standard_EXPORT
    void SetShape(const TopoDS_Shape& aS) ;

  Standard_EXPORT
    const TopoDS_Shape& Shape() const;

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    virtual  void CheckData() ;

  DEFINE_STANDARD_RTTI(GEOMAlgo_ClsfSolid)

  protected:
    TopoDS_Shape myShape;
  Standard_Address myPClsf;

};
#endif
