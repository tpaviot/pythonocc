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
#include <BlockFix.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>
#include <ShapeCustom.hxx>
#include <BRepTools.hxx>
#include <ShapeBuild_ReShape.hxx>
#include <TopoDS_Face.hxx>
#include <TopExp_Explorer.hxx>
#include <TopoDS.hxx>
#include <TopLoc_Location.hxx>
#include <Geom_Surface.hxx>
#include <Geom_CylindricalSurface.hxx>
#include <Geom_ConicalSurface.hxx>
#include <ShapeFix_Wire.hxx>
#include <TopoDS_Wire.hxx>
#include <BRepTools_Modifier.hxx>
#include <Geom_SphericalSurface.hxx>
#include <Geom_ToroidalSurface.hxx>
#include <BRep_Tool.hxx>
#include <TopoDS_Edge.hxx>
#include <Geom2d_Curve.hxx>
#include <BRep_Builder.hxx>
#include <ShapeAnalysis_Edge.hxx>
#include <ShapeFix_Edge.hxx>
#include <ShapeFix.hxx>
#include <ShapeFix_Face.hxx>
#include <ShapeAnalysis.hxx>

#include <TColgp_SequenceOfPnt2d.hxx>
#include <ShapeAnalysis_Curve.hxx>
#include <TopoDS_Vertex.hxx>
#include <ShapeBuild_Edge.hxx>

#include <BlockFix_SphereSpaceModifier.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <BlockFix_PeriodicSurfaceModifier.hxx>

#include <TopoDS_Solid.hxx>


//=======================================================================
//function : FixResult
//purpose  : auxilary
//=======================================================================
static void FixResult(const TopoDS_Shape& result,
                      Handle(ShapeBuild_ReShape)& Context,
                      const Standard_Real Tol)
{
  for (TopExp_Explorer ex_f(result,TopAbs_FACE); ex_f.More(); ex_f.Next()) {
    TopoDS_Shape aShape = Context->Apply(ex_f.Current().Oriented(TopAbs_FORWARD));
    // face coud not be dropped or splitted on this step
    TopoDS_Face aFace = TopoDS::Face(aShape);
    TopLoc_Location L;
    Handle(Geom_Surface) Surf = BRep_Tool::Surface(aFace,L);
    
    if( Surf->IsKind(STANDARD_TYPE(Geom_SphericalSurface)) ||
        Surf->IsKind(STANDARD_TYPE(Geom_CylindricalSurface)) ) {
    
      Standard_Integer nbWires = 0;
      for (TopExp_Explorer ex_w(aFace,TopAbs_WIRE); ex_w.More(); ex_w.Next()) {
        nbWires++;
        Handle(ShapeFix_Wire) sfw = new ShapeFix_Wire(TopoDS::Wire(ex_w.Current()), 
                                                      aFace, 
                                                      Precision::Confusion());
        sfw->FixReorder();
        if(sfw->StatusReorder ( ShapeExtend_FAIL ))
          continue;
        
        sfw->SetPrecision(2.*Tol);
        sfw->FixShifted();
        
        Standard_Boolean isDone = sfw->LastFixStatus ( ShapeExtend_DONE );
        isDone |= sfw->FixDegenerated();
        
        // remove degenerated edges from not degenerated points
        ShapeAnalysis_Edge sae;
        Handle(ShapeExtend_WireData) sewd = sfw->WireData();
        Standard_Integer i;
        for( i = 1; i<=sewd->NbEdges();i++) {
          TopoDS_Edge E = sewd->Edge(i);
          if(BRep_Tool::Degenerated(E)&&!sae.HasPCurve(E,aFace)) {
            sewd->Remove(i);
            isDone = Standard_True;
            i--;
          }
        }
        
        //isDone |= sfw->FixLacking(); // commented by skl 22.03.2005 (PAL8395)
        
        // remove neighbour seam edges 
        if(isDone) {
          for( i = 1; i<sewd->NbEdges();i++) {
            if(sewd->IsSeam(i) && sewd->IsSeam(i+1)) {
              isDone = Standard_True;
              sewd->Remove(i);
              sewd->Remove(i);
              i--;
            }
          }
          if(sewd->IsSeam(1) && sewd->IsSeam(sewd->NbEdges())) {
            sewd->Remove(1);
            sewd->Remove(sewd->NbEdges());
          }
        }
        
               
        if(isDone) {
          TopoDS_Wire ResWire = sfw->Wire();
          Context->Replace(ex_w.Current(), ResWire);
        };
      }
      // Implement fix orientation in case of several wires
      if(nbWires > 1) {
        TopoDS_Face aFixedFace = TopoDS::Face(Context->Apply(aFace));
        Handle(ShapeFix_Face) sff = new ShapeFix_Face(aFixedFace);
        if(sff->FixOrientation())
          Context->Replace(aFixedFace,sff->Face());
      }
      
    }
  }
}





//=======================================================================
//function : ConvertToAnalytical
//purpose  : 
//=======================================================================

TopoDS_Shape BlockFix::RotateSphereSpace (const TopoDS_Shape& S,
                                          const Standard_Real Tol) 
{

  // Create a modification description
  Handle(BlockFix_SphereSpaceModifier) SR = new BlockFix_SphereSpaceModifier;
  SR->SetTolerance(Tol);

  TopTools_DataMapOfShapeShape context;
  BRepTools_Modifier MD;
  TopoDS_Shape result = ShapeCustom::ApplyModifier ( S, SR, context,MD );
  
  Handle(ShapeBuild_ReShape) RS = new ShapeBuild_ReShape;
  FixResult(result,RS,Tol);
  result = RS->Apply(result);
  
  ShapeFix_Edge sfe;
  for(TopExp_Explorer exp(result,TopAbs_EDGE); exp.More(); exp.Next()) {
    TopoDS_Edge E = TopoDS::Edge(exp.Current());
    sfe.FixVertexTolerance (E);
  }
  
  ShapeFix::SameParameter(result,Standard_False);
  return result;
}


//=======================================================================
//function : FixRanges
//purpose  : 
//=======================================================================

TopoDS_Shape BlockFix::FixRanges (const TopoDS_Shape& S,
                                  const Standard_Real Tol) 
{
  // Create a modification description
  Handle(BlockFix_PeriodicSurfaceModifier) SR = new BlockFix_PeriodicSurfaceModifier;
  SR->SetTolerance(Tol);

  TopTools_DataMapOfShapeShape context;
  BRepTools_Modifier MD;
  TopoDS_Shape result = ShapeCustom::ApplyModifier ( S, SR, context,MD );
  
  Handle(ShapeBuild_ReShape) RS = new ShapeBuild_ReShape;
  FixResult(result,RS,Tol);
  result = RS->Apply(result);
  
  ShapeFix_Edge sfe;
  for(TopExp_Explorer exp(result,TopAbs_EDGE); exp.More(); exp.Next()) {
    TopoDS_Edge E = TopoDS::Edge(exp.Current());
    sfe.FixVertexTolerance (E);
  }
  
  ShapeFix::SameParameter(result,Standard_False);

  return result;
}
