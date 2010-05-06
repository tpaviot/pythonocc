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
#include <NMTDS_ListIteratorOfListOfPassKey.hxx>

#ifndef _Standard_NoMoreObject_HeaderFile
#include <Standard_NoMoreObject.hxx>
#endif
#ifndef _Standard_NoSuchObject_HeaderFile
#include <Standard_NoSuchObject.hxx>
#endif
#ifndef _NMTDS_ListOfPassKey_HeaderFile
#include <NMTDS_ListOfPassKey.hxx>
#endif
#ifndef _NMTDS_PassKey_HeaderFile
#include <NMTDS_PassKey.hxx>
#endif
#ifndef _NMTDS_ListNodeOfListOfPassKey_HeaderFile
#include <NMTDS_ListNodeOfListOfPassKey.hxx>
#endif
 

#define Item NMTDS_PassKey
#define Item_hxx <NMTDS_PassKey.hxx>
#define TCollection_ListNode NMTDS_ListNodeOfListOfPassKey
#define TCollection_ListNode_hxx <NMTDS_ListNodeOfListOfPassKey.hxx>
#define TCollection_ListIterator NMTDS_ListIteratorOfListOfPassKey
#define TCollection_ListIterator_hxx <NMTDS_ListIteratorOfListOfPassKey.hxx>
#define Handle_TCollection_ListNode Handle_NMTDS_ListNodeOfListOfPassKey
#define TCollection_ListNode_Type_() NMTDS_ListNodeOfListOfPassKey_Type_()
#define TCollection_List NMTDS_ListOfPassKey
#define TCollection_List_hxx <NMTDS_ListOfPassKey.hxx>
#include <TCollection_ListIterator.gxx>

