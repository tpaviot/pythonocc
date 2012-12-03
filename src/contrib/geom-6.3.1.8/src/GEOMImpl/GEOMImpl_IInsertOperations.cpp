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

#include <stdio.h>

#include <Standard_Stream.hxx>

#include <GEOMImpl_IInsertOperations.hxx>

#include <TFunction_DriverTable.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_Logbook.hxx>
#include <TDF_Tool.hxx>

#include <GEOM_Function.hxx>
#include <GEOM_PythonDump.hxx>

#include <GEOMImpl_CopyDriver.hxx>
#include <GEOMImpl_ExportDriver.hxx>
#include <GEOMImpl_ImportDriver.hxx>

#include <GEOMImpl_ICopy.hxx>
#include <GEOMImpl_IImportExport.hxx>

#include <GEOMImpl_Types.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Vertex.hxx>
#include <BRep_Tool.hxx>
#include <gp_Pnt.hxx>
#include <TColStd_HArray1OfByte.hxx>

#include <Standard_Failure.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================

GEOMImpl_IInsertOperations::GEOMImpl_IInsertOperations(GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  //MESSAGE("GEOMImpl_IInsertOperations::GEOMImpl_IInsertOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================

GEOMImpl_IInsertOperations::~GEOMImpl_IInsertOperations()
{
  //MESSAGE("GEOMImpl_IInsertOperations::~GEOMImpl_IInsertOperations");
}



//=============================================================================
/*!
 *  MakeCopy
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IInsertOperations::MakeCopy(Handle(GEOM_Object) theOriginal)
{
  SetErrorCode(GEOM_KO);

  if (theOriginal.IsNull()) return NULL;

  //Add a new Copy object
  Handle(GEOM_Object) aCopy = GetEngine()->AddObject(GetDocID(), GEOM_COPY);

  //Add a Copy function for creation a copy object
  Handle(GEOM_Function) aFunction = aCopy->AddFunction(GEOMImpl_CopyDriver::GetID(), COPY_WITH_REF);

  //Check if the function is set correctly
  if(aFunction->GetDriverGUID() != GEOMImpl_CopyDriver::GetID()) return NULL;

  GEOMImpl_ICopy aCI(aFunction);

  Handle(GEOM_Function) aRefFunction = theOriginal->GetLastFunction();
  if (aRefFunction.IsNull()) return NULL;

  aCI.SetOriginal(aRefFunction);

  //Compute the Copy value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Copy driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCopy << " = MakeCopy(" << theOriginal << ")";

  SetErrorCode(GEOM_OK);
  return aCopy;
}

//=============================================================================
/*!
 *  Export
 */
//=============================================================================
void GEOMImpl_IInsertOperations::Export
					 (	const Handle(GEOM_Object)      theOriginal,
						const TCollection_AsciiString& theFileName,
						const TCollection_AsciiString& theFormatName)
{
  SetErrorCode(GEOM_KO);

  if (theOriginal.IsNull()) return;

  Handle(GEOM_Function) aRefFunction = theOriginal->GetLastFunction();
  if (aRefFunction.IsNull()) return;  //There is no function which creates an object to be exported

  //Add an Export function
  Handle(GEOM_Function) aFunction = theOriginal->AddFunction(GEOMImpl_ExportDriver::GetID(), EXPORT_SHAPE);
  if (aFunction.IsNull()) return;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ExportDriver::GetID()) return;

  Handle(TCollection_HAsciiString) aHLibName;
  if (!IsSupported(Standard_False, theFormatName, aHLibName)) {
    return;
  }
  TCollection_AsciiString aLibName = aHLibName->String();

  //Set parameters
  GEOMImpl_IImportExport aCI (aFunction);
  aCI.SetOriginal(aRefFunction);
  aCI.SetFileName(theFileName);
  aCI.SetFormatName(theFormatName);
  aCI.SetPluginName(aLibName);

  //Perform the Export
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Not enough space on disk, or you haven't permissions to write this directory");
      return;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << "Export(" << theOriginal << ", \""
    << theFileName.ToCString() << "\", \"" << theFormatName.ToCString() << "\")";

  SetErrorCode(GEOM_OK);
}

//=============================================================================
/*!
 *  Import
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IInsertOperations::Import
								 (	const TCollection_AsciiString& theFileName,
									const TCollection_AsciiString& theFormatName)
{
  SetErrorCode(GEOM_KO);

  if (theFileName.IsEmpty() || theFormatName.IsEmpty()) return NULL;

  //Add a new result object
  Handle(GEOM_Object) result = GetEngine()->AddObject(GetDocID(), GEOM_IMPORT);

  //Add an Import function
  Handle(GEOM_Function) aFunction = result->AddFunction(GEOMImpl_ImportDriver::GetID(), IMPORT_SHAPE);
  if (aFunction.IsNull()) return result;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ImportDriver::GetID()) return result;

  Handle(TCollection_HAsciiString) aHLibName;
  if (!IsSupported(Standard_True, theFormatName, aHLibName)) {
    return result;
  }
  TCollection_AsciiString aLibName = aHLibName->String();

  //Set parameters
  GEOMImpl_IImportExport aCI (aFunction);
  aCI.SetFileName(theFileName);
  aCI.SetFormatName(theFormatName);
  aCI.SetPluginName(aLibName);

  //Perform the Import
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Import driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  if( theFormatName != "IGES_UNIT" ) {
    GEOM::TPythonDump(aFunction) << result << " = ImportFile(\""
      << theFileName.ToCString() << "\", \"" << theFormatName.ToCString() << "\")";

    SetErrorCode(GEOM_OK);
  }
  else {
    TopoDS_Shape S = aFunction->GetValue();
    TopoDS_Vertex V = TopoDS::Vertex(S);
    gp_Pnt P = BRep_Tool::Pnt(V);
    double scale = P.X();
    TCollection_AsciiString aUnitName = "UNIT_M";
    if( fabs(scale-0.01) < 1.e-6 )
      aUnitName = "UNIT_CM";
    else if( fabs(scale-0.001) < 1.e-6 )
      aUnitName = "UNIT_MM";

    SetErrorCode(aUnitName);
  }
  
  return result;
}

//=============================================================================
/*!
 *  ImportTranslators
 */
//=============================================================================
Standard_Boolean GEOMImpl_IInsertOperations::ImportTranslators
					 (	Handle(TColStd_HSequenceOfAsciiString)& theFormats,
		      			Handle(TColStd_HSequenceOfAsciiString)& thePatterns)
{
  if (theFormats.IsNull())
    theFormats = new TColStd_HSequenceOfAsciiString;
  else
    theFormats->Clear();

  if (thePatterns.IsNull())
    thePatterns = new TColStd_HSequenceOfAsciiString;
  else
    thePatterns->Clear();

  if (!InitResMgr()) return Standard_False;

  // Read Import formats list from install directory
  if (myResMgr->Find("Import")) {
    TCollection_AsciiString aFormats (myResMgr->Value("Import"));
    TCollection_AsciiString aToken = aFormats.Token("| \t", 1);
    int i = 1;
    for (; !aToken.IsEmpty(); aToken = aFormats.Token("| \t", ++i)) {
      theFormats->Append(aToken);
    }
  }

  // Read Import formats from user directory
  if (myResMgrUser->Find("Import")) {
    TCollection_AsciiString aFormats (myResMgrUser->Value("Import"));
    TCollection_AsciiString aToken = aFormats.Token("| \t", 1);
    int i = 1;
    for (; !aToken.IsEmpty(); aToken = aFormats.Token("| \t", ++i)) {
      int aLenFormats = theFormats->Length();
      bool isFound = false;
      for(int aInd=1;aInd<=aLenFormats;aInd++){
	if( theFormats->Value(aInd) == aToken){
	  isFound = true;
	  break;
	}
      }
      if(!isFound)
	theFormats->Append(aToken);
    }
  }

  // Read Patterns for each supported format
  int j = 1, len = theFormats->Length();
  for (; j <= len; j++) {
    TCollection_AsciiString aKey, aPattern;
    aKey = theFormats->Value(j) + ".ImportPattern";
    if (myResMgr->Find(aKey.ToCString()))
      aPattern = myResMgr->Value(aKey.ToCString());
    else if(myResMgrUser->Find(aKey.ToCString()))
      aPattern = myResMgrUser->Value(aKey.ToCString());
    else {
      aKey = theFormats->Value(j) + ".Pattern";
      if (myResMgr->Find(aKey.ToCString()))
        aPattern = myResMgr->Value(aKey.ToCString());
      else if(myResMgrUser->Find(aKey.ToCString()))
	aPattern = myResMgrUser->Value(aKey.ToCString());
      else {
        aPattern = theFormats->Value(j);
        aPattern += " Files ( *.* )";
      }
    }
    thePatterns->Append(aPattern);
  }

  return (!theFormats->IsEmpty());
}

//=============================================================================
/*!
 *  ExportTranslators
 */
//=============================================================================
Standard_Boolean GEOMImpl_IInsertOperations::ExportTranslators
                     (Handle(TColStd_HSequenceOfAsciiString)& theFormats,
		      Handle(TColStd_HSequenceOfAsciiString)& thePatterns)
{
  if (theFormats.IsNull())
    theFormats = new TColStd_HSequenceOfAsciiString;
  else
    theFormats->Clear();

  if (thePatterns.IsNull())
    thePatterns = new TColStd_HSequenceOfAsciiString;
  else
    thePatterns->Clear();

  if (!InitResMgr()) return Standard_False;

  // Read Export formats list from install directory
  if (myResMgr->Find("Export")) {
    TCollection_AsciiString aFormats (myResMgr->Value("Export"));
    TCollection_AsciiString aToken = aFormats.Token("| \t", 1);
    int i = 1;
    for (; !aToken.IsEmpty(); aToken = aFormats.Token("| \t", ++i)) {
      theFormats->Append(aToken);
    }
  }

  // Read Export formats list from user directory
  if (myResMgrUser->Find("Export")) {
    TCollection_AsciiString aFormats (myResMgrUser->Value("Export"));
    TCollection_AsciiString aToken = aFormats.Token("| \t", 1);
    int i = 1;
    for (; !aToken.IsEmpty(); aToken = aFormats.Token("| \t", ++i)) {
      int aLenFormats = theFormats->Length();
      bool isFound = false;
      for(int aInd=1;aInd<=aLenFormats;aInd++){
	if( theFormats->Value(aInd) == aToken){
	  isFound = true;
	  break;
	}
      }
      if(!isFound)
	theFormats->Append(aToken);
    }
  }

  // Read Patterns for each supported format
  int j = 1, len = theFormats->Length();
  for (; j <= len; j++) {
    TCollection_AsciiString aKey, aPattern;
    aKey = theFormats->Value(j) + ".ExportPattern";
    if (myResMgr->Find(aKey.ToCString()))
      aPattern = myResMgr->Value(aKey.ToCString());
    else if (myResMgrUser->Find(aKey.ToCString()))
      aPattern = myResMgrUser->Value(aKey.ToCString());
    else {
      aKey = theFormats->Value(j) + ".Pattern";
      if (myResMgr->Find(aKey.ToCString()))
        aPattern = myResMgr->Value(aKey.ToCString());
      else if (myResMgrUser->Find(aKey.ToCString()))
	aPattern = myResMgrUser->Value(aKey.ToCString());
      else {
        aPattern = theFormats->Value(j);
        aPattern += " Files ( *.* )";
      }
    }
    thePatterns->Append(aPattern);
  }

  return (!theFormats->IsEmpty());
}

//=============================================================================
/*!
 *  IsSupported
 */
//=============================================================================
Standard_Boolean GEOMImpl_IInsertOperations::IsSupported
                            (const Standard_Boolean isImport,
                             const TCollection_AsciiString& theFormat,
                             Handle(TCollection_HAsciiString)& theLibName)
{
  if (!InitResMgr()) return Standard_False;

  // Import/Export mode
  TCollection_AsciiString aMode;
  //Standard_CString aMode;
  if (isImport) aMode = "Import";
  else aMode = "Export";

  
  // Read supported formats for the certain mode from install directory
  if (myResMgr->Find(aMode.ToCString())) {
    TCollection_AsciiString aFormats (myResMgr->Value(aMode.ToCString()));
    if (aFormats.Search(theFormat) > -1) {
      // Read library name for the supported format
      TCollection_AsciiString aKey (theFormat);
      aKey += ".";
      aKey += aMode;
      if (myResMgr->Find(aKey.ToCString())) {
        TCollection_AsciiString aLibName (myResMgr->Value(aKey.ToCString()));
        theLibName = new TCollection_HAsciiString (aLibName);
        return Standard_True;
      }
    }
  }
  
  // Read supported formats for the certain mode from user directory
  if (myResMgrUser->Find(aMode.ToCString())) {
    TCollection_AsciiString aFormats (myResMgrUser->Value(aMode.ToCString()));
    if (aFormats.Search(theFormat) > -1) {
      // Read library name for the supported format
      TCollection_AsciiString aKey (theFormat);
      aKey += ".";
      aKey += aMode;
      if (myResMgrUser->Find(aKey.ToCString())) {
        TCollection_AsciiString aLibName (myResMgrUser->Value(aKey.ToCString()));
        theLibName = new TCollection_HAsciiString (aLibName);
        return Standard_True;
      }
    }
  }
  
  return Standard_False;
}

//=============================================================================
/*!
 *  InitResMgr
 */
//=============================================================================
Standard_Boolean GEOMImpl_IInsertOperations::InitResMgr()
{
  bool isResourceFound     = false;
  bool isResourceFoundUser = false;
  TCollection_AsciiString aUserResDir,aResDir;

  if (myResMgr.IsNull()) {
    // Initialize the Resource Manager
    TCollection_AsciiString aNull;
	//aResDir = TCollection_AsciiString(getenv("GEOM_ROOT_DIR"));
	char * pResourcePath = getenv("CSF_ResourcesDefaults");
  	if (pResourcePath)
		aResDir = pResourcePath;
	else
	{
      aResDir = getenv("HOME");
#ifdef WNT
      aResDir += "\\.salome\\resources";
#else
      aResDir += "/.salome/resources";
#endif
      INFOS("The environment variable \"CSF_ResourcesDefaults\" is not set, searching " << aResDir << " for the resource files.");
	}

    myResMgr = new Resource_Manager ("ImportExport", aResDir, aNull, Standard_False);

    isResourceFound = true;
    if (!myResMgr->Find("Import") && !myResMgr->Find("Export")) {
      // instead of complains in Resource_Manager
      isResourceFound = false;
      INFOS("No valid file \"ImportExport\" found in " << aResDir.ToCString());
    }
  } else
    isResourceFound = true;

  if (myResMgrUser.IsNull()) {
    char * dir = getenv("GEOM_ENGINE_RESOURCES_DIR");
    TCollection_AsciiString aNull;
    if ( dir )
    {
      aUserResDir = dir;
    }
    else
    {
      aUserResDir = getenv("HOME");
#ifdef WNT
      aUserResDir += "\\.salome\\resources";
#else
      aUserResDir += "/.salome/resources";
#endif
    }

    myResMgrUser = new Resource_Manager ("ImportExport", aNull, aUserResDir, Standard_False);

    isResourceFoundUser = true;
    
    if (!myResMgrUser->Find("Import") && !myResMgrUser->Find("Export")) {
      // instead of complains in Resource_Manager
      isResourceFoundUser = false;
    }
      
  } else
    isResourceFoundUser = true;
    
  if(!isResourceFound && !isResourceFoundUser){
    INFOS("No valid file \"ImportExport\" found in " << aResDir.ToCString());
    INFOS("No valid file \"ImportExport\" found in " << aUserResDir.ToCString() );
  }

  return ( myResMgr->Find("Import") || myResMgr->Find("Export") ||
	   myResMgrUser->Find("Import") || myResMgrUser->Find("Export"));
}

//=============================================================================
/*!
 *  LoadTexture
 */
//=============================================================================
int GEOMImpl_IInsertOperations::LoadTexture(const TCollection_AsciiString& theTextureFile)
{
  SetErrorCode(GEOM_KO);

  if (theTextureFile.IsEmpty()) return 0;

  Handle(TColStd_HArray1OfByte) aTexture;

  FILE* fp = fopen(theTextureFile.ToCString(), "r");
  if (!fp) return 0;

  std::list<std::string> lines;
  char buffer[4096];
  int maxlen = 0;
  while (!feof(fp)) {
    if ((fgets(buffer, 4096, fp)) == NULL) break;
    int aLen = strlen(buffer);
    if (buffer[aLen-1] == '\n') buffer[aLen-1] = '\0';
    lines.push_back(buffer);
    maxlen = std::max(maxlen, (int)strlen(buffer));
  }

  fclose(fp);

  int lenbytes = maxlen/8;
  if (maxlen%8) lenbytes++;

  if (lenbytes == 0 || lines.empty())
    return 0;

  std::list<unsigned char> bytedata;
  std::list<std::string>::const_iterator it;
  for (it = lines.begin(); it != lines.end(); ++it) {
    std::string line = *it;
    int lenline = (line.size()/8 + (line.size()%8 ? 1 : 0)) * 8;
    for (int i = 0; i < lenline/8; i++) {
      unsigned char byte = 0;
      for (int j = 0; j < 8; j++)
	byte = (byte << 1) + ( i*8+j < line.size() && line[i*8+j] != '0' ? 1 : 0 );
      bytedata.push_back(byte);
    }
    for (int i = lenline/8; i < lenbytes; i++)
      bytedata.push_back((unsigned char)0);
  }

  if (bytedata.empty() || bytedata.size() != lines.size()*lenbytes)
    return 0;

  aTexture = new TColStd_HArray1OfByte(1, lines.size()*lenbytes);
  std::list<unsigned char>::iterator bdit;
  int i;
  for (i = 1, bdit = bytedata.begin(); bdit != bytedata.end(); ++bdit, ++i)
    aTexture->SetValue(i, (Standard_Byte)(*bdit));

  int aTextureId = GetEngine()->AddTexture(GetDocID(), lenbytes*8, lines.size(), aTexture, theTextureFile);
  if (aTextureId > 0) SetErrorCode(GEOM_OK);
  return aTextureId;
}

//=============================================================================
/*!
 *  AddTexture
 */
//=============================================================================
int GEOMImpl_IInsertOperations::AddTexture(int theWidth, int theHeight,
					   const Handle(TColStd_HArray1OfByte)& theTexture)
{
  SetErrorCode(GEOM_KO);
  int aTextureId = GetEngine()->AddTexture(GetDocID(), theWidth, theHeight, theTexture);
  if (aTextureId > 0) SetErrorCode(GEOM_OK);
  return aTextureId;
}

//=============================================================================
/*!
 *  GetTexture
 */
//=============================================================================
Handle(TColStd_HArray1OfByte) GEOMImpl_IInsertOperations::GetTexture(int theTextureId,
								      int& theWidth, int& theHeight)
{
  SetErrorCode(GEOM_KO);
  
  Handle(TColStd_HArray1OfByte) aTexture;
  theWidth = theHeight = 0;
  TCollection_AsciiString aFileName;

  if (theTextureId <= 0)
    return aTexture;

  aTexture = GetEngine()->GetTexture(GetDocID(), theTextureId, theWidth, theHeight, aFileName);

  if (theWidth > 0 && theHeight > 0 && aTexture->Length() > 0) SetErrorCode(GEOM_OK);

  return aTexture;
}

//=============================================================================
/*!
 *  GetAllTextures
 */
//=============================================================================
std::list<int> GEOMImpl_IInsertOperations::GetAllTextures()
{
  SetErrorCode(GEOM_KO);
  std::list<int> id_list = GetEngine()->GetAllTextures(GetDocID());
  SetErrorCode(GEOM_OK);
  return id_list;
}
