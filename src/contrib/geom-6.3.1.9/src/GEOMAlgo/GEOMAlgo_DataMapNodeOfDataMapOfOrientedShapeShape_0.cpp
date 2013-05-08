//  Copyright (C) 2007-2010  CEA/DEN, EDF R&D, OPEN CASCADE
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

#include <GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _TopTools_OrientedShapeMapHasher_HeaderFile
#include <TopTools_OrientedShapeMapHasher.hxx>
#endif
#ifndef _GEOMAlgo_DataMapOfOrientedShapeShape_HeaderFile
#include <GEOMAlgo_DataMapOfOrientedShapeShape.hxx>
#endif
#ifndef _GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape_HeaderFile
#include <GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape.hxx>
#endif
//GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape::~GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape() {}
 


Standard_EXPORT Handle_Standard_Type& GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape",
			                                 sizeof(GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape) Handle(GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape))) {
       _anOtherObject = Handle(GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape)((Handle(GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape::DynamicType() const 
{ 
  return STANDARD_TYPE(GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape) ; 
}
//Standard_Boolean GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape::~Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape() {}
#define TheKey TopoDS_Shape
#define TheKey_hxx <TopoDS_Shape.hxx>
#define TheItem TopoDS_Shape
#define TheItem_hxx <TopoDS_Shape.hxx>
#define Hasher TopTools_OrientedShapeMapHasher
#define Hasher_hxx <TopTools_OrientedShapeMapHasher.hxx>
#define TCollection_DataMapNode GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape
#define TCollection_DataMapNode_hxx <GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape.hxx>
#define TCollection_DataMapIterator GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape
#define TCollection_DataMapIterator_hxx <GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape.hxx>
#define Handle_TCollection_DataMapNode Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape
#define TCollection_DataMapNode_Type_() GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape_Type_()
#define TCollection_DataMap GEOMAlgo_DataMapOfOrientedShapeShape
#define TCollection_DataMap_hxx <GEOMAlgo_DataMapOfOrientedShapeShape.hxx>
#include <TCollection_DataMapNode.gxx>

