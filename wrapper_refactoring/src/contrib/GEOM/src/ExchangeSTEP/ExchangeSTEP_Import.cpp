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
// File:	STEPImport.cxx
// Created:	Wed May 19 14:41:10 2004
// Author:	Pavel TELKOV
//		<ptv@mutex.nnov.opencascade.com>

#include "utilities.h"

#include <BRep_Builder.hxx>

#include <IFSelect_ReturnStatus.hxx>
#include <Interface_Static.hxx>

#include <STEPControl_Reader.hxx>

#include <TCollection_AsciiString.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Shape.hxx>

#include <TDF_Label.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

#ifdef WNT
#define SALOME_WNT_EXPORT __declspec(dllexport)
#else
#define SALOME_WNT_EXPORT
#endif

//=============================================================================
/*!
 *  Import()
 */
//=============================================================================

extern "C"
{
SALOME_WNT_EXPORT
  TopoDS_Shape ImportSTEP (const TCollection_AsciiString& theFileName,
                       const TCollection_AsciiString& theFormatName,
                       TCollection_AsciiString&       theError,
                       const TDF_Label&               theLabel)
  {
    MESSAGE("Import STEP model from file " << theFileName.ToCString());
    TopoDS_Shape aResShape;
    //VRV: OCC 4.0 migration
    STEPControl_Reader aReader;

    Interface_Static::SetCVal("xstep.cascade.unit","M");
    //VRV: OCC 4.0 migration
    TopoDS_Compound compound;
    BRep_Builder B;
    B.MakeCompound( compound );
    try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
      OCC_CATCH_SIGNALS;
#endif
      IFSelect_ReturnStatus status = aReader.ReadFile(theFileName.ToCString());

      if (status == IFSelect_RetDone) {
	Standard_Boolean failsonly = Standard_False ;
	aReader.PrintCheckLoad (failsonly, IFSelect_ItemsByEntity);
	/* Root transfers */
	Standard_Integer nbr = aReader.NbRootsForTransfer();
	aReader.PrintCheckTransfer (failsonly, IFSelect_ItemsByEntity);

	for ( Standard_Integer n=1; n <= nbr; n++) {
	  Standard_Boolean ok = aReader.TransferRoot(n);
	  /* Collecting resulting entities */
	  Standard_Integer nbs = aReader.NbShapes();
	  if (!ok || nbs == 0)
	  {
		MESSAGE("At least one shape in STEP cannot be transfered");
	    continue; // skip empty root
	  }
	  /* For a single entity */
	  else if (nbr == 1 && nbs == 1) {
	    aResShape = aReader.Shape(1);
	    break;
	  }

	  for ( Standard_Integer i=1; i<=nbs; i++ ) {
		TopoDS_Shape aShape = aReader.Shape(i);
		if ( aShape.IsNull() ) {
		  MESSAGE("At least one shape in STEP cannot be transfered");
	      continue;
	    }
	    else {
	      B.Add( compound, aShape ) ;
	    }
	  }
	}
	if ( aResShape.IsNull() )
	  aResShape = compound;

      } else {
//        switch (status) {
//        case IFSelect_RetVoid:
//          theError = "Nothing created or No data to process";
//          break;
//        case IFSelect_RetError:
//          theError = "Error in command or input data";
//          break;
//        case IFSelect_RetFail:
//          theError = "Execution was run, but has failed";
//          break;
//        case IFSelect_RetStop:
//          theError = "Execution has been stopped. Quite possible, an exception was raised";
//          break;
//        default:
//          break;
//        }
        theError = "Wrong format of the imported file. Can't import file.";
	aResShape.Nullify();
      }
    }
    catch (Standard_Failure) {
      Handle(Standard_Failure) aFail = Standard_Failure::Caught();
      theError = aFail->GetMessageString();
      aResShape.Nullify();
    }
    return aResShape;
  }
}
