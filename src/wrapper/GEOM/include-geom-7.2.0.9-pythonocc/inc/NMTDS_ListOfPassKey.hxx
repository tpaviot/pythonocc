// Copyright (C) 2007-2013  CEA/DEN, EDF R&D, OPEN CASCADE
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
// File:        NMTDS_ListOfPassKey.hxx
// Created:     Mon Feb 20 07:27:34 2012
// Author:      
//              <pkv@BDEURI37616>


#ifndef NMTDS_ListOfPassKey_HeaderFile
#define NMTDS_ListOfPassKey_HeaderFile

#include <NCollection_List.hxx>   
#include <NMTDS_PassKey.hxx>

typedef NCollection_List<NMTDS_PassKey> NMTDS_ListOfPassKey; 
typedef NMTDS_ListOfPassKey::Iterator NMTDS_ListIteratorOfListOfPassKey;  

#endif
