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

#include <Standard_Stream.hxx>

#include <GEOMImpl_Fillet2dDriver.hxx>
#include <GEOMImpl_IFillet2d.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_ILocalOperations.hxx>
#include <GEOMImpl_Block6Explorer.hxx>
#include <GEOM_Function.hxx>

#include <BRepFilletAPI_MakeFillet2d.hxx>
#include <BRepCheck_Analyzer.hxx>
#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopAbs.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>

#include <ShapeFix_ShapeTolerance.hxx>
#include <ShapeFix_Shape.hxx>

#include <Precision.hxx>
#include <gp_Pnt.hxx>
#include <StdFail_NotDone.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_Fillet2dDriver::GetID()
{
  static Standard_GUID aFillet2dDriver("FF1AAB41-2A14-4df2-581B-3A568163BA46");
  return aFillet2dDriver;
}


//=======================================================================
//function : GEOMImpl_Fillet2dDriver
//purpose  :
//=======================================================================
GEOMImpl_Fillet2dDriver::GEOMImpl_Fillet2dDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_Fillet2dDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IFillet2d aCI (aFunction);

  TopoDS_Shape aShape;

  Handle(GEOM_Function) aRefShape = aCI.GetShape();
  TopoDS_Shape aFaceShape = aRefShape->GetValue();

  int aLen = aCI.GetLength();
  double rad = aCI.GetR();

  if (aFaceShape.ShapeType() == TopAbs_FACE) {
    BRepFilletAPI_MakeFillet2d fillet2d (TopoDS::Face(aFaceShape));

    int ind = 1;
    for (; ind <= aLen; ind++) {
      TopoDS_Shape aShapeVertex;
      if (GEOMImpl_ILocalOperations::GetSubShape
          (aFaceShape, aCI.GetVertex(ind), aShapeVertex)) {
        fillet2d.AddFillet(TopoDS::Vertex(aShapeVertex), rad);
      }
    }

    fillet2d.Build();
    if (!fillet2d.IsDone()) {
      StdFail_NotDone::Raise("2D Fillet can't be computed on the given shape with the given radius");
    }
    aShape = fillet2d.Shape();
  }
  else if (aFaceShape.ShapeType() == TopAbs_SHELL) {
    // 1. Map vertices to faces to build fillets only on corner vertices
    TopTools_IndexedDataMapOfShapeListOfShape mapVertexFaces;
    GEOMImpl_Block6Explorer::MapShapesAndAncestors
      (aFaceShape, TopAbs_VERTEX, TopAbs_FACE, mapVertexFaces);

    // 2. Map faces to vertices
    TopTools_IndexedDataMapOfShapeListOfShape mapFaceVertices;
    TopTools_ListOfShape empty;
    int ind = 1;
    for (; ind <= aLen; ind++) {
      TopoDS_Shape aVi;
      if (GEOMImpl_ILocalOperations::GetSubShape(aFaceShape, aCI.GetVertex(ind), aVi)) {
        Standard_Integer aVi_index = mapVertexFaces.FindIndex(aVi);
        if (aVi_index > 0) {
          const TopTools_ListOfShape& aFacesOfVi = mapVertexFaces(aVi_index);
          if (aFacesOfVi.Extent() == 1) { // we use only corner vertices of shell
            TopoDS_Shape aFi = aFacesOfVi.First();
            Standard_Integer aFi_index = mapFaceVertices.FindIndex(aFi);
            if (aFi_index == 0) aFi_index = mapFaceVertices.Add(aFi, empty);
            mapFaceVertices(aFi_index).Append(aVi);
          }
        }
      }
    }

    // 3. Build fillet on each given vertex
    TopoDS_Shell aResult;
    BRep_Builder B;
    B.MakeShell(aResult);

    TopoDS_Iterator It (aFaceShape, Standard_True, Standard_True);
    TopTools_MapOfShape mapShape;
    for (; It.More(); It.Next()) {
      if (mapShape.Add(It.Value())) {
        Standard_Integer aFi_index = mapFaceVertices.FindIndex(It.Value());
        if (aFi_index == 0) {
          // No fillets requested on this face, add it as is
          B.Add(aResult, It.Value());
        }
        else {
          // Build a fillet and add the changed face
          BRepFilletAPI_MakeFillet2d fillet2d (TopoDS::Face(It.Value()));
          const TopTools_ListOfShape& aVertsOfFi = mapFaceVertices(aFi_index);
          TopTools_ListIteratorOfListOfShape itV (aVertsOfFi);
          for (; itV.More(); itV.Next()) {
            fillet2d.AddFillet(TopoDS::Vertex(itV.Value()), rad);
          }

          fillet2d.Build();
          if (!fillet2d.IsDone()) {
            StdFail_NotDone::Raise("2D Fillet can't be computed on the given shape with the given radius");
          }
          TopoDS_Shape aFillet = fillet2d.Shape();

          B.Add(aResult, aFillet);
        }
      }
    }

    // 4. Build a shell
    // ?TODO?
    aShape = aResult;
  }
  else {
    Standard_ConstructionError::Raise("Wrong arguments: a face or a shell must be given");
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);
  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_Fillet2dDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_Fillet2dDriver_Type_()
{
  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_Fillet2dDriver",
                                                         sizeof(GEOMImpl_Fillet2dDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_Fillet2dDriver) Handle(GEOMImpl_Fillet2dDriver)::DownCast
                                   (const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_Fillet2dDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_Fillet2dDriver))) {
       _anOtherObject = Handle(GEOMImpl_Fillet2dDriver)((Handle(GEOMImpl_Fillet2dDriver)&)AnObject);
     }
  }

  return _anOtherObject;
}
