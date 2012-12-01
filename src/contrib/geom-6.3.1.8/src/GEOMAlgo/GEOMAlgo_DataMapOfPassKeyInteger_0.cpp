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
#include <GEOMAlgo_DataMapOfPassKeyInteger.hxx>

#ifndef _Standard_DomainError_HeaderFile
#include <Standard_DomainError.hxx>
#endif
#ifndef _Standard_NoSuchObject_HeaderFile
#include <Standard_NoSuchObject.hxx>
#endif
#ifndef _GEOMAlgo_PassKey_HeaderFile
#include <GEOMAlgo_PassKey.hxx>
#endif
#ifndef _GEOMAlgo_PassKeyMapHasher_HeaderFile
#include <GEOMAlgo_PassKeyMapHasher.hxx>
#endif
#ifndef _GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger_HeaderFile
#include <GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx>
#endif
#ifndef _GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger_HeaderFile
#include <GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger.hxx>
#endif
 

#define TheKey GEOMAlgo_PassKey
#define TheKey_hxx <GEOMAlgo_PassKey.hxx>
#define TheItem Standard_Integer
#define TheItem_hxx <Standard_Integer.hxx>
#define Hasher GEOMAlgo_PassKeyMapHasher
#define Hasher_hxx <GEOMAlgo_PassKeyMapHasher.hxx>
#define TCollection_DataMapNode GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger
#define TCollection_DataMapNode_hxx <GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx>
#define TCollection_DataMapIterator GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger
#define TCollection_DataMapIterator_hxx <GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger.hxx>
#define Handle_TCollection_DataMapNode Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger
#define TCollection_DataMapNode_Type_() GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger_Type_()
#define TCollection_DataMap GEOMAlgo_DataMapOfPassKeyInteger
#define TCollection_DataMap_hxx <GEOMAlgo_DataMapOfPassKeyInteger.hxx>
#include <TCollection_DataMap.gxx>

