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

// File      : GEOM_BaseDriver.hxx
// Created   : Thu Jun  6 15:27:50 2013
// Author    : Edward AGAPOV (eap)

#ifndef __GEOM_BaseDriver_HXX__
#define __GEOM_BaseDriver_HXX__

#include <TFunction_Driver.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TopAbs_State.hxx>

#include <string>
#include <vector>
#include <sstream>

class Handle(GEOM_Function);
class Handle(TColStd_HSequenceOfTransient);
class Handle(TColStd_HArray1OfInteger);

struct GEOM_Param
{
  std::string name;
  std::string value;

  Standard_EXPORT void Set(const char* nm) { name = nm; }
  template <class T>
  Standard_EXPORT void Set(const char* nm, const T& value) { name = nm; (*this)<<value; }

  template <class T> Standard_EXPORT GEOM_Param & operator<<( const T &anything )
  {
    std::ostringstream str;
    str << anything;
    value += str.str() ;
    return *this ;
  }
  Standard_EXPORT GEOM_Param & operator<<( const Handle(GEOM_Function)& fun );
  Standard_EXPORT GEOM_Param & operator<<( const Handle(Standard_Transient)& fun );
  Standard_EXPORT GEOM_Param & operator<<( const Handle(TColStd_HSequenceOfTransient)& funs );
  Standard_EXPORT GEOM_Param & operator<<( const Handle(TColStd_HArray1OfInteger)& vals );
  Standard_EXPORT GEOM_Param & operator<<( TopAbs_ShapeEnum type );
  Standard_EXPORT GEOM_Param & operator<<( TopAbs_State state );
};


class GEOM_BaseDriver : public TFunction_Driver
{
public:

  // Returns a name of creation operation and names and values of creation parameters
  // (Use AddParam() methods declared below to fill params vector while implementing
  // this method in derived drivers)
  Standard_EXPORT virtual
  bool GetCreationInformation(std::string&             theOperationName,
                              std::vector<GEOM_Param>& params) = 0;

  // Adds GEOM_Param to params and sets its name
  // This method is safer than resizing the params vector and accessing to its items
  Standard_EXPORT GEOM_Param& AddParam(std::vector<GEOM_Param>& params,
                       const char*              name);

  // Adds GEOM_Param to params vector and sets its name and value
  // This method is safer than resizing the params vector and accessing to its items
  template <class T> Standard_EXPORT GEOM_Param& AddParam(std::vector<GEOM_Param>& params,
                                          const char*              name,
                                          const T&                 value,
                                          const char*              dfltValue = 0)
  {
    GEOM_Param p;
    p.Set( name, value );
    if ( dfltValue && p.value.empty() )
      p << dfltValue;
    params.push_back( p );
    return params.back();
  }

  DEFINE_STANDARD_RTTI (GEOM_BaseDriver)
};

DEFINE_STANDARD_HANDLE (GEOM_BaseDriver,TFunction_Driver);

#endif
