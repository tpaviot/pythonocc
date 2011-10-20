//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
#ifndef _NMTTools_CommonBlockPool_HeaderFile
#define _NMTTools_CommonBlockPool_HeaderFile

#ifndef _Standard_Address_HeaderFile
#include <Standard_Address.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_OutOfRange;
class Standard_OutOfMemory;
class NMTTools_ListOfCommonBlock;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTTools_CommonBlockPool  {

public:

    void* operator new(size_t,void* anAddress) 
      {
        return anAddress;
      }
    void* operator new(size_t size) 
      { 
        return Standard::Allocate(size); 
      }
    void  operator delete(void *anAddress) 
      { 
        if (anAddress) Standard::Free((Standard_Address&)anAddress); 
      }
 // Methods PUBLIC
 // 


Standard_EXPORT NMTTools_CommonBlockPool(const Standard_Integer Length = 0,const Standard_Integer BlockLength = 5);


Standard_EXPORT   void Resize(const Standard_Integer theNewLength) ;


Standard_EXPORT   void Destroy() ;
~NMTTools_CommonBlockPool()
{
  Destroy();
}



Standard_EXPORT   Standard_Integer Length() const;


Standard_EXPORT   Standard_Integer Extent() const;


Standard_EXPORT   Standard_Integer FactLength() const;


Standard_EXPORT   Standard_Integer Append(const NMTTools_ListOfCommonBlock& Value) ;


Standard_EXPORT   void Remove(const Standard_Integer Index) ;


Standard_EXPORT  const NMTTools_ListOfCommonBlock& Value(const Standard_Integer Index) const;
 const NMTTools_ListOfCommonBlock& operator ()(const Standard_Integer Index) const
{
  return Value(Index);
}



Standard_EXPORT   NMTTools_ListOfCommonBlock& ChangeValue(const Standard_Integer Index) ;
  NMTTools_ListOfCommonBlock& operator ()(const Standard_Integer Index) 
{
  return ChangeValue(Index);
}



Standard_EXPORT   void SetBlockLength(const Standard_Integer aBL) ;


Standard_EXPORT   Standard_Integer BlockLength() const;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


Standard_EXPORT NMTTools_CommonBlockPool(const NMTTools_CommonBlockPool& AnArray);


Standard_EXPORT   NMTTools_CommonBlockPool& Assign(const NMTTools_CommonBlockPool& Other) ;
  NMTTools_CommonBlockPool& operator =(const NMTTools_CommonBlockPool& Other) 
{
  return Assign(Other);
}



Standard_EXPORT   Standard_Boolean IsInvalidIndex(const Standard_Integer Index) const;


 // Fields PRIVATE
 //
Standard_Address myStart;
Standard_Integer myLength;
Standard_Integer myFactLength;
Standard_Integer myBlockLength;
Standard_Boolean myIsAllocated;


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
