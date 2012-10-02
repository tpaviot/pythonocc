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

// File      : SMESH_File.hxx
// Created   : Wed Mar 10 10:33:04 2010
// Author    : Edward AGAPOV (eap)
//
#ifndef __SMESH_File_HXX__
#define __SMESH_File_HXX__

#include "SMESH_Utils.hxx"

#include <string>
#include <vector>

#ifdef WNT
#include <windows.h>
#else
#include <dlfcn.h>
#endif

/*!
 * \brief High level util for effective file reading and other file operations
 */
class SMESHUtils_EXPORT SMESH_File
{
public:

  SMESH_File(const std::string& name, bool open=true);

  ~SMESH_File();

  std::string getName() const { return _name; }

  bool open();

  void close();

  bool remove();

  int size() const;

  // ------------------------
  // Access to file contents
  // ------------------------

  operator const char*() const { return _pos; }

  bool operator++() { return ++_pos < _end; }

  void operator +=(int posDelta) { _pos+=posDelta; }

  bool eof() const { return _pos >= _end; }

  const char* getPos() const { return _pos; }

  void setPos(const char* pos);

  std::string getLine();

  void rewind();

  bool getInts(std::vector<int>& ids);

private:

  std::string _name; //!< file name
  int         _size; //!< file size
#ifdef WNT
  HANDLE      _file, _mapObj;
#else
  int         _file;
#endif
  void*       _map;
  const char* _pos; //!< current position
  const char* _end; //!< position after file end
};

#endif
