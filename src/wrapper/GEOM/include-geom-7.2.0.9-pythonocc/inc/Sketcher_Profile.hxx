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

//  File   : Sketcher_Profile.h
//  Author : Damien COQUERET

#if defined WIN32
#  if defined SKETCHER_SALOME_EXPORTS || defined SKETCHER_EXPORTS || defined GEOMSketcher_EXPORTS || defined GEOMSKETCHER_EXPORTS
#    define SKETCHER_SALOME_EXPORT _declspec( dllexport )
#  else
#    define SKETCHER_SALOME_EXPORT _declspec( dllimport )
#  endif
#else
#  define SKETCHER_SALOME_EXPORT
#endif

#include <TopoDS_Shape.hxx>
#include <TCollection_AsciiString.hxx>
#include <TColStd_Array1OfAsciiString.hxx>

#include <string>

class SKETCHER_SALOME_EXPORT Sketcher_Profile
{
  class Functor;
  class ShapeFunctor;
  class DumpFunctor;

public:
  Sketcher_Profile();
  Sketcher_Profile( const char* );

  void                    SetCommand( const char* );

  TopoDS_Shape            GetShape( bool* = 0, double* = 0 );
  TCollection_AsciiString GetDump( bool* = 0 );

private:
  void parse( const TCollection_AsciiString&, Functor* );
  void badArgs();
  void findNextCommand( const TColStd_Array1OfAsciiString&, TColStd_Array1OfAsciiString&, int, int& );
  TCollection_AsciiString extractCommand( const TCollection_AsciiString& );

private:
  TCollection_AsciiString myCommand;
};
