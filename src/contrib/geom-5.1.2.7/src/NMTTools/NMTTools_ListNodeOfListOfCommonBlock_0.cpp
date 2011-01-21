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
#include <NMTTools_ListNodeOfListOfCommonBlock.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _NMTTools_CommonBlock_HeaderFile
#include <NMTTools_CommonBlock.hxx>
#endif
#ifndef _NMTTools_ListOfCommonBlock_HeaderFile
#include <NMTTools_ListOfCommonBlock.hxx>
#endif
#ifndef _NMTTools_ListIteratorOfListOfCommonBlock_HeaderFile
#include <NMTTools_ListIteratorOfListOfCommonBlock.hxx>
#endif
//NMTTools_ListNodeOfListOfCommonBlock::~NMTTools_ListNodeOfListOfCommonBlock() {}
 


Standard_EXPORT Handle_Standard_Type& NMTTools_ListNodeOfListOfCommonBlock_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("NMTTools_ListNodeOfListOfCommonBlock",
			                                 sizeof(NMTTools_ListNodeOfListOfCommonBlock),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(NMTTools_ListNodeOfListOfCommonBlock) Handle(NMTTools_ListNodeOfListOfCommonBlock)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(NMTTools_ListNodeOfListOfCommonBlock) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(NMTTools_ListNodeOfListOfCommonBlock))) {
       _anOtherObject = Handle(NMTTools_ListNodeOfListOfCommonBlock)((Handle(NMTTools_ListNodeOfListOfCommonBlock)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& NMTTools_ListNodeOfListOfCommonBlock::DynamicType() const 
{ 
  return STANDARD_TYPE(NMTTools_ListNodeOfListOfCommonBlock) ; 
}
//Standard_Boolean NMTTools_ListNodeOfListOfCommonBlock::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(NMTTools_ListNodeOfListOfCommonBlock) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_NMTTools_ListNodeOfListOfCommonBlock::~Handle_NMTTools_ListNodeOfListOfCommonBlock() {}
#define Item NMTTools_CommonBlock
#define Item_hxx <NMTTools_CommonBlock.hxx>
#define TCollection_ListNode NMTTools_ListNodeOfListOfCommonBlock
#define TCollection_ListNode_hxx <NMTTools_ListNodeOfListOfCommonBlock.hxx>
#define TCollection_ListIterator NMTTools_ListIteratorOfListOfCommonBlock
#define TCollection_ListIterator_hxx <NMTTools_ListIteratorOfListOfCommonBlock.hxx>
#define Handle_TCollection_ListNode Handle_NMTTools_ListNodeOfListOfCommonBlock
#define TCollection_ListNode_Type_() NMTTools_ListNodeOfListOfCommonBlock_Type_()
#define TCollection_List NMTTools_ListOfCommonBlock
#define TCollection_List_hxx <NMTTools_ListOfCommonBlock.hxx>
#include <TCollection_ListNode.gxx>

