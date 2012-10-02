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

//  SMESH SMESHDS : management of mesh data and SMESH document
//  File   : SMESH_SubMesh.cxx
//  Author : Yves FRICAUD, OCC
//  Module : SMESH
//  $Header: 
//
#include "SMESHDS_SubMesh.hxx"
#include "SMESHDS_Mesh.hxx"

#include "utilities.h"
#include "SMDS_SetIterator.hxx"
#include <iostream>
#include <cassert>

using namespace std;


//================================================================================
/*!
 * \brief Constructor
 */
//================================================================================

SMESHDS_SubMesh::SMESHDS_SubMesh(SMESHDS_Mesh *parent, int index)
{
  myParent = parent;
  myElements.clear();
  myNodes.clear();
  myIndex = index;
  myUnusedIdNodes = 0;
  myUnusedIdElements = 0;
}

//================================================================================
/*!
 * \brief Destructor
 */
//================================================================================

SMESHDS_SubMesh::~SMESHDS_SubMesh()
{
}

//=======================================================================
//function : AddElement
//purpose  : 
//=======================================================================
void SMESHDS_SubMesh::AddElement(const SMDS_MeshElement * ME)
{
  if (!IsComplexSubmesh())
    {
      if ( ME->GetType() == SMDSAbs_Node )
      {
        AddNode( static_cast< const SMDS_MeshNode* >( ME ));
        return;
      }
      //MESSAGE("in " << myIndex << " AddElement "<< ME->GetID());
      int oldShapeId = ME->getshapeId();
      if ( oldShapeId > 0 )
        {
          if (oldShapeId != myIndex)
            {
              MESSAGE("add element in subshape already belonging to another subshape "
                << ME->GetID() << " " << oldShapeId << " " << myIndex);
              throw SMESH_Exception(LOCALIZED("add element in subshape already belonging to a subshape"));
            }
          else
            {
              int idInSubShape = ME->getIdInShape();
              if (idInSubShape >= 0)
                {
                  MESSAGE("add element in subshape already belonging to that subshape "
                      << ME->GetID() << " " << oldShapeId << " " << idInSubShape);
                  // check if ok: do nothing if ok
                  if (idInSubShape >= myElements.size())
                    {
                      MESSAGE("out of bounds " << idInSubShape << " " << myElements.size());
                      throw SMESH_Exception(LOCALIZED("out of bounds"));
                    }
                  if (ME != myElements[idInSubShape])
                    {
                      MESSAGE("not the same element");
                      throw SMESH_Exception(LOCALIZED("not the same element"));
                    }
                  MESSAGE("already done, OK, nothing to do");
                  return;
                }
            }
        }

      SMDS_MeshElement* elem = (SMDS_MeshElement*) (ME);
      elem->setShapeId(myIndex);
      elem->setIdInShape(myElements.size());
      myElements.push_back(ME);
    }
}

//=======================================================================
//function : RemoveElement
//purpose  : 
//=======================================================================
bool SMESHDS_SubMesh::RemoveElement(const SMDS_MeshElement * ME, bool isElemDeleted)
{
  if (!ME)
    {
      MESSAGE("-----------------> Remove Null Element " << isElemDeleted);
      return false;
    }
  //MESSAGE("-----------------> RemoveElement "<< ME->GetID() << " " << isElemDeleted);
  if (!IsComplexSubmesh())
    {
      if ( ME->getshapeId() != myIndex )
        return false;
      int idInSubShape = ME->getIdInShape();
      //MESSAGE("in "<< myIndex << " RemoveElement " << ME->GetID() << " " << idInSubShape << " " << myUnusedIdElements);
      SMDS_MeshElement* elem = (SMDS_MeshElement*) (ME);
      elem->setShapeId(0);
      elem->setIdInShape(-1);
      if ((idInSubShape >= 0) && (idInSubShape < myElements.size()))
        {
          myElements[idInSubShape] = 0; // this vector entry is no more used
          myUnusedIdElements++;
          return true;
        }
      return false;
      //  }
    }
  MESSAGE("Try to remove an element from a complex submesh ");
  return false;
}

//=======================================================================
//function : AddNode
//purpose  : 
//=======================================================================
void SMESHDS_SubMesh::AddNode(const SMDS_MeshNode * N)
{
  if ( !IsComplexSubmesh() )
    {
      int idInSubShape = N->getIdInShape();
      int shapeId = N->getshapeId();
      if ((shapeId > 0) && (idInSubShape >= 0))
        {
//           MESSAGE("========== AddNode already belonging to other subShape " << N->GetID());
          // OK for vertex nodes
          throw SMESH_Exception(LOCALIZED("add node in subshape already belonging to a subshape"));
        }
      SMDS_MeshNode* node = (SMDS_MeshNode*)(N);
      node->setShapeId(myIndex);
      node->setIdInShape(myNodes.size());
      myNodes.push_back(N);
      //MESSAGE("in "<< myIndex << " AddNode " << node->GetID());
    }
  //MESSAGE("try to add node in a complex submesh " << N->GetID());
}

//=======================================================================
//function : RemoveNode
//purpose  : 
//=======================================================================

bool SMESHDS_SubMesh::RemoveNode(const SMDS_MeshNode * N, bool isNodeDeleted)
{
  if (!IsComplexSubmesh())
    {
      // if (!isNodeDeleted) // alive node has valid ID and can be found
      // {
      if ( N->getshapeId() != myIndex )
        return false;
      int idInSubShape = N->getIdInShape();
      //int shapeId = N->getshapeId();
      //MESSAGE("in "<< myIndex << " RemoveNode " << shapeId << " " << idInSubShape << " " << N->GetID());
      SMDS_MeshNode* node = (SMDS_MeshNode*) (N);
      node->setShapeId(0);
      node->setIdInShape(-1);
      if ((idInSubShape >= 0) && (idInSubShape < myNodes.size()))
        {
          myNodes[idInSubShape] = 0; // this vector entry is no more used
          myUnusedIdNodes++;
          return true;
        }
      return false;
      // }
    }
  MESSAGE("Try to remove a node from a complex submesh");
  return false;
}

//=======================================================================
//function : NbElements
//purpose  : 
//=======================================================================
int SMESHDS_SubMesh::NbElements() const
{
  //MESSAGE(this << " NbElements " << IsComplexSubmesh() << " " << myElements.size() - myUnusedIdElements);
  if ( !IsComplexSubmesh() )
    return myElements.size() - myUnusedIdElements;

  int nbElems = 0;
  set<const SMESHDS_SubMesh*>::const_iterator it = mySubMeshes.begin();
  for ( ; it != mySubMeshes.end(); it++ )
    nbElems += (*it)->NbElements();

  return nbElems;
}

//=======================================================================
//function : NbNodes
//purpose  : 
//=======================================================================

int SMESHDS_SubMesh::NbNodes() const
{
  //MESSAGE(this << " NbNodes " << IsComplexSubmesh() << " " << myNodes.size() - myUnusedIdNodes);
  if ( !IsComplexSubmesh() )
    return myNodes.size() - myUnusedIdNodes;

  int nbElems = 0;
  set<const SMESHDS_SubMesh*>::const_iterator it = mySubMeshes.begin();
  for ( ; it != mySubMeshes.end(); it++ )
    nbElems += (*it)->NbNodes();

  return nbElems;
}

/*!
 * template class used for iteration on submesh elements. Interface of iterator remains
 * unchanged after redesign of SMDS to avoid modification everywhere in SMESH.
 * instances are stored in shared_ptr for automatic destruction.
 * Container is copied for iteration, because original can be modified
 * by addition of elements, for instance, and then reallocated (vector)
 */
template <class ELEM, typename TSET> class MySetIterator : public SMDS_Iterator<ELEM>
{
protected:
  typename TSET::const_iterator _it, _end;
  TSET _table;
public:
  MySetIterator(const TSET& table)
  {
    _table = table;
    _it = _table.begin();
    _end = _table.end();
    while ((_it != _end) && (*_it == 0))
      _it++;
  }

  virtual bool more()
  {
    while ((_it != _end) && (*_it == 0))
      _it++;
    return (_it != _end);
  }

  virtual ELEM next()
  {
    ELEM e = *_it;
    _it++;
    return e;
  }
};

// =====================
// class MyIterator
// =====================

template<typename VALUE> class MyIterator : public SMDS_Iterator<VALUE>
{
 public:
  MyIterator (const set<const SMESHDS_SubMesh*>& theSubMeshes)
    : mySubIt( theSubMeshes.begin() ), mySubEnd( theSubMeshes.end() ), myMore(false)
    {}
  bool more()
  {
    while (( !myElemIt.get() || !myElemIt->more() ) && mySubIt != mySubEnd)
    {
      myElemIt = getElements(*mySubIt);
      mySubIt++;
    }
    myMore = myElemIt.get() && myElemIt->more();
    return myMore;
  }
  VALUE next()
  {
    VALUE elem = 0;
    if ( myMore )
      elem = myElemIt->next();
    return elem;
  }
 protected:
  virtual boost::shared_ptr< SMDS_Iterator<VALUE> >
    getElements(const SMESHDS_SubMesh*) const = 0;

 private:
  bool                                        myMore;
  set<const SMESHDS_SubMesh*>::const_iterator mySubIt, mySubEnd;
  boost::shared_ptr< SMDS_Iterator<VALUE> >   myElemIt;
};

// =====================
// class MyElemIterator
// =====================

class MyElemIterator: public MyIterator<const SMDS_MeshElement*>
{
 public:
  MyElemIterator (const set<const SMESHDS_SubMesh*>& theSubMeshes)
    :MyIterator<const SMDS_MeshElement*>( theSubMeshes ) {}
  SMDS_ElemIteratorPtr getElements(const SMESHDS_SubMesh* theSubMesh) const
  { return theSubMesh->GetElements(); }
};

// =====================
// class MyNodeIterator
// =====================

class MyNodeIterator: public MyIterator<const SMDS_MeshNode*>
{
 public:
  MyNodeIterator (const set<const SMESHDS_SubMesh*>& theSubMeshes)
    :MyIterator<const SMDS_MeshNode*>( theSubMeshes ) {}
  SMDS_NodeIteratorPtr getElements(const SMESHDS_SubMesh* theSubMesh) const
  { return theSubMesh->GetNodes(); }
};
  
//=======================================================================
//function : GetElements
//purpose  : 
//=======================================================================

SMDS_ElemIteratorPtr SMESHDS_SubMesh::GetElements() const
{
  if ( IsComplexSubmesh() )
    return SMDS_ElemIteratorPtr( new MyElemIterator( mySubMeshes ));
  return SMDS_ElemIteratorPtr(new MySetIterator<const SMDS_MeshElement*, std::vector<const SMDS_MeshElement*> >(myElements));
}

//=======================================================================
//function : GetNodes
//purpose  : 
//=======================================================================

SMDS_NodeIteratorPtr SMESHDS_SubMesh::GetNodes() const
{
  if ( IsComplexSubmesh() )
    return SMDS_NodeIteratorPtr( new MyNodeIterator( mySubMeshes ));

  return SMDS_NodeIteratorPtr(new MySetIterator<const SMDS_MeshNode*, std::vector<const SMDS_MeshNode*> >(myNodes));
}

//=======================================================================
//function : Contains
//purpose  : check if elem or node is in
//=======================================================================

bool SMESHDS_SubMesh::Contains(const SMDS_MeshElement * ME) const
{
  // DO NOT TRY TO FIND A REMOVED ELEMENT !!
  //if ( IsComplexSubmesh() || !ME )
  if (!ME)
    return false;

  if (IsComplexSubmesh())
    {
      set<const SMESHDS_SubMesh*>::const_iterator aSubIt = mySubMeshes.begin();
      for (; aSubIt != mySubMeshes.end(); aSubIt++)
        if ((*aSubIt)->Contains(ME))
          return true;
      return false;
    }

  if (ME->GetType() == SMDSAbs_Node)
    {
      int idInShape = ME->getIdInShape();
      if ((idInShape >= 0) && (idInShape < myNodes.size()))
        if (myNodes[idInShape] == ME)
          return true;
    }
  else
    {
      int idInShape = ME->getIdInShape();
      if ((idInShape >= 0) && (idInShape < myElements.size()))
        if (myElements[idInShape] == ME)
          return true;
    }
  return false;
}

//=======================================================================
//function : AddSubMesh
//purpose  : 
//=======================================================================

void SMESHDS_SubMesh::AddSubMesh( const SMESHDS_SubMesh* theSubMesh )
{
  ASSERT( theSubMesh );
  mySubMeshes.insert( theSubMesh );
}

//=======================================================================
//function : RemoveSubMesh
//purpose  : 
//=======================================================================

bool SMESHDS_SubMesh::RemoveSubMesh( const SMESHDS_SubMesh* theSubMesh )
{
  return mySubMeshes.erase( theSubMesh );
}

//=======================================================================
//function : RemoveAllSubmeshes
//purpose  : 
//=======================================================================

void SMESHDS_SubMesh::RemoveAllSubmeshes()
{
  mySubMeshes.clear();
}

//=======================================================================
//function : ContainsSubMesh
//purpose  : 
//=======================================================================

bool SMESHDS_SubMesh::ContainsSubMesh( const SMESHDS_SubMesh* theSubMesh ) const
{
  return mySubMeshes.find( theSubMesh ) != mySubMeshes.end();
}

//=======================================================================
//function : GetSubMeshIterator
//purpose  : 
//=======================================================================

SMESHDS_SubMeshIteratorPtr SMESHDS_SubMesh::GetSubMeshIterator() const
{
  typedef set<const SMESHDS_SubMesh*>::const_iterator TIterator;
  return SMESHDS_SubMeshIteratorPtr
    ( new SMDS_SetIterator< const SMESHDS_SubMesh*, TIterator >( mySubMeshes.begin(),
                                                                 mySubMeshes.end()));
}

//=======================================================================
//function : Clear
//purpose  : remove the contents
//=======================================================================

void SMESHDS_SubMesh::Clear()
{
  myElements.clear();
  myNodes.clear();
  myUnusedIdNodes = 0;
  myUnusedIdElements = 0;
  SMESHDS_SubMeshIteratorPtr sub = GetSubMeshIterator();
  while ( sub->more() ) {
    if ( SMESHDS_SubMesh* sm = (SMESHDS_SubMesh*) sub->next())
      sm->Clear();
  }
}

int SMESHDS_SubMesh::getSize()
{
  int c = NbNodes();
  int d = NbElements();
  //cerr << "SMESHDS_SubMesh::NbNodes " << c << endl;
  //cerr << "SMESHDS_SubMesh::NbElements " << d << endl;
  return c+d;
}

void SMESHDS_SubMesh::compactList()
{
  //MESSAGE("compactList old: nodes " << myNodes.size() << " elements " << myElements.size());
  //stringstream a;
  //stringstream b;
  //stringstream c;
  //stringstream d;

  std::vector<const SMDS_MeshElement*> newElems;
  newElems.clear();
  for (int i = 0; i < myElements.size(); i++)
    if (myElements[i])
      {
        SMDS_MeshElement* elem = (SMDS_MeshElement*)myElements[i];
        elem->setIdInShape(newElems.size());
        newElems.push_back(elem);
        //a << elem->GetID() << " ";
        //b << elem->GetID() << " ";
      }
    //else
    //  a << "_ ";
  myElements.swap(newElems);
  myUnusedIdElements = 0;
  //MESSAGE("in " << myIndex << " oldElems " << a.str());
  //MESSAGE("in " << myIndex << " newElems " << b.str());

  std::vector<const SMDS_MeshNode*> newNodes;
  newNodes.clear();
  for (int i = 0; i < myNodes.size(); i++)
    if (myNodes[i])
      {
        SMDS_MeshNode* node = (SMDS_MeshNode*)myNodes[i];
        node->setIdInShape(newNodes.size());
        newNodes.push_back(node);
        //c << node->GetID() << " ";
        //d << node->GetID() << " ";
      }
    //else
    //  c << "_ ";
  myNodes.swap(newNodes);
  myUnusedIdNodes = 0;
  //MESSAGE("in " << myIndex << " oldNodes " << c.str());
  //MESSAGE("in " << myIndex << " newNodes " << d.str());
  //MESSAGE("compactList new: nodes " << myNodes.size() << " elements " << myElements.size());
}
