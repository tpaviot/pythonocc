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

// File:        GEOMAlgo_PassKeyMapHasher.hxx
// Created:
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_PassKeyMapHasher_HeaderFile
#define _GEOMAlgo_PassKeyMapHasher_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Integer.hxx>
#include <Standard_Boolean.hxx>
#include <GEOMAlgo_PassKey.hxx>

//=======================================================================
//class : GEOMAlgo_PassKeyMapHasher
//purpose  :
//=======================================================================
class GEOMAlgo_PassKeyMapHasher  {
 public:
  Standard_EXPORT
    static  Standard_Integer HashCode(const GEOMAlgo_PassKey& aPKey,
				      const Standard_Integer Upper) ;

  Standard_EXPORT
    static  Standard_Boolean IsEqual(const GEOMAlgo_PassKey& aPKey1,
				     const GEOMAlgo_PassKey& aPKey2) ;
};
#endif
