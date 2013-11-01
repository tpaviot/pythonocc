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
#ifndef _NMTDS_StdMapNodeOfMapOfPassKeyBoolean_HeaderFile
#define _NMTDS_StdMapNodeOfMapOfPassKeyBoolean_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean_HeaderFile
#include <Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean.hxx>
#endif

#ifndef _NMTDS_PassKeyBoolean_HeaderFile
#include <NMTDS_PassKeyBoolean.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
class NMTDS_PassKeyBoolean;
class NMTDS_PassKeyMapHasher;
class NMTDS_MapOfPassKeyBoolean;
class NMTDS_MapIteratorOfMapOfPassKeyBoolean;



class NMTDS_StdMapNodeOfMapOfPassKeyBoolean : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

NMTDS_StdMapNodeOfMapOfPassKeyBoolean(const NMTDS_PassKeyBoolean& K,const TCollection_MapNodePtr& n);

  NMTDS_PassKeyBoolean& Key() const;
//Standard_EXPORT ~NMTDS_StdMapNodeOfMapOfPassKeyBoolean();




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
NMTDS_PassKeyBoolean myKey;


};

#define TheKey NMTDS_PassKeyBoolean
#define TheKey_hxx <NMTDS_PassKeyBoolean.hxx>
#define Hasher NMTDS_PassKeyMapHasher
#define Hasher_hxx <NMTDS_PassKeyMapHasher.hxx>
#define TCollection_MapIterator NMTDS_MapIteratorOfMapOfPassKeyBoolean
#define TCollection_MapIterator_hxx <NMTDS_MapIteratorOfMapOfPassKeyBoolean.hxx>
#define TCollection_StdMapNode NMTDS_StdMapNodeOfMapOfPassKeyBoolean
#define TCollection_StdMapNode_hxx <NMTDS_StdMapNodeOfMapOfPassKeyBoolean.hxx>
#define Handle_TCollection_StdMapNode Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean
#define TCollection_StdMapNode_Type_() NMTDS_StdMapNodeOfMapOfPassKeyBoolean_Type_()
#define TCollection_Map NMTDS_MapOfPassKeyBoolean
#define TCollection_Map_hxx <NMTDS_MapOfPassKeyBoolean.hxx>

#include <TCollection_StdMapNode.lxx>

#undef TheKey
#undef TheKey_hxx
#undef Hasher
#undef Hasher_hxx
#undef TCollection_MapIterator
#undef TCollection_MapIterator_hxx
#undef TCollection_StdMapNode
#undef TCollection_StdMapNode_hxx
#undef Handle_TCollection_StdMapNode
#undef TCollection_StdMapNode_Type_
#undef TCollection_Map
#undef TCollection_Map_hxx


// other Inline functions and methods (like "C++: function call" methods)
//


#endif
