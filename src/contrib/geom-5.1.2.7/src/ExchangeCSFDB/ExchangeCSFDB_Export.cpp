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
// File:	CsfdbExport.cxx
// Author:	Sioutis Fotis

#include "utilities.h"

#include <FSD_File.hxx>
#include <ShapeSchema.hxx>
#include <TCollection_ExtendedString.hxx>
#include <PTColStd_TransientPersistentMap.hxx>
#include <PTopoDS_HShape.hxx>
#include <MgtBRep.hxx>

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
	MESSAGE("Export CSFDB into file " << theFileName.ToCString());

	try
	{
		if ( theShape.IsNull() )
			return 0;

		FSD_File f;

		Handle(ShapeSchema) 	s = new ShapeSchema;
		Handle(Storage_Data) 	d = new Storage_Data;

		d->ClearErrorStatus();

		d->SetApplicationName("GEOM CSFDB PLUGIN");
		d->SetApplicationVersion("3.2.6");
		d->SetDataType("Shapes");
		d->AddToUserInfo("Saved from GEOM CSFDB Plugin");
		d->AddToComments("Based on GEOM 3.2.6 and Open CAS.CADE 6.2");

		Storage_Error err = f.Open(theFileName, Storage_VSWrite);

		if ( err != Storage_VSOk )
			return 0;

		PTColStd_TransientPersistentMap aMap;
		TCollection_AsciiString anObjectName("Object");

		Handle(PTopoDS_HShape) aPShape = MgtBRep::Translate(theShape, aMap, MgtBRep_WithTriangle);

		d->AddRoot(anObjectName, aPShape);
		s->Write( f, d);

		f.Close();

		if ( d->ErrorStatus() != Storage_VSOk )
			return 0;

		return 1;
    }
	catch(Standard_Failure)
    {
      Standard_Failure::Raise("Could not export in CSFDB format");
    }
	return 0;
  }
}
