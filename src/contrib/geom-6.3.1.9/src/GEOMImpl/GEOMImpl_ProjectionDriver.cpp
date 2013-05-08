// Copyright (C) 2007-2011  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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

#include <Standard_Stream.hxx>

#include <GEOMImpl_ProjectionDriver.hxx>

#include <GEOMImpl_IMirror.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRep_Tool.hxx>
#include <BRepBuilderAPI_Transform.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <BRepClass_FaceClassifier.hxx>
#include <BRepOffsetAPI_NormalProjection.hxx>
#include <BRepTools.hxx>

#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>

#include <GeomAPI_ProjectPointOnSurf.hxx>
#include <Geom_Plane.hxx>

#include <gp_Trsf.hxx>
#include <gp_Pnt.hxx>
#include <gp_Vec.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_ProjectionDriver::GetID()
{
  static Standard_GUID aProjectionDriver ("FF1BBB70-5D14-4df2-980B-3A668264EA16");
  return aProjectionDriver; 
}


//=======================================================================
//function : GEOMImpl_ProjectionDriver
//purpose  : 
//=======================================================================

GEOMImpl_ProjectionDriver::GEOMImpl_ProjectionDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_ProjectionDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull())  return 0;    
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  if (aFunction.IsNull()) return 0;

  TopoDS_Shape aShape;
  gp_Trsf aTrsf;

  GEOMImpl_IMirror TI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  Handle(GEOM_Function) anOriginalFunction = TI.GetOriginal();
  if (anOriginalFunction.IsNull()) return 0;

  TopoDS_Shape anOriginal = anOriginalFunction->GetValue();
  if (anOriginal.IsNull()) return 0;

  // Projection
  if (aType == PROJECTION_COPY) {
    // Source shape (point, edge or wire)
    if (anOriginal.ShapeType() != TopAbs_VERTEX &&
        anOriginal.ShapeType() != TopAbs_EDGE &&
        anOriginal.ShapeType() != TopAbs_WIRE) {
      Standard_ConstructionError::Raise
        ("Projection aborted : the source shape is neither a vertex, nor an edge or a wire");
    }

    // Target face
    Handle(GEOM_Function) aTargetFunction = TI.GetPlane();
    if (aTargetFunction.IsNull()) return 0;
    TopoDS_Shape aFaceShape = aTargetFunction->GetValue();
    //if (aFaceShape.IsNull() || aFaceShape.ShapeType() != TopAbs_FACE) {
    //  Standard_ConstructionError::Raise
    //    ("Projection aborted : the target shape is not a face");
    //}

    Standard_Real tol = 1.e-4;        

    if (anOriginal.ShapeType() == TopAbs_VERTEX) {
      if (aFaceShape.IsNull() || aFaceShape.ShapeType() != TopAbs_FACE) {
        Standard_ConstructionError::Raise
          ("Projection aborted : the target shape is not a face");
      }
      TopoDS_Face aFace = TopoDS::Face(aFaceShape);
      Handle(Geom_Surface) surface = BRep_Tool::Surface(aFace);
      double U1, U2, V1, V2;
      //surface->Bounds(U1, U2, V1, V2);
      BRepTools::UVBounds(aFace, U1, U2, V1, V2);

      // projector
      GeomAPI_ProjectPointOnSurf proj;
      proj.Init(surface, U1, U2, V1, V2, tol);

      gp_Pnt aPnt = BRep_Tool::Pnt(TopoDS::Vertex(anOriginal));
      proj.Perform(aPnt);
      if (!proj.IsDone()) {
        Standard_ConstructionError::Raise
          ("Projection aborted : GeomAPI_ProjectPointOnSurf failed");
      }
      int nbPoints = proj.NbPoints();
      if (nbPoints < 1) {
        Standard_ConstructionError::Raise("No solution found");
      }

      Quantity_Parameter U, V;
      proj.LowerDistanceParameters(U, V);
      gp_Pnt2d aProjPnt (U, V);

      // classifier
      BRepClass_FaceClassifier aClsf (aFace, aProjPnt, tol);
      if (aClsf.State() != TopAbs_IN && aClsf.State() != TopAbs_ON) {
        bool isSol = false;
        double minDist = RealLast();
        for (int i = 1; i <= nbPoints; i++) {
          Quantity_Parameter Ui, Vi;
          proj.Parameters(i, Ui, Vi);
          aProjPnt = gp_Pnt2d(Ui, Vi);
          aClsf.Perform(aFace, aProjPnt, tol);
          if (aClsf.State() == TopAbs_IN || aClsf.State() == TopAbs_ON) {
            isSol = true;
            double dist = proj.Distance(i);
            if (dist < minDist) {
              minDist = dist;
              U = Ui;
              V = Vi;
            }
          }
        }
        if (!isSol) {
          Standard_ConstructionError::Raise("No solution found");
        }
      }

      gp_Pnt surfPnt = surface->Value(U, V);

      aShape = BRepBuilderAPI_MakeVertex(surfPnt).Shape();
    }
    else {
      //see BRepTest_BasicCommands.cxx for example of BRepOffsetAPI_NormalProjection
      BRepOffsetAPI_NormalProjection OrtProj (aFaceShape);
      OrtProj.Add(anOriginal);

      //Standard_Real tol = 1.e-4;        
      //Standard_Real tol2d = Pow(tol, 2./3);
      //GeomAbs_Shape Continuity = GeomAbs_C2;  
      //Standard_Integer MaxDeg = 14;           
      //Standard_Integer MaxSeg = 16;           
      //OrtProj.SetParams(tol, tol2d, Continuity, MaxDeg, MaxSeg);
      try {
        OrtProj.Build();
      } catch (Standard_Failure) {
        Handle(Standard_Failure) aFail = Standard_Failure::Caught();
        TCollection_AsciiString aMsg (aFail->GetMessageString());
        if (!aMsg.Length())
          aMsg = "Projection aborted : possibly the source shape intersects the cylinder's axis";
        Standard_ConstructionError::Raise(aMsg.ToCString());
      }
      if (!OrtProj.IsDone()) {
        Standard_ConstructionError::Raise
          ("Projection aborted : BRepOffsetAPI_NormalProjection failed");
      }

      aShape = OrtProj.Shape();
    }

    if (aShape.IsNull()) return 0;

    aFunction->SetValue(aShape);
    log.SetTouched(Label()); 
  }

  return 1;
}


//=======================================================================
//function :  GEOMImpl_ProjectionDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_ProjectionDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_ProjectionDriver",
                                                         sizeof(GEOMImpl_ProjectionDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 

const Handle(GEOMImpl_ProjectionDriver) Handle(GEOMImpl_ProjectionDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_ProjectionDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_ProjectionDriver))) {
       _anOtherObject = Handle(GEOMImpl_ProjectionDriver)((Handle(GEOMImpl_ProjectionDriver)&)AnObject);
     }
  }

  return _anOtherObject;
}
