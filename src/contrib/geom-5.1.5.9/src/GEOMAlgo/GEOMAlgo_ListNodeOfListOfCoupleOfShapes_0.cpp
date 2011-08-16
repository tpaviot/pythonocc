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
#include <GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _GEOMAlgo_CoupleOfShapes_HeaderFile
#include <GEOMAlgo_CoupleOfShapes.hxx>
#endif
#ifndef _GEOMAlgo_ListOfCoupleOfShapes_HeaderFile
#include <GEOMAlgo_ListOfCoupleOfShapes.hxx>
#endif
#ifndef _GEOMAlgo_ListIteratorOfListOfCoupleOfShapes_HeaderFile
#include <GEOMAlgo_ListIteratorOfListOfCoupleOfShapes.hxx>
#endif
//GEOMAlgo_ListNodeOfListOfCoupleOfShapes::~GEOMAlgo_ListNodeOfListOfCoupleOfShapes() {}
 


Standard_EXPORT Handle_Standard_Type& GEOMAlgo_ListNodeOfListOfCoupleOfShapes_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMAlgo_ListNodeOfListOfCoupleOfShapes",
			                                 sizeof(GEOMAlgo_ListNodeOfListOfCoupleOfShapes),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(GEOMAlgo_ListNodeOfListOfCoupleOfShapes) Handle(GEOMAlgo_ListNodeOfListOfCoupleOfShapes)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(GEOMAlgo_ListNodeOfListOfCoupleOfShapes) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMAlgo_ListNodeOfListOfCoupleOfShapes))) {
       _anOtherObject = Handle(GEOMAlgo_ListNodeOfListOfCoupleOfShapes)((Handle(GEOMAlgo_ListNodeOfListOfCoupleOfShapes)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& GEOMAlgo_ListNodeOfListOfCoupleOfShapes::DynamicType() const 
{ 
  return STANDARD_TYPE(GEOMAlgo_ListNodeOfListOfCoupleOfShapes) ; 
}
//Standard_Boolean GEOMAlgo_ListNodeOfListOfCoupleOfShapes::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(GEOMAlgo_ListNodeOfListOfCoupleOfShapes) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes::~Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes() {}
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
#include <TCollection_ListNode.gxx>

