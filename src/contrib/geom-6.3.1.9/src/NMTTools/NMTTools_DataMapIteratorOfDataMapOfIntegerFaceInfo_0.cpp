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

#include <NMTTools_DataMapIteratorOfDataMapOfIntegerFaceInfo.hxx>

#ifndef _Standard_NoSuchObject_HeaderFile
#include <Standard_NoSuchObject.hxx>
#endif
#ifndef _NMTTools_FaceInfo_HeaderFile
#include <NMTTools_FaceInfo.hxx>
#endif
#ifndef _TColStd_MapIntegerHasher_HeaderFile
#include <TColStd_MapIntegerHasher.hxx>
#endif
#ifndef _NMTTools_DataMapOfIntegerFaceInfo_HeaderFile
#include <NMTTools_DataMapOfIntegerFaceInfo.hxx>
#endif
#ifndef _NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo_HeaderFile
#include <NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo.hxx>
#endif
 

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
#include <TCollection_DataMapIterator.gxx>

