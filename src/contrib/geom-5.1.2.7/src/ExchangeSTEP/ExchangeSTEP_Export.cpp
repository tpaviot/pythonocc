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
// File:	STEPExport.cxx
// Created:	Wed May 19 14:53:52 2004
// Author:	Pavel TELKOV
//		<ptv@mutex.nnov.opencascade.com>

#include "utilities.h"

#include <IFSelect_ReturnStatus.hxx>

#include <STEPControl_Writer.hxx>

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
  int Export(const TopoDS_Shape& theShape,
             const TCollection_AsciiString& theFileName,
             const TCollection_AsciiString& /*theFormatName*/)
  {
    MESSAGE("Export STEP into file " << theFileName.ToCString());

  try 
    {
      IFSelect_ReturnStatus status ;
      //VRV: OCC 4.0 migration
      STEPControl_Writer aWriter;
//JFA: PAL6162      status = aWriter.Transfer( theShape, STEPControl_ManifoldSolidBrep );
      status = aWriter.Transfer( theShape, STEPControl_AsIs );
      //VRV: OCC 4.0 migration
      if ( status == IFSelect_RetDone ) 
	  status = aWriter.Write( theFileName.ToCString() ) ;
      if ( status == IFSelect_RetDone ) 
	return 1;
	}
  catch(Standard_Failure) {
	  Standard_Failure::Raise("Could not export in STEP format");
	}
  return 0;
  }
}
