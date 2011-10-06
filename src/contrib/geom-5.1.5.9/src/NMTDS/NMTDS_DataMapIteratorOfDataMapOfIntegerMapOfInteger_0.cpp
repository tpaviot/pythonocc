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
#include <NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger.hxx>

#ifndef _Standard_NoSuchObject_HeaderFile
#include <Standard_NoSuchObject.hxx>
#endif
#ifndef _TColStd_MapOfInteger_HeaderFile
#include <TColStd_MapOfInteger.hxx>
#endif
#ifndef _TColStd_MapIntegerHasher_HeaderFile
#include <TColStd_MapIntegerHasher.hxx>
#endif
#ifndef _NMTDS_DataMapOfIntegerMapOfInteger_HeaderFile
#include <NMTDS_DataMapOfIntegerMapOfInteger.hxx>
#endif
#ifndef _NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger_HeaderFile
#include <NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger.hxx>
#endif
 

#define TheKey Standard_Integer
#define TheKey_hxx <Standard_Integer.hxx>
#define TheItem TColStd_MapOfInteger
#define TheItem_hxx <TColStd_MapOfInteger.hxx>
#define Hasher TColStd_MapIntegerHasher
#define Hasher_hxx <TColStd_MapIntegerHasher.hxx>
#define TCollection_DataMapNode NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger
#define TCollection_DataMapNode_hxx <NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger.hxx>
#define TCollection_DataMapIterator NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger
#define TCollection_DataMapIterator_hxx <NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger.hxx>
#define Handle_TCollection_DataMapNode Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger
#define TCollection_DataMapNode_Type_() NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger_Type_()
#define TCollection_DataMap NMTDS_DataMapOfIntegerMapOfInteger
#define TCollection_DataMap_hxx <NMTDS_DataMapOfIntegerMapOfInteger.hxx>
#include <TCollection_DataMapIterator.gxx>

