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
//

#include <Standard_Stream.hxx>
#include <GEOM_Application.ixx>

//=======================================================================
//function : GEOM_Application
//purpose  : 
//=======================================================================

GEOM_Application::GEOM_Application() 
{
  myCB = 0;
  myClientData = 0;
}


//=======================================================================
//function : Formats
//purpose  : 
//=======================================================================

void GEOM_Application::Formats(TColStd_SequenceOfExtendedString& Formats) 
{
  Formats.Append(TCollection_ExtendedString ("GEOM_ASCII"));
  Formats.Append(TCollection_ExtendedString ("GEOM_BIN"));
  Formats.Append(TCollection_ExtendedString ("GEOM_XML"));
}


//=======================================================================
//function : ResourcesName
//purpose  :
//=======================================================================

Standard_CString GEOM_Application::ResourcesName()
{
  return Standard_CString ("Resources");
}


//=======================================================================
//function : SetTransactionCallBack
//purpose  :
//=======================================================================

void GEOM_Application::SetTransactionCallBack(const GEOM_TransactionCallbackProc& aCB,const Standard_Address aClientData)
{
  myCB = aCB;
  myClientData = aClientData;
}


//=======================================================================
//function : SetTransactionCallBack
//purpose  :
//=======================================================================

void GEOM_Application::OnOpenTransaction(const Handle(TDocStd_Document)& theDoc)
{
  if (myCB)
    myCB(theDoc, cbOpenTransaction, myClientData);
}


//=======================================================================
//function : SetTransactionCallBack
//purpose  :
//=======================================================================

void GEOM_Application::OnCommitTransaction(const Handle(TDocStd_Document)& theDoc)
{
  if (myCB)
    myCB(theDoc, cbCommitTransaction, myClientData);
}


//=======================================================================
//function : SetTransactionCallBack
//purpose  :
//=======================================================================

void GEOM_Application::OnAbortTransaction(const Handle(TDocStd_Document)& theDoc)
{
  if (myCB)
    myCB(theDoc, cbAbortTransaction, myClientData);
}
