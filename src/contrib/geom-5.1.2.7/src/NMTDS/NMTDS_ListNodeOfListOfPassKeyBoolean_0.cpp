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
#include <NMTDS_ListNodeOfListOfPassKeyBoolean.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _NMTDS_PassKeyBoolean_HeaderFile
#include <NMTDS_PassKeyBoolean.hxx>
#endif
#ifndef _NMTDS_ListOfPassKeyBoolean_HeaderFile
#include <NMTDS_ListOfPassKeyBoolean.hxx>
#endif
#ifndef _NMTDS_ListIteratorOfListOfPassKeyBoolean_HeaderFile
#include <NMTDS_ListIteratorOfListOfPassKeyBoolean.hxx>
#endif
//NMTDS_ListNodeOfListOfPassKeyBoolean::~NMTDS_ListNodeOfListOfPassKeyBoolean() {}
 


Standard_EXPORT Handle_Standard_Type& NMTDS_ListNodeOfListOfPassKeyBoolean_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("NMTDS_ListNodeOfListOfPassKeyBoolean",
			                                 sizeof(NMTDS_ListNodeOfListOfPassKeyBoolean),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(NMTDS_ListNodeOfListOfPassKeyBoolean) Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(NMTDS_ListNodeOfListOfPassKeyBoolean) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(NMTDS_ListNodeOfListOfPassKeyBoolean))) {
       _anOtherObject = Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)((Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& NMTDS_ListNodeOfListOfPassKeyBoolean::DynamicType() const 
{ 
  return STANDARD_TYPE(NMTDS_ListNodeOfListOfPassKeyBoolean) ; 
}
//Standard_Boolean NMTDS_ListNodeOfListOfPassKeyBoolean::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(NMTDS_ListNodeOfListOfPassKeyBoolean) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_NMTDS_ListNodeOfListOfPassKeyBoolean::~Handle_NMTDS_ListNodeOfListOfPassKeyBoolean() {}
#define Item NMTDS_PassKeyBoolean
#define Item_hxx <NMTDS_PassKeyBoolean.hxx>
#define TCollection_ListNode NMTDS_ListNodeOfListOfPassKeyBoolean
#define TCollection_ListNode_hxx <NMTDS_ListNodeOfListOfPassKeyBoolean.hxx>
#define TCollection_ListIterator NMTDS_ListIteratorOfListOfPassKeyBoolean
#define TCollection_ListIterator_hxx <NMTDS_ListIteratorOfListOfPassKeyBoolean.hxx>
#define Handle_TCollection_ListNode Handle_NMTDS_ListNodeOfListOfPassKeyBoolean
#define TCollection_ListNode_Type_() NMTDS_ListNodeOfListOfPassKeyBoolean_Type_()
#define TCollection_List NMTDS_ListOfPassKeyBoolean
#define TCollection_List_hxx <NMTDS_ListOfPassKeyBoolean.hxx>
#include <TCollection_ListNode.gxx>

