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

// File:        NMTDS_IteratorChecker.cxx
// Author:      Peter KURNEV

#ifndef _NMTDS_IteratorCheckerSI_HeaderFile
#define _NMTDS_IteratorCheckerSI_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <NMTDS_Iterator.hxx>

//=======================================================================
//class    : NMTDS_IteratorCheckerSI
//purpose  : 
//=======================================================================
class NMTDS_IteratorCheckerSI  : public NMTDS_Iterator {
 public:
  
  Standard_EXPORT
    NMTDS_IteratorCheckerSI();
  Standard_EXPORT 
    virtual ~NMTDS_IteratorCheckerSI();

protected:
  Standard_EXPORT   
    virtual  void Intersect() ;
};
#endif
