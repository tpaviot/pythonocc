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
#ifndef _GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape_HeaderFile
#define _GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape_HeaderFile
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape.hxx>
#endif

#ifndef _GEOMAlgo_PassKeyShape_HeaderFile
#include <GEOMAlgo_PassKeyShape.hxx>
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
class GEOMAlgo_PassKeyShape;
class TopoDS_Shape;
class GEOMAlgo_PassKeyShapeMapHasher;
class GEOMAlgo_DataMapOfPassKeyShapeShape;
class GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape;



class GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape(const GEOMAlgo_PassKeyShape& K,const TopoDS_Shape& I,const TCollection_MapNodePtr& n);

  GEOMAlgo_PassKeyShape& Key() const;

  TopoDS_Shape& Value() const;
//Standard_EXPORT ~GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape();




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
GEOMAlgo_PassKeyShape myKey;
TopoDS_Shape myValue;


};

#define TheKey GEOMAlgo_PassKeyShape
#define TheKey_hxx <GEOMAlgo_PassKeyShape.hxx>
#define TheItem TopoDS_Shape
#define TheItem_hxx <TopoDS_Shape.hxx>
#define Hasher GEOMAlgo_PassKeyShapeMapHasher
#define Hasher_hxx <GEOMAlgo_PassKeyShapeMapHasher.hxx>
#define TCollection_DataMapNode GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape
#define TCollection_DataMapNode_hxx <GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape.hxx>
#define TCollection_DataMapIterator GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape
#define TCollection_DataMapIterator_hxx <GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape.hxx>
#define Handle_TCollection_DataMapNode Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape
#define TCollection_DataMapNode_Type_() GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape_Type_()
#define TCollection_DataMap GEOMAlgo_DataMapOfPassKeyShapeShape
#define TCollection_DataMap_hxx <GEOMAlgo_DataMapOfPassKeyShapeShape.hxx>

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
