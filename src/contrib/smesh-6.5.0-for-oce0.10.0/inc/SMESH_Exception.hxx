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

//  SALOME Utils : general SALOME's definitions and tools
//  File   : SMESH_Exception.hxx
//  Author : Antoine YESSAYAN, EDF
//  Module : SALOME
//  $Header: /home/server/cvs/KERNEL/KERNEL_SRC/src/Utils/SMESH_Exception.hxx,v 1.10.2.4.10.2.12.1 2012-04-12 14:05:32 vsr Exp $
//
#if !defined( __SMESH_Exception_hxx__ )
#define __SMESH_Exception_hxx__

//#include "SMESH_SMESH.hxx"

# include <exception>
# include <iostream>

#ifdef LOCALIZED
#undef LOCALIZED
#endif
#if defined(_DEBUG_) || defined(_DEBUG)
# define LOCALIZED(message) #message , __FILE__ , __LINE__
#else
# define LOCALIZED(message) #message
#endif

//swig tool on Linux doesn't pass defines from header SMESH_SMESH.hxx
//therefore (temporary solution) defines are placed below

#ifdef WIN32
# if defined SMESH_EXPORTS || defined OpUtil_EXPORTS
#  define SMESH_EXPORT __declspec( dllexport )
# else
#  define SMESH_EXPORT __declspec( dllimport )
#  undef LOCALIZED
#  define LOCALIZED(message) #message
# endif
#else
# define SMESH_EXPORT
#endif

class SMESH_Exception;

SMESH_EXPORT std::ostream& operator<<( std::ostream&, const SMESH_Exception& );

SMESH_EXPORT const char *makeText( const char *text, const char *fileName, const unsigned int lineNumber );

class SMESH_EXPORT SMESH_Exception : public std::exception
{

private :
        SMESH_Exception( void );

protected :
        const char* _text ;     // non constant pointer but read only char variable

public :
        SMESH_Exception( const char *text, const char *fileName=0, const unsigned int lineNumber=0 );
        SMESH_Exception( const SMESH_Exception &ex );
        virtual ~SMESH_Exception() throw ();
        SMESH_EXPORT friend std::ostream & operator<<( std::ostream &os , const SMESH_Exception &ex );
        virtual const char *what( void ) const throw () ;
} ;


#endif          /* #if !defined( __SMESH_Exception_hxx__ ) */
