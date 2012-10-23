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

// File:        GEOMAlgo_PassKey.hxx
// Created:
// Author:      Peter KURNEV
//              <peter@PREFEX>
//
#ifndef _GEOMAlgo_PassKey_HeaderFile
#define _GEOMAlgo_PassKey_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Integer.hxx>
#include <TColStd_IndexedMapOfInteger.hxx>
#include <Standard_Boolean.hxx>
#include <TColStd_ListOfInteger.hxx>

//=======================================================================
//class : GEOMAlgo_PassKey
//purpose  :
//=======================================================================
class GEOMAlgo_PassKey  {
 public:
  Standard_EXPORT
    GEOMAlgo_PassKey();

  Standard_EXPORT
    virtual ~GEOMAlgo_PassKey();

  Standard_EXPORT
    GEOMAlgo_PassKey(const GEOMAlgo_PassKey& Other);

  Standard_EXPORT
    GEOMAlgo_PassKey& Assign(const GEOMAlgo_PassKey& Other) ;

  GEOMAlgo_PassKey& operator =(const GEOMAlgo_PassKey& Other) {
    return Assign(Other);
  }

  Standard_EXPORT
    void Clear() ;

  Standard_EXPORT
    void SetIds(const Standard_Integer aI1) ;

  Standard_EXPORT
    void SetIds(const Standard_Integer aI1,
		const Standard_Integer aI2) ;

  Standard_EXPORT
    void SetIds(const Standard_Integer aI1,
		const Standard_Integer aI2,
		const Standard_Integer aI3) ;

  Standard_EXPORT
    void SetIds(const Standard_Integer aI1,
		const Standard_Integer aI2,
		const Standard_Integer aI3,
		const Standard_Integer aI4) ;

  Standard_EXPORT
    void SetIds(const TColStd_ListOfInteger& aLS) ;

  Standard_EXPORT
    Standard_Integer NbIds() const;

  Standard_EXPORT
    Standard_Boolean IsEqual(const GEOMAlgo_PassKey& aOther) const;

  Standard_EXPORT
    Standard_Integer HashCode(const Standard_Integer Upper) const;

  Standard_EXPORT
    Standard_Integer Id(const Standard_Integer aIndex) const;

  Standard_EXPORT
    void Dump(const Standard_Integer aHex = 0) const;

 protected:
  Standard_Integer myNbIds;
  Standard_Integer mySum;
  TColStd_IndexedMapOfInteger myMap;
};
#endif
