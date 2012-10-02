// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:        NMTTools_CommonBlock.hxx
// Created:     Tue Dec  9 12:23:29 2003
// Author:      Peter KURNEV
//              <pkv@irinox>
//

#ifndef _NMTTools_CommonBlock_HeaderFile
#define _NMTTools_CommonBlock_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <Standard_Integer.hxx>
#include <Standard_Boolean.hxx>
#include <BOPTools_PaveBlock.hxx>


//=======================================================================
//function : NMTTools_CommonBlock
//purpose  :
//=======================================================================
class NMTTools_CommonBlock  {
 public:
  Standard_EXPORT
    NMTTools_CommonBlock();

  Standard_EXPORT
    void AddPaveBlock(const BOPTools_PaveBlock& aPB) ;

  Standard_EXPORT
    void AddFace(const Standard_Integer aF) ;

  Standard_EXPORT
    void AddFaces(const TColStd_ListOfInteger& aLF) ;

  Standard_EXPORT
    const BOPTools_ListOfPaveBlock& PaveBlocks() const;

  Standard_EXPORT
    const TColStd_ListOfInteger& Faces() const;

  Standard_EXPORT
    const BOPTools_PaveBlock& PaveBlock1() const;

  Standard_EXPORT
    BOPTools_PaveBlock& PaveBlock1(const Standard_Integer anIx) ;

  Standard_EXPORT
    BOPTools_PaveBlock& PaveBlockOnEdge(const Standard_Integer anIndex) ;

  Standard_EXPORT
    Standard_Boolean IsPaveBlockOnFace(const Standard_Integer anIndex) const;

  Standard_EXPORT
    Standard_Boolean IsPaveBlockOnEdge(const Standard_Integer anIndex) const;

  Standard_EXPORT
    Standard_Boolean IsEqual(const NMTTools_CommonBlock& aCB) const;

  Standard_EXPORT
    Standard_Boolean Contains(const BOPTools_PaveBlock& aPB) const;

 protected:
  BOPTools_ListOfPaveBlock myPaveBlocks;
  TColStd_ListOfInteger myFaces;
};

#endif
