// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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
// File:	GEOMAlgo_IndexedDataMapOfIntegerShape.hxx
// Created:	Wed Feb 22 11:22:18 2012
// Author:
//		<pkv@BDEURI37616>


#ifndef GEOMAlgo_IndexedDataMapOfIntegerShape_HeaderFile
#define GEOMAlgo_IndexedDataMapOfIntegerShape_HeaderFile



#include <TopoDS_Shape.hxx>
#include <Standard_Integer.hxx>
#include <TColStd_MapIntegerHasher.hxx>

#define _NCollection_MapHasher
#include <NCollection_IndexedDataMap.hxx>


typedef NCollection_IndexedDataMap<Standard_Integer, TopoDS_Shape, TColStd_MapIntegerHasher> GEOMAlgo_IndexedDataMapOfIntegerShape;

#undef _NCollection_MapHasher



#endif
