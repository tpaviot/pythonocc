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
//  File   : SMESHDS_GroupOnFilter.hxx
//  Module : SMESH
//
#ifndef _SMESHDS_GroupOnFilter_HeaderFile
#define _SMESHDS_GroupOnFilter_HeaderFile

#include "SMESH_SMESHDS.hxx"

#include "SMESHDS_GroupBase.hxx"
#include "SMESH_Controls.hxx"
  
/*!
 * \brief Groups whose contents is dynamically updated using the filter
 */
class SMESHDS_EXPORT SMESHDS_GroupOnFilter: public SMESHDS_GroupBase
{
 public:

  SMESHDS_GroupOnFilter (const int                 theID,
                         const SMESHDS_Mesh*       theMesh,
                         const SMDSAbs_ElementType theType,
                         const SMESH_PredicatePtr& thePredicate);

  void SetPredicate( const SMESH_PredicatePtr& thePredicate);

  SMESH_PredicatePtr GetPredicate() const { return myPredicate; }

  virtual int Extent() const;

  virtual bool Contains (const int theID);

  virtual bool Contains (const SMDS_MeshElement* elem);

  virtual SMDS_ElemIteratorPtr GetElements() const;

  virtual int GetID (const int theIndex);

  virtual int GetTic() const;

  bool IsUpToDate() const;

 private:

  void update() const;
  void setChanged(bool changed=true);

  SMESH_PredicatePtr                    myPredicate;
  std::vector< const SMDS_MeshElement*> myElements;
  unsigned long                         myMeshModifTime; // when myElements was filled
  int                                   myPredicateTic;
};

#endif
