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

// File:        NMTTools_CommonBlockPool.hxx
// Created:
// Author:      Peter KURNEV
//              <pkv@irinox>
//

#ifndef _NMTTools_CommonBlockPool_HeaderFile
#define _NMTTools_CommonBlockPool_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Address.hxx>
#include <Standard_Integer.hxx>
#include <Standard_Boolean.hxx>
#include <NMTTools_ListOfCommonBlock.hxx>

class Standard_OutOfRange;
class Standard_OutOfMemory;



//=======================================================================
//class : NMTTools_CommonBlockPool
//purpose  :
//=======================================================================
class NMTTools_CommonBlockPool
{
 public:
  Standard_EXPORT
    NMTTools_CommonBlockPool(const Standard_Integer Length = 0,const Standard_Integer BlockLength = 5);

  Standard_EXPORT
    void Resize(const Standard_Integer theNewLength) ;

  Standard_EXPORT
    void Destroy() ;

  ~NMTTools_CommonBlockPool() {
    Destroy();
  }

  Standard_EXPORT
    Standard_Integer Length() const;

  Standard_EXPORT
    Standard_Integer Extent() const;

  Standard_EXPORT
    Standard_Integer FactLength() const;

  Standard_EXPORT
    Standard_Integer Append(const NMTTools_ListOfCommonBlock& Value) ;

  Standard_EXPORT
    void Remove(const Standard_Integer Index) ;

  Standard_EXPORT
    const NMTTools_ListOfCommonBlock& Value(const Standard_Integer Index) const;

  const NMTTools_ListOfCommonBlock& operator ()(const Standard_Integer Index) const {
    return Value(Index);
  }

  Standard_EXPORT
    NMTTools_ListOfCommonBlock& ChangeValue(const Standard_Integer Index) ;

  NMTTools_ListOfCommonBlock& operator ()(const Standard_Integer Index) {
    return ChangeValue(Index);
  }

  Standard_EXPORT
    void SetBlockLength(const Standard_Integer aBL) ;

  Standard_EXPORT
    Standard_Integer BlockLength() const;

  Standard_EXPORT
    void Purge() ;

protected:

private:
  Standard_EXPORT
    NMTTools_CommonBlockPool(const NMTTools_CommonBlockPool& AnArray);

  Standard_EXPORT
    NMTTools_CommonBlockPool& Assign(const NMTTools_CommonBlockPool& Other) ;

  NMTTools_CommonBlockPool& operator =(const NMTTools_CommonBlockPool& Other) {
    return Assign(Other);
  }

  Standard_EXPORT
    Standard_Boolean IsInvalidIndex(const Standard_Integer Index) const;


  Standard_Address myStart;
  Standard_Integer myLength;
  Standard_Integer myFactLength;
  Standard_Integer myBlockLength;
  Standard_Boolean myIsAllocated;
};
#endif
