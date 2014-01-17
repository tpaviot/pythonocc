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

// File:        NMTDS_BndSphere.hxx
// Created:     
// Author:      Peter KURNEV
//              <pkv@irinox>

#ifndef _NMTDS_CArray1OfIndexRange_HeaderFile
#define _NMTDS_CArray1OfIndexRange_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Address.hxx>
#include <Standard_Integer.hxx>
#include <Standard_Boolean.hxx>
#include <NMTDS_IndexRange.hxx>

class Standard_OutOfRange;
class Standard_OutOfMemory;



//=======================================================================
//function : NMTDS_CArray1OfIndexRange
//purpose  : 
//=======================================================================
class NMTDS_CArray1OfIndexRange  {
 public:

  Standard_EXPORT
    NMTDS_CArray1OfIndexRange(const Standard_Integer Length = 0,
                              const Standard_Integer BlockLength = 5);
  
  Standard_EXPORT   
    void Resize(const Standard_Integer theNewLength) ;
  
  Standard_EXPORT     
    void Destroy() ;

  ~NMTDS_CArray1OfIndexRange() {
    Destroy();
  }
  
  Standard_EXPORT
    Standard_Integer Length() const;
  
  Standard_EXPORT
    Standard_Integer Extent() const;
  
  Standard_EXPORT
    Standard_Integer FactLength() const;
  
  Standard_EXPORT
    Standard_Integer Append(const NMTDS_IndexRange& Value) ;
  
  Standard_EXPORT
    void Remove(const Standard_Integer Index) ;
  
  Standard_EXPORT
    const NMTDS_IndexRange& Value(const Standard_Integer Index) const;
   
  const NMTDS_IndexRange& operator ()(const Standard_Integer Index) const {
    return Value(Index);
  }
  
  Standard_EXPORT
    NMTDS_IndexRange& ChangeValue(const Standard_Integer Index) ;

    NMTDS_IndexRange& operator ()(const Standard_Integer Index) {
      return ChangeValue(Index);
    }
  
  Standard_EXPORT
    void SetBlockLength(const Standard_Integer aBL) ;
  
  Standard_EXPORT
    Standard_Integer BlockLength() const;
  
  Standard_EXPORT
    void Purge() ;

 private:
  Standard_EXPORT
    NMTDS_CArray1OfIndexRange(const NMTDS_CArray1OfIndexRange& AnArray);
  
  Standard_EXPORT
    NMTDS_CArray1OfIndexRange& Assign(const NMTDS_CArray1OfIndexRange& Other) ;
  
  NMTDS_CArray1OfIndexRange& operator =(const NMTDS_CArray1OfIndexRange& Other) {
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
