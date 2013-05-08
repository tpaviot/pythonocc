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
// File: ExchangeOBJ_Export.cpp
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

#include <Interface_Static.hxx>

#ifdef WNT
#define SALOME_WNT_EXPORT __declspec(dllexport)
#else
#define SALOME_WNT_EXPORT
#endif

#define DEFAULT_DEVIATION 10

#define UOrigin 0.
#define VOrigin 0.

#define URepeat 1.
#define VRepeat 1.

#define ScaleU 1.
#define ScaleV 1.

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
    MESSAGE("Export OBJ into file " << theFileName.ToCString());

    std::ofstream fout(theFileName.ToCString());

    Standard_Real Umin, Umax, Vmin, Vmax, dUmax, dVmax;
    TopExp_Explorer ExpFace;
    StdPrs_ToolShadedShape SST;

    //Triangulate
    BRepMesh::Mesh(theShape, DEFAULT_DEVIATION);

    Standard_Integer ShapeId = 1;

    Standard_Integer baseV = 0;
    Standard_Integer baseN = 0;
    Standard_Integer baseT = 0;

    for(ExpFace.Init(theShape, TopAbs_FACE); ExpFace.More(); ExpFace.Next()) {

      TopoDS_Face myFace = TopoDS::Face(ExpFace.Current());
      TopLoc_Location aLocation;

      Handle(Poly_Triangulation) myT = BRep_Tool::Triangulation(myFace, aLocation);

      if (!myT.IsNull()) {

        Poly_Connect pc(myT);

        //write vertex buffer
        const TColgp_Array1OfPnt& Nodes = myT->Nodes();
        for (int i = Nodes.Lower(); i <= Nodes.Upper();i++) {
          gp_Pnt p = Nodes(i).Transformed(aLocation.Transformation());
          fout << "v " << p.X() << " " << p.Y() << " " << p.Z() << std::endl;
        }
        fout << std::endl;

        //write normal buffer
        TColgp_Array1OfDir myNormal(Nodes.Lower(), Nodes.Upper());
        SST.Normal(myFace, pc, myNormal);
        //myNormal.Length();
        for (int i = myNormal.Lower(); i <= myNormal.Upper();i++) {
          gp_Dir d = myNormal(i).Transformed(aLocation.Transformation());
          fout << "vn " << d.X() << " " << d.Y() << " " << d.Z() << std::endl;
        }
        fout << std::endl;

        //write uvcoord buffer
        BRepTools::UVBounds(myFace,Umin, Umax, Vmin, Vmax);
        dUmax = (Umax - Umin);
        dVmax = (Vmax - Vmin);
        const TColgp_Array1OfPnt2d& UVNodes = myT->UVNodes();
        for (int i = UVNodes.Lower(); i <= UVNodes.Upper();i++) {
          gp_Pnt2d d = UVNodes(i);

          Standard_Real u = (-UOrigin+(URepeat*(d.X()-Umin))/dUmax)/ScaleU;
          Standard_Real v = (-VOrigin+(VRepeat*(d.Y()-Vmin))/dVmax)/ScaleV;

          fout << "vt " << u << " " << v << " 0" << std::endl;
        }
        fout << std::endl;

        //write triangle buffer
        if (Interface_Static::IVal("write.obj.groups"))
          fout << "g face_" << ShapeId++ << std::endl;

        Standard_Integer n1 , n2 , n3;
        const Poly_Array1OfTriangle& triangles = myT->Triangles();

        for (int nt = 1; nt <= myT->NbTriangles(); nt++) {
          if (SST.Orientation(myFace) == TopAbs_REVERSED)
            triangles(nt).Get(n1,n3,n2);
          else
            triangles(nt).Get(n1,n2,n3);
          if (TriangleIsValid (Nodes(n1),Nodes(n2),Nodes(n3)) ) {
    
            fout << "f " <<n1 + baseV<<"/"<<n1 + baseT<<"/"<<n1 + baseN<<" "
                         <<n2 + baseV<<"/"<<n2 + baseT<<"/"<<n2 + baseN<<" "
                         <<n3 + baseV<<"/"<<n3 + baseT<<"/"<<n3 + baseN<<" "
                         <<std::endl;
          }
        }
        fout << std::endl;

        baseV += Nodes.Length();
        baseN += myNormal.Length();
        baseT += UVNodes.Length();
      }
    }

    fout << std::flush;
    fout.close();

    return 1;
  }
}
