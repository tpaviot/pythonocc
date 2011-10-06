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
//NOTE: This is an intreface to a function for the Import Export operation.


#include "GEOM_Function.hxx"

#define EXP_ARG_REF  1
#define EXP_ARG_FILE 2
#define EXP_ARG_PLUG 3
#define EXP_ARG_FORM 4

class GEOMImpl_IImportExport
{
 public:

  GEOMImpl_IImportExport(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetOriginal(Handle(GEOM_Function) theOriginal) { _func->SetReference(EXP_ARG_REF, theOriginal); }

  Handle(GEOM_Function) GetOriginal() { return _func->GetReference(EXP_ARG_REF); }

  void SetFileName(const TCollection_AsciiString& theFileName)
  { _func->SetString(EXP_ARG_FILE, theFileName); }

  TCollection_AsciiString GetFileName() { return _func->GetString(EXP_ARG_FILE); }

  void SetPluginName(const TCollection_AsciiString& thePluginLibName)
  { _func->SetString(EXP_ARG_PLUG, thePluginLibName); }

  TCollection_AsciiString GetPluginName() { return _func->GetString(EXP_ARG_PLUG); }

  void SetFormatName(const TCollection_AsciiString& theFormatName)
  { _func->SetString(EXP_ARG_FORM, theFormatName); }

  TCollection_AsciiString GetFormatName() { return _func->GetString(EXP_ARG_FORM); }

 private:

  Handle(GEOM_Function) _func;
};
