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

#include <NMTDS_IndexedDataMapOfShapeBndSphere.hxx>

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
#ifndef _NMTDS_BndSphere_HeaderFile
#include <NMTDS_BndSphere.hxx>
#endif
#ifndef _TopTools_ShapeMapHasher_HeaderFile
#include <TopTools_ShapeMapHasher.hxx>
#endif
#ifndef _NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBndSphere_HeaderFile
#include <NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBndSphere.hxx>
#endif
 

#define TheKey TopoDS_Shape
#define TheKey_hxx <TopoDS_Shape.hxx>
#define TheItem NMTDS_BndSphere
#define TheItem_hxx <NMTDS_BndSphere.hxx>
#define Hasher TopTools_ShapeMapHasher
#define Hasher_hxx <TopTools_ShapeMapHasher.hxx>
#define TCollection_IndexedDataMapNode NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBndSphere
#define TCollection_IndexedDataMapNode_hxx <NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBndSphere.hxx>
#define Handle_TCollection_IndexedDataMapNode Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBndSphere
#define TCollection_IndexedDataMapNode_Type_() NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBndSphere_Type_()
#define TCollection_IndexedDataMap NMTDS_IndexedDataMapOfShapeBndSphere
#define TCollection_IndexedDataMap_hxx <NMTDS_IndexedDataMapOfShapeBndSphere.hxx>
#include <TCollection_IndexedDataMap.gxx>

