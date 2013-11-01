//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
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
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
// File:      BlockFix_PeriodicSurfaceModifier.cxx
// Created:   15.12.04 10:08:50
// Author:    Sergey KUUL
//
#include <BlockFix_PeriodicSurfaceModifier.ixx>

#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>
#include <BRepTools.hxx>
#include <Geom_CylindricalSurface.hxx>
#include <Geom_SphericalSurface.hxx>
#include <ShapeFix_Edge.hxx>
#include <TopExp.hxx>


//=======================================================================
//function : BlockFix_PeriodicSurfaceModifier()
//purpose  : Constructor
//=======================================================================

BlockFix_PeriodicSurfaceModifier::BlockFix_PeriodicSurfaceModifier (  )
{
  myMapOfFaces.Clear();
  myMapOfSurfaces.Clear();
}


//=======================================================================
//function : SetTolerance
//purpose  : 
//=======================================================================

void BlockFix_PeriodicSurfaceModifier::SetTolerance(const Standard_Real Tol)
{
  myTolerance = Tol;
}


//=======================================================================
//function : ModifySurface
//purpose  : auxilary
//=======================================================================

static Standard_Boolean ModifySurface(const TopoDS_Face& aFace,
                                      const Handle(Geom_Surface)& aSurface,
                                      Handle(Geom_Surface)& aNewSurface)
{
  Handle(Geom_Surface) S = aSurface;

  if(S->IsKind(STANDARD_TYPE(Geom_CylindricalSurface))) {
    Handle(Geom_CylindricalSurface) aCyl = 
      Handle(Geom_CylindricalSurface)::DownCast(S);
    Standard_Real Umin, Umax, Vmin, Vmax;
    BRepTools::UVBounds(aFace, Umin, Umax, Vmin, Vmax);
    if( Umin<-Precision::PConfusion() || Umax>2*M_PI+Precision::PConfusion() ) {
      gp_Ax3 ax3 = aCyl->Position();
      gp_Ax1 NDir = ax3.Axis();
      gp_Ax3 newax3 = ax3.Rotated(NDir,Umin-Precision::PConfusion());
      Handle(Geom_CylindricalSurface) aNewCyl =
        new Geom_CylindricalSurface(newax3,aCyl->Radius());
      aNewSurface = aNewCyl;
      return Standard_True;
    }
  }
  
  if(S->IsKind(STANDARD_TYPE(Geom_SphericalSurface))) {
    Handle(Geom_SphericalSurface) aSphere = Handle(Geom_SphericalSurface)::DownCast(S);
    Standard_Real Umin, Umax, Vmin, Vmax;
    BRepTools::UVBounds(aFace, Umin, Umax, Vmin, Vmax);
    if( Umin<-Precision::PConfusion() || Umax>2*M_PI+Precision::PConfusion() ) {
      gp_Ax3 ax3 = aSphere->Position();
      gp_Ax1 NDir = ax3.Axis();
      gp_Ax3 newax3 = ax3.Rotated(NDir,Umin-Precision::PConfusion());
      Handle(Geom_SphericalSurface) aNewSphere = new Geom_SphericalSurface(newax3,aSphere->Radius());
      aNewSurface = aNewSphere;
      return Standard_True;
    }
  }

  return Standard_False;
}
                                      

//=======================================================================
//function : NewSurface
//purpose  : 
//=======================================================================

Standard_Boolean BlockFix_PeriodicSurfaceModifier::NewSurface(const TopoDS_Face& F,
                                                              Handle(Geom_Surface)& S,
                                                              TopLoc_Location& L,Standard_Real& Tol,
                                                              Standard_Boolean& RevWires,
                                                              Standard_Boolean& RevFace) 
{
  TopLoc_Location LS;
  Handle(Geom_Surface) SIni = BRep_Tool::Surface(F, LS);
  
  if(ModifySurface(F, SIni, S)) {
  
    RevWires = Standard_False;
    RevFace = Standard_False;
    
    L = LS;
    Tol = BRep_Tool::Tolerance(F);
     
    Standard_Integer anIndex = myMapOfSurfaces.Add(S);
    myMapOfFaces.Bind(F,anIndex);
    return Standard_True;
  }

  return Standard_False;
}


//=======================================================================
//function : NewCurve
//purpose  : 
//=======================================================================

Standard_Boolean BlockFix_PeriodicSurfaceModifier::NewCurve(const TopoDS_Edge& /*E*/,
                                                            Handle(Geom_Curve)& /*C*/,
                                                            TopLoc_Location& /*L*/,
                                                            Standard_Real& /*Tol*/) 
{
  return Standard_False;
}


//=======================================================================
//function : NewPoint
//purpose  : 
//=======================================================================

Standard_Boolean BlockFix_PeriodicSurfaceModifier::NewPoint(const TopoDS_Vertex& /*V*/,
                                                            gp_Pnt& /*P*/,
                                                            Standard_Real& /*Tol*/) 
{
  return Standard_False;
}


//=======================================================================
//function : NewCurve2d
//purpose  : 
//=======================================================================

Standard_Boolean BlockFix_PeriodicSurfaceModifier::NewCurve2d(const TopoDS_Edge& E,
                                                              const TopoDS_Face& F,
                                                              const TopoDS_Edge& /*NewE*/,
                                                              const TopoDS_Face& /*NewF*/,
                                                              Handle(Geom2d_Curve)& C,
                                                              Standard_Real& Tol) 
{
  //check if undelying surface of the face was modified
  if(myMapOfFaces.IsBound(F)) {
    Standard_Integer anIndex = myMapOfFaces.Find(F);
    
    Handle(Geom_Surface) aNewSurf = Handle(Geom_Surface)::DownCast(myMapOfSurfaces.FindKey(anIndex));
    
    Standard_Real f,l;
    TopLoc_Location LC, LS;
    Handle(Geom_Curve) C3d = BRep_Tool::Curve ( E, LC, f, l );
    Handle(Geom_Surface) S = BRep_Tool::Surface(F, LS);
  
    //taking into accound the orientation of the seam
    C = BRep_Tool::CurveOnSurface(E,F,f,l);
    Tol = BRep_Tool::Tolerance(E);
     
    BRep_Builder B;
    TopoDS_Edge TempE;
    B.MakeEdge(TempE);
    B.Add(TempE, TopExp::FirstVertex(E));
    B.Add(TempE, TopExp::LastVertex(E));

    if(!C3d.IsNull()) 
      B.UpdateEdge(TempE, Handle(Geom_Curve)::DownCast(C3d->Transformed(LC.Transformation())), Precision::Confusion());
    B.Range(TempE, f, l);
    
    Handle(ShapeFix_Edge) sfe = new ShapeFix_Edge;
    Handle(Geom_Surface) STemp = Handle(Geom_Surface)::DownCast(aNewSurf->Transformed(LS.Transformation()));
    TopLoc_Location LTemp;
    LTemp.Identity();
    
    Standard_Boolean isClosed = BRep_Tool::IsClosed (E, F);
    Standard_Real aWorkTol = 2*myTolerance+Tol;
    sfe->FixAddPCurve(TempE, STemp, LTemp, isClosed, Max(Precision::Confusion(), aWorkTol));
    sfe->FixSameParameter(TempE);
      
    //keep the orientation of original edge
    TempE.Orientation(E.Orientation());
    C = BRep_Tool::CurveOnSurface(TempE, STemp, LTemp, f, l);
    
    //surface was modified
    return Standard_True;
  }

  return Standard_False;
}


//=======================================================================
//function : NewParameter
//purpose  : 
//=======================================================================

Standard_Boolean BlockFix_PeriodicSurfaceModifier::NewParameter(const TopoDS_Vertex& /*V*/,
                                                                const TopoDS_Edge& /*E*/,
                                                                Standard_Real& /*P*/,
                                                                Standard_Real& /*Tol*/) 
{
  return Standard_False;
}


//=======================================================================
//function : Continuity
//purpose  : 
//=======================================================================

GeomAbs_Shape BlockFix_PeriodicSurfaceModifier::Continuity(const TopoDS_Edge& E,
                                                           const TopoDS_Face& F1,
                                                           const TopoDS_Face& F2,
                                                           const TopoDS_Edge& /*NewE*/,
                                                           const TopoDS_Face& /*NewF1*/,
                                                           const TopoDS_Face& /*NewF2*/) 
{
  return BRep_Tool::Continuity(E,F1,F2);
}

