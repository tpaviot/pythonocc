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
#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOMImpl_IMeasureOperations.hxx>

#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_MeasureDriver.hxx>
#include <GEOMImpl_IMeasure.hxx>

#include <GEOMAlgo_ShapeInfo.hxx>
#include <GEOMAlgo_ShapeInfoFiller.hxx>

#include <GEOM_Function.hxx>
#include <GEOM_PythonDump.hxx>

// OCCT Includes
#include <TFunction_DriverTable.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_Logbook.hxx>
#include <TDF_Tool.hxx>

#include <BRep_Tool.hxx>
#include <BRepAdaptor_Surface.hxx>
#include <BRepBndLib.hxx>
#include <BRepCheck.hxx>
#include <BRepCheck_Result.hxx>
#include <BRepCheck_ListIteratorOfListOfStatus.hxx>
#include <BRepExtrema_DistShapeShape.hxx>
#include <BRepGProp.hxx>
#include <BRepTools.hxx>
#include <BRepClass3d_SolidClassifier.hxx>

#include <Bnd_Box.hxx>

#include <GProp_GProps.hxx>
#include <GProp_PrincipalProps.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>

#include <GeomAbs_SurfaceType.hxx>
#include <Geom_Surface.hxx>
#include <Geom_Plane.hxx>
#include <Geom_SphericalSurface.hxx>
#include <Geom_CylindricalSurface.hxx>
#include <Geom_ToroidalSurface.hxx>
#include <Geom_ConicalSurface.hxx>
#include <Geom_SurfaceOfLinearExtrusion.hxx>
#include <Geom_SurfaceOfRevolution.hxx>
#include <Geom_BezierSurface.hxx>
#include <Geom_BSplineSurface.hxx>
#include <Geom_RectangularTrimmedSurface.hxx>
#include <Geom_OffsetSurface.hxx>

#include <Geom_Line.hxx>

#include <GeomAPI_IntSS.hxx>
#include <Geom_SphericalSurface.hxx>
#include <Geom_ToroidalSurface.hxx>
#include <Geom_Circle.hxx>
#include <BRep_Builder.hxx>
#include <TopoDS_Compound.hxx>
#include <ShapeFix_Shape.hxx>

#include <gp_Pln.hxx>
#include <gp_Lin.hxx>

#include <GeomAPI_ProjectPointOnCurve.hxx>
#include <ShapeAnalysis.hxx>
#include <ShapeAnalysis_Surface.hxx>
#include <GeomLProp_CLProps.hxx>
#include <GeomLProp_SLProps.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================
GEOMImpl_IMeasureOperations::GEOMImpl_IMeasureOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  //MESSAGE("GEOMImpl_IMeasureOperations::GEOMImpl_IMeasureOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_IMeasureOperations::~GEOMImpl_IMeasureOperations()
{
  //MESSAGE("GEOMImpl_IMeasureOperations::~GEOMImpl_IMeasureOperations");
}

//=============================================================================
/*! Get kind and parameters of the given shape.
 */
//=============================================================================
GEOMImpl_IMeasureOperations::ShapeKind GEOMImpl_IMeasureOperations::KindOfShape
							 (Handle(GEOM_Object) 					theShape,
							  Handle(TColStd_HSequenceOfInteger)& 	theIntegers,
                              Handle(TColStd_HSequenceOfReal)&    	theDoubles)
{
  SetErrorCode(GEOM_KO);
  ShapeKind aKind = SK_NO_SHAPE;

  if (theIntegers.IsNull()) theIntegers = new TColStd_HSequenceOfInteger;
  else                      theIntegers->Clear();

  if (theDoubles.IsNull()) theDoubles = new TColStd_HSequenceOfReal;
  else                     theDoubles->Clear();

  if (theShape.IsNull())
    return aKind;

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return aKind;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if (aShape.IsNull()) return aKind;

  int geom_type = theShape->GetType();
  
  // check if it's advanced shape
  if ( geom_type > ADVANCED_BASE ) {
    SetErrorCode(GEOM_OK);
    return SK_ADVANCED;
  }

  // Call algorithm
  GEOMAlgo_ShapeInfoFiller aSF;
  aSF.SetShape(aShape);
  aSF.Perform();
  Standard_Integer iErr = aSF.ErrorStatus();
  if (iErr) {
    SetErrorCode("Error in GEOMAlgo_ShapeInfoFiller");
    return SK_NO_SHAPE;
  }
  const GEOMAlgo_ShapeInfo& anInfo = aSF.Info();

  // Interprete results
  TopAbs_ShapeEnum aType = anInfo.Type();
  switch (aType)
  {
  case TopAbs_COMPOUND:
  case TopAbs_COMPSOLID:
    {
      // (+) kind.COMPOUND     nb_solids nb_faces nb_edges nb_vertices
      // (+) kind.COMPSOLID    nb_solids nb_faces nb_edges nb_vertices
      // ??? "nb_faces" - all faces or only 'standalone' faces?
      if (aType == TopAbs_COMPOUND)
        aKind = SK_COMPOUND;
      else
        aKind = SK_COMPSOLID;

      //theIntegers->Append(anInfo.NbSubShapes(TopAbs_COMPOUND));
      //theIntegers->Append(anInfo.NbSubShapes(TopAbs_COMPSOLID));
      theIntegers->Append(anInfo.NbSubShapes(TopAbs_SOLID));
      theIntegers->Append(anInfo.NbSubShapes(TopAbs_FACE));
      theIntegers->Append(anInfo.NbSubShapes(TopAbs_EDGE));
      theIntegers->Append(anInfo.NbSubShapes(TopAbs_VERTEX));
    }
    break;

  case TopAbs_SHELL:
    {
      // (+) kind.SHELL  info.closed   nb_faces nb_edges nb_vertices
      // (+) kind.SHELL  info.unclosed nb_faces nb_edges nb_vertices
      aKind = SK_SHELL;

      theIntegers->Append((int)anInfo.KindOfClosed());

      theIntegers->Append(anInfo.NbSubShapes(TopAbs_FACE));
      theIntegers->Append(anInfo.NbSubShapes(TopAbs_EDGE));
      theIntegers->Append(anInfo.NbSubShapes(TopAbs_VERTEX));
    }
    break;

  case TopAbs_WIRE:
    {
      // (+) kind.WIRE  info.closed   nb_edges nb_vertices
      // (+) kind.WIRE  info.unclosed nb_edges nb_vertices
      aKind = SK_WIRE;

      theIntegers->Append((int)anInfo.KindOfClosed());

      theIntegers->Append(anInfo.NbSubShapes(TopAbs_EDGE));
      theIntegers->Append(anInfo.NbSubShapes(TopAbs_VERTEX));
    }
    break;

  case TopAbs_SOLID:
    {
      aKind = SK_SOLID;

      GEOMAlgo_KindOfName aKN = anInfo.KindOfName();
      switch (aKN)
      {
      case GEOMAlgo_KN_SPHERE:
        // (+) kind.SPHERE  xc yc zc  R
        {
          aKind = SK_SPHERE;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          theDoubles->Append(anInfo.Radius1());
        }
        break;
      case GEOMAlgo_KN_CYLINDER:
        // (+) kind.CYLINDER  xb yb zb  dx dy dz  R  H
        {
          aKind = SK_CYLINDER;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
          theDoubles->Append(anInfo.Height());
        }
        break;
      case GEOMAlgo_KN_BOX:
        // (+) kind.BOX  xc yc zc  ax ay az
        {
          aKind = SK_BOX;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          gp_Dir aX = anAx3.XDirection();

          // ax ay az
          if (aD.IsParallel(gp::DZ(), Precision::Angular()) &&
              aX.IsParallel(gp::DX(), Precision::Angular())) {
            theDoubles->Append(anInfo.Length()); // ax'
            theDoubles->Append(anInfo.Width());  // ay'
            theDoubles->Append(anInfo.Height()); // az'
          }
          else if (aD.IsParallel(gp::DZ(), Precision::Angular()) &&
                   aX.IsParallel(gp::DY(), Precision::Angular())) {
            theDoubles->Append(anInfo.Width());  // ay'
            theDoubles->Append(anInfo.Length()); // ax'
            theDoubles->Append(anInfo.Height()); // az'
          }
          else if (aD.IsParallel(gp::DX(), Precision::Angular()) &&
                   aX.IsParallel(gp::DZ(), Precision::Angular())) {
            theDoubles->Append(anInfo.Height()); // az'
            theDoubles->Append(anInfo.Width());  // ay'
            theDoubles->Append(anInfo.Length()); // ax'
          }
          else if (aD.IsParallel(gp::DX(), Precision::Angular()) &&
                   aX.IsParallel(gp::DY(), Precision::Angular())) {
            theDoubles->Append(anInfo.Height()); // az'
            theDoubles->Append(anInfo.Length()); // ax'
            theDoubles->Append(anInfo.Width());  // ay'
          }
          else if (aD.IsParallel(gp::DY(), Precision::Angular()) &&
                   aX.IsParallel(gp::DZ(), Precision::Angular())) {
            theDoubles->Append(anInfo.Width());  // ay'
            theDoubles->Append(anInfo.Height()); // az'
            theDoubles->Append(anInfo.Length()); // ax'
          }
          else if (aD.IsParallel(gp::DY(), Precision::Angular()) &&
                   aX.IsParallel(gp::DX(), Precision::Angular())) {
            theDoubles->Append(anInfo.Length()); // ax'
            theDoubles->Append(anInfo.Height()); // az'
            theDoubles->Append(anInfo.Width());  // ay'
          }
          else {
            // (+) kind.ROTATED_BOX  xo yo zo  zx zy zz  xx xy xz  ax ay az
            aKind = SK_ROTATED_BOX;

            // Direction and XDirection
            theDoubles->Append(aD.X());
            theDoubles->Append(aD.Y());
            theDoubles->Append(aD.Z());

            theDoubles->Append(aX.X());
            theDoubles->Append(aX.Y());
            theDoubles->Append(aX.Z());

            // ax ay az
            theDoubles->Append(anInfo.Length());
            theDoubles->Append(anInfo.Width());
            theDoubles->Append(anInfo.Height());
          }
        }
        break;
      case GEOMAlgo_KN_TORUS:
        // (+) kind.TORUS  xc yc zc  dx dy dz  R_1 R_2
        {
          aKind = SK_TORUS;

          gp_Pnt aO = anInfo.Location();
          theDoubles->Append(aO.X());
          theDoubles->Append(aO.Y());
          theDoubles->Append(aO.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
          theDoubles->Append(anInfo.Radius2());
        }
        break;
      case GEOMAlgo_KN_CONE:
        // (+) kind.CONE  xb yb zb  dx dy dz  R_1 R_2  H
        {
          aKind = SK_CONE;

          gp_Pnt aO = anInfo.Location();
          theDoubles->Append(aO.X());
          theDoubles->Append(aO.Y());
          theDoubles->Append(aO.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
          theDoubles->Append(anInfo.Radius2());
          theDoubles->Append(anInfo.Height());
        }
        break;
      case GEOMAlgo_KN_POLYHEDRON:
        // (+) kind.POLYHEDRON  nb_faces nb_edges nb_vertices
        {
          aKind = SK_POLYHEDRON;

          theIntegers->Append(anInfo.NbSubShapes(TopAbs_FACE));
          theIntegers->Append(anInfo.NbSubShapes(TopAbs_EDGE));
          theIntegers->Append(anInfo.NbSubShapes(TopAbs_VERTEX));
        }
        break;
      default:
        // (+) kind.SOLID  nb_faces nb_edges nb_vertices
        {
          theIntegers->Append(anInfo.NbSubShapes(TopAbs_FACE));
          theIntegers->Append(anInfo.NbSubShapes(TopAbs_EDGE));
          theIntegers->Append(anInfo.NbSubShapes(TopAbs_VERTEX));
        }
      }
    }
    break;

  case TopAbs_FACE:
    {
      aKind = SK_FACE;

      GEOMAlgo_KindOfName aKN = anInfo.KindOfName();
      switch (aKN) {
      case GEOMAlgo_KN_SPHERE:
        // (+) kind.SPHERE2D  xc yc zc  R
        {
          aKind = SK_SPHERE2D;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          theDoubles->Append(anInfo.Radius1());
        }
        break;
      case GEOMAlgo_KN_CYLINDER:
        // (+) kind.CYLINDER2D  xb yb zb  dx dy dz  R  H
        {
          aKind = SK_CYLINDER2D;

          gp_Pnt aO = anInfo.Location();
          theDoubles->Append(aO.X());
          theDoubles->Append(aO.Y());
          theDoubles->Append(aO.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
          theDoubles->Append(anInfo.Height());
        }
        break;
      case GEOMAlgo_KN_TORUS:
        // (+) kind.TORUS2D  xc yc zc  dx dy dz  R_1 R_2
        {
          aKind = SK_TORUS2D;

          gp_Pnt aO = anInfo.Location();
          theDoubles->Append(aO.X());
          theDoubles->Append(aO.Y());
          theDoubles->Append(aO.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
          theDoubles->Append(anInfo.Radius2());
        }
        break;
      case GEOMAlgo_KN_CONE:
        // (+) kind.CONE2D  xc yc zc  dx dy dz  R_1 R_2  H
        {
          aKind = SK_CONE2D;

          gp_Pnt aO = anInfo.Location();
          theDoubles->Append(aO.X());
          theDoubles->Append(aO.Y());
          theDoubles->Append(aO.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
          theDoubles->Append(anInfo.Radius2());
          theDoubles->Append(anInfo.Height());
        }
        break;
      case GEOMAlgo_KN_DISKCIRCLE:
        // (+) kind.DISK_CIRCLE  xc yc zc  dx dy dz  R
        {
          aKind = SK_DISK_CIRCLE;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
        }
        break;
      case GEOMAlgo_KN_DISKELLIPSE:
        // (+) kind.DISK_ELLIPSE  xc yc zc  dx dy dz  R_1 R_2
        {
          aKind = SK_DISK_ELLIPSE;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
          theDoubles->Append(anInfo.Radius2());
        }
        break;
      case GEOMAlgo_KN_RECTANGLE:
      case GEOMAlgo_KN_TRIANGLE:
      case GEOMAlgo_KN_QUADRANGLE:
      case GEOMAlgo_KN_POLYGON:
        // (+) kind.POLYGON  xo yo zo  dx dy dz  nb_edges nb_vertices
        {
          aKind = SK_POLYGON;

          gp_Pnt aO = anInfo.Location();
          theDoubles->Append(aO.X());
          theDoubles->Append(aO.Y());
          theDoubles->Append(aO.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theIntegers->Append(anInfo.NbSubShapes(TopAbs_EDGE));
          theIntegers->Append(anInfo.NbSubShapes(TopAbs_VERTEX));
        }
        break;
      case GEOMAlgo_KN_PLANE: // infinite
        // (+) kind.PLANE  xo yo zo  dx dy dz
        {
          aKind = SK_PLANE;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());
        }
        break;
      default:
        if (anInfo.KindOfShape() == GEOMAlgo_KS_PLANE) {
          // (+) kind.PLANAR  xo yo zo  dx dy dz  nb_edges nb_vertices

          aKind = SK_PLANAR;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theIntegers->Append(anInfo.NbSubShapes(TopAbs_EDGE));
          theIntegers->Append(anInfo.NbSubShapes(TopAbs_VERTEX));
        }
        else {
          // ??? kind.FACE  nb_edges nb_vertices _surface_type_id_
          // (+) kind.FACE  nb_edges nb_vertices

          theIntegers->Append(anInfo.NbSubShapes(TopAbs_EDGE));
          theIntegers->Append(anInfo.NbSubShapes(TopAbs_VERTEX));
        }
      }
    }
    break;

  case TopAbs_EDGE:
    {
      aKind = SK_EDGE;

      GEOMAlgo_KindOfName aKN = anInfo.KindOfName();
      switch (aKN) {
      case GEOMAlgo_KN_CIRCLE:
        {
          // (+) kind.CIRCLE  xc yc zc  dx dy dz  R
          aKind = SK_CIRCLE;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
        }
        break;
      case GEOMAlgo_KN_ARCCIRCLE:
        {
          // (+) kind.ARC_CIRCLE  xc yc zc  dx dy dz  R  x1 y1 z1  x2 y2 z2
          aKind = SK_ARC_CIRCLE;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());

          gp_Pnt aP1 = anInfo.Pnt1();
          theDoubles->Append(aP1.X());
          theDoubles->Append(aP1.Y());
          theDoubles->Append(aP1.Z());

          gp_Pnt aP2 = anInfo.Pnt2();
          theDoubles->Append(aP2.X());
          theDoubles->Append(aP2.Y());
          theDoubles->Append(aP2.Z());
        }
        break;
      case GEOMAlgo_KN_ELLIPSE:
        {
          // (+) kind.ELLIPSE  xc yc zc  dx dy dz  R_1 R_2
          aKind = SK_ELLIPSE;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
          theDoubles->Append(anInfo.Radius2());
        }
        break;
      case GEOMAlgo_KN_ARCELLIPSE:
        {
          // (+) kind.ARC_ELLIPSE  xc yc zc  dx dy dz  R_1 R_2  x1 y1 z1  x2 y2 z2
          aKind = SK_ARC_ELLIPSE;

          gp_Pnt aC = anInfo.Location();
          theDoubles->Append(aC.X());
          theDoubles->Append(aC.Y());
          theDoubles->Append(aC.Z());

          gp_Ax3 anAx3 = anInfo.Position();
          gp_Dir aD = anAx3.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());

          theDoubles->Append(anInfo.Radius1());
          theDoubles->Append(anInfo.Radius2());

          gp_Pnt aP1 = anInfo.Pnt1();
          theDoubles->Append(aP1.X());
          theDoubles->Append(aP1.Y());
          theDoubles->Append(aP1.Z());

          gp_Pnt aP2 = anInfo.Pnt2();
          theDoubles->Append(aP2.X());
          theDoubles->Append(aP2.Y());
          theDoubles->Append(aP2.Z());
        }
        break;
      case GEOMAlgo_KN_LINE:
        {
          // ??? kind.LINE  x1 y1 z1  x2 y2 z2
          // (+) kind.LINE  x1 y1 z1  dx dy dz
          aKind = SK_LINE;

          gp_Pnt aO = anInfo.Location();
          theDoubles->Append(aO.X());
          theDoubles->Append(aO.Y());
          theDoubles->Append(aO.Z());

          gp_Dir aD = anInfo.Direction();
          theDoubles->Append(aD.X());
          theDoubles->Append(aD.Y());
          theDoubles->Append(aD.Z());
        }
        break;
      case GEOMAlgo_KN_SEGMENT:
        {
          // (+) kind.SEGMENT  x1 y1 z1  x2 y2 z2
          aKind = SK_SEGMENT;

          gp_Pnt aP1 = anInfo.Pnt1();
          theDoubles->Append(aP1.X());
          theDoubles->Append(aP1.Y());
          theDoubles->Append(aP1.Z());

          gp_Pnt aP2 = anInfo.Pnt2();
          theDoubles->Append(aP2.X());
          theDoubles->Append(aP2.Y());
          theDoubles->Append(aP2.Z());
        }
        break;
      default:
        // ??? kind.EDGE  nb_vertices _curve_type_id_
        // (+) kind.EDGE  nb_vertices
        theIntegers->Append(anInfo.NbSubShapes(TopAbs_VERTEX));
      }
    }
    break;

  case TopAbs_VERTEX:
    {
      // (+) kind.VERTEX  x y z
      aKind = SK_VERTEX;

      gp_Pnt aP = anInfo.Location();
      theDoubles->Append(aP.X());
      theDoubles->Append(aP.Y());
      theDoubles->Append(aP.Z());
    }
    break;
  }

  SetErrorCode(GEOM_OK);
  return aKind;
}

//=============================================================================
/*! Get LCS, corresponding to the given shape.
 *  Origin of the LCS is situated at the shape's center of mass.
 *  Axes of the LCS are obtained from shape's location or,
 *  if the shape is a planar face, from position of its plane.
 */
//=============================================================================
gp_Ax3 GEOMImpl_IMeasureOperations::GetPosition (const TopoDS_Shape& theShape)
{
  gp_Ax3 aResult;

  if (theShape.IsNull())
    return aResult;

  // Axes
  aResult.Transform(theShape.Location().Transformation());
  if (theShape.ShapeType() == TopAbs_FACE) {
    Handle(Geom_Surface) aGS = BRep_Tool::Surface(TopoDS::Face(theShape));
    if (!aGS.IsNull() && aGS->IsKind(STANDARD_TYPE(Geom_Plane))) {
      Handle(Geom_Plane) aGPlane = Handle(Geom_Plane)::DownCast(aGS);
      gp_Pln aPln = aGPlane->Pln();
      aResult = aPln.Position();
    }
  }

  // Origin
  gp_Pnt aPnt;
  if (theShape.ShapeType() == TopAbs_VERTEX) {
    aPnt = BRep_Tool::Pnt(TopoDS::Vertex(theShape));
  }
  else {
    GProp_GProps aSystem;
    if (theShape.ShapeType() == TopAbs_EDGE || theShape.ShapeType() == TopAbs_WIRE)
      BRepGProp::LinearProperties(theShape, aSystem);
    else if (theShape.ShapeType() == TopAbs_FACE || theShape.ShapeType() == TopAbs_SHELL)
      BRepGProp::SurfaceProperties(theShape, aSystem);
    else
      BRepGProp::VolumeProperties(theShape, aSystem);

    aPnt = aSystem.CentreOfMass();
  }

  aResult.SetLocation(aPnt);

  return aResult;
}

//=============================================================================
/*!
 *  GetPosition
 */
//=============================================================================
void GEOMImpl_IMeasureOperations::GetPosition
                   (Handle(GEOM_Object) theShape,
                    Standard_Real& Ox, Standard_Real& Oy, Standard_Real& Oz,
                    Standard_Real& Zx, Standard_Real& Zy, Standard_Real& Zz,
                    Standard_Real& Xx, Standard_Real& Xy, Standard_Real& Xz)
{
  SetErrorCode(GEOM_KO);

  //Set default values: global CS
  Ox = Oy = Oz = Zx = Zy = Xy = Xz = 0.;
  Zz = Xx = 1.;

  if (theShape.IsNull()) return;

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if (aShape.IsNull()) {
    SetErrorCode("The Objects has NULL Shape");
    return;
  }

  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif

    gp_Ax3 anAx3 = GetPosition(aShape);

    gp_Pnt anOri = anAx3.Location();
    gp_Dir aDirZ = anAx3.Direction();
    gp_Dir aDirX = anAx3.XDirection();

    // Output values
    anOri.Coord(Ox, Oy, Oz);
    aDirZ.Coord(Zx, Zy, Zz);
    aDirX.Coord(Xx, Xy, Xz);
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return;
  }

  SetErrorCode(GEOM_OK);
}

//=============================================================================
/*!
 *  GetCentreOfMass
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IMeasureOperations::GetCentreOfMass
                                                (Handle(GEOM_Object) theShape)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;

  //Add a new CentreOfMass object
  Handle(GEOM_Object) aCDG = GetEngine()->AddObject(GetDocID(), GEOM_CDG);

  //Add a new CentreOfMass function
  Handle(GEOM_Function) aFunction =
    aCDG->AddFunction(GEOMImpl_MeasureDriver::GetID(), CDG_MEASURE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MeasureDriver::GetID()) return NULL;

  GEOMImpl_IMeasure aCI (aFunction);

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  aCI.SetBase(aRefShape);

  //Compute the CentreOfMass value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Measure driver failed to compute centre of mass");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCDG << " = MakeCDG(" << theShape << ")";

  SetErrorCode(GEOM_OK);
  return aCDG;
}

//=============================================================================
/*!
 *  GetVertexByIndex
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IMeasureOperations::GetVertexByIndex
                                                (Handle(GEOM_Object) theShape,
                                                 Standard_Integer theIndex)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return NULL;

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return NULL;

  //Add a new Vertex object
  Handle(GEOM_Object) aVertex = GetEngine()->AddObject(GetDocID(), GEOM_POINT);

  //Add a function
  Handle(GEOM_Function) aFunction =
    aVertex->AddFunction(GEOMImpl_MeasureDriver::GetID(), VERTEX_BY_INDEX);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MeasureDriver::GetID()) return NULL;

  GEOMImpl_IMeasure aCI (aFunction);
  aCI.SetBase(aRefShape);
  aCI.SetIndex(theIndex);

  //Compute
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Vertex by index driver failed.");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aVertex << " = GetVertexByIndex(" << theShape << ", " << theIndex << ")";

  SetErrorCode(GEOM_OK);
  return aVertex;
}

//=============================================================================
/*!
 *  GetNormal
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_IMeasureOperations::GetNormal
                                         (Handle(GEOM_Object) theFace,
                                          Handle(GEOM_Object) theOptionalPoint)
{
  SetErrorCode(GEOM_KO);

  if (theFace.IsNull()) return NULL;

  //Add a new Normale object
  Handle(GEOM_Object) aNorm = GetEngine()->AddObject(GetDocID(), GEOM_VECTOR);

  //Add a new Normale function
  Handle(GEOM_Function) aFunction =
    aNorm->AddFunction(GEOMImpl_MeasureDriver::GetID(), VECTOR_FACE_NORMALE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_MeasureDriver::GetID()) return NULL;

  GEOMImpl_IMeasure aCI (aFunction);

  Handle(GEOM_Function) aFace = theFace->GetLastFunction();
  if (aFace.IsNull()) return NULL;

  aCI.SetBase(aFace);

  if (!theOptionalPoint.IsNull()) {
    Handle(GEOM_Function) anOptPnt = theOptionalPoint->GetLastFunction();
    aCI.SetPoint(anOptPnt);
  }

  //Compute the Normale value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Measure driver failed to compute normake of face");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << aNorm << " = GetNormal(" << theFace;
  if (!theOptionalPoint.IsNull()) {
    pd << ", " << theOptionalPoint;
  }
  pd << ")";

  SetErrorCode(GEOM_OK);
  return aNorm;
}

//=============================================================================
/*!
 *  GetBasicProperties
 */
//=============================================================================
void GEOMImpl_IMeasureOperations::GetBasicProperties (Handle(GEOM_Object) theShape,
                                                      Standard_Real& theLength,
                                                      Standard_Real& theSurfArea,
                                                      Standard_Real& theVolume)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return;

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if (aShape.IsNull()) {
    SetErrorCode("The Objects has NULL Shape");
    return;
  }

  //Compute the parameters
  GProp_GProps LProps, SProps;
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    BRepGProp::LinearProperties(aShape, LProps);
    theLength = LProps.Mass();

    BRepGProp::SurfaceProperties(aShape, SProps);
    theSurfArea = SProps.Mass();

    theVolume = 0.0;
    if (aShape.ShapeType() < TopAbs_SHELL) {
      for (TopExp_Explorer Exp (aShape, TopAbs_SOLID); Exp.More(); Exp.Next()) {
	GProp_GProps VProps;
	BRepGProp::VolumeProperties(Exp.Current(), VProps);
	theVolume += VProps.Mass();
      }
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return;
  }

  SetErrorCode(GEOM_OK);
}

//=============================================================================
/*!
 *  GetInertia
 */
//=============================================================================
void GEOMImpl_IMeasureOperations::GetInertia
                   (Handle(GEOM_Object) theShape,
                    Standard_Real& I11, Standard_Real& I12, Standard_Real& I13,
                    Standard_Real& I21, Standard_Real& I22, Standard_Real& I23,
                    Standard_Real& I31, Standard_Real& I32, Standard_Real& I33,
                    Standard_Real& Ix , Standard_Real& Iy , Standard_Real& Iz)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return;

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if (aShape.IsNull()) {
    SetErrorCode("The Objects has NULL Shape");
    return;
  }

  //Compute the parameters
  GProp_GProps System;

  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (aShape.ShapeType() == TopAbs_VERTEX ||
        aShape.ShapeType() == TopAbs_EDGE ||
        aShape.ShapeType() == TopAbs_WIRE) {
      BRepGProp::LinearProperties(aShape, System);
    } else if (aShape.ShapeType() == TopAbs_FACE ||
               aShape.ShapeType() == TopAbs_SHELL) {
      BRepGProp::SurfaceProperties(aShape, System);
    } else {
      BRepGProp::VolumeProperties(aShape, System);
    }
    gp_Mat I = System.MatrixOfInertia();

    I11 = I(1,1);
    I12 = I(1,2);
    I13 = I(1,3);

    I21 = I(2,1);
    I22 = I(2,2);
    I23 = I(2,3);

    I31 = I(3,1);
    I32 = I(3,2);
    I33 = I(3,3);

    GProp_PrincipalProps Pr = System.PrincipalProperties();
    Pr.Moments(Ix,Iy,Iz);
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return;
  }

  SetErrorCode(GEOM_OK);
}

//=============================================================================
/*!
 *  GetBoundingBox
 */
//=============================================================================
void GEOMImpl_IMeasureOperations::GetBoundingBox
                                     (Handle(GEOM_Object) theShape,
                                      Standard_Real& Xmin, Standard_Real& Xmax,
                                      Standard_Real& Ymin, Standard_Real& Ymax,
                                      Standard_Real& Zmin, Standard_Real& Zmax)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return;

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if (aShape.IsNull()) {
    SetErrorCode("The Objects has NULL Shape");
    return;
  }

  //Compute the parameters
  Bnd_Box B;

  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    BRepBndLib::Add(aShape, B);
    B.Get(Xmin, Ymin, Zmin, Xmax, Ymax, Zmax);
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return;
  }

  SetErrorCode(GEOM_OK);
}

//=============================================================================
/*!
 *  GetTolerance
 */
//=============================================================================
void GEOMImpl_IMeasureOperations::GetTolerance
                               (Handle(GEOM_Object) theShape,
                                Standard_Real& FaceMin, Standard_Real& FaceMax,
                                Standard_Real& EdgeMin, Standard_Real& EdgeMax,
                                Standard_Real& VertMin, Standard_Real& VertMax)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return;

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if (aShape.IsNull()) {
    SetErrorCode("The Objects has NULL Shape");
    return;
  }

  //Compute the parameters
  Standard_Real T;
  FaceMin = EdgeMin = VertMin = RealLast();
  FaceMax = EdgeMax = VertMax = -RealLast();

  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    for (TopExp_Explorer ExF (aShape, TopAbs_FACE); ExF.More(); ExF.Next()) {
      TopoDS_Face Face = TopoDS::Face(ExF.Current());
      T = BRep_Tool::Tolerance(Face);
      if (T > FaceMax)
 	FaceMax = T;
      if (T < FaceMin)
	FaceMin = T;
    }
    for (TopExp_Explorer ExE (aShape, TopAbs_EDGE); ExE.More(); ExE.Next()) {
      TopoDS_Edge Edge = TopoDS::Edge(ExE.Current());
      T = BRep_Tool::Tolerance(Edge);
      if (T > EdgeMax)
	EdgeMax = T;
      if (T < EdgeMin)
	EdgeMin = T;
    }
    for (TopExp_Explorer ExV (aShape, TopAbs_VERTEX); ExV.More(); ExV.Next()) {
      TopoDS_Vertex Vertex = TopoDS::Vertex(ExV.Current());
      T = BRep_Tool::Tolerance(Vertex);
      if (T > VertMax)
	VertMax = T;
      if (T < VertMin)
	VertMin = T;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return;
  }

  SetErrorCode(GEOM_OK);
}

//=============================================================================
/*!
 *  CheckShape
 */
//=============================================================================
bool GEOMImpl_IMeasureOperations::CheckShape (Handle(GEOM_Object)      theShape,
                                              const Standard_Boolean   theIsCheckGeom,
                                              TCollection_AsciiString& theDump)
{
  SetErrorCode(GEOM_KO);

  if (theShape.IsNull()) return false;

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return false;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if (aShape.IsNull()) {
    SetErrorCode("The Objects has NULL Shape");
    return false;
  }

  //Compute the parameters
  bool isValid = false;
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    BRepCheck_Analyzer ana (aShape, theIsCheckGeom);
    if (ana.IsValid()) {
      theDump.Clear();
      isValid = true;
    } else {
      StructuralDump(ana, aShape, theDump);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return false;
  }

  SetErrorCode(GEOM_OK);
  return isValid;
}

//=============================================================================
/*!
 *  WhatIs
 */
//=============================================================================
TCollection_AsciiString GEOMImpl_IMeasureOperations::WhatIs (Handle(GEOM_Object) theShape)
{
  SetErrorCode(GEOM_KO);

  TCollection_AsciiString Astr;

  if (theShape.IsNull()) return Astr;

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if (aRefShape.IsNull()) return Astr;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if (aShape.IsNull()) {
    SetErrorCode("The Objects has NULL Shape");
    return Astr;
  }

  //Compute the parameters
  if (aShape.ShapeType() == TopAbs_EDGE) {
    if (BRep_Tool::Degenerated(TopoDS::Edge(aShape))) {
      Astr = Astr + " It is a degenerated edge \n";
    }
  }

  Astr = Astr + " Number of sub-shapes : \n";

  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    int iType, nbTypes [TopAbs_SHAPE];
    for (iType = 0; iType < TopAbs_SHAPE; ++iType)
      nbTypes[iType] = 0;
    nbTypes[aShape.ShapeType()]++;

    TopTools_MapOfShape aMapOfShape;
    aMapOfShape.Add(aShape);
    TopTools_ListOfShape aListOfShape;
    aListOfShape.Append(aShape);

    TopTools_ListIteratorOfListOfShape itL (aListOfShape);
    for (; itL.More(); itL.Next()) {
      TopoDS_Iterator it (itL.Value());
      for (; it.More(); it.Next()) {
        TopoDS_Shape s = it.Value();
        if (aMapOfShape.Add(s)) {
          aListOfShape.Append(s);
          nbTypes[s.ShapeType()]++;
        }
      }
    }

    Astr = Astr + " VERTEX : " + TCollection_AsciiString(nbTypes[TopAbs_VERTEX]) + "\n";
    Astr = Astr + " EDGE : " + TCollection_AsciiString(nbTypes[TopAbs_EDGE]) + "\n";
    Astr = Astr + " WIRE : " + TCollection_AsciiString(nbTypes[TopAbs_WIRE]) + "\n";
    Astr = Astr + " FACE : " + TCollection_AsciiString(nbTypes[TopAbs_FACE]) + "\n";
    Astr = Astr + " SHELL : " + TCollection_AsciiString(nbTypes[TopAbs_SHELL]) + "\n";
    Astr = Astr + " SOLID : " + TCollection_AsciiString(nbTypes[TopAbs_SOLID]) + "\n";
    Astr = Astr + " COMPSOLID : " + TCollection_AsciiString(nbTypes[TopAbs_COMPSOLID]) + "\n";
    Astr = Astr + " COMPOUND : " + TCollection_AsciiString(nbTypes[TopAbs_COMPOUND]) + "\n";
    Astr = Astr + " SHAPE : " + TCollection_AsciiString(aMapOfShape.Extent());
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return Astr;
  }

  SetErrorCode(GEOM_OK);
  return Astr;
}

//=======================================================================
//function : CheckSingularCase
//purpose  : auxilary for GetMinDistance()
//           workaround for bugs 19899, 19908 and 19910 from Mantis
//=======================================================================
static double CheckSingularCase(const TopoDS_Shape& aSh1,
                                const TopoDS_Shape& aSh2,
                                gp_Pnt& Ptmp1, gp_Pnt& Ptmp2)
{
  bool IsChange1 = false;
  double AddDist1 = 0.0;
  TopExp_Explorer anExp;
  TopoDS_Shape tmpSh1, tmpSh2;
  int nbf = 0;
  for ( anExp.Init( aSh1, TopAbs_FACE ); anExp.More(); anExp.Next() ) {
    nbf++;
    tmpSh1 = anExp.Current();
  }
  if(nbf==1) {
    TopoDS_Shape sh = aSh1;
    while(sh.ShapeType()==TopAbs_COMPOUND) {
      TopoDS_Iterator it(sh);
      sh = it.Value();
    }
    Handle(Geom_Surface) S = BRep_Tool::Surface(TopoDS::Face(tmpSh1));
    if( S->IsKind(STANDARD_TYPE(Geom_SphericalSurface)) ||
        S->IsKind(STANDARD_TYPE(Geom_ToroidalSurface)) ) {
      if( sh.ShapeType()==TopAbs_SHELL || sh.ShapeType()==TopAbs_FACE ) {
        // non solid case
        double U1,U2,V1,V2;
        // changes for 0020677: EDF 1219 GEOM: MinDistance gives 0 instead of 20.88
        //S->Bounds(U1,U2,V1,V2); changed by
        ShapeAnalysis::GetFaceUVBounds(TopoDS::Face(tmpSh1),U1,U2,V1,V2);
        // end of changes for 020677 (dmv)
        Handle(Geom_RectangularTrimmedSurface) TrS1 = 
          new Geom_RectangularTrimmedSurface(S,U1,(U1+U2)/2.,V1,V2);
        Handle(Geom_RectangularTrimmedSurface) TrS2 = 
          new Geom_RectangularTrimmedSurface(S,(U1+U2)/2.,U2,V1,V2);
		BRep_Builder B;
        TopoDS_Face F1,F2;
        TopoDS_Compound Comp;
        B.MakeCompound(Comp);
        B.MakeFace(F1,TrS1,1.e-7);
        B.Add(Comp,F1);
        B.MakeFace(F2,TrS2,1.e-7);
        B.Add(Comp,F2);
        Handle(ShapeFix_Shape) sfs = new ShapeFix_Shape;
        sfs->Init(Comp);
        sfs->SetPrecision(1.e-6);
        sfs->SetMaxTolerance(1.0);
        sfs->Perform();
        tmpSh1 = sfs->Shape();
        IsChange1 = true;
      }
      else {
        if( S->IsKind(STANDARD_TYPE(Geom_SphericalSurface)) ) {
          Handle(Geom_SphericalSurface) SS = Handle(Geom_SphericalSurface)::DownCast(S);
          gp_Pnt PC = SS->Location();
          BRep_Builder B;
          TopoDS_Vertex V;
          B.MakeVertex(V,PC,1.e-7);
          tmpSh1 = V;
          AddDist1 = SS->Radius();
          IsChange1 = true;
        }
        else {
          Handle(Geom_ToroidalSurface) TS = Handle(Geom_ToroidalSurface)::DownCast(S);
          gp_Ax3 ax3 = TS->Position();
          Handle(Geom_Circle) C = new Geom_Circle(ax3.Ax2(),TS->MajorRadius());
          BRep_Builder B;
          TopoDS_Edge E;
          B.MakeEdge(E,C,1.e-7);
          tmpSh1 = E;
          AddDist1 = TS->MinorRadius();
          IsChange1 = true;
        }
      }
    }
    else
      tmpSh1 = aSh1;
  }
  else
    tmpSh1 = aSh1;
  bool IsChange2 = false;
  double AddDist2 = 0.0;
  nbf = 0;
  for ( anExp.Init( aSh2, TopAbs_FACE ); anExp.More(); anExp.Next() ) {
    nbf++;
    tmpSh2 = anExp.Current();
  }
  if(nbf==1) {
    TopoDS_Shape sh = aSh2;
    while(sh.ShapeType()==TopAbs_COMPOUND) {
      TopoDS_Iterator it(sh);
      sh = it.Value();
    }
    Handle(Geom_Surface) S = BRep_Tool::Surface(TopoDS::Face(tmpSh2));
    if( S->IsKind(STANDARD_TYPE(Geom_SphericalSurface)) ||
        S->IsKind(STANDARD_TYPE(Geom_ToroidalSurface)) ) {
      if( sh.ShapeType()==TopAbs_SHELL || sh.ShapeType()==TopAbs_FACE ) {
        // non solid case
        double U1,U2,V1,V2;
        //S->Bounds(U1,U2,V1,V2);
		ShapeAnalysis::GetFaceUVBounds(TopoDS::Face(tmpSh2),U1,U2,V1,V2);
        Handle(Geom_RectangularTrimmedSurface) TrS1 = 
          new Geom_RectangularTrimmedSurface(S,U1,(U1+U2)/2.,V1,V2);
        Handle(Geom_RectangularTrimmedSurface) TrS2 = 
          new Geom_RectangularTrimmedSurface(S,(U1+U2)/2.,U2,V1,V2);
        BRep_Builder B;
        TopoDS_Face F1,F2;
        TopoDS_Compound Comp;
        B.MakeCompound(Comp);
        B.MakeFace(F1,TrS1,1.e-7);
        B.Add(Comp,F1);
        B.MakeFace(F2,TrS2,1.e-7);
        B.Add(Comp,F2);
        Handle(ShapeFix_Shape) sfs = new ShapeFix_Shape;
        sfs->Init(Comp);
        sfs->SetPrecision(1.e-6);
        sfs->SetMaxTolerance(1.0);
        sfs->Perform();
        tmpSh2 = sfs->Shape();
        IsChange2 = true;
      }
      else {
        if( S->IsKind(STANDARD_TYPE(Geom_SphericalSurface)) ) {
          Handle(Geom_SphericalSurface) SS = Handle(Geom_SphericalSurface)::DownCast(S);
          gp_Pnt PC = SS->Location();
          BRep_Builder B;
          TopoDS_Vertex V;
          B.MakeVertex(V,PC,1.e-7);
          tmpSh2 = V;
          AddDist2 = SS->Radius();
          IsChange2 = true;
        }
        else if( S->IsKind(STANDARD_TYPE(Geom_ToroidalSurface)) ) {
          Handle(Geom_ToroidalSurface) TS = Handle(Geom_ToroidalSurface)::DownCast(S);
          gp_Ax3 ax3 = TS->Position();
          Handle(Geom_Circle) C = new Geom_Circle(ax3.Ax2(),TS->MajorRadius());
          BRep_Builder B;
          TopoDS_Edge E;
          B.MakeEdge(E,C,1.e-7);
          tmpSh2 = E;
          AddDist2 = TS->MinorRadius();
          IsChange2 = true;
        }
      }
    }
    else
      tmpSh2 = aSh2;
  }
  else
    tmpSh2 = aSh2;

  if( !IsChange1 && !IsChange2 )
    return -2.0;

  BRepExtrema_DistShapeShape dst(tmpSh1,tmpSh2);
  if (dst.IsDone()) {
    double MinDist = 1.e9;
    gp_Pnt PMin1, PMin2, P1, P2;
    for (int i = 1; i <= dst.NbSolution(); i++) {
      P1 = dst.PointOnShape1(i);
      P2 = dst.PointOnShape2(i);
      Standard_Real Dist = P1.Distance(P2);
      if (MinDist > Dist) {
        MinDist = Dist;
        PMin1 = P1;
        PMin2 = P2;
      }
    }
    if(MinDist<1.e-7) {
      Ptmp1 = PMin1;
      Ptmp2 = PMin2;
    }
    else {
      gp_Dir aDir(gp_Vec(PMin1,PMin2));
      if( MinDist > (AddDist1+AddDist2) ) {
        Ptmp1 = gp_Pnt( PMin1.X() + aDir.X()*AddDist1,
                        PMin1.Y() + aDir.Y()*AddDist1,
                        PMin1.Z() + aDir.Z()*AddDist1 );
        Ptmp2 = gp_Pnt( PMin2.X() - aDir.X()*AddDist2,
                        PMin2.Y() - aDir.Y()*AddDist2,
                        PMin2.Z() - aDir.Z()*AddDist2 );
        return (MinDist - AddDist1 - AddDist2);
      }
      else {
        if( AddDist1 > 0 ) {
          Ptmp1 = gp_Pnt( PMin1.X() + aDir.X()*AddDist1,
                          PMin1.Y() + aDir.Y()*AddDist1,
                          PMin1.Z() + aDir.Z()*AddDist1 );
          Ptmp2 = Ptmp1;
        }
        else {
          Ptmp2 = gp_Pnt( PMin2.X() - aDir.X()*AddDist2,
                          PMin2.Y() - aDir.Y()*AddDist2,
                          PMin2.Z() - aDir.Z()*AddDist2 );
          Ptmp1 = Ptmp2;
        }
      }
    }
    double res = MinDist - AddDist1 - AddDist2;
    if(res<0.) res = 0.0;
    return res;
  }
  return -2.0;
}
/* old variant
static bool CheckSingularCase(const TopoDS_Shape& aSh1,
                              const TopoDS_Shape& aSh2,
                              gp_Pnt& Ptmp)
{
  TopExp_Explorer anExp;
  TopoDS_Shape tmpSh1, tmpSh2;
  int nbf = 0;
  for ( anExp.Init( aSh1, TopAbs_FACE ); anExp.More(); anExp.Next() ) {
    nbf++;
    tmpSh1 = anExp.Current();
  }
  if(nbf==1) {
    Handle(Geom_Surface) S1 = BRep_Tool::Surface(TopoDS::Face(tmpSh1));
    if( S1->IsKind(STANDARD_TYPE(Geom_SphericalSurface)) ||
        S1->IsKind(STANDARD_TYPE(Geom_ToroidalSurface)) ) {
      nbf = 0;
      for ( anExp.Init( aSh2, TopAbs_FACE ); anExp.More(); anExp.Next() ) {
        nbf++;
        tmpSh2 = anExp.Current();
        Handle(Geom_Surface) S2 = BRep_Tool::Surface(TopoDS::Face(tmpSh2));
        GeomAPI_IntSS ISS(S1,S2,1.e-7);
        if(ISS.IsDone()) {
          for(int i=1; i<=ISS.NbLines(); i++) {
            Handle(Geom_Curve) C3d = ISS.Line(i);
            BRep_Builder B;
            TopoDS_Edge E;
            B.MakeEdge(E,C3d,1.e-7);
            BRepExtrema_DistShapeShape dst(tmpSh2,E);
            if (dst.IsDone()) {
              gp_Pnt PMin1, PMin2, P1, P2;
              double MinDist = 1.e9;
              for (int i = 1; i <= dst.NbSolution(); i++) {
                P1 = dst.PointOnShape1(i);
                P2 = dst.PointOnShape2(i);
                Standard_Real Dist = P1.Distance(P2);
                if (MinDist > Dist) {
                  MinDist = Dist;
                  Ptmp = P1;
                }
              }
              if(MinDist<1.e-7)
                return true;
            }
          }
        }
      }
    }
  }
  nbf = 0;
  for ( anExp.Init( aSh2, TopAbs_FACE ); anExp.More(); anExp.Next() ) {
    nbf++;
    tmpSh1 = anExp.Current();
  }
  if(nbf==1) {
    Handle(Geom_Surface) S1 = BRep_Tool::Surface(TopoDS::Face(tmpSh1));
    if( S1->IsKind(STANDARD_TYPE(Geom_SphericalSurface)) ||
        S1->IsKind(STANDARD_TYPE(Geom_ToroidalSurface)) ) {
      nbf = 0;
      for ( anExp.Init( aSh1, TopAbs_FACE ); anExp.More(); anExp.Next() ) {
        nbf++;
        tmpSh2 = anExp.Current();
        Handle(Geom_Surface) S2 = BRep_Tool::Surface(TopoDS::Face(tmpSh2));
        GeomAPI_IntSS ISS(S1,S2,1.e-7);
        if(ISS.IsDone()) {
          for(int i=1; i<=ISS.NbLines(); i++) {
            Handle(Geom_Curve) C3d = ISS.Line(i);
            BRep_Builder B;
            TopoDS_Edge E;
            B.MakeEdge(E,C3d,1.e-7);
            BRepExtrema_DistShapeShape dst(tmpSh2,E);
            if (dst.IsDone()) {
              gp_Pnt P1,P2;
              double MinDist = 1.e9;
              for (int i = 1; i <= dst.NbSolution(); i++) {
                P1 = dst.PointOnShape1(i);
                P2 = dst.PointOnShape2(i);
                Standard_Real Dist = P1.Distance(P2);
                if (MinDist > Dist) {
                  MinDist = Dist;
                  Ptmp = P1;
                }
              }
              if(MinDist<1.e-7)
                return true;
            }
          }
        }
      }
    }
  }
  return false;
}
*/

//=============================================================================
/*!
 *  GetMinDistance
 */
//=============================================================================
Standard_Real GEOMImpl_IMeasureOperations::GetMinDistance
  (Handle(GEOM_Object) theShape1, Handle(GEOM_Object) theShape2,
   Standard_Real& X1, Standard_Real& Y1, Standard_Real& Z1,
   Standard_Real& X2, Standard_Real& Y2, Standard_Real& Z2)
{
  SetErrorCode(GEOM_KO);
  Standard_Real MinDist = 1.e9;

  if (theShape1.IsNull() || theShape2.IsNull()) return MinDist;

  Handle(GEOM_Function) aRefShape1 = theShape1->GetLastFunction();
  Handle(GEOM_Function) aRefShape2 = theShape2->GetLastFunction();
  if (aRefShape1.IsNull() || aRefShape2.IsNull()) return MinDist;

  TopoDS_Shape aShape1 = aRefShape1->GetValue();
  TopoDS_Shape aShape2 = aRefShape2->GetValue();
  if (aShape1.IsNull() || aShape2.IsNull()) {
    SetErrorCode("One of Objects has NULL Shape");
    return MinDist;
  }

  //Compute the parameters
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    // Issue 0020231: A min distance bug with torus and vertex.
    // Make GetMinDistance() return zero if a sole VERTEX is inside any of SOLIDs

    // which of shapes consists of only one vertex?
    TopExp_Explorer exp1(aShape1,TopAbs_VERTEX), exp2(aShape2,TopAbs_VERTEX);
    TopoDS_Shape V1 = exp1.More() ? exp1.Current() : TopoDS_Shape();
    TopoDS_Shape V2 = exp2.More() ? exp2.Current() : TopoDS_Shape();
    exp1.Next(); exp2.Next();
    if ( exp1.More() ) V1.Nullify();
    if ( exp2.More() ) V2.Nullify();
    // vertex and container of solids
    TopoDS_Shape V = V1.IsNull() ? V2 : V1;
    TopoDS_Shape S = V1.IsNull() ? aShape1 : aShape2;
    if ( !V.IsNull() ) {
      // classify vertex against solids
      gp_Pnt p = BRep_Tool::Pnt( TopoDS::Vertex( V ) );
      for ( exp1.Init( S, TopAbs_SOLID ); exp1.More(); exp1.Next() ) {
        BRepClass3d_SolidClassifier classifier( exp1.Current(), p, 1e-6);
        if ( classifier.State() == TopAbs_IN ) {
          p.Coord(X1, Y1, Z1);
          p.Coord(X2, Y2, Z2);
          SetErrorCode(GEOM_OK);
          return 0.0;
        }
      }
    }
    // End Issue 0020231

	// skl 30.06.2008
    // additional workaround for bugs 19899, 19908 and 19910 from Mantis
    gp_Pnt Ptmp1, Ptmp2;
    double dist = CheckSingularCase(aShape1, aShape2, Ptmp1, Ptmp2);
    if(dist>-1.0) {
      Ptmp1.Coord(X1, Y1, Z1);
      Ptmp2.Coord(X2, Y2, Z2);
      SetErrorCode(GEOM_OK);
      return dist;
	}

    BRepExtrema_DistShapeShape dst (aShape1, aShape2);
    if (dst.IsDone()) {
      gp_Pnt PMin1, PMin2, P1, P2;

      for (int i = 1; i <= dst.NbSolution(); i++) {
	P1 = dst.PointOnShape1(i);
	P2 = dst.PointOnShape2(i);

	Standard_Real Dist = P1.Distance(P2);
	if (MinDist > Dist) {
	  MinDist = Dist;
          PMin1 = P1;
          PMin2 = P2;
        }
      }

      PMin1.Coord(X1, Y1, Z1);
      PMin2.Coord(X2, Y2, Z2);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return MinDist;
  }

  SetErrorCode(GEOM_OK);
  return MinDist;
}

//=======================================================================
//function : PointCoordinates
//purpose  : Get coordinates of point
//=======================================================================
void GEOMImpl_IMeasureOperations::PointCoordinates( Handle(GEOM_Object) theShape,
                        Standard_Real& theX, Standard_Real& theY, Standard_Real& theZ )
{
  SetErrorCode( GEOM_KO );

  if ( theShape.IsNull() )
    return;

  Handle(GEOM_Function) aRefShape = theShape->GetLastFunction();
  if ( aRefShape.IsNull() )
    return;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if ( aShape.IsNull() || aShape.ShapeType() != TopAbs_VERTEX )
  {
    SetErrorCode( "Shape must be a vertex" );
    return;
  }

  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    gp_Pnt aPnt = BRep_Tool::Pnt( TopoDS::Vertex( aShape ) );
    theX = aPnt.X();
    theY = aPnt.Y();
    theZ = aPnt.Z();
    SetErrorCode( GEOM_OK );
  }
  catch ( Standard_Failure )
  {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode( aFail->GetMessageString() );
  }
}

//=======================================================================
/*!
 *  Compute angle (in degrees) between two lines
 */
//=======================================================================
Standard_Real GEOMImpl_IMeasureOperations::GetAngle (Handle(GEOM_Object) theLine1,
                                                     Handle(GEOM_Object) theLine2)
{
  SetErrorCode(GEOM_KO);

  Standard_Real anAngle = -1.0;

  if (theLine1.IsNull() || theLine2.IsNull())
    return anAngle;

  Handle(GEOM_Function) aRefLine1 = theLine1->GetLastFunction();
  Handle(GEOM_Function) aRefLine2 = theLine2->GetLastFunction();
  if (aRefLine1.IsNull() || aRefLine2.IsNull())
    return anAngle;

  TopoDS_Shape aLine1 = aRefLine1->GetValue();
  TopoDS_Shape aLine2 = aRefLine2->GetValue();
  if (aLine1.IsNull() || aLine2.IsNull() ||
      aLine1.ShapeType() != TopAbs_EDGE ||
      aLine2.ShapeType() != TopAbs_EDGE)
  {
    SetErrorCode("Two edges must be given");
    return anAngle;
  }

  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    TopoDS_Edge E1 = TopoDS::Edge(aLine1);
    TopoDS_Edge E2 = TopoDS::Edge(aLine2);

    double fp,lp;
    Handle(Geom_Curve) C1 = BRep_Tool::Curve(E1,fp,lp);
    Handle(Geom_Curve) C2 = BRep_Tool::Curve(E2,fp,lp);

    if ( C1.IsNull() || C2.IsNull() ||
	!C1->IsKind(STANDARD_TYPE(Geom_Line)) ||
        !C2->IsKind(STANDARD_TYPE(Geom_Line)))
    {
      SetErrorCode("The edges must be linear");
      return anAngle;
    }

    Handle(Geom_Line) L1 = Handle(Geom_Line)::DownCast(C1);
    Handle(Geom_Line) L2 = Handle(Geom_Line)::DownCast(C2);

    gp_Lin aLin1 = L1->Lin();
    gp_Lin aLin2 = L2->Lin();

    anAngle = aLin1.Angle(aLin2);
    anAngle /= PI180; // convert radians into degrees

    SetErrorCode(GEOM_OK);
  }
  catch (Standard_Failure)
  {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
  }

  return anAngle;
}

//=============================================================================
/*!
 *  CurveCurvatureByParam
 */
//=============================================================================
Standard_Real GEOMImpl_IMeasureOperations::CurveCurvatureByParam
                        (Handle(GEOM_Object) theCurve, Standard_Real& theParam)
{
  SetErrorCode(GEOM_KO);
  Standard_Real aRes = -1.0;

  if(theCurve.IsNull()) return aRes;

  Handle(GEOM_Function) aRefShape = theCurve->GetLastFunction();
  if(aRefShape.IsNull()) return aRes;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if(aShape.IsNull()) {
    SetErrorCode("One of Objects has NULL Shape");
    return aRes;
  }

  Standard_Real aFP, aLP, aP;
  Handle(Geom_Curve) aCurve = BRep_Tool::Curve(TopoDS::Edge(aShape), aFP, aLP);
  aP = aFP + (aLP - aFP) * theParam;

  if(aCurve.IsNull()) return aRes;

  //Compute curvature
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    GeomLProp_CLProps Prop = GeomLProp_CLProps 
      (aCurve, aP, 2, Precision::Confusion());
    aRes = fabs(Prop.Curvature());
    SetErrorCode(GEOM_OK);
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return aRes;
  }

  if( aRes > Precision::Confusion() )
    aRes = 1/aRes;
  else
    aRes = RealLast();
  
  return aRes;
}

//=============================================================================
/*!
 *  CurveCurvatureByPoint
 */
//=============================================================================
Standard_Real GEOMImpl_IMeasureOperations::CurveCurvatureByPoint
                   (Handle(GEOM_Object) theCurve, Handle(GEOM_Object) thePoint)
{
  SetErrorCode(GEOM_KO);
  Standard_Real aRes = -1.0;

  if( theCurve.IsNull() || thePoint.IsNull() ) return aRes;

  Handle(GEOM_Function) aRefCurve = theCurve->GetLastFunction();
  Handle(GEOM_Function) aRefPoint = thePoint->GetLastFunction();
  if( aRefCurve.IsNull() || aRefPoint.IsNull() ) return aRes;

  TopoDS_Edge anEdge = TopoDS::Edge(aRefCurve->GetValue());
  TopoDS_Vertex aPnt = TopoDS::Vertex(aRefPoint->GetValue());
  if( anEdge.IsNull() || aPnt.IsNull() ) {
    SetErrorCode("One of Objects has NULL Shape");
    return aRes;
  }

  Standard_Real aFP, aLP;
  Handle(Geom_Curve) aCurve = BRep_Tool::Curve(anEdge, aFP, aLP);
  if(aCurve.IsNull()) return aRes;
  gp_Pnt aPoint = BRep_Tool::Pnt(aPnt);

  //Compute curvature
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    GeomAPI_ProjectPointOnCurve PPC(aPoint, aCurve, aFP, aLP);
    if(PPC.NbPoints()>0) {
      GeomLProp_CLProps Prop = GeomLProp_CLProps 
        (aCurve, PPC.LowerDistanceParameter(), 2, Precision::Confusion());
      aRes = fabs(Prop.Curvature());
      SetErrorCode(GEOM_OK);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return aRes;
  }

  if( aRes > Precision::Confusion() )
    aRes = 1/aRes;
  else
    aRes = RealLast();
  
  return aRes;
}

//=============================================================================
/*!
 *  getSurfaceCurvatures
 */
//=============================================================================
Standard_Real GEOMImpl_IMeasureOperations::getSurfaceCurvatures
                                          (const Handle(Geom_Surface)& aSurf,
                                           Standard_Real theUParam,
                                           Standard_Real theVParam,
                                           Standard_Boolean theNeedMaxCurv)
{
  SetErrorCode(GEOM_KO);
  Standard_Real aRes = 1.0;

  if (aSurf.IsNull()) return aRes;

  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    GeomLProp_SLProps Prop = GeomLProp_SLProps 
      (aSurf, theUParam, theVParam, 2, Precision::Confusion());
    if(Prop.IsCurvatureDefined()) {
      if(Prop.IsUmbilic()) {
        //cout<<"is umbilic"<<endl;
        aRes = fabs(Prop.MeanCurvature());
      }
      else {
        //cout<<"is not umbilic"<<endl;
        double c1 = fabs(Prop.MaxCurvature());
        double c2 = fabs(Prop.MinCurvature());
        if(theNeedMaxCurv)
          aRes = Max(c1,c2);
        else
          aRes = Min(c1,c2);
      }
	  SetErrorCode(GEOM_OK);
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return aRes;
  }

  if( fabs(aRes) > Precision::Confusion() )
    aRes = 1/aRes;
  else
    aRes = RealLast();
  
  return aRes;
}

//=============================================================================
/*!
 *  MaxSurfaceCurvatureByParam
 */
//=============================================================================
Standard_Real GEOMImpl_IMeasureOperations::MaxSurfaceCurvatureByParam
                                                  (Handle(GEOM_Object) theSurf,
                                                   Standard_Real& theUParam,
                                                   Standard_Real& theVParam)
{
  SetErrorCode(GEOM_KO);
  Standard_Real aRes = -1.0;

  if (theSurf.IsNull()) return aRes;

  Handle(GEOM_Function) aRefShape = theSurf->GetLastFunction();
  if(aRefShape.IsNull()) return aRes;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if(aShape.IsNull()) {
    SetErrorCode("One of Objects has NULL Shape");
    return aRes;
  }

  TopoDS_Face F = TopoDS::Face(aShape);
  Handle(Geom_Surface) aSurf = BRep_Tool::Surface(F);

  //Compute the parameters
  Standard_Real U1,U2,V1,V2;
  ShapeAnalysis::GetFaceUVBounds(F,U1,U2,V1,V2);
  Standard_Real U = U1 + (U2-U1)*theUParam;
  Standard_Real V = V1 + (V2-V1)*theVParam;
  
  return getSurfaceCurvatures(aSurf, U, V, true);
}

//=============================================================================
/*!
 *  MaxSurfaceCurvatureByPoint
 */
//=============================================================================
Standard_Real GEOMImpl_IMeasureOperations::MaxSurfaceCurvatureByPoint
                    (Handle(GEOM_Object) theSurf, Handle(GEOM_Object) thePoint)
{
  SetErrorCode(GEOM_KO);
  Standard_Real aRes = -1.0;

  if( theSurf.IsNull() || thePoint.IsNull() ) return aRes;

  Handle(GEOM_Function) aRefShape = theSurf->GetLastFunction();
  Handle(GEOM_Function) aRefPoint = thePoint->GetLastFunction();
  if( aRefShape.IsNull() || aRefPoint.IsNull() ) return aRes;

  TopoDS_Face aFace = TopoDS::Face(aRefShape->GetValue());
  TopoDS_Vertex aPnt = TopoDS::Vertex(aRefPoint->GetValue());
  if( aFace.IsNull() || aPnt.IsNull() ) {
    SetErrorCode("One of Objects has NULL Shape");
    return 0;
  }

  Handle(Geom_Surface) aSurf = BRep_Tool::Surface(aFace);
  if(aSurf.IsNull()) return aRes;
  gp_Pnt aPoint = BRep_Tool::Pnt(aPnt);

  //Compute the parameters
  ShapeAnalysis_Surface sas(aSurf);
  gp_Pnt2d UV = sas.ValueOfUV(aPoint,Precision::Confusion());

  return getSurfaceCurvatures(aSurf, UV.X(), UV.Y(), true);
}

//=============================================================================
/*!
 *  MinSurfaceCurvatureByParam
 */
//=============================================================================
Standard_Real GEOMImpl_IMeasureOperations::MinSurfaceCurvatureByParam
                                                  (Handle(GEOM_Object) theSurf,
                                                   Standard_Real& theUParam,
                                                   Standard_Real& theVParam)
{
  SetErrorCode(GEOM_KO);
  Standard_Real aRes = -1.0;

  if (theSurf.IsNull()) return aRes;

  Handle(GEOM_Function) aRefShape = theSurf->GetLastFunction();
  if(aRefShape.IsNull()) return aRes;

  TopoDS_Shape aShape = aRefShape->GetValue();
  if(aShape.IsNull()) {
    SetErrorCode("One of Objects has NULL Shape");
    return aRes;
  }

  TopoDS_Face F = TopoDS::Face(aShape);
  Handle(Geom_Surface) aSurf = BRep_Tool::Surface(F);

  //Compute the parameters
  Standard_Real U1,U2,V1,V2;
  ShapeAnalysis::GetFaceUVBounds(F,U1,U2,V1,V2);
  Standard_Real U = U1 + (U2-U1)*theUParam;
  Standard_Real V = V1 + (V2-V1)*theVParam;
  
  return getSurfaceCurvatures(aSurf, U, V, false);
}

//=============================================================================
/*!
 *  MinSurfaceCurvatureByPoint
 */
//=============================================================================
Standard_Real GEOMImpl_IMeasureOperations::MinSurfaceCurvatureByPoint
                    (Handle(GEOM_Object) theSurf, Handle(GEOM_Object) thePoint)
{
  SetErrorCode(GEOM_KO);
  Standard_Real aRes = -1.0;

  if( theSurf.IsNull() || thePoint.IsNull() ) return aRes;

  Handle(GEOM_Function) aRefShape = theSurf->GetLastFunction();
  Handle(GEOM_Function) aRefPoint = thePoint->GetLastFunction();
  if( aRefShape.IsNull() || aRefPoint.IsNull() ) return aRes;

  TopoDS_Face aFace = TopoDS::Face(aRefShape->GetValue());
  TopoDS_Vertex aPnt = TopoDS::Vertex(aRefPoint->GetValue());
  if( aFace.IsNull() || aPnt.IsNull() ) {
    SetErrorCode("One of Objects has NULL Shape");
    return 0;
  }

  Handle(Geom_Surface) aSurf = BRep_Tool::Surface(aFace);
  if(aSurf.IsNull()) return aRes;
  gp_Pnt aPoint = BRep_Tool::Pnt(aPnt);

  //Compute the parameters
  ShapeAnalysis_Surface sas(aSurf);
  gp_Pnt2d UV = sas.ValueOfUV(aPoint,Precision::Confusion());

  return getSurfaceCurvatures(aSurf, UV.X(), UV.Y(), false);
}

//=======================================================================
//function : StructuralDump
//purpose  : Structural (data exchange) style of output.
//=======================================================================
void GEOMImpl_IMeasureOperations::StructuralDump (const BRepCheck_Analyzer& theAna,
                                                  const TopoDS_Shape&       theShape,
                                                  TCollection_AsciiString&  theDump)
{
  Standard_Integer i;
  theDump.Clear();
  theDump += " -- The Shape has problems :\n";
  theDump += "  Check                                    Count\n";
  theDump += " ------------------------------------------------\n";

  Standard_Integer last_stat = (Standard_Integer)BRepCheck_CheckFail;
  Handle(TColStd_HArray1OfInteger) NbProblems =
    new TColStd_HArray1OfInteger(1, last_stat);
  for (i = 1; i <= last_stat; i++)
    NbProblems->SetValue(i,0);

  Handle(TopTools_HSequenceOfShape) sl;
  sl = new TopTools_HSequenceOfShape();
  TopTools_DataMapOfShapeListOfShape theMap;
  theMap.Clear();
  GetProblemShapes(theAna, theShape, sl, NbProblems, theMap);
  theMap.Clear();

  Standard_Integer count = 0;
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidPointOnCurve);
  if (count > 0) {
    theDump += "  Invalid Point on Curve ................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidPointOnCurveOnSurface);
  if (count > 0) {
    theDump += "  Invalid Point on CurveOnSurface .......... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidPointOnSurface);
  if (count > 0) {
    theDump += "  Invalid Point on Surface ................. ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_No3DCurve);
  if (count > 0) {
    theDump += "  No 3D Curve .............................. ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_Multiple3DCurve);
  if (count > 0) {
    theDump += "  Multiple 3D Curve ........................ ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_Invalid3DCurve);
  if (count > 0) {
    theDump += "  Invalid 3D Curve ......................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_NoCurveOnSurface);
  if (count > 0) {
    theDump += "  No Curve on Surface ...................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidCurveOnSurface);
  if (count > 0) {
    theDump += "  Invalid Curve on Surface ................. ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidCurveOnClosedSurface);
  if (count > 0) {
    theDump += "  Invalid Curve on closed Surface .......... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidSameRangeFlag);
  if (count > 0) {
    theDump += "  Invalid SameRange Flag ................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidSameParameterFlag);
  if (count > 0) {
    theDump += "  Invalid SameParameter Flag ............... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidDegeneratedFlag);
  if (count > 0) {
    theDump += "  Invalid Degenerated Flag ................. ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_FreeEdge);
  if (count > 0) {
    theDump += "  Free Edge ................................ ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidMultiConnexity);
  if (count > 0) {
    theDump += "  Invalid MultiConnexity ................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidRange);
  if (count > 0) {
    theDump += "  Invalid Range ............................ ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_EmptyWire);
  if (count > 0) {
    theDump += "  Empty Wire ............................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_RedundantEdge);
  if (count > 0) {
    theDump += "  Redundant Edge ........................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_SelfIntersectingWire);
  if (count > 0) {
    theDump += "  Self Intersecting Wire ................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_NoSurface);
  if (count > 0) {
    theDump += "  No Surface ............................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidWire);
  if (count > 0) {
    theDump += "  Invalid Wire ............................. ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_RedundantWire);
  if (count > 0) {
    theDump += "  Redundant Wire ........................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_IntersectingWires);
  if (count > 0) {
    theDump += "  Intersecting Wires ....................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_InvalidImbricationOfWires);
  if (count > 0) {
    theDump += "  Invalid Imbrication of Wires ............. ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_EmptyShell);
  if (count > 0) {
    theDump += "  Empty Shell .............................. ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_RedundantFace);
  if (count > 0) {
    theDump += "  Redundant Face ........................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_UnorientableShape);
  if (count > 0) {
    theDump += "  Unorientable Shape ....................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_NotClosed);
  if (count > 0) {
    theDump += "  Not Closed ............................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_NotConnected);
  if (count > 0) {
    theDump += "  Not Connected ............................ ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_SubshapeNotInShape);
  if (count > 0) {
    theDump += "  Subshape not in Shape .................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_BadOrientation);
  if (count > 0) {
    theDump += "  Bad Orientation .......................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_BadOrientationOfSubshape);
  if (count > 0) {
    theDump += "  Bad Orientation of Subshape .............. ";
    theDump += TCollection_AsciiString(count) + "\n";
  }
  count = NbProblems->Value((Standard_Integer)BRepCheck_CheckFail);
  if (count > 0) {
    theDump += "  checkshape failure ....................... ";
    theDump += TCollection_AsciiString(count) + "\n";
  }

  theDump += " ------------------------------------------------\n";
  theDump += "*** Shapes with problems : ";
  theDump += TCollection_AsciiString(sl->Length()) + "\n";

  Standard_Integer nbv, nbe, nbw, nbf, nbs, nbo;
  nbv = nbe = nbw = nbf = nbs = nbo = 0;

  for (i = 1; i <= sl->Length(); i++) {
    TopoDS_Shape shi = sl->Value(i);
    TopAbs_ShapeEnum sti = shi.ShapeType();
    switch (sti) {
      case TopAbs_VERTEX : nbv++; break;
      case TopAbs_EDGE   : nbe++; break;
      case TopAbs_WIRE   : nbw++; break;
      case TopAbs_FACE   : nbf++; break;
      case TopAbs_SHELL  : nbs++; break;
      case TopAbs_SOLID  : nbo++; break;
      default            : break;
    }
  }

  if (nbv > 0) {
    theDump += "VERTEX : ";
    if (nbv < 10) theDump += " ";
    theDump += TCollection_AsciiString(nbv) + "\n";
  }
  if (nbe > 0) {
    theDump += "EDGE   : ";
    if (nbe < 10) theDump += " ";
    theDump += TCollection_AsciiString(nbe) + "\n";
  }
  if (nbw > 0) {
    theDump += "WIRE   : ";
    if (nbw < 10) theDump += " ";
    theDump += TCollection_AsciiString(nbw) + "\n";
  }
  if (nbf > 0) {
    theDump += "FACE   : ";
    if (nbf < 10) theDump += " ";
    theDump += TCollection_AsciiString(nbf) + "\n";
  }
  if (nbs > 0) {
    theDump += "SHELL  : ";
    if (nbs < 10) theDump += " ";
    theDump += TCollection_AsciiString(nbs) + "\n";
  }
  if (nbo > 0) {
    theDump += "SOLID  : ";
    if (nbo < 10) theDump += " ";
    theDump += TCollection_AsciiString(nbo) + "\n";
  }
}

//=======================================================================
//function : GetProblemShapes
// purpose : for StructuralDump
//=======================================================================
void GEOMImpl_IMeasureOperations::GetProblemShapes (const BRepCheck_Analyzer&           theAna,
                                                    const TopoDS_Shape&                 theShape,
                                                    Handle(TopTools_HSequenceOfShape)&  sl,
                                                    Handle(TColStd_HArray1OfInteger)&   NbProblems,
                                                    TopTools_DataMapOfShapeListOfShape& theMap)
{
  for (TopoDS_Iterator iter(theShape); iter.More(); iter.Next()) {
    GetProblemShapes(theAna, iter.Value(), sl, NbProblems, theMap);
  }
  TopAbs_ShapeEnum styp = theShape.ShapeType();
  BRepCheck_ListIteratorOfListOfStatus itl;
  TopTools_ListOfShape empty;
  if (!theMap.IsBound(theShape)) {
    theMap.Bind(theShape,empty);

    if (!theAna.Result(theShape).IsNull()) {
      itl.Initialize(theAna.Result(theShape)->Status());
      // !!! May be, we have to print all the problems, not only the first one ?
      if (itl.Value() != BRepCheck_NoError) {
        sl->Append(theShape);
        BRepCheck_Status stat = itl.Value();
        NbProblems->SetValue((Standard_Integer)stat,
                             NbProblems->Value((Standard_Integer)stat) + 1);
      }
    }
  }

  switch (styp) {
  case TopAbs_EDGE:
    GetProblemSub(theAna, theShape, sl, NbProblems, TopAbs_VERTEX, theMap);
    break;
  case TopAbs_FACE:
    GetProblemSub(theAna, theShape, sl, NbProblems, TopAbs_WIRE, theMap);
    GetProblemSub(theAna, theShape, sl, NbProblems, TopAbs_EDGE, theMap);
    GetProblemSub(theAna, theShape, sl, NbProblems, TopAbs_VERTEX, theMap);
    break;
  case TopAbs_SHELL:
    break;
  case TopAbs_SOLID:
    GetProblemSub(theAna, theShape, sl, NbProblems, TopAbs_SHELL, theMap);
    break;
  default:
    break;
  }
}

//=======================================================================
//function : Contains
//=======================================================================
static Standard_Boolean Contains (const TopTools_ListOfShape& L,
                                  const TopoDS_Shape& S)
{
  TopTools_ListIteratorOfListOfShape it;
  for (it.Initialize(L); it.More(); it.Next()) {
    if (it.Value().IsSame(S)) {
      return Standard_True;
    }
  }
  return Standard_False;
}

//=======================================================================
//function : GetProblemSub
// purpose : for StructuralDump
//=======================================================================
void GEOMImpl_IMeasureOperations::GetProblemSub (const BRepCheck_Analyzer&           theAna,
                                                 const TopoDS_Shape&                 theShape,
                                                 Handle(TopTools_HSequenceOfShape)&  sl,
                                                 Handle(TColStd_HArray1OfInteger)&   NbProblems,
                                                 const TopAbs_ShapeEnum              Subtype,
                                                 TopTools_DataMapOfShapeListOfShape& theMap)
{
  BRepCheck_ListIteratorOfListOfStatus itl;
  TopExp_Explorer exp;
  for (exp.Init(theShape, Subtype); exp.More(); exp.Next()) {
    const TopoDS_Shape& sub = exp.Current();

    const Handle(BRepCheck_Result)& res = theAna.Result(sub);
    for (res->InitContextIterator();
	 res->MoreShapeInContext();
	 res->NextShapeInContext()) {
      if (res->ContextualShape().IsSame(theShape) && !Contains(theMap(sub), theShape)) {
	theMap(sub).Append(theShape);
	itl.Initialize(res->StatusOnShape());

	if (itl.Value() != BRepCheck_NoError) {
	  Standard_Integer ii = 0;

          for (ii = 1; ii <= sl->Length(); ii++)
            if (sl->Value(ii).IsSame(sub)) break;

          if (ii > sl->Length()) {
            sl->Append(sub);
            BRepCheck_Status stat = itl.Value();
            NbProblems->SetValue((Standard_Integer)stat,
                                 NbProblems->Value((Standard_Integer)stat) + 1);
          }
          for (ii = 1; ii <= sl->Length(); ii++)
            if (sl->Value(ii).IsSame(theShape)) break;
          if (ii > sl->Length()) {
            sl->Append(theShape);
            BRepCheck_Status stat = itl.Value();
            NbProblems->SetValue((Standard_Integer)stat,
                                 NbProblems->Value((Standard_Integer)stat) + 1);
          }
	}
	break;
      }
    }
  }
}
