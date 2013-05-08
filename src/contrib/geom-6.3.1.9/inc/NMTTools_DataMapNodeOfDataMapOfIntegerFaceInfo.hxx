// Copyright (C) 2007-2011  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//

#ifndef _NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo_HeaderFile
#define _NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo_HeaderFile
#include <Handle_NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo.hxx>
#endif

#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _NMTTools_FaceInfo_HeaderFile
#include <NMTTools_FaceInfo.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
class NMTTools_FaceInfo;
class TColStd_MapIntegerHasher;
class NMTTools_DataMapOfIntegerFaceInfo;
class NMTTools_DataMapIteratorOfDataMapOfIntegerFaceInfo;



class NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo : public TCollection_MapNode {

public:
 // Methods PUBLIC
 // 

NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo(const Standard_Integer& K,const NMTTools_FaceInfo& I,const TCollection_MapNodePtr& n);

  Standard_Integer& Key() const;

  NMTTools_FaceInfo& Value() const;
//Standard_EXPORT ~NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo();




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
NMTTools_FaceInfo myValue;


};

#define TheKey Standard_Integer
#define TheKey_hxx <Standard_Integer.hxx>
#define TheItem NMTTools_FaceInfo
#define TheItem_hxx <NMTTools_FaceInfo.hxx>
#define Hasher TColStd_MapIntegerHasher
#define Hasher_hxx <TColStd_MapIntegerHasher.hxx>
#define TCollection_DataMapNode NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo
#define TCollection_DataMapNode_hxx <NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo.hxx>
#define TCollection_DataMapIterator NMTTools_DataMapIteratorOfDataMapOfIntegerFaceInfo
#define TCollection_DataMapIterator_hxx <NMTTools_DataMapIteratorOfDataMapOfIntegerFaceInfo.hxx>
#define Handle_TCollection_DataMapNode Handle_NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo
#define TCollection_DataMapNode_Type_() NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo_Type_()
#define TCollection_DataMap NMTTools_DataMapOfIntegerFaceInfo
#define TCollection_DataMap_hxx <NMTTools_DataMapOfIntegerFaceInfo.hxx>

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
