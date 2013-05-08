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
#ifndef _GEOMAlgo_IndexedDataMapOfPassKeyListOfShape_HeaderFile
#define _GEOMAlgo_IndexedDataMapOfPassKeyListOfShape_HeaderFile

#ifndef _TCollection_BasicMap_HeaderFile
#include <TCollection_BasicMap.hxx>
#endif
#ifndef _Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape_HeaderFile
#include <Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_DomainError;
class Standard_OutOfRange;
class Standard_NoSuchObject;
class GEOMAlgo_PassKey;
class TopTools_ListOfShape;
class GEOMAlgo_PassKeyMapHasher;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

class GEOMAlgo_IndexedDataMapOfPassKeyListOfShape  : public TCollection_BasicMap {

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
Standard_EXPORT GEOMAlgo_IndexedDataMapOfPassKeyListOfShape(const Standard_Integer NbBuckets = 1);
Standard_EXPORT   GEOMAlgo_IndexedDataMapOfPassKeyListOfShape& Assign(const GEOMAlgo_IndexedDataMapOfPassKeyListOfShape& Other) ;
  GEOMAlgo_IndexedDataMapOfPassKeyListOfShape& operator =(const GEOMAlgo_IndexedDataMapOfPassKeyListOfShape& Other) 
{
  return Assign(Other);
}

Standard_EXPORT   void ReSize(const Standard_Integer NbBuckets) ;
Standard_EXPORT   void Clear() ;
~GEOMAlgo_IndexedDataMapOfPassKeyListOfShape()
{
  Clear();
}

Standard_EXPORT   Standard_Integer Add(const GEOMAlgo_PassKey& K,const TopTools_ListOfShape& I) ;
Standard_EXPORT   void Substitute(const Standard_Integer I,const GEOMAlgo_PassKey& K,const TopTools_ListOfShape& T) ;
Standard_EXPORT   void RemoveLast() ;
Standard_EXPORT   Standard_Boolean Contains(const GEOMAlgo_PassKey& K) const;
Standard_EXPORT  const GEOMAlgo_PassKey& FindKey(const Standard_Integer I) const;
Standard_EXPORT  const TopTools_ListOfShape& FindFromIndex(const Standard_Integer I) const;
 const TopTools_ListOfShape& operator ()(const Standard_Integer I) const
{
  return FindFromIndex(I);
}

Standard_EXPORT   TopTools_ListOfShape& ChangeFromIndex(const Standard_Integer I) ;
  TopTools_ListOfShape& operator ()(const Standard_Integer I) 
{
  return ChangeFromIndex(I);
}

Standard_EXPORT   Standard_Integer FindIndex(const GEOMAlgo_PassKey& K) const;
Standard_EXPORT  const TopTools_ListOfShape& FindFromKey(const GEOMAlgo_PassKey& K) const;
Standard_EXPORT   TopTools_ListOfShape& ChangeFromKey(const GEOMAlgo_PassKey& K) ;

Standard_EXPORT Standard_Address FindFromKey1(const GEOMAlgo_PassKey& K) const;
Standard_EXPORT Standard_Address ChangeFromKey1(const GEOMAlgo_PassKey& K) ;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 
Standard_EXPORT GEOMAlgo_IndexedDataMapOfPassKeyListOfShape(const GEOMAlgo_IndexedDataMapOfPassKeyListOfShape& Other);


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
