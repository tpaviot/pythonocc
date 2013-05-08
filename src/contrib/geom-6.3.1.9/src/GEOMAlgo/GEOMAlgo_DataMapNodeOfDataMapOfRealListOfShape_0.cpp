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
#include <GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _TColStd_MapRealHasher_HeaderFile
#include <TColStd_MapRealHasher.hxx>
#endif
#ifndef _GEOMAlgo_DataMapOfRealListOfShape_HeaderFile
#include <GEOMAlgo_DataMapOfRealListOfShape.hxx>
#endif
#ifndef _GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape_HeaderFile
#include <GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape.hxx>
#endif
//GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape::~GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape() {}
 


Standard_EXPORT Handle_Standard_Type& GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape",
			                                 sizeof(GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape) Handle(GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape))) {
       _anOtherObject = Handle(GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape)((Handle(GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape::DynamicType() const 
{ 
  return STANDARD_TYPE(GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape) ; 
}
//Standard_Boolean GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape::~Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape() {}
#define TheKey Standard_Real
#define TheKey_hxx <Standard_Real.hxx>
#define TheItem TopTools_ListOfShape
#define TheItem_hxx <TopTools_ListOfShape.hxx>
#define Hasher TColStd_MapRealHasher
#define Hasher_hxx <TColStd_MapRealHasher.hxx>
#define TCollection_DataMapNode GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape
#define TCollection_DataMapNode_hxx <GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx>
#define TCollection_DataMapIterator GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape
#define TCollection_DataMapIterator_hxx <GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape.hxx>
#define Handle_TCollection_DataMapNode Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape
#define TCollection_DataMapNode_Type_() GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape_Type_()
#define TCollection_DataMap GEOMAlgo_DataMapOfRealListOfShape
#define TCollection_DataMap_hxx <GEOMAlgo_DataMapOfRealListOfShape.hxx>
#include <TCollection_DataMapNode.gxx>

