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
#include <NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _BOPTools_ListOfPaveBlock_HeaderFile
#include <BOPTools_ListOfPaveBlock.hxx>
#endif
#ifndef _TColStd_MapIntegerHasher_HeaderFile
#include <TColStd_MapIntegerHasher.hxx>
#endif
#ifndef _NMTTools_DataMapOfIntegerListOfPaveBlock_HeaderFile
#include <NMTTools_DataMapOfIntegerListOfPaveBlock.hxx>
#endif
#ifndef _NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock_HeaderFile
#include <NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock.hxx>
#endif
//NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock::~NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock() {}
 


Standard_EXPORT Handle_Standard_Type& NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock",
			                                 sizeof(NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock) Handle(NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock))) {
       _anOtherObject = Handle(NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock)((Handle(NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock::DynamicType() const 
{ 
  return STANDARD_TYPE(NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock) ; 
}
//Standard_Boolean NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock::~Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock() {}
#define TheKey Standard_Integer
#define TheKey_hxx <Standard_Integer.hxx>
#define TheItem BOPTools_ListOfPaveBlock
#define TheItem_hxx <BOPTools_ListOfPaveBlock.hxx>
#define Hasher TColStd_MapIntegerHasher
#define Hasher_hxx <TColStd_MapIntegerHasher.hxx>
#define TCollection_DataMapNode NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock
#define TCollection_DataMapNode_hxx <NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock.hxx>
#define TCollection_DataMapIterator NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock
#define TCollection_DataMapIterator_hxx <NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock.hxx>
#define Handle_TCollection_DataMapNode Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock
#define TCollection_DataMapNode_Type_() NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock_Type_()
#define TCollection_DataMap NMTTools_DataMapOfIntegerListOfPaveBlock
#define TCollection_DataMap_hxx <NMTTools_DataMapOfIntegerListOfPaveBlock.hxx>
#include <TCollection_DataMapNode.gxx>

