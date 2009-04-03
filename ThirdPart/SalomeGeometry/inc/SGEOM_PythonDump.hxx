//  Copyright (C) 2003  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
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
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com

#ifndef _GEOM_PYTHONDUMP_HXX_
#define _GEOM_PYTHONDUMP_HXX_

//#include <SALOMEconfig.h>

#include "SGEOM_Object.hxx"
#include "SGEOM_Function.hxx"
#include "SGEOM_Parameter.hxx"

#include <TCollection_AsciiString.hxx>

namespace GEOM
{
  //!Creates script string using various arguments
  class TPythonDump
  {
    std::stringstream myStream;
	std::string myString;
    static size_t      myCounter;
    bool               myAppend;

    Handle(GEOM_Function) myFunction;

  public:
    Standard_EXPORT TPythonDump (Handle(GEOM_Function)& theFunction, bool theAppend=false);
    Standard_EXPORT virtual ~TPythonDump();

//    operator TCollection_AsciiString () const;

    Standard_EXPORT TPythonDump& operator<< (long int theArg);
    Standard_EXPORT TPythonDump& operator<< (int theArg);
    Standard_EXPORT TPythonDump& operator<< (double theArg);
    Standard_EXPORT TPythonDump& operator<< (float theArg);
    Standard_EXPORT TPythonDump& operator<< (const void* theArg);
    Standard_EXPORT TPythonDump& operator<< (const char* theArg);
    Standard_EXPORT TPythonDump& operator<< (const TopAbs_ShapeEnum theArg);
	Standard_EXPORT TPythonDump& operator<< (const Handle(GEOM_Object)& theObject);
	Standard_EXPORT TPythonDump& operator<< (const GEOM_Parameter& theArg);
	Standard_EXPORT	TPythonDump& operator<< (const TCollection_AsciiString& theArg);
  };

  //! Returns an object from two given, which has the latest entry
  Standard_EXPORT Handle(GEOM_Object) GetCreatedLast (const Handle(GEOM_Object)& theObj1,
                                      const Handle(GEOM_Object)& theObj2);

  //! Returns an object from \a theObjects, which has the latest entry
  Standard_EXPORT Handle(GEOM_Object) GetCreatedLast (const Handle(TColStd_HSequenceOfTransient)& theObjects);
}

#endif
