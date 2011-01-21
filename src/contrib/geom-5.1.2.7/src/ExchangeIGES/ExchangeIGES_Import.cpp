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
// File:	IGESImport.cxx
// Created:	Wed May 19 14:36:35 2004
// Author:	Pavel TELKOV
//		<ptv@mutex.nnov.opencascade.com>

#include "utilities.h"

#include <IFSelect_ReturnStatus.hxx>
#include <IGESControl_Reader.hxx>

#include <TCollection_AsciiString.hxx>
#include <TopoDS_Shape.hxx>

#ifdef WNT
#define SALOME_WNT_EXPORT __declspec(dllexport)
#else
#define SALOME_WNT_EXPORT
#endif

//=============================================================================
/*!
 *
 */
//=============================================================================

extern "C"
{
SALOME_WNT_EXPORT
  TopoDS_Shape Import (const TCollection_AsciiString& theFileName,
                       const TCollection_AsciiString& /*theFormatName*/,
                       TCollection_AsciiString&       theError)
  {
    IGESControl_Reader aReader;
    TopoDS_Shape aResShape;
    try {
      IFSelect_ReturnStatus status = aReader.ReadFile(theFileName.ToCString());

      if (status == IFSelect_RetDone) {
        MESSAGE("ImportIGES : all Geometry Transfer");
        //OCC 5.1.2 porting
        //     aReader.Clear();
        //     aReader.TransferRoots(false);
        aReader.ClearShapes();
        aReader.TransferRoots();

        MESSAGE("ImportIGES : count of shapes produced = " << aReader.NbShapes());
        aResShape = aReader.OneShape();

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
    catch(Standard_Failure) {
      Handle(Standard_Failure) aFail = Standard_Failure::Caught();
      theError = aFail->GetMessageString();
      aResShape.Nullify();
    }
    return aResShape;
  }
}
