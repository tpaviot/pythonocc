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
// File:	NMTDS_BoxBndTree.hxx
// Created:	Tue Oct 17 12:50:31 2006
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#ifndef NMTDS_BoxBndTree_HeaderFile
#define NMTDS_BoxBndTree_HeaderFile

#include <NCollection_UBTree.hxx>
#include <Bnd_Box.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>

typedef NCollection_UBTree <Standard_Integer , Bnd_Box> NMTDS_BoxBndTree;

  class NMTDS_BoxBndTreeSelector : public NMTDS_BoxBndTree::Selector {
    public:
      Standard_EXPORT NMTDS_BoxBndTreeSelector();
      Standard_EXPORT virtual Standard_Boolean Reject(const Bnd_Box&) const;
      Standard_EXPORT virtual Standard_Boolean Accept(const Standard_Integer &);
      Standard_EXPORT virtual ~NMTDS_BoxBndTreeSelector();
      
      Standard_EXPORT void Clear();
      Standard_EXPORT void SetBox(const Bnd_Box&);
      Standard_EXPORT const TColStd_ListOfInteger& Indices() const;

    protected:
      Bnd_Box  myBox;
      TColStd_MapOfInteger  myFence;
      TColStd_ListOfInteger myIndices;
      
  };

#endif
