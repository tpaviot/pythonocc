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
#ifndef _GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox_HeaderFile
#define _GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox_HeaderFile
#include <Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#endif

#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Bnd_Box_HeaderFile
#include <Bnd_Box.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
class TopoDS_Shape;
class Bnd_Box;
class TopTools_ShapeMapHasher;
class GEOMAlgo_IndexedDataMapOfShapeBox;



class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const TopoDS_Shape& K1,const Standard_Integer K2,const Bnd_Box& I,const TCollection_MapNodePtr& n1,const TCollection_MapNodePtr& n2);

  TopoDS_Shape& Key1() const;

  Standard_Integer& Key2() const;

  TCollection_MapNodePtr& Next2() const;

  Bnd_Box& Value() const;
//Standard_EXPORT ~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox();




 // Type management
 //
 Standard_EXPORT const Handle(Standard_Type)& DynamicType() const;
 //Standard_EXPORT Standard_Boolean	       IsKind(const Handle(Standard_Type)&) const;

protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //
TopoDS_Shape myKey1;
Standard_Integer myKey2;
Bnd_Box myValue;
TCollection_MapNodePtr myNext2;


};

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

#include <TCollection_IndexedDataMapNode.lxx>

#undef TheKey
#undef TheKey_hxx
#undef TheItem
#undef TheItem_hxx
#undef Hasher
#undef Hasher_hxx
#undef TCollection_IndexedDataMapNode
#undef TCollection_IndexedDataMapNode_hxx
#undef Handle_TCollection_IndexedDataMapNode
#undef TCollection_IndexedDataMapNode_Type_
#undef TCollection_IndexedDataMap
#undef TCollection_IndexedDataMap_hxx


// other Inline functions and methods (like "C++: function call" methods)
//


#endif
