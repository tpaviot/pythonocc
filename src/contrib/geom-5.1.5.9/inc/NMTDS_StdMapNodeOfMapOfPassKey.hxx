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
#ifndef _NMTDS_StdMapNodeOfMapOfPassKey_HeaderFile
#define _NMTDS_StdMapNodeOfMapOfPassKey_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_NMTDS_StdMapNodeOfMapOfPassKey_HeaderFile
#include <Handle_NMTDS_StdMapNodeOfMapOfPassKey.hxx>
#endif

#ifndef _NMTDS_PassKey_HeaderFile
#include <NMTDS_PassKey.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
class NMTDS_PassKey;
class NMTDS_PassKeyMapHasher;
class NMTDS_MapOfPassKey;
class NMTDS_MapIteratorOfMapOfPassKey;



class NMTDS_StdMapNodeOfMapOfPassKey : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

NMTDS_StdMapNodeOfMapOfPassKey(const NMTDS_PassKey& K,const TCollection_MapNodePtr& n);

  NMTDS_PassKey& Key() const;
//Standard_EXPORT ~NMTDS_StdMapNodeOfMapOfPassKey();




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
NMTDS_PassKey myKey;


};

#define TheKey NMTDS_PassKey
#define TheKey_hxx <NMTDS_PassKey.hxx>
#define Hasher NMTDS_PassKeyMapHasher
#define Hasher_hxx <NMTDS_PassKeyMapHasher.hxx>
#define TCollection_StdMapNode NMTDS_StdMapNodeOfMapOfPassKey
#define TCollection_StdMapNode_hxx <NMTDS_StdMapNodeOfMapOfPassKey.hxx>
#define TCollection_MapIterator NMTDS_MapIteratorOfMapOfPassKey
#define TCollection_MapIterator_hxx <NMTDS_MapIteratorOfMapOfPassKey.hxx>
#define Handle_TCollection_StdMapNode Handle_NMTDS_StdMapNodeOfMapOfPassKey
#define TCollection_StdMapNode_Type_() NMTDS_StdMapNodeOfMapOfPassKey_Type_()
#define TCollection_Map NMTDS_MapOfPassKey
#define TCollection_Map_hxx <NMTDS_MapOfPassKey.hxx>

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
