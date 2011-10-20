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
#ifndef _NMTDS_ListOfPassKey_HeaderFile
#define _NMTDS_ListOfPassKey_HeaderFile

#ifndef _Standard_Address_HeaderFile
#include <Standard_Address.hxx>
#endif
#ifndef _Handle_NMTDS_ListNodeOfListOfPassKey_HeaderFile
#include <Handle_NMTDS_ListNodeOfListOfPassKey.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_NoSuchObject;
class NMTDS_ListIteratorOfListOfPassKey;
class NMTDS_PassKey;
class NMTDS_ListNodeOfListOfPassKey;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTDS_ListOfPassKey  {

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


Standard_EXPORT NMTDS_ListOfPassKey();


Standard_EXPORT   void Assign(const NMTDS_ListOfPassKey& Other) ;
  void operator=(const NMTDS_ListOfPassKey& Other) 
{
  Assign(Other);
}



Standard_EXPORT   Standard_Integer Extent() const;


Standard_EXPORT   void Clear() ;
~NMTDS_ListOfPassKey()
{
  Clear();
}


  Standard_Boolean IsEmpty() const;


Standard_EXPORT   void Prepend(const NMTDS_PassKey& I) ;


Standard_EXPORT   void Prepend(const NMTDS_PassKey& I,NMTDS_ListIteratorOfListOfPassKey& theIt) ;


Standard_EXPORT   void Prepend(NMTDS_ListOfPassKey& Other) ;


Standard_EXPORT   void Append(const NMTDS_PassKey& I) ;


Standard_EXPORT   void Append(const NMTDS_PassKey& I,NMTDS_ListIteratorOfListOfPassKey& theIt) ;


Standard_EXPORT   void Append(NMTDS_ListOfPassKey& Other) ;


Standard_EXPORT   NMTDS_PassKey& First() const;


Standard_EXPORT   NMTDS_PassKey& Last() const;


Standard_EXPORT   void RemoveFirst() ;


Standard_EXPORT   void Remove(NMTDS_ListIteratorOfListOfPassKey& It) ;


Standard_EXPORT   void InsertBefore(const NMTDS_PassKey& I,NMTDS_ListIteratorOfListOfPassKey& It) ;


Standard_EXPORT   void InsertBefore(NMTDS_ListOfPassKey& Other,NMTDS_ListIteratorOfListOfPassKey& It) ;


Standard_EXPORT   void InsertAfter(const NMTDS_PassKey& I,NMTDS_ListIteratorOfListOfPassKey& It) ;


Standard_EXPORT   void InsertAfter(NMTDS_ListOfPassKey& Other,NMTDS_ListIteratorOfListOfPassKey& It) ;


friend class NMTDS_ListIteratorOfListOfPassKey;



protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


Standard_EXPORT NMTDS_ListOfPassKey(const NMTDS_ListOfPassKey& Other);


 // Fields PRIVATE
 //
Standard_Address myFirst;
Standard_Address myLast;


};

#define Item NMTDS_PassKey
#define Item_hxx <NMTDS_PassKey.hxx>
#define TCollection_ListNode NMTDS_ListNodeOfListOfPassKey
#define TCollection_ListNode_hxx <NMTDS_ListNodeOfListOfPassKey.hxx>
#define TCollection_ListIterator NMTDS_ListIteratorOfListOfPassKey
#define TCollection_ListIterator_hxx <NMTDS_ListIteratorOfListOfPassKey.hxx>
#define Handle_TCollection_ListNode Handle_NMTDS_ListNodeOfListOfPassKey
#define TCollection_ListNode_Type_() NMTDS_ListNodeOfListOfPassKey_Type_()
#define TCollection_List NMTDS_ListOfPassKey
#define TCollection_List_hxx <NMTDS_ListOfPassKey.hxx>

#include <TCollection_List.lxx>

#undef Item
#undef Item_hxx
#undef TCollection_ListNode
#undef TCollection_ListNode_hxx
#undef TCollection_ListIterator
#undef TCollection_ListIterator_hxx
#undef Handle_TCollection_ListNode
#undef TCollection_ListNode_Type_
#undef TCollection_List
#undef TCollection_List_hxx


// other Inline functions and methods (like "C++: function call" methods)
//


#endif
