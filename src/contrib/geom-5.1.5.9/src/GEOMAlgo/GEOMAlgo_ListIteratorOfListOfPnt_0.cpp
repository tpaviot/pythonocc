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
#include <GEOMAlgo_ListIteratorOfListOfPnt.hxx>

#ifndef _Standard_NoMoreObject_HeaderFile
#include <Standard_NoMoreObject.hxx>
#endif
#ifndef _Standard_NoSuchObject_HeaderFile
#include <Standard_NoSuchObject.hxx>
#endif
#ifndef _GEOMAlgo_ListOfPnt_HeaderFile
#include <GEOMAlgo_ListOfPnt.hxx>
#endif
#ifndef _gp_Pnt_HeaderFile
#include <gp_Pnt.hxx>
#endif
#ifndef _GEOMAlgo_ListNodeOfListOfPnt_HeaderFile
#include <GEOMAlgo_ListNodeOfListOfPnt.hxx>
#endif
 

#define Item gp_Pnt
#define Item_hxx <gp_Pnt.hxx>
#define TCollection_ListNode GEOMAlgo_ListNodeOfListOfPnt
#define TCollection_ListNode_hxx <GEOMAlgo_ListNodeOfListOfPnt.hxx>
#define TCollection_ListIterator GEOMAlgo_ListIteratorOfListOfPnt
#define TCollection_ListIterator_hxx <GEOMAlgo_ListIteratorOfListOfPnt.hxx>
#define Handle_TCollection_ListNode Handle_GEOMAlgo_ListNodeOfListOfPnt
#define TCollection_ListNode_Type_() GEOMAlgo_ListNodeOfListOfPnt_Type_()
#define TCollection_List GEOMAlgo_ListOfPnt
#define TCollection_List_hxx <GEOMAlgo_ListOfPnt.hxx>
#include <TCollection_ListIterator.gxx>

