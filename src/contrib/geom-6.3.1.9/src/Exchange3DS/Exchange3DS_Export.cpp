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
// File: Exchange3DS_Export.cpp
// Author: Fotis Sioutis

#include "utilities.h"

#include <TCollection_AsciiString.hxx>
#include <TopoDS_Shape.hxx>

#include <StdPrs_ToolShadedShape.hxx>
#include <BRepMesh.hxx>
#include <Poly_Connect.hxx>
#include <TColgp_Array1OfPnt.hxx>
#include <Poly_Triangulation.hxx>
#include <TColgp_Array1OfDir.hxx>
#include <BRepTools.hxx>
#include <TColgp_Array1OfPnt2d.hxx>
#include <Graphic3d_MaterialAspect.hxx>

#ifndef INCLUDED_LIB3DS_FILE_H
#include <lib3ds/file.h>
#endif
#ifndef INCLUDED_LIB3DS_MESH_H
#include <lib3ds/mesh.h>
#endif
#include <lib3ds/vector.h>
#include <lib3ds/light.h>
#include <lib3ds/camera.h>
#include <lib3ds/material.h>

#ifdef WNT
#define SALOME_WNT_EXPORT __declspec(dllexport)
#else
#define SALOME_WNT_EXPORT
#endif

#define DEFAULT_DEVIATION 10

#define UOrigin 0
#define VOrigin 0

#define URepeat 0
#define VRepeat 0

#define ScaleU 0
#define ScaleV 0

//=============================================================================
/*!
 *  TriangleIsValid
 */
//=============================================================================

static Standard_Boolean TriangleIsValid(const gp_Pnt& P1, const gp_Pnt& P2, const gp_Pnt& P3)
{
  gp_Vec V1(P1,P2);
  gp_Vec V2(P2,P3);
  gp_Vec V3(P3,P1);

  if ((V1.SquareMagnitude() > 1.e-10) && (V2.SquareMagnitude() > 1.e-10) && (V3.SquareMagnitude() > 1.e-10)) {
    V1.Cross(V2);
    if (V1.SquareMagnitude() > 1.e-10)
      return Standard_True;
    else
      return Standard_False;
  }
  else
    return Standard_False;
}

//=============================================================================
/*!
 *  Export
 */
//=============================================================================

extern "C"
{
  SALOME_WNT_EXPORT
  int Export( const TopoDS_Shape& theShape,
              const TCollection_AsciiString& theFileName,
              const TCollection_AsciiString& theFormatName)
  {
    MESSAGE("Export 3DS into file " << theFileName.ToCString());

    Lib3dsFile* the3dsFile = lib3ds_file_new();

    Lib3dsMaterial* theDefaultMaterial = lib3ds_material_new();

    Graphic3d_MaterialAspect mat(Graphic3d_NOM_GOLD);
    theDefaultMaterial->ambient[0] = (float)mat.AmbientColor().Red();
    theDefaultMaterial->ambient[1] = (float)mat.AmbientColor().Green();
    theDefaultMaterial->ambient[2] = (float)mat.AmbientColor().Blue();
    theDefaultMaterial->diffuse[0] = (float)mat.DiffuseColor().Red();
    theDefaultMaterial->diffuse[1] = (float)mat.DiffuseColor().Green();
    theDefaultMaterial->diffuse[2] = (float)mat.DiffuseColor().Blue();
    theDefaultMaterial->specular[0] = (float)mat.SpecularColor().Red();
    theDefaultMaterial->specular[1] = (float)mat.SpecularColor().Green();
    theDefaultMaterial->specular[2] = (float)mat.SpecularColor().Blue();
    theDefaultMaterial->shininess = (float)mat.Shininess();
    theDefaultMaterial->shin_strength = (float)mat.Specular();
    theDefaultMaterial->transparency = (float)mat.Transparency();
    strcpy(theDefaultMaterial->name,"material");

    lib3ds_file_insert_material(the3dsFile,theDefaultMaterial);

    Standard_Real Umin, Umax, Vmin, Vmax, dUmax, dVmax;
    TopExp_Explorer ExpFace;
    StdPrs_ToolShadedShape SST;

    //Triangulate
    BRepMesh::Mesh(theShape, DEFAULT_DEVIATION);

    for(ExpFace.Init(theShape, TopAbs_FACE); ExpFace.More(); ExpFace.Next()) {

      TopoDS_Face myFace = TopoDS::Face(ExpFace.Current());
      TopLoc_Location aLocation;

      Handle(Poly_Triangulation) myT = BRep_Tool::Triangulation(myFace, aLocation);

      if (!myT.IsNull()) {

        Poly_Connect pc(myT);
        Lib3dsMesh* the3dsMesh = lib3ds_mesh_new("FACE");

        //write vertex buffer
        const TColgp_Array1OfPnt& Nodes = myT->Nodes();
        lib3ds_mesh_new_point_list(the3dsMesh, Nodes.Length());
        for (int i = Nodes.Lower(); i <= Nodes.Upper();i++) {
          gp_Pnt p = Nodes(i).Transformed(aLocation.Transformation());
          the3dsMesh->pointL[i-1].pos[0]= ((float)p.X());
          the3dsMesh->pointL[i-1].pos[1]= ((float)p.Y());
          the3dsMesh->pointL[i-1].pos[2]= ((float)p.Z());
        }

        /*
        //NO NORMALS IN 3DS FILE !!!!!!!!!!!!!!!!!
        //WHY ON EARTH ??????
        //write normal buffer
        TColgp_Array1OfDir myNormal(Nodes.Lower(), Nodes.Upper());
        SST.Normal(myFace, pc, myNormal);
        //myNormal.Length(); //ADD TO 3DSLIB
        for (int i = myNormal.Lower(); i <= myNormal.Upper();i++) {
          gp_Dir d = myNormal(i).Transformed(aLocation.Transformation());
          d.X(); //ADD TO 3DSLIB
          d.Y(); //ADD TO 3DSLIB
          d.Z(); //ADD TO 3DSLIB
        }
        */

        /*
        //write uvcoord buffer
        BRepTools::UVBounds(myFace,Umin, Umax, Vmin, Vmax);
        dUmax = (Umax - Umin);
        dVmax = (Vmax - Vmin);
        const TColgp_Array1OfPnt2d& UVNodes = myT->UVNodes();
        lib3ds_mesh_new_texel_list(the3dsMesh, UVNodes.Length());
        for (int i = UVNodes.Lower(); i <= UVNodes.Upper();i++) {
          gp_Pnt2d d = UVNodes(i);
          the3dsMesh->texelL [i-1] [0] = (-UOrigin+(URepeat*(d.X()-Umin))/dUmax)/ScaleU;
          the3dsMesh->texelL [i-1] [1] = (-VOrigin+(VRepeat*(d.Y()-Vmin))/dVmax)/ScaleV;
        }
        */

        //write triangle buffer
        Standard_Integer validFaceTriCount = 0;
        Standard_Integer n1 , n2 , n3;
        const Poly_Array1OfTriangle& triangles = myT->Triangles();
        lib3ds_mesh_new_face_list(the3dsMesh, triangles.Length());
        for (int nt = 1; nt <= myT->NbTriangles(); nt++) {
          if (SST.Orientation(myFace) == TopAbs_REVERSED)
            triangles(nt).Get(n1,n3,n2);
          else
            triangles(nt).Get(n1,n2,n3);
          if (TriangleIsValid (Nodes(n1),Nodes(n2),Nodes(n3)) ) {
            the3dsMesh->faceL[validFaceTriCount].points[0] = n1-1;
            the3dsMesh->faceL[validFaceTriCount].points[1] = n3-1;
            the3dsMesh->faceL[validFaceTriCount].points[2] = n2-1;
            the3dsMesh->faceL[validFaceTriCount].smoothing = 1;

            strcpy(the3dsMesh->faceL[validFaceTriCount].material,"material");

            validFaceTriCount++;
          }
        }
        //the3dsMesh->faces = validFaceTriCount;
        lib3ds_file_insert_mesh(the3dsFile,the3dsMesh);
      }
    }

    //Quantity_Color theBackgroundColor = aSceneToWrite->Background();
    the3dsFile->background.solid.col[0] = 0.;
    the3dsFile->background.solid.col[1] = 0.;
    the3dsFile->background.solid.col[2] = 0.;
    the3dsFile->background.solid.use = LIB3DS_TRUE;

    //cameras
    Lib3dsCamera* theCamera = lib3ds_camera_new("Camera");
    theCamera->position[0] = 0;
    theCamera->position[1] = 0;
    theCamera->position[2] = 0;

    theCamera->target[0] = 100;
    theCamera->target[1] = 100;
    theCamera->target[2] = 100;

    theCamera->roll = (float)(60. * 180 / Standard_PI );

    theCamera->fov = (float)(0.4 * 180 / Standard_PI );

    lib3ds_file_insert_camera(the3dsFile,theCamera);

    lib3ds_file_save(the3dsFile, theFileName.ToCString());
    lib3ds_file_free(the3dsFile);

    return 1;
  }
}
