// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
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

#include <GEOM_DataMapOfAsciiStringTransient.hxx>

#ifndef _Standard_DomainError_HeaderFile
#include <Standard_DomainError.hxx>
#endif
#ifndef _Standard_NoSuchObject_HeaderFile
#include <Standard_NoSuchObject.hxx>
#endif
#ifndef _TCollection_AsciiString_HeaderFile
#include <TCollection_AsciiString.hxx>
#endif
#ifndef _Standard_Transient_HeaderFile
#include <Standard_Transient.hxx>
#endif
#ifndef _GEOM_DataMapNodeOfDataMapOfAsciiStringTransient_HeaderFile
#include <GEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx>
#endif
#ifndef _GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient_HeaderFile
#include <GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient.hxx>
#endif
 

#define TheKey TCollection_AsciiString
#define TheKey_hxx <TCollection_AsciiString.hxx>
#define TheItem Handle_Standard_Transient
#define TheItem_hxx <Standard_Transient.hxx>
#define Hasher TCollection_AsciiString
#define Hasher_hxx <TCollection_AsciiString.hxx>
#define TCollection_DataMapNode GEOM_DataMapNodeOfDataMapOfAsciiStringTransient
#define TCollection_DataMapNode_hxx <GEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx>
#define TCollection_DataMapIterator GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient
#define TCollection_DataMapIterator_hxx <GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient.hxx>
#define Handle_TCollection_DataMapNode Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient
#define TCollection_DataMapNode_Type_() GEOM_DataMapNodeOfDataMapOfAsciiStringTransient_Type_()
#define TCollection_DataMap GEOM_DataMapOfAsciiStringTransient
#define TCollection_DataMap_hxx <GEOM_DataMapOfAsciiStringTransient.hxx>
#include <TCollection_DataMap.gxx>

