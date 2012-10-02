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

// File:        NMTDS_PassKeyMapHasher.cxx
// Created:     
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _NMTDS_PassKeyShapeMapHasher_HeaderFile
#define _NMTDS_PassKeyShapeMapHasher_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Integer.hxx>
#include <NMTDS_PassKeyShape.hxx>
#include <Standard_Boolean.hxx>

//=======================================================================
//function : NMTDS_PassKeyShapeMapHasher
//purpose  : 
//=======================================================================
class NMTDS_PassKeyShapeMapHasher  {
 public:
  Standard_EXPORT
    static  Standard_Integer HashCode(const NMTDS_PassKeyShape& aPKey,
				      const Standard_Integer Upper) ;
  
  Standard_EXPORT
    static  Standard_Boolean IsEqual(const NMTDS_PassKeyShape& aPKey1,
				     const NMTDS_PassKeyShape& aPKey2) ;
};
#endif
