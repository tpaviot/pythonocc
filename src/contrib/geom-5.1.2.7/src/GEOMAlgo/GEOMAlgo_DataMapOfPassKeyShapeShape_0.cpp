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
#include <GEOMAlgo_DataMapOfPassKeyShapeShape.hxx>

#ifndef _Standard_DomainError_HeaderFile
#include <Standard_DomainError.hxx>
#endif
#ifndef _Standard_NoSuchObject_HeaderFile
#include <Standard_NoSuchObject.hxx>
#endif
#ifndef _GEOMAlgo_PassKeyShape_HeaderFile
#include <GEOMAlgo_PassKeyShape.hxx>
#endif
#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _GEOMAlgo_PassKeyShapeMapHasher_HeaderFile
#include <GEOMAlgo_PassKeyShapeMapHasher.hxx>
#endif
#ifndef _GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape_HeaderFile
#include <GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape.hxx>
#endif
#ifndef _GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape_HeaderFile
#include <GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape.hxx>
#endif
 

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
#include <TCollection_DataMap.gxx>

