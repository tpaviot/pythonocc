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
#ifndef _NMTDS_ListNodeOfListOfPassKey_HeaderFile
#define _NMTDS_ListNodeOfListOfPassKey_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_NMTDS_ListNodeOfListOfPassKey_HeaderFile
#include <Handle_NMTDS_ListNodeOfListOfPassKey.hxx>
#endif

#ifndef _NMTDS_PassKey_HeaderFile
#include <NMTDS_PassKey.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
class NMTDS_PassKey;
class NMTDS_ListOfPassKey;
class NMTDS_ListIteratorOfListOfPassKey;



class NMTDS_ListNodeOfListOfPassKey : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

NMTDS_ListNodeOfListOfPassKey(const NMTDS_PassKey& I,const TCollection_MapNodePtr& n);

  NMTDS_PassKey& Value() const;
//Standard_EXPORT ~NMTDS_ListNodeOfListOfPassKey();




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
NMTDS_PassKey myValue;


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
