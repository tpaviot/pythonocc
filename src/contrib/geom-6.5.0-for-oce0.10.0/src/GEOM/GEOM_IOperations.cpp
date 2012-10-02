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

#include <Standard_Stream.hxx>

#include <GEOM_IOperations.hxx>

#include "utilities.h"
////#include <OpUtil.hxx>
////#include <Utils_ExceptHandlers.hxx>

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
  MESSAGE("GEOM_IOperations::~GEOM_IOperations");
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
  *  FinishOperation
  */
//=============================================================================      
void GEOM_IOperations::FinishOperation()
{
  Handle(TDocStd_Document) aDoc = _engine->GetDocument(_docID);
  if(aDoc->GetUndoLimit() > 0) 
    aDoc->CommitCommand();
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
  return (_errorCode == OK);
}  


