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
#ifndef _GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape_HeaderFile
#define _GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape_HeaderFile
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx>
#endif

#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
class TopTools_ListOfShape;
class TColStd_MapRealHasher;
class GEOMAlgo_DataMapOfRealListOfShape;
class GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape;



class GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape(const Standard_Real& K,const TopTools_ListOfShape& I,const TCollection_MapNodePtr& n);

  Standard_Real& Key() const;

  TopTools_ListOfShape& Value() const;
//Standard_EXPORT ~GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape();




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
Standard_Real myKey;
TopTools_ListOfShape myValue;


};

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
