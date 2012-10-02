// Copyright (C) 2010-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

#ifndef _OBJECTPOOL_HXX_
#define _OBJECTPOOL_HXX_

#include <vector>
#include <stack>
#include <iostream>

template<class X> class ObjectPool
{

private:
  std::vector<X*> _chunkList;
  std::vector<bool> _freeList;
  int _nextFree;
  int _maxAvail;
  int _chunkSize;

  int getNextFree()
  {
    for (int i = _nextFree; i < _maxAvail; i++)
      if (_freeList[i] == true)
        {
          return i;
          break;
        }
    return _maxAvail;
  }

  void checkDelete(int chunkId)
  {
    int i0 = _chunkSize * chunkId;
    int i1 = _chunkSize * (chunkId + 1);
    for (int i = i0; i < i1; i++)
      if (_freeList[i] == false)
        return;
    std::cerr << "a chunk to delete" << std::endl;
    // compactage des vecteurs un peu lourd, pas necessaire
    //X* chunk = _chunkList[chunkId];
    //delete [] chunk;
  }

public:
  ObjectPool(int nblk)
  {
    _chunkSize = nblk;
    _nextFree = 0;
    _maxAvail = 0;
    _chunkList.clear();
    _freeList.clear();
  }

  virtual ~ObjectPool()
  {
    for (int i = 0; i < _chunkList.size(); i++)
      delete[] _chunkList[i];
  }

  X* getNew()
  {
    X *obj = 0;
    _nextFree = getNextFree();
    if (_nextFree == _maxAvail)
      {
        X* newChunk = new X[_chunkSize];
        _chunkList.push_back(newChunk);
        _freeList.insert(_freeList.end(), _chunkSize, true);
        _maxAvail += _chunkSize;
        _freeList[_nextFree] = false;
        obj = newChunk; // &newChunk[0];
      }
    else
      {
        int chunkId = _nextFree / _chunkSize;
        int rank = _nextFree - chunkId * _chunkSize;
        _freeList[_nextFree] = false;
        obj = _chunkList[chunkId] + rank; // &_chunkList[chunkId][rank];
      }
    //obj->init();
    return obj;
  }

  void destroy(X* obj)
  {
    long adrobj = (long) (obj);
    for (int i = 0; i < _chunkList.size(); i++)
      {
        X* chunk = _chunkList[i];
        long adrmin = (long) (chunk);
        if (adrobj < adrmin)
          continue;
        long adrmax = (long) (chunk + _chunkSize);
        if (adrobj >= adrmax)
          continue;
        int rank = (adrobj - adrmin) / sizeof(X);
        int toFree = i * _chunkSize + rank;
        _freeList[toFree] = true;
        if (toFree < _nextFree)
          _nextFree = toFree;
        //obj->clean();
        //checkDelete(i); compactage non fait
        break;
      }
  }

  //  void destroy(int toFree)
  //  {
  //    // no control 0<= toFree < _freeList.size()
  //    _freeList[toFree] = true;
  //    if (toFree < _nextFree)
  //      _nextFree = toFree;
  //  }

};

#endif
