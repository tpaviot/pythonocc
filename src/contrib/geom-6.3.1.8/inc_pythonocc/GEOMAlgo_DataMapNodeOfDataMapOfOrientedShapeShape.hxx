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

#ifndef _GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape_HeaderFile
#define _GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape_HeaderFile
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape.hxx>
#endif

#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
class TopoDS_Shape;
class TopTools_OrientedShapeMapHasher;
class GEOMAlgo_DataMapOfOrientedShapeShape;
class GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape;



class GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape(const TopoDS_Shape& K,const TopoDS_Shape& I,const TCollection_MapNodePtr& n);

  TopoDS_Shape& Key() const;

  TopoDS_Shape& Value() const;
//Standard_EXPORT ~GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape();




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
TopoDS_Shape myKey;
TopoDS_Shape myValue;


};

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

#include <TCollection_DataMapNode.lxx>

#undef TheKey
#undef TheKey_hxx
#undef TheItem
#undef TheItem_hxx
#undef Hasher
#undef Hasher_hxx
#undef TCollection_DataMapNode
#undef TCollection_DataMapNode_hxx
#undef TCollection_DataMapIterator
#undef TCollection_DataMapIterator_hxx
#undef Handle_TCollection_DataMapNode
#undef TCollection_DataMapNode_Type_
#undef TCollection_DataMap
#undef TCollection_DataMap_hxx


// other Inline functions and methods (like "C++: function call" methods)
//


#endif
