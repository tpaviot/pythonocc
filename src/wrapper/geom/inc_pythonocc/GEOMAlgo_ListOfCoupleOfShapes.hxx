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
#ifndef _GEOMAlgo_ListOfCoupleOfShapes_HeaderFile
#define _GEOMAlgo_ListOfCoupleOfShapes_HeaderFile

#ifndef _Standard_Address_HeaderFile
#include <Standard_Address.hxx>
#endif
#ifndef _Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes_HeaderFile
#include <Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_NoSuchObject;
class GEOMAlgo_ListIteratorOfListOfCoupleOfShapes;
class GEOMAlgo_CoupleOfShapes;
class GEOMAlgo_ListNodeOfListOfCoupleOfShapes;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_ListOfCoupleOfShapes  {

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


Standard_EXPORT GEOMAlgo_ListOfCoupleOfShapes();


Standard_EXPORT   void Assign(const GEOMAlgo_ListOfCoupleOfShapes& Other) ;
  void operator=(const GEOMAlgo_ListOfCoupleOfShapes& Other) 
{
  Assign(Other);
}



Standard_EXPORT   Standard_Integer Extent() const;


Standard_EXPORT   void Clear() ;
~GEOMAlgo_ListOfCoupleOfShapes()
{
  Clear();
}


  Standard_Boolean IsEmpty() const;


Standard_EXPORT   void Prepend(const GEOMAlgo_CoupleOfShapes& I) ;


Standard_EXPORT   void Prepend(const GEOMAlgo_CoupleOfShapes& I,GEOMAlgo_ListIteratorOfListOfCoupleOfShapes& theIt) ;


Standard_EXPORT   void Prepend(GEOMAlgo_ListOfCoupleOfShapes& Other) ;


Standard_EXPORT   void Append(const GEOMAlgo_CoupleOfShapes& I) ;


Standard_EXPORT   void Append(const GEOMAlgo_CoupleOfShapes& I,GEOMAlgo_ListIteratorOfListOfCoupleOfShapes& theIt) ;


Standard_EXPORT   void Append(GEOMAlgo_ListOfCoupleOfShapes& Other) ;


Standard_EXPORT   GEOMAlgo_CoupleOfShapes& First() const;


Standard_EXPORT   GEOMAlgo_CoupleOfShapes& Last() const;


Standard_EXPORT   void RemoveFirst() ;


Standard_EXPORT   void Remove(GEOMAlgo_ListIteratorOfListOfCoupleOfShapes& It) ;


Standard_EXPORT   void InsertBefore(const GEOMAlgo_CoupleOfShapes& I,GEOMAlgo_ListIteratorOfListOfCoupleOfShapes& It) ;


Standard_EXPORT   void InsertBefore(GEOMAlgo_ListOfCoupleOfShapes& Other,GEOMAlgo_ListIteratorOfListOfCoupleOfShapes& It) ;


Standard_EXPORT   void InsertAfter(const GEOMAlgo_CoupleOfShapes& I,GEOMAlgo_ListIteratorOfListOfCoupleOfShapes& It) ;


Standard_EXPORT   void InsertAfter(GEOMAlgo_ListOfCoupleOfShapes& Other,GEOMAlgo_ListIteratorOfListOfCoupleOfShapes& It) ;


friend class GEOMAlgo_ListIteratorOfListOfCoupleOfShapes;



protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


Standard_EXPORT GEOMAlgo_ListOfCoupleOfShapes(const GEOMAlgo_ListOfCoupleOfShapes& Other);


 // Fields PRIVATE
 //
Standard_Address myFirst;
Standard_Address myLast;


};

#define Item GEOMAlgo_CoupleOfShapes
#define Item_hxx <GEOMAlgo_CoupleOfShapes.hxx>
#define TCollection_ListNode GEOMAlgo_ListNodeOfListOfCoupleOfShapes
#define TCollection_ListNode_hxx <GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx>
#define TCollection_ListIterator GEOMAlgo_ListIteratorOfListOfCoupleOfShapes
#define TCollection_ListIterator_hxx <GEOMAlgo_ListIteratorOfListOfCoupleOfShapes.hxx>
#define Handle_TCollection_ListNode Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes
#define TCollection_ListNode_Type_() GEOMAlgo_ListNodeOfListOfCoupleOfShapes_Type_()
#define TCollection_List GEOMAlgo_ListOfCoupleOfShapes
#define TCollection_List_hxx <GEOMAlgo_ListOfCoupleOfShapes.hxx>

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
