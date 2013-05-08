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
#include <NMTDS_MapOfPassKeyBoolean.hxx>

#ifndef _Standard_DomainError_HeaderFile
#include <Standard_DomainError.hxx>
#endif
#ifndef _NMTDS_PassKeyBoolean_HeaderFile
#include <NMTDS_PassKeyBoolean.hxx>
#endif
#ifndef _NMTDS_PassKeyMapHasher_HeaderFile
#include <NMTDS_PassKeyMapHasher.hxx>
#endif
#ifndef _NMTDS_MapIteratorOfMapOfPassKeyBoolean_HeaderFile
#include <NMTDS_MapIteratorOfMapOfPassKeyBoolean.hxx>
#endif
#ifndef _NMTDS_StdMapNodeOfMapOfPassKeyBoolean_HeaderFile
#include <NMTDS_StdMapNodeOfMapOfPassKeyBoolean.hxx>
#endif
 

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
#include <TCollection_Map.gxx>

