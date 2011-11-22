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

#ifndef _GEOM_Engine_HXX_
#define _GEOM_Engine_HXX_

#include "SGEOM_Application.hxx"
#include "SGEOM_Object.hxx"
#include "SGEOM_DataMapOfAsciiStringTransient.hxx"
#include <TColStd_DataMapOfIntegerTransient.hxx>
#include <Resource_DataMapOfAsciiStringAsciiString.hxx>
#include <TDocStd_Document.hxx>
#include <TColStd_HArray1OfInteger.hxx>
#include <TColStd_HArray1OfTransient.hxx>
#include <TColStd_HSequenceOfAsciiString.hxx>
#include <TColStd_HArray1OfByte.hxx>


//---------------------------------------------------------------------------
#include <ExprIntrp_Analysis.hxx>
#include <ExprIntrp_GenExp.hxx>
#include <Expr_NamedConstant.hxx>
//---------------------------------------------------------------------------

#ifdef GetObject
#undef GetObject
#endif

#include <map>
#include <list>
#include <vector>
#include <string>

/*!
 * \brief Data of GEOM_Object
 */
struct TObjectData
{
  TCollection_AsciiString _entry;
  TCollection_AsciiString _studyEntry;
  TCollection_AsciiString _name;
  TCollection_AsciiString _pyName;
  bool                    _unpublished;
};

class Handle_TDataStd_HArray1OfByte;

struct TVariable{
  TCollection_AsciiString myVariable;
  bool isVariable;

  TVariable(const TCollection_AsciiString& theVariable, bool theFlag = true):
    myVariable(theVariable),
    isVariable(theFlag){}
};

typedef std::vector<TVariable> TState;
typedef std::vector<TState>    TAllStates;

class ObjectStates
{
public:
  Standard_EXPORT ObjectStates();
  ~ObjectStates();

  TAllStates GetAllStates() const { return _states; }

  TState GetCurrectState() const;
  Standard_EXPORT void AddState(const TState &theState);
  void IncrementState();

private:
  TAllStates              _states;
  int                     _dumpstate;
};

typedef std::map<TCollection_AsciiString, ObjectStates* > TVariablesList;

#ifdef MEM_OPTIMISED_LABEL
typedef std::map<int, std::list<TDF_Label> > TFreeLabelsList;
#endif

//!Manages documents and objects in a document
class GEOM_Engine
{
 public:
  Standard_EXPORT GEOM_Engine();
  Standard_EXPORT virtual ~GEOM_Engine();

  //!Retuns the engine
  Standard_EXPORT static GEOM_Engine* GetEngine();

  //!Checks if the document with document id theDocID exists in the framework
  Standard_EXPORT bool IsDocumentExistant(int theDocID);

  //!Returns the OCAF document by its ID, if document doesn't exists it will be created
  Standard_EXPORT Handle(TDocStd_Document) GetDocument(int theDocID, bool force = true);

  //!Returns the ID of the given OCAF document
  Standard_EXPORT int GetDocID(Handle(TDocStd_Document) theDocument);
  
  //!Returns the OCAF appliaction
  Standard_EXPORT Handle(TDocStd_Application) GetApplication() { return _OCAFApp; }

  //!Returns a pointer to GEOM_Object defined by a document and the entry
  Standard_EXPORT Handle(GEOM_Object) GetObject(int theDocID, const char* theEntry, bool force = true);
  
  //!Adds a new object of the type theType in the OCAF document
  Standard_EXPORT Handle(GEOM_Object) AddObject(int theDocID, int theType);

  //!Removes the object from the OCAF document
  Standard_EXPORT bool RemoveObject(Handle(GEOM_Object) theObject);  

  //!Saves the OCAF document with ID = theDocID with file with name theFileName
  Standard_EXPORT bool Save(int theDocID, char* theFileName);
  
  //!Loads the OCAF document into the application and assigns to it an ID = theDocID
  Standard_EXPORT bool Load(int theDocID, char* theFileName);

  //!Closes the document with ID =  theDocID
  Standard_EXPORT void Close(int theDocID);

  //!Sets the number of Undos (default value = 10)
  Standard_EXPORT void SetUndoLimit(int theLimit) { _UndoLimit = theLimit; }

  //!Applies an Undo to document with ID = theDocID
  Standard_EXPORT void Undo(int theDocID);

  //!Applies an Redo to document with ID = theDocID
  Standard_EXPORT void Redo(int theDocID);

  //!Adds a new sub shape object of the MainShape object
  Standard_EXPORT Handle(GEOM_Object) AddSubShape(Handle(GEOM_Object) theMainShape, 
                    Handle(TColStd_HArray1OfInteger) theIndices,
                    bool isStandaloneOperation = false);

  //!Returns Python script of document
  Standard_EXPORT TCollection_AsciiString DumpPython(int theDocID, 
                                                     std::vector<TObjectData>& theObjectData,
                                                     TVariablesList theVariables,
                                                     bool isPublished, 
                                                     bool isMultiFile, 
                                                     bool& aValidScript);

  //!Returns dump name
  Standard_EXPORT const char* GetDumpName (const char* theStudyEntry) const;

  //!Returns all dump names
  Standard_EXPORT Handle(TColStd_HSequenceOfAsciiString) GetAllDumpNames() const;

  //!Queries the engine for the value of a variable
  Standard_EXPORT double GetInterpreterEquationValue(int theDocID, const TCollection_AsciiString& theEquation);

  //!Sets to the engine a new variable
  Standard_EXPORT void SetInterpreterConstant(int theDocID, const TCollection_AsciiString& theConstant, double theValue, const TCollection_AsciiString& theDescription, bool isUpdateDescription = true);

  //!Gets an array with all the variables in use in a document
  Standard_EXPORT void GetInterpreterConstantArray(int theDocID, Handle(TColStd_HArray1OfTransient)& theArray, Handle(TColStd_HArray1OfAsciiString)& theDescriptions);

  //!Sets an array with all the variables to be used in a document
  Standard_EXPORT void SetInterpreterConstantArray(int theDocID, Handle(TColStd_HArray1OfTransient) theArray, Handle(TColStd_HArray1OfAsciiString) theDescriptions, bool forgetPrevious);

  //!Returns a label which could be used to store user data on documents
  Standard_EXPORT TDF_Label GetUserDataLabel(int theDocID);

  //!Adds a texture to be saved in the OCAF DF
  Standard_EXPORT int AddTexture(int theDocID, int theWidth, int theHeight,
                                 const Handle(TColStd_HArray1OfByte)& theTexture,
                                 const TCollection_AsciiString& theFileName = "");

  //!Gets a texture stored in the OCAF DF
  Standard_EXPORT Handle(TColStd_HArray1OfByte) GetTexture(int theDocID, int theTextureID,
                                                            int& theWidth, int& theHeight,
                                                            TCollection_AsciiString& theFileName);

  //!Gets all the textures stored in the OCAF DF
  Standard_EXPORT std::list<int> GetAllTextures(int theDocID);

  //!Gets the texture storage driver GUID
  static const Standard_GUID& GetTextureGUID();

 protected:
  Standard_EXPORT static void SetEngine(GEOM_Engine* theEngine);

 private:

  Handle(GEOM_Application)  _OCAFApp;

  TColStd_DataMapOfIntegerTransient _mapIDDocument;

  int _UndoLimit;
  GEOM_DataMapOfAsciiStringTransient _objects;

  Resource_DataMapOfAsciiStringAsciiString _studyEntry2NameMap;

  #ifdef MEM_OPTIMISED_LABEL
  TFreeLabelsList _freeLabels;
  #endif

};

#endif
