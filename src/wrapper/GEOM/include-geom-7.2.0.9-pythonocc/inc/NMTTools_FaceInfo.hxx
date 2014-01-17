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

// File:        NMTTools_FaceInfo.hxx
// Created:     Tue Dec  9 12:23:29 2003
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _NMTTools_FaceInfo_HeaderFile
#define _NMTTools_FaceInfo_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Integer.hxx>
#include <NMTTools_MapOfPaveBlock.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <NMTTools_MapOfPaveBlock.hxx>
#include <TColStd_MapOfInteger.hxx>

//=======================================================================
//class    : NMTTools_FaceInfo
//purpose  :
//=======================================================================
class NMTTools_FaceInfo  {
 public:

  //! Empty contructor <br>
  //! <br>
  NMTTools_FaceInfo();

  virtual ~NMTTools_FaceInfo();

  //!  Clears the contents <br>
      Standard_EXPORT     void Clear() ;

  //! Modifier <br>
  //! Sets the index of the face <theI> <br>
  void SetIndex(const Standard_Integer theI) ;

  //! Selector <br>
  //! Returns the index of the face <br>
  //! <br>
  //! In <br>
  //! <br>
  Standard_Integer Index() const;

  //! Selector <br>
  //! Returns the pave blocks of the face <br>
  //! that  have state In <br>
  const NMTTools_MapOfPaveBlock& PaveBlocksIn() const;

//! Selector/Modifier <br>
  //! Returns the pave blocks <br>
  //!  of the face <br>
  //! that  have state In <br>
  NMTTools_MapOfPaveBlock& ChangePaveBlocksIn() ;

  //! Selector <br>
  //! Returns the list of indices for vertices <br>
  //!  of the face <br>
  //! that have state In <br>
  const TColStd_MapOfInteger& VerticesIn() const;

  //! Selector/Modifier <br>
  //! Returns the list of indices for vertices <br>
  //!  of the face <br>
  //! that have state In <br>
  //! <br>
  //! On <br>
  //! <br>
  TColStd_MapOfInteger& ChangeVerticesIn() ;

  //! Selector <br>
  //! Returns the pave blocks of the face <br>
  //! that  have state On <br>
  const NMTTools_MapOfPaveBlock& PaveBlocksOn() const;

  //! Selector/Modifier <br>
  //! Returns the pave blocks <br>
  //!  of the face <br>
  //! that  have state On <br>
  NMTTools_MapOfPaveBlock& ChangePaveBlocksOn() ;

  //! Selector <br>
  //! Returns the list of indices for vertices <br>
  //!  of the face <br>
  //! that have state On <br>
  const TColStd_MapOfInteger& VerticesOn() const;

  //! Selector/Modifier <br>
  //! Returns the list of indices for vertices <br>
  //!  of the face <br>
  //! that have state On <br>
  TColStd_MapOfInteger& ChangeVerticesOn() ;

 protected:
  Standard_Integer myIndex;
  NMTTools_MapOfPaveBlock myPaveBlocksIn;
  TColStd_MapOfInteger myVerticesIn;
  NMTTools_MapOfPaveBlock myPaveBlocksOn;
      TColStd_MapOfInteger myVerticesOn;
};

#include <NMTTools_FaceInfo.lxx>
#endif
