//  GEOM ARCHIMEDE : algorithm implementation
//
//  Copyright (C) 2003  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS 
// 
//  This library is free software; you can redistribute it and/or 
//  modify it under the terms of the GNU Lesser General Public 
//  License as published by the Free Software Foundation; either 
//  version 2.1 of the License. 
// 
//  This library is distributed in the hope that it will be useful, 
//  but WITHOUT ANY WARRANTY; without even the implied warranty of 
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
//  Lesser General Public License for more details. 
// 
//  You should have received a copy of the GNU Lesser General Public 
//  License along with this library; if not, write to the Free Software 
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA 
// 
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
//
//
//  File   : Archimede_VolumeSection.cxx
//  Author : Nicolas REJNERI
//  Module : GEOM
//  $Header: /home/server/cvs/GEOM/GEOM_SRC/src/ARCHIMEDE/Archimede_VolumeSection.cxx,v 1.10.2.1.6.1.8.1 2011-06-01 13:56:53 vsr Exp $
//
#include "Archimede_VolumeSection.hxx"

#include "utilities.h"

#include <BRepMesh_IncrementalMesh.hxx>
#include <TopExp_Explorer.hxx>
#include <TopLoc_Location.hxx>
#include <Poly_Triangulation.hxx>
#include <Poly_Array1OfTriangle.hxx>
#include <BRep_Tool.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Shape.hxx>
#include <math_Matrix.hxx>
#include <gp_Trsf.hxx>
#include <gp_Dir.hxx>
#include <gp_Ax1.hxx>
#include <gp_Pnt.hxx>

#include <GeomAPI_ProjectPointOnSurf.hxx>
#include <Geom_RectangularTrimmedSurface.hxx>

//------------------------------------------------------------------------------------------------------- 
//----------------------------------- Methodes publiques -------------------------------------------------
//------------------------------------------------------------------------------------------------------- 

//  Maillage de la shape
VolumeSection::VolumeSection(TopoDS_Shape S , Standard_Real Precision):myShape(S),Tolerance(Precision)
{
  // Maillage de la shape myShape
  BRepMesh_IncrementalMesh(myShape,Tolerance);
}

TopoDS_Shape VolumeSection::GetShape()
{
  return myShape;
}

void VolumeSection::SetPlane(Handle (Geom_Plane) P)
{
  myPlane = P;
}

void VolumeSection::CenterOfGravity()
{
  Standard_Integer i;
  Standard_Integer nbNodes;
  TopExp_Explorer ex;
  TopLoc_Location L;
  
  // Boucle sur les faces de la shape
  
  Xmin = 1000000000;
  Ymin = 1000000000;
  Zmin = 1000000000;
  Xmax = -1000000000;
  Ymax = -1000000000;
  Zmax = -1000000000;
  
  for (ex.Init(myShape, TopAbs_FACE); ex.More(); ex.Next()) 
    {
      TopoDS_Face F = TopoDS::Face(ex.Current());
      Handle(Poly_Triangulation) Tr = BRep_Tool::Triangulation(F, L);
      if(Tr.IsNull())
	MESSAGE("Error, null layer" )
      nbNodes = Tr->NbNodes();
      const TColgp_Array1OfPnt& Nodes = Tr->Nodes();
      
      // Calcul des dimensions de la boite englobante du solide
      
      for(i=1;i<=nbNodes;i++)
	{
	  InitPoint = Nodes(i).Transformed(L.Transformation());
	  if(InitPoint.X() < Xmin)
	    Xmin = InitPoint.X();
	  if(InitPoint.X() > Xmax)
	    Xmax = InitPoint.X();
	  if(InitPoint.Y() < Ymin)
	    Ymin = InitPoint.Y();
	  if(InitPoint.Y() > Ymax)
	    Ymax = InitPoint.Y();
	  if(InitPoint.Z() < Zmin)
	    Zmin = InitPoint.Z();
	  if(InitPoint.Z() > Zmax)
	    Zmax = InitPoint.Z();
	  
	}
    }
  
  // Creation du point d'initialisation, c'est € dire le centre de gravit‰ 
  //g‰om‰trique de la boite englobante
  
  InitPoint.SetX(0.5 * (Xmin + Xmax));
  InitPoint.SetY(0.5 * (Ymin + Ymax));
  InitPoint.SetZ(0);
}

Standard_Real VolumeSection::CalculateVolume(Standard_Real Elevation)
{
  Standard_Integer i,noeud[3],flag[3];
  Standard_Integer nbNodes;
  TopExp_Explorer ex;
  TopLoc_Location L;
  Standard_Real z[3];
  Standard_Real Volume=0;
  Standard_Real Determinant=0;
  gp_Pnt P[3];
  
  // Projection du point d'initialisation sur le plan de section
  
  InitPoint.SetZ(Elevation);

  for (ex.Init(myShape, TopAbs_FACE); ex.More(); ex.Next()) 
    {
      TopoDS_Face F = TopoDS::Face(ex.Current());
      Handle(Poly_Triangulation) Tr = BRep_Tool::Triangulation(F, L);
      if(Tr.IsNull())
	MESSAGE("Error, null layer" )
      const Poly_Array1OfTriangle& triangles = Tr->Triangles();
      Standard_Integer nbTriangles = Tr->NbTriangles();
      nbNodes = Tr->NbNodes();
      const TColgp_Array1OfPnt& Nodes = Tr->Nodes();
      
      // Calcul des volumes de chaque triangle, de chaque face 
      //en tenant compte des triangles coup‰s par le plan de section
      
      for (i=1;i<=nbTriangles;i++) 
	{
	  Determinant=0;
	  //Gardons la meme orientation des noeuds
	  if (F.Orientation()  == TopAbs_REVERSED)
	    triangles(i).Get(noeud[0], noeud[2], noeud[1]);
	  else 
	    triangles(i).Get(noeud[0], noeud[1], noeud[2]);
	  
          P[0] = Nodes(noeud[0]).Transformed(L.Transformation());
	  z[0] = P[0].Z();
	  P[1] = Nodes(noeud[1]).Transformed(L.Transformation());
	  z[1] = P[1].Z();
          P[2] = Nodes(noeud[2]).Transformed(L.Transformation());
          z[2] = P[2].Z();

	  // Determination des cas aux limites pour les triangles
	  Standard_Integer i,compteur=0;

	  for (i=0;i<=2;i++)
	    {
              flag[i]=Standard_False;
	      if(z[i]>=Elevation)
		{
		  flag[i]=Standard_True;
		  compteur++;
		}
	    }
	  
	  switch(compteur)
	    {
	    case 0:
	      Determinant = ElementaryVolume(P[0],P[1],P[2]);
	      break;
	      
	    case 1:
	      for (i=0;i<=2;i++)
		{
		  if (flag[i]==Standard_True)
		    {
		      gp_Pnt Result1 = Intersection(P[i],P[(i+1)%3],Elevation);
		      gp_Pnt Result2 = Intersection(P[i],P[(i+2)%3],Elevation);
		      Determinant = ElementaryVolume(Result1,P[(i+1)%3],P[(i+2)%3])
			+ ElementaryVolume(Result1,P[(i+2)%3],Result2);
		    }
		}
	      break;
	      
	    case 2:
	      for (i=0;i<=2;i++)
		{
		  if (flag[i]==Standard_False)
		    {
		      gp_Pnt Result1 = Intersection(P[i],P[(i+1)%3],Elevation);
		      gp_Pnt Result2 = Intersection(P[i],P[(i+2)%3],Elevation);
		      Determinant = ElementaryVolume(P[i],Result1,Result2);
		    }
		}
	      break;
	      
	    case 3:
	      break;
	    }
	  Volume += Determinant;
	}
    }
  
  return Volume;
}

Standard_Real VolumeSection::Archimede(Standard_Real Constante , Standard_Real Epsilon)
{
  // Resolution de l equation V(h) = Constante a l aide de l algorithme de dichotomie avec ponderation type
  // Lagrange
  
  Standard_Real c,Binf,Bsup;
  Standard_Real tempBsupVolume=0;
  Standard_Real tempBinfVolume=0;
  Standard_Real tempCVolume = 0;

  Binf = Zmin;
  Bsup = Zmax;
  if(Binf>Bsup)
    {
      MESSAGE("error, Bound + < Bound - in dichotomy")
      return -1;
    }
  tempBsupVolume = CalculateVolume(Bsup);
  tempBinfVolume = CalculateVolume(Binf);
  
  if (Constante>tempBsupVolume || Constante<tempBinfVolume)
    {
      MESSAGE("error, algorithm start Impossible. Wrong constant value" )
      return -1;
    }
  
  c = ((Binf*(tempBsupVolume-Constante))-(Bsup*(tempBinfVolume-Constante)))
    /((tempBsupVolume-Constante)-(tempBinfVolume-Constante));
  tempCVolume = CalculateVolume(c);
  
  
  if(Abs(tempCVolume-Constante)<=Epsilon)
    {
      goto endMethod;
    }
  else
    {
      while((Bsup-Binf)>Epsilon)
	{ 
	  if((tempBinfVolume-Constante)*(tempCVolume-Constante)>0 && Abs(tempCVolume-Constante)>Epsilon)
	    {
	      Binf = c;
	      tempBinfVolume=tempCVolume;
	      
	      c = ((Binf*(tempBsupVolume-Constante))-(Bsup*(tempBinfVolume-Constante)))
		/((tempBsupVolume-Constante)-(tempBinfVolume-Constante));
 tempCVolume=CalculateVolume(c);
	    }
	  else if((tempBinfVolume-Constante)*(tempCVolume-Constante)<0 && Abs(tempCVolume-Constante)>Epsilon)
	    {
	      Bsup = c;
	      tempBsupVolume =tempCVolume;

	      c = ((Binf*(tempBsupVolume-Constante))-(Bsup*(tempBinfVolume-Constante)))
		/((tempBsupVolume-Constante)-(tempBinfVolume-Constante));
 tempCVolume=CalculateVolume(c);
	    }
	  else
	    {
	      goto endMethod;
	    }
	}
	  goto endMethod;

	}
 endMethod:
  MESSAGE("The waterline corresponding constant: "<<Constante<<" is on Z = "<<c)

  return c;
}

void VolumeSection::MakeRotation(gp_Dir PlaneDirection)
{
  gp_Dir Zdirection(0.0,0.0,1.0);
  Standard_Real VariationAngle = 0;
  gp_Pnt RotationAxeLocation(0.0,0.0,0.0);
  gp_Dir RotationAxeDirection(1.0,1.0,1.0);
  gp_Ax1 RotationAxe(RotationAxeLocation,RotationAxeDirection);
  gp_Trsf Transformation;
  
  VariationAngle = Zdirection.Angle(PlaneDirection);
  RotationAxe.SetDirection(PlaneDirection.Crossed(Zdirection));
  Transformation.SetRotation(RotationAxe,VariationAngle);
  TopLoc_Location L(Transformation);
  myShape.Move(L);
  myPlane->Transform(Transformation);
}

Handle (Geom_RectangularTrimmedSurface) VolumeSection::TrimSurf()
{
  Standard_Real Umin,Umax,Vmin,Vmax;
  gp_Pnt Pmin(Xmin,Ymin,Zmin);
  GeomAPI_ProjectPointOnSurf Projection(Pmin,myPlane);
  Projection.Parameters(1,Umin,Vmin);
  gp_Pnt Pmax(Xmax,Ymax,Zmax);
  GeomAPI_ProjectPointOnSurf Projection2(Pmax,myPlane);
  Projection2.Parameters(1,Umax,Vmax);
  Handle (Geom_RectangularTrimmedSurface) Plane = new Geom_RectangularTrimmedSurface(myPlane,Umin,Umax,Vmin,Vmax);
  return Plane;
}

Handle (Geom_RectangularTrimmedSurface) VolumeSection::InvMakeRotation(gp_Dir PlaneDirection, Handle (Geom_RectangularTrimmedSurface) SurfTrim)
{
  gp_Dir Zdirection(0.0,0.0,1.0);
  Standard_Real VariationAngle = 0;
  gp_Pnt RotationAxeLocation(0.0,0.0,0.0);
  gp_Dir RotationAxeDirection(1.0,1.0,1.0);
  gp_Ax1 RotationAxe(RotationAxeLocation,RotationAxeDirection);
  gp_Trsf Transformation;

  VariationAngle = Zdirection.Angle(PlaneDirection);
  RotationAxe.SetDirection(PlaneDirection.Crossed(Zdirection));
  Transformation.SetRotation(RotationAxe,-VariationAngle);
  SurfTrim->Transform(Transformation);
  TopLoc_Location L(Transformation);
  myShape.Move(L);
  
  return SurfTrim;
}

Handle (Geom_RectangularTrimmedSurface) VolumeSection::AjustePlan(Handle (Geom_RectangularTrimmedSurface) SurfTrim, Standard_Real Cote, gp_Pnt PosPlan)
{
  gp_Trsf Transformation;
  gp_Pnt PosArchi(PosPlan.X(),PosPlan.Y(),Cote);
  
  Transformation.SetTranslation(PosPlan,PosArchi);
  SurfTrim->Transform(Transformation);
  
  return SurfTrim;
      
}

//------------------------------------------------------------------------------------------------------- 
//----------------------------------- Methodes privees ---------------------------------------------------
//------------------------------------------------------------------------------------------------------- 


 //Fonction calculant l'intersection de la droite passant par les points P1 et P2 
//avec le plan horizontal Z=Hauteur
gp_Pnt VolumeSection::Intersection(gp_Pnt P1,gp_Pnt P2,Standard_Real Hauteur)
{
  Standard_Real constante;
  gp_Pnt Point;

  constante = (Hauteur-P1.Z())/(P2.Z()-P1.Z());
  Point.SetX(P1.X()*(1-constante) + constante*P2.X());
  Point.SetY(P1.Y()*(1-constante) + constante*P2.Y());
  Point.SetZ(Hauteur);
  
  return Point;
}

//Fonction calculant le volume ‰l‰mentaire de chaque t‰traedre € partir de 3 points
Standard_Real VolumeSection::ElementaryVolume(gp_Pnt P1,gp_Pnt P2,gp_Pnt P3)
{
  Standard_Real Determinant;
  
  math_Matrix M(1,3,1,3);
  
  M(1,1)=P1.X()-InitPoint.X();
  M(1,2)=P2.X()-InitPoint.X();
  M(1,3)=P3.X()-InitPoint.X();
  M(2,1)=P1.Y()-InitPoint.Y();
  M(2,2)=P2.Y()-InitPoint.Y();
  M(2,3)=P3.Y()-InitPoint.Y();
  M(3,1)=P1.Z()-InitPoint.Z();
  M(3,2)=P2.Z()-InitPoint.Z();
  M(3,3)=P3.Z()-InitPoint.Z();
  
  Determinant = (1.0/6) * M.Determinant();

  return Determinant;
}

void VolumeSection::getZ( double& min, double& max)
{
  min = Zmin;
  max = Zmax;
}

