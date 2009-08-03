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
#ifndef _NMTTools_StdMapNodeOfMapOfPaveBlock_HeaderFile
#define _NMTTools_StdMapNodeOfMapOfPaveBlock_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_NMTTools_StdMapNodeOfMapOfPaveBlock_HeaderFile
#include <Handle_NMTTools_StdMapNodeOfMapOfPaveBlock.hxx>
#endif

#ifndef _BOPTools_PaveBlock_HeaderFile
#include <BOPTools_PaveBlock.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
class BOPTools_PaveBlock;
class BOPTools_PaveBlockMapHasher;
class NMTTools_MapOfPaveBlock;
class NMTTools_MapIteratorOfMapOfPaveBlock;



class NMTTools_StdMapNodeOfMapOfPaveBlock : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

NMTTools_StdMapNodeOfMapOfPaveBlock(const BOPTools_PaveBlock& K,const TCollection_MapNodePtr& n);

  BOPTools_PaveBlock& Key() const;
//Standard_EXPORT ~NMTTools_StdMapNodeOfMapOfPaveBlock();




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
BOPTools_PaveBlock myKey;


};

#define TheKey BOPTools_PaveBlock
#define TheKey_hxx <BOPTools_PaveBlock.hxx>
#define Hasher BOPTools_PaveBlockMapHasher
#define Hasher_hxx <BOPTools_PaveBlockMapHasher.hxx>
#define TCollection_StdMapNode NMTTools_StdMapNodeOfMapOfPaveBlock
#define TCollection_StdMapNode_hxx <NMTTools_StdMapNodeOfMapOfPaveBlock.hxx>
#define TCollection_MapIterator NMTTools_MapIteratorOfMapOfPaveBlock
#define TCollection_MapIterator_hxx <NMTTools_MapIteratorOfMapOfPaveBlock.hxx>
#define Handle_TCollection_StdMapNode Handle_NMTTools_StdMapNodeOfMapOfPaveBlock
#define TCollection_StdMapNode_Type_() NMTTools_StdMapNodeOfMapOfPaveBlock_Type_()
#define TCollection_Map NMTTools_MapOfPaveBlock
#define TCollection_Map_hxx <NMTTools_MapOfPaveBlock.hxx>

#include <TCollection_StdMapNode.lxx>

#undef TheKey
#undef TheKey_hxx
#undef Hasher
#undef Hasher_hxx
#undef TCollection_StdMapNode
#undef TCollection_StdMapNode_hxx
#undef TCollection_MapIterator
#undef TCollection_MapIterator_hxx
#undef Handle_TCollection_StdMapNode
#undef TCollection_StdMapNode_Type_
#undef TCollection_Map
#undef TCollection_Map_hxx


// other Inline functions and methods (like "C++: function call" methods)
//


#endif
