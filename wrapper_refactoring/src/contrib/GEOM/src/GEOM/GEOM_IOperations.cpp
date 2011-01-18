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

#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOM_IOperations.hxx>

#include <TDataStd_TreeNode.hxx>
#include <TDataStd_ChildNodeIterator.hxx>
#include <TDF_TagSource.hxx>

//=============================================================================
/*!
 *  default constructor:
 */
//=============================================================================

GEOM_IOperations::GEOM_IOperations(GEOM_Engine* theEngine, int theDocID)
: _engine(theEngine), _docID(theDocID)
{
  _solver = new GEOM_Solver(theEngine);
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================

GEOM_IOperations::~GEOM_IOperations()
{
  delete _solver;
  //MESSAGE("GEOM_IOperations::~GEOM_IOperations");
}


//=============================================================================
/*!
 *  StartOperation
 */  
//=============================================================================   
void GEOM_IOperations::StartOperation()
{
  Handle(TDocStd_Document) aDoc = _engine->GetDocument(_docID);
  if(aDoc->GetUndoLimit() > 0) 
    aDoc->NewCommand();
}

//=============================================================================
/*!
 *  OpenOperation
 */  
//=============================================================================
void GEOM_IOperations::OpenOperation()
{
  Handle(TDocStd_Document) aDoc = _engine->GetDocument(_docID);
  if(aDoc->GetUndoLimit() > 0) 
    aDoc->OpenCommand();
}

 //=============================================================================
 /*!
  *  FinishOperation
  */
//=============================================================================      
bool GEOM_IOperations::FinishOperation()
{
  bool res = false;
  Handle(TDocStd_Document) aDoc = _engine->GetDocument(_docID);
  if(aDoc->GetUndoLimit() > 0) 
    res = aDoc->CommitCommand();

  return res;
}

//=============================================================================
/*!
 *  AbortOperation
 */
//=============================================================================   
void GEOM_IOperations::AbortOperation()
{
  Handle(TDocStd_Document) aDoc = _engine->GetDocument(_docID);
  aDoc->AbortCommand();
}
   
   
//=============================================================================
/*!
 *  IsDone
 */
//=============================================================================
bool GEOM_IOperations::IsDone()
{
  return (bool) (_errorCode == GEOM_OK);
}  


