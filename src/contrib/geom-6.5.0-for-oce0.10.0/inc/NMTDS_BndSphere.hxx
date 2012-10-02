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

// File:	NMTDS_BndSphere.hxx
// Created:	
// Author:	Peter KURNEV
//		<pkv@irinox>

#ifndef _NMTDS_BndSphere_HeaderFile
#define _NMTDS_BndSphere_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <gp_Pnt.hxx>
#include <Standard_Real.hxx>
#include <Standard_Boolean.hxx>

//=======================================================================
//class : NMTDS_BndSphere
//purpose  : 
//=======================================================================
class NMTDS_BndSphere  {
 public:
  Standard_EXPORT   
    NMTDS_BndSphere();
  
  Standard_EXPORT 
    virtual ~NMTDS_BndSphere();
  
  void SetCenter(const gp_Pnt& theP) ;
  
  const gp_Pnt& Center() const;
  
  void SetRadius(const Standard_Real theR) ;
  
  Standard_Real Radius() const;
  
  void SetGap(const Standard_Real theGap) ;
  
  Standard_Real Gap() const;
  
  void Add(const NMTDS_BndSphere& theOther) ;
  
  Standard_EXPORT 
    Standard_Boolean IsOut(const NMTDS_BndSphere& theOther) const;
  
  Standard_Real SquareExtent() const;

 protected:
  gp_Pnt myCenter;
  Standard_Real myRadius;
  Standard_Real myGap;
};

#include <NMTDS_BndSphere.lxx>

#endif
