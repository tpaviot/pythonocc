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
#include <GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _GEOMAlgo_PassKey_HeaderFile
#include <GEOMAlgo_PassKey.hxx>
#endif
#ifndef _GEOMAlgo_PassKeyMapHasher_HeaderFile
#include <GEOMAlgo_PassKeyMapHasher.hxx>
#endif
#ifndef _GEOMAlgo_DataMapOfPassKeyInteger_HeaderFile
#include <GEOMAlgo_DataMapOfPassKeyInteger.hxx>
#endif
#ifndef _GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger_HeaderFile
#include <GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger.hxx>
#endif
//GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger::~GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger() {}
 


Standard_EXPORT Handle_Standard_Type& GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger",
			                                 sizeof(GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger) Handle(GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger))) {
       _anOtherObject = Handle(GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger)((Handle(GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger::DynamicType() const 
{ 
  return STANDARD_TYPE(GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger) ; 
}
//Standard_Boolean GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger::~Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger() {}
#define TheKey GEOMAlgo_PassKey
#define TheKey_hxx <GEOMAlgo_PassKey.hxx>
#define TheItem Standard_Integer
#define TheItem_hxx <Standard_Integer.hxx>
#define Hasher GEOMAlgo_PassKeyMapHasher
#define Hasher_hxx <GEOMAlgo_PassKeyMapHasher.hxx>
#define TCollection_DataMapNode GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger
#define TCollection_DataMapNode_hxx <GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx>
#define TCollection_DataMapIterator GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger
#define TCollection_DataMapIterator_hxx <GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger.hxx>
#define Handle_TCollection_DataMapNode Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger
#define TCollection_DataMapNode_Type_() GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger_Type_()
#define TCollection_DataMap GEOMAlgo_DataMapOfPassKeyInteger
#define TCollection_DataMap_hxx <GEOMAlgo_DataMapOfPassKeyInteger.hxx>
#include <TCollection_DataMapNode.gxx>

