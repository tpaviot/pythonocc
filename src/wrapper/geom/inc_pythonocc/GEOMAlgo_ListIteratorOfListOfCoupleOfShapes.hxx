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
#ifndef _GEOMAlgo_ListIteratorOfListOfCoupleOfShapes_HeaderFile
#define _GEOMAlgo_ListIteratorOfListOfCoupleOfShapes_HeaderFile

#ifndef _Standard_Address_HeaderFile
#include <Standard_Address.hxx>
#endif
#ifndef _Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes_HeaderFile
#include <Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_NoMoreObject;
class Standard_NoSuchObject;
class GEOMAlgo_ListOfCoupleOfShapes;
class GEOMAlgo_CoupleOfShapes;
class GEOMAlgo_ListNodeOfListOfCoupleOfShapes;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_ListIteratorOfListOfCoupleOfShapes  {

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


Standard_EXPORT GEOMAlgo_ListIteratorOfListOfCoupleOfShapes();


Standard_EXPORT GEOMAlgo_ListIteratorOfListOfCoupleOfShapes(const GEOMAlgo_ListOfCoupleOfShapes& L);


Standard_EXPORT   void Initialize(const GEOMAlgo_ListOfCoupleOfShapes& L) ;

  Standard_Boolean More() const;


Standard_EXPORT   void Next() ;


Standard_EXPORT   GEOMAlgo_CoupleOfShapes& Value() const;


friend class GEOMAlgo_ListOfCoupleOfShapes;



protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //
Standard_Address current;
Standard_Address previous;


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

#include <TCollection_ListIterator.lxx>

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
