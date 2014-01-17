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

// File:        NMTDS_IndexRange.hxx
// Created:     
// Author:      Peter KURNEV
//              <pkv@irinox>
//

#ifndef _NMTDS_IndexRange_HeaderFile
#define _NMTDS_IndexRange_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Integer.hxx>
#include <Standard_Boolean.hxx>

//=======================================================================
//class    : NMTDS_IndexRange
//purpose  : 
//=======================================================================
class NMTDS_IndexRange  {
 public:

  Standard_EXPORT   
    NMTDS_IndexRange();
  
  Standard_EXPORT     void SetFirst(const Standard_Integer aFirst) ;
  
  Standard_EXPORT     void SetLast(const Standard_Integer aLast) ;
  
  Standard_EXPORT     Standard_Integer First() const;
  
  Standard_EXPORT     Standard_Integer Last() const;
  
  Standard_EXPORT     Standard_Boolean IsInRange(const Standard_Integer aIndex) const;

protected:
  Standard_Integer myFirst;
  Standard_Integer myLast;
};

#endif
