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

// File      : SMESH_File.cxx
// Created   : Wed Mar 10 11:23:25 2010
// Author    : Edward AGAPOV (eap)
//
#include "SMESH_File.hxx"
#include "utilities.h"

#include <OSD_File.hxx>
#include <OSD_Path.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_Failure.hxx>

#include <fcntl.h>
#include <sys/stat.h>

#ifdef WIN32
#include <io.h>
#else
#include <sys/mman.h>
#endif

//================================================================================
/*!
 * \brief Creator opening the file for reading by default
 */
//================================================================================

SMESH_File::SMESH_File(const std::string& name, bool open)
  :_name(name), _size(-1), _file(0), _map(0), _pos(0), _end(0)
{
  if ( open ) this->open();
}

//================================================================================
/*!
 * \brief Destructor closing the file
 */
//================================================================================

SMESH_File::~SMESH_File()
{
  close();
}

//================================================================================
/*!
 * \brief Open file for reading. Return true if there is something to read
 */
//================================================================================

bool SMESH_File::open()
{
  int length = size();
  if ( !_map && length > 0 )
  {
#ifdef WNT
    _file = CreateFile(_name.data(), GENERIC_READ, FILE_SHARE_READ,
                       NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    bool ok = ( _file != INVALID_HANDLE_VALUE );
#else
    _file = ::open(_name.data(), O_RDONLY );
    bool ok = ( _file > 0 );
#endif
    if ( ok )
    {
#ifdef WNT
      _mapObj = CreateFileMapping(_file, NULL, PAGE_READONLY, 0, (DWORD)length, NULL);
      _map = (void*) MapViewOfFile( _mapObj, FILE_MAP_READ, 0, 0, 0 );
#else
      _map = ::mmap(0,length,PROT_READ,MAP_PRIVATE,_file,0);
      if ( _map == MAP_FAILED ) _map = NULL;
#endif
      if ( _map != NULL )
      {
        _size = length;
        _pos = (char*) _map;
        _end = _pos + _size;
      }
      else
      {
#ifdef WNT
        CloseHandle(_mapObj);
        CloseHandle(_file);
#else
        ::close(_file);
#endif
      }
    }
  }
  return _pos;
}

//================================================================================
/*!
 * \brief Close the file
 */
//================================================================================

void SMESH_File::close()
{
  if ( _map != NULL )
  {
#ifdef WNT
    UnmapViewOfFile(_map);
    CloseHandle(_mapObj);
    CloseHandle(_file);
#else
    ::munmap(_map, _size);
    ::close(_file);
#endif
    _map = NULL;
    _pos = _end = 0;
    _size = -1;
  }
}

//================================================================================
/*!
 * \brief Remove the file
 */
//================================================================================

bool SMESH_File::remove()
{
  close();
  try {
    OSD_Path filePath(TCollection_AsciiString((char*)_name.data()));
    OSD_File(filePath).Remove();
  }
  catch ( Standard_ProgramError ) {
    MESSAGE("Can't remove file: " << _name << " ; file does not exist or permission denied");
    return false;
  }
  return true;
}

//================================================================================
/*!
 * \brief Return file size
 */
//================================================================================

int SMESH_File::size() const
{
  if ( _size >= 0 ) return _size; // size of open file

  int size = -1;
  int file = ::open( _name.data(), O_RDONLY );
  if ( file > 0 )
  {
    struct stat status;
    int err = fstat( file, &status);
    if ( !err )
      size = status.st_size;
    ::close( file );
  }
  return size;
}

//================================================================================
/*!
 * \brief Set cursor to the given position
 */
//================================================================================

void SMESH_File::setPos(const char* pos)
{
  if ( pos > (const char*)_map && pos < _end )
    _pos = (char*) pos;
}

//================================================================================
/*!
 * \brief Skip till current line end and return the skipped string
 */
//================================================================================

std::string SMESH_File::getLine()
{
  std::string line;
  const char* p = _pos;
  while ( !eof() )
    if ( *(++_pos) == '\n' )
      break;
  line.append( p, _pos );
  if ( !eof() ) _pos++;
  return line;
}

//================================================================================
/*!
 * \brief Move cursor to the file beginning
 */
//================================================================================

void SMESH_File::rewind()
{
  _pos = (char*) _map;
}

//================================================================================
/*!
 * \brief Fill vector by reading out integers from file. Vector size gives number
 * of integers to read
 */
//================================================================================

bool SMESH_File::getInts(std::vector<int>& ints)
{
  int i = 0;
  while ( i < ints.size() )
  {
    while ( !isdigit( *_pos ) && !eof()) ++_pos;
    if ( eof() ) break;
    if ( _pos[-1] == '-' ) --_pos;
    ints[ i++ ] = strtol( _pos, (char**)&_pos, 10 );
  }
  return ( i == ints.size() );
}
