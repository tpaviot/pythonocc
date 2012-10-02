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
// File:	NMTTools_DataMapOfIntegerListOfPaveBlock.hxx
// Created:	Mon Feb 20 09:27:40 2012
// Author:
//		<pkv@BDEURI37616>


#ifndef NMTTools_DataMapOfIntegerListOfPaveBlock_HeaderFile
#define NMTTools_DataMapOfIntegerListOfPaveBlock_HeaderFile


#include <TColStd_MapIntegerHasher.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>

#define _NCollection_MapHasher
#include <NCollection_DataMap.hxx>

typedef NCollection_DataMap<Standard_Integer, BOPTools_ListOfPaveBlock, TColStd_MapIntegerHasher> NMTTools_DataMapOfIntegerListOfPaveBlock;
typedef NMTTools_DataMapOfIntegerListOfPaveBlock::Iterator NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock;

#undef _NCollection_MapHasher


#endif
