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
#ifndef _NMTTools_MapOfPaveBlock_HeaderFile
#define _NMTTools_MapOfPaveBlock_HeaderFile

#ifndef _TCollection_BasicMap_HeaderFile
#include <TCollection_BasicMap.hxx>
#endif
#ifndef _Handle_NMTTools_StdMapNodeOfMapOfPaveBlock_HeaderFile
#include <Handle_NMTTools_StdMapNodeOfMapOfPaveBlock.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_DomainError;
class BOPTools_PaveBlock;
class BOPTools_PaveBlockMapHasher;
class NMTTools_StdMapNodeOfMapOfPaveBlock;
class NMTTools_MapIteratorOfMapOfPaveBlock;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTTools_MapOfPaveBlock  : public TCollection_BasicMap {

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


Standard_EXPORT NMTTools_MapOfPaveBlock(const Standard_Integer NbBuckets = 1);


Standard_EXPORT   NMTTools_MapOfPaveBlock& Assign(const NMTTools_MapOfPaveBlock& Other) ;
  NMTTools_MapOfPaveBlock& operator =(const NMTTools_MapOfPaveBlock& Other) 
{
  return Assign(Other);
}



Standard_EXPORT   void ReSize(const Standard_Integer NbBuckets) ;


Standard_EXPORT   void Clear() ;
~NMTTools_MapOfPaveBlock()
{
  Clear();
}



Standard_EXPORT   Standard_Boolean Add(const BOPTools_PaveBlock& aKey) ;


Standard_EXPORT   Standard_Boolean Contains(const BOPTools_PaveBlock& aKey) const;


Standard_EXPORT   Standard_Boolean Remove(const BOPTools_PaveBlock& aKey) ;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


Standard_EXPORT NMTTools_MapOfPaveBlock(const NMTTools_MapOfPaveBlock& Other);


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
