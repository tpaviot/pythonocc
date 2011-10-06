// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
// but WITHOUT ANY WARRANTY; without even the implied warranty of 
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public  
// License along with this library; if not, write to the Free Software 
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com

#ifndef _GEOM_Parameter_HeaderFile
#define _GEOM_Parameter_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_CString_HeaderFile
#include <Standard_CString.hxx>
#endif
#ifndef _TCollection_AsciiString_HeaderFile
#include <TCollection_AsciiString.hxx>
#endif

//!Class used as parameter in many geometric drivers.It may contain real number
//!or a variable.
class GEOM_Parameter
{

 public:

  Standard_EXPORT GEOM_Parameter();
  Standard_EXPORT GEOM_Parameter(TCollection_AsciiString anAsciiString);
  Standard_EXPORT GEOM_Parameter(Standard_Real aDouble);

  Standard_EXPORT ~GEOM_Parameter();

  Standard_EXPORT Standard_Boolean IsString() const;
  Standard_EXPORT Standard_Boolean IsDouble() const;

  Standard_EXPORT Standard_Real GetDouble() const;
  Standard_EXPORT TCollection_AsciiString GetString() const;

  Standard_EXPORT void operator=(Standard_Real aDouble);
  Standard_EXPORT void operator=(const TCollection_AsciiString& anAsciiString);

protected:



private: 
  TCollection_AsciiString 	myAsciiString;
  Standard_Real				myDouble;

  enum ParameterType {ptDouble, ptString} myParameterType;
};

#endif
