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
// File: Exchange3DS_Import.cpp
// Author: Fotis Sioutis

#include "utilities.h"

#include <Precision.hxx>
#include <TCollection_AsciiString.hxx>

#include <gp_Vec.hxx>

#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Compound.hxx>

#include <BRep_Builder.hxx>

#include <BRepBuilderAPI_Sewing.hxx>
#include <BRepBuilderAPI_MakePolygon.hxx>
#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>

#include <TDF_Label.hxx>

#include <lib3ds/file.h>
#include <lib3ds/mesh.h>
#include <lib3ds/vector.h>
#include <lib3ds/light.h>
#include <lib3ds/camera.h>
#include <lib3ds/material.h>

#ifdef WNT
#define SALOME_WNT_EXPORT __declspec(dllexport)
#else
#define SALOME_WNT_EXPORT
#endif

#define SEW_TRIANGLES

//=============================================================================
/*!
 *
 */
//=============================================================================

extern "C"
{
SALOME_WNT_EXPORT

  TopoDS_Shape Import (const TCollection_AsciiString& theFileName,
                       const TCollection_AsciiString& theFormatName,
                       TCollection_AsciiString&       theError,
                       const TDF_Label&               theLabel)
  {
    MESSAGE("Import 3DS from file " << theFileName);

    TopoDS_Compound aShape;
    BRep_Builder BuildTool;
    BuildTool.MakeCompound( aShape );

    #ifdef SEW_TRIANGLES
    BRepBuilderAPI_Sewing aSewingTool;
    aSewingTool.Init(1.0e-06,Standard_True);
    #endif

    TopoDS_Vertex Vertex1, Vertex2, Vertex3;
    TopoDS_Face AktFace;
    TopoDS_Wire AktWire;

    Lib3dsFile* the3dsFile = lib3ds_file_load(theFileName.ToCString());
    Lib3dsMesh* theCurrent3dsMesh = NULL;
    Lib3dsWord w1,w2,w3;

    if ( the3dsFile ) {
      for (theCurrent3dsMesh=the3dsFile->meshes; theCurrent3dsMesh!=0; theCurrent3dsMesh=theCurrent3dsMesh->next) {
        TopoDS_Compound aComp;
        BuildTool.MakeCompound( aComp );
        for (unsigned i=0; i<theCurrent3dsMesh->faces; ++i) {
          w1 = theCurrent3dsMesh->faceL[i].points[0];
          w2 = theCurrent3dsMesh->faceL[i].points[1];
          w3 = theCurrent3dsMesh->faceL[i].points[2];

          gp_Pnt P1(theCurrent3dsMesh->pointL[w1].pos[0], theCurrent3dsMesh->pointL[w1].pos[1], theCurrent3dsMesh->pointL[w1].pos[2]);
          gp_Pnt P2(theCurrent3dsMesh->pointL[w2].pos[0], theCurrent3dsMesh->pointL[w2].pos[1], theCurrent3dsMesh->pointL[w2].pos[2]);
          gp_Pnt P3(theCurrent3dsMesh->pointL[w3].pos[0], theCurrent3dsMesh->pointL[w3].pos[1], theCurrent3dsMesh->pointL[w3].pos[2]);

          if ((!(P1.IsEqual(P2, Precision::Confusion()))) && (!(P1.IsEqual(P3, Precision::Confusion())))) {
            Vertex1 = BRepBuilderAPI_MakeVertex(P1);
            Vertex2 = BRepBuilderAPI_MakeVertex(P2);
            Vertex3 = BRepBuilderAPI_MakeVertex(P3);

            AktWire = BRepBuilderAPI_MakePolygon( Vertex1, Vertex2, Vertex3, Standard_True);

            if( !AktWire.IsNull()) {
              AktFace = BRepBuilderAPI_MakeFace(AktWire);
              if(!AktFace.IsNull())
                BuildTool.Add(aComp, AktFace);
            }
          }
        }
        #ifdef SEW_TRIANGLES
        aSewingTool.Load( aComp );
        aSewingTool.Perform();
        BuildTool.Add(aShape, aSewingTool.SewedShape());
        #else
        BuildTool.Add(aShape, aComp);
        #endif
      }
    }
    lib3ds_file_free(the3dsFile);

    if (aShape.IsNull())
      theError = "3DS Import failed";

    return aShape;
  }

}
