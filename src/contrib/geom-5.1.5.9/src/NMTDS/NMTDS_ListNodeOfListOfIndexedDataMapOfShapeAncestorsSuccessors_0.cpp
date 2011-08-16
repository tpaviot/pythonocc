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
#include <NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors_HeaderFile
#include <BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors.hxx>
#endif
#ifndef _NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors_HeaderFile
#include <NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#endif
#ifndef _NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors_HeaderFile
#include <NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#endif
//NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors::~NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors() {}
 


Standard_EXPORT Handle_Standard_Type& NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors",
			                                 sizeof(NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors) Handle(NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors))) {
       _anOtherObject = Handle(NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors)((Handle(NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors::DynamicType() const 
{ 
  return STANDARD_TYPE(NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors) ; 
}
//Standard_Boolean NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors::~Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors() {}
#define Item BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors
#define Item_hxx <BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors.hxx>
#define TCollection_ListNode NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors
#define TCollection_ListNode_hxx <NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#define TCollection_ListIterator NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors
#define TCollection_ListIterator_hxx <NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#define Handle_TCollection_ListNode Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors
#define TCollection_ListNode_Type_() NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors_Type_()
#define TCollection_List NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors
#define TCollection_List_hxx <NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include <TCollection_ListNode.gxx>

