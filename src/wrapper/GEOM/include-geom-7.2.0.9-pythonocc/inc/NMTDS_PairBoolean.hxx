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

// File:        NMTDS_PairBoolean.hxx
// Author:      Peter KURNEV

#ifndef _NMTDS_PairBoolean_HeaderFile
#define _NMTDS_PairBoolean_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Boolean.hxx>
#include <NMTDS_Pair.hxx>

//=======================================================================
//class    : NMTDS_PairBoolean
//purpose  : 
//=======================================================================
class NMTDS_PairBoolean  : public NMTDS_Pair {
 public:
  Standard_EXPORT
    NMTDS_PairBoolean();
  
  Standard_EXPORT
    virtual ~NMTDS_PairBoolean();
  
  Standard_EXPORT
    void SetFlag(const Standard_Boolean aFlag) ;
 
  Standard_EXPORT
    NMTDS_PairBoolean& operator =(const NMTDS_PairBoolean& Other);
  
  Standard_EXPORT
    Standard_Boolean Flag() const;

protected:
  Standard_Boolean myFlag;
};
#endif
