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

// File:        NMTDS_BndSphereTree.hxx
// Created:     
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef NMTDS_BndSphereTree_HeaderFile
#define NMTDS_BndSphereTree_HeaderFile

#include <NCollection_UBTree.hxx>
#include <NMTDS_BndSphere.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>

typedef NCollection_UBTree <Standard_Integer , NMTDS_BndSphere> NMTDS_BndSphereTree;

  class NMTDS_BndSphereTreeSelector : public NMTDS_BndSphereTree::Selector {
    public:
      Standard_EXPORT NMTDS_BndSphereTreeSelector();
      Standard_EXPORT virtual Standard_Boolean Reject(const NMTDS_BndSphere&) const;
      Standard_EXPORT virtual Standard_Boolean Accept(const Standard_Integer &);
      Standard_EXPORT virtual ~NMTDS_BndSphereTreeSelector();
      
      Standard_EXPORT void Clear();
      Standard_EXPORT void SetBox(const NMTDS_BndSphere&);
      Standard_EXPORT const TColStd_ListOfInteger& Indices() const;

    protected:
      NMTDS_BndSphere  myBox;
      TColStd_MapOfInteger  myFence;
      TColStd_ListOfInteger myIndices;
      
  };

#endif
