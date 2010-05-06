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
#ifndef _NMTDS_MapOfPassKeyBoolean_HeaderFile
#define _NMTDS_MapOfPassKeyBoolean_HeaderFile

#ifndef _TCollection_BasicMap_HeaderFile
#include <TCollection_BasicMap.hxx>
#endif
#ifndef _Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean_HeaderFile
#include <Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_DomainError;
class NMTDS_PassKeyBoolean;
class NMTDS_PassKeyMapHasher;
class NMTDS_StdMapNodeOfMapOfPassKeyBoolean;
class NMTDS_MapIteratorOfMapOfPassKeyBoolean;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTDS_MapOfPassKeyBoolean  : public TCollection_BasicMap {

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


Standard_EXPORT NMTDS_MapOfPassKeyBoolean(const Standard_Integer NbBuckets = 1);


Standard_EXPORT   NMTDS_MapOfPassKeyBoolean& Assign(const NMTDS_MapOfPassKeyBoolean& Other) ;
  NMTDS_MapOfPassKeyBoolean& operator =(const NMTDS_MapOfPassKeyBoolean& Other) 
{
  return Assign(Other);
}



Standard_EXPORT   void ReSize(const Standard_Integer NbBuckets) ;


Standard_EXPORT   void Clear() ;
~NMTDS_MapOfPassKeyBoolean()
{
  Clear();
}



Standard_EXPORT   Standard_Boolean Add(const NMTDS_PassKeyBoolean& aKey) ;


Standard_EXPORT   Standard_Boolean Contains(const NMTDS_PassKeyBoolean& aKey) const;


Standard_EXPORT   Standard_Boolean Remove(const NMTDS_PassKeyBoolean& aKey) ;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


Standard_EXPORT NMTDS_MapOfPassKeyBoolean(const NMTDS_MapOfPassKeyBoolean& Other);


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
