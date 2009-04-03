// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
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

#ifndef _GEOM_DataMapOfAsciiStringTransient_HeaderFile
#define _GEOM_DataMapOfAsciiStringTransient_HeaderFile

#ifndef _TCollection_BasicMap_HeaderFile
#include <TCollection_BasicMap.hxx>
#endif
#ifndef _Handle_Standard_Transient_HeaderFile
#include <Handle_Standard_Transient.hxx>
#endif
#ifndef _Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient_HeaderFile
#include <Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_DomainError;
class Standard_NoSuchObject;
class TCollection_AsciiString;
class Standard_Transient;
class GEOM_DataMapNodeOfDataMapOfAsciiStringTransient;
class GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

class GEOM_DataMapOfAsciiStringTransient  : public TCollection_BasicMap {

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
Standard_EXPORT GEOM_DataMapOfAsciiStringTransient(const Standard_Integer NbBuckets = 1);
Standard_EXPORT   GEOM_DataMapOfAsciiStringTransient& Assign(const GEOM_DataMapOfAsciiStringTransient& Other) ;
  GEOM_DataMapOfAsciiStringTransient& operator =(const GEOM_DataMapOfAsciiStringTransient& Other) 
{
  return Assign(Other);
}

Standard_EXPORT   void ReSize(const Standard_Integer NbBuckets) ;
Standard_EXPORT   void Clear() ;
~GEOM_DataMapOfAsciiStringTransient()
{
  Clear();
}

Standard_EXPORT   Standard_Boolean Bind(const TCollection_AsciiString& K,const Handle(Standard_Transient)& I) ;
Standard_EXPORT   Standard_Boolean IsBound(const TCollection_AsciiString& K) const;
Standard_EXPORT   Standard_Boolean UnBind(const TCollection_AsciiString& K) ;
Standard_EXPORT  const Handle_Standard_Transient& Find(const TCollection_AsciiString& K) const;
 const Handle_Standard_Transient& operator()(const TCollection_AsciiString& K) const
{
  return Find(K);
}

Standard_EXPORT   Handle_Standard_Transient& ChangeFind(const TCollection_AsciiString& K) ;
  Handle_Standard_Transient& operator()(const TCollection_AsciiString& K) 
{
  return ChangeFind(K);
}






protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 
Standard_EXPORT GEOM_DataMapOfAsciiStringTransient(const GEOM_DataMapOfAsciiStringTransient& Other);


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
