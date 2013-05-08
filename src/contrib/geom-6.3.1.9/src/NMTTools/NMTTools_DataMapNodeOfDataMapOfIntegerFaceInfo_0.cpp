// Copyright (C) 2007-2011  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//

#include <NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _NMTTools_FaceInfo_HeaderFile
#include <NMTTools_FaceInfo.hxx>
#endif
#ifndef _TColStd_MapIntegerHasher_HeaderFile
#include <TColStd_MapIntegerHasher.hxx>
#endif
#ifndef _NMTTools_DataMapOfIntegerFaceInfo_HeaderFile
#include <NMTTools_DataMapOfIntegerFaceInfo.hxx>
#endif
#ifndef _NMTTools_DataMapIteratorOfDataMapOfIntegerFaceInfo_HeaderFile
#include <NMTTools_DataMapIteratorOfDataMapOfIntegerFaceInfo.hxx>
#endif
//NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo::~NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo() {}
 


Standard_EXPORT Handle_Standard_Type& NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo",
			                                 sizeof(NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo) Handle(NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo))) {
       _anOtherObject = Handle(NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo)((Handle(NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo::DynamicType() const 
{ 
  return STANDARD_TYPE(NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo) ; 
}
//Standard_Boolean NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo::~Handle_NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo() {}
#define TheKey Standard_Integer
#define TheKey_hxx <Standard_Integer.hxx>
#define TheItem NMTTools_FaceInfo
#define TheItem_hxx <NMTTools_FaceInfo.hxx>
#define Hasher TColStd_MapIntegerHasher
#define Hasher_hxx <TColStd_MapIntegerHasher.hxx>
#define TCollection_DataMapNode NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo
#define TCollection_DataMapNode_hxx <NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo.hxx>
#define TCollection_DataMapIterator NMTTools_DataMapIteratorOfDataMapOfIntegerFaceInfo
#define TCollection_DataMapIterator_hxx <NMTTools_DataMapIteratorOfDataMapOfIntegerFaceInfo.hxx>
#define Handle_TCollection_DataMapNode Handle_NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo
#define TCollection_DataMapNode_Type_() NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo_Type_()
#define TCollection_DataMap NMTTools_DataMapOfIntegerFaceInfo
#define TCollection_DataMap_hxx <NMTTools_DataMapOfIntegerFaceInfo.hxx>
#include <TCollection_DataMapNode.gxx>

