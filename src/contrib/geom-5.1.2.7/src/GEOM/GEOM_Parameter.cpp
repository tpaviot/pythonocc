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
// GEOM_Parameter contributed by Sioutis Fotios

#include <GEOM_Parameter.hxx>
#include <StdFail_NotDone.hxx>

//A custom test in order to solve issue of strtod rtl func used
//in TCollection_AsciiString::IsRealValue
static Standard_Boolean HasDoubleRepresantation(const TCollection_AsciiString& anAsciiString)
{
	char *ptr;
	if(anAsciiString.ToCString()) {
	  strtod(anAsciiString.ToCString(),&ptr);
	  if (ptr != anAsciiString.ToCString())
		if (strcmp(ptr, "") == 0  ) // <- the difference with TCollection_AsciiString::IsRealValue
		  return Standard_True;

	  else
		return Standard_False;
	}
	return Standard_False;
}

static void PrepareString(TCollection_AsciiString& anAsciiString)
{
  anAsciiString.RightAdjust();
  anAsciiString.LeftAdjust();
}

//=======================================================================
//function : GEOM_Parameter Constructor
//purpose  :
//=======================================================================
GEOM_Parameter::GEOM_Parameter()

{
  myParameterType = ptDouble;
  myDouble = 0.;
}

GEOM_Parameter::GEOM_Parameter(TCollection_AsciiString anAsciiString)
{
  myAsciiString = anAsciiString;
  PrepareString(myAsciiString);
  if (HasDoubleRepresantation(myAsciiString))
  {
	myDouble = myAsciiString.RealValue();
	myParameterType = ptDouble;
  }
  else
	myParameterType = ptString;
}

GEOM_Parameter::GEOM_Parameter(Standard_Real aDouble)
{
  myParameterType = ptDouble;
  myDouble = aDouble;
}

//=======================================================================
//function : ~GEOM_Parameter
//purpose  : 
//=======================================================================
GEOM_Parameter::~GEOM_Parameter()
{

}

//=======================================================================
//function : IsDouble
//purpose  :
//=======================================================================
Standard_Boolean GEOM_Parameter::IsDouble() const
{
  return (myParameterType == ptDouble);
}

//=======================================================================
//function : IsString
//purpose  :
//=======================================================================
Standard_Boolean GEOM_Parameter::IsString() const
{
  return (myParameterType == ptString);
}

//=======================================================================
//function : GetDouble
//purpose  :
//=======================================================================
double GEOM_Parameter::GetDouble() const
{
  if (myParameterType == ptDouble)
	return myDouble;
  else
	StdFail_NotDone::Raise("Error in Parameter");
  return 0.;
}

//=======================================================================
//function : GetString
//purpose  :
//=======================================================================
TCollection_AsciiString GEOM_Parameter::GetString() const
{
  if (myParameterType == ptString)
	return myAsciiString;
  else
	StdFail_NotDone::Raise("Error in Parameter");
  return TCollection_AsciiString("");
}

//=======================================================================
//function : operator = (for double)
//purpose  :
//=======================================================================
void GEOM_Parameter::operator=(double aDouble)
{
  myParameterType = ptDouble;
  myDouble = aDouble;
}

//=======================================================================
//function : operator = (for TCollection_AsciiString)
//purpose  :
//=======================================================================
void GEOM_Parameter::operator=(const TCollection_AsciiString& anAsciiString)
{
  myAsciiString = anAsciiString;
  PrepareString(myAsciiString);
  if (HasDoubleRepresantation(myAsciiString))
  {
	myDouble = myAsciiString.RealValue();
	myParameterType = ptDouble;
  }
  else
	myParameterType = ptString;
}

