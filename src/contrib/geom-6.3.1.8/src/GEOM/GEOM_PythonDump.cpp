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

#include "GEOM_PythonDump.hxx"

#include <TDF_Tool.hxx>

#include <TopAbs.hxx>

#include <TColStd_ListOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>

#define SIMPLE_ID

namespace GEOM
{
  size_t TPythonDump::myCounter = 0;

  TPythonDump::TPythonDump (Handle(GEOM_Function)& theFunction, bool theAppend)
  {
    myFunction = theFunction;
    myCounter++;
    myAppend = theAppend;
  }

  TPythonDump::~TPythonDump()
  {
    if (--myCounter == 0) {
      TCollection_AsciiString aDescr;
      if ( myAppend )
        aDescr = myFunction->GetScriptCommand() + "\n\t";
      aDescr += myString.c_str();
      myFunction->SetScriptCommand( aDescr );
    }
  }

  TPythonDump& TPythonDump::operator<< (bool theArg)
  {
    if (theArg)
      myStream << "True";
    else
      myStream << "False";
    return *this;
  }

  TPythonDump& TPythonDump::operator<< (long int theArg)
  {
    std::ostringstream buffer;
    buffer<<theArg;
	myString += buffer.str();
    return *this;
  }

  TPythonDump& TPythonDump::operator<< (int theArg)
  {
    std::ostringstream buffer;
    buffer<<theArg;
	myString += buffer.str();
    return *this;
  }

  TPythonDump& TPythonDump::operator<< (double theArg)
  {
    std::ostringstream buffer;
    buffer.precision(16);
    buffer<<theArg;
	myString += buffer.str();
    return *this;
  }

  TPythonDump& TPythonDump::operator<< (float theArg)
  {
    std::ostringstream buffer;
    buffer.precision(8);
    buffer<<theArg;
	myString += buffer.str();
    return *this;
  }

  TPythonDump& TPythonDump::operator<< (const void* theArg)
  {
    std::ostringstream buffer;
    buffer<<theArg;
	myString += buffer.str();
    return *this;
  }

  TPythonDump& TPythonDump::operator<< (const char* theArg)
  {
    std::ostringstream buffer;
    buffer<<theArg;
	myString += buffer.str();
    return *this;
  }

  TPythonDump& TPythonDump::operator<< (const TopAbs_ShapeEnum theArg)
  {
    std::ostringstream buffer;
    buffer<<"geompy.ShapeType[\"";
    TopAbs::Print(theArg, buffer);
    buffer<<"\"]";
	myString += buffer.str();
    return *this;
  }

  TPythonDump& TPythonDump::operator<< (const GEOM_Parameter& theArg)
  {
    std::ostringstream buffer;

	if (theArg.IsString())
	  buffer<<theArg.GetString();
	else
	{
      buffer.precision(16);
	  buffer<<theArg.GetDouble();
	}
	myString += buffer.str();
	return *this;
  }

  TPythonDump& TPythonDump::operator<< (const TCollection_AsciiString& theArg)
  {
    std::ostringstream buffer;
	buffer<<theArg.ToCString();
	myString += buffer.str();

	return *this;
  }

  TPythonDump& TPythonDump::operator<< (const Handle(GEOM_Object)& theObject)
  {
    std::ostringstream buffer;
	if (theObject.IsNull()) {
      buffer << "None";
    } else {
      TCollection_AsciiString anEntry;
	  TDF_Tool::Entry(theObject->GetEntry(), anEntry);
	  #ifdef SIMPLE_ID
	  anEntry = anEntry.Token(":", 4);
	  anEntry.Prepend("S:");
	  #endif
	  buffer << anEntry.ToCString();
    }
	myString += buffer.str();
    return *this;
  }

  Handle(GEOM_Object) GetCreatedLast(const Handle(GEOM_Object)& theObj1,
                                     const Handle(GEOM_Object)& theObj2)
  {
    if (theObj1.IsNull()) return theObj2;
    if (theObj2.IsNull()) return theObj1;

    TColStd_ListOfInteger aTags1, aTags2;
    TDF_Tool::TagList(theObj1->GetEntry(), aTags1);
    TDF_Tool::TagList(theObj2->GetEntry(), aTags2);
    TColStd_ListIteratorOfListOfInteger aListIter1(aTags1), aListIter2(aTags2);
    for (; aListIter1.More(); aListIter1.Next(), aListIter2.Next()) {
      if (!aListIter2.More())
        return theObj1; // anObj1 is stored under anObj2

      if (aListIter1.Value() > aListIter2.Value())
        return theObj1;
      else if (aListIter1.Value() < aListIter2.Value())
        return theObj2;
    }
	return theObj1;
  }
	  
  Handle(GEOM_Object) GetCreatedLast(const Handle(TColStd_HSequenceOfTransient)& theObjects)
  {
    Handle(GEOM_Object) anObject, aLatest;
    int i, aLen = theObjects->Length();
    if (aLen < 1)
      return aLatest;

    for (i = 1; i <= aLen; i++) {
      anObject = Handle(GEOM_Object)::DownCast(theObjects->Value(i));
      aLatest = GetCreatedLast(aLatest, anObject);
    }
    return aLatest;
  }
}
