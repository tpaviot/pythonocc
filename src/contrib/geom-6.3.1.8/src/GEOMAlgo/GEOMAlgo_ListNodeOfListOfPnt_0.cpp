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
#include <GEOMAlgo_ListNodeOfListOfPnt.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _gp_Pnt_HeaderFile
#include <gp_Pnt.hxx>
#endif
#ifndef _GEOMAlgo_ListOfPnt_HeaderFile
#include <GEOMAlgo_ListOfPnt.hxx>
#endif
#ifndef _GEOMAlgo_ListIteratorOfListOfPnt_HeaderFile
#include <GEOMAlgo_ListIteratorOfListOfPnt.hxx>
#endif
//GEOMAlgo_ListNodeOfListOfPnt::~GEOMAlgo_ListNodeOfListOfPnt() {}
 


Standard_EXPORT Handle_Standard_Type& GEOMAlgo_ListNodeOfListOfPnt_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMAlgo_ListNodeOfListOfPnt",
			                                 sizeof(GEOMAlgo_ListNodeOfListOfPnt),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(GEOMAlgo_ListNodeOfListOfPnt) Handle(GEOMAlgo_ListNodeOfListOfPnt)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(GEOMAlgo_ListNodeOfListOfPnt) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMAlgo_ListNodeOfListOfPnt))) {
       _anOtherObject = Handle(GEOMAlgo_ListNodeOfListOfPnt)((Handle(GEOMAlgo_ListNodeOfListOfPnt)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& GEOMAlgo_ListNodeOfListOfPnt::DynamicType() const 
{ 
  return STANDARD_TYPE(GEOMAlgo_ListNodeOfListOfPnt) ; 
}
//Standard_Boolean GEOMAlgo_ListNodeOfListOfPnt::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(GEOMAlgo_ListNodeOfListOfPnt) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_GEOMAlgo_ListNodeOfListOfPnt::~Handle_GEOMAlgo_ListNodeOfListOfPnt() {}
#define Item gp_Pnt
#define Item_hxx <gp_Pnt.hxx>
#define TCollection_ListNode GEOMAlgo_ListNodeOfListOfPnt
#define TCollection_ListNode_hxx <GEOMAlgo_ListNodeOfListOfPnt.hxx>
#define TCollection_ListIterator GEOMAlgo_ListIteratorOfListOfPnt
#define TCollection_ListIterator_hxx <GEOMAlgo_ListIteratorOfListOfPnt.hxx>
#define Handle_TCollection_ListNode Handle_GEOMAlgo_ListNodeOfListOfPnt
#define TCollection_ListNode_Type_() GEOMAlgo_ListNodeOfListOfPnt_Type_()
#define TCollection_List GEOMAlgo_ListOfPnt
#define TCollection_List_hxx <GEOMAlgo_ListOfPnt.hxx>
#include <TCollection_ListNode.gxx>

