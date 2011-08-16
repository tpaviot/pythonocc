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
#include <NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _BooleanOperations_IndexedDataMapOfShapeInteger_HeaderFile
#include <BooleanOperations_IndexedDataMapOfShapeInteger.hxx>
#endif
#ifndef _TColStd_MapIntegerHasher_HeaderFile
#include <TColStd_MapIntegerHasher.hxx>
#endif
#ifndef _NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger_HeaderFile
#include <NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger.hxx>
#endif
//NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger::~NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger() {}
 


Standard_EXPORT Handle_Standard_Type& NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger",
			                                 sizeof(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger) Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger))) {
       _anOtherObject = Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger)((Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger::DynamicType() const 
{ 
  return STANDARD_TYPE(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger) ; 
}
//Standard_Boolean NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger::~Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger() {}
#define TheKey Standard_Integer
#define TheKey_hxx <Standard_Integer.hxx>
#define TheItem BooleanOperations_IndexedDataMapOfShapeInteger
#define TheItem_hxx <BooleanOperations_IndexedDataMapOfShapeInteger.hxx>
#define Hasher TColStd_MapIntegerHasher
#define Hasher_hxx <TColStd_MapIntegerHasher.hxx>
#define TCollection_IndexedDataMapNode NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger
#define TCollection_IndexedDataMapNode_hxx <NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger.hxx>
#define Handle_TCollection_IndexedDataMapNode Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger
#define TCollection_IndexedDataMapNode_Type_() NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger_Type_()
#define TCollection_IndexedDataMap NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger
#define TCollection_IndexedDataMap_hxx <NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger.hxx>
#include <TCollection_IndexedDataMapNode.gxx>

