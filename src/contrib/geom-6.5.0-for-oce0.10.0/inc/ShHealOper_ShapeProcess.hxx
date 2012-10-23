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

// File:      ShHealOper_ShapeProcess.hxx
// Created:   13.04.04 11:45:20
// Author:    Galina KULIKOVA
//
#ifndef ShHealOper_ShapeProcess_HeaderFile
#define ShHealOper_ShapeProcess_HeaderFile

#include <Resource_Manager.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>
#include <TColStd_SequenceOfAsciiString.hxx>
#include <TCollection_AsciiString.hxx>
#include <ShapeProcessAPI_ApplySequence.hxx>
#include <ShapeProcess_ShapeContext.hxx>

///  Class ShHealOper_ShapeProcess
//Class for performing Shape healing operations on the shape.

class ShHealOper_ShapeProcess 
{
 public:
  // ---------- PUBLIC METHODS ----------

  /// Empty constructor
  Standard_EXPORT ShHealOper_ShapeProcess();
  //Constuctor initializes by defaults parameters 
  // (name of resource file - ShHealing, prefix - ShapeProcess, 
  // SaveHistory = Standard_False, level = TopAbs_FACE)

  /// Copy constructor
  Standard_EXPORT ShHealOper_ShapeProcess 
    (const TCollection_AsciiString& theNameResource,
     const TCollection_AsciiString& thePrefix = "ShapeProcess");
  //Constuctor initializes by specified name of resource file and prefix
  
  Standard_EXPORT void Perform(const TopoDS_Shape& theOldShape, 
                                           TopoDS_Shape& theNewShape);
  //Perform modifications of specified shape.
  
  Standard_EXPORT void SetOperators(const TColStd_SequenceOfAsciiString& theSeqOperators);
  //Set sequence of operatotrs different than sequence written in the resourse file.
  
  Standard_EXPORT Standard_Boolean GetOperators(TColStd_SequenceOfAsciiString& theSeqOperators);
  //Get sequence of operators.

  Standard_EXPORT void SetParameter(const TCollection_AsciiString& theNameParam,
                                    const TCollection_AsciiString& theVal);
  //Set value of specified parameter different than value written in the resourse file.
  
  Standard_EXPORT Standard_Boolean GetParameter(const TCollection_AsciiString& theNameParam,
                                       TCollection_AsciiString& theVal);
  //Get value of parameter by it's name.

 inline void SetSaveHistoryMode(const Standard_Boolean theSaveHistory,
                                TopAbs_ShapeEnum theuntil = TopAbs_FACE)
 {
   mySaveHistoryMode = theSaveHistory;
   myLevel = theuntil;
 }
  //Set SaveHistoryMode nnd level of the shapes until history will be saved to the
  //specified values.


  inline Standard_Boolean GetSaveHistoryMode()
  {
    return mySaveHistoryMode;
  }
  //Returns SaveHistoryMode.
  
  inline Standard_Boolean GetModifiedShape(const TopoDS_Shape& theOldShape,
                                           TopoDS_Shape& theNewShape)
  {
    Standard_Boolean isModif = (!myMapModifications.IsEmpty() && 
                                myMapModifications.IsBound(theOldShape));
    if(isModif)
      theNewShape = myMapModifications.Find(theOldShape);
    else
      theNewShape = theOldShape;
    return isModif;
  }
  //Get modified shape for any specified shape
  
  inline Standard_Boolean isDone()
  {
    return myDone;
  }
  //returns status of operation.
 protected:
  // ---------- PROTECTED METHODS ----------



 private:
  // ---------- PRIVATE FIELDS ----------

  //Handle(Resource_Manager) myResource;
  ShapeProcessAPI_ApplySequence myOperations;
  TCollection_AsciiString myPrefix;
  TopTools_DataMapOfShapeShape myMapModifications;
  Standard_Boolean mySaveHistoryMode;
  TopAbs_ShapeEnum myLevel;
  Standard_Boolean myDone;
 public:
// Declaration of CASCADE RTTI
//DEFINE_STANDARD_RTTI (ShHealOper_ShapeProcess)
};

// Definition of HANDLE object using Standard_DefineHandle.hxx
//DEFINE_STANDARD_HANDLE (ShHealOper_ShapeProcess, )


#endif
