// Copyright (C) 2007-2013  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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

// File:        NMTTools_CommonBlockAPI.hxx
// Created:     Mon Dec 15 11:38:04 2003
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _NMTTools_CommonBlockAPI_HeaderFile
#define _NMTTools_CommonBlockAPI_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Address.hxx>
#include <XBOPTools_ListOfPaveBlock.hxx>
#include <Standard_Integer.hxx>
#include <Standard_Boolean.hxx>
#include <NMTTools_CommonBlock.hxx>
#include <NMTTools_ListOfCommonBlock.hxx>
#include <XBOPTools_ListOfPaveBlock.hxx>
#include <XBOPTools_PaveBlock.hxx>

//=======================================================================
//class    : NMTTools_CommonBlockAPI
//purpose  :
//=======================================================================
class NMTTools_CommonBlockAPI
{
 public:
  Standard_EXPORT
    NMTTools_CommonBlockAPI(const NMTTools_ListOfCommonBlock& aList);

//! Selector <br>
  Standard_EXPORT
    const NMTTools_ListOfCommonBlock& List() const;

//! Returns all PaveBlock-s (from the list) that are <br>
//! common for the given edge with  DS-index <anE> <br>
  Standard_EXPORT
    const XBOPTools_ListOfPaveBlock& CommonPaveBlocks(const Standard_Integer anE) const;

//! Returns TRUE if given PaveBlock <aPB> is <br>
//! common for the Blocks from the list <br>
  Standard_EXPORT
    Standard_Boolean IsCommonBlock(const XBOPTools_PaveBlock& aPB) const;

  Standard_EXPORT
    NMTTools_CommonBlock& CommonBlock(const XBOPTools_PaveBlock& aPB) const;
protected:
//private:

Standard_Address myListOfCommonBlock;
XBOPTools_ListOfPaveBlock myListOfPaveBlock;
};
#endif
