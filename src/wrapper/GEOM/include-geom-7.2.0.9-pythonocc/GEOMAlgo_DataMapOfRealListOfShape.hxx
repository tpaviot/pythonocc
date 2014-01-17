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
// File:        GEOMAlgo_DataMapOfRealListOfShape.hxx
// Created:     Wed Feb 22 10:51:48 2012
// Author:
//              <pkv@BDEURI37616>


#ifndef GEOMAlgo_DataMapOfRealListOfShape_HeaderFile
#define GEOMAlgo_DataMapOfRealListOfShape_HeaderFile

#include <Standard_Real.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TColStd_MapRealHasher.hxx>


#define _NCollection_MapHasher
#include <NCollection_DataMap.hxx>

typedef NCollection_DataMap<Standard_Real, TopTools_ListOfShape, TColStd_MapRealHasher> GEOMAlgo_DataMapOfRealListOfShape;
typedef GEOMAlgo_DataMapOfRealListOfShape::Iterator GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape;

#undef _NCollection_MapHasher



#endif
