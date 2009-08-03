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

#ifndef _GEOM_IOperations_HXX_
#define _GEOM_IOperations_HXX_

#include "SGEOM_Engine.hxx"
#include <TDocStd_Document.hxx>
#include <TCollection_AsciiString.hxx>

#include "SGEOM_Object.hxx"
#include "SGEOM_Solver.hxx"
#include "SGEOM_Parameter.hxx"

#define GEOM_OK "PAL_NO_ERROR"
#define GEOM_KO "PAL_NOT_DONE_ERROR"
#define GEOM_NOT_FOUND_ANY "NOT_FOUND_ANY"
#define GEOM_ALREADY_PRESENT "PAL_ELEMENT_ALREADY_PRESENT"
#define GEOM_NOT_EXISTS "PAL_ELEMENT_DOES_NOT_EXISTS"
#define GEOM_INVALID_TYPE "INVALID_TYPE_OF_ELEMENT"

//!Operations management in GEOM.Used to start, finish or abort an operation.
//!Used in undo redo operations of applications
class GEOM_IOperations
{
 public:
  Standard_EXPORT GEOM_IOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOM_IOperations();

  //!Starts a new operation (opens a tansaction)
  Standard_EXPORT void StartOperation();
 
  //!Finishes the previously started operation (closes the transaction)
  Standard_EXPORT void FinishOperation();

  //!Aborts the operation
  Standard_EXPORT void AbortOperation();
 
  //!Returns true if the last operation suceeded
  Standard_EXPORT bool IsDone();

  //!Sets Not done error code
  Standard_EXPORT void SetNotDone() { _errorCode = GEOM_KO; }

  //!Sets an error code of the operation
  Standard_EXPORT void SetErrorCode(const TCollection_AsciiString& theErrorCode) {
    _errorCode = theErrorCode;    
  } 
 
  //!Returns an error code of the last operation
  Standard_EXPORT const char* GetErrorCode() {
    return _errorCode.ToCString();    
  }
  
  //!Returns a pointer to  GEOM_Engine which this operation interface is associated
  Standard_EXPORT GEOM_Engine* GetEngine() { return _engine; }

  //!Return a pointer to Solver associated with this operation interface
  Standard_EXPORT GEOM_Solver* GetSolver() { return _solver; }

  //!Returns an ID of the OCAF document where this operation stores the data
  Standard_EXPORT int GetDocID() { return _docID; }

 private:
  
  TCollection_AsciiString _errorCode;
  GEOM_Engine*   _engine;
  GEOM_Solver*   _solver;
  int                     _docID;

};

#endif
