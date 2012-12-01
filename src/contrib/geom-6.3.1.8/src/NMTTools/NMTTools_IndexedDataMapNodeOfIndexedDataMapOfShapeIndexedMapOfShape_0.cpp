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
#include <NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _TopTools_IndexedMapOfShape_HeaderFile
#include <TopTools_IndexedMapOfShape.hxx>
#endif
#ifndef _TopTools_ShapeMapHasher_HeaderFile
#include <TopTools_ShapeMapHasher.hxx>
#endif
#ifndef _NMTTools_IndexedDataMapOfShapeIndexedMapOfShape_HeaderFile
#include <NMTTools_IndexedDataMapOfShapeIndexedMapOfShape.hxx>
#endif
//NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape::~NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape() {}
 


Standard_EXPORT Handle_Standard_Type& NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape",
			                                 sizeof(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape) Handle(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape))) {
       _anOtherObject = Handle(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape)((Handle(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape::DynamicType() const 
{ 
  return STANDARD_TYPE(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape) ; 
}
//Standard_Boolean NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape::~Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape() {}
#define TheKey TopoDS_Shape
#define TheKey_hxx <TopoDS_Shape.hxx>
#define TheItem TopTools_IndexedMapOfShape
#define TheItem_hxx <TopTools_IndexedMapOfShape.hxx>
#define Hasher TopTools_ShapeMapHasher
#define Hasher_hxx <TopTools_ShapeMapHasher.hxx>
#define TCollection_IndexedDataMapNode NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape
#define TCollection_IndexedDataMapNode_hxx <NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape.hxx>
#define Handle_TCollection_IndexedDataMapNode Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape
#define TCollection_IndexedDataMapNode_Type_() NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape_Type_()
#define TCollection_IndexedDataMap NMTTools_IndexedDataMapOfShapeIndexedMapOfShape
#define TCollection_IndexedDataMap_hxx <NMTTools_IndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include <TCollection_IndexedDataMapNode.gxx>

