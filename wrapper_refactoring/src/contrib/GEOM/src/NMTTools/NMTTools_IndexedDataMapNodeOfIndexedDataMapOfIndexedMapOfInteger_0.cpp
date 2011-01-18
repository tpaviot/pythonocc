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
#include <NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _TColStd_IndexedMapOfInteger_HeaderFile
#include <TColStd_IndexedMapOfInteger.hxx>
#endif
#ifndef _TColStd_MapIntegerHasher_HeaderFile
#include <TColStd_MapIntegerHasher.hxx>
#endif
#ifndef _NMTTools_IndexedDataMapOfIndexedMapOfInteger_HeaderFile
#include <NMTTools_IndexedDataMapOfIndexedMapOfInteger.hxx>
#endif
//NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger::~NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger() {}
 


Standard_EXPORT Handle_Standard_Type& NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger",
			                                 sizeof(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger) Handle(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger))) {
       _anOtherObject = Handle(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger)((Handle(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger::DynamicType() const 
{ 
  return STANDARD_TYPE(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger) ; 
}
//Standard_Boolean NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger::~Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger() {}
#define TheKey Standard_Integer
#define TheKey_hxx <Standard_Integer.hxx>
#define TheItem TColStd_IndexedMapOfInteger
#define TheItem_hxx <TColStd_IndexedMapOfInteger.hxx>
#define Hasher TColStd_MapIntegerHasher
#define Hasher_hxx <TColStd_MapIntegerHasher.hxx>
#define TCollection_IndexedDataMapNode NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger
#define TCollection_IndexedDataMapNode_hxx <NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger.hxx>
#define Handle_TCollection_IndexedDataMapNode Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger
#define TCollection_IndexedDataMapNode_Type_() NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger_Type_()
#define TCollection_IndexedDataMap NMTTools_IndexedDataMapOfIndexedMapOfInteger
#define TCollection_IndexedDataMap_hxx <NMTTools_IndexedDataMapOfIndexedMapOfInteger.hxx>
#include <TCollection_IndexedDataMapNode.gxx>

