// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
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

#include "GEOM_WireframeFace.h" 
 
#include <vtkObjectFactory.h> 
 
#include <vtkPoints.h> 
#include <vtkCellArray.h> 

#include <vtkPolyDataMapper.h>  
#include <vtkPolyData.h>  
 
#include <Precision.hxx>
#include <BRepTools.hxx>
#include <TopExp_Explorer.hxx>
#include <Geom2dHatch_Hatcher.hxx>
#include <Geom2dHatch_Intersector.hxx>
#include <TColStd_Array1OfReal.hxx>
#include <TColStd_Array1OfInteger.hxx>
 
#include <TopoDS.hxx> 
#include <TopoDS_Edge.hxx> 
#include <BRep_Tool.hxx>
#include <Geom2d_TrimmedCurve.hxx>
#include <Geom2d_Line.hxx>
#include <gp_Dir2d.hxx>
#include <gp_Pnt2d.hxx>
 
#include <Geom2dHatch_Hatcher.hxx>
#include <HatchGen_Domain.hxx>

#include <Adaptor3d_HCurve.hxx>

vtkStandardNewMacro(GEOM_WireframeFace);
 
GEOM_WireframeFace::GEOM_WireframeFace(): 
  Discret(15)
{ 
  NbIso[0] = 1;
  NbIso[1] = 1;
} 
 
GEOM_WireframeFace::~GEOM_WireframeFace() 
{ 
} 
 
void
GEOM_WireframeFace:: 
Execute()
{
  vtkPolyData* aPolyData = GetOutput();
  aPolyData->Allocate();
  vtkPoints* aPts = vtkPoints::New();
  aPolyData->SetPoints(aPts);
  aPts->Delete();

  TFaceSet::Iterator anIter(myFaceSet);
  for(; anIter.More(); anIter.Next()){
    const TopoDS_Face& aFace = anIter.Value();
    OCC2VTK(aFace,aPolyData,aPts,NbIso,Discret);
  }
}

void GEOM_WireframeFace::SetNbIso(const int theNb[2])
{
  if ( theNb[0] == NbIso[0] && theNb[1] == NbIso[1])
    return;

  NbIso[0] = theNb[0];
  NbIso[1] = theNb[1];

  Modified();
}

void GEOM_WireframeFace::GetNbIso(int &theNbU,int &theNbV)
{
  theNbU = NbIso[0];
  theNbV = NbIso[1];
}

void  
GEOM_WireframeFace:: 
OCC2VTK(const TopoDS_Face& theFace,
        vtkPolyData* thePolyData,
                    vtkPoints* thePts,  
        const int theNbIso[2], 
        const int theDiscret) 
{ 
  TopoDS_Face aFace = theFace; 
  aFace.Orientation(TopAbs_FORWARD);
  CreateIso(aFace,theNbIso,theDiscret,thePolyData,thePts);
}

void 
GEOM_WireframeFace:: 
CreateIso(const TopoDS_Face& theFace,
          const int theNbIso[2], 
          const int theDiscret, 
          vtkPolyData* thePolyData,
          vtkPoints* thePts)
{
  // Constants for iso building
  static Standard_Real INTERSECTOR_CONFUSION = 1.e-10 ; // -8 ;
  static Standard_Real INTERSECTOR_TANGENCY  = 1.e-10 ; // -8 ;

  static Standard_Real HATHCER_CONFUSION_2D = 1.e-8 ;
  static Standard_Real HATHCER_CONFUSION_3D = 1.e-8 ;

  Geom2dHatch_Hatcher 
    aHatcher(Geom2dHatch_Intersector(INTERSECTOR_CONFUSION,
                                     INTERSECTOR_TANGENCY),
                         HATHCER_CONFUSION_2D,
                         HATHCER_CONFUSION_3D,
                                     Standard_True,
                                     Standard_False);
  
  Standard_Real anUMin, anUMax, aVMin, aVMax;
  TColStd_Array1OfReal anUPrm(0, theNbIso[0]), aVPrm(0, theNbIso[1]);
  TColStd_Array1OfInteger anUInd(0, theNbIso[0]), aVInd(0, theNbIso[1]);

  anUInd.Init(0);
  aVInd.Init(0);

  //-----------------------------------------------------------------------
  // If the Min Max bounds are infinite, there are bounded to Infinite
  // value.
  //-----------------------------------------------------------------------
  BRepTools::UVBounds(theFace, anUMin, anUMax, aVMin, aVMax) ;
  Standard_Boolean InfiniteUMin = Precision::IsNegativeInfinite (anUMin) ;
  Standard_Boolean InfiniteUMax = Precision::IsPositiveInfinite (anUMax) ;
  Standard_Boolean InfiniteVMin = Precision::IsNegativeInfinite (aVMin) ;
  Standard_Boolean InfiniteVMax = Precision::IsPositiveInfinite (aVMax) ;

  static float VTKINFINITE = 1.0E38;
  if(InfiniteUMin && InfiniteUMax){
    anUMin = - VTKINFINITE ;
    anUMax =   VTKINFINITE ;
  }else if(InfiniteUMin){
    anUMin = anUMax - VTKINFINITE ;
  }else if(InfiniteUMax){
    anUMax = anUMin + VTKINFINITE ;
  }

  if(InfiniteVMin && InfiniteVMax){
    aVMin = - VTKINFINITE ;
    aVMax =   VTKINFINITE ;
  }else if(InfiniteVMin){
    aVMin = aVMax - VTKINFINITE ;
  }else if(InfiniteVMax){
    aVMax = aVMin + VTKINFINITE ;
  }

  //-----------------------------------------------------------------------
  // Retreiving the edges and loading them into the hatcher.
  //-----------------------------------------------------------------------
  TopExp_Explorer ExpEdges(theFace, TopAbs_EDGE);
  for(; ExpEdges.More(); ExpEdges.Next()){
    const TopoDS_Edge& anEdge = TopoDS::Edge(ExpEdges.Current());
    Standard_Real U1, U2 ;
    const Handle(Geom2d_Curve) PCurve = 
      BRep_Tool::CurveOnSurface(anEdge, theFace, U1, U2) ;

    if(PCurve.IsNull() || U1 == U2)
      return;

    //-- Test if a TrimmedCurve is necessary
    if(Abs(PCurve->FirstParameter()-U1) <= Precision::PConfusion() &&
             Abs(PCurve->LastParameter()-U2) <= Precision::PConfusion())
    { 
      aHatcher.AddElement(PCurve, anEdge.Orientation()) ;      
    }else{ 
      if(!PCurve->IsPeriodic()){
              Handle(Geom2d_TrimmedCurve) TrimPCurve =
          Handle(Geom2d_TrimmedCurve)::DownCast(PCurve);
              if(!TrimPCurve.IsNull()){
          Handle_Geom2d_Curve aBasisCurve = TrimPCurve->BasisCurve();
                if(aBasisCurve->FirstParameter()-U1 > Precision::PConfusion() ||
                   U2-aBasisCurve->LastParameter() > Precision::PConfusion()) 
          {
                  aHatcher.AddElement(PCurve, anEdge.Orientation()) ;      
                  return;
                }
              }else{
                if(PCurve->FirstParameter()-U1 > Precision::PConfusion()){
                  U1=PCurve->FirstParameter();
                }
                if(U2-PCurve->LastParameter()  > Precision::PConfusion()){
                  U2=PCurve->LastParameter();
                }
              }
      }
      Handle(Geom2d_TrimmedCurve) TrimPCurve = 
        new Geom2d_TrimmedCurve(PCurve, U1, U2);
      aHatcher.AddElement(TrimPCurve, anEdge.Orientation());
    }
  }


  //-----------------------------------------------------------------------
  // Loading and trimming the hatchings.
  //-----------------------------------------------------------------------
  Standard_Integer IIso;
  Standard_Real DeltaU = Abs(anUMax - anUMin) ;
  Standard_Real DeltaV = Abs(aVMax - aVMin) ;
  Standard_Real confusion = Min(DeltaU, DeltaV) * HATHCER_CONFUSION_3D ;
  aHatcher.Confusion3d (confusion) ;

  if ( theNbIso[0] ) {
    Standard_Real StepU = DeltaU / (Standard_Real)theNbIso[0];
    if(StepU > confusion){
      Standard_Real UPrm = anUMin + StepU / 2.;
      gp_Dir2d Dir(0., 1.) ;
      for(IIso = 1 ; IIso <= theNbIso[0] ; IIso++) {
        anUPrm(IIso) = UPrm ;
        gp_Pnt2d Ori (UPrm, 0.) ;
        Geom2dAdaptor_Curve HCur (new Geom2d_Line (Ori, Dir)) ;
        anUInd(IIso) = aHatcher.AddHatching (HCur) ;
        UPrm += StepU ;
      }
    }
  }

  if ( theNbIso[1] ) {
    Standard_Real StepV = DeltaV / (Standard_Real) theNbIso[1] ;
    if(StepV > confusion){
      Standard_Real VPrm = aVMin + StepV / 2.;
      gp_Dir2d Dir(1., 0.);
      for(IIso = 1 ; IIso <= theNbIso[1] ; IIso++){
        aVPrm(IIso) = VPrm;
        gp_Pnt2d Ori (0., VPrm);
        Geom2dAdaptor_Curve HCur(new Geom2d_Line (Ori, Dir));
        aVInd(IIso) = aHatcher.AddHatching (HCur) ;
        VPrm += StepV ;
      }
    }
  }

  //-----------------------------------------------------------------------
  // Computation.
  //-----------------------------------------------------------------------
  aHatcher.Trim() ;

  Standard_Integer aNbDom = 0 ; // for debug purpose
  Standard_Integer Index ;

  for(IIso = 1 ; IIso <= theNbIso[0] ; IIso++){
    Index = anUInd(IIso) ;
    if(Index != 0){
      if(aHatcher.TrimDone(Index) && !aHatcher.TrimFailed(Index)){
              aHatcher.ComputeDomains(Index);
              if(aHatcher.IsDone (Index)) 
          aNbDom = aHatcher.NbDomains (Index);
      }
    }
  }

  for(IIso = 1 ; IIso <= theNbIso[1] ; IIso++){
    Index = aVInd(IIso);
    if(Index != 0){
      if(aHatcher.TrimDone (Index) && !aHatcher.TrimFailed(Index)){
              aHatcher.ComputeDomains (Index);
              if(aHatcher.IsDone (Index)) 
          aNbDom = aHatcher.NbDomains (Index);
      }
    }
  }

  //-----------------------------------------------------------------------
  // Push iso lines in vtk kernel
  //-----------------------------------------------------------------------
  for(Standard_Integer UIso = anUPrm.Lower() ; UIso <= anUPrm.Upper(); UIso++){
    Standard_Integer UInd = anUInd.Value(UIso);
    if(UInd != 0){
      Standard_Real UPrm = anUPrm.Value(UIso);
      if(aHatcher.IsDone(UInd)){
              Standard_Integer NbDom = aHatcher.NbDomains(UInd);
              for(Standard_Integer IDom = 1 ; IDom <= NbDom ; IDom++){
                const HatchGen_Domain& Dom = aHatcher.Domain(UInd, IDom) ;
                Standard_Real V1 = Dom.HasFirstPoint()? Dom.FirstPoint().Parameter(): aVMin - VTKINFINITE;
                Standard_Real V2 = Dom.HasSecondPoint()? Dom.SecondPoint().Parameter(): aVMax + VTKINFINITE;
                CreateIso_(theFace, GeomAbs_IsoU, UPrm, V1, V2, theDiscret, thePolyData, thePts);
        }
            }
    }
  }

  for(Standard_Integer VIso = aVPrm.Lower() ; VIso <= aVPrm.Upper(); VIso++){
    Standard_Integer VInd = aVInd.Value(VIso);
    if(VInd != 0){
      Standard_Real VPrm = aVPrm.Value(VIso);
      if(aHatcher.IsDone (VInd)){
              Standard_Integer NbDom = aHatcher.NbDomains(VInd);
              for (Standard_Integer IDom = 1 ; IDom <= NbDom ; IDom++){
                const HatchGen_Domain& Dom = aHatcher.Domain(VInd, IDom);
                Standard_Real U1 = Dom.HasFirstPoint()? Dom.FirstPoint().Parameter(): aVMin - VTKINFINITE;
                Standard_Real U2 = Dom.HasSecondPoint()? Dom.SecondPoint().Parameter(): aVMax + VTKINFINITE;
            CreateIso_(theFace, GeomAbs_IsoV, VPrm, U1, U2, theDiscret, thePolyData, thePts);
              }
      }
    }
  }
}

 

void 
GEOM_WireframeFace:: 
CreateIso_(const TopoDS_Face& theFace,
           GeomAbs_IsoType theIsoType, 
           Standard_Real Par, 
           Standard_Real T1,
           Standard_Real T2,
           const int theDiscret, 
           vtkPolyData* thePolyData,
           vtkPoints* thePts)
{
  Standard_Real U1, U2, V1, V2, stepU=0., stepV=0.;
  Standard_Integer j;
  gp_Pnt P;

  TopLoc_Location aLoc;
  const Handle(Geom_Surface)& S = BRep_Tool::Surface(theFace,aLoc);

  if(!S.IsNull()){
    BRepAdaptor_Surface S(theFace,Standard_False);
      
    GeomAbs_SurfaceType SurfType = S.GetType();

    GeomAbs_CurveType CurvType = GeomAbs_OtherCurve;

    Standard_Integer Intrv, nbIntv;
    Standard_Integer nbUIntv = S.NbUIntervals(GeomAbs_CN);
    Standard_Integer nbVIntv = S.NbVIntervals(GeomAbs_CN);
    TColStd_Array1OfReal TI(1,Max(nbUIntv, nbVIntv)+1);

    if(theIsoType == GeomAbs_IsoU){
      S.VIntervals(TI, GeomAbs_CN);
      V1 = Max(T1, TI(1));
      V2 = Min(T2, TI(2));
      U1 = Par;
      U2 = Par;
      stepU = 0;
      nbIntv = nbVIntv;
    }else{
      S.UIntervals(TI, GeomAbs_CN);
      U1 = Max(T1, TI(1));
      U2 = Min(T2, TI(2));
      V1 = Par;
      V2 = Par;
      stepV = 0;
      nbIntv = nbUIntv;
    }   
        
    S.D0(U1,V1,P);
    MoveTo(P,thePts);

    for(Intrv = 1; Intrv <= nbIntv; Intrv++){
      if(TI(Intrv) <= T1 && TI(Intrv + 1) <= T1)
        continue;
      if(TI(Intrv) >= T2 && TI(Intrv + 1) >= T2)
              continue;
      if(theIsoType == GeomAbs_IsoU){
              V1 = Max(T1, TI(Intrv));
              V2 = Min(T2, TI(Intrv + 1));
              stepV = (V2 - V1) / theDiscret;
      }else{
              U1 = Max(T1, TI(Intrv));
              U2 = Min(T2, TI(Intrv + 1));
              stepU = (U2 - U1) / theDiscret;
      }

      switch (SurfType) {
      case GeomAbs_Plane :
              break;
      case GeomAbs_Cylinder :
      case GeomAbs_Cone :
        if(theIsoType == GeomAbs_IsoV){
                for(j = 1; j < theDiscret; j++){
                  U1 += stepU;
                  V1 += stepV;
                  S.D0(U1,V1,P);
                  DrawTo(P,thePolyData,thePts);
                }
              }
              break;
      case GeomAbs_Sphere :
      case GeomAbs_Torus :
      case GeomAbs_OffsetSurface :
      case GeomAbs_OtherSurface :
        for(j = 1; j < theDiscret; j++){
                U1 += stepU;
                V1 += stepV;
                S.D0(U1,V1,P);
                DrawTo(P,thePolyData,thePts);
              }
              break;
      case GeomAbs_BezierSurface :
      case GeomAbs_BSplineSurface :
        for(j = 1; j <= theDiscret/2; j++){
          Standard_Real aStep = (theIsoType == GeomAbs_IsoV) ? stepU*2. : stepV*2.;
                CreateIso__(S, theIsoType, U1, V1, aStep, thePolyData, thePts);
                U1 += stepU*2.;
                V1 += stepV*2.;
              }
              break;
      case GeomAbs_SurfaceOfExtrusion :
      case GeomAbs_SurfaceOfRevolution :
        if((theIsoType == GeomAbs_IsoV && SurfType == GeomAbs_SurfaceOfRevolution) ||
                 (theIsoType == GeomAbs_IsoU && SurfType == GeomAbs_SurfaceOfExtrusion)) 
        {
                if(SurfType == GeomAbs_SurfaceOfExtrusion) 
            break;
                for(j = 1; j < theDiscret; j++){
                  U1 += stepU;
                  V1 += stepV;
                  S.D0(U1,V1,P);
                  DrawTo(P,thePolyData,thePts);
                }
              }else{
                CurvType = (S.BasisCurve())->GetType();
                switch(CurvType){
                case GeomAbs_Line :
                  break;
                case GeomAbs_Circle :
                case GeomAbs_Ellipse :
                  for (j = 1; j < theDiscret; j++) {
                    U1 += stepU;
                    V1 += stepV;
                    S.D0(U1,V1,P);
                    DrawTo(P,thePolyData,thePts);
                  }
                  break;
                case GeomAbs_Parabola :
                case GeomAbs_Hyperbola :
                case GeomAbs_BezierCurve :
                case GeomAbs_BSplineCurve :
                case GeomAbs_OtherCurve :
                  for(j = 1; j <= theDiscret/2; j++){
              Standard_Real aStep = (theIsoType == GeomAbs_IsoV) ? stepU*2. : stepV*2.;
                  CreateIso__(S, theIsoType, U1, V1, aStep, thePolyData, thePts);
                    U1 += stepU*2.;
                    V1 += stepV*2.;
                  }
                  break;
                }
              }
      }
    }
    S.D0(U2,V2,P);
    DrawTo(P,thePolyData,thePts);
  }  
}
 
 
 
 
void 
GEOM_WireframeFace:: 
CreateIso__(const BRepAdaptor_Surface& theSurface, 
            GeomAbs_IsoType theIsoType,
                                    Standard_Real& theU, 
                                    Standard_Real& theV, 
                                    Standard_Real theStep, 
            vtkPolyData* thePolyData,
            vtkPoints* thePts)
{
  gp_Pnt Pl, Pr, Pm;
  if (theIsoType == GeomAbs_IsoU) {
    theSurface.D0(theU, theV, Pl);
    theSurface.D0(theU, theV + theStep/2., Pm);
    theSurface.D0(theU, theV + theStep, Pr);
  } else {
    theSurface.D0(theU, theV, Pl);
    theSurface.D0(theU + theStep/2., theV, Pm);
    theSurface.D0(theU + theStep, theV, Pr);
  }

  static Standard_Real ISO_RATIO = 1.001;
  if (Pm.Distance(Pl) + Pm.Distance(Pr) <= ISO_RATIO*Pl.Distance(Pr)) {
    DrawTo(Pr,thePolyData,thePts);
  } else {
    if (theIsoType == GeomAbs_IsoU) {
      CreateIso__(theSurface, theIsoType, theU, theV, theStep/2, thePolyData, thePts);
      Standard_Real aLocalV = theV + theStep/2 ;
      CreateIso__(theSurface, theIsoType, theU, aLocalV , theStep/2, thePolyData, thePts);
    } else {
      CreateIso__(theSurface, theIsoType, theU, theV, theStep/2, thePolyData, thePts);
      Standard_Real aLocalU = theU + theStep/2 ;
      CreateIso__(theSurface, theIsoType, aLocalU , theV, theStep/2, thePolyData, thePts);
    }
  }
}
