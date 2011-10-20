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
#ifndef _GEOMAlgo_ListNodeOfListOfCoupleOfShapes_HeaderFile
#define _GEOMAlgo_ListNodeOfListOfCoupleOfShapes_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes_HeaderFile
#include <Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx>
#endif

#ifndef _GEOMAlgo_CoupleOfShapes_HeaderFile
#include <GEOMAlgo_CoupleOfShapes.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
class GEOMAlgo_CoupleOfShapes;
class GEOMAlgo_ListOfCoupleOfShapes;
class GEOMAlgo_ListIteratorOfListOfCoupleOfShapes;



class GEOMAlgo_ListNodeOfListOfCoupleOfShapes : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

GEOMAlgo_ListNodeOfListOfCoupleOfShapes(const GEOMAlgo_CoupleOfShapes& I,const TCollection_MapNodePtr& n);

  GEOMAlgo_CoupleOfShapes& Value() const;
//Standard_EXPORT ~GEOMAlgo_ListNodeOfListOfCoupleOfShapes();




 // Type management
 //
 Standard_EXPORT const Handle(Standard_Type)& DynamicType() const;
 //Standard_EXPORT Standard_Boolean	       IsKind(const Handle(Standard_Type)&) const;

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
GEOMAlgo_CoupleOfShapes myValue;


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

#include <TCollection_ListNode.lxx>

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
