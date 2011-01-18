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

#include <GEOMImpl_ImportDriver.hxx>
#include <GEOMImpl_IImportExport.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <TopoDS_Shape.hxx>

#include <Standard_ConstructionError.hxx>
#include <StdFail_NotDone.hxx>

#ifdef WNT
#include <windows.h>
#else
#include <dlfcn.h>
#endif

#ifdef WNT
#define LibHandle HMODULE
#define LoadLib( name ) LoadLibrary( name )
#define GetProc GetProcAddress
#define UnLoadLib( handle ) FreeLibrary( handle );
#else
#define LibHandle void*
#define LoadLib( name ) dlopen( name, RTLD_LAZY )
#define GetProc dlsym
#define UnLoadLib( handle ) dlclose( handle );
#endif

typedef TopoDS_Shape (*funcPoint)(const TCollection_AsciiString&,
                                  const TCollection_AsciiString&,
                                  TCollection_AsciiString&,
                                  const TDF_Label&);

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_ImportDriver::GetID()
{
  static Standard_GUID aImportDriver("FF1BBB60-5D14-4df2-980B-3A668264EA16");
  return aImportDriver;
}


//=======================================================================
//function : GEOMImpl_ImportDriver
//purpose  :
//=======================================================================
GEOMImpl_ImportDriver::GEOMImpl_ImportDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_ImportDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IImportExport aCI (aFunction);
  //Standard_Integer aType = aFunction->GetType();

  // retrieve the file and plugin library names
  TCollection_AsciiString aFileName   = aCI.GetFileName();
  TCollection_AsciiString aFormatName = aCI.GetFormatName();
  TCollection_AsciiString aLibName;
#ifdef WNT
  aLibName = TCollection_AsciiString(aCI.GetPluginName()) + TCollection_AsciiString(".dll");
#else
  aLibName = TCollection_AsciiString("lib") + TCollection_AsciiString(aCI.GetPluginName()) + TCollection_AsciiString(".so");
#endif
    
  if (aFileName.IsEmpty() || aFormatName.IsEmpty() || aLibName.IsEmpty())
    return 0;

  // load plugin library
  LibHandle anImportLib = LoadLib( aLibName.ToCString() );
  funcPoint fp = 0;

  if ( anImportLib )
#ifdef __BORLANDC__ // needs as explicit Borland value
    fp = (funcPoint)GetProc( anImportLib, "_Import" );
#else 
    fp = (funcPoint)GetProc( anImportLib, "Import" );
#endif

  if ( !fp ) {
	TCollection_AsciiString aMsg = aFormatName;
    aMsg += " plugin was not installed";
	Standard_Failure::Raise(aMsg.ToCString());
  }

  // perform the import
  TCollection_AsciiString anError;
  TopoDS_Shape aShape = fp( aFileName, aFormatName, anError, aFunction->GetEntry() );

  // unload plugin library
  //parakseni simperifora sto unload ... :(
  //UnLoadLib( anImportLib );

  if ( aShape.IsNull() ) {
    StdFail_NotDone::Raise(anError.ToCString());
    return 0;
  }

  // set the function result
  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_ImportDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_ImportDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_ImportDriver",
			                                 sizeof(GEOMImpl_ImportDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_ImportDriver) Handle(GEOMImpl_ImportDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_ImportDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_ImportDriver))) {
       _anOtherObject = Handle(GEOMImpl_ImportDriver)((Handle(GEOMImpl_ImportDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
