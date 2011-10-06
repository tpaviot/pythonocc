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
#include <GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _Bnd_Box_HeaderFile
#include <Bnd_Box.hxx>
#endif
#ifndef _TopTools_ShapeMapHasher_HeaderFile
#include <TopTools_ShapeMapHasher.hxx>
#endif
#ifndef _GEOMAlgo_IndexedDataMapOfShapeBox_HeaderFile
#include <GEOMAlgo_IndexedDataMapOfShapeBox.hxx>
#endif
//GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox() {}
 


Standard_EXPORT Handle_Standard_Type& GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox",
			                                 sizeof(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox) Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox))) {
       _anOtherObject = Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)((Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::DynamicType() const 
{ 
  return STANDARD_TYPE(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox) ; 
}
//Standard_Boolean GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox() {}
#define TheKey TopoDS_Shape
#define TheKey_hxx <TopoDS_Shape.hxx>
#define TheItem Bnd_Box
#define TheItem_hxx <Bnd_Box.hxx>
#define Hasher TopTools_ShapeMapHasher
#define Hasher_hxx <TopTools_ShapeMapHasher.hxx>
#define TCollection_IndexedDataMapNode GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox
#define TCollection_IndexedDataMapNode_hxx <GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#define Handle_TCollection_IndexedDataMapNode Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox
#define TCollection_IndexedDataMapNode_Type_() GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox_Type_()
#define TCollection_IndexedDataMap GEOMAlgo_IndexedDataMapOfShapeBox
#define TCollection_IndexedDataMap_hxx <GEOMAlgo_IndexedDataMapOfShapeBox.hxx>
#include <TCollection_IndexedDataMapNode.gxx>

