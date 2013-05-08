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
#ifndef _NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock_HeaderFile
#define _NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock_HeaderFile
#include <Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock.hxx>
#endif

#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _BOPTools_PaveBlock_HeaderFile
#include <BOPTools_PaveBlock.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
class TopoDS_Shape;
class BOPTools_PaveBlock;
class TopTools_ShapeMapHasher;
class NMTTools_IndexedDataMapOfShapePaveBlock;



class NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock(const TopoDS_Shape& K1,const Standard_Integer K2,const BOPTools_PaveBlock& I,const TCollection_MapNodePtr& n1,const TCollection_MapNodePtr& n2);

  TopoDS_Shape& Key1() const;

  Standard_Integer& Key2() const;

  TCollection_MapNodePtr& Next2() const;

  BOPTools_PaveBlock& Value() const;
//Standard_EXPORT ~NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock();




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
BOPTools_PaveBlock myValue;
TCollection_MapNodePtr myNext2;


};

#define TheKey TopoDS_Shape
#define TheKey_hxx <TopoDS_Shape.hxx>
#define TheItem BOPTools_PaveBlock
#define TheItem_hxx <BOPTools_PaveBlock.hxx>
#define Hasher TopTools_ShapeMapHasher
#define Hasher_hxx <TopTools_ShapeMapHasher.hxx>
#define TCollection_IndexedDataMapNode NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock
#define TCollection_IndexedDataMapNode_hxx <NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock.hxx>
#define Handle_TCollection_IndexedDataMapNode Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock
#define TCollection_IndexedDataMapNode_Type_() NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock_Type_()
#define TCollection_IndexedDataMap NMTTools_IndexedDataMapOfShapePaveBlock
#define TCollection_IndexedDataMap_hxx <NMTTools_IndexedDataMapOfShapePaveBlock.hxx>

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
