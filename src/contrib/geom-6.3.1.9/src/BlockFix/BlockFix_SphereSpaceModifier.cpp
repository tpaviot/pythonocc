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
// File:	BlockFix.cxx
// Created:	Tue Dec  7 11:59:05 2004
// Author:	Pavel DURANDIN
//
#include <BlockFix_SphereSpaceModifier.ixx>

#include <TopLoc_Location.hxx>
#include <BRep_Tool.hxx>
#include <Geom_SphericalSurface.hxx>
#include <Geom_RectangularTrimmedSurface.hxx>
#include <ShapeAnalysis.hxx>
#include <gp_Sphere.hxx>
#include <BRep_Builder.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>
#include <TopExp.hxx>
#include <ShapeFix_Edge.hxx>
#include <Geom_Curve.hxx>
#include <Geom2d_Curve.hxx>


//=======================================================================
//function : BlockFix_SphereSpaceModifier
//purpose  : 
//=======================================================================

BlockFix_SphereSpaceModifier::BlockFix_SphereSpaceModifier()
{
  myMapOfFaces.Clear();
  myMapOfSpheres.Clear();
}

//=======================================================================
//function : SetTolerance
//purpose  : 
//=======================================================================

void BlockFix_SphereSpaceModifier::SetTolerance(const Standard_Real Tol)
{
  myTolerance = Tol;
}


//=======================================================================
//function : NewSurface
//purpose  : 
//=======================================================================


static Standard_Boolean ModifySurface(const TopoDS_Face& aFace,
                                      const Handle(Geom_Surface)& aSurface,
                                      Handle(Geom_Surface)& aNewSurface)
{
  Handle(Geom_Surface) S = aSurface;
  if(S->IsKind(STANDARD_TYPE(Geom_RectangularTrimmedSurface))) {
    Handle(Geom_RectangularTrimmedSurface) RTS = 
      Handle(Geom_RectangularTrimmedSurface)::DownCast(S);
    S = RTS->BasisSurface();
  }
  
  if(S->IsKind(STANDARD_TYPE(Geom_SphericalSurface))) {
    Standard_Real Umin, Umax, Vmin, Vmax;
    ShapeAnalysis::GetFaceUVBounds(aFace,Umin, Umax, Vmin, Vmax);
    Standard_Real PI2 = M_PI/2.;
    if(Vmax > PI2 - Precision::PConfusion() || Vmin < -PI2+::Precision::PConfusion()) {
      Handle(Geom_SphericalSurface) aSphere = Handle(Geom_SphericalSurface)::DownCast(S);
      gp_Sphere sp = aSphere->Sphere();
      gp_Ax3 ax3 = sp.Position();
      if(Abs(Vmax-Vmin) < PI2) {
        gp_Ax3 axnew3(ax3.Axis().Location(), ax3.Direction()^ax3.XDirection(),ax3.XDirection());
        sp.SetPosition(axnew3);
        Handle(Geom_SphericalSurface) aNewSphere = new Geom_SphericalSurface(sp);
        aNewSurface = aNewSphere;
        return Standard_True;
      }
      else {
        gp_Pnt PC = ax3.Location();
        Standard_Real Vpar;
        if(fabs(PI2-Vmax)>fabs(-PI2-Vmin))
          Vpar = (PI2+Vmax)/2.;
        else
          Vpar = (-PI2+Vmin)/2.;
        Standard_Real Upar = (Umin+Umax)/2.;;
        gp_Pnt PN,PX;
        S->D0(Upar,Vpar,PN);
        S->D0(Upar+PI2,0.,PX);
        gp_Dir newNorm(gp_Vec(PC,PN));
        gp_Dir newDirX(gp_Vec(PC,PX));
        gp_Ax3 axnew3(ax3.Axis().Location(), newNorm, newDirX);
        sp.SetPosition(axnew3);
        Handle(Geom_SphericalSurface) aNewSphere = new Geom_SphericalSurface(sp);
        aNewSurface = aNewSphere;
        return Standard_True;
      }
    }
  }
  return Standard_False;
}
                                      

Standard_Boolean BlockFix_SphereSpaceModifier::NewSurface(const TopoDS_Face& F,
                                                        Handle(Geom_Surface)& S,
                                                        TopLoc_Location& L,Standard_Real& Tol,
                                                        Standard_Boolean& RevWires,
                                                        Standard_Boolean& RevFace) 
{
  TopLoc_Location LS;
  Handle(Geom_Surface) SIni = BRep_Tool::Surface(F, LS);
  
  //check if pole of the sphere in the parametric space
  if(ModifySurface(F, SIni, S)) {
  
    RevWires = Standard_False;
    RevFace = Standard_False;
    
    L = LS;
    Tol = BRep_Tool::Tolerance(F);
     
    Standard_Integer anIndex = myMapOfSpheres.Add(S);
    myMapOfFaces.Bind(F,anIndex);
    return Standard_True;
  }
  
  return Standard_False;
}

//=======================================================================
//function : NewCurve
//purpose  : 
//=======================================================================

Standard_Boolean BlockFix_SphereSpaceModifier::NewCurve(const TopoDS_Edge& /*E*/,Handle(Geom_Curve)& /*C*/,
                                                        TopLoc_Location& /*L*/,Standard_Real& /*Tol*/) 
{
  return Standard_False;
}

//=======================================================================
//function : NewPoint
//purpose  : 
//=======================================================================

Standard_Boolean BlockFix_SphereSpaceModifier::NewPoint(const TopoDS_Vertex& /*V*/,
                                                      gp_Pnt& /*P*/,
                                                      Standard_Real& /*Tol*/) 
{
  return Standard_False;
}

//=======================================================================
//function : NewCurve2d
//purpose  : 
//=======================================================================

Standard_Boolean BlockFix_SphereSpaceModifier::NewCurve2d(const TopoDS_Edge& E,const TopoDS_Face& F,
                                                        const TopoDS_Edge& /*NewE*/,const TopoDS_Face& /*NewF*/,
                                                        Handle(Geom2d_Curve)& C,Standard_Real& Tol) 
{
  //check if undelying surface of the face was modified
  if(myMapOfFaces.IsBound(F)) {
    Standard_Integer anIndex = myMapOfFaces.Find(F);
    
    Handle(Geom_Surface) aNewSphere = Handle(Geom_Surface)::DownCast(myMapOfSpheres.FindKey(anIndex));
    
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
    Handle(Geom_Surface) STemp = Handle(Geom_Surface)::DownCast(aNewSphere->Transformed(LS.Transformation()));
    TopLoc_Location LTemp;
    LTemp.Identity();
    
    Standard_Boolean isClosed = BRep_Tool::IsClosed (E, F);
    Standard_Real aWorkTol = 2*myTolerance+Tol;
    sfe->FixAddPCurve(TempE, STemp, LTemp, isClosed, Max(Precision::Confusion(), aWorkTol));
    sfe->FixSameParameter(TempE);
      
    //keep the orientation of original edge
    TempE.Orientation(E.Orientation());
    C = BRep_Tool::CurveOnSurface(TempE, STemp, LTemp, f, l);
    
    // shifting seam of sphere
    if(isClosed  && !C.IsNull()) {
      Standard_Real f2,l2;
      Handle(Geom2d_Curve) c22 = 
        BRep_Tool::CurveOnSurface(TopoDS::Edge(TempE.Reversed()),STemp, LTemp,f2,l2);
      Standard_Real dPreci = Precision::PConfusion()*Precision::PConfusion();
      if((C->Value(f).SquareDistance(c22->Value(f2)) < dPreci)
         ||(C->Value(l).SquareDistance(c22->Value(l2)) < dPreci)) {
        gp_Vec2d shift(S->UPeriod(),0.);
        C->Translate(shift);
      }
    }
    //sphere was modified
    return Standard_True;
  }

  return Standard_False;
}


//=======================================================================
//function : NewParameter
//purpose  : 
//=======================================================================

Standard_Boolean BlockFix_SphereSpaceModifier::NewParameter(const TopoDS_Vertex& /*V*/,const TopoDS_Edge& /*E*/,
                                                            Standard_Real& /*P*/,Standard_Real& /*Tol*/) 
{
  return Standard_False;
}


//=======================================================================
//function : Continuity
//purpose  : 
//=======================================================================

GeomAbs_Shape BlockFix_SphereSpaceModifier::Continuity(const TopoDS_Edge& E,const TopoDS_Face& F1,
                                                     const TopoDS_Face& F2,const TopoDS_Edge& /*NewE*/,
                                                     const TopoDS_Face& /*NewF1*/,const TopoDS_Face& /*NewF2*/) 
{
  return BRep_Tool::Continuity(E,F1,F2);
}
