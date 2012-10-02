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

#ifndef _GEOMImpl_IInsertOperations_HXX_
#define _GEOMImpl_IInsertOperations_HXX_

#include "GEOM_IOperations.hxx"
#include "GEOM_Engine.hxx"
#include "GEOM_Object.hxx"

#include <Basics_OCCTVersion.hxx>

//#include "Utils_SALOME_Exception.hxx"

#include <TDocStd_Document.hxx>
#include <TColStd_HSequenceOfAsciiString.hxx>
#include <TCollection_HAsciiString.hxx>
#include <Resource_Manager.hxx>

#include <list>

#if OCC_VERSION_LARGE > 0x06040000 // Porting to OCCT6.5.1
class Handle_TColStd_HArray1OfByte;
#else
class Handle_TDataStd_HArray1OfByte;
#endif

class GEOMImpl_IInsertOperations : public GEOM_IOperations {
 public:
  Standard_EXPORT GEOMImpl_IInsertOperations(GEOM_Engine* theEngine, int theDocID);
  Standard_EXPORT ~GEOMImpl_IInsertOperations();


  Standard_EXPORT Handle(GEOM_Object) MakeCopy (Handle(GEOM_Object) theOriginal);

  Standard_EXPORT Handle(GEOM_Object) Import (const TCollection_AsciiString& theFileName,
                                              const TCollection_AsciiString& theFormatType);

  Standard_EXPORT void Export (const Handle(GEOM_Object)      theOriginal,
                               const TCollection_AsciiString& theFileName,
                               const TCollection_AsciiString& theFormatType);

  Standard_EXPORT Standard_Boolean ImportTranslators (Handle(TColStd_HSequenceOfAsciiString)& theFormats,
                                                      Handle(TColStd_HSequenceOfAsciiString)& thePatterns);

  Standard_EXPORT Standard_Boolean ExportTranslators (Handle(TColStd_HSequenceOfAsciiString)& theFormats,
                                                      Handle(TColStd_HSequenceOfAsciiString)& thePatterns);

  Standard_EXPORT Standard_Boolean IsSupported (const Standard_Boolean isImport,
                                                const TCollection_AsciiString& theFormat,
                                                Handle(TCollection_HAsciiString)& theLibName);

  Standard_EXPORT int LoadTexture(const TCollection_AsciiString& theTextureFile);

  Standard_EXPORT int AddTexture(int theWidth, int theHeight,
#if OCC_VERSION_LARGE > 0x06040000 // Porting to OCCT6.5.1
                                 const Handle(TColStd_HArray1OfByte)& theTexture);
#else
                                 const Handle(TDataStd_HArray1OfByte)& theTexture);
#endif

#if OCC_VERSION_LARGE > 0x06040000 // Porting to OCCT6.5.1
  Standard_EXPORT Handle(TColStd_HArray1OfByte) GetTexture(int theTextureId,
#else
  Standard_EXPORT Handle(TDataStd_HArray1OfByte) GetTexture(int theTextureId,
#endif
                                                            int& theWidth, int& theHeight);

  Standard_EXPORT std::list<int> GetAllTextures();

 private:
  Standard_Boolean InitResMgr ();

 private:
  Handle(Resource_Manager) myResMgr;
  Handle(Resource_Manager) myResMgrUser;
};

#endif
