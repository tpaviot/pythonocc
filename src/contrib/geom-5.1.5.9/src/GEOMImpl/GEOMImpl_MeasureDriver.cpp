//  Copyright (C) 2007-2010  CEA/DEN, EDF R&D, OPEN CASCADE
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

#include <Standard_Stream.hxx>

#include <GEOMImpl_MeasureDriver.hxx>
#include <GEOMImpl_IMeasure.hxx>
#include <GEOMImpl_IMeasureOperations.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRep_Tool.hxx>
#include <BRepGProp.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Wire.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <GProp_GProps.hxx>
#include <GeomLProp_SLProps.hxx>
#include <Geom_Surface.hxx>

#include <Bnd_Box.hxx>
#include <BRepBndLib.hxx>
#include <BRepAdaptor_Surface.hxx>
#include <ShapeAnalysis_Surface.hxx>

#include <gp_Pnt.hxx>
#include <Precision.hxx>
#include <Standard_NullObject.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_MeasureDriver::GetID()
{
  static Standard_GUID aMeasureDriver("FF1BBB65-5D14-4df2-980B-3A668264EA16");
  return aMeasureDriver; 
}


//=======================================================================
//function : GEOMImpl_MeasureDriver
//purpose  : 
//=======================================================================
GEOMImpl_MeasureDriver::GEOMImpl_MeasureDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_MeasureDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;    
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IMeasure aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == CDG_MEASURE)
  {
    Handle(GEOM_Function) aRefBase = aCI.GetBase();
    TopoDS_Shape aShapeBase = aRefBase->GetValue();
    if (aShapeBase.IsNull()) {
      Standard_NullObject::Raise("Shape for centre of mass calculation is null");
    }

    GProp_GProps aSystem;
    gp_Pnt aCenterMass;

    if (aShapeBase.ShapeType() == TopAbs_VERTEX) {
      aCenterMass = BRep_Tool::Pnt(TopoDS::Vertex(aShapeBase));
    } else if (aShapeBase.ShapeType() == TopAbs_EDGE || aShapeBase.ShapeType() == TopAbs_WIRE) {
      BRepGProp::LinearProperties(aShapeBase, aSystem);
      aCenterMass = aSystem.CentreOfMass();
    } else if (aShapeBase.ShapeType() == TopAbs_FACE || aShapeBase.ShapeType() == TopAbs_SHELL) {
      BRepGProp::SurfaceProperties(aShapeBase, aSystem);
      aCenterMass = aSystem.CentreOfMass();
    } else {
      BRepGProp::VolumeProperties(aShapeBase, aSystem);
      aCenterMass = aSystem.CentreOfMass();
    }

    aShape = BRepBuilderAPI_MakeVertex(aCenterMass).Shape();
  }
  else if (aType == VERTEX_BY_INDEX)
  {
    Handle(GEOM_Function) aRefBase = aCI.GetBase();
    TopoDS_Shape aShapeBase = aRefBase->GetValue();
    if (aShapeBase.IsNull()) {
      Standard_NullObject::Raise("Shape for centre of mass calculation is null");
    }

    int index = aCI.GetIndex();
    gp_Pnt aVertex;

    if (aShapeBase.ShapeType() == TopAbs_VERTEX) {
      if ( index != 1 )
        Standard_NullObject::Raise("Vertex index is out of range");
      else
        aVertex = BRep_Tool::Pnt(TopoDS::Vertex(aShapeBase));
    } else if (aShapeBase.ShapeType() == TopAbs_EDGE) {
      TopoDS_Vertex aV1, aV2;
      TopoDS_Edge anEdgeE = TopoDS::Edge(aShapeBase);
      
      TopExp::Vertices(anEdgeE, aV1, aV2);
      gp_Pnt aP1 = BRep_Tool::Pnt(aV1);
      gp_Pnt aP2 = BRep_Tool::Pnt(aV2);

      if (index < 0 || index > 1)
        Standard_NullObject::Raise("Vertex index is out of range");

      if ( anEdgeE.Orientation() == TopAbs_FORWARD && index == 0 ||
           anEdgeE.Orientation() == TopAbs_REVERSED && index == 1 )
        aVertex = aP1;
      else
      aVertex = aP2;
    } else if (aShapeBase.ShapeType() == TopAbs_WIRE) {
      TopTools_IndexedMapOfShape anEdgeShapes;
      TopTools_IndexedMapOfShape aVertexShapes;
      TopoDS_Vertex aV1, aV2;
      TopoDS_Wire aWire = TopoDS::Wire(aShapeBase);
      TopExp_Explorer exp (aWire, TopAbs_EDGE);
      for (; exp.More(); exp.Next()) {
        anEdgeShapes.Add(exp.Current());
        TopoDS_Edge E = TopoDS::Edge(exp.Current());
        TopExp::Vertices(E, aV1, aV2);
        if ( aVertexShapes.Extent() == 0)
          aVertexShapes.Add(aV1);
        if ( !aV1.IsSame( aVertexShapes(aVertexShapes.Extent()) ) )
          aVertexShapes.Add(aV1);
        if ( !aV2.IsSame( aVertexShapes(aVertexShapes.Extent()) ) )
          aVertexShapes.Add(aV2);
      }

      if (index < 0 || index > aVertexShapes.Extent())
        Standard_NullObject::Raise("Vertex index is out of range");

      if (aWire.Orientation() == TopAbs_FORWARD)
        aVertex = BRep_Tool::Pnt(TopoDS::Vertex(aVertexShapes(index+1)));
      else
        aVertex = BRep_Tool::Pnt(TopoDS::Vertex(aVertexShapes(aVertexShapes.Extent() - index)));
    } else {
      Standard_NullObject::Raise("Shape for vertex calculation is not an edge or wire");
    }

    aShape = BRepBuilderAPI_MakeVertex(aVertex).Shape();
  }
  else if (aType == VECTOR_FACE_NORMALE)
  {
    // Face
    Handle(GEOM_Function) aRefBase = aCI.GetBase();
    TopoDS_Shape aShapeBase = aRefBase->GetValue();
    if (aShapeBase.IsNull()) {
      Standard_NullObject::Raise("Face for normale calculation is null");
    }
    if (aShapeBase.ShapeType() != TopAbs_FACE) {
      Standard_NullObject::Raise("Shape for normale calculation is not a face");
    }
    TopoDS_Face aFace = TopoDS::Face(aShapeBase);

    // Point
    gp_Pnt p1 (0,0,0);

    Handle(GEOM_Function) aPntFunc = aCI.GetPoint();
    if (!aPntFunc.IsNull())
    {
      TopoDS_Shape anOptPnt = aPntFunc->GetValue();
      if (anOptPnt.IsNull())
        Standard_NullObject::Raise("Invalid shape given for point argument");
      p1 = BRep_Tool::Pnt(TopoDS::Vertex(anOptPnt));
    }
    else
    {
      gp_Ax3 aPos = GEOMImpl_IMeasureOperations::GetPosition(aFace);
      p1 = aPos.Location();
    }

    // Point parameters on surface
    Handle(Geom_Surface) aSurf = BRep_Tool::Surface(aFace);
    Handle(ShapeAnalysis_Surface) aSurfAna = new ShapeAnalysis_Surface (aSurf);
    gp_Pnt2d pUV = aSurfAna->ValueOfUV(p1, Precision::Confusion());

    // Normal direction
    gp_Vec Vec1,Vec2;
    BRepAdaptor_Surface SF (aFace);
    SF.D1(pUV.X(), pUV.Y(), p1, Vec1, Vec2);
    if (Vec1.Magnitude() < Precision::Confusion()) {
      gp_Vec tmpV;
      gp_Pnt tmpP;
      SF.D1(pUV.X(), pUV.Y()-0.1, tmpP, Vec1, tmpV);
    }
    else if (Vec2.Magnitude() < Precision::Confusion()) {
      gp_Vec tmpV;
      gp_Pnt tmpP;
      SF.D1(pUV.X()-0.1, pUV.Y(), tmpP, tmpV, Vec2);
    }

    gp_Vec V = Vec1.Crossed(Vec2);
    Standard_Real mod = V.Magnitude();
    if (mod < Precision::Confusion())
      Standard_NullObject::Raise("Normal vector of a face has null magnitude");

    // Set length of normal vector to average radius of curvature
    Standard_Real radius = 0.0;
    GeomLProp_SLProps aProperties (aSurf, pUV.X(), pUV.Y(), 2, Precision::Confusion());
    if (aProperties.IsCurvatureDefined()) {
      Standard_Real radius1 = Abs(aProperties.MinCurvature());
      Standard_Real radius2 = Abs(aProperties.MaxCurvature());
      if (Abs(radius1) > Precision::Confusion()) {
        radius = 1.0 / radius1;
        if (Abs(radius2) > Precision::Confusion()) {
          radius = (radius + 1.0 / radius2) / 2.0;
        }
      }
      else {
        if (Abs(radius2) > Precision::Confusion()) {
          radius = 1.0 / radius2;
        }
      }
    }

    // Set length of normal vector to average dimension of the face
    // (only if average radius of curvature is not appropriate)
    if (radius < Precision::Confusion()) {
        Bnd_Box B;
        Standard_Real Xmin, Xmax, Ymin, Ymax, Zmin, Zmax;
        BRepBndLib::Add(aFace, B);
        B.Get(Xmin, Ymin, Zmin, Xmax, Ymax, Zmax);
        radius = ((Xmax - Xmin) + (Ymax - Ymin) + (Zmax - Zmin)) / 3.0;
    }

    if (radius < Precision::Confusion())
      radius = 1.0;

    V *= radius / mod;

    // consider the face orientation
    if (aFace.Orientation() == TopAbs_REVERSED ||
        aFace.Orientation() == TopAbs_INTERNAL) {
      V = - V;
    }

    // Edge
    gp_Pnt p2 = p1.Translated(V);
    BRepBuilderAPI_MakeEdge aBuilder (p1, p2);
    if (!aBuilder.IsDone())
      Standard_NullObject::Raise("Vector construction failed");
    aShape = aBuilder.Shape();
  }
  else {
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label()); 

  return 1;
}


//=======================================================================
//function :  GEOMImpl_MeasureDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_MeasureDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_MeasureDriver",
                                                         sizeof(GEOMImpl_MeasureDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 
const Handle(GEOMImpl_MeasureDriver) Handle(GEOMImpl_MeasureDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_MeasureDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_MeasureDriver))) {
       _anOtherObject = Handle(GEOMImpl_MeasureDriver)((Handle(GEOMImpl_MeasureDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
