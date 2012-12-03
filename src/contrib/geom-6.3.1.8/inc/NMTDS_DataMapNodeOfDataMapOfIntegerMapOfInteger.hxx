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
#ifndef _NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger_HeaderFile
#define _NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger_HeaderFile
#include <Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger.hxx>
#endif

#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _TColStd_MapOfInteger_HeaderFile
#include <TColStd_MapOfInteger.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
class TColStd_MapOfInteger;
class TColStd_MapIntegerHasher;
class NMTDS_DataMapOfIntegerMapOfInteger;
class NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger;



class NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Standard_Integer& K,const TColStd_MapOfInteger& I,const TCollection_MapNodePtr& n);

  Standard_Integer& Key() const;

  TColStd_MapOfInteger& Value() const;
//Standard_EXPORT ~NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger();




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
Standard_Integer myKey;
TColStd_MapOfInteger myValue;


};

#define TheKey Standard_Integer
#define TheKey_hxx <Standard_Integer.hxx>
#define TheItem TColStd_MapOfInteger
#define TheItem_hxx <TColStd_MapOfInteger.hxx>
#define Hasher TColStd_MapIntegerHasher
#define Hasher_hxx <TColStd_MapIntegerHasher.hxx>
#define TCollection_DataMapNode NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger
#define TCollection_DataMapNode_hxx <NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger.hxx>
#define TCollection_DataMapIterator NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger
#define TCollection_DataMapIterator_hxx <NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger.hxx>
#define Handle_TCollection_DataMapNode Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger
#define TCollection_DataMapNode_Type_() NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger_Type_()
#define TCollection_DataMap NMTDS_DataMapOfIntegerMapOfInteger
#define TCollection_DataMap_hxx <NMTDS_DataMapOfIntegerMapOfInteger.hxx>

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
