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
// File:	CsfdbImport.cxx
// Author:	Sioutis Fotis

#include "utilities.h"

#include <BRep_Builder.hxx>

#include <FSD_File.hxx>
#include <ShapeSchema.hxx>
#include <Storage_HSeqOfRoot.hxx>
#include <Storage_Root.hxx>
#include <PTopoDS_HShape.hxx>
#include <PTColStd_PersistentTransientMap.hxx>
#include <MgtBRep.hxx>
#include <TCollection_ExtendedString.hxx>
#include <TColStd_SequenceOfAsciiString.hxx>
#include <TColStd_SequenceOfExtendedString.hxx>

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
  TopoDS_Shape ImportCSFDB (const TCollection_AsciiString& theFileName,
                       const TCollection_AsciiString& theFormatName,
                       TCollection_AsciiString&       theError,
                       const TDF_Label&               theLabel)
  {
	MESSAGE("Import CSFDB assembly from file " << theFileName.ToCString());

	TopoDS_Shape aResShape;

	TopoDS_Compound compound;
	BRep_Builder B;
	B.MakeCompound( compound );

	try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
		OCC_CATCH_SIGNALS;
#endif
		if ( FSD_File::IsGoodFileType(theFileName) != Storage_VSOk )
			return aResShape;

		FSD_File fileDriver;

		if ( fileDriver.Open( theFileName, Storage_VSRead ) != Storage_VSOk )
		{
			theError = "CSFDB:Incompatible CSFDB file detected";
			return aResShape; //already NULL here
		}

		Handle(ShapeSchema)		schema 	= new ShapeSchema();
		Handle(Storage_Data) 	data  	= schema->Read( fileDriver );

		if ( data->ErrorStatus() != Storage_VSOk )
		{
			theError = "CSFDB:Incompatible CSFDB file detected";
			return aResShape; //already NULL here
		}
		fileDriver.Close();

		MESSAGE("CSFDB:Application Name: " << data->ApplicationName());
		MESSAGE("CSFDB:Application Version: " << data->ApplicationVersion());
		MESSAGE("CSFDB:Data Type: " << data->DataType() );

		const TColStd_SequenceOfAsciiString& UserInfo = data->UserInfo();
		for (int i=1;i<=UserInfo.Length();i++)
			MESSAGE("CSFDB:User Info: line " << i << " :" << UserInfo(i));

		const TColStd_SequenceOfExtendedString& Comments=data->Comments();
		for (int i=1;i<=Comments.Length();i++)
			MESSAGE("CSFDB:Comments: line " << i << " :" << Comments(i));

		Handle(Storage_HSeqOfRoot) roots = data->Roots();
		for ( int i = 1; i <= roots->Length() ; i++ )
		{
			Handle(Storage_Root) r = roots->Value( i );
			Handle(Standard_Persistent) p = r->Object();

			MESSAGE("CSFDB:Obj:" << i << ":Name:" << r->Name());
			MESSAGE("CSFDB:Obj:" << i << ":Type:" << r->Type());

			Handle(PTopoDS_HShape) aPShape = Handle(PTopoDS_HShape)::DownCast(p);
			if ( !aPShape.IsNull() )
			{
				PTColStd_PersistentTransientMap aMap;
				TopoDS_Shape aTShape;
				MgtBRep::Translate( aPShape, aMap, aTShape, MgtBRep_WithTriangle );
				B.Add(compound, aTShape);
			}
		}
		MESSAGE("CSFDB:INFO:Assembly merged into one compound");
		aResShape = compound;
	}
	catch (Standard_Failure) {
	  Handle(Standard_Failure) aFail = Standard_Failure::Caught();
	  theError = aFail->GetMessageString();
	  aResShape.Nullify();
	}
	return aResShape;
  }
}
