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
#include <NMTTools_IndexedDataMapOfShapePaveBlock.hxx>

#ifndef _Standard_DomainError_HeaderFile
#include <Standard_DomainError.hxx>
#endif
#ifndef _Standard_OutOfRange_HeaderFile
#include <Standard_OutOfRange.hxx>
#endif
#ifndef _Standard_NoSuchObject_HeaderFile
#include <Standard_NoSuchObject.hxx>
#endif
#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _BOPTools_PaveBlock_HeaderFile
#include <BOPTools_PaveBlock.hxx>
#endif
#ifndef _TopTools_ShapeMapHasher_HeaderFile
#include <TopTools_ShapeMapHasher.hxx>
#endif
#ifndef _NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock_HeaderFile
#include <NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock.hxx>
#endif
 

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
#include <TCollection_IndexedDataMap.gxx>

