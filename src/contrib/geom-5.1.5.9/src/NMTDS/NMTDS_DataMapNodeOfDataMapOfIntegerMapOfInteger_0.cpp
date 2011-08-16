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
#include <NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _TColStd_MapOfInteger_HeaderFile
#include <TColStd_MapOfInteger.hxx>
#endif
#ifndef _TColStd_MapIntegerHasher_HeaderFile
#include <TColStd_MapIntegerHasher.hxx>
#endif
#ifndef _NMTDS_DataMapOfIntegerMapOfInteger_HeaderFile
#include <NMTDS_DataMapOfIntegerMapOfInteger.hxx>
#endif
#ifndef _NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger_HeaderFile
#include <NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger.hxx>
#endif
//NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger::~NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger() {}
 


Standard_EXPORT Handle_Standard_Type& NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger",
			                                 sizeof(NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger) Handle(NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger))) {
       _anOtherObject = Handle(NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger)((Handle(NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger::DynamicType() const 
{ 
  return STANDARD_TYPE(NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger) ; 
}
//Standard_Boolean NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger::~Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger() {}
#define TheKey Standard_Integer
#define TheKey_hxx <Standard_Integer.hxx>
#define TheItem TColStd_MapOfInteger
#define TheItem_hxx <TColStd_MapOfInteger.hxx>
#define Hasher TColStd_MapIntegerHasher
#define Hasher_hxx <TColStd_MapIntegerHasher.hxx>
#define TCollection_DataMapNode NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger
#define TCollection_DataMapNode_hxx <NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger.hxx>
#define TCollection_DataMapIterator NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger
#define TCollection_DataMapIterator_hxx <NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger.hxx>
#define Handle_TCollection_DataMapNode Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger
#define TCollection_DataMapNode_Type_() NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger_Type_()
#define TCollection_DataMap NMTDS_DataMapOfIntegerMapOfInteger
#define TCollection_DataMap_hxx <NMTDS_DataMapOfIntegerMapOfInteger.hxx>
#include <TCollection_DataMapNode.gxx>

